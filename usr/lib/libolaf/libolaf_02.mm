void Gnm51_07SendEarlyStartStartRsp(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("Gnm51_07SendEarlyStartStartRsp", 264, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    *(v2 + 3) = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_EARLYSTART_START_RSP =>LSIM\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm51_07SendEarlyStartStartRsp");
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(128, 131, 8603908, v3);
  }
}

uint64_t Gnm51_02EarlyStartStopInd(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_EARLYSTART_STOP_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 77, "Gnm51_02EarlyStartStopInd");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 3, 1);
  }

  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 69, "Gnm51_02EarlyStartStopInd", 517);
      LbsOsaTrace_WriteLog(0xBu, __str, v11, 0, 1);
    }

    v12 = 0;
    v13 = 0;
    goto LABEL_20;
  }

  v4 = *(a1 + 12);
  EarlyStartInstn = Gnm02_39GetEarlyStartInstn();
  if (!EarlyStartInstn)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ESTART:Session not active\n");
LABEL_18:
    LbsOsaTrace_WriteLog(0xBu, __str, v14, 2, 1);
    goto LABEL_19;
  }

  v6 = EarlyStartInstn;
  v7 = *(EarlyStartInstn + 8);
  if (!v7)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ESTART:InstnInfo\n");
    goto LABEL_18;
  }

  *(v7 + 5) = v4;
  if (!Gnm10_28StopPositioning(EarlyStartInstn))
  {
    Gnm02_21DeleteInstn(v6);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ESTART:Stop Send Failure\n");
      goto LABEL_18;
    }

LABEL_19:
    v12 = 4;
    v13 = v4;
LABEL_20:
    Gnm51_08SendEarlyStartStopRsp(v12, v13);
    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ESTART:Session Stop sent\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm51_04EarlyStartSessionStop");
    LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
  }

  return 0;
}

void Gnm51_08SendEarlyStartStopRsp(int a1, char a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("Gnm51_08SendEarlyStartStopRsp", 289, 1, 0x14uLL);
  if (v4)
  {
    v5 = v4;
    v4[3] = a1;
    *(v4 + 16) = a2;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = 70;
      if (*(v5 + 16))
      {
        v7 = 84;
      }

      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_EARLYSTART_STOP_RSP =>LSIM Result,%u,ApiStatus,%c\n", v6, "GNM", 73, "Gnm51_08SendEarlyStartStopRsp", v5[3], v7);
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
    }

    AgpsSendFsmMsg(128, 131, 8604164, v5);
  }
}

void Gnm51_05StartPosResp(unsigned __int16 *a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ESTART:Success\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm51_05StartPosResp");
      LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
    }

    Gnm51_07SendEarlyStartStartRsp(1);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ESTART:Failure\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm51_05StartPosResp");
      LbsOsaTrace_WriteLog(0xBu, __str, v6, 2, 1);
    }

    Gnm51_07SendEarlyStartStartRsp(0);
    if (a1)
    {
      Gnm02_21DeleteInstn(a1);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Instn\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 87, "Gnm51_05StartPosResp", 513);
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
    }
  }
}

BOOL Gnm51_06StopPosResp(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ESTART:Success\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 73, "Gnm51_06StopPosResp");
      v5 = 1;
      LbsOsaTrace_WriteLog(0xBu, __str, v4, 4, 1);
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ESTART:Failure\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm51_06StopPosResp");
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
      v5 = 0;
    }
  }

  Gnm51_08SendEarlyStartStopRsp(v5, *(*(a1 + 8) + 5));
  return Gnm02_21DeleteInstn(a1);
}

uint64_t decode_asn1_message(int a1, uint64_t a2, uint64_t a3, int a4, void *a5, _DWORD *a6)
{
  v15[3] = *MEMORY[0x29EDCA608];
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a4;
  v14 = 0;
  BaseBufInitBufWithMemory(&v14, 0, v15);
  v9 = v14;
  v15[0] = v14;
  (*(v14 + 920))(v14);
  *(v9 + 1056) = 2064;
  if (a1 == 1)
  {
    memset_s(a5, 0x528uLL, 0, 0x528uLL);
    v10 = &yASN1_T_RASN_PDU;
LABEL_5:
    v11 = PERDecode(v9, v10, a5);
    if (a6)
    {
      v12 = (*(v9 + 840))(v9, 3);
LABEL_9:
      *a6 = v12;
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (!a1)
  {
    memset_s(a5, 0x578uLL, 0, 0x578uLL);
    v10 = &yASN1_T_LASN_LPP_Message;
    goto LABEL_5;
  }

  v11 = 15;
  if (a6)
  {
    v12 = 0;
    goto LABEL_9;
  }

LABEL_10:
  (*(v9 + 928))(v9);
  (*(v9 + 816))(v15);
  return v11;
}

uint64_t encode_asn1_message(int a1, uint64_t a2, uint64_t *a3, _DWORD *a4, _DWORD *a5, unsigned int *a6)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!a6)
  {
    return 15;
  }

  *a3 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a1 != 1)
  {
    if (!a1)
    {
      v16 = 0;
      v17 = &asn1_encoded_data_small;
      v18 = vdupq_n_s64(0x1000uLL);
      BaseBufInitBufWithMemory(&v16, 0, &v17);
      v10 = v16;
      v17 = v16;
      (*(v16 + 113))(v16);
      v11 = &yASN1_T_LASN_LPP_Message;
      goto LABEL_11;
    }

    return 15;
  }

  v16 = 0;
  v17 = &asn1_encoded_data_small;
  v18 = vdupq_n_s64(0x1000uLL);
  BaseBufInitBufWithMemory(&v16, 0, &v17);
  v10 = v16;
  v17 = v16;
  (*(v16 + 113))(v16);
  v11 = &yASN1_T_RASN_PDU;
LABEL_11:
  v12 = PEREncode(v10, v11, a6);
  (*(v10 + 114))(v10);
  if (a5 && !v12)
  {
    (*(v10 + 115))(v10);
    if (a4)
    {
      *a4 = (*(v10 + 105))(v10, 1);
    }

    v13 = (*(v10 + 105))(v10, 0);
    *a5 = v13;
    v14 = (*(v10 + 121))(v10, v13);
    if (*a5 && v14)
    {
      *a3 = v14;
    }

    (*(v10 + 116))(v10);
  }

  (*(v10 + 102))(&v17);
  return v12;
}

BOOL umeas(_BOOL8 result, unsigned int a2, double a3, double *a4, double *a5, double *a6, double *a7, double a8)
{
  v63[1] = *MEMORY[0x29EDCA608];
  v10 = result - 8;
  v11 = a4 - 1;
  v12 = a2 + 1;
  v62 = (v12 * a2) >> 1;
  if (a2)
  {
    v13 = a6;
    v14 = a5;
    v60 = result;
    v61 = a7;
    v17 = a6 - 1;
    v18 = a5 - 1;
    v19 = 1;
    while (1)
    {
      v63[0] = 0.0;
      result = R8_EQ(&v11[v19], v63);
      if (!result)
      {
        break;
      }

      if (++v19 > a2)
      {
        goto LABEL_9;
      }
    }

    if (!v19)
    {
LABEL_9:
      if (v12 <= 2)
      {
        v22 = 2;
      }

      else
      {
        v22 = v12;
      }

      v23 = v22 - 1;
      a7 = v61;
      do
      {
        *v13++ = 0.0;
        *v14++ = 0.0;
        --v23;
      }

      while (v23);
      goto LABEL_14;
    }

    if (a2 == 1)
    {
      v20 = 0;
      v21 = v60;
    }

    else
    {
      if (v19 <= 2)
      {
        v20 = 2;
      }

      else
      {
        v20 = v19;
      }

      v21 = v60;
      if (v19 > a2)
      {
        v24 = v20;
        goto LABEL_34;
      }

      v25 = a2;
      v26 = v62;
      v27 = v62 - a2 + 1;
      v28 = 1 - a2;
      do
      {
        v29 = v11[v25];
        v30 = v25 - 1;
        if (v25 != 1)
        {
          v31 = 0;
          do
          {
            v29 = v29 + *(v10 + 8 * (v27 + v31)) * a4[v31];
            v32 = (v31++ + 2);
          }

          while (v32 != v25);
        }

        v18[v25] = v29;
        v33 = *(v10 + 8 * v26);
        v26 -= v25;
        v17[v25] = v29 * v33;
        v27 += v28++;
        --v25;
      }

      while (v20 <= v30);
    }

    if (v19 == 1)
    {
      v34 = *a4;
      *v14 = *a4;
      *v13 = v34 * *v21;
      LODWORD(v35) = 1;
      v36 = v62;
LABEL_36:
      if (a8 >= 0.0)
      {
        v39 = 0.0;
        v40 = a3;
        if (v19 <= a2)
        {
          v41 = v19;
          v40 = a3;
          do
          {
            v40 = v40 + v18[v41] * v17[v41];
            v39 = v39 + v11[v41] * *(v10 + 8 * (v36 + v41));
            ++v41;
          }

          while (v41 <= a2);
        }

        v42 = v11[v12] - v39;
        *(v10 + 8 * (v36 + v12)) = v42;
        if (a3 >= 0.0 && v42 * v42 > v40 * a8)
        {
          a3 = -v40;
          a7 = v61;
          goto LABEL_17;
        }
      }

      if (v35)
      {
        v43 = a3 + *v13 * *v14;
        if (fabs(v43) <= 6.0e-38)
        {
          v44 = 0.0;
        }

        else
        {
          v44 = 1.0 / v43;
        }

        *v21 = *v21 * (v44 * a3);
        if (a2 == 1)
        {
LABEL_63:
          *v61 = v43;
          if (a8 > 0.0)
          {
            v56 = v44 * *(v10 + 8 * (v36 + v12));
            v18[v12] = v56;
            v57 = v12 - 1;
            v58 = v36 + 1;
            do
            {
              v59 = *v13++;
              *(v10 + 8 * v58) = *(v10 + 8 * v58) + v59 * v56;
              ++v58;
              --v57;
            }

            while (v57);
          }

          return result;
        }

        v45 = 2;
      }

      else
      {
        v45 = (((v19 - 1) * v19) >> 1) + 1;
        v44 = 0.0;
        v43 = a3;
        if (fabs(a3) > 6.0e-38)
        {
          v44 = 1.0 / a3;
        }
      }

      if (v20 <= a2)
      {
        do
        {
          v46 = v43;
          v47 = v17[v20];
          v48 = v18[v20];
          v49 = v20;
          if (v20 >= 2)
          {
            v50 = v20 - 1;
            v51 = -(v48 * v44);
            v52 = v13;
            do
            {
              v53 = *(v10 + 8 * v45);
              *(v10 + 8 * v45) = v53 + v51 * *v52;
              *v52 = *v52 + v47 * v53;
              ++v52;
              ++v45;
              --v50;
            }

            while (v50);
            v48 = v18[v49];
          }

          v43 = v43 + v47 * v48;
          if (fabs(v43) > 6.0e-38)
          {
            v44 = 1.0 / v43;
            *(v10 + 8 * v45) = v46 * (1.0 / v43) * *(v10 + 8 * v45);
          }

          v63[0] = 0.0;
          result = R8_EQ((v10 + 8 * v45), v63);
          if (v49 && result)
          {
            v54 = v45;
            v55 = v49;
            do
            {
              *(v10 + 8 * v54--) = 0;
              --v55;
            }

            while (v55);
          }

          ++v45;
          v20 = v49 + 1;
        }

        while (v49 + 1 <= a2);
      }

      goto LABEL_63;
    }

    if (v19 <= 2)
    {
      v24 = 2;
    }

    else
    {
      v24 = v19;
    }

LABEL_34:
    v35 = v24 - 1;
    v37 = v14;
    v38 = v13;
    v36 = v62;
    do
    {
      *v37++ = 0.0;
      *v38++ = 0.0;
      --v35;
    }

    while (v35);
    goto LABEL_36;
  }

LABEL_14:
  if (fabs(a3) > 6.0e-38 && a8 >= 0.0)
  {
    *(v10 + 8 * (v62 + v12)) = v11[v12] / a3;
  }

LABEL_17:
  *a7 = a3;
  return result;
}

uint64_t GN_AGPS_Qual_Pos(_DWORD *a1, unsigned __int8 *a2)
{
  if (a1)
  {
    v3 = *(*(p_api + 88) + 36);
    if (*a1)
    {
      v4 = *a1 == v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return 0;
    }

    *a1 = v3;
  }

  if (!a2)
  {
    EvCrt_v("GN_AGPS_Qual_Pos: Implementation error - the p_GAD_QoP structure is NULL which is not valid");
    return 0;
  }

  if (!*a2)
  {
    if (*(a2 + 1))
    {
      v5 = 0xFFFFFFFFLL;
      goto LABEL_20;
    }

LABEL_15:
    v7 = (((pow(1.1, *a2) + -1.0) * 10.0 + 0.5) * 0.671591672);
    if (v7 <= 4)
    {
      v7 = 4;
    }

    if (v7 >= 0x21)
    {
      v5 = 33;
    }

    else
    {
      v5 = v7;
    }

    goto LABEL_20;
  }

  if ((*a2 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  v5 = 33;
LABEL_20:
  v8 = 100;
  if ((a2[1] & 0x80000000) == 0)
  {
    v9 = (((pow(1.025, a2[1]) + -1.0) * 45.0 + 0.5) * 1.02669405);
    if (v9 <= 8)
    {
      v9 = 8;
    }

    if (v9 >= 0x64)
    {
      v8 = 100;
    }

    else
    {
      v8 = v9;
    }
  }

  v10 = *(a2 + 1);

  return API_Qual_Pos("GN_AGPS", 1, v5, v8, v10);
}

uint64_t Get_GPS_secs(unsigned int a1)
{
  v1 = *(p_api + 48);
  if (*(v1 + 5) != 1 || *v1 < 3)
  {
    return 0;
  }

  result = (*(v1 + 24) + 604800 * *(v1 + 16));
  if (result && a1)
  {
    v4 = (a1 & 0x7FFFF) + ((a1 & 0x7FFFF) >> 1) + 604800 * ((a1 >> 19) & 0x3FF);
    if (result - v4 < 1)
    {
      return v4;
    }

    else
    {
      return v4 + 604800 * ((result - v4 + 302400) / 0x93A80u);
    }
  }

  return result;
}

uint64_t GN_AGPS_Set_Eph_El(unsigned __int8 *a1)
{
  v23[15] = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_AGPS_Set_Eph_El"))
  {
    return 0;
  }

  v2 = *(p_api + 48);
  if (*(v2 + 5) == 1 && *v2 >= 3)
  {
    v3 = *(v2 + 24) + 604800 * *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v16 = *(a1 + 17);
  if (a1[68])
  {
    v4 = 5;
  }

  else
  {
    v4 = 3;
  }

  v13 = *(a1 + 1);
  v14 = *(a1 + 10);
  v15 = *(a1 + 26);
  v17 = *(a1 + 36);
  v18 = *(a1 + 52);
  v12[0] = v3;
  v12[1] = v4;
  if (g_Enable_Event_Log >= 5u)
  {
    EvLog_GPS_IntEph("GN_AGPS_Set_Eph_El: ", *a1, v12);
  }

  v5 = *a1;
  if (!Is_GPS_IntEph_Valid("GN_AGPS_Set_Eph_El: ", v5, v12))
  {
    return 0;
  }

  memset(v23, 0, 108);
  GPS_EphInt2Bin(v12, v23);
  v20 = 0u;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  v19 = v23[0];
  LOBYTE(v20) = v23[1];
  *(&v20 + 1) = *(&v23[1] + 1);
  v6 = 21;
  v7 = 11;
  v8 = 24;
  do
  {
    v9 = &v19 + v7;
    *v9 = *(v23 + v8);
    *(v9 + 1) = *(v23 + v8 + 1);
    --v6;
    v7 += 3;
    v8 += 4;
  }

  while (v6 > 1);
  v10 = API_Set_GPS_CBinEph("GN_AGPS_Set_Eph_El: ", v5, &v19);
  if (v10)
  {
    Debug_Log_GPS_Eph(1, v5, &v19);
  }

  return v10;
}

uint64_t GN_AGPS_Set_Alm(uint64_t a1, uint64_t a2)
{
  result = Is_GN_API_Set_Allowed("GN_AGPS_Set_Alm");
  if (!result)
  {
    return result;
  }

  v5 = a1 - 1;
  v6 = (a1 - 1);
  v7 = v6 < 0x20;
  if (v6 >= 0x20)
  {
    v5 = 0;
  }

  v8 = (a1 + 63);
  v9 = v8 >= 0xA;
  if (v8 >= 0xA)
  {
    v10 = v5;
  }

  else
  {
    v10 = a1 + 63;
  }

  if (v9)
  {
    v11 = v7;
  }

  else
  {
    v11 = 5;
  }

  if (v11 > 3)
  {
    v17 = p_NA;
    v18 = v10;
LABEL_30:
    v26 = v17 + 36 * v18;
    v27 = *(a2 + 6);
    *(v26 + 5050) = *(a2 + 22);
    *(v26 + 5034) = v27;
    *(v26 + 5024) = Get_GPS_secs(*a2);
    *(v26 + 5032) = *(a2 + 4);
    if (*(a2 + 30))
    {
      v28 = 5;
    }

    else
    {
      v28 = 3;
    }

    *(v26 + 5028) = v28;
    Debug_Log_GPS_Alm(1, a1, (v26 + 5024));
    if (g_Enable_Event_Log >= 3u)
    {
      EvLog_nd("GN_AGPS_Set_Alm: ", 2, v29, a1, *(p_NA + 36 * v18 + 5024));
    }

    v30 = *(a2 + 4);
    if (v30 <= 0x3FF)
    {
      if (v30 < 0x100)
      {
        v31 = *(*(p_api + 72) + 1026);
        v32 = *(p_api + 48);
        if (*(v32 + 5) == 1 && *v32 >= 3 && (v33 = *(v32 + 24) + 604800 * *(v32 + 16), v33 > 619315199))
        {
          v34 = v33 / 0x93A80u;
        }

        else
        {
          v34 = v31 + 128;
        }

        v35 = (v31 + (v31 >> 23)) & 0xFF00;
        v36 = v35 | v30;
        v37 = v34 - 128;
        if (v36 > v37)
        {
          LOWORD(v37) = v35 | v30;
        }

        LOWORD(v30) = (((v37 - v36 + 255) & 0xFF00) + v35) | v30;
      }

      else
      {
        LOWORD(v30) = Complete_WeekNo(v30);
      }
    }

    v38 = p_NA;
    *(p_NA + 36 * v18 + 5032) = v30;
    result = 1;
    *(v38 + v18 + 89) = 1;
    return result;
  }

  if (!v11)
  {
    EvCrt_v("GN_AGPS_Set_Alm:  FAILED:  SV = %d, Out of range !", a1);
    return 0;
  }

  v18 = v10;
  v12 = p_NA + 36 * v10;
  v13 = *(a2 + 22);
  *(v12 + 3162) = *(a2 + 6);
  *(v12 + 3178) = v13;
  *(v12 + 3152) = Get_GPS_secs(*a2);
  *(v12 + 3160) = *(a2 + 4);
  if (*(a2 + 30))
  {
    v14 = 5;
  }

  else
  {
    v14 = 3;
  }

  *(v12 + 3156) = v14;
  Debug_Log_GPS_Alm(1, a1, (v12 + 3152));
  if (g_Enable_Event_Log >= 3u)
  {
    EvLog_nd("GN_AGPS_Set_Alm: ", 2, v15, a1, *(p_NA + 36 * v18 + 3152));
  }

  v16 = *(a2 + 4);
  if (v16 <= 0x3FF)
  {
    if (v16 < 0x100)
    {
      v19 = *(*(p_api + 72) + 1026);
      v20 = *(p_api + 48);
      if (*(v20 + 5) == 1 && *v20 >= 3 && (v21 = *(v20 + 24) + 604800 * *(v20 + 16), v21 > 619315199))
      {
        v22 = v21 / 0x93A80u;
      }

      else
      {
        v22 = v19 + 128;
      }

      v23 = (v19 + (v19 >> 23)) & 0xFF00;
      v24 = v23 | v16;
      v25 = v22 - 128;
      if (v24 > v25)
      {
        LOWORD(v25) = v23 | v16;
      }

      LOWORD(v16) = (((v25 - v24 + 255) & 0xFF00) + v23) | v16;
    }

    else
    {
      LOWORD(v16) = Complete_WeekNo(v16);
    }
  }

  v17 = p_NA;
  *(p_NA + 36 * v18 + 3160) = v16;
  result = 1;
  *(v17 + v18 + 47) = 1;
  if ((a1 + 63) <= 9u)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t Complete_WeekNo(unsigned int a1)
{
  if (a1 > 0x3FF)
  {
    v5 = a1;
  }

  else
  {
    v1 = *(p_api + 48);
    if (*(v1 + 5) == 1 && *v1 >= 3 && (v2 = *(v1 + 24) + 604800 * *(v1 + 16), v2 > 619315199))
    {
      v3 = v2 / 0x93A80u;
    }

    else
    {
      v3 = *(*(p_api + 72) + 1026) + 512;
    }

    v4 = v3 - 512;
    do
    {
      v5 = a1;
      a1 += 1024;
    }

    while (v4 > v5);
  }

  return v5;
}

uint64_t GN_AGPS_Set_Ion(unsigned int *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_AGPS_Set_Ion"))
  {
    return 0;
  }

  v3 = *(a1 + 6);
  if (*(a1 + 2))
  {
    v4 = *(a1 + 5);
  }

  else
  {
    if (!*(a1 + 6))
    {
      if (!*(a1 + 7) && !*(a1 + 8) && !*(a1 + 9) && !*(a1 + 10) && !*(a1 + 11))
      {
        v8 = "GN_AGPS_Set_Ion: Rejected: ALL ZERO";
        goto LABEL_15;
      }

      v3 = 0;
    }

    v4 = 0;
  }

  EvLog_nd("GN_AGPS_Set_Ion: ", 10, v2, *a1, *(a1 + 4), v4, v3, *(a1 + 7), *(a1 + 8), *(a1 + 9), *(a1 + 10), *(a1 + 11), *(a1 + 12));
  GPS_secs = Get_GPS_secs(*a1);
  v6 = p_NA;
  *(p_NA + 808) = GPS_secs;
  *(v6 + 816) = *(a1 + 1);
  if (*(a1 + 12) != 1)
  {
    v8 = "GN_AGPS_Set_Ion: Rejected: Assisted source not allowed";
LABEL_15:
    EvLog(v8);
    return 0;
  }

  *(v6 + 812) = 5;
  v7 = 1;
  Debug_Log_GPS_Klob(1, (v6 + 808));
  *(p_NA + 13) = 1;
  return v7;
}

uint64_t GN_AGPS_Set_UTC(unsigned int *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_AGPS_Set_UTC"))
  {
    return 0;
  }

  v3 = *(a1 + 12);
  if (v3 < 0x94)
  {
    v4 = *(a1 + 14);
    if (v4 >= 0x21)
    {
      EvCrt_v("GN_AGPS_Set_UTC: FAILED: dtLS = %d <0 or >32, Unrealistic value!");
      return 0;
    }

    v5 = *(a1 + 16);
    if (v5 >= 8)
    {
      EvCrt_v("GN_AGPS_Set_UTC: FAILED: DN = %d >7, Out of range!");
      return 0;
    }

    v6 = *(a1 + 17);
    if (v6 >= 0x21)
    {
      EvCrt_v("GN_AGPS_Set_UTC: FAILED: dtLSF = %d <0 or >32, Unrealistic value!");
      return 0;
    }

    v7 = (*(a1 + 17) - *(a1 + 14));
    if (v7 >= 0)
    {
      v8 = (*(a1 + 17) - *(a1 + 14));
    }

    else
    {
      v8 = -v7;
    }

    if (v8 >= 2)
    {
      EvCrt_v("GN_AGPS_Set_UTC: FAILED: (dtLSF-dtLS) = %d <-1 or >+1, Unrealistic difference!");
      return 0;
    }

    if (v6 != v4)
    {
      v11 = *(p_api + 48);
      if (*(v11 + 5) == 1 && *v11 >= 3)
      {
        v12 = 1861606989 * (*(v11 + 24) + 604800 * *(v11 + 16));
        v13 = (v12 >> 50) + (v12 >> 63);
      }

      else
      {
        v13 = 0;
      }

      if (Is_Future_Leap_Sec_Date_Not_Valid(v13, 1, *(a1 + 15), *(a1 + 16)))
      {
        EvCrt_v("GN_AGPS_Set_UTC: FAILED: Invalid UTC Future Leap Second date %d  %d %d %d");
        return 0;
      }
    }

    v14 = a1[2];
    if (!*(a1 + 1))
    {
      if (!((v4 | v3) | v6) && !*(a1 + 13) && !(*(a1 + 15) | v5))
      {
        v17 = "GN_AGPS_Set_UTC: Rejected: ALL ZERO";
LABEL_32:
        EvLog(v17);
        return 0;
      }

      v14 = 0;
    }

    EvLog_nd("GN_AGPS_Set_UTC: ", 10, v2, *a1, a1[1], v14, v3, *(a1 + 13), v4, *(a1 + 15), v5, v6, *(a1 + 18));
    GPS_secs = Get_GPS_secs(*a1);
    v16 = p_NA;
    *(p_NA + 824) = GPS_secs;
    *(v16 + 832) = *(a1 + 1);
    *(v16 + 840) = a1[3];
    *(v16 + 844) = *(a1 + 8);
    if (*(a1 + 18) == 1)
    {
      *(v16 + 828) = 5;
      v9 = 1;
      Debug_Log_GPS_UTC(1, (v16 + 824));
      *(p_NA + 14) = 1;
      return v9;
    }

    v17 = "GN_AGPS_Set_UTC: Rejected: Assisted source not allowed";
    goto LABEL_32;
  }

  EvCrt_v("GN_AGPS_Set_UTC: FAILED: Tot = %d >=148, >604800s, Out of range!");
  return 0;
}

BOOL GN_AGPS_Get_UTC(uint64_t a1)
{
  v1 = *(p_api + 56);
  v2 = *(v1 + 8444);
  if (v2)
  {
    v3 = *(v1 + 8440);
    v4 = *(v1 + 8460);
    v5 = *(v1 + 8448);
    v6 = *(v1 + 8456);
    *a1 = (2 * (v3 % 604800) / 3) | ((v3 / 604800) << 19);
    *(a1 + 4) = v5;
    *(a1 + 12) = v6;
    *(a1 + 16) = v4;
    *(a1 + 18) = v2 == 5;
  }

  return v2 != 0;
}

uint64_t GN_AGPS_Set_Ref_Time(unsigned int *a1)
{
  result = Is_GN_API_Set_Allowed("GN_AGPS_Set_Ref_Time");
  if (result)
  {
    EvLog_v("GN_AGPS_Set_Ref_Time:  %u  %u  %d  %d", *a1, a1[1], *(a1 + 4), *(a1 + 5));
    v3 = *a1;
    v4 = p_NA;
    *(p_NA + 412) = *a1;
    v5 = Complete_WeekNo(*(a1 + 4));
    v6 = a1[1];
    *(v4 + 424) = v5;
    *(v4 + 416) = v6 * 0.001;
    v7 = *(a1 + 5);
    *(v4 + 432) = v7 * 0.001;
    *(v4 + 2) = 1;
    if (v3)
    {
      if (v6 <= 0x240C83FF)
      {
        if (v5 > 1023)
        {
          if (v7)
          {
            if (((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v3) < 180001)
            {
              API_Set_Ref_Time(*(p_NA + 412), *(p_NA + 416), *(p_NA + 424), *(p_NA + 432));
              Debug_Log_AGPS_Ref_Time(a1);
              return 1;
            }

            *(p_NA + 2) = 0;
            EvCrt_v("GN_AGPS_Set_Ref_Time: FAILED: OS_Time_ms = %u, too old by %d ms");
          }

          else
          {
            *(v4 + 2) = 0;
            EvCrt_v("GN_AGPS_Set_Ref_Time: FAILED: RMS_ms = %d ==0, Out of range!");
          }
        }

        else
        {
          *(v4 + 2) = 0;
          EvCrt_v("GN_AGPS_Set_Ref_Time: FAILED: WeekNo = %d <1024, Out of range!");
        }
      }

      else
      {
        *(v4 + 2) = 0;
        EvCrt_v("GN_AGPS_Set_Ref_Time: FAILED: TOW_ms = %d >%d, Out of range!");
      }
    }

    else
    {
      *(v4 + 2) = 0;
      EvCrt_v("GN_AGPS_Set_Ref_Time: FAILED: OS_Time_ms = %u ==0, Out of range!");
    }

    return 0;
  }

  return result;
}

uint64_t GN_AGPS_Set_EFSP_Time(double *a1)
{
  result = Is_GN_API_Set_Allowed("GN_AGPS_Set_EFSP_Time");
  if (!result)
  {
    return result;
  }

  EvLog_v("GN_AGPS_Set_EFSP_Time:  %g  %d  %d  %d  %u  %d", *a1, *(a1 + 4), *(a1 + 3), *(a1 + 4), *(a1 + 5), *(a1 + 24));
  v3 = *(a1 + 5);
  if (!v3)
  {
    EvCrt_v("GN_AGPS_Set_EFSP_Time:  FAILED:  OS_Time_ms = %u  ==0, Out of range !");
    return 0;
  }

  if (!*(a1 + 3))
  {
    EvCrt_v("GN_AGPS_Set_EFSP_Time:  FAILED:  Abs_RMS_us = %d  ==0, Out of range !");
    return 0;
  }

  if (!*(a1 + 4))
  {
    EvCrt_v("GN_AGPS_Set_EFSP_Time:  FAILED:  Rel_RMS_ns = %d  ==0, Out of range !");
    return 0;
  }

  v4 = *a1;
  if (*a1 < 0.0 || v4 >= 604800.0)
  {
    EvCrt_v("GN_AGPS_Set_EFSP_Time:  FAILED:  TOW = %g  <0.0 or >=604800.0, Out of range !");
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = p_NA;
  *(p_NA + 7) = v5;
  if (v5 == 1)
  {
    *(v6 + 6) = *(v6 + 5);
    *(v6 + 556) = *(v6 + 552);
    *(v6 + 504) = *(v6 + 496);
    *(v6 + 514) = *(v6 + 512);
    *(v6 + 528) = *(v6 + 520);
    *(v6 + 544) = *(v6 + 536);
    v3 = *(a1 + 5);
    v4 = *a1;
  }

  *(v6 + 552) = v3;
  *(v6 + 496) = v4;
  v7 = *(a1 + 4);
  if (v7 <= 0x3FF)
  {
    EvLog_v("GN_AGPS_Set_EFSP_Time:  WARNING:  WeekNo = %d  <1024", *(a1 + 4));
    v7 = *(a1 + 4);
    v6 = p_NA;
  }

  v8 = Complete_WeekNo(v7);
  *(v6 + 512) = v8;
  v9 = *(a1 + 3);
  v10 = *(a1 + 4);
  v11 = v9 * 0.000001;
  if (v9 == -1)
  {
    v11 = 0.0;
  }

  *(v6 + 520) = v11;
  v12 = v10 * 0.000000001;
  if (v10 == -1)
  {
    v12 = 0.0;
  }

  *(v6 + 536) = v12;
  *(v6 + 5) = 1;
  if (v8 > 1023)
  {
    v13 = *(p_api + 48);
    if (*(v13 + 5) != 1 || *v13 < 3 || !(604800 * *(v13 + 16) + *(v13 + 24)))
    {
      API_Set_Ref_Time(*(v6 + 552), *(v6 + 496), v8, 0.9);
      v14 = p_NA;
      *(p_NA + 412) = *(p_NA + 552);
      *(v14 + 424) = *(v14 + 512);
      *(v14 + 416) = *(v14 + 496);
      *(v14 + 432) = 0x3FECCCCCCCCCCCCDLL;
      *(v14 + 2) = 1;
    }

    Debug_Log_AGPS_EFSP_Time(a1);
    return 1;
  }

  else
  {
    result = 0;
    *(v6 + 5) = 0;
  }

  return result;
}

uint64_t GN_AGPS_Set_TOW_Assist(unsigned int *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_AGPS_Set_TOW_Assist"))
  {
    return 0;
  }

  EvLog_nd("GN_AGPS_Set_TOW_Assist: ", 2, v2, *a1, *(a1 + 4));
  if (g_Enable_Event_Log >= 4u && *(a1 + 4))
  {
    v4 = 0;
    v5 = a1 + 11;
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 1);
      v10 = *v5;
      v5 += 6;
      EvLog_nd("GN_AGPS_TOW_Assist: ", 6, v3, v4++, v6, v7, v8, v9, v10);
    }

    while (v4 < *(a1 + 4));
  }

  if (*a1 >= 0x240C8400)
  {
    EvCrt_v("GN_AGPS_Set_TOW_Assist: FAILED: TOW_ms = %d >=604800000, Out of range!");
    return 0;
  }

  v11 = *(a1 + 4);
  if (!*(a1 + 4) || v11 >= 0x19 && v11 != 32)
  {
    EvCrt_v("GN_AGPS_Set_TOW_Assist: FAILED: Num_TOWA = %d ==0 or >24, Out of range!");
    return 0;
  }

  v14 = 0;
  v15 = a1 + 11;
  do
  {
    if (*(v15 - 5) - 33 <= 0xFFFFFFDF)
    {
      EvCrt_v("GN_AGPS_Set_TOW_Assist: FAILED: SatID[%d] = %d ==0 or >32, Out of range!");
      return 0;
    }

    if (*(v15 - 4) >= 4u)
    {
      EvCrt_v("GN_AGPS_Set_TOW_Assist: FAILED: TLM_Reserved[%d] = %d >3, Out of range!");
      return 0;
    }

    if (*(v15 - 3) >= 0x4000u)
    {
      EvCrt_v("GN_AGPS_Set_TOW_Assist: FAILED: TLM_Word[%d] = %d >16383, Out of range!");
      return 0;
    }

    if (*(v15 - 1) >= 2u)
    {
      EvCrt_v("GN_AGPS_Set_TOW_Assist: FAILED: Anti_Spoof_flag[%d] = %d >1, Out of range!");
      return 0;
    }

    if (*v15 >= 2u)
    {
      EvCrt_v("GN_AGPS_Set_TOW_Assist: FAILED: Alert_flag[%d] = %d >1, Out of range!");
      return 0;
    }

    ++v14;
    v15 += 6;
  }

  while (v11 != v14);
  v16 = p_NA;
  *(p_NA + 19020) = *a1;
  *(v16 + 19024) = 0u;
  *(v16 + 19040) = 0u;
  *(v16 + 19056) = 0u;
  *(v16 + 19072) = 0u;
  *(v16 + 19088) = 0u;
  *(v16 + 19104) = 0u;
  *(v16 + 19120) = 0u;
  *(v16 + 19136) = 0u;
  v17 = *(a1 + 4);
  if (*(a1 + 4))
  {
    v18 = a1 + 11;
    do
    {
      *(v16 + 19024 + 4 * *(v18 - 5) - 4) = DW_Parity_Encode((*(v18 - 3) << 8) | (*(v18 - 4) << 6) | 0x22C00000u, 0) & 0x3FFFFF | (*v18 << 23) | (*(v18 - 1) << 22);
      v18 += 6;
      --v17;
    }

    while (v17);
  }

  v12 = 1;
  *(v16 + 298) = 1;
  Debug_Log_AGPS_TOW_Assist(a1);
  return v12;
}

uint64_t GN_AGPS_Set_Ref_Pos(uint64_t a1)
{
  v53[1] = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed("GN_AGPS_Set_Ref_Pos");
  if (!result)
  {
    return result;
  }

  EvLog_v("GN_AGPS_Set_Ref_Pos: %u LL %g %g Sigma %d %d %d Ht %d %g %d C %d  S %d 0x%X", *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 42), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 68), *(a1 + 72));
  v3 = *(a1 + 8);
  if (fabs(v3) > 90.0)
  {
    EvCrt_v("GN_AGPS_Set_Ref_Pos: FAILED: Latitude = %g <-90.0 or >90.0, Out of range!");
    return 0;
  }

  v4 = *(a1 + 16);
  if (v4 < -180.0 || v4 > 360.0)
  {
    EvCrt_v("GN_AGPS_Set_Ref_Pos: FAILED: Longitude = %g <-180.0 or >360.0, Out of range!");
    return 0;
  }

  v53[0] = 0.0;
  if (R8_EQ((a1 + 24), v53))
  {
    EvCrt_v("GN_AGPS_Set_Ref_Pos: FAILED: RMS_SMaj = %g ==0, Out of range!");
    return 0;
  }

  v53[0] = 0.0;
  if (R8_EQ((a1 + 32), v53))
  {
    EvCrt_v("GN_AGPS_Set_Ref_Pos: FAILED: RMS_SMin = %g ==0, Out of range!");
    return 0;
  }

  if ((*(a1 + 40) - 361) <= 0xFDE2u)
  {
    EvCrt_v("GN_AGPS_Set_Ref_Pos: FAILED: RMS_SMajBrg = %d <-180 or >+360, Out of range!");
    return 0;
  }

  v5 = *(a1 + 42);
  if (v5 == 1)
  {
    v6 = *(a1 + 48);
    if (v6 < -500.0 || v6 > 6000.0)
    {
      EvCrt_v("GN_AGPS_Set_Ref_Pos: FAILED: Height = %g <%d or >%d, Out of range!");
      return 0;
    }

    if (*(a1 + 56) <= 0.0)
    {
      EvCrt_v("GN_AGPS_Set_Ref_Pos: FAILED: RMS_Height = %g <=0, Invalid value!");
      return 0;
    }
  }

  v7 = *(a1 + 64);
  if (v7 >= 5)
  {
    EvCrt_v("GN_AGPS_Set_Ref_Pos: FAILED: Trust = %d <GN_AGPS_TRUST_UNKNOWN or >GN_AGPS_TRUST_HIGH, Out of range!");
    return 0;
  }

  v8 = *(a1 + 68);
  if (v8 >= 9)
  {
    EvCrt_v("GN_AGPS_Set_Ref_Pos: FAILED: Source = %d <GN_AGPS_SRC_UNKNOWN or >GN_AGPS_SRC_EXT, Out of range!");
    return 0;
  }

  v9 = v3 * 0.0174532925;
  v10 = v4 * 0.0174532925;
  v11 = *(a1 + 24);
  v12 = v11 * v11;
  v13 = p_NA;
  LODWORD(v14) = *a1;
  if (*(p_NA + 10) != 1)
  {
    goto LABEL_49;
  }

  v15 = *(p_NA + 616);
  v16 = (v9 - v15) * 6378137.0;
  v17 = (v10 - *(p_NA + 624)) * 6378137.0;
  v18 = cos(v15);
  v19 = v18 * v17 * (v18 * v17) + v16 * v16;
  v20 = v14 - *(v13 + 608);
  v21 = *(v13 + 664);
  v22 = v21 + v20 * 0.015 * (v20 * 0.015);
  v23 = (v12 + v22) * 9.0;
  if (v7 <= 2)
  {
    v24 = *(v13 + 700);
    if (v7 < v24)
    {
      EvCrt_v("GN_AGPS_Set_Ref_Pos: Ignored: Trust %d worse than existing, %d dAge %d dPos %f Sig %f %f %f", v7, v24, v20, sqrt(v19), v11, sqrt(v21), sqrt(v22));
      v25 = v19 < 160000.0 && v19 < v23;
      if (!v25 || *(a1 + 64) <= 1 || *(a1 + 42) != 1)
      {
        goto LABEL_63;
      }

      goto LABEL_40;
    }
  }

  if (v12 <= v22)
  {
LABEL_49:
    *(v13 + 10) = 1;
    if (!v14)
    {
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v13 = p_NA;
    }

    *(v13 + 608) = v14;
    *(v13 + 616) = v9;
    *(v13 + 624) = v10;
    *(v13 + 640) = v12;
    v37 = *(a1 + 32) * *(a1 + 32);
    *(v13 + 648) = v37;
    v38 = *(a1 + 40) * 0.0174532925;
    *(v13 + 656) = v38;
    *(v13 + 664) = v12;
    *(v13 + 672) = v37;
    *(v13 + 680) = v38;
    if (*(a1 + 42) == 1)
    {
      *(v13 + 11) = 1;
      *(v13 + 632) = *(a1 + 48);
      *(v13 + 688) = *(a1 + 56) * *(a1 + 56);
    }

    v39 = *(a1 + 64);
    if (!**(&xmmword_2A1926940 + 1))
    {
      v40 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v41 = v40 - *a1;
      v13 = p_NA;
      *(p_NA + 608) = v40;
      *(v13 + 640) = vaddq_f64(*(v13 + 640), vdupq_lane_s64(COERCE__INT64(v41 * 0.015 * (v41 * 0.015)), 0));
      *(v13 + 688) = v41 * 0.0005 * (v41 * 0.0005) + *(v13 + 688);
      v42 = v41 >= 0 ? v41 : -v41;
      if (v42 >= 0x249F1 && v39 >= 2)
      {
        EvCrt_v("GN_AGPS_Set_Ref_Pos: Very old Reference Position demoted to Very Low Trust, Age_ms %d", v41);
        v13 = p_NA;
        v39 = 1;
      }
    }

    *(v13 + 696) = v39;
    *(v13 + 700) = v39;
    v43 = *(a1 + 68);
    *(v13 + 704) = v43;
    *(v13 + 712) = *(a1 + 72);
    if (v43 == 7)
    {
      *(v13 + 720) = 0;
    }

    else
    {
      *(v13 + 720) = 2;
    }

    goto LABEL_63;
  }

  if (v19 >= v23)
  {
    if ((v8 == 4 || v8 == 2) && *(v13 + 704) == 7)
    {
      EvCrt_v("GN_AGPS_Set_Ref_Pos: E911 Ref Pos replacing inconsistent OS Ref Pos, dAge %d dPos %f Sig %f %f %f", v20, sqrt(v19), v11, sqrt(v21), sqrt(v22));
      v13 = p_NA;
      LODWORD(v14) = *a1;
    }

    goto LABEL_49;
  }

  EvCrt_v("GN_AGPS_Set_Ref_Pos: Ignored: Worse but consistent, dAge %d dPos %f Sig %f %f %f", v20, sqrt(v19), v11, sqrt(v21), sqrt(v22));
  if (!v5 || v19 >= 160000.0)
  {
    goto LABEL_63;
  }

LABEL_40:
  if (*(p_NA + 11) != 1)
  {
    goto LABEL_72;
  }

  v26 = *(a1 + 68);
  if (v26 != 7)
  {
    goto LABEL_64;
  }

  v27 = *a1 - *(p_NA + 608);
  v28 = *(p_NA + 688);
  v29 = v28 + v27 * 0.0005 * (v27 * 0.0005);
  v30 = *(a1 + 56);
  if (v30 * v30 <= v29)
  {
    goto LABEL_71;
  }

  v31 = *(a1 + 48) - *(p_NA + 632);
  v32 = v31 * v31;
  v33 = (v30 * v30 + v29) * 9.0;
  v34 = sqrt(v32);
  v35 = sqrt(v28);
  v36 = sqrt(v29);
  if (v32 >= v33)
  {
    EvCrt_v("GN_AGPS_Set_Ref_Pos: New Altitude replacing inconsistent Prev Altitude, dAge %d dAlt %f Sig %f %f %f", v27, v34, v30, v35, v36);
    if (*(p_NA + 11))
    {
LABEL_71:
      EvCrt_v("GN_AGPS_Set_Ref_Pos: New Altitude replacing previous one, PrevAlt %f Sig %f CurrentAlt %f Sig %f");
LABEL_73:
      v52 = p_NA;
      *(p_NA + 11) = 1;
      *(v52 + 632) = *(a1 + 48);
      *(v52 + 688) = *(a1 + 56) * *(a1 + 56);
      goto LABEL_63;
    }

LABEL_72:
    EvCrt_v("GN_AGPS_Set_Ref_Pos: New Altitude replacing previously missing one, CurrentAlt %f Sig %f");
    goto LABEL_73;
  }

  EvCrt_v("GN_AGPS_Set_Ref_Pos: New Altitude Ignored: Worse but consistent, dAge %d dAlt %f Sig %f %f %f", v27, v34, v30, v35, v36);
LABEL_63:
  v26 = *(a1 + 68);
LABEL_64:
  if (v26 == 4 || v26 == 2)
  {
    v44 = p_NA;
    *(p_NA + 728) = *a1;
    v45 = *(a1 + 16);
    v46 = *(a1 + 32);
    v47 = *(a1 + 64);
    *(v44 + 776) = *(a1 + 48);
    *(v44 + 792) = v47;
    *(v44 + 744) = v45;
    *(v44 + 760) = v46;
    *(v44 + 12) = 1;
    v26 = *(a1 + 68);
  }

  if (v26 == 7)
  {
    v48 = p_NA;
    *(p_NA + 372) = *(p_NA + 371);
    *(v48 + 368) = *(v48 + 367);
    memmove((v48 + 21080), (v48 + 21000), 0x190uLL);
    *(v48 + 367) = 1;
    ++*(v48 + 376);
    *(v48 + 21000) = *a1;
    v49 = *(a1 + 64);
    v51 = *(a1 + 16);
    v50 = *(a1 + 32);
    *(v48 + 21048) = *(a1 + 48);
    *(v48 + 21064) = v49;
    *(v48 + 21016) = v51;
    *(v48 + 21032) = v50;
  }

  Debug_Log_AGPS_Ref_Pos(a1);
  return 1;
}

uint64_t GN_AGPS_Set_GAD_Ref_Pos(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed("GN_AGPS_Set_GAD_Ref_Pos");
  if (!result)
  {
    return result;
  }

  EvLog_nd("GN_AGPS_Set_GAD_Ref_Pos: ", 19, *(a1 + 31), *a1, *(a1 + 4), a1[2], a1[3], *(a1 + 16), *(a1 + 9), *(a1 + 20), *(a1 + 21), *(a1 + 22), *(a1 + 23), *(a1 + 24), *(a1 + 25), *(a1 + 13), *(a1 + 14), *(a1 + 30), *(a1 + 31), *(a1 + 32), a2, a3);
  v35 = 0u;
  v36 = 0u;
  memset(v34, 0, sizeof(v34));
  LODWORD(v7) = *a1;
  if (!*a1)
  {
    v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  }

  LODWORD(v34[0]) = v7;
  if (!*(a1 + 20))
  {
    *(a1 + 20) = -1;
    EvLog("GN_AGPS_Set_GAD_Ref_Pos: WARNING: suncertaintySemiMajor = 0, Treated as not set!");
  }

  if (!*(a1 + 21))
  {
    *(a1 + 21) = -1;
    EvLog("GN_AGPS_Set_GAD_Ref_Pos: WARNING: suncertaintySemiMinor = 0, Treated as not set!");
  }

  if (!*(a1 + 24) || *(a1 + 24) - 255 >= 0xFFFFFF66)
  {
    *(a1 + 24) = -1;
    EvLog("GN_AGPS_Set_GAD_Ref_Pos: WARNING: confidence = 0 or > 100, Treated as not set!");
  }

  if (!*(a1 + 23))
  {
    *(a1 + 23) = -1;
    EvLog("GN_AGPS_Set_GAD_Ref_Pos: WARNING: uncertaintyAltitude = 0, Treated as not set!");
    if (!*(a1 + 9))
    {
      *(a1 + 16) = -1;
      EvLog("GN_AGPS_Set_GAD_Ref_Pos: WARNING: altitude = 0 when uncertaintyAltitude = 0, Treated as not set!");
    }
  }

  v8 = *(a1 + 20);
  v9 = *(a1 + 21);
  if (v8 < v9)
  {
    EvCrt_v("GN_AGPS_Set_GAD_Ref_Pos: FAILED: semi-major < semi-minor %d %d");
    return 0;
  }

  v10 = a1[2];
  if (v10 >= 0x800000)
  {
    EvCrt_v("GN_AGPS_Set_GAD_Ref_Pos: FAILED: latitude = %d >8388607, Out of range!");
    return 0;
  }

  v11 = v10 * 0.0000107288373;
  *(v34 + 1) = v11;
  v12 = *(a1 + 4);
  if (v12 >= 2)
  {
    EvCrt_v("GN_AGPS_Set_GAD_Ref_Pos: FAILED: latitudeSign = %d >1, Out of range!");
    return 0;
  }

  if (v12 == 1)
  {
    *(v34 + 1) = -v11;
  }

  v13 = a1[3];
  if ((v13 - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_AGPS_Set_GAD_Ref_Pos: FAILED: longitude = %d <-8388608 or >8388607, Out of range!");
    return 0;
  }

  *&v34[1] = v13 * 0.0000214576721;
  v14 = *(a1 + 9);
  if ((v14 & 0x8000) != 0)
  {
    EvCrt_v("GN_AGPS_Set_GAD_Ref_Pos: FAILED: altitude = %d >32767, Out of range!");
    return 0;
  }

  v15 = *(a1 + 16);
  if (v15 == 255)
  {
    v16 = 0;
    BYTE10(v34[2]) = 0;
    v17 = 0.0;
  }

  else if (v15 == 1)
  {
    v16 = 1;
    BYTE10(v34[2]) = 1;
    v17 = -v14;
  }

  else
  {
    if (*(a1 + 16))
    {
      EvCrt_v("GN_AGPS_Set_GAD_Ref_Pos: FAILED: altitudeDirection = %d <-1 or >1, Out of range!");
      return 0;
    }

    v16 = 1;
    BYTE10(v34[2]) = 1;
    v17 = v14;
  }

  *&v35 = v17;
  if ((v8 & 0x80) != 0)
  {
    if (v8 != 255)
    {
      EvCrt_v("GN_AGPS_Set_GAD_Ref_Pos: FAILED: uncertaintySemiMajor = %d >127 && !=255, Out of range!");
      return 0;
    }

    EvCrt_v("GN_AGPS_Set_GAD_Ref_Pos: WARNING: Unknown uncertaintySemiMajor replaced with default = %f m", 15000.0);
    v9 = *(a1 + 21);
    v18 = 15000.0;
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_34;
    }

LABEL_51:
    v19 = v18;
    if (v9 != 255)
    {
      EvCrt_v("GN_AGPS_Set_GAD_Ref_Pos: FAILED: uncertaintySemiMinor = %d >127 && !=255, Out of range!");
      return 0;
    }

    goto LABEL_35;
  }

  v18 = (pow(1.1, v8) + -1.0) * 10.0;
  if ((v9 & 0x80) != 0)
  {
    goto LABEL_51;
  }

LABEL_34:
  v19 = (pow(1.1, v9) + -1.0) * 10.0;
LABEL_35:
  v20 = *(a1 + 22);
  if (v20 > 0x59)
  {
    if (v20 != 255)
    {
      EvCrt_v("GN_AGPS_Set_GAD_Ref_Pos: FAILED: orientationMajorAxis = %d >=90 && !=255, Out of range!");
      return 0;
    }

    v21 = 0;
  }

  else
  {
    v21 = 2 * (v20 & 0x7F);
  }

  WORD4(v34[2]) = v21;
  v22 = 0.0;
  if (v16)
  {
    v23 = *(a1 + 23);
    if (*(a1 + 23) < 0)
    {
      if (v23 != 255)
      {
        EvCrt_v("GN_AGPS_Set_GAD_Ref_Pos: FAILED: uncertaintyAltitude = %d >127 && !=255, Out of range!");
        return 0;
      }

      v22 = dbl_299728600[*(*(&xmmword_2A1926940 + 1) + 52) < 5u];
      EvCrt_v("GN_AGPS_Set_GAD_Ref_Pos: WARNING: Unknown uncertaintyAltitude replaced with default = %f m", v22);
    }

    else
    {
      v22 = (pow(1.025, v23) + -1.0) * 45.0;
    }
  }

  if (a2 >= 5)
  {
    EvCrt_v("GN_AGPS_Set_GAD_Ref_Pos: FAILED: Trust = %d > GN_AGPS_TRUST_HIGH, Out of range!");
    return 0;
  }

  if (a3 >= 9)
  {
    EvCrt_v("GN_AGPS_Set_GAD_Ref_Pos: FAILED: Source = %d > GN_AGPS_SRC_EXT, Out of range!");
    return 0;
  }

  v36 = __PAIR64__(a3, a2);
  v24 = *(a1 + 24);
  if (v24 <= 0x64)
  {
    v25 = *(a1 + 24);
  }

  else
  {
    v25 = 39;
  }

  if (v25 < 0x33 || v19 < 500.0)
  {
    v29 = v24 - 97;
    if (v29 >= 4u)
    {
      if (v25 <= 0x5E)
      {
        if (v25 <= 0x59)
        {
          if (v25 <= 0x54)
          {
            if (v25 <= 0x4F)
            {
              if (v25 <= 0x4A)
              {
                if (v25 <= 0x45)
                {
                  if (v25 <= 0x42)
                  {
                    if (v25 <= 0x40)
                    {
                      if (v25 <= 0x3B)
                      {
                        if (v25 <= 0x31)
                        {
                          if (v25 <= 0x26)
                          {
                            if (v25 <= 0x1D)
                            {
                              if (v25 <= 0x13)
                              {
                                v27 = dbl_299728610[v25 > 9];
                                v28 = 2.17864924;
                                if (v25 <= 9)
                                {
                                  v28 = 3.125;
                                }
                              }

                              else
                              {
                                v28 = 1.49700599;
                                v27 = 3.95256917;
                              }
                            }

                            else
                            {
                              v28 = 1.18343195;
                              v27 = 2.5974026;
                            }
                          }

                          else
                          {
                            v28 = 1.0;
                            v27 = 1.90839695;
                          }
                        }

                        else
                        {
                          v28 = 0.849617672;
                          v27 = 1.48367953;
                        }
                      }

                      else
                      {
                        v28 = 0.738552437;
                        v27 = 1.18764846;
                      }
                    }

                    else
                    {
                      v28 = 0.690131125;
                      v27 = 1.06951872;
                    }
                  }

                  else
                  {
                    v28 = 0.671591672;
                    v27 = 1.02669405;
                  }
                }

                else
                {
                  v28 = 0.644329897;
                  v27 = 0.965250965;
                }
              }

              else
              {
                v28 = 0.600600601;
                v27 = 0.869565217;
              }
            }

            else
            {
              v28 = 0.557413601;
              v27 = 0.780640125;
            }
          }

          else
          {
            v28 = 0.513347023;
            v27 = 0.694927033;
          }
        }

        else
        {
          v28 = 0.465983225;
          v27 = 0.607902736;
        }
      }

      else
      {
        v28 = 0.408496732;
        v27 = 0.510204082;
      }
    }

    else
    {
      v27 = dbl_299728660[v29];
      v28 = dbl_299728680[v29];
    }
  }

  else
  {
    if (v25 >= 0x5A)
    {
      v25 = 90;
    }

    v26 = 90.0 / v25;
    v27 = v26 * 0.333333333;
    v28 = sqrt(v26) * 0.333333333;
  }

  v30 = v18 * v28;
  v31 = v19 * v28;
  *(&v34[1] + 1) = v30;
  *&v34[2] = v31;
  v32 = v22 * v27;
  *(&v35 + 1) = v32;
  if (a3 >= 7)
  {
    if ((a3 - 7) >= 2)
    {
      EvCrt_Illegal_Default("GN_AGPS_Set_GAD_Ref_Pos", 2505);
    }
  }

  else
  {
    v33 = 1000.0;
    if (v32 > 1000.0 || (v33 = 10.0, v32 < 10.0))
    {
      *(&v35 + 1) = v33;
    }

    if (v31 < 500.0)
    {
      *&v34[2] = v30;
      if (v30 < 500.0)
      {
        *(&v34[1] + 8) = vdupq_n_s64(0x407F400000000000uLL);
      }

      WORD4(v34[2]) = 0;
    }
  }

  return GN_AGPS_Set_Ref_Pos(v34);
}

uint64_t GN_AGPS_Set_Acq_Ass(unsigned int *a1)
{
  v106 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_AGPS_Set_Acq_Ass"))
  {
    return 0;
  }

  EvLog_nd("GN_AGPS_Set_Acq_Ass: ", 2, v2, *a1, *(a1 + 4));
  if (g_Enable_Event_Log >= 4u && *(a1 + 4))
  {
    v3 = 0;
    v4 = a1 + 18;
    do
    {
      v5 = *(v4 - 12);
      v6 = *(v4 - 5);
      v7 = *(v4 - 8);
      v8 = *(v4 - 7);
      v9 = *(v4 - 3);
      v10 = *(v4 - 4);
      v11 = *(v4 - 3);
      v12 = *(v4 - 2);
      v13 = *(v4 - 1);
      v14 = *v4;
      v4 += 14;
      EvLog_v("GN_AGPS_AA_El: %2d %2d   %5d %5d %2d %d   %4d %2d %d %2d   %2d %d", v3++, v5, v6, 5 * v6 / 2, v7, v8, v9, v10, v11, v12, v13, v14);
    }

    while (v3 < *(a1 + 4));
  }

  if (*a1 > 0x240C83FF)
  {
    *(p_NA + 297) = 0;
    EvCrt_v("GN_AGPS_Set_Acq_Ass: FAILED: Ref_GPS_TOW = %d >=604800000, Out of range!");
    return 0;
  }

  if (*(a1 + 4) - 17 < 0xFFFFFFF0)
  {
    *(p_NA + 297) = 0;
    EvCrt_v("GN_AGPS_Set_Acq_Ass: FAILED: Num_AA = %d ==0 or >16, Out of range!");
    return 0;
  }

  v17 = 0;
  v18 = a1 + 18;
  do
  {
    v19 = *(v18 - 12);
    if (v19 - 65 <= 0xFFFFFFBF)
    {
      *(p_NA + 297) = 0;
      EvCrt_v("GN_AGPS_Set_Acq_Ass: FAILED: Sat_ID[%d] = %d ==0 or >64, Out of range!");
      return 0;
    }

    if (v19 >= 0x21)
    {
      *(p_NA + 297) = 0;
      EvCrt_v("GN_AGPS_Set_Acq_Ass: WARNING: Sat_ID[%d] = %d >32, Modernized GPS, Ignored!", v17, v19);
    }

    if (((*(v18 - 5) - 2048) >> 12) <= 0xEu)
    {
      *(p_NA + 297) = 0;
      EvCrt_v("GN_AGPS_Set_Acq_Ass: FAILED: Doppler_0[%d] = %d <-2048 or >2047, Out of range!");
      return 0;
    }

    if (*(v18 - 8) >= 0x40u)
    {
      *(p_NA + 297) = 0;
      EvCrt_v("GN_AGPS_Set_Acq_Ass: FAILED: Doppler_1[%d] = %d >63, Out of range!");
      return 0;
    }

    if (*(v18 - 7) >= 5u)
    {
      *(p_NA + 297) = 0;
      EvCrt_v("GN_AGPS_Set_Acq_Ass: FAILED: Doppler_Unc[%d] = %d >4, Out of range!");
      return 0;
    }

    if (*(v18 - 3) >= 0x3FFu)
    {
      *(p_NA + 297) = 0;
      EvCrt_v("GN_AGPS_Set_Acq_Ass: FAILED: Code_Phase[%d] = %d >1022, Out of range!");
      return 0;
    }

    if (*(v18 - 4) >= 0x14u)
    {
      *(p_NA + 297) = 0;
      EvCrt_v("GN_AGPS_Set_Acq_Ass: FAILED: Int_Code_Phase[%d] = %d >19, Out of range!");
      return 0;
    }

    if (*(v18 - 3) >= 4u)
    {
      *(p_NA + 297) = 0;
      EvCrt_v("GN_AGPS_Set_Acq_Ass: FAILED: GPS_Bit_Num[%d] = %d >3, Out of range!");
      return 0;
    }

    if (*(v18 - 2) >= 0x10u)
    {
      *(p_NA + 297) = 0;
      EvCrt_v("GN_AGPS_Set_Acq_Ass: FAILED: Code_Window[%d] = %d >15, Out of range!");
      return 0;
    }

    if (*(v18 - 1) >= 0x20u)
    {
      *(p_NA + 297) = 0;
      EvCrt_v("GN_AGPS_Set_Acq_Ass: FAILED: Azimuth[%d] = %d >31, Out of range!");
      return 0;
    }

    if (*v18 >= 8u)
    {
      *(p_NA + 297) = 0;
      EvCrt_v("GN_AGPS_Set_Acq_Ass: FAILED: Elevation[%d] = %d >7, Out of range!");
      return 0;
    }

    ++v17;
    v18 += 14;
  }

  while (v17 < *(a1 + 4));
  v20 = *(a1 + 13);
  v104[11] = *(a1 + 12);
  v104[12] = v20;
  v105 = *(a1 + 28);
  v21 = *(a1 + 9);
  v104[7] = *(a1 + 8);
  v104[8] = v21;
  v22 = *(a1 + 11);
  v104[9] = *(a1 + 10);
  v104[10] = v22;
  v23 = *(a1 + 5);
  v104[3] = *(a1 + 4);
  v104[4] = v23;
  v24 = *(a1 + 7);
  v104[5] = *(a1 + 6);
  v104[6] = v24;
  v25 = *(a1 + 1);
  v103 = *a1;
  v104[0] = v25;
  v26 = *(a1 + 3);
  v104[1] = *(a1 + 2);
  v104[2] = v26;
  v27 = p_NA;
  v28 = v103;
  if (*(p_NA + 297) == 1)
  {
    v29 = v103 - *(p_NA + 17664);
    if (v29 <= 4999)
    {
      LODWORD(v100) = 0;
      BYTE4(v100) = 0;
      v101 = 0u;
      memset(v102, 0, 21);
      LODWORD(v97) = 0;
      BYTE4(v97) = 0;
      v98 = 0u;
      memset(v99, 0, 21);
      EvLog_v("GN_AGPS_Set_Acq_Ass: %d records from only %d ms ago, merging.", *(p_NA + 17672), v29);
      v31 = p_NA;
      if (*(p_NA + 17672))
      {
        v32 = 0;
        v33 = BYTE4(v103);
        do
        {
          if (*(&v103 + 14 * v32 + 6) <= 0x20u)
          {
            v34 = v31 + 17676 + 28 * v32;
            v35 = v33 + 1;
            v36 = &v103 + 6;
            while (1)
            {
              v37 = *v36;
              v36 += 14;
              if (*(v34 + 2) == v37)
              {
                break;
              }

              if (!--v35)
              {
                LODWORD(v100) = *(v31 + 17664);
                BYTE4(v100) = 1;
                LODWORD(v101) = *v34;
                v38 = v31 + 17676 + 28 * v32;
                WORD5(v101) = *(v38 + 10);
                HIDWORD(v101) = *(v38 + 12);
                HIWORD(v102[0]) = *(v38 + 16);
                *&v102[1] = *(v38 + 20);
                LODWORD(v97) = v28;
                Comp_Cur_Acq_Aid(&v100, &v97);
                v39 = &v103 + 14 * ++v33 + 6;
                *(v39 - 14) = BYTE2(v98);
                v40 = v39 - 14;
                v41 = 42000 * SWORD6(v98);
                if (v41 < 0)
                {
                  BYTE2(v41) = (v41 + 0xFFFF) >> 16;
                }

                v40[4] = BYTE2(v41) + 42;
                if (SHIWORD(v98) >= 1)
                {
                  v42 = HIWORD(v98) + 1;
                }

                else
                {
                  v42 = HIWORD(v98) - 1;
                }

                HIWORD(v98) = v42;
                *(v40 + 1) = ((3435973838 * v42) >> 33) + ((3435973838 * v42) >> 63);
                v40[5] = 0;
                v43 = 4u;
                while (WORD5(v98) > Acq_Ass_Table_Doppler_Unc[v43])
                {
                  if (--v43 == -1)
                  {
                    goto LABEL_44;
                  }
                }

                v40[5] = v43;
LABEL_44:
                v45 = v99[1];
                v44 = v99[2];
                *(v40 + 3) = 1023 * (v99[2] / 1023) - LOWORD(v99[2]) + 1023;
                v46 = ((((2145384445 * v44) >> 32) - v44) >> 9) + ((((2145384445 * v44) >> 32) - v44) >> 31);
                v47 = v46 + v28 - 1500 * v45;
                v48 = 1500 * v45;
                v49 = 5 * (((v47 & ~(v47 >> 31)) - v47 + (v47 >> 31)) / 0x50 + (v47 >> 31));
                v50 = v46 + v28 + 16 * v49;
                v51 = v50 - v48;
                if (v50 - v48 >= 79)
                {
                  v51 = 79;
                }

                v52 = v48 - v50 - -80 * ((v28 + 79 + v46 + 16 * v49 - v48 - v51) / 0x50) + 80;
                v40[9] = v52 / 0x14u;
                v40[8] = v52 % 0x14u;
                v40[10] = 0;
                v53 = 1;
                while (HIWORD(v99[0]) > Acq_Ass_Table_Code_Window[v53])
                {
                  if (++v53 == 16)
                  {
                    goto LABEL_51;
                  }
                }

                v40[10] = v53;
LABEL_51:
                v31 = p_NA;
                v40[11] = (4 * *(p_NA + 28 * v32 + 17682) + 24) / 45;
                v40[12] = (4 * *(v31 + 28 * v32 + 17681) + 24) / 45;
                break;
              }
            }
          }

          ++v32;
        }

        while (v32 < *(v31 + 17672));
        BYTE4(v103) = v33;
      }

      else
      {
        v33 = BYTE4(v103);
      }

      EvLog_nd("GN_AGPS_Set_Acq_Ass: (merged) ", 2, v30, v28, v33);
      if (v33 && g_Enable_Event_Log >= 4u)
      {
        v55 = 0;
        v56 = v104 + 2;
        do
        {
          v57 = *(v56 - 12);
          v58 = *(v56 - 5);
          v59 = *(v56 - 8);
          v60 = *(v56 - 7);
          v61 = *(v56 - 3);
          v62 = *(v56 - 4);
          v63 = *(v56 - 3);
          v64 = *(v56 - 2);
          v65 = *(v56 - 1);
          v66 = *v56;
          v56 += 14;
          EvLog_nd("GN_AGPS_AA_El: (merged) ", 12, v54, v55++, v57, v58, (5 * v58 / 2), v59, v60, v61, v62, v63, v64, v65, v66);
        }

        while (v33 != v55);
      }

      v27 = p_NA;
    }
  }

  *(v27 + 17664) = v28;
  *(v27 + 17668) = 0;
  v67 = BYTE4(v103);
  *(v27 + 17672) = BYTE4(v103);
  v100 = 0;
  *&v101 = 0;
  v97 = 0;
  *&v98 = 0;
  if (v67)
  {
    v68 = 0;
    v69 = v104 + 2;
    do
    {
      v70 = *v69;
      v69 += 14;
      *(&v97 + v68++) = v70;
    }

    while (v67 != v68);
    for (i = 0; i != v67; ++i)
    {
      v72 = 0;
      v73 = -1;
      v74 = -1;
      do
      {
        if (*(&v97 + v72) > v73)
        {
          v73 = *(&v97 + v72);
          v74 = v72;
        }

        ++v72;
      }

      while (v67 != v72);
      *(&v100 + i) = v74;
      if (v74 != -1)
      {
        *(&v97 + v74) = -99;
      }
    }

    v75 = 0;
    v76 = v104;
    v77 = v67;
    do
    {
      v78 = *v76;
      v76 += 14;
      v75 += Acq_Ass_Table_Code_Window[v78];
      --v77;
    }

    while (v77);
    v96 = (v75 / v67 + 2) / 3 + 4;
    bzero((v27 + 17676), 0x540uLL);
    v79 = &v100;
    v80 = 17700;
    while (1)
    {
      v81 = *v79++;
      v82 = &v103 + 14 * v81 + 6;
      v83 = v27 + v80;
      *(v83 - 22) = *v82;
      *(v83 - 24) = 1;
      *(v83 - 10) = 5 * *(v82 + 1) / 2;
      if (v82[4])
      {
        *(v83 - 12) = v82[4] - 42;
        v84 = v82[5];
      }

      else
      {
        v84 = v82[5];
        if (!v82[5])
        {
          *(v83 - 12) = -16;
          v85 = v96;
          goto LABEL_89;
        }

        *(v83 - 12) = -42;
      }

      v85 = Acq_Ass_Table_Doppler_Unc[v84];
LABEL_89:
      v86 = (v27 + v80);
      *(v27 + v80 - 14) = v85;
      v87 = v82[8] + 20 * v82[9];
      if (v87 <= 0x28)
      {
        v88 = -80;
      }

      else
      {
        v88 = -160;
      }

      v89 = v87 + *(v27 + 17664) + v88;
      v90 = v89 - 604800000;
      if (v89 <= 604800000)
      {
        v90 = v89;
      }

      if (v89 >= 0)
      {
        v91 = v90;
      }

      else
      {
        v91 = v89 + 604800000;
      }

      *(v86 - 1) = v91 / 1500;
      *v86 = 1023 * (v91 % 1500);
      if (*(v82 + 3))
      {
        Inc_CA_Chips(1023 - *(v82 + 3), (v27 + v80), v86 - 1);
        v27 = p_NA;
      }

      v92 = Acq_Ass_Table_Code_Window[v82[10]];
      *(v86 - 4) = v92;
      *(v86 - 8) = 16 * v92;
      v93 = v82[11];
      if (v93 <= 0x1F)
      {
        v94 = (45 * v93) >> 2;
      }

      else
      {
        v94 = 0;
      }

      *(v86 - 9) = v94;
      v95 = (45 * v82[12]) >> 2;
      if (v95 >= 0x5A)
      {
        LOBYTE(v95) = 90;
      }

      *(v86 - 19) = v95;
      v80 += 28;
      if (!--v67)
      {
        goto LABEL_108;
      }
    }
  }

  bzero((v27 + 17676), 0x540uLL);
LABEL_108:
  v15 = 1;
  *(v27 + 297) = 1;
  Debug_Log_AGPS_Acq_Ass(a1);
  return v15;
}

unint64_t GN_AGPS_Mark_Response_Sent(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x29EDCA608];
  GNSS_Write_GNB_Ctrl(xmmword_2A1926A60);
  GNSS_GNB_Debug_Ctl(xmmword_2A1926A80);
  GNSS_Event_Log_Ctl(*(&xmmword_2A1926A70 + 1));
  GNSS_Nav_Debug_Ctl(xmmword_2A1926A70);
  v4 = __src;
  v33 = __src;
  v34 = v36;
  v32 = __src;
  v5 = 10;
  v6 = 1u;
  do
  {
    v31 = v4 + 1;
    *v4 = v5;
    v4 = v31;
    if (v31 >= v34)
    {
      v4 = v33;
      v31 = v33;
    }

    v5 = str_117[v6++];
  }

  while (v6 != 35);
  sprintf_10u(&v31, a1);
  v7 = v31++;
  *v7 = 32;
  if (v31 >= v34)
  {
    v31 = v33;
  }

  sprintf_10u(&v31, a2);
  v8 = 0;
  v9 = 32;
  v10 = v31;
  do
  {
    v31 = v10 + 1;
    *v10 = v9;
    v10 = v31;
    if (v31 >= v34)
    {
      v10 = v33;
      v31 = v33;
    }

    v9 = str_118[++v8];
  }

  while (v8 != 8);
  result = API_Query_Config(v36);
  if (v38)
  {
    v12 = xmmword_2A1926A80;
    v13 = (v31 - v32);
    v14 = *(xmmword_2A1926A80 + 24);
    result = *xmmword_2A1926A80;
    v15 = __src;
    do
    {
      v16 = v14 - result;
      if (v13 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v13;
      }

      memcpy(result, v15, v17);
      result = *v12 + v17;
      *v12 = result;
      v14 = v12[3];
      if (result >= v14)
      {
        result = v12[2];
        *v12 = result;
      }

      v15 += v17;
      v18 = __OFSUB__(v13, v17);
      v13 -= v17;
    }

    while (!((v13 < 0) ^ v18 | (v13 == 0)));
  }

  if (v39)
  {
    v19 = *(&xmmword_2A1926A70 + 1);
    v20 = (v31 - v32);
    v21 = *(*(&xmmword_2A1926A70 + 1) + 24);
    result = **(&xmmword_2A1926A70 + 1);
    v22 = __src;
    do
    {
      v23 = v21 - result;
      if (v20 >= v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = v20;
      }

      memcpy(result, v22, v24);
      result = *v19 + v24;
      *v19 = result;
      v21 = v19[3];
      if (result >= v21)
      {
        result = v19[2];
        *v19 = result;
      }

      v22 += v24;
      v18 = __OFSUB__(v20, v24);
      v20 -= v24;
    }

    while (!((v20 < 0) ^ v18 | (v20 == 0)));
  }

  if (v37)
  {
    v25 = xmmword_2A1926A70;
    v26 = (v31 - v32);
    v27 = *(xmmword_2A1926A70 + 24);
    result = *xmmword_2A1926A70;
    v28 = __src;
    do
    {
      v29 = v27 - result;
      if (v26 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v26;
      }

      memcpy(result, v28, v30);
      result = *v25 + v30;
      *v25 = result;
      v27 = v25[3];
      if (result >= v27)
      {
        result = v25[2];
        *v25 = result;
      }

      v28 += v30;
      v18 = __OFSUB__(v26, v30);
      v26 -= v30;
    }

    while (!((v26 < 0) ^ v18 | (v26 == 0)));
  }

  return result;
}

double Register_PatchFunc(uint64_t a1, int a2, int a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 1u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 65, "Register_PatchFunc", "8cd9669 CP 0.0.20 b673 3f12 ME 0.0.76 0882 106e CFG 0c27");
    LbsOsaTrace_WriteLog(0xDu, __str, v7, 1, 1);
  }

  if (a2 != 2 || a3 != 1)
  {
    snprintf(v11, 0x400uLL, "ASSERT: %s %d Hardware version Not Supported %d,%d", "Register_PatchFunc", 40, a2, a3);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 69, "Register_PatchFunc", v11);
      LbsOsaTrace_WriteLog(0xEu, __str, v10, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("Register_PatchFunc", "gnssPatchesMain.cpp", 41, "false && HW version Not Supported");
  }

  return Register_PatchFunc_2_1(a1);
}

uint64_t gnss::GnssAdaptDevice::decodeSuplInit(uint64_t a1, unsigned __int8 **a2, uint64_t a3)
{
  v56 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "decodeSuplInit");
    LbsOsaTrace_WriteLog(0x18u, __str, v6, 5, 1);
  }

  if (gnss::GnssAdaptDevice::Ga11_16ValidateSuplInit(a2))
  {
    gnss::GnssAdaptDevice::Ga11_09TraceBuffer(a2);
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    memset(v45, 0, sizeof(v45));
    memset(v46, 0, 261);
    memset(v47, 0, sizeof(v47));
    v51 = -1;
    v52 = -1;
    v53 = -1;
    v7 = *a2;
    v8 = *(a2 + 2) - *a2;
    v54 = 0;
    v9 = GNS_SuplDecodeInit(0, v7, v8, &v28);
    if (BYTE4(v28))
    {
      v10 = v9 == 1;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    if (!v10)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplDecodeInit,%u\n", v26);
LABEL_21:
        LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
        goto LABEL_42;
      }

      goto LABEL_42;
    }

    gnss::GnssAdaptDevice::Ga11_10ConvertGNSPosMethodToE911PosMethod(v30, a3);
    if (HIBYTE(v50) == 1)
    {
      *(a3 + 4) = HIBYTE(v50);
      *(a3 + 5) = v51;
      *(a3 + 8) = v52;
      *(a3 + 10) = v53;
      if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        goto LABEL_25;
      }

      bzero(__str, 0x410uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HAcc,%u,VAcc,%u,LocAge,%u,Delay,%u\n", v12, "ADP");
    }

    else
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        goto LABEL_25;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No Qop vals\n");
    }

    LbsOsaTrace_WriteLog(0x18u, __str, v13, 4, 1);
LABEL_25:
    if (*&v47[256])
    {
      gnss::GnssAdaptDevice::Ga11_11ConvertGNSSlpAddressToE911SlpAddress(v47, a3 + 16);
    }

    if (v48 == 1)
    {
      *(a3 + 72) = 257;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Not an emergency session\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 73, "decodeSuplInit");
      LbsOsaTrace_WriteLog(0x18u, __str, v21, 4, 1);
    }

    if (v46[64])
    {
      gnss::GnssAdaptDevice::Ga11_11ConvertGNSSlpAddressToE911SlpAddress(v46, a3 + 80);
    }

    switch(v54)
    {
      case 0:
        *(a3 + 136) = 0;
        goto LABEL_42;
      case 1:
        v22 = 2;
        break;
      case 2:
        v22 = 1;
        break;
      default:
        *(a3 + 136) = 0;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Trigger type,%u\n", v27);
          goto LABEL_21;
        }

LABEL_42:
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v23 = mach_continuous_time();
          v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 68, "decodeSuplInit");
          LbsOsaTrace_WriteLog(0x18u, __str, v24, 5, 1);
        }

        return v11;
    }

    *(a3 + 136) = v22;
    goto LABEL_42;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL INIT\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "decodeSuplInit", 257);
    LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
  }

  v11 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "decodeSuplInit");
    LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
    return 0;
  }

  return v11;
}

uint64_t gnss::GnssAdaptDevice::Ga11_16ValidateSuplInit(char **a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 68, "Ga11_16ValidateSuplInit");
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 5, 1);
  }

  v4 = a1[1] - *a1;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SUPL INIT len,%zd\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "Ga11_16ValidateSuplInit", v4);
    LbsOsaTrace_WriteLog(0x18u, __str, v6, 5, 1);
  }

  if ((v4 - 0x10000) <= 0xFFFFFFFFFFFF0004)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL INIT\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "Ga11_16ValidateSuplInit", 514);
      LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      return 0;
    }

    goto LABEL_16;
  }

  v9 = __rev16(**a1);
  if (v4 != v9)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplInit Len,%zd mismatches SuplInitHadrLen,%u\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "Ga11_16ValidateSuplInit", 770, v4, v9);
      LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      return 0;
    }

LABEL_16:
    bzero(__str, 0x410uLL);
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v15, "ADP", 68, "Ga11_16ValidateSuplInit");
    LbsOsaTrace_WriteLog(0x18u, __str, v16, 5, 1);
    return 0;
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v10 = mach_continuous_time();
  v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "Ga11_16ValidateSuplInit");
  v12 = 1;
  LbsOsaTrace_WriteLog(0x18u, __str, v11, 5, 1);
  return v12;
}

void gnss::GnssAdaptDevice::Ga11_09TraceBuffer(void *a1)
{
  v41[114] = *MEMORY[0x29EDCA608];
  if (a1[1] == *a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(&__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx buffer is empty\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "Ga11_09TraceBuffer", 513);
      LbsOsaTrace_WriteLog(0x18u, &__str, v14, 0, 1);
    }
  }

  else
  {
    v2 = 0;
    __p = 0;
    v28 = 0uLL;
    v24 = *MEMORY[0x29EDC9528];
    v25 = *(MEMORY[0x29EDC9528] + 64);
    v26 = *(MEMORY[0x29EDC9528] + 72);
    do
    {
      if (a1[1] - *a1 <= v2)
      {
        break;
      }

      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__str);
      v3 = __str.__r_.__value_.__r.__words[2];
      *(&v39[-1].__locale_ + *(__str.__r_.__value_.__r.__words[2] - 24)) = *(&v39[-1].__locale_ + *(__str.__r_.__value_.__r.__words[2] - 24)) & 0xFFFFFFB5 | 8;
      *(&v39[1].__locale_ + *(v3 - 24)) = 2;
      v29.__r_.__value_.__s.__data_[0] = 48;
      v4 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&__str.__r_.__value_.__r.__words[2], &v29);
      MEMORY[0x29C29E9F0](v4, *(*a1 + v2));
      std::stringbuf::str();
      if (v28 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v28 >= 0)
      {
        v6 = HIBYTE(v28);
      }

      else
      {
        v6 = v28;
      }

      v7 = std::string::insert(&v29, 0, p_p, v6);
      v8 = v7->__r_.__value_.__r.__words[0];
      *&v34 = v7->__r_.__value_.__l.__size_;
      *(&v34 + 7) = *(&v7->__r_.__value_.__r.__words[1] + 7);
      v9 = HIBYTE(v7->__r_.__value_.__r.__words[2]);
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p);
      }

      __p = v8;
      *&v28 = v34;
      *(&v28 + 7) = *(&v34 + 7);
      HIBYTE(v28) = v9;
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      __str.__r_.__value_.__r.__words[0] = v24;
      *(__str.__r_.__value_.__r.__words + *(v24 - 24)) = v25;
      __str.__r_.__value_.__r.__words[2] = v26;
      v38 = MEMORY[0x29EDC9570] + 16;
      if (v40 < 0)
      {
        operator delete(v39[7].__locale_);
      }

      v38 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v39);
      std::iostream::~basic_iostream();
      MEMORY[0x29C29EAA0](v41);
      ++v2;
    }

    while (v2 != 5);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v29);
    v10 = v29.__r_.__value_.__r.__words[2];
    *(&v29.__r_.__value_.__r + *(v29.__r_.__value_.__r.__words[2] - 24) + 24) = *(&v29.__r_.__value_.__r + *(v29.__r_.__value_.__r.__words[2] - 24) + 24) & 0xFFFFFFB5 | 8;
    *(&v31[1].__locale_ + *(v10 - 24)) = 2;
    __str.__r_.__value_.__s.__data_[0] = 48;
    v11 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v29.__r_.__value_.__r.__words[2], &__str);
    MEMORY[0x29C29E9F0](v11, *(a1[1] - 1));
    if (v28 >= 0)
    {
      v12 = HIBYTE(v28);
    }

    else
    {
      v12 = v28;
    }

    if (v12 + 3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v12 + 3 >= 0x17)
    {
      operator new();
    }

    memset(&__str, 0, sizeof(__str));
    *(&__str.__r_.__value_.__s + 23) = v12 + 3;
    if (v12)
    {
      if (v28 >= 0)
      {
        v15 = &__p;
      }

      else
      {
        v15 = __p;
      }

      memmove(&__str, v15, v12);
    }

    *(&__str.__r_.__value_.__l.__data_ + v12) = 3026478;
    std::stringbuf::str();
    if ((v35 & 0x80u) == 0)
    {
      v16 = &v34;
    }

    else
    {
      v16 = v34;
    }

    if ((v35 & 0x80u) == 0)
    {
      v17 = v35;
    }

    else
    {
      v17 = *(&v34 + 1);
    }

    v18 = std::string::append(&__str, v16, v17);
    v19 = v18->__r_.__value_.__r.__words[0];
    v36[0] = v18->__r_.__value_.__l.__size_;
    *(v36 + 7) = *(&v18->__r_.__value_.__r.__words[1] + 7);
    v20 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p);
    }

    __p = v19;
    *&v28 = v36[0];
    *(&v28 + 7) = *(v36 + 7);
    HIBYTE(v28) = v20;
    if (v35 < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(&__str, 0x410uLL);
      v21 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v22 = &__p;
      if (v28 < 0)
      {
        v22 = __p;
      }

      v23 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: Len,%lu,bufContents,%s\n", v21, "ADP", 68, "Ga11_09TraceBuffer", a1[1] - *a1, v22);
      LbsOsaTrace_WriteLog(0x18u, &__str, v23, 5, 1);
    }

    v29.__r_.__value_.__r.__words[0] = v24;
    *(v29.__r_.__value_.__r.__words + *(v24 - 24)) = v25;
    v29.__r_.__value_.__r.__words[2] = v26;
    v30 = MEMORY[0x29EDC9570] + 16;
    if (v32 < 0)
    {
      operator delete(v31[7].__locale_);
    }

    v30 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v31);
    std::iostream::~basic_iostream();
    MEMORY[0x29C29EAA0](&v33);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p);
    }
  }
}

uint64_t gnss::GnssAdaptDevice::Ga11_10ConvertGNSPosMethodToE911PosMethod(int a1, int *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga11_10ConvertGNSPosMethodToE911PosMethod");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  switch(a1)
  {
    case 0:
      break;
    case 1:
      *a2 = 0;
      break;
    case 2:
      v6 = 1;
      goto LABEL_23;
    case 3:
      v6 = 2;
      goto LABEL_23;
    case 4:
      v6 = 3;
      goto LABEL_23;
    case 5:
      v6 = 4;
      goto LABEL_23;
    case 6:
      v6 = 9;
      goto LABEL_23;
    case 7:
      v6 = 11;
      goto LABEL_23;
    case 8:
      v6 = 12;
      goto LABEL_23;
    case 9:
      v6 = 13;
      goto LABEL_23;
    case 10:
      v6 = 14;
      goto LABEL_23;
    case 11:
      v6 = 15;
      goto LABEL_23;
    case 12:
      v6 = 5;
      goto LABEL_23;
    case 13:
      v6 = 6;
      goto LABEL_23;
    case 14:
      v6 = 7;
      goto LABEL_23;
    case 15:
      v6 = 8;
      goto LABEL_23;
    case 16:
      v6 = 10;
      goto LABEL_23;
    case 17:
      v6 = 16;
LABEL_23:
      *a2 = v6;
      break;
    default:
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Method,%u\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "Ga11_10ConvertGNSPosMethodToE911PosMethod", 515, a1);
        LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
      }

      break;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: E911PosMethod,%u\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 73, "Ga11_10ConvertGNSPosMethodToE911PosMethod", *a2);
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 4, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "Ga11_10ConvertGNSPosMethodToE911PosMethod");
    return LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
  }

  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga11_11ConvertGNSSlpAddressToE911SlpAddress(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga11_11ConvertGNSSlpAddressToE911SlpAddress");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  if (!a1)
  {
    goto LABEL_20;
  }

  v6 = strnlen(a1, 0x100uLL);
  if ((v6 & 0xFFFFFEFF) == 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      goto LABEL_23;
    }

    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GSM serving cell info,%u\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "Ga11_11ConvertGNSSlpAddressToE911SlpAddress", 772, v6);
    v10 = 0;
    goto LABEL_22;
  }

  v7 = *(a1 + 256);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      *(a2 + 4) = 2;
      gnss::GnssAdaptDevice::Ga11_15ConvertStringIPtoVect(a1, a2 + 32);
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_16;
      }

      *(a2 + 4) = 3;
      std::string::basic_string[abi:ne200100]<0>(__str, a1);
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = *__str;
      *(a2 + 24) = v18;
    }

    *a2 = 1;
    goto LABEL_20;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      *(a2 + 4) = 1;
      gnss::GnssAdaptDevice::Ga11_15ConvertStringIPtoVect(a1, a2 + 32);
      *a2 = 1;
      goto LABEL_20;
    }

LABEL_16:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Addresstype not set,%u\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "Ga11_11ConvertGNSSlpAddressToE911SlpAddress", *(a1 + 256));
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    }
  }

LABEL_20:
  if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    goto LABEL_23;
  }

  bzero(__str, 0x410uLL);
  v13 = mach_continuous_time();
  v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SLPType,%u\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 73, "Ga11_11ConvertGNSSlpAddressToE911SlpAddress", *(a2 + 4));
  v10 = 4;
LABEL_22:
  LbsOsaTrace_WriteLog(0x18u, __str, v9, v10, 1);
LABEL_23:
  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "Ga11_11ConvertGNSSlpAddressToE911SlpAddress");
    return LbsOsaTrace_WriteLog(0x18u, __str, v16, 5, 1);
  }

  return result;
}

void gnss::GnssAdaptDevice::setSuplInit(uint64_t a1, const void **a2, __int16 *a3, uint64_t a4)
{
  v35 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setSuplInit");
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
  }

  if (*(a4 + 24))
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v21, *a2, a2[1], a2[1] - *a2);
    v15 = *a3;
    if (*(a3 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *(a3 + 1), *(a3 + 2));
    }

    else
    {
      v16 = *(a3 + 4);
    }

    v17 = *(a3 + 32);
    if (*(a3 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *(a3 + 5), *(a3 + 6));
    }

    else
    {
      v18 = *(a3 + 20);
    }

    v19 = *(a3 + 4);
    v20 = *(a3 + 10);
    v12 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice11setSuplInitERKNSt3__16vectorIhNS1_9allocatorIhEEEERKNS_9Emergency4Supl7ContextENS1_8functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_14;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, a4);
    v25[16] = v15;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v26, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
    }

    else
    {
      v26 = v16;
    }

    v27 = v17;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = v18;
    }

    v29 = v19;
    v30 = v20;
    __p = 0;
    v32 = 0;
    v33 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v21, v22, v22 - v21);
    dispatch_async(v12, block);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setSuplInit");
      LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
    }

    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setSuplInit", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
  }
}

void sub_29950048C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v56 + 40);
  gnss::Emergency::Supl::Context::~Context(&a15);
  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice11setSuplInitERKNSt3__16vectorIhNS1_9allocatorIhEEEERKNS_9Emergency4Supl7ContextENS1_8functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v115 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if ((*(v2 + 88) & 1) == 0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v114, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v114, "setSuplInit_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v114);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "setSuplInit_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "setSuplInit_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
    }

    return result;
  }

  if (*(v2 + 89) == 1 && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PVTM req active\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 87, "setSuplInit_block_invoke", 2056);
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 2, 1);
  }

  v5 = *(a1 + 103);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 103))
    {
      goto LABEL_7;
    }

LABEL_20:
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v112, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v112, "setSuplInit_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v112);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SLP Address not provisioned\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "setSuplInit_block_invoke", 515);
      LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "setSuplInit_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
    }

    return result;
  }

  if (!*(a1 + 88))
  {
    goto LABEL_20;
  }

LABEL_7:
  v6 = *(a1 + 135);
  if ((v6 & 0x8000000000000000) != 0)
  {
    if (*(a1 + 120))
    {
      goto LABEL_9;
    }

LABEL_32:
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v111, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v111, "setSuplInit_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v111);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v24 = mach_continuous_time();
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx IMSI not provisioned\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 69, "setSuplInit_block_invoke", 515);
      LbsOsaTrace_WriteLog(0x18u, __str, v25, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v26 = mach_continuous_time();
      v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 68, "setSuplInit_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v27, 5, 1);
    }

    return result;
  }

  if (!*(a1 + 135))
  {
    goto LABEL_32;
  }

LABEL_9:
  if ((v5 & 0x80000000) != 0 && *(a1 + 88) >= 0x100uLL)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v110, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v110, "setSuplInit_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v110);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SLP AddLen,%d\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setSuplInit_block_invoke", 515, 256);
      LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "setSuplInit_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v11, 5, 1);
    }

    return result;
  }

  if ((v6 & 0x80000000) != 0)
  {
    v6 = *(a1 + 120);
  }

  if (v6 >= 0x10)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v109, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v109, "setSuplInit_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v109);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx IMSI Len,%d\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 69, "setSuplInit_block_invoke", 515, 16);
      LbsOsaTrace_WriteLog(0x18u, __str, v21, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "setSuplInit_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
    }

    return result;
  }

  if (gnss::GnssAdaptDevice::Ga11_16ValidateSuplInit((a1 + 160)))
  {
    v29 = *(a1 + 160);
    v28 = *(a1 + 168);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SUPL INIT Len,%u\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 68, "setSuplInit_block_invoke", v28 - v29);
      LbsOsaTrace_WriteLog(0x18u, __str, v31, 5, 1);
    }

    gnss::GnssAdaptDevice::Ga11_09TraceBuffer((a1 + 160));
    if (*(a1 + 136) == 1)
    {
      if (*(a1 + 137))
      {
        v32 = 0x100000003;
      }

      else
      {
        v32 = 3;
      }
    }

    else
    {
      v32 = 0;
    }

    v37 = *(a1 + 138);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v38 = mach_continuous_time();
      v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: WLAN PosMode(1,SA,2,Assisted),%u,MeasMask(1,RSSI),%u\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 73, "setSuplInit_block_invoke", v32, HIDWORD(v32));
      LbsOsaTrace_WriteLog(0x18u, __str, v39, 4, 1);
    }

    if (GNS_WlCapabilities(v32, v37) != 1 && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v40 = mach_continuous_time();
      v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx WLAN CAPS\n", (*&g_MacClockTicksToMsRelation * v40), "ADP", 87, "setSuplInit_block_invoke", 257);
      LbsOsaTrace_WriteLog(0x18u, __str, v41, 2, 1);
    }

    v42 = (a1 + 80);
    v43 = (a1 + 112);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v44 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v45 = (a1 + 80);
      if (*(a1 + 103) < 0)
      {
        v45 = *v42;
      }

      if (*(a1 + 104))
      {
        v46 = 84;
      }

      else
      {
        v46 = 70;
      }

      v47 = (a1 + 112);
      if (*(a1 + 135) < 0)
      {
        v47 = *v43;
      }

      v48 = 70;
      if (*(a1 + 144))
      {
        v48 = 84;
      }

      v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SLP,%s,%u,MSA,%c,IMSI,%s,HeloEnabled,%c\n", v44, "ADP", 68, "setSuplInit_block_invoke", v45, *(a1 + 72), v46, v47, v48);
      LbsOsaTrace_WriteLog(0x18u, __str, v49, 5, 1);
    }

    bzero(v96, 0x270uLL);
    v50 = 0;
    v98 = 2;
    v99 = 0;
    *v101 = 0;
    v100 = 0;
    *&v101[7] = 0;
    memset(&v101[17], 0, 13);
    do
    {
      v51 = &v96[v50];
      v51[62] = 0;
      *&v103[v50] = 0;
      *(v51 + 161) = -1;
      v50 += 262;
    }

    while (v50 != 524);
    v105 = 0;
    v107 = 0.0;
    *(v106 + 7) = 0;
    v106[0] = 0;
    v97 = 32;
    *&v101[25] = 4;
    v52 = *(a1 + 103);
    if (v52 < 0)
    {
      LOBYTE(v52) = *(a1 + 88);
      v42 = *(a1 + 80);
    }

    v103[1] = v52;
    v101[31] = 0;
    v103[0] = 1;
    strncpy_s(v102, 0x100u, v42, v52);
    v104 = *(a1 + 72);
    if (v104 - 7275 >= 2 && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v53 = mach_continuous_time();
      v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Non Standard Port, %u\n", (*&g_MacClockTicksToMsRelation * v53), "ADP", 87, "setSuplInit_block_invoke", 770, v104);
      LbsOsaTrace_WriteLog(0x18u, __str, v54, 2, 1);
    }

    v55 = *(a1 + 104) == 0;
    *&v101[17] |= 0x40u;
    *&v101[21] = *&v101[21] & 0xFFFFFFBF | (v55 << 6);
    v97 |= 0x1000u;
    v56 = *(a1 + 152);
    if (v56 == -1.0)
    {
      v56 = 0.0;
    }

    v107 = v56;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v57 = mach_continuous_time();
      v58 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: targetE911VerticalAccM,%f\n", (*&g_MacClockTicksToMsRelation * v57), "ADP", 73, "setSuplInit_block_invoke", v107);
      LbsOsaTrace_WriteLog(0x18u, __str, v58, 4, 1);
    }

    v59 = Gnm_SetUserConfig(v96);
    if (v59)
    {
      v60 = gnss::GnssAdaptDevice::Ga07_12MapGnmRespToGnssResult(v2, v59);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v61 = mach_continuous_time();
        v62 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetUsrCfg,%u\n", (*&g_MacClockTicksToMsRelation * v61), "ADP", 69, "setSuplInit_block_invoke", 257, v60);
        LbsOsaTrace_WriteLog(0x18u, __str, v62, 0, 1);
      }

      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v95, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, v60, v95, "setSuplInit_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v95);
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v63 = mach_continuous_time();
        v64 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v63), "ADP", 68, "setSuplInit_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v64, 5, 1);
      }

      return result;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v65 = mach_continuous_time();
      v66 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SetUsrCfg success\n", (*&g_MacClockTicksToMsRelation * v65), "ADP", 73, "setSuplInit_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v66, 4, 1);
    }

    if (!gnss::GnssAdaptDevice::Ga10_11SetGuardTimeOut(v2) && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v67 = mach_continuous_time();
      v68 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetGuardTimeOut\n", (*&g_MacClockTicksToMsRelation * v67), "ADP", 69, "setSuplInit_block_invoke", 257);
      LbsOsaTrace_WriteLog(0x18u, __str, v68, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v69 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (*(a1 + 144))
      {
        v70 = 84;
      }

      else
      {
        v70 = 70;
      }

      if (*(a1 + 145))
      {
        v71 = 84;
      }

      else
      {
        v71 = 70;
      }

      v72 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EarlyReturnEanbled,%c,HELO-Enabled,%c\n", v69, "ADP", 73, "setSuplInit_block_invoke", v71, v70);
      LbsOsaTrace_WriteLog(0x18u, __str, v72, 4, 1);
    }

    if (!gnss::GnssAdaptDevice::Ga10_12SetEarlyReturn(v2, *(a1 + 145)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v73 = mach_continuous_time();
      v74 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetEarlyReturn\n", (*&g_MacClockTicksToMsRelation * v73), "ADP", 69, "setSuplInit_block_invoke", 257);
      LbsOsaTrace_WriteLog(0x18u, __str, v74, 0, 1);
    }

    if (*(a1 + 135) < 0)
    {
      std::string::__init_copy_ctor_external(&v92, *(a1 + 112), *(a1 + 120));
    }

    else
    {
      *&v92.__r_.__value_.__l.__data_ = *v43;
      v92.__r_.__value_.__r.__words[2] = *(a1 + 128);
    }

    v75 = GNS_SetImsi(&v92, 0);
    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v92.__r_.__value_.__l.__data_);
    }

    if (v75 == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v76 = mach_continuous_time();
        v77 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CellInfo success\n", (*&g_MacClockTicksToMsRelation * v76), "ADP", 73, "setSuplInit_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v77, 4, 1);
      }

      std::function<void ()(gnss::Result)>::operator=((v2 + 536), a1 + 40);
      v78 = GNS_DcSuplInit(*(a1 + 160), *(a1 + 168) - *(a1 + 160), 0);
      if (v78 == 1)
      {
        v91 = *(a1 + 144);
        v79 = *(v2 + 152);
        v80 = *(v2 + 160);
        v81 = v2 + 152;
        if ((v80 - v79) <= 3)
        {
          std::vector<gnss::AgnssSuplCfg>::emplace_back<gnss::AgnssSuplCfg const&>(v81, &v91);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v82 = mach_continuous_time();
          v83 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DcSuplInit success\n", (*&g_MacClockTicksToMsRelation * v82), "ADP", 73, "setSuplInit_block_invoke");
          return LbsOsaTrace_WriteLog(0x18u, __str, v83, 4, 1);
        }

        return result;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v86 = mach_continuous_time();
        v87 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DcSuplInit,%u\n", (*&g_MacClockTicksToMsRelation * v86), "ADP", 69, "setSuplInit_block_invoke", 257, v78);
        LbsOsaTrace_WriteLog(0x18u, __str, v87, 0, 1);
      }

      v88 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v2, v78);
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v93, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, v88, v93, "setSuplInit_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v93);
      std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v2 + 536);
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
LABEL_116:
        bzero(__str, 0x410uLL);
        v89 = mach_continuous_time();
        v90 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v89), "ADP", 68, "setSuplInit_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v90, 5, 1);
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v84 = mach_continuous_time();
        v85 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx IMSI push failed,%u\n", (*&g_MacClockTicksToMsRelation * v84), "ADP", 69, "setSuplInit_block_invoke", 257, v75);
        LbsOsaTrace_WriteLog(0x18u, __str, v85, 0, 1);
      }

      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v94, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v75, v94, "setSuplInit_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v94);
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        goto LABEL_116;
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v108, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v108, "setSuplInit_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v108);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v33 = mach_continuous_time();
      v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL INIT\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 69, "setSuplInit_block_invoke", 257);
      LbsOsaTrace_WriteLog(0x18u, __str, v34, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v35 = mach_continuous_time();
      v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v35), "ADP", 68, "setSuplInit_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v36, 5, 1);
    }
  }

  return result;
}

void sub_299501AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__pa, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::function<void ()(gnss::Result)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(gnss::Result)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t *__copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c34_ZTSN4gnss9Emergency4Supl7ContextE160c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  *(a1 + 72) = *(a2 + 72);
  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v4 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v4;
  }

  *(a1 + 104) = *(a2 + 104);
  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v5 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v5;
  }

  v6 = *(a2 + 136);
  v7 = *(a2 + 152);
  *(a1 + 160) = 0;
  *(a1 + 152) = v7;
  *(a1 + 136) = v6;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 160), *(a2 + 160), *(a2 + 168), *(a2 + 168) - *(a2 + 160));
}

void sub_299501CD4(_Unwind_Exception *a1)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v2 + 8));
  }

  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 40);
  _Unwind_Resume(a1);
}

void gnss::Emergency::Supl::Context::~Context(void **this)
{
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c34_ZTSN4gnss9Emergency4Supl7ContextE160c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    *(a1 + 168) = v2;
    operator delete(v2);
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

uint64_t gnss::GnssAdaptDevice::setSuplLocationIdNeededReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice29setSuplLocationIdNeededReportENSt3__18functionIFNS_6ResultEvEEENS2_IFvS3_EEE_block_invoke;
    block[3] = &__block_descriptor_tmp_31_0;
    block[4] = a1;
    std::__function::__value_func<gnss::Result ()(void)>::__value_func[abi:ne200100](v9, a2);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
    return std::__function::__value_func<gnss::Result ()(void)>::~__value_func[abi:ne200100](v9);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setSuplLocationIdNeededReport", 513);
      return LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice29setSuplLocationIdNeededReportENSt3__18functionIFNS_6ResultEvEEENS2_IFvS3_EEE_block_invoke(uint64_t a1)
{
  v14[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setSuplLocationIdNeededReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  std::__function::__value_func<gnss::Result ()(void)>::__value_func[abi:ne200100](__str, a1 + 40);
  v5 = v2 + 920;
  if (__str != (v2 + 920))
  {
    v6 = v13;
    v7 = *(v2 + 944);
    if (v13 == __str)
    {
      if (v7 == v5)
      {
        (*(*v13 + 24))();
        (*(*v13 + 32))(v13);
        v13 = 0;
        (*(**(v2 + 944) + 24))(*(v2 + 944), __str);
        (*(**(v2 + 944) + 32))(*(v2 + 944));
        *(v2 + 944) = 0;
        v13 = __str;
        (*(v14[0] + 24))(v14, v2 + 920);
        (*(v14[0] + 32))(v14);
      }

      else
      {
        (*(*v13 + 24))();
        (*(*v13 + 32))(v13);
        v13 = *(v2 + 944);
      }

      *(v2 + 944) = v5;
    }

    else if (v7 == v5)
    {
      (*(*v7 + 24))(*(v2 + 944), __str);
      (*(**(v2 + 944) + 32))(*(v2 + 944));
      *(v2 + 944) = v13;
      v13 = __str;
    }

    else
    {
      v13 = *(v2 + 944);
      *(v2 + 944) = v6;
    }
  }

  std::__function::__value_func<gnss::Result ()(void)>::~__value_func[abi:ne200100](__str);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a1 + 72);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v11, "setSuplLocationIdNeededReport_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "setSuplLocationIdNeededReport_block_invoke");
    return LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
  }

  return result;
}

void sub_299502374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFN4gnss6ResultEvEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 72);

  return std::__function::__value_func<gnss::Result ()(void)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnss::GnssAdaptDevice::setSuplLocationId(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v33 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    *__str = *a2;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    std::vector<gnss::Emergency::Supl::LteCellInfo>::__init_with_size[abi:ne200100]<gnss::Emergency::Supl::LteCellInfo*,gnss::Emergency::Supl::LteCellInfo*>(&v24, *(a2 + 1), *(a2 + 2), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 2) - *(a2 + 1)) >> 2));
    v27 = 0;
    v28 = 0;
    v29 = 0;
    std::vector<gnss::Emergency::Supl::GsmCellInfo>::__init_with_size[abi:ne200100]<gnss::Emergency::Supl::GsmCellInfo*,gnss::Emergency::Supl::GsmCellInfo*>(&v27, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 4);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    std::vector<gnss::Emergency::Supl::WcdmaCellInfo>::__init_with_size[abi:ne200100]<gnss::Emergency::Supl::WcdmaCellInfo*,gnss::Emergency::Supl::WcdmaCellInfo*>(&v30, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 5);
    v6 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice17setSuplLocationIdERKNS_9Emergency4Supl10LocationIdENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_41;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a3);
    v13[8] = *__str;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v7 = v24;
    std::vector<gnss::Emergency::Supl::LteCellInfo>::__init_with_size[abi:ne200100]<gnss::Emergency::Supl::LteCellInfo*,gnss::Emergency::Supl::LteCellInfo*>(&v14, v24, v25, 0x6DB6DB6DB6DB6DB7 * ((v25 - v24) >> 2));
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v8 = v27;
    std::vector<gnss::Emergency::Supl::GsmCellInfo>::__init_with_size[abi:ne200100]<gnss::Emergency::Supl::GsmCellInfo*,gnss::Emergency::Supl::GsmCellInfo*>(&v17, v27, v28, (v28 - v27) >> 4);
    __p = 0;
    v21 = 0;
    v22 = 0;
    v9 = v30;
    std::vector<gnss::Emergency::Supl::WcdmaCellInfo>::__init_with_size[abi:ne200100]<gnss::Emergency::Supl::WcdmaCellInfo*,gnss::Emergency::Supl::WcdmaCellInfo*>(&__p, v30, v31, (v31 - v30) >> 5);
    dispatch_async(v6, block);
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }

    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
    if (v9)
    {
      operator delete(v9);
    }

    if (v8)
    {
      operator delete(v8);
    }

    if (v7)
    {
      operator delete(v7);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setSuplLocationId", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
  }
}

void sub_29950274C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v38 + 40);
  gnss::Emergency::Supl::LocationId::~LocationId(&a34);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice17setSuplLocationIdERKNS_9Emergency4Supl10LocationIdENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v133 = *MEMORY[0x29EDCA608];
  v2 = *(v1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setSuplLocationId_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v130, v1 + 40);
    __str[0] = 0;
    v123 = 0;
    memset_s(v124, 0x1840uLL, 0, 0x1840uLL);
    __str[0] = 0;
    HIDWORD(v123) = 2;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
    {
      bzero(v132, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: LocId type,%u\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "setSuplLocationId_block_invoke", *(v1 + 72));
      LbsOsaTrace_WriteLog(0x18u, v132, v6, 5, 1);
    }

    v7 = *(v1 + 72);
    if (v7 > 2)
    {
      switch(v7)
      {
        case 3:
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v118, v1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v118, "setSuplLocationId_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v118);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(v132, 0x410uLL);
            v48 = mach_continuous_time();
            v49 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: #%04hx CDMA CellInfo\n", (*&g_MacClockTicksToMsRelation * v48), "ADP", 69, "setSuplLocationId_block_invoke", 770);
            LbsOsaTrace_WriteLog(0x18u, v132, v49, 0, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(v132, 0x410uLL);
            v50 = mach_continuous_time();
            v51 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v50), "ADP", 68, "setSuplLocationId_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, v132, v51, 5, 1);
          }

          return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v130);
        case 4:
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v117, v1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v117, "setSuplLocationId_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v117);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(v132, 0x410uLL);
            v62 = mach_continuous_time();
            v63 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: #%04hx HRPD CellInfo\n", (*&g_MacClockTicksToMsRelation * v62), "ADP", 69, "setSuplLocationId_block_invoke", 770);
            LbsOsaTrace_WriteLog(0x18u, v132, v63, 0, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(v132, 0x410uLL);
            v64 = mach_continuous_time();
            v65 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v64), "ADP", 68, "setSuplLocationId_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, v132, v65, 5, 1);
          }

          return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v130);
        case 5:
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(v132, 0x410uLL);
            v20 = mach_continuous_time();
            v21 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "Ga11_14FillLTECellInfo");
            LbsOsaTrace_WriteLog(0x18u, v132, v21, 5, 1);
          }

          v125 = -1;
          *(v124 + 2) = -1;
          v22 = *(v1 + 80);
          if (*(v1 + 88) != v22)
          {
            v23 = 0;
            v24 = 24;
            do
            {
              v25 = v22 + v24;
              if (*(v22 + v24 - 24) == 1)
              {
                v124[0] = *(v25 - 22);
                v124[1] = *(v25 - 12);
                LOWORD(v124[2]) = *(v25 - 8);
                v125 = *(v25 - 16);
                LOBYTE(v126) = -1;
                if (*(v25 - 6) > 0x61u)
                {
                  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
                  {
                    bzero(v132, 0x410uLL);
                    v31 = mach_continuous_time();
                    v32 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Invalid Rsrp,%u\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 68, "Ga11_14FillLTECellInfo", *(*(v1 + 80) + v24 - 6));
                    LbsOsaTrace_WriteLog(0x18u, v132, v32, 5, 1);
                  }
                }

                else
                {
                  LOBYTE(v126) = *(v25 - 6);
                }

                HIBYTE(v126) = -1;
                if (*(*(v1 + 80) + v24 - 5) > 0x22u)
                {
                  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
                  {
                    bzero(v132, 0x410uLL);
                    v33 = mach_continuous_time();
                    v34 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Invalid Rsrq,%u\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 68, "Ga11_14FillLTECellInfo", *(*(v1 + 80) + v24 - 5));
                    LbsOsaTrace_WriteLog(0x18u, v132, v34, 5, 1);
                  }
                }

                else
                {
                  HIBYTE(v126) = *(*(v1 + 80) + v24 - 5);
                }

                v127 = -1;
                if (*(*(v1 + 80) + v24 - 4) > 1282)
                {
                  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
                  {
                    bzero(v132, 0x410uLL);
                    v35 = mach_continuous_time();
                    v36 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Invalid TA,%d\n", (*&g_MacClockTicksToMsRelation * v35), "ADP", 68, "Ga11_14FillLTECellInfo", *(*(v1 + 80) + v24 - 4));
                    LbsOsaTrace_WriteLog(0x18u, v132, v36, 5, 1);
                  }
                }

                else
                {
                  v127 = *(*(v1 + 80) + v24 - 4);
                }
              }

              else if (v128 <= 7uLL)
              {
                v26 = (v22 + v24);
                v27 = &v129[5 * v128];
                *v27 = *(v26 - 22);
                *(v27 + 1) = *(v26 - 3);
                v27[3] = *(v26 - 4);
                v27[4] = *v26;
                if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
                {
                  bzero(v132, 0x410uLL);
                  v28 = mach_continuous_time();
                  v29 = (*(v1 + 80) + v24);
                  v30 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: LTE neighbor,%zd,MCC %u,MNC %u,CI %u,PCI %u,RSRP %u,RSRQ %u,TAC %u,DLFREQ %u\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 68, "Ga11_14FillLTECellInfo", v23, *(v29 - 11), *(v29 - 10), *(v29 - 3), *(v29 - 4), *(v29 - 6), *(v29 - 5), *(v29 - 4), *v29);
                  LbsOsaTrace_WriteLog(0x18u, v132, v30, 5, 1);
                }

                if (LOWORD(v129[5 * v128 + 2]) <= 0x1F7u)
                {
                  ++v128;
                }
              }

              ++v23;
              v22 = *(v1 + 80);
              v24 += 28;
            }

            while (v23 < 0x6DB6DB6DB6DB6DB7 * ((*(v1 + 88) - v22) >> 2));
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
          {
            bzero(v132, 0x410uLL);
            v37 = mach_continuous_time();
            v38 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: LTE Serving,%u,%u,%u,%u\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 68, "Ga11_14FillLTECellInfo", HIWORD(v124[0]), v124[1], LOWORD(v124[2]), v125);
            LbsOsaTrace_WriteLog(0x18u, v132, v38, 5, 1);
          }

          if (LOWORD(v124[0]) >= 0x3E8u && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
          {
            bzero(v132, 0x410uLL);
            v39 = mach_continuous_time();
            v40 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: #%04hx LTE MCC, %u\n", (*&g_MacClockTicksToMsRelation * v39), "ADP", 87, "Ga11_14FillLTECellInfo", 770, LOWORD(v124[0]));
            LbsOsaTrace_WriteLog(0x18u, v132, v40, 2, 1);
          }

          if (HIWORD(v124[0]) > 0x3E7u || v124[1] >> 28 || LOWORD(v124[2]) > 0x1F7u || v125 >= 0x10000)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(v132, 0x410uLL);
              v66 = mach_continuous_time();
              v67 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: #%04hx LTE Serving Cell Info\n", (*&g_MacClockTicksToMsRelation * v66), "ADP", 69, "Ga11_14FillLTECellInfo", 772);
              LbsOsaTrace_WriteLog(0x18u, v132, v67, 0, 1);
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
            {
              bzero(v132, 0x410uLL);
              v68 = mach_continuous_time();
              v69 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v68), "ADP", 68, "Ga11_14FillLTECellInfo");
              LbsOsaTrace_WriteLog(0x18u, v132, v69, 5, 1);
            }

            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v119, v1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v119, "setSuplLocationId_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v119);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(v132, 0x410uLL);
              v70 = mach_continuous_time();
              v71 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: #%04hx LTE CellInfo\n", (*&g_MacClockTicksToMsRelation * v70), "ADP", 69, "setSuplLocationId_block_invoke", 770);
              LbsOsaTrace_WriteLog(0x18u, v132, v71, 0, 1);
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
            {
              bzero(v132, 0x410uLL);
              v72 = mach_continuous_time();
              v73 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v72), "ADP", 68, "setSuplLocationId_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, v132, v73, 5, 1);
            }

            return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v130);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(v132, 0x410uLL);
            v41 = mach_continuous_time();
            v42 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v41), "ADP", 68, "Ga11_14FillLTECellInfo");
            LbsOsaTrace_WriteLog(0x18u, v132, v42, 5, 1);
          }

          v43 = 4;
          goto LABEL_130;
      }
    }

    else
    {
      switch(v7)
      {
        case 0:
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v116, v1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v116, "setSuplLocationId_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v116);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(v132, 0x410uLL);
            v44 = mach_continuous_time();
            v45 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: #%04hx CellType\n", (*&g_MacClockTicksToMsRelation * v44), "ADP", 69, "setSuplLocationId_block_invoke", 770);
            LbsOsaTrace_WriteLog(0x18u, v132, v45, 0, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(v132, 0x410uLL);
            v46 = mach_continuous_time();
            v47 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v46), "ADP", 68, "setSuplLocationId_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, v132, v47, 5, 1);
          }

          return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v130);
        case 1:
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(v132, 0x410uLL);
            v56 = mach_continuous_time();
            v57 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v56), "ADP", 68, "Ga11_12FillGsmCellInfo");
            LbsOsaTrace_WriteLog(0x18u, v132, v57, 5, 1);
          }

          memset(v124, 255, sizeof(v124));
          v58 = *(v1 + 104);
          v59 = *(v1 + 112) - v58;
          if (v59)
          {
            v60 = v59 >> 4;
            if (v60 <= 1)
            {
              v60 = 1;
            }

            v61 = v58 + 4;
            while (*(v61 - 4) != 1)
            {
              v61 += 16;
              if (!--v60)
              {
                goto LABEL_97;
              }
            }

            BYTE2(v125) = 0;
            LOWORD(v125) = -1;
            v124[0] = *(v61 - 2);
            *&v124[1] = *(v61 + 4);
          }

LABEL_97:
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
          {
            bzero(v132, 0x410uLL);
            v74 = mach_continuous_time();
            v75 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: GSM Serving,%u,%u,%u,%u\n", (*&g_MacClockTicksToMsRelation * v74), "ADP", 68, "Ga11_12FillGsmCellInfo", LOWORD(v124[0]), HIWORD(v124[0]), v124[1], v124[2]);
            LbsOsaTrace_WriteLog(0x18u, v132, v75, 5, 1);
          }

          if (LOWORD(v124[0]) > 0x3E7u || HIWORD(v124[0]) > 0x3E7u || HIWORD(v124[1]) || v124[2] >= 0x10000u)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(v132, 0x410uLL);
              v78 = mach_continuous_time();
              v79 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: #%04hx GSM Serving Cell Info\n", (*&g_MacClockTicksToMsRelation * v78), "ADP", 69, "Ga11_12FillGsmCellInfo", 772);
              LbsOsaTrace_WriteLog(0x18u, v132, v79, 0, 1);
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
            {
              bzero(v132, 0x410uLL);
              v80 = mach_continuous_time();
              v81 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v80), "ADP", 68, "Ga11_12FillGsmCellInfo");
              LbsOsaTrace_WriteLog(0x18u, v132, v81, 5, 1);
            }

            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v121, v1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v121, "setSuplLocationId_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v121);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(v132, 0x410uLL);
              v82 = mach_continuous_time();
              v83 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: #%04hx CellInfo\n", (*&g_MacClockTicksToMsRelation * v82), "ADP", 69, "setSuplLocationId_block_invoke", 770);
              LbsOsaTrace_WriteLog(0x18u, v132, v83, 0, 1);
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
            {
              bzero(v132, 0x410uLL);
              v84 = mach_continuous_time();
              v85 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v84), "ADP", 68, "setSuplLocationId_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, v132, v85, 5, 1);
            }

            return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v130);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(v132, 0x410uLL);
            v76 = mach_continuous_time();
            v77 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v76), "ADP", 68, "Ga11_12FillGsmCellInfo");
            LbsOsaTrace_WriteLog(0x18u, v132, v77, 5, 1);
          }

          v43 = 1;
          goto LABEL_130;
        case 2:
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(v132, 0x410uLL);
            v8 = mach_continuous_time();
            v9 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "Ga11_13FillWCDMACellInfo");
            LbsOsaTrace_WriteLog(0x18u, v132, v9, 5, 1);
          }

          memset(v124, 255, sizeof(v124));
          v10 = *(v1 + 128);
          v11 = *(v1 + 136) - v10;
          if (v11)
          {
            v12 = v11 >> 5;
            if (v12 <= 1)
            {
              v12 = 1;
            }

            v13 = 16;
            while (1)
            {
              v14 = (v10 + v13);
              if (*(v10 + v13 - 16) == 1)
              {
                break;
              }

              v13 += 32;
              if (!--v12)
              {
                goto LABEL_121;
              }
            }

            v124[0] = *(v14 - 7);
            *&v124[1] = *(v14 - 1);
            v126 = -1;
            if (*v14 > 0x1FFu)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
              {
                bzero(v132, 0x410uLL);
                v86 = mach_continuous_time();
                v87 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Invalid PSC,%u\n", (*&g_MacClockTicksToMsRelation * v86), "ADP", 68, "Ga11_13FillWCDMACellInfo", *(*(v1 + 128) + v13));
                LbsOsaTrace_WriteLog(0x18u, v132, v87, 5, 1);
              }
            }

            else
            {
              v126 = *v14;
            }

            v125 = -1;
            v88 = *(v1 + 128) + v13;
            if (*(v88 + 8) != 1 || (v89 = *(v88 + 12), v89 >> 14))
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
              {
                bzero(v132, 0x410uLL);
                v90 = mach_continuous_time();
                v91 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Invalid,%u DlArfcn\n", (*&g_MacClockTicksToMsRelation * v90), "ADP", 68, "Ga11_13FillWCDMACellInfo", *(*(v1 + 128) + v13 + 12));
                LbsOsaTrace_WriteLog(0x18u, v132, v91, 5, 1);
              }
            }

            else
            {
              LOWORD(v125) = v89;
            }
          }

LABEL_121:
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
          {
            bzero(v132, 0x410uLL);
            v92 = mach_continuous_time();
            v93 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: WCDMA Serving,%u,%u,%u,%u\n", (*&g_MacClockTicksToMsRelation * v92), "ADP", 68, "Ga11_13FillWCDMACellInfo", LOWORD(v124[0]), HIWORD(v124[0]), v124[1], v124[2]);
            LbsOsaTrace_WriteLog(0x18u, v132, v93, 5, 1);
          }

          if (LOWORD(v124[0]) > 0x3E7u || HIWORD(v124[0]) > 0x3E7u || HIWORD(v124[1]) || v124[2] >> 28)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(v132, 0x410uLL);
              v106 = mach_continuous_time();
              v107 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: #%04hx WCDMA Serving Cell Info\n", (*&g_MacClockTicksToMsRelation * v106), "ADP", 69, "Ga11_13FillWCDMACellInfo", 772);
              LbsOsaTrace_WriteLog(0x18u, v132, v107, 0, 1);
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
            {
              bzero(v132, 0x410uLL);
              v108 = mach_continuous_time();
              v109 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v108), "ADP", 68, "Ga11_13FillWCDMACellInfo");
              LbsOsaTrace_WriteLog(0x18u, v132, v109, 5, 1);
            }

            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v120, v1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v120, "setSuplLocationId_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v120);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(v132, 0x410uLL);
              v110 = mach_continuous_time();
              v111 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: #%04hx WCDMA CellInfo\n", (*&g_MacClockTicksToMsRelation * v110), "ADP", 69, "setSuplLocationId_block_invoke", 770);
              LbsOsaTrace_WriteLog(0x18u, v132, v111, 0, 1);
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
            {
              bzero(v132, 0x410uLL);
              v112 = mach_continuous_time();
              v113 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v112), "ADP", 68, "setSuplLocationId_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, v132, v113, 5, 1);
            }

            return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v130);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(v132, 0x410uLL);
            v94 = mach_continuous_time();
            v95 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v94), "ADP", 68, "Ga11_13FillWCDMACellInfo");
            LbsOsaTrace_WriteLog(0x18u, v132, v95, 5, 1);
          }

          v43 = 2;
LABEL_130:
          LODWORD(v123) = v43;
          std::function<void ()(gnss::Result)>::operator=((v2 + 504), v1 + 40);
          v96 = GNS_CellInfo(__str, 0);
          if (v96 == 1)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
            {
              bzero(v132, 0x410uLL);
              v97 = mach_continuous_time();
              v98 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: CellInfo success\n", (*&g_MacClockTicksToMsRelation * v97), "ADP", 73, "setSuplLocationId_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, v132, v98, 4, 1);
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
            {
              bzero(v132, 0x410uLL);
              v99 = mach_continuous_time();
              v100 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v99), "ADP", 68, "setSuplLocationId_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, v132, v100, 5, 1);
            }
          }

          else
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(v132, 0x410uLL);
              v101 = mach_continuous_time();
              v102 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: #%04hx CellInfo,%u\n", (*&g_MacClockTicksToMsRelation * v101), "ADP", 69, "setSuplLocationId_block_invoke", 770, v96);
              LbsOsaTrace_WriteLog(0x18u, v132, v102, 0, 1);
            }

            v103 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v2, v96);
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v114, v1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, v103, v114, "setSuplLocationId_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v114);
            std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v2 + 504);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
            {
              bzero(v132, 0x410uLL);
              v104 = mach_continuous_time();
              v105 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v104), "ADP", 68, "setSuplLocationId_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, v132, v105, 5, 1);
            }
          }

          return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v130);
      }
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v115, v1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v115, "setSuplLocationId_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v115);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(v132, 0x410uLL);
      v52 = mach_continuous_time();
      v53 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: #%04hx cellType is not specified in Emergency::Supl::CellType\n", (*&g_MacClockTicksToMsRelation * v52), "ADP", 69, "setSuplLocationId_block_invoke", 770);
      LbsOsaTrace_WriteLog(0x18u, v132, v53, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(v132, 0x410uLL);
      v54 = mach_continuous_time();
      v55 = snprintf(v132, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v54), "ADP", 68, "setSuplLocationId_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, v132, v55, 5, 1);
    }

    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v130);
  }

  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v131, v1 + 40);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v131, "setSuplLocationId_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v131);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 69, "setSuplLocationId_block_invoke", 1302);
    LbsOsaTrace_WriteLog(0x18u, __str, v16, 0, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "setSuplLocationId_block_invoke");
    return LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
  }

  return result;
}

void __copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c38_ZTSN4gnss9Emergency4Supl10LocationIdE(uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  v4 = *(a2 + 72);
  *(a1 + 80) = 0;
  *(a1 + 72) = v4;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<gnss::Emergency::Supl::LteCellInfo>::__init_with_size[abi:ne200100]<gnss::Emergency::Supl::LteCellInfo*,gnss::Emergency::Supl::LteCellInfo*>((a1 + 80), *(a2 + 80), *(a2 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 88) - *(a2 + 80)) >> 2));
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<gnss::Emergency::Supl::GsmCellInfo>::__init_with_size[abi:ne200100]<gnss::Emergency::Supl::GsmCellInfo*,gnss::Emergency::Supl::GsmCellInfo*>((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 4);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<gnss::Emergency::Supl::WcdmaCellInfo>::__init_with_size[abi:ne200100]<gnss::Emergency::Supl::WcdmaCellInfo*,gnss::Emergency::Supl::WcdmaCellInfo*>((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 5);
}

void sub_299504908(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 112) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v6;
    operator delete(v6);
  }

  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 40);
  _Unwind_Resume(a1);
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c38_ZTSN4gnss9Emergency4Supl10LocationIdE(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    a1[17] = v2;
    operator delete(v2);
  }

  v3 = a1[13];
  if (v3)
  {
    a1[14] = v3;
    operator delete(v3);
  }

  v4 = a1[10];
  if (v4)
  {
    a1[11] = v4;
    operator delete(v4);
  }

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a1 + 5));
}

uint64_t gnss::GnssAdaptDevice::abortSuplSession(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a2 + 24))
  {
    v2 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice16abortSuplSessionENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_44;
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
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "abortSuplSession", 513);
      return LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
    }
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice16abortSuplSessionENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "abortSuplSession_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  std::function<void ()(gnss::Result)>::operator=((v2 + 568), a1 + 40);
  v5 = GNS_SuplAbortSession(*(v2 + 1016));
  if (v5 == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplAbortSession success\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 73, "abortSuplSession_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v7, 4, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "abortSuplSession_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplAbortSession,%u\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "abortSuplSession_block_invoke", 257, v5);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
    }

    v13 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v2, v5);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, v13, v16, "abortSuplSession_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
    std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](v2 + 568);
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "abortSuplSession_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
    }
  }

  return result;
}

void sub_299504EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 40;
  v3 = a2 + 40;

  return std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  v1 = a1 + 40;

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1);
}

uint64_t gnss::GnssAdaptDevice::setSuplSessionStatusReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice26setSuplSessionStatusReportENSt3__18functionIFvRKNS_9Emergency4Supl13SessionStatusEEEENS2_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_46;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Emergency::Supl::SessionStatus const&)>::__value_func[abi:ne200100](v9, a2);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
    return std::__function::__value_func<void ()(gnss::Emergency::Supl::SessionStatus const&)>::~__value_func[abi:ne200100](v9);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setSuplSessionStatusReport", 513);
      return LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice26setSuplSessionStatusReportENSt3__18functionIFvRKNS_9Emergency4Supl13SessionStatusEEEENS2_IFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v16[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setSuplSessionStatusReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (!*(a1 + 64) && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StatusRep\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setSuplSessionStatusReport_block_invoke", 258);
    LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
  }

  std::__function::__value_func<void ()(gnss::Emergency::Supl::SessionStatus const&)>::__value_func[abi:ne200100](__str, a1 + 40);
  v7 = v2 + 984;
  if (__str != (v2 + 984))
  {
    v8 = v15;
    v9 = *(v2 + 1008);
    if (v15 == __str)
    {
      if (v9 == v7)
      {
        (*(*v15 + 24))();
        (*(*v15 + 32))(v15);
        v15 = 0;
        (*(**(v2 + 1008) + 24))(*(v2 + 1008), __str);
        (*(**(v2 + 1008) + 32))(*(v2 + 1008));
        *(v2 + 1008) = 0;
        v15 = __str;
        (*(v16[0] + 24))(v16, v2 + 984);
        (*(v16[0] + 32))(v16);
      }

      else
      {
        (*(*v15 + 24))();
        (*(*v15 + 32))(v15);
        v15 = *(v2 + 1008);
      }

      *(v2 + 1008) = v7;
    }

    else if (v9 == v7)
    {
      (*(*v9 + 24))(*(v2 + 1008), __str);
      (*(**(v2 + 1008) + 32))(*(v2 + 1008));
      *(v2 + 1008) = v15;
      v15 = __str;
    }

    else
    {
      v15 = *(v2 + 1008);
      *(v2 + 1008) = v8;
    }
  }

  std::__function::__value_func<void ()(gnss::Emergency::Supl::SessionStatus const&)>::~__value_func[abi:ne200100](__str);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a1 + 72);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v13, "setSuplSessionStatusReport_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "setSuplSessionStatusReport_block_invoke");
    return LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
  }

  return result;
}

void sub_299505558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __destroy_helper_block_e8_40c65_ZTSNSt3__18functionIFvRKN4gnss9Emergency4Supl13SessionStatusEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 72);

  return std::__function::__value_func<void ()(gnss::Emergency::Supl::SessionStatus const&)>::~__value_func[abi:ne200100](a1 + 40);
}

uint64_t gnss::GnssAdaptDevice::setSuplWlanMeasurementNeededReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 288);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN4gnss15GnssAdaptDevice34setSuplWlanMeasurementNeededReportENSt3__18functionIFNS_6ResultERKNS_9Emergency4Supl22WlanMeasurementRequestEEEENS2_IFvS3_EEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_47_0;
  v6[4] = a1;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>::__value_func[abi:ne200100](v8, a2);
  dispatch_async(v4, v6);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>::~__value_func[abi:ne200100](v8);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
}

uint64_t ___ZN4gnss15GnssAdaptDevice34setSuplWlanMeasurementNeededReportENSt3__18functionIFNS_6ResultERKNS_9Emergency4Supl22WlanMeasurementRequestEEEENS2_IFvS3_EEE_block_invoke(uint64_t a1)
{
  v16[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setSuplWlanMeasurementNeededReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(a1 + 64))
  {
    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>::__value_func[abi:ne200100](__str, a1 + 72);
    v5 = v2 + 952;
    if (__str != (v2 + 952))
    {
      v6 = v15;
      v7 = *(v2 + 976);
      if (v15 == __str)
      {
        if (v7 == v5)
        {
          (*(*v15 + 24))();
          (*(*v15 + 32))(v15);
          v15 = 0;
          (*(**(v2 + 976) + 24))(*(v2 + 976), __str);
          (*(**(v2 + 976) + 32))(*(v2 + 976));
          *(v2 + 976) = 0;
          v15 = __str;
          (*(v16[0] + 24))(v16, v2 + 952);
          (*(v16[0] + 32))(v16);
        }

        else
        {
          (*(*v15 + 24))();
          (*(*v15 + 32))(v15);
          v15 = *(v2 + 976);
        }

        *(v2 + 976) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(v2 + 976), __str);
        (*(**(v2 + 976) + 32))(*(v2 + 976));
        *(v2 + 976) = v15;
        v15 = __str;
      }

      else
      {
        v15 = *(v2 + 976);
        *(v2 + 976) = v6;
      }
    }

    std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>::~__value_func[abi:ne200100](__str);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v13, "setSuplWlanMeasurementNeededReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "setSuplWlanMeasurementNeededReport_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "setSuplWlanMeasurementNeededReport_block_invoke", 513);
      return LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
    }
  }

  return result;
}

void sub_299505BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c85_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency4Supl22WlanMeasurementRequestEEEE(uint64_t a1)
{
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>::~__value_func[abi:ne200100](a1 + 72);

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnss::GnssAdaptDevice::setSuplWlanMeasurements(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    *__str = *a2;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    std::vector<gnss::Emergency::Supl::WlanMeasurementElement>::__init_with_size[abi:ne200100]<gnss::Emergency::Supl::WlanMeasurementElement*,gnss::Emergency::Supl::WlanMeasurementElement*>(&v15, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 2));
    v5 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice23setSuplWlanMeasurementsERKNS_9Emergency4Supl19WlanMeasurementListENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_53;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    v10[8] = *__str;
    v12 = 0;
    v13 = 0;
    __p = 0;
    v6 = v15;
    std::vector<gnss::Emergency::Supl::WlanMeasurementElement>::__init_with_size[abi:ne200100]<gnss::Emergency::Supl::WlanMeasurementElement*,gnss::Emergency::Supl::WlanMeasurementElement*>(&__p, v15, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 2));
    dispatch_async(v5, block);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
    if (v6)
    {
      operator delete(v6);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setSuplWlanMeasurements", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
  }
}

void sub_299505EDC(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v2 + 40);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice23setSuplWlanMeasurementsERKNS_9Emergency4Supl19WlanMeasurementListENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v50 = *MEMORY[0x29EDCA608];
  v40 = *(v1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 68, "setSuplWlanMeasurements_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 5, 1);
  }

  if ((*(v40 + 88) & 1) == 0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v49, v1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v40, 7, v49, "setSuplWlanMeasurements_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v49);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setSuplWlanMeasurements_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "setSuplWlanMeasurements_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v11, 5, 1);
    }

    return result;
  }

  v4 = 0;
  __str[0] = 0;
  v45[0] = 0;
  *(v45 + 6) = 0;
  v46 = 0;
  v47 = 0;
  do
  {
    v5 = &__str[v4];
    *(v5 + 63) = 0;
    *(v5 + 2) = 0uLL;
    *(v5 + 3) = 0uLL;
    *(v5 + 9) = 4294934527;
    v4 += 48;
  }

  while (v4 != 3072);
  v6 = *(v1 + 72);
  if (v6 <= 1)
  {
    if (!v6)
    {
      v6 = 14;
      goto LABEL_21;
    }

    if (v6 != 1)
    {
      goto LABEL_17;
    }
  }

  else if (v6 != 2)
  {
    if (v6 == 3)
    {
      v6 = 11;
      goto LABEL_21;
    }

    if (v6 == 4)
    {
      v6 = 7;
      goto LABEL_21;
    }

LABEL_17:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(v43, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(v43, 0x40FuLL, "%10u %s%c %s: #%04hx result,%u\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "setSuplWlanMeasurements_block_invoke", 515, *(v1 + 72));
      LbsOsaTrace_WriteLog(0x18u, v43, v13, 0, 1);
    }

    goto LABEL_22;
  }

LABEL_21:
  HIDWORD(v46) = v6;
LABEL_22:
  v15 = *(v1 + 80);
  v14 = *(v1 + 88);
  if ((v14 == v15) != (*(v1 + 72) == 1))
  {
    if (HIDWORD(v46) == 1 && v14 != v15)
    {
      v16 = 0;
      for (i = 0; i < 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 88) - *(v1 + 80)) >> 2); ++i)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(v43, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(v43, 0x40FuLL, "%10u %s%c %s: result,%u,apChFreqNum,%hu,rssiDbm,%hi,srvFlag,%u\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 73, "setSuplWlanMeasurements_block_invoke", *(v1 + 72), *(*(v1 + 80) + 12 * i + 8), *(*(v1 + 80) + 12 * i + 10), *(*(v1 + 80) + 12 * i + 7));
          LbsOsaTrace_WriteLog(0x18u, v43, v19, 4, 1);
        }

        v20 = *(v1 + 80);
        v21 = v20 + 12 * i;
        v22 = *(v21 + 8);
        if (v22 <= 0x100 && ((v23 = *(v21 + 10), v23 == 0x7FFF) || (v23 - 128) >> 8 >= 0xFF))
        {
          v26 = 0;
          v27 = v47;
          v28 = &v48[3 * v47];
          v29 = v20 + v16;
          do
          {
            *(v28 + v26) = *(v29 + v26);
            ++v26;
          }

          while (v26 != 6);
          v30 = &v48[3 * v27];
          *(v30 + 20) = v23;
          *(v30 + 21) = v22;
          if (*(v21 + 6))
          {
            if (*(v21 + 7))
            {
              v31 = 1;
            }

            else
            {
              v31 = 2;
            }

            HIDWORD(v48[3 * v27 + 2]) = v31;
          }

          v47 = v27 + 1;
          if ((v27 + 1) > 0x3Fu)
          {
            break;
          }
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
        {
          bzero(v43, 0x410uLL);
          v24 = mach_continuous_time();
          v25 = snprintf(v43, 0x40FuLL, "%10u %s%c %s: #%04hx WLAN Measurement\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 87, "setSuplWlanMeasurements_block_invoke", 772);
          LbsOsaTrace_WriteLog(0x18u, v43, v25, 2, 1);
        }

        v16 += 12;
      }
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(v43, 0x410uLL);
      v32 = mach_continuous_time();
      v33 = snprintf(v43, 0x40FuLL, "%10u %s%c %s: #%04hx WLAN Measurements\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 87, "setSuplWlanMeasurements_block_invoke", 515);
      LbsOsaTrace_WriteLog(0x18u, v43, v33, 2, 1);
    }

    HIDWORD(v46) = 2;
  }

  if (GNS_WlMeas(0, __str) == 1)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v41, v1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v40, 1, v41, "setSuplWlanMeasurements_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v41);
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(v43, 0x410uLL);
      v34 = mach_continuous_time();
      v35 = snprintf(v43, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 68, "setSuplWlanMeasurements_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, v43, v35, 5, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(v43, 0x410uLL);
      v36 = mach_continuous_time();
      v37 = snprintf(v43, 0x40FuLL, "%10u %s%c %s: #%04hx WLAN Measurements not Set\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 69, "setSuplWlanMeasurements_block_invoke", 257);
      LbsOsaTrace_WriteLog(0x18u, v43, v37, 0, 1);
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v42, v1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v40, 8, v42, "setSuplWlanMeasurements_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v42);
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(v43, 0x410uLL);
      v38 = mach_continuous_time();
      v39 = snprintf(v43, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 68, "setSuplWlanMeasurements_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, v43, v39, 5, 1);
    }
  }

  return result;
}

void sub_29950674C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c47_ZTSN4gnss9Emergency4Supl19WlanMeasurementListE(uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  v4 = *(a2 + 72);
  *(a1 + 80) = 0;
  *(a1 + 72) = v4;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<gnss::Emergency::Supl::WlanMeasurementElement>::__init_with_size[abi:ne200100]<gnss::Emergency::Supl::WlanMeasurementElement*,gnss::Emergency::Supl::WlanMeasurementElement*>((a1 + 80), *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 2));
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c47_ZTSN4gnss9Emergency4Supl19WlanMeasurementListE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

uint64_t gnss::GnssAdaptDevice::Ga11_00InitializeSUPL_GNS_CBs(gnss::GnssAdaptDevice *this)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v1), "ADP", 68, "Ga11_00InitializeSUPL_GNS_CBs");
    LbsOsaTrace_WriteLog(0x18u, __str, v2, 5, 1);
  }

  if (!GNS_CellInfoInitialize(gnss::GnssAdaptDevice::Ga11_01GnsCellInfoCallback))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      goto LABEL_21;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CellInfoInitialize\n");
LABEL_20:
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    goto LABEL_21;
  }

  if (!GNS_DcInitialize(gnss::GnssAdaptDevice::Ga11_02DataClientCallback))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      goto LABEL_21;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DcInitialize\n");
    goto LABEL_20;
  }

  if (!GNS_SimsInfoInitialize(gnss::GnssAdaptDevice::Ga11_03SimInfoCallback))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      goto LABEL_21;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SimsInfoInitialize\n");
    goto LABEL_20;
  }

  if (!GNS_SuplInitialize(gnss::GnssAdaptDevice::Ga11_17SuplAsyncEventCB))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      goto LABEL_21;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplInitialize\n");
    goto LABEL_20;
  }

  v3 = GNS_WlInitialize(gnss::GnssAdaptDevice::Ga11_21GnsWlanInfoCB);
  if (v3)
  {
    gnss::GnssAdaptDevice::Ga11_08ProvideDefaultSimInfo(v3);
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      return 1;
    }

    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga11_00InitializeSUPL_GNS_CBs");
    v6 = 1;
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
    return v6;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx WlanMeasReq\n");
    goto LABEL_20;
  }

LABEL_21:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "Ga11_00InitializeSUPL_GNS_CBs");
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
  }

  return 0;
}

uint64_t gnss::GnssAdaptDevice::Ga11_01GnsCellInfoCallback(int a1, uint64_t a2, _DWORD *a3)
{
  v36 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "Ga11_01GnsCellInfoCallback");
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v7, 5, 1);
  }

  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(IsLoggingAllowed);
  if (DeviceInstance)
  {
    v9 = DeviceInstance;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "Ga11_05HandleGnsCellInfoCallback");
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 5, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: msgType,%u\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 73, "Ga11_05HandleGnsCellInfoCallback", a1);
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 4, 1);
    }

    if (a1 != 1)
    {
      if (a1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v19 = mach_continuous_time();
          v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNS SUPL MsgType,%u\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "Ga11_05HandleGnsCellInfoCallback", 770, a1);
          LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
        }
      }

      else
      {
        std::__function::__value_func<gnss::Result ()(void)>::__value_func[abi:ne200100](__str, v9 + 920);
        v14 = *(v9 + 296);
        block = MEMORY[0x29EDCA5F8];
        v31 = 1174405120;
        v32 = ___ZN4gnss15GnssAdaptDevice32Ga11_05HandleGnsCellInfoCallbackE15e_gnsCI_MsgTypeP15u_gnsCI_MsgData_block_invoke;
        v33 = &__block_descriptor_tmp_62_0;
        std::__function::__value_func<gnss::Result ()(void)>::__value_func[abi:ne200100](v34, __str);
        dispatch_async(v14, &block);
        std::__function::__value_func<gnss::Result ()(void)>::~__value_func[abi:ne200100](v34);
        std::__function::__value_func<gnss::Result ()(void)>::~__value_func[abi:ne200100](__str);
      }

LABEL_17:
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "Ga11_05HandleGnsCellInfoCallback");
        LbsOsaTrace_WriteLog(0x18u, __str, v22, 5, 1);
      }

      goto LABEL_19;
    }

    if (a3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: API,%u,status,%u\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 73, "Ga11_05HandleGnsCellInfoCallback", *a3, a3[1]);
        LbsOsaTrace_WriteLog(0x18u, __str, v16, 4, 1);
      }

      v17 = *a3;
      v18 = *(v9 + 288);
      block = MEMORY[0x29EDCA5F8];
      v31 = 0x40000000;
      v32 = ___ZN4gnss15GnssAdaptDevice32Ga11_05HandleGnsCellInfoCallbackE15e_gnsCI_MsgTypeP15u_gnsCI_MsgData_block_invoke_65;
      v33 = &__block_descriptor_tmp_71;
      v34[0] = v9;
      v34[1] = v17;
      dispatch_async(v18, &block);
      goto LABEL_17;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v26 = mach_continuous_time();
      v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MsgData\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 69, "Ga11_05HandleGnsCellInfoCallback", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v27, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v28 = mach_continuous_time();
      v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 68, "Ga11_05HandleGnsCellInfoCallback");
      LbsOsaTrace_WriteLog(0x18u, __str, v29, 5, 1);
    }
  }

LABEL_19:
  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v24 = mach_continuous_time();
    v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 68, "Ga11_01GnsCellInfoCallback");
    return LbsOsaTrace_WriteLog(0x18u, __str, v25, 5, 1);
  }

  return result;
}

void sub_2995072E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  std::__function::__value_func<gnss::Result ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::Ga11_02DataClientCallback(int a1, uint64_t a2, _DWORD *a3)
{
  v59 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "Ga11_02DataClientCallback");
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v7, 5, 1);
  }

  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(IsLoggingAllowed);
  if (DeviceInstance)
  {
    v9 = DeviceInstance;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "Ga11_06HandleDataClientCallback");
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 5, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: msgType,%u\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 73, "Ga11_06HandleDataClientCallback", a1);
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 4, 1);
    }

    if (a3)
    {
      if (a1 != 3)
      {
        if (a1 == 1)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
          {
            bzero(__str, 0x410uLL);
            v25 = mach_continuous_time();
            v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Send Data req,%u,size,%u\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 68, "Ga11_06HandleDataClientCallback", *a3, a3[4]);
            LbsOsaTrace_WriteLog(0x18u, __str, v26, 5, 1);
          }

          v27 = *(a3 + 1);
          v28 = a3[4];
          memset(__str, 0, 24);
          std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__str, v27, v27 + v28, v28);
          gnss::GnssAdaptDevice::Ga11_09TraceBuffer(__str);
          std::vector<unsigned char>::vector[abi:ne200100](&__dst, a3[4]);
          v29 = a3[4];
          v30 = __dst;
          if (v29)
          {
            memmove(__dst, *(a3 + 1), v29);
            v30 = __dst;
          }

          v31 = *a3;
          v32 = *(v9 + 288);
          block = MEMORY[0x29EDCA5F8];
          v51 = 1174405120;
          v52 = ___ZN4gnss15GnssAdaptDevice31Ga11_06HandleDataClientCallbackE15e_gnsDC_MsgTypeP15u_gnsDC_MsgData_block_invoke_86;
          v53 = &__block_descriptor_tmp_90;
          v54 = v9;
          memset(&__p, 0, sizeof(__p));
          std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v30, v49, v49 - v30);
          v56 = v31;
          dispatch_async(v32, &block);
          if (__p.__r_.__value_.__r.__words[0])
          {
            __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (__dst)
          {
            v49 = __dst;
            operator delete(__dst);
          }

          v33 = __str[0].__r_.__value_.__r.__words[0];
          if (!__str[0].__r_.__value_.__r.__words[0])
          {
            goto LABEL_48;
          }

          __str[0].__r_.__value_.__l.__size_ = __str[0].__r_.__value_.__r.__words[0];
        }

        else
        {
          if (a1)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v36 = mach_continuous_time();
              v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNS DC Msg Type,%u\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 69, "Ga11_06HandleDataClientCallback", 770, a1);
              LbsOsaTrace_WriteLog(0x18u, __str, v37, 0, 1);
            }

            goto LABEL_48;
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v14 = mach_continuous_time();
            v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LinkReq Type,%u\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 73, "Ga11_06HandleDataClientCallback", *a3);
            LbsOsaTrace_WriteLog(0x18u, __str, v15, 4, 1);
          }

          if (*a3 == 1)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
            {
              bzero(__str, 0x410uLL);
              v38 = mach_continuous_time();
              v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Link Close Hdl,%u\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 68, "Ga11_06HandleDataClientCallback", a3[1]);
              LbsOsaTrace_WriteLog(0x18u, __str, v39, 5, 1);
            }

            *(v9 + 1020) = a3[1];
            v40 = *(v9 + 96);
            if (v40)
            {
              dispatch_source_cancel(v40);
              *(v9 + 96) = 0;
            }

            goto LABEL_48;
          }

          if (*a3)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v41 = mach_continuous_time();
              v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Link req Type,%u\n", (*&g_MacClockTicksToMsRelation * v41), "ADP", 69, "Ga11_06HandleDataClientCallback", 257, *a3);
              LbsOsaTrace_WriteLog(0x18u, __str, v42, 0, 1);
            }

            goto LABEL_48;
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v16 = mach_continuous_time();
            v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Open Link Req hdl,%u\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 73, "Ga11_06HandleDataClientCallback", a3[1]);
            LbsOsaTrace_WriteLog(0x18u, __str, v17, 4, 1);
          }

          std::string::basic_string[abi:ne200100]<0>(__str, a3 + 13);
          v18 = *(a3 + 139);
          v19 = a3[1];
          v20 = *(v9 + 288);
          block = MEMORY[0x29EDCA5F8];
          v51 = 1174405120;
          v52 = ___ZN4gnss15GnssAdaptDevice31Ga11_06HandleDataClientCallbackE15e_gnsDC_MsgTypeP15u_gnsDC_MsgData_block_invoke;
          v53 = &__block_descriptor_tmp_82_0;
          v54 = v9;
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
          }

          else
          {
            __p = __str[0];
          }

          v57 = v18;
          v56 = v19;
          dispatch_async(v20, &block);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_48:
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v43 = mach_continuous_time();
              v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v43), "ADP", 68, "Ga11_06HandleDataClientCallback");
              LbsOsaTrace_WriteLog(0x18u, __str, v44, 5, 1);
            }

            goto LABEL_50;
          }

          v33 = __str[0].__r_.__value_.__r.__words[0];
        }

        operator delete(v33);
        goto LABEL_48;
      }

      v34 = *a3;
      v54 = v9;
      __p.__r_.__value_.__r.__words[0] = v34;
      LODWORD(__p.__r_.__value_.__r.__words[1]) = a3[2];
      v35 = *(v9 + 288);
      block = MEMORY[0x29EDCA5F8];
      v51 = 0x40000000;
      v52 = ___ZN4gnss15GnssAdaptDevice31Ga11_06HandleDataClientCallbackE15e_gnsDC_MsgTypeP15u_gnsDC_MsgData_block_invoke_91;
      v53 = &__block_descriptor_tmp_98;
      dispatch_async(v35, &block);
      goto LABEL_48;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNS DC Response\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 69, "Ga11_06HandleDataClientCallback", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v22, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 68, "Ga11_06HandleDataClientCallback");
      LbsOsaTrace_WriteLog(0x18u, __str, v24, 5, 1);
    }
  }

LABEL_50:
  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v46 = mach_continuous_time();
    v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v46), "ADP", 68, "Ga11_02DataClientCallback");
    return LbsOsaTrace_WriteLog(0x18u, __str, v47, 5, 1);
  }

  return result;
}

void sub_299507CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnss::GnssAdaptDevice::Ga11_03SimInfoCallback(gnss::GnssAdaptDevice *this)
{
  v16 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 68, "Ga11_03SimInfoCallback");
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v3, 5, 1);
  }

  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(IsLoggingAllowed);
  if (DeviceInstance)
  {
    v5 = DeviceInstance;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "Ga11_07HandleSimInfoCallback");
      LbsOsaTrace_WriteLog(0x18u, __str, v7, 5, 1);
    }

    v8 = *(v5 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN4gnss15GnssAdaptDevice28Ga11_07HandleSimInfoCallbackEv_block_invoke;
    block[3] = &__block_descriptor_tmp_100;
    block[4] = v5;
    dispatch_async(v8, block);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "Ga11_07HandleSimInfoCallback");
      LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
    }
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "Ga11_03SimInfoCallback");
    return LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
  }

  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga11_17SuplAsyncEventCB(int a1, uint64_t a2, __int128 *a3)
{
  v143 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(&__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "Ga11_17SuplAsyncEventCB");
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, &__str, v7, 5, 1);
  }

  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(IsLoggingAllowed);
  if (DeviceInstance)
  {
    v9 = DeviceInstance;
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          if (a3)
          {
            *v89 = 0;
            *&v89[8] = 0;
            *&v89[14] = 0;
            v14 = -1;
            *&v88[1] = -1;
            *&v88[8] = -1;
            v15 = *(a3 + 1);
            if (v15)
            {
              v16 = *v15;
              v17 = *(v15 + 4);
              v18 = *(v15 + 5);
              v75 = *(v15 + 6);
              v19 = *(v15 + 8);
              *v89 = *(v15 + 24);
              *&v89[14] = *(v15 + 38);
              v20 = *(v15 + 46);
              v21 = *(v15 + 47);
              v22 = *(v15 + 48);
              v80 = *(v15 + 49);
              v81 = *(v15 + 51);
              v23 = *(v15 + 52);
              v24 = *(v15 + 56);
              v25 = *(v15 + 64);
              v26 = *(v15 + 72);
              v27 = *(v15 + 74);
              v28 = *(v15 + 76);
              *&v88[8] = *(v15 + 85);
              *v88 = *(v15 + 77);
              v79 = *(v15 + 91);
              v78 = *(v15 + 89);
              v14 = *(v15 + 92);
              v29 = *(v15 + 100);
              v30 = *(v15 + 108);
              v74 = *(v15 + 109);
              v31 = *(v15 + 110);
              v32 = *(v15 + 112);
            }

            else
            {
              v30 = 0;
              v23 = 0;
              v22 = 0;
              v18 = 0;
              v17 = 0;
              v19 = xmmword_2997286D0;
              v25 = 0;
              v29 = 0x7FFFFFFFLL;
              v16 = -1;
              v28 = -1;
              v31 = -1;
              v32 = -COERCE_DOUBLE(0x8000000080000000);
              v27 = -1;
              v26 = -1;
              v24 = -1;
              v21 = -1;
              v20 = -1;
            }

            memset(v87, 0, 22);
            v54 = *(a3 + 3);
            if (v54)
            {
              v55 = *v54;
              v87[0] = *(v54 + 8);
              *(v87 + 14) = *(v54 + 22);
              v56 = *(v54 + 30);
              v57 = *(v54 + 31);
              v58 = *(v54 + 32);
              v76 = *(v54 + 33);
              v77 = *(v54 + 35);
              v59 = *(v54 + 36);
              v60 = *(v54 + 40);
              v61 = *(v54 + 48);
            }

            else
            {
              v61 = 0;
              v59 = 0;
              v58 = 0;
              v55 = 0x700000000;
              v60 = -1;
              v57 = -1;
              v56 = -1;
            }

            v62 = 0;
            LODWORD(v82) = 0;
            WORD2(v82) = -1;
            DWORD2(v82) = 0x7FFFFFFF;
            WORD6(v82) = 0;
            LODWORD(v83) = -1;
            BYTE4(v83) = 0;
            do
            {
              v63 = &v82 + v62;
              v63[22] = -1;
              *(v63 + 23) = 0;
              v63[27] = 0;
              v62 += 6;
            }

            while (v62 != 96);
            *&v86[24] = 0;
            v64 = *(a3 + 2);
            if (v64)
            {
              *&v84[32] = v64[4];
              v85 = v64[5];
              *v86 = v64[6];
              *&v86[12] = *(v64 + 108);
              v82 = *v64;
              v83 = v64[1];
              *v84 = v64[2];
              *&v84[16] = v64[3];
            }

            v13 = *(v9 + 288);
            __str = MEMORY[0x29EDCA5F8];
            v91 = 0x40000000;
            v92 = ___ZN4gnss15GnssAdaptDevice29Ga11_18HandleSuplAsyncEventCBE13e_gnsSUPL_MsgP17u_gnsSUPL_MsgData_block_invoke_2_155;
            v93 = &__block_descriptor_tmp_156;
            v94 = v9;
            v65 = a3[1];
            v95 = *a3;
            v96 = v65;
            v97 = a3[2];
            v98 = *(a3 + 6);
            v99 = v16;
            v100 = v17;
            v101 = v18;
            v102 = v75;
            *&v104[14] = *&v89[14];
            v103 = v19;
            *v104 = *v89;
            v105 = v20;
            v106 = v21;
            v107 = v22;
            v109 = v81;
            v108 = v80;
            v110 = v23;
            v111 = v24;
            v112 = v25;
            v113 = v26;
            v114 = v27;
            v115 = v28;
            v117 = *&v88[8];
            v116 = *v88;
            v119 = v79;
            v118 = v78;
            v120 = v14;
            v121 = v29;
            v122 = v30;
            v123 = v74;
            v124 = v31;
            v125 = v32;
            v126 = v55;
            *&v127[14] = *(v87 + 14);
            *v127 = v87[0];
            v128 = v56;
            v129 = v57;
            v130 = v58;
            v132 = v77;
            v131 = v76;
            v134 = v60;
            v133 = v59;
            v135 = v61;
            v138 = *v84;
            v139 = *&v84[16];
            v136 = v82;
            v137 = v83;
            *(v142 + 12) = *&v86[12];
            v141 = v85;
            v142[0] = *v86;
            v140 = *&v84[32];
            goto LABEL_45;
          }

          if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            goto LABEL_46;
          }

LABEL_35:
          bzero(&__str, 0x410uLL);
          v52 = mach_continuous_time();
          v53 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx MsgData\n", (*&g_MacClockTicksToMsRelation * v52), "ADP", 69, "Ga11_18HandleSuplAsyncEventCB", 770);
          LbsOsaTrace_WriteLog(0x18u, &__str, v53, 0, 1);
          goto LABEL_46;
        }

        goto LABEL_28;
      }
    }

    else if (a1 != 2)
    {
      if (a1 != 4)
      {
        if (a1 == 3)
        {
          if (a3)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
            {
              bzero(&__str, 0x410uLL);
              v10 = mach_continuous_time();
              v11 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: API,%u,Id,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 73, "Ga11_18HandleSuplAsyncEventCB", *(a3 + 1), *a3, *(a3 + 2));
              LbsOsaTrace_WriteLog(0x18u, &__str, v11, 4, 1);
            }

            v12 = *a3;
            v94 = v9;
            *&v95 = v12;
            DWORD2(v95) = *(a3 + 2);
            v13 = *(v9 + 288);
            __str = MEMORY[0x29EDCA5F8];
            v91 = 0x40000000;
            v92 = ___ZN4gnss15GnssAdaptDevice29Ga11_18HandleSuplAsyncEventCBE13e_gnsSUPL_MsgP17u_gnsSUPL_MsgData_block_invoke;
            v93 = &__block_descriptor_tmp_149;
LABEL_45:
            dispatch_async(v13, &__str);
            goto LABEL_46;
          }

          if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            goto LABEL_46;
          }

          goto LABEL_35;
        }

LABEL_28:
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(&__str, 0x410uLL);
          v50 = mach_continuous_time();
          v51 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx MsgType,%u\n", (*&g_MacClockTicksToMsRelation * v50), "ADP", 69, "Ga11_18HandleSuplAsyncEventCB", 515, a1);
          LbsOsaTrace_WriteLog(0x18u, &__str, v51, 0, 1);
        }

        goto LABEL_46;
      }

      if (!a3)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          goto LABEL_46;
        }

        goto LABEL_35;
      }

      *&v82 = 0;
      *(&v82 + 1) = &v82;
      *&v83 = 0x5002000000;
      *(&v83 + 1) = __Block_byref_object_copy_;
      *v84 = __Block_byref_object_dispose_;
      v35 = a3[1];
      *&v84[8] = *a3;
      *&v84[24] = v35;
      *&v84[40] = *(a3 + 4);
      if (*(a3 + 1))
      {
        v36 = gnssOsa_Calloc("Ga11_18HandleSuplAsyncEventCB", 1667, 1, 0x28uLL);
        *(*(&v82 + 1) + 48) = v36;
        if (!v36)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(&__str, 0x410uLL);
            v69 = mach_continuous_time();
            v70 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx v_SummaryReport.p_PosReq\n", (*&g_MacClockTicksToMsRelation * v69), "ADP", 69, "Ga11_18HandleSuplAsyncEventCB", 1537);
            LbsOsaTrace_WriteLog(0x18u, &__str, v70, 0, 1);
          }

          goto LABEL_27;
        }

        v37 = *(a3 + 1);
        v38 = *v37;
        v39 = v37[1];
        *(v36 + 31) = *(v37 + 31);
        *v36 = v38;
        *(v36 + 1) = v39;
      }

      if (*(a3 + 2))
      {
        v40 = gnssOsa_Calloc("Ga11_18HandleSuplAsyncEventCB", 1677, 1, 0x78uLL);
        v41 = *(&v82 + 1);
        *(*(&v82 + 1) + 56) = v40;
        if (!v40)
        {
          v71 = *(v41 + 48);
          if (v71)
          {
            free(v71);
            v41 = *(&v82 + 1);
          }

          *(v41 + 48) = 0;
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(&__str, 0x410uLL);
            v72 = mach_continuous_time();
            v73 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx v_SummaryReport.p_PosResp\n", (*&g_MacClockTicksToMsRelation * v72), "ADP", 69, "Ga11_18HandleSuplAsyncEventCB", 1537);
            LbsOsaTrace_WriteLog(0x18u, &__str, v73, 0, 1);
          }

          goto LABEL_27;
        }

        v42 = *(a3 + 2);
        v43 = *v42;
        v44 = v42[1];
        v45 = v42[3];
        v40[2] = v42[2];
        v40[3] = v45;
        *v40 = v43;
        v40[1] = v44;
        v46 = v42[4];
        v47 = v42[5];
        v48 = v42[6];
        *(v40 + 14) = *(v42 + 14);
        v40[5] = v47;
        v40[6] = v48;
        v40[4] = v46;
      }

      v49 = *(v9 + 288);
      __str = MEMORY[0x29EDCA5F8];
      v91 = 0x40000000;
      v92 = ___ZN4gnss15GnssAdaptDevice29Ga11_18HandleSuplAsyncEventCBE13e_gnsSUPL_MsgP17u_gnsSUPL_MsgData_block_invoke_152;
      v93 = &unk_29EF26B68;
      v94 = &v82;
      *&v95 = v9;
      dispatch_async(v49, &__str);
LABEL_27:
      _Block_object_dispose(&v82, 8);
      goto LABEL_46;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(&__str, 0x410uLL);
      v33 = mach_continuous_time();
      v34 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx Supl Msg,%u\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 69, "Ga11_18HandleSuplAsyncEventCB", 770, a1);
      LbsOsaTrace_WriteLog(0x18u, &__str, v34, 0, 1);
    }
  }

LABEL_46:
  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
    bzero(&__str, 0x410uLL);
    v67 = mach_continuous_time();
    v68 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v67), "ADP", 68, "Ga11_17SuplAsyncEventCB");
    return LbsOsaTrace_WriteLog(0x18u, &__str, v68, 5, 1);
  }

  return result;
}

void sub_299508B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::Ga11_21GnsWlanInfoCB(gnss::GnssAdaptDevice *a1, uint64_t a2, int *a3)
{
  v4 = a1;
  v33 = *MEMORY[0x29EDCA608];
  result = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (result)
  {
    v6 = result;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: msgType(0,CapReq,1,MeasReq),%u\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 73, "Ga11_22HandleGnsWlanInfoCB", v4);
      LbsOsaTrace_WriteLog(0x18u, __str, v8, 4, 1);
    }

    if (v4 == 1)
    {
      std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>::__value_func[abi:ne200100](v24, v6 + 952);
      v27 = 0;
      if (v25)
      {
        operator new();
      }

      std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>::~__value_func[abi:ne200100](v24);
      if (v27)
      {
        if (a3)
        {
          v11 = a3[2];
          v12 = *a3;
          v13 = v11 / 0x3E8;
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v14 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
            v15 = 70;
            if (v12)
            {
              v15 = 84;
            }

            v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: WLAN MEAS REQ RspTime,%u,isRssiRequested,%c\n", v14, "ADP", 73, "Ga11_22HandleGnsWlanInfoCB", v13, v15);
            LbsOsaTrace_WriteLog(0x18u, __str, v16, 4, 1);
          }

          v17 = *(v6 + 296);
          *__str = MEMORY[0x29EDCA5F8];
          v29 = 1174405120;
          v30 = ___ZN4gnss15GnssAdaptDevice26Ga11_22HandleGnsWlanInfoCBE11e_gnsWL_MsgP15u_gnsWL_MsgData_block_invoke;
          v31 = &__block_descriptor_tmp_175;
          std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest)>::__value_func[abi:ne200100](v32, v26);
          v32[8] = v13 | ((v12 & 1) << 16);
          dispatch_async(v17, __str);
          std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest)>::~__value_func[abi:ne200100](v32);
          return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest)>::~__value_func[abi:ne200100](v26);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v20 = mach_continuous_time();
          v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx p_MsgData\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 69, "Ga11_22HandleGnsWlanInfoCB", 513);
          LbsOsaTrace_WriteLog(0x18u, __str, v21, 0, 1);
        }

        if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest)>::~__value_func[abi:ne200100](v26);
        }
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx WLAN Meas ReqCb\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "Ga11_22HandleGnsWlanInfoCB", 258);
          LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
        }

        if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest)>::~__value_func[abi:ne200100](v26);
        }
      }

      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "Ga11_22HandleGnsWlanInfoCB");
      LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
      return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest)>::~__value_func[abi:ne200100](v26);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNS WLAN MsgType,%u\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "Ga11_22HandleGnsWlanInfoCB", 770, v4);
      return LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
    }
  }

  return result;
}

void sub_299509120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnss::GnssAdaptDevice::Ga11_08ProvideDefaultSimInfo(gnss::GnssAdaptDevice *this)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v1), "ADP", 68, "Ga11_08ProvideDefaultSimInfo");
    LbsOsaTrace_WriteLog(0x18u, __str, v2, 5, 1);
  }

  v6 = 16711681;
  v7 = 0;
  GNS_SimsInfoInd(&v6);
  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga11_08ProvideDefaultSimInfo");
    return LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga11_05HandleGnsCellInfoCallbackE15e_gnsCI_MsgTypeP15u_gnsCI_MsgData_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a1 + 56))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Requesting LOCID from FW\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 73, "Ga11_05HandleGnsCellInfoCallback_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v3, 4, 1);
    }

    v4 = *(a1 + 56);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v4 + 48))(v4);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LocationIdCb\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga11_05HandleGnsCellInfoCallback_block_invoke", 258);
      LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "Ga11_05HandleGnsCellInfoCallback_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
    }
  }

  return result;
}

uint64_t __copy_helper_block_e8_32c40_ZTSNSt3__18functionIFN4gnss6ResultEvEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 32;
  v3 = a2 + 32;

  return std::__function::__value_func<gnss::Result ()(void)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_32c40_ZTSNSt3__18functionIFN4gnss6ResultEvEEE(uint64_t a1)
{
  v1 = a1 + 32;

  return std::__function::__value_func<gnss::Result ()(void)>::~__value_func[abi:ne200100](v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga11_05HandleGnsCellInfoCallbackE15e_gnsCI_MsgTypeP15u_gnsCI_MsgData_block_invoke_65(uint64_t result)
{
  v1 = result;
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(result + 40);
  if (v2 == 1)
  {
    if (*(result + 44) != 1)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx IMSI is not accepted by stack,%u\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "Ga11_05HandleGnsCellInfoCallback_block_invoke", 257, *(v1 + 44));
        return LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
      }
    }
  }

  else
  {
    v3 = *(result + 32);
    if (v2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNS SUPL API,%u\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "Ga11_05HandleGnsCellInfoCallback_block_invoke", 770, *(v1 + 40));
        LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
      }

      v6 = 7;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LocId status,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "Ga11_05HandleGnsCellInfoCallback_block_invoke", *(v1 + 44));
        LbsOsaTrace_WriteLog(0x18u, __str, v5, 4, 1);
      }

      v6 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v3, *(v1 + 44));
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, v3 + 504);
    if (v17)
    {
      v11 = *(v3 + 296);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN4gnss15GnssAdaptDevice32Ga11_05HandleGnsCellInfoCallbackE15e_gnsCI_MsgTypeP15u_gnsCI_MsgData_block_invoke_2;
      block[3] = &__block_descriptor_tmp_69;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, v16);
      v15[8] = v6;
      dispatch_async(v11, block);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LocID RspCb\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "Ga11_05HandleGnsCellInfoCallback_block_invoke", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 0, 1);
    }

    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
  }

  return result;
}

void sub_29950990C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga11_05HandleGnsCellInfoCallbackE15e_gnsCI_MsgTypeP15u_gnsCI_MsgData_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v2, v1);
}

uint64_t std::function<void ()(gnss::Result)>::operator()(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t __copy_helper_block_e8_32c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 32;
  v3 = a2 + 32;

  return std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_32c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  v1 = a1 + 32;

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t ___ZN4gnss15GnssAdaptDevice31Ga11_06HandleDataClientCallbackE15e_gnsDC_MsgTypeP15u_gnsDC_MsgData_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  v4 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *&v28.__r_.__value_.__l.__data_ = *v4;
    v28.__r_.__value_.__r.__words[2] = *(a1 + 56);
  }

  v5 = (**v3)(v3, &v28, *(a1 + 68));
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (*(a1 + 63) < 0)
    {
      v4 = *v4;
    }

    v7 = "FAILURE";
    if (v5 == -2)
    {
      v7 = "SUCCESS";
    }

    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Connection fqdn,%s,%u,status,%s\n", v6, "ADP", 68, "Ga11_06HandleDataClientCallback_block_invoke", v4, *(a1 + 68), v7);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Connection status,%d\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 73, "Ga11_06HandleDataClientCallback_block_invoke", v5);
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 4, 1);
  }

  if (v5 <= -4)
  {
    if (v5 == -5)
    {
      v18 = 1;
      v19 = 4;
      goto LABEL_32;
    }

    if (v5 == -4)
    {
      v18 = 1;
      v19 = 6;
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (v5 == -3)
  {
LABEL_31:
    v18 = 1;
    v19 = 2;
    goto LABEL_32;
  }

  if (v5 == -1)
  {
    v19 = 0;
    v18 = 1;
    goto LABEL_32;
  }

  if (v5 != -2)
  {
LABEL_29:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConnStatus,%d\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 87, "Ga11_06HandleDataClientCallback_block_invoke", 770, v5);
      LbsOsaTrace_WriteLog(0x18u, __str, v21, 2, 1);
    }

    goto LABEL_31;
  }

  *(v2 + 1016) = *(a1 + 64);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "Ga11_04ReadSocketData");
    LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
  }

  v13 = (*(**(v2 + 48) + 32))(*(v2 + 48));
  v14 = dispatch_source_create(MEMORY[0x29EDCA5B8], v13, 0, *(v2 + 304));
  if (!v14)
  {
    snprintf(handler, 0x400uLL, "ASSERT,%s,%d,%s", "Ga11_04ReadSocketData", 1037, "DISPC SUPL Socket read failed");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v26 = mach_continuous_time();
      v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v26), "OSA", 69, "Ga11_04ReadSocketData", handler);
      LbsOsaTrace_WriteLog(0xEu, __str, v27, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("Ga11_04ReadSocketData", "ga11AgnssSuplPos.cpp", 1037, "false && DISPC SUPL Socket read failed");
  }

  v15 = v14;
  *(v2 + 96) = v14;
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 0x40000000;
  handler[2] = ___ZN4gnss15GnssAdaptDevice21Ga11_04ReadSocketDataEv_block_invoke;
  handler[3] = &__block_descriptor_tmp_112;
  handler[4] = v2;
  handler[5] = v14;
  dispatch_source_set_event_handler(v14, handler);
  v29[0] = MEMORY[0x29EDCA5F8];
  v29[1] = 0x40000000;
  v29[2] = ___ZN4gnss15GnssAdaptDevice21Ga11_04ReadSocketDataEv_block_invoke_2;
  v29[3] = &__block_descriptor_tmp_115;
  v29[4] = v2;
  v29[5] = v15;
  dispatch_source_set_cancel_handler(v15, v29);
  dispatch_resume(v15);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "Ga11_04ReadSocketData");
    LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
  }

  v18 = 0;
  v19 = 14;
LABEL_32:
  result = GNS_DcLinkRsp(v18, *(a1 + 64), v19);
  v23 = result;
  if (result != 1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v24 = mach_continuous_time();
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DcLinkRsp,%u\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 69, "Ga11_06HandleDataClientCallback_block_invoke", 257, v23);
      return LbsOsaTrace_WriteLog(0x18u, __str, v25, 0, 1);
    }
  }

  return result;
}

void sub_29950A244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    v3 = *(a2 + 48);
    v4 = (a1 + 40);
    v5 = *(a2 + 40);

    std::string::__init_copy_ctor_external(v4, v5, v3);
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    v1 = *(a1 + 40);

    operator delete(v1);
  }
}

uint64_t ___ZN4gnss15GnssAdaptDevice31Ga11_06HandleDataClientCallbackE15e_gnsDC_MsgTypeP15u_gnsDC_MsgData_block_invoke_86(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if ((*(**(v2 + 48) + 32))(*(v2 + 48)) == -3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid Socket during Write\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 69, "Ga11_06HandleDataClientCallback_block_invoke", 2055);
      LbsOsaTrace_WriteLog(0x18u, __str, v4, 0, 1);
    }

    v5 = *(v2 + 1016);
    v6 = 11;
  }

  else
  {
    v7 = (*(**(v2 + 48) + 16))(*(v2 + 48), a1 + 40);
    if (v7 == -3)
    {
      v9 = 9;
    }

    else
    {
      v8 = v7;
      if (v7 != -4)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1);
        if (!result)
        {
          return result;
        }

        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Byte written,%d\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "Ga11_06HandleDataClientCallback_block_invoke", v8);
        v16 = 5;
        return LbsOsaTrace_WriteLog(0x18u, __str, v15, v16, 1);
      }

      v9 = 10;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Socket write,%u\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "Ga11_06HandleDataClientCallback_block_invoke", 1796, v9);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    v5 = *(a1 + 64);
    v6 = v9;
  }

  result = GNS_DcLinkRsp(4, v5, v6);
  if (result != 1)
  {
    v13 = result;
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DcLinkRsp,%u\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "Ga11_06HandleDataClientCallback_block_invoke", 257, v13);
      v16 = 0;
      return LbsOsaTrace_WriteLog(0x18u, __str, v15, v16, 1);
    }
  }

  return result;
}

uint64_t *__copy_helper_block_e8_40c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v3 = (a1 + 40);
  v3[2] = 0;
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);

  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v3, v4, v5, v5 - v4);
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;

    operator delete(v2);
  }
}

uint64_t ___ZN4gnss15GnssAdaptDevice31Ga11_06HandleDataClientCallbackE15e_gnsDC_MsgTypeP15u_gnsDC_MsgData_block_invoke_91(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DCApiStatus Api,%u,id,%u,Stat,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "Ga11_06HandleDataClientCallback_block_invoke", *(a1 + 44), *(a1 + 40), *(a1 + 48));
    result = LbsOsaTrace_WriteLog(0x18u, __str, v5, 4, 1);
  }

  v6 = *(a1 + 44);
  if ((v6 - 1) >= 2)
  {
    if (v6)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNS DC API\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "Ga11_06HandleDataClientCallback_block_invoke", 770);
        return LbsOsaTrace_WriteLog(0x18u, __str, v13, 0, 1);
      }
    }

    else
    {
      v10 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v2, *(a1 + 48));
      if (v10 == 1)
      {
        *(v2 + 1016) = *(a1 + 40);
      }

      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v18, v2 + 536);
      if (v19)
      {
        v11 = *(v2 + 296);
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 1174405120;
        block[2] = ___ZN4gnss15GnssAdaptDevice31Ga11_06HandleDataClientCallbackE15e_gnsDC_MsgTypeP15u_gnsDC_MsgData_block_invoke_2;
        block[3] = &__block_descriptor_tmp_95;
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v17, v18);
        v17[8] = v10;
        dispatch_async(v11, block);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17);
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL INIT Rsp Cb\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "Ga11_06HandleDataClientCallback_block_invoke", 770);
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
      }

      return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v18);
    }
  }

  else if (*(a1 + 48) != 1)
  {
    result = GNS_SuplAbortSession(*(v2 + 1016));
    v7 = result;
    if (result != 1)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplAbortSession,%u\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "Ga11_06HandleDataClientCallback_block_invoke", 770, v7);
        result = LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
      }
    }

    *(v2 + 1016) = 0;
  }

  return result;
}

void sub_29950AB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice31Ga11_06HandleDataClientCallbackE15e_gnsDC_MsgTypeP15u_gnsDC_MsgData_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v2, v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice28Ga11_07HandleSimInfoCallbackEv_block_invoke(gnss::GnssAdaptDevice *a1)
{

  return gnss::GnssAdaptDevice::Ga11_08ProvideDefaultSimInfo(a1);
}

void ___ZN4gnss15GnssAdaptDevice21Ga11_04ReadSocketDataEv_block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  data = dispatch_source_get_data(*(a1 + 40));
  if (!data)
  {
    return;
  }

  v3 = data;
  if ((*(**(v1 + 48) + 32))(*(v1 + 48)) == -3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid Session while Reading\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga11_04ReadSocketData_block_invoke", 2055);
      LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
    }

    v6 = GNS_DcLinkRsp(4, *(v1 + 1016), 11);
    if (v6 != 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DcLinkRsp,%u\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "Ga11_04ReadSocketData_block_invoke", 257, v6);
        LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
      }
    }

    return;
  }

  __p = 0;
  v27 = 0;
  v28 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Bytes on Sock,%llu\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 73, "Ga11_04ReadSocketData_block_invoke", v3);
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 4, 1);
  }

  v11 = (*(**(v1 + 48) + 8))(*(v1 + 48), &__p);
  v12 = v11;
  if (v11 == -4)
  {
    v13 = 8;
  }

  else
  {
    if (v11 != -3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Bytes read,%d\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "Ga11_04ReadSocketData_block_invoke", v12);
        LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Socket read buf size,%u\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 73, "Ga11_04ReadSocketData_block_invoke", v27 - __p);
        LbsOsaTrace_WriteLog(0x18u, __str, v22, 4, 1);
      }

      gnss::GnssAdaptDevice::Ga11_09TraceBuffer(&__p);
      v23 = GNS_DcSuplPdu(*(v1 + 1016), __p, (v27 - __p));
      if (v23 != 1 && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DcSuplPdu,%u\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 69, "Ga11_04ReadSocketData_block_invoke", 257, v23);
        LbsOsaTrace_WriteLog(0x18u, __str, v25, 0, 1);
      }

      goto LABEL_26;
    }

    v13 = 7;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Socket read,%u\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "Ga11_04ReadSocketData_block_invoke", 1797, v13);
    LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
  }

  v16 = GNS_DcLinkRsp(4, *(v1 + 1016), v13);
  if (v16 != 1 && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DcLinkRsp,%u\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "Ga11_04ReadSocketData_block_invoke", 257, v16);
    LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
  }

LABEL_26:
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }
}

void sub_29950B1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4gnss15GnssAdaptDevice21Ga11_04ReadSocketDataEv_block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: dispatch_source_set_cancel_handler\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga11_04ReadSocketData_block_invoke_2");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  v5 = *(v2 + 288);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN4gnss15GnssAdaptDevice21Ga11_04ReadSocketDataEv_block_invoke_3;
  block[3] = &__block_descriptor_tmp_114;
  block[4] = v2;
  dispatch_async(v5, block);
  dispatch_release(*(a1 + 40));
}

uint64_t ___ZN4gnss15GnssAdaptDevice21Ga11_04ReadSocketDataEv_block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  *(v1 + 1016) = 0;
  v2 = (*(**(v1 + 48) + 24))(*(v1 + 48));
  if (v2 <= 0xFFFFFFFD)
  {
    v3 = 13;
  }

  else
  {
    v3 = 15;
  }

  if (v2 <= 0xFFFFFFFD)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  result = GNS_DcLinkRsp(v4, *(v1 + 1020), v3);
  *(v1 + 1020) = -1;
  if (result != 1)
  {
    v6 = result;
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DcLinkRsp,%u\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "Ga11_04ReadSocketData_block_invoke_3", 257, v6);
      return LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
    }
  }

  return result;
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  a1[16] = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x29EDC9590] + 64;
  a1[2] = MEMORY[0x29EDC9590] + 64;
  v5 = MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 24);
  v7 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x29EDC9590] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_29950B73C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29C29EAA0](v1);
  _Unwind_Resume(a1);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *a2)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(v8, MEMORY[0x29EDC93D0]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C29EAA0](a1 + 128);
  return a1;
}

{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t gnss::GnssAdaptDevice::Ga11_15ConvertStringIPtoVect(const char *a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga11_15ConvertStringIPtoVect");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  if (a1 && (v6 = strnlen(a1, 0x100uLL), (v6 & 0xFFFFFEFF) == 0))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Wrong IP address len,%u\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 69, "Ga11_15ConvertStringIPtoVect", 257, v6);
      LbsOsaTrace_WriteLog(0x18u, __str, v22, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 68, "Ga11_15ConvertStringIPtoVect");
      return LbsOsaTrace_WriteLog(0x18u, __str, v24, 5, 1);
    }
  }

  else
  {
    v7 = *(a2 + 8);
    do
    {
      v8 = *(a2 + 16);
      if (v7 >= v8)
      {
        v9 = *a2;
        v10 = &v7[-*a2];
        v11 = (v10 + 1);
        if ((v10 + 1) < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - v9;
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          operator new();
        }

        v14 = &v7[-*a2];
        *v10 = 0;
        v7 = v10 + 1;
        memcpy(0, v9, v14);
        *a2 = 0;
        *(a2 + 8) = v10 + 1;
        *(a2 + 16) = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v7++ = 0;
      }

      *(a2 + 8) = v7;
    }

    while (*a1++);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IPVectorSize,%u\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "Ga11_15ConvertStringIPtoVect", *(a2 + 8) - *a2);
      LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "Ga11_15ConvertStringIPtoVect");
      return LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
    }
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice29Ga11_18HandleSuplAsyncEventCBE13e_gnsSUPL_MsgP17u_gnsSUPL_MsgData_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (*(a1 + 44) == 1)
  {
    if (*(v2 + 1016) == *(a1 + 40))
    {
      v3 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(*(a1 + 32), *(a1 + 48));
      goto LABEL_9;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionId mismatch GL,%u,GNS,%u\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga11_18HandleSuplAsyncEventCB_block_invoke", 770, *(v2 + 1016), *(a1 + 40));
      LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Api,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga11_18HandleSuplAsyncEventCB_block_invoke", 770, *(a1 + 44));
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
  }

  v3 = 8;
LABEL_9:
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, v2 + 568);
  if (v15)
  {
    v8 = *(v2 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice29Ga11_18HandleSuplAsyncEventCBE13e_gnsSUPL_MsgP17u_gnsSUPL_MsgData_block_invoke_2;
    block[3] = &__block_descriptor_tmp_147;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, v14);
    v13[8] = v3;
    dispatch_async(v8, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplAbortRspCB\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "Ga11_18HandleSuplAsyncEventCB_block_invoke", 258);
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
  }

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
}

void sub_29950C0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice29Ga11_18HandleSuplAsyncEventCBE13e_gnsSUPL_MsgP17u_gnsSUPL_MsgData_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v2, v1);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

void ___ZN4gnss15GnssAdaptDevice29Ga11_18HandleSuplAsyncEventCBE13e_gnsSUPL_MsgP17u_gnsSUPL_MsgData_block_invoke_152(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 68);
  if (v4 == 2)
  {
    v5 = *(v3 + 56);
    if (v5)
    {
      v6 = *(v5 + 20);
      if (v6 != 1)
      {
        if (v6 == 9)
        {
          v4 = 3;
          goto LABEL_21;
        }

        v7 = *(v3 + 48);
        if (v7)
        {
          v8 = *v7;
          if ((*v7 - 2) < 2)
          {
            v9 = (v7[9] & 1) == 0;
            v10 = 19;
LABEL_12:
            if (v9)
            {
              v4 = 2;
            }

            else
            {
              v4 = v10;
            }

            goto LABEL_21;
          }

          if (v8)
          {
            if (v8 == 1)
            {
              v9 = (v7[9] & 1) == 0;
              v10 = 18;
              goto LABEL_12;
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v12 = **(*(*(a1 + 32) + 8) + 48);
              v13 = 515;
              goto LABEL_19;
            }
          }

          else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v12 = **(*(*(a1 + 32) + 8) + 48);
            v13 = 770;
LABEL_19:
            v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LocInfoType,%u\n", v11, "ADP", 69, "Ga11_18HandleSuplAsyncEventCB_block_invoke", v13, v12);
            LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
          }
        }
      }
    }

    v4 = 2;
  }

LABEL_21:
  *__str = 0;
  v15 = *(*(a1 + 32) + 8);
  v16 = *(v15 + 40);
  if (gnss::GnssAdaptDevice::Ga11_21FindSUPLSession(v2, *(v15 + 40), __str))
  {
    v17 = *__str;
    v18 = *(v2 + 16);
    if (*__str < (0x7D6343EB1A1F58D1 * ((*(v2 + 17) - v18) >> 2)))
    {
      v19 = *(v15 + 48);
      if (v19)
      {
        v20 = v18 + 196 * *__str;
        v21 = *v19;
        v22 = v19[1];
        *(v20 + 31) = *(v19 + 31);
        *v20 = v21;
        *(v20 + 16) = v22;
        v15 = *(*(a1 + 32) + 8);
        v18 = *(v2 + 16);
      }

      v23 = *(v15 + 56);
      if (v23)
      {
        v24 = v18 + 196 * v17;
        v25 = *v23;
        v26 = v23[1];
        v27 = v23[3];
        *(v24 + 96) = v23[2];
        *(v24 + 112) = v27;
        *(v24 + 64) = v25;
        *(v24 + 80) = v26;
        v28 = v23[4];
        v29 = v23[5];
        v30 = v23[6];
        *(v24 + 176) = *(v23 + 14);
        *(v24 + 144) = v29;
        *(v24 + 160) = v30;
        *(v24 + 128) = v28;
        v15 = *(*(a1 + 32) + 8);
        v18 = *(v2 + 16);
      }

      v31 = (v18 + 196 * v17);
      v31[46] = *(v15 + 64);
      v32 = *(*(a1 + 32) + 8);
      if (*(v32 + 68) == 2)
      {
        v33 = v31[47];
        if (v33 == 22)
        {
          v34 = 23;
        }

        else
        {
          v34 = v4;
        }

        if (v33 == 28)
        {
          v4 = 22;
        }

        else
        {
          v4 = v34;
        }
      }

      v35 = *(v32 + 72) - 1;
      if (v35 >= 3)
      {
        v35 = -1;
      }

      v31[11] = v35;
      v16 = *(*(*(a1 + 32) + 8) + 40);
    }
  }

  gnss::GnssAdaptDevice::Ga10_05SendSessionSummaryReport(v2, v16, 1, v4);
  v36 = *(*(a1 + 32) + 8);
  v37 = *(v36 + 48);
  if (v37)
  {
    free(v37);
    v36 = *(*(a1 + 32) + 8);
  }

  *(v36 + 48) = 0;
  v38 = *(*(a1 + 32) + 8);
  v39 = *(v38 + 56);
  if (v39)
  {
    free(v39);
    v38 = *(*(a1 + 32) + 8);
  }

  *(v38 + 56) = 0;
}

uint64_t ___ZN4gnss15GnssAdaptDevice29Ga11_18HandleSuplAsyncEventCBE13e_gnsSUPL_MsgP17u_gnsSUPL_MsgData_block_invoke_2_155(uint64_t result)
{
  v105 = *MEMORY[0x29EDCA608];
  v1 = *(result + 32);
  v2 = *(result + 40);
  v3 = *(result + 72);
  v4 = *(result + 76);
  v6 = *(result + 80);
  v5 = *(result + 84);
  v7 = *(result + 88);
  v8 = *(result + 176);
  v78 = *(result + 160);
  v79 = v8;
  v80 = *(result + 192);
  v81 = *(result + 208);
  v9 = *(result + 112);
  v74 = *(result + 96);
  v75 = v9;
  v10 = *(result + 144);
  v76 = *(result + 128);
  v77 = v10;
  v11 = *(result + 236);
  v12 = *(result + 240);
  v71 = *(result + 244);
  v72 = *(result + 246);
  v73 = *(result + 256);
  v69 = *(result + 257);
  v70 = *(result + 252);
  v67 = *(result + 268);
  v68 = *(result + 272);
  v65 = *(result + 232);
  v66 = *(result + 280);
  if (v3 != 30)
  {
    goto LABEL_5;
  }

  if (DWORD1(v75) == 1)
  {
    result = gnss::GnssAdaptDevice::Ga10_17InvokePVTMCbForE911(v1, &v74);
  }

  if (BYTE4(v74))
  {
LABEL_5:
    *&v82[2] = 0;
    v83 = xmmword_2997286E0;
    v84 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    __asm { FMOV            V0.2D, #-1.0 }

    v85 = _Q0;
    *&v86 = 0xBFF0000000000000;
    WORD4(v86) = 0;
    BYTE10(v86) = 0;
    HIDWORD(v86) = 0;
    v87 = v84;
    v88 = xmmword_2997286F0;
    *&v89 = 0xBFF0000000000000;
    WORD4(v89) = -1;
    LODWORD(v90) = -1;
    WORD2(v90) = -1;
    *(&v90 + 1) = 0xBFF0000000000000;
    v82[0] = v2;
    v82[1] = 0;
    gnss::GnssAdaptDevice::Ga11_10ConvertGNSPosMethodToE911PosMethod(v6, &v82[1]);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SUPL Event,%u,SessionStatus,%u,SuplEndCause,%u\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 73, "Ga11_20SendStatusReport", v4, v3, v5);
      LbsOsaTrace_WriteLog(0x18u, __str, v19, 4, 1);
    }

    if (v4 > 2)
    {
      if (v4 <= 0x12)
      {
        if (((1 << v4) & 0x7FF30) != 0)
        {
          goto LABEL_10;
        }

        if (v4 == 6)
        {
          v28 = 30;
LABEL_35:
          v82[2] = v28;
LABEL_36:
          v20 = v82[2];
          goto LABEL_37;
        }

        if (v4 == 7)
        {
          v28 = 29;
          goto LABEL_35;
        }
      }

      if (v4 == 3)
      {
        v28 = 13;
        goto LABEL_35;
      }

      goto LABEL_32;
    }

    switch(v4)
    {
      case 0:
        break;
      case 1:
        v82[2] = 1;
        v30 = *(v1 + 19);
        v29 = *(v1 + 20);
        if (v29 != v30)
        {
          v31 = *v30;
          *__str = 0xFFFFFFFF00000000;
          LOWORD(v94[0]) = -1;
          memset(v94 + 4, 0, 27);
          v95 = 0xFFFFFFFF00000000;
          v97 = -1;
          v98 = 0;
          *v99 = -1;
          *&v99[4] = 0;
          *&v99[8] = xmmword_2997286D0;
          v100.i64[0] = 0;
          *&v99[24] = 0;
          *(v100.i64 + 6) = 0;
          v100.i16[7] = -1;
          LOBYTE(v101) = 0;
          DWORD1(v101) = 0;
          *(&v101 + 1) = -1;
          *v102 = 0;
          *&v102[8] = -1;
          v102[12] = -1;
          *&v102[28] = -1;
          *&v102[21] = -1;
          *&v102[14] = -1;
          *&v102[36] = 0x7FFFFFFFLL;
          v102[44] = 0;
          *&v102[46] = -1;
          *&v103 = -COERCE_DOUBLE(0x8000000080000000);
          *(&v103 + 1) = 0;
          LOWORD(v104) = 0;
          v96 = v31 & 1;
          v32 = v29 - (v30 + 1);
          if (v29 != v30 + 1)
          {
            memmove(v30, v30 + 1, v29 - (v30 + 1));
          }

          v33 = *(v1 + 16);
          *(v1 + 20) = &v30[v32];
          HIDWORD(v97) = v82[0];
          if ((0x7D6343EB1A1F58D1 * ((*(v1 + 17) - v33) >> 2)) <= 3)
          {
            std::vector<gnss::AgnssSummaryReport>::push_back[abi:ne200100](v1 + 128, __str);
          }
        }

        break;
      case 2:
        v24 = *(v1 + 19);
        v23 = *(v1 + 20);
        if (v23 != v24)
        {
          v25 = *v24;
          *__str = 0xFFFFFFFF00000000;
          LOWORD(v94[0]) = -1;
          memset(v94 + 4, 0, 27);
          v95 = 0xFFFFFFFF00000000;
          v97 = -1;
          v98 = 0;
          *v99 = -1;
          *&v99[4] = 0;
          *&v99[8] = xmmword_2997286D0;
          v100.i64[0] = 0;
          *&v99[24] = 0;
          *(v100.i64 + 6) = 0;
          v100.i16[7] = -1;
          LOBYTE(v101) = 0;
          DWORD1(v101) = 0;
          *(&v101 + 1) = -1;
          *v102 = 0;
          *&v102[8] = -1;
          v102[12] = -1;
          *&v102[28] = -1;
          *&v102[21] = -1;
          *&v102[14] = -1;
          *&v102[36] = 0x7FFFFFFFLL;
          v102[44] = 0;
          *&v102[46] = -1;
          *&v103 = -COERCE_DOUBLE(0x8000000080000000);
          *(&v103 + 1) = 0;
          LOWORD(v104) = 0;
          v96 = v25 & 1;
          v26 = v23 - (v24 + 1);
          if (v23 != v24 + 1)
          {
            memmove(v24, v24 + 1, v23 - (v24 + 1));
          }

          v27 = *(v1 + 16);
          *(v1 + 20) = &v24[v26];
          HIDWORD(v97) = v82[0];
          if ((0x7D6343EB1A1F58D1 * ((*(v1 + 17) - v27) >> 2)) <= 3)
          {
            std::vector<gnss::AgnssSummaryReport>::push_back[abi:ne200100](v1 + 128, __str);
          }
        }

        gnss::GnssAdaptDevice::Ga10_05SendSessionSummaryReport(v1, v82[0], 1, 3);
        break;
      default:
LABEL_32:
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v34 = mach_continuous_time();
          v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL Event,%u\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 69, "Ga11_20SendStatusReport", 515, v4);
          LbsOsaTrace_WriteLog(0x18u, __str, v35, 0, 1);
        }

        break;
    }

LABEL_10:
    v20 = v82[2];
    if (!v82[2])
    {
      v21 = 22;
      v20 = 21;
      switch(v3)
      {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 17:
        case 24:
        case 38:
          break;
        case 5:
        case 8:
          v22 = 3;
          goto LABEL_72;
        case 6:
          v22 = 2;
          goto LABEL_72;
        case 7:
          v22 = 5;
          goto LABEL_72;
        case 9:
          v22 = 4;
          goto LABEL_72;
        case 10:
          v22 = 6;
          goto LABEL_72;
        case 11:
          v22 = 7;
          goto LABEL_72;
        case 12:
          v22 = 8;
          goto LABEL_72;
        case 13:
          v22 = 9;
          goto LABEL_72;
        case 14:
          v22 = 12;
          goto LABEL_72;
        case 15:
          v22 = 11;
          goto LABEL_72;
        case 16:
          v22 = 10;
          goto LABEL_72;
        case 18:
        case 25:
          v22 = 26;
          goto LABEL_72;
        case 19:
        case 26:
          v22 = 20;
          goto LABEL_72;
        case 20:
        case 27:
          v20 = 27;
          goto LABEL_48;
        case 21:
        case 28:
LABEL_48:
          v82[2] = v20;
          goto LABEL_39;
        case 22:
          v21 = 28;
          goto LABEL_62;
        case 23:
LABEL_62:
          v82[2] = v21;
          v20 = v21;
          goto LABEL_44;
        case 29:
          v22 = 17;
          goto LABEL_72;
        case 30:
          v22 = 18;
          goto LABEL_72;
        case 31:
          v22 = 19;
          goto LABEL_72;
        case 32:
          v22 = 23;
          goto LABEL_72;
        case 33:
          v22 = 24;
          goto LABEL_72;
        case 34:
          v22 = 25;
LABEL_72:
          v82[2] = v22;
          break;
        case 35:
          v82[2] = 14;
          BYTE9(v86) = 1;
          break;
        case 36:
          v82[2] = 15;
          BYTE10(v86) = 1;
          break;
        case 37:
          v82[2] = 16;
          BYTE8(v86) = 1;
          break;
        default:
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v38 = mach_continuous_time();
            v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PPDU Sess Code,%u\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 69, "Ga11_20SendStatusReport", 515, v3);
            LbsOsaTrace_WriteLog(0x18u, __str, v39, 0, 1);
          }

          goto LABEL_36;
      }

LABEL_73:
      switch(v5)
      {
        case 0:
          v82[3] = 0;
          break;
        case 1:
          v40 = 1;
          goto LABEL_97;
        case 2:
          v40 = 2;
          goto LABEL_97;
        case 3:
          v40 = 3;
          goto LABEL_97;
        case 4:
          v40 = 4;
          goto LABEL_97;
        case 5:
          v40 = 5;
          goto LABEL_97;
        case 6:
          v40 = 6;
          goto LABEL_97;
        case 7:
          v40 = 7;
          goto LABEL_97;
        case 8:
          v40 = 8;
          goto LABEL_97;
        case 9:
          v40 = 9;
          goto LABEL_97;
        case 10:
          v40 = 10;
          goto LABEL_97;
        case 11:
          v40 = 11;
          goto LABEL_97;
        case 12:
          v40 = 12;
          goto LABEL_97;
        case 13:
          v40 = 13;
          goto LABEL_97;
        case 14:
          v40 = 14;
          goto LABEL_97;
        case 15:
          v40 = 15;
          goto LABEL_97;
        case 16:
          v40 = 16;
          goto LABEL_97;
        case 17:
          v40 = 17;
          goto LABEL_97;
        case 18:
          v40 = 18;
          goto LABEL_97;
        case 19:
          v40 = 19;
          goto LABEL_97;
        case 20:
          v40 = 20;
          goto LABEL_97;
        case 21:
          v40 = 21;
          goto LABEL_97;
        case 22:
          v40 = 22;
LABEL_97:
          v82[3] = v40;
          break;
        default:
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v63 = mach_continuous_time();
            v64 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL End Cause,%u\n", (*&g_MacClockTicksToMsRelation * v63), "ADP", 69, "Ga11_20SendStatusReport", 515, v5);
            LbsOsaTrace_WriteLog(0x18u, __str, v64, 0, 1);
          }

          break;
      }

      if (v7 == 255)
      {
        v41 = -1.0;
      }

      else
      {
        v41 = (pow(1.1, v7) + -1.0) * 10.0;
      }

      *&v83 = v41;
      if (DWORD1(v75) == 1)
      {
        if (DWORD1(v76) >> 23)
        {
          v43 = 1.79769313e308;
        }

        else
        {
          v42 = vcvtd_n_f64_u32(90 * DWORD1(v76), 0x17uLL);
          v43 = -((90 * DWORD1(v76)) * 0.00000011920929);
          if (v76 != 2)
          {
            v43 = v42;
          }
        }

        *(&v83 + 1) = v43;
        v44 = DWORD2(v76);
        if ((DWORD2(v76) + 0x800000) >> 24)
        {
          v45 = 1.79769313e308;
        }

        else
        {
          if ((DWORD2(v76) & 0x800000) != 0)
          {
            v44 = DWORD2(v76) | 0xFF000000;
          }

          v45 = v44 * 360.0 * 0.0000000596046448;
        }

        v46 = WORD6(v76);
        if (DWORD1(v77) == 2)
        {
          v46 = -v46;
        }

        if (SWORD6(v76) < 0)
        {
          v46 = 1.79769313e308;
        }

        *v84.i64 = v45;
        *&v84.i64[1] = v46;
        if (BYTE14(v76) != 255)
        {
          *&v85 = BYTE14(v76);
        }

        if (HIBYTE(v76) != 255)
        {
          *(&v85 + 1) = HIBYTE(v76);
        }

        if (BYTE8(v77) != 255)
        {
          *&v86 = BYTE8(v77);
        }
      }

      if (BYTE10(v86) == 1)
      {
        if (v11 >> 23)
        {
          v48 = 1.79769313e308;
        }

        else
        {
          v47 = vcvtd_n_f64_u32(90 * v11, 0x17uLL);
          v48 = -((90 * v11) * 0.00000011920929);
          if (v65 != 2)
          {
            v48 = v47;
          }
        }

        *v87.i64 = v48;
        if ((v12 + 0x800000) >> 24)
        {
          v50 = 1.79769313e308;
        }

        else
        {
          v49 = v12 | 0xFF000000;
          if ((v12 & 0x800000) == 0)
          {
            v49 = v12;
          }

          v50 = v49 * 360.0 * 0.0000000596046448;
        }

        v51 = v71;
        if (v70 == 2)
        {
          v51 = -v51;
        }

        if (v71 < 0)
        {
          v51 = 1.79769313e308;
        }

        *&v87.i64[1] = v50;
        *&v88 = v51;
        v52 = -1.0;
        v53 = -1.0;
        if (v72 != 255)
        {
          v53 = (pow(1.1, v72) + -1.0) * 10.0;
        }

        *&v89 = v53;
        if (v73 != 255)
        {
          v52 = (pow(1.025, v73) + -1.0) * 45.0;
        }

        *(&v88 + 1) = v52;
        if (v69 != 255)
        {
          BYTE8(v89) = v69;
          BYTE9(v89) = v69;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
        {
          bzero(__str, 0x410uLL);
          v54 = mach_continuous_time();
          v55 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RefLocLat,%.7lf,Long,%.7lf,Alt,%.2lf,HorUnc,%f,VerUnc,%f,conf,%hhu\n", (*&g_MacClockTicksToMsRelation * v54), "ADP", 68, "Ga11_20SendStatusReport", *v87.i64, *&v87.i64[1], *&v88, *&v89, *(&v88 + 1), BYTE8(v89));
          LbsOsaTrace_WriteLog(0x18u, __str, v55, 5, 1);
        }
      }

      if (BYTE9(v86) == 1)
      {
        if (v66 <= 0x3FF)
        {
          WORD2(v90) = v66;
        }

        if (v67 <= 0x240C83FF)
        {
          LODWORD(v90) = v67 / 0x3E8;
        }

        if (v67 != -1 && WORD2(v90) != 0xFFFF && v68 != 0xFFFF)
        {
          *(&v90 + 1) = ((8389 * (v68 >> 3)) >> 20);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v56 = mach_continuous_time();
          v57 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Week,%u,TowSec,%u,TowUnc,%.3lf\n", (*&g_MacClockTicksToMsRelation * v56), "ADP", 73, "Ga11_20SendStatusReport", WORD2(v90), v90, *(&v90 + 1));
          LbsOsaTrace_WriteLog(0x18u, __str, v57, 4, 1);
        }
      }

      if (v82[2] || v82[1] || v82[3] || fabs(*&v83 + 1.0) >= 2.22044605e-16 || fabs(*(&v83 + 1) + -1.79769313e308) >= 2.22044605e-16 || fabs(*v84.i64 + -1.79769313e308) >= 2.22044605e-16 || fabs(*&v84.i64[1] + -1.79769313e308) >= 2.22044605e-16 || fabs(*&v85 + 1.0) >= 2.22044605e-16 || fabs(*(&v85 + 1) + 1.0) >= 2.22044605e-16 || fabs(*&v86 + 1.0) >= 2.22044605e-16)
      {
        std::__function::__value_func<void ()(gnss::Emergency::Supl::SessionStatus const&)>::__value_func[abi:ne200100](v91, v1 + 984);
        if (v92)
        {
          v60 = *(v1 + 37);
          *__str = MEMORY[0x29EDCA5F8];
          v94[0] = 1174405120;
          v94[1] = ___ZN4gnss15GnssAdaptDevice23Ga11_20SendStatusReportERK19s_gnsSUPL_StatusRep_block_invoke;
          v94[2] = &__block_descriptor_tmp_169;
          std::__function::__value_func<void ()(gnss::Emergency::Supl::SessionStatus const&)>::__value_func[abi:ne200100](&v94[3], v91);
          *&v102[32] = v88;
          v103 = v89;
          v104 = v90;
          v100 = v84;
          v101 = v85;
          *v102 = v86;
          *&v102[16] = v87;
          *v99 = *v82;
          *&v99[16] = v83;
          dispatch_async(v60, __str);
          std::__function::__value_func<void ()(gnss::Emergency::Supl::SessionStatus const&)>::~__value_func[abi:ne200100](&v94[3]);
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v61 = mach_continuous_time();
          v62 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplStatusReportCB\n", (*&g_MacClockTicksToMsRelation * v61), "ADP", 69, "Ga11_20SendStatusReport", 258);
          LbsOsaTrace_WriteLog(0x18u, __str, v62, 0, 1);
        }

        return std::__function::__value_func<void ()(gnss::Emergency::Supl::SessionStatus const&)>::~__value_func[abi:ne200100](v91);
      }

      else
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v58 = mach_continuous_time();
          v59 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Status report\n", (*&g_MacClockTicksToMsRelation * v58), "ADP", 87, "Ga11_20SendStatusReport", 770);
          return LbsOsaTrace_WriteLog(0x18u, __str, v59, 2, 1);
        }
      }

      return result;
    }

LABEL_37:
    if (v20 == 21 || v20 == 27)
    {
LABEL_39:
      *__str = -1;
      if (gnss::GnssAdaptDevice::Ga11_21FindSUPLSession(v1, v82[0], __str))
      {
        v36 = *(v1 + 16);
        if (*__str < (0x7D6343EB1A1F58D1 * ((*(v1 + 17) - v36) >> 2)))
        {
          *(v36 + 196 * *__str + 60) = 1;
        }
      }
    }

    if (v20 == 22 || v20 == 28)
    {
LABEL_44:
      *__str = -1;
      if (gnss::GnssAdaptDevice::Ga11_21FindSUPLSession(v1, v82[0], __str))
      {
        v37 = *(v1 + 16);
        if (*__str < (0x7D6343EB1A1F58D1 * ((*(v1 + 17) - v37) >> 2)))
        {
          *(v37 + 196 * *__str + 188) = v20;
        }
      }
    }

    goto LABEL_73;
  }

  return result;
}

void sub_29950D5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, ...)
{
  va_start(va, a57);
  std::__function::__value_func<void ()(gnss::Emergency::Supl::SessionStatus const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<gnss::AgnssSummaryReport>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v16 = 0x7D6343EB1A1F58D1 * ((v4 - *a1) >> 2);
    v17 = v16 + 1;
    if ((v16 + 1) > 0x14E5E0A72F05397)
    {
      std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
    }

    v18 = 0x7D6343EB1A1F58D1 * ((v5 - *a1) >> 2);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0xA72F05397829CBLL)
    {
      v19 = 0x14E5E0A72F05397;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<gnss::AgnssSummaryReport>>(a1, v19);
    }

    v20 = 196 * v16;
    *v20 = *a2;
    v21 = *(a2 + 16);
    v22 = *(a2 + 32);
    v23 = *(a2 + 64);
    *(v20 + 48) = *(a2 + 48);
    *(v20 + 64) = v23;
    *(v20 + 16) = v21;
    *(v20 + 32) = v22;
    v24 = *(a2 + 80);
    v25 = *(a2 + 96);
    v26 = *(a2 + 128);
    *(v20 + 112) = *(a2 + 112);
    *(v20 + 128) = v26;
    *(v20 + 80) = v24;
    *(v20 + 96) = v25;
    v27 = *(a2 + 144);
    v28 = *(a2 + 160);
    v29 = *(a2 + 176);
    *(v20 + 192) = *(a2 + 192);
    *(v20 + 160) = v28;
    *(v20 + 176) = v29;
    *(v20 + 144) = v27;
    v15 = 196 * v16 + 196;
    v30 = *(a1 + 8) - *a1;
    v31 = v20 - v30;
    memcpy((v20 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 64);
    *(v4 + 48) = *(a2 + 48);
    *(v4 + 64) = v8;
    *(v4 + 16) = v6;
    *(v4 + 32) = v7;
    v9 = *(a2 + 80);
    v10 = *(a2 + 96);
    v11 = *(a2 + 128);
    *(v4 + 112) = *(a2 + 112);
    *(v4 + 128) = v11;
    *(v4 + 80) = v9;
    *(v4 + 96) = v10;
    v12 = *(a2 + 144);
    v13 = *(a2 + 160);
    v14 = *(a2 + 176);
    *(v4 + 192) = *(a2 + 192);
    *(v4 + 160) = v13;
    *(v4 + 176) = v14;
    *(v4 + 144) = v12;
    v15 = v4 + 196;
  }

  *(a1 + 8) = v15;
}

uint64_t ___ZN4gnss15GnssAdaptDevice23Ga11_20SendStatusReportERK19s_gnsSUPL_StatusRep_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2, a1 + 64);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%.7lf,Long,%.7lf,Alt,%.2lf,SemMaj,%f,SemMin,%f,UncAlt,%f\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga11_20SendStatusReport_block_invoke", *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128));
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (*(a1 + 138))
    {
      v7 = 84;
    }

    else
    {
      v7 = 70;
    }

    if (*(a1 + 137))
    {
      v8 = 84;
    }

    else
    {
      v8 = 70;
    }

    if (*(a1 + 136))
    {
      v9 = 84;
    }

    else
    {
      v9 = 70;
    }

    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplStatusReport PosMethod,%u,Status,%u,SessionId,%u,endCause,%u,HACC,%f,ephProvided,%c,refTimeProvided,%c,refLocProvided,%c\n", v6, "ADP", 73, "Ga11_20SendStatusReport_block_invoke", *(a1 + 68), *(a1 + 72), *(a1 + 64), *(a1 + 76), *(a1 + 80), v9, v8, v7);
    return LbsOsaTrace_WriteLog(0x18u, __str, v10, 4, 1);
  }

  return result;
}

uint64_t __copy_helper_block_e8_32c65_ZTSNSt3__18functionIFvRKN4gnss9Emergency4Supl13SessionStatusEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 32;
  v3 = a2 + 32;

  return std::__function::__value_func<void ()(gnss::Emergency::Supl::SessionStatus const&)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_32c65_ZTSNSt3__18functionIFvRKN4gnss9Emergency4Supl13SessionStatusEEEE(uint64_t a1)
{
  v1 = a1 + 32;

  return std::__function::__value_func<void ()(gnss::Emergency::Supl::SessionStatus const&)>::~__value_func[abi:ne200100](v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice26Ga11_22HandleGnsWlanInfoCBE11e_gnsWL_MsgP15u_gnsWL_MsgData_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Requesting WLAN Measurements from FW\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 73, "Ga11_22HandleGnsWlanInfoCB_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 4, 1);
  }

  v4 = *(a1 + 56);
  *__str = *(a1 + 64);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, __str);
}

uint64_t __copy_helper_block_e8_32c83_ZTSNSt3__18functionIFN4gnss6ResultENS1_9Emergency4Supl22WlanMeasurementRequestEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 32;
  v3 = a2 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_32c83_ZTSNSt3__18functionIFN4gnss6ResultENS1_9Emergency4Supl22WlanMeasurementRequestEEEE(uint64_t a1)
{
  v1 = a1 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest)>::~__value_func[abi:ne200100](v1);
}

void std::vector<gnss::Emergency::Supl::LteCellInfo>::__init_with_size[abi:ne200100]<gnss::Emergency::Supl::LteCellInfo*,gnss::Emergency::Supl::LteCellInfo*>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x924924924924925)
    {
      operator new();
    }

    std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
  }
}

void sub_29950DCE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void std::vector<gnss::Emergency::Supl::GsmCellInfo>::__init_with_size[abi:ne200100]<gnss::Emergency::Supl::GsmCellInfo*,gnss::Emergency::Supl::GsmCellInfo*>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      operator new();
    }

    std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
  }
}

void sub_29950DE54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<gnss::Emergency::Supl::WcdmaCellInfo>::__init_with_size[abi:ne200100]<gnss::Emergency::Supl::WcdmaCellInfo*,gnss::Emergency::Supl::WcdmaCellInfo*>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      operator new();
    }

    std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
  }
}

void sub_29950DF3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void gnss::Emergency::Supl::LocationId::~LocationId(gnss::Emergency::Supl::LocationId *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

void std::vector<gnss::Emergency::Supl::WlanMeasurementElement>::__init_with_size[abi:ne200100]<gnss::Emergency::Supl::WlanMeasurementElement*,gnss::Emergency::Supl::WlanMeasurementElement*>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1555555555555556)
    {
      operator new();
    }

    std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
  }
}

void sub_29950E0C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

uint64_t *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29950E1D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__value_func<void ()(gnss::Result)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_29950E6C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(gnss::Result)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void std::vector<gnss::AgnssSuplCfg>::emplace_back<gnss::AgnssSuplCfg const&>(uint64_t a1, char *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t std::__function::__value_func<gnss::Result ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<gnss::Result ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(gnss::Emergency::Supl::SessionStatus const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(gnss::Emergency::Supl::SessionStatus const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t *std::vector<unsigned char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_29950EDBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C29EA50](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_29950EEA0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<gnss::AgnssSummaryReport>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x14E5E0A72F05398)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__function::__func<std::function<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>,std::allocator<std::function<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>>,gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest)>::~__func(void *a1)
{
  *a1 = &unk_2A1F87C00;
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>,std::allocator<std::function<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>>,gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest)>::~__func(void *a1)
{
  *a1 = &unk_2A1F87C00;
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x29C29EB20);
}

uint64_t std::__function::__func<std::function<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>,std::allocator<std::function<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>>,gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2A1F87C00;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>::__value_func[abi:ne200100]((a2 + 1), a1 + 8);
}

uint64_t std::__function::__func<std::function<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>,std::allocator<std::function<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>>,gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>::~__value_func[abi:ne200100](v1);
}

void std::__function::__func<std::function<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>,std::allocator<std::function<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>>,gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::function<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>,std::allocator<std::function<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>>,gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v2 = *(*v1 + 48);

  return v2();
}