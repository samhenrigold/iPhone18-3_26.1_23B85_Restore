double SendStatusReport(int a1, int a2, __int128 *a3, __int128 *a4, __int128 *a5, int a6)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionID,%u,statusCode,%u,reqHorizAcc,%u\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 73, "SendStatusReport", a1, a2, a6);
    LbsOsaTrace_WriteLog(0x13u, __str, v13, 4, 1);
  }

  v14 = GNS_PospStatusReport(a1, a2, a3, a4, a5, a6);
  if (v14 != 1)
  {
    v16 = v14;
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNS_PospStatusReport call failed result,%u\n", (*&g_MacClockTicksToMsRelation * v17), "PSP", 69, "SendStatusReport", 770, v16);
      LbsOsaTrace_WriteLog(0x13u, __str, v18, 0, 1);
    }
  }

  return result;
}

double send_assistance_req(unsigned int *a1, int a2)
{
  v55 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 68, "send_assistance_req");
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 5, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_75;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_74;
  }

  v45 = 0x8000000080000000;
  v46 = 0xFFFF00007FFFFFFFLL;
  v47 = 255;
  v50 = -1;
  v51 = -1;
  v48 = -1;
  v49 = -1;
  v52 = 0u;
  v53 = 0u;
  session_info = gps_find_session_info(*a1);
  v7 = *(a1 + 1);
  if (v7)
  {
    if (v7[1] == 1)
    {
      v8 = 32;
      WORD2(v46) = 32;
      v9 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    if (*v7 == 1)
    {
      v8 |= 0x40u;
      WORD2(v46) = v8;
      v9 = 1;
    }

    if (v7[2] == 1)
    {
      v8 |= 4u;
      WORD2(v46) = v8;
      v9 = 1;
    }

    if (v7[3] == 1)
    {
      v11 = *(a1 + 2);
      if (v11)
      {
        if (*v11 == 1)
        {
          if (*(v11 + 8) == 1)
          {
            v8 |= 0x80u;
            WORD2(v46) = v8;
          }

          if (*(v11 + 4) == 1)
          {
            v8 |= 2u;
            WORD2(v46) = v8;
          }

          if (*(v11 + 5) == 1)
          {
            v8 |= 0x100u;
            WORD2(v46) = v8;
          }

          if (*(v11 + 6) == 1)
          {
            v8 |= 1u;
            WORD2(v46) = v8;
          }

          if (*(v11 + 7) == 1)
          {
            v8 |= 8u;
            WORD2(v46) = v8;
          }

          if (*(v11 + 9) == 1)
          {
            WORD2(v46) = v8 | 1;
          }
        }

        v12 = *(v11 + 16);
        if (v12)
        {
          HIWORD(v46) = v12 & 0x3FF;
        }

        if (session_info)
        {
          if (*(session_info + 8) == 2)
          {
            HIWORD(v46) = v12;
          }
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v13), "PSP", 69, "ConvertGnssAidReqToSdlAidReq", 2052, *a1);
          LbsOsaTrace_WriteLog(0x13u, __str, v14, 0, 1);
        }

        v15 = *(a1 + 2);
        LOBYTE(v47) = v15[18];
        v16 = v15[20];
        if (v16 >= 0x40)
        {
          v17 = 64;
        }

        else
        {
          v17 = v15[20];
        }

        HIBYTE(v47) = v17;
        LOBYTE(v48) = v15[19];
        if (v16 - 1 <= 0x3E)
        {
          v18 = 0;
          v19 = &v53;
          do
          {
            v20 = *(a1 + 2);
            *(v19 - 16) = *(v20 + v18 + 21);
            v21 = *(v20 + 2 * v18 + 86);
            if (v21 > 0xFF)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v22 = mach_continuous_time();
                v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx v_Iode,%u\n", (*&g_MacClockTicksToMsRelation * v22), "PSP", 69, "ConvertGnssAidReqToSdlAidReq", 772, *(*(a1 + 2) + 2 * v18 + 86));
                LbsOsaTrace_WriteLog(0x13u, __str, v23, 0, 1);
              }
            }

            else
            {
              *v19 = v21;
            }

            ++v18;
            v19 = (v19 + 1);
          }

          while (v18 < v17);
        }

        v9 = 1;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v24 = *(a1 + 2);
  if (v24)
  {
    free(v24);
  }

  *(a1 + 2) = 0;
  v25 = *(a1 + 1);
  if (v25)
  {
    free(v25);
  }

  *(a1 + 1) = 0;
  v42 = 511;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v43 = &v38;
  v26 = gps_find_session_info(*a1);
  if (!v26)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_75;
    }

    bzero(__str, 0x410uLL);
    v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", v36);
    goto LABEL_74;
  }

  if (v9)
  {
    v27 = v26;
    v28 = *(v26 + 20);
    if (v28 == 1)
    {
      SendStatusReport(*a1, 20, 0, 0, 0, 255);
      v28 = *(v27 + 20);
    }

    if (v28 == 2)
    {
      SendStatusReport(*a1, 21, 0, 0, 0, 255);
      v28 = *(v27 + 20);
    }

    if (v28 == 3 && LbsOsaTrace_IsLoggingAllowed(0x13u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Assistance cannot be requested in StandAlone\n", (*&g_MacClockTicksToMsRelation * v29), "PSP", 87, "send_assistance_req", 770);
      LbsOsaTrace_WriteLog(0x13u, __str, v30, 2, 1);
    }

    v31 = &v45;
  }

  else
  {
    v31 = 0;
  }

  v38 = v31;
  LOBYTE(v39) = v9;
  v44 = *a1;
  if (a2 == 2)
  {
    SuplLppExecutePosRsp(&v42);
    goto LABEL_75;
  }

  if (a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_75;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol\n");
    goto LABEL_74;
  }

  SuplRrlpExecutePosRsp(&v42);
  v32 = gps_find_session_info(*a1);
  if (v32)
  {
    *(v32 + 16) = 0;
    goto LABEL_75;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v37 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionId,%u\n", v37);
LABEL_74:
    LbsOsaTrace_WriteLog(0x13u, __str, v10, 0, 1);
  }

LABEL_75:
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v34 = mach_continuous_time();
    v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v34), "PSP", 68, "send_assistance_req");
    LbsOsaTrace_WriteLog(0x13u, __str, v35, 5, 1);
  }

  return result;
}

void send_api_status(unsigned int *a1, int a2, int a3, char a4)
{
  v42 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_17;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status,%u,API,%u\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 73, "send_api_status", a1[2], a1[1]);
    LbsOsaTrace_WriteLog(0x13u, __str, v9, 4, 1);
  }

  v10 = a1[2];
  if (v10 > 0xB)
  {
    goto LABEL_35;
  }

  v11 = 1;
  if (((1 << v10) & 0xCC5) != 0)
  {
    v11 = 0;
    v12 = 1;
    v13 = 1;
    goto LABEL_7;
  }

  if (v10 == 1)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
LABEL_35:
    v11 = 0;
    v12 = 0;
    v13 = 4;
  }

LABEL_7:
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SDL status,%u\n", (*&g_MacClockTicksToMsRelation * v14), "PSP", 77, "ConvertGnsStatusToSdlStatus", v13);
    LbsOsaTrace_WriteLog(0x13u, __str, v15, 3, 1);
  }

  if (a1[1] != 1)
  {
    goto LABEL_22;
  }

  v16 = a1[2];
  if (v16 == 9)
  {
    v20 = *a1;
    v21 = 3;
    goto LABEL_21;
  }

  if (v16 != 3)
  {
    goto LABEL_22;
  }

  session_info = gps_find_session_info(*a1);
  if (session_info)
  {
    v18 = session_info;
    v19 = *(session_info + 20);
    if ((v19 - 2) < 2)
    {
      v20 = *a1;
      v21 = 23;
LABEL_21:
      SendStatusReport(v20, v21, 0, 0, 0, 255);
      goto LABEL_22;
    }

    if (v19 == 1)
    {
      v20 = *a1;
      v21 = 22;
      goto LABEL_21;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx locationinfo,%d\n", (*&g_MacClockTicksToMsRelation * v29), "PSP", 69, "send_api_status", 770, *(v18 + 20));
      LbsOsaTrace_WriteLog(0x13u, __str, v30, 0, 1);
    }

LABEL_22:
    if (v11)
    {
      return;
    }

    if (a1[1] != 1)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 2u, 0, 0))
      {
        return;
      }

      bzero(__str, 0x410uLL);
      v27 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Handling for API,%d is not needed\n", (*&g_MacClockTicksToMsRelation * v27), "PSP", 87, "send_api_status", 770, a1[1]);
      v24 = 2;
      goto LABEL_33;
    }

    v25 = a3 & v12;
    if ((a3 & v12) != 0)
    {
      v26 = 5;
    }

    else
    {
      v26 = v13;
    }

    v38[0] = -1;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v34 = v25;
    v40 = *a1;
    T_GNSS_POSITION_s::T_GNSS_POSITION_s(v32);
    if (a4)
    {
      v28 = 2;
    }

    else
    {
      if ((a4 & 4) == 0)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          return;
        }

        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Positioning method\n");
        goto LABEL_17;
      }

      v28 = 0;
    }

    v32[0] = v26;
    v38[1] = v28;
    v33 = v32;
    v39 = &v33;
    if (a2 == 2)
    {
      SuplLppExecutePosRsp(v38);
      return;
    }

    if (!a2)
    {
      SuplRrlpExecutePosRsp(v38);
      return;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol\n");
      goto LABEL_17;
    }

    return;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v31 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", v31);
LABEL_17:
    v23 = v22;
    v24 = 0;
LABEL_33:
    LbsOsaTrace_WriteLog(0x13u, __str, v23, v24, 1);
  }
}

double send_wlan_meas(uint64_t a1)
{
  v56 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "send_wlan_meas");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 69, "send_wlan_meas", 513);
    v9 = 0;
LABEL_35:
    LbsOsaTrace_WriteLog(0x13u, __str, v8, v9, 1);
    return result;
  }

  v4 = 0;
  v45 = 2;
  v46 = 0;
  v47 = 0;
  v48 = -1;
  v49 = 0xFFFF7FFFFFFFFFFFLL;
  v50 = -1;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v41 = 0;
  v42 = 0;
  v38 = 1791;
  v39 = &v41;
  v43 = &v45;
  v44 = 1;
  v54 = 1;
  v5 = *(a1 + 24);
  if (v5 > 6)
  {
    if (v5 == 7 || v5 == 11)
    {
      v4 = 1;
    }

    else if (v5 != 14)
    {
LABEL_13:
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Unexpected status,%u\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 69, "send_wlan_meas", 770, *(a1 + 24));
        LbsOsaTrace_WriteLog(0x13u, __str, v11, 0, 1);
      }

      v53 = 0;
      if (*(a1 + 24) == 1)
      {
        goto LABEL_38;
      }

LABEL_19:
      v52 = 257;
      goto LABEL_20;
    }

LABEL_18:
    v53 = v4;
    goto LABEL_19;
  }

  if (v5 != 1)
  {
    if (v5 != 2)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v54 = 0;
LABEL_38:
  v20 = *(a1 + 28);
  v21 = operator new[](40 * v20, MEMORY[0x29EDC9418]);
  if (!v21)
  {
    v47 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v36 = mach_continuous_time();
      v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx WLAN meas list allocation failed\n", (*&g_MacClockTicksToMsRelation * v36), "PSP", 69, "send_wlan_meas", 1537);
      LbsOsaTrace_WriteLog(0x13u, __str, v37, 0, 1);
    }

    goto LABEL_33;
  }

  if (v20)
  {
    v22 = v21;
    do
    {
      *(v22 + 3) = 0;
      *v22 = 0;
      *(v22 + 4) = 0x7FFF;
      v22[10] = 0;
      *(v22 + 2) = -1;
      *(v22 + 6) = 0;
      *(v22 + 14) = 255;
      v22[32] = 0;
      *(v22 + 34) = 0xFFFF;
      v22 += 40;
    }

    while (v22 != &v21[40 * v20]);
    v23 = 0;
    v24 = 0;
    v47 = v21;
    v25 = (a1 + 32);
    do
    {
      v26 = a1 + 32 + 48 * v24;
      v27 = v25;
      v28 = v23;
      v29 = 6;
      do
      {
        v30 = *v27++;
        v47[v28++] = v30;
        --v29;
      }

      while (v29);
      v31 = *(v26 + 40);
      v32 = v47;
      v33 = v46;
      if (v31 != 0x7FFF)
      {
        v34 = &v47[40 * v46];
        v34[6] = 1;
        *(v34 + 4) = v31;
      }

      v35 = &v32[40 * v33];
      v35[32] = 1;
      *(v35 + 17) = *(v26 + 42);
      if (*(v26 + 44) == 1)
      {
        *&v32[40 * v33 + 36] = 257;
      }

      v46 = v33 + 1;
      if ((v33 + 1) > 0x3Fu)
      {
        break;
      }

      ++v24;
      v23 += 40;
      v25 += 48;
    }

    while (v24 < *(a1 + 28));
  }

  else
  {
    v47 = v21;
  }

LABEL_20:
  v45 = 0;
  wlan_session_info = find_wlan_session_info();
  v40 = wlan_session_info;
  session_info = gps_find_session_info(wlan_session_info);
  if (session_info)
  {
    *(session_info + 188) = 0;
    if (posp_IsTimerActive(wlan_session_info, 1))
    {
      posp_StopTimer(wlan_session_info, 1);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NoTmrActive\n", (*&g_MacClockTicksToMsRelation * v16), "PSP", 87, "send_wlan_meas", 2052);
      LbsOsaTrace_WriteLog(0x13u, __str, v17, 2, 1);
    }

    v18.n128_f64[0] = SuplLppExecutePosRsp(&v38);
    if (v47)
    {
      MEMORY[0x29C29EAF0](v47, 0x1000C80556990FFLL, v18.n128_f64[0]);
      v47 = 0;
    }

    MEMORY[0x29C29EB20](a1, 0x1000C400624F575, v18);
LABEL_33:
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "PSP", 68, "send_wlan_meas");
    v9 = 5;
    goto LABEL_35;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v14), "PSP", 69, "send_wlan_meas", 2052, wlan_session_info);
    LbsOsaTrace_WriteLog(0x13u, __str, v15, 0, 1);
  }

  if (v47)
  {
    MEMORY[0x29C29EAF0](v47, 0x1000C80556990FFLL);
    v47 = 0;
  }

  MEMORY[0x29C29EB20](a1, 0x1000C400624F575);
  return result;
}

uint64_t NV_Ram_Init(uint64_t result, uint64_t a2, uint64_t a3)
{
  p_NV = result;
  v4 = *(result + 4);
  if (v4 != 22944 || *(result + 22936) != 14)
  {
    v5 = 0;
    *(result + 8) = 0xFFFFFFFFLL;
    *(result + 40) = 0xFFFFFFFFLL;
    *(result + 64) = 0xFFFFFFFFLL;
    *(result + 128) = 0xFFFFFFFFLL;
    *(result + 152) = 0xFFFFFFFFLL;
    *(result + 19200) = 0xFFFFFFFFLL;
    *(result + 80) = 0xFFFFFFFFLL;
    *(result + 19160) = 0xFFFFFFFFLL;
    *(result + 7600) = 0xFFFFFFFFLL;
    *(result + 12856) = 0xFFFFFFFFLL;
    *(result + 5816) = 0xFFFFFFFFLL;
    do
    {
      *(result + 1976 + v5) = 0xFFFFFFFFLL;
      v5 += 120;
    }

    while (v5 != 3840);
    for (i = 0; i != 1200; i += 120)
    {
      *(result + 6400 + i) = 0xFFFFFFFFLL;
    }

    for (j = 0; j != 1728; j += 72)
    {
      *(result + 20392 + j) = 0xFFFFFFFFLL;
    }

    for (k = 0; k != 3456; k += 96)
    {
      *(result + 9400 + k) = 0xFFFFFFFFLL;
    }

    v9 = (result + 15128);
    v10 = xmmword_299728F20;
    v11 = 38;
    v12 = vdupq_n_s64(0x25uLL);
    v13 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v12, v10)).u8[0])
      {
        *(v9 - 14) = 0xFFFFFFFFLL;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x25uLL), *&v10)).i32[1])
      {
        *v9 = 0xFFFFFFFFLL;
      }

      v10 = vaddq_s64(v10, v13);
      v9 += 28;
      v11 -= 2;
    }

    while (v11);
    for (m = 184; m != 1976; m += 56)
    {
      *(result + m) = 0xFFFFFFFFLL;
    }

    for (n = 0; n != 560; n += 56)
    {
      *(result + 5840 + n) = 0xFFFFFFFFLL;
    }

    for (ii = 0; ii != 1152; ii += 48)
    {
      *(result + 19240 + ii) = 0xFFFFFFFFLL;
    }

    for (jj = 0; jj != 1728; jj += 48)
    {
      *(result + 7672 + jj) = 0xFFFFFFFFLL;
    }

    v18 = (result + 13000);
    v19 = xmmword_299728F20;
    v20 = 38;
    v21 = vdupq_n_s64(0x25uLL);
    v22 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v21, v19)).u8[0])
      {
        *(v18 - 7) = 0xFFFFFFFFLL;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x25uLL), *&v19)).i32[1])
      {
        *v18 = 0xFFFFFFFFLL;
      }

      v19 = vaddq_s64(v19, v22);
      v18 += 14;
      v20 -= 2;
    }

    while (v20);
    do
    {
      *(result + 22120 + v20) = 0xFFFFFFFFLL;
      v20 += 32;
    }

    while (v20 != 320);
    *(result + 7648) = 0xFFFFFFFFLL;
    *(result + 12912) = 0xFFFFFFFFLL;
    EvCrt_nd("NV_Ram_Init: Invalid NV", 4, a3, *v19.i64, v4, 22944, *(result + 22936), 14);
    result = p_NV;
  }

  v23 = 0;
  *(result + 4) = 22944;
  *(result + 22936) = 14;
  p_NV_Sect = a2;
  *a2 = xmmword_299761210;
  *(a2 + 16) = xmmword_299761220;
  *(a2 + 32) = xmmword_299761230;
  *(a2 + 48) = xmmword_299761240;
  *(a2 + 64) = xmmword_299761250;
  *(a2 + 80) = 1470649960;
  LODWORD(v24) = 42;
  *(a2 + 192) = 42;
  do
  {
    if (v24 - 1 == v23)
    {
      v25 = *(a2 + 2 * v23);
      LOWORD(v26) = *(result + 4) - v25;
    }

    else
    {
      v27 = (a2 + 2 * v23);
      v25 = *v27;
      LOWORD(v26) = v27[1] - v25;
    }

    if (v26)
    {
      v28 = 0;
      v29 = (result + v25);
      v26 = v26;
      do
      {
        v30 = *v29++;
        v28 += v30;
        --v26;
      }

      while (v26);
    }

    else
    {
      v28 = 0;
    }

    *(a2 + 128 + v23++) = v28;
    v24 = *(a2 + 192);
  }

  while (v23 < v24);
  return result;
}

uint64_t Core_Load_GPS_Eph(int a1, _OWORD *a2)
{
  if ((a1 - 1) > 0x1F)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 120 * (a1 - 1);
  v5 = v4 + 1976;
  v6 = v4 + 1984;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 112);
  if (*v5 != v3)
  {
    return 0;
  }

  v9 = *(v5 + 8);
  v10 = *(v5 + 40);
  a2[1] = *(v5 + 24);
  a2[2] = v10;
  *a2 = v9;
  v11 = *(v5 + 56);
  v12 = *(v5 + 72);
  v13 = *(v5 + 88);
  *(a2 + 92) = *(v5 + 100);
  a2[4] = v12;
  a2[5] = v13;
  a2[3] = v11;
  return 1;
}

uint64_t Core_Load_QZSS_Eph(int a1, _OWORD *a2)
{
  if ((a1 - 193) > 9)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 120 * (a1 - 193);
  v5 = v4 + 6400;
  v6 = v4 + 6408;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 112);
  if (*v5 != v3)
  {
    return 0;
  }

  v9 = *(v5 + 8);
  v10 = *(v5 + 40);
  a2[1] = *(v5 + 24);
  a2[2] = v10;
  *a2 = v9;
  v11 = *(v5 + 56);
  v12 = *(v5 + 72);
  v13 = *(v5 + 88);
  *(a2 + 92) = *(v5 + 100);
  a2[4] = v12;
  a2[5] = v13;
  a2[3] = v11;
  return 1;
}

uint64_t Core_Load_GLON_Eph(int a1, _OWORD *a2)
{
  if ((a1 - 1) > 0x17)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 72 * (a1 - 1);
  v5 = v4 + 20392;
  v6 = v4 + 20400;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 64);
  if (*v5 != v3)
  {
    return 0;
  }

  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  v11 = *(v5 + 56);
  a2[2] = *(v5 + 40);
  a2[3] = v11;
  *a2 = v9;
  a2[1] = v10;
  return 1;
}

uint64_t Core_Load_GAL_Eph(int a1, uint64_t a2)
{
  if ((a1 - 1) > 0x23)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 96 * (a1 - 1);
  v5 = v4 + 9400;
  v6 = v4 + 9408;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 88);
  if (*v5 != v3)
  {
    return 0;
  }

  v9 = *(v5 + 24);
  *a2 = *(v5 + 8);
  *(a2 + 16) = v9;
  v10 = *(v5 + 40);
  v11 = *(v5 + 56);
  v12 = *(v5 + 72);
  *(a2 + 80) = *(v5 + 88);
  *(a2 + 48) = v11;
  *(a2 + 64) = v12;
  *(a2 + 32) = v10;
  return 1;
}

uint64_t Core_Load_BDS_Eph(int a1, uint64_t a2)
{
  if ((a1 - 1) > 0x24)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 112 * (a1 - 1);
  v5 = v4 + 15016;
  v6 = v4 + 15024;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 104);
  if (*v5 != v3)
  {
    return 0;
  }

  v9 = *(v5 + 8);
  v10 = *(v5 + 40);
  *(a2 + 16) = *(v5 + 24);
  *(a2 + 32) = v10;
  *a2 = v9;
  v11 = *(v5 + 56);
  v12 = *(v5 + 72);
  v13 = *(v5 + 88);
  *(a2 + 96) = *(v5 + 104);
  *(a2 + 64) = v12;
  *(a2 + 80) = v13;
  *(a2 + 48) = v11;
  return 1;
}

uint64_t Core_Load_GPS_Alm(int a1, _OWORD *a2)
{
  if ((a1 - 1) > 0x1F)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 56 * (a1 - 1);
  v5 = 55665;
  do
  {
    v6 = *(v4 + 192 + v2) ^ BYTE1(v5);
    v5 = 52845 * (v5 + v6) + 22719;
    v3 += v6;
    ++v2;
  }

  while (v2 != 48);
  if (*(v4 + 184) != v3)
  {
    return 0;
  }

  v7 = *(v4 + 192);
  v8 = *(v4 + 208);
  *(a2 + 28) = *(v4 + 220);
  *a2 = v7;
  a2[1] = v8;
  return 1;
}

uint64_t Core_Load_QZSS_Alm(int a1, _OWORD *a2)
{
  if ((a1 - 193) > 9)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 56 * (a1 - 193);
  v5 = v4 + 5840;
  v6 = v4 + 5848;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 48);
  if (*v5 != v3)
  {
    return 0;
  }

  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  *(a2 + 28) = *(v5 + 36);
  *a2 = v9;
  a2[1] = v10;
  return 1;
}

uint64_t Core_Load_GLON_Alm(int a1, uint64_t a2)
{
  if ((a1 - 1) > 0x17)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 48 * (a1 - 1);
  v5 = v4 + 19240;
  v6 = v4 + 19248;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 40);
  if (*v5 != v3)
  {
    return 0;
  }

  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  *(a2 + 32) = *(v5 + 40);
  *a2 = v9;
  *(a2 + 16) = v10;
  return 1;
}

uint64_t Core_Load_GAL_Alm(int a1, uint64_t a2)
{
  if ((a1 - 1) > 0x23)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 48 * (a1 - 1);
  v5 = v4 + 7672;
  v6 = v4 + 7680;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 40);
  if (*v5 != v3)
  {
    return 0;
  }

  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  *(a2 + 32) = *(v5 + 40);
  *a2 = v9;
  *(a2 + 16) = v10;
  return 1;
}

uint64_t Core_Load_BDS_Alm(int a1, _OWORD *a2)
{
  if ((a1 - 1) > 0x24)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 56 * (a1 - 1);
  v5 = v4 + 12944;
  v6 = v4 + 12952;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 48);
  if (*v5 != v3)
  {
    return 0;
  }

  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  *(a2 + 28) = *(v5 + 36);
  *a2 = v9;
  a2[1] = v10;
  return 1;
}

uint64_t Core_Load_Clk_Drift(int *a1, double *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = p_NV;
  v5 = 55665;
  do
  {
    v6 = *(p_NV + 48 + v2) ^ BYTE1(v5);
    v5 = 52845 * (v5 + v6) + 22719;
    v3 += v6;
    ++v2;
  }

  while (v2 != 16);
  if (*(p_NV + 40) != v3)
  {
    return 0;
  }

  v7 = *(p_NV + 48);
  *a1 = v7;
  if (v7)
  {
    if ((v7 - 619315200) > 0x49D3FFFF)
    {
      return 0;
    }
  }

  *a2 = *(v4 + 56);
  return 1;
}

uint64_t Core_Load_ApxTime(uint64_t a1, _WORD *a2, void *a3, _DWORD *a4)
{
  v7 = 0;
  v8 = 0;
  v20[3] = *MEMORY[0x29EDCA608];
  v19 = 0.0;
  v9 = p_NV;
  v10 = 55665;
  do
  {
    v11 = *(p_NV + 16 + v7) ^ BYTE1(v10);
    v10 = 52845 * (v10 + v11) + 22719;
    v8 += v11;
    ++v7;
  }

  while (v7 != 24);
  if (*(p_NV + 8) != v8)
  {
    API_Get_UTC_Cor(1, &v19);
    *(v9 + 8) = 0xFFFFFFFFLL;
    *(v9 + 24) = 0;
    *(v9 + 28) = 0;
    v12 = -0.5;
    if (v19 > 0.0)
    {
      v12 = 0.5;
    }

    v13 = v19 + v12;
    if (v19 + v12 <= 2147483650.0)
    {
      if (v13 >= -2147483650.0)
      {
        v14 = v13;
      }

      else
      {
        LOWORD(v14) = 0;
      }
    }

    else
    {
      LOWORD(v14) = -1;
    }

    *(v9 + 30) = v14;
    *(v9 + 16) = 134217472;
  }

  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  EvLog("GN_GPS_Read_UTC:  Failed");
  API_Get_UTC_Cor(1, &v19);
  *(v9 + 8) = 0xFFFFFFFFLL;
  *(v9 + 24) = 0;
  *(v9 + 28) = 0;
  *(v9 + 16) = 134217472;
  v15 = -0.5;
  if (v19 > 0.0)
  {
    v15 = 0.5;
  }

  v16 = v19 + v15;
  if (v19 + v15 <= 2147483650.0)
  {
    if (v16 >= -2147483650.0)
    {
      v17 = v16;
    }

    else
    {
      LOWORD(v17) = 0;
    }
  }

  else
  {
    LOWORD(v17) = -1;
  }

  *(v9 + 30) = v17;
  memset(v20, 0, 24);
  Debug_Log_ApxTime(v20);
  return 0;
}

uint64_t Core_Save_Clk_Drift(int a1, int a2, double a3)
{
  v3 = p_NV;
  if (a1 && (!a2 || (a2 - 619315200) <= 0x49D3FFFF))
  {
    v5 = 0;
    LODWORD(v6) = 0;
    *(p_NV + 48) = a2;
    *(v3 + 56) = a3;
    v7 = 55665;
    do
    {
      v8 = *(v3 + 48 + v5) ^ BYTE1(v7);
      v7 = 52845 * (v7 + v8) + 22719;
      v6 = (v6 + v8);
      ++v5;
    }

    while (v5 != 16);
    *(v3 + 40) = v6;
    return 1;
  }

  else
  {
    result = 0;
    *(p_NV + 40) = 0xFFFFFFFFLL;
    *(v3 + 56) = 0;
    *(v3 + 48) = 0;
  }

  return result;
}

uint64_t Core_Save_ApxTime(unsigned int a1, int a2, __int16 a3, int a4, double a5)
{
  v39[1] = *MEMORY[0x29EDCA608];
  v39[0] = 0.0;
  v5 = p_NV;
  if (a2)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 != 1)
  {
    v18 = 0xFFFFFFFFLL;
LABEL_39:
    *(v5 + 8) = v18;
    return v6;
  }

  API_Get_UTC_Cor(1, v39);
  v11 = 0;
  v12 = 0;
  v13 = 55665;
  do
  {
    v14 = *(v5 + 16 + v11) ^ BYTE1(v13);
    v13 = 52845 * (v13 + v14) + 22719;
    v12 += v14;
    ++v11;
  }

  while (v11 != 24);
  if (*(v5 + 8) != v12)
  {
    *(v5 + 8) = 0xFFFFFFFFLL;
    *(v5 + 24) = 0;
    *(v5 + 28) = 0;
    v15 = -0.5;
    if (v39[0] > 0.0)
    {
      v15 = 0.5;
    }

    v16 = v39[0] + v15;
    if (v39[0] + v15 <= 2147483650.0)
    {
      if (v16 >= -2147483650.0)
      {
        v17 = v16;
      }

      else
      {
        LOWORD(v17) = 0;
      }
    }

    else
    {
      LOWORD(v17) = -1;
    }

    *(v5 + 30) = v17;
    *(v5 + 16) = 134217472;
  }

  if (a4)
  {
    v19 = *(v5 + 20);
    if (v19)
    {
      *(v5 + 16) += (a4 - v19) / 50000;
    }
  }

  v20 = TOW_stat_ms[a2];
  if (v20 <= *(v5 + 16))
  {
    GPS_To_UTC_Time(&v32, &v33, &v34, &v35, &v36, &v37, v38, a3, a5, v39[0]);
    v21 = 0;
    LODWORD(v18) = 0;
    v22 = -0.5;
    if (a5 * 1000.0 <= 0.0)
    {
      v23 = -0.5;
    }

    else
    {
      v23 = 0.5;
    }

    v24 = a5 * 1000.0 + v23;
    if (v24 >= -2147483650.0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0x80000000;
    }

    if (v24 > 2147483650.0)
    {
      v25 = 0x7FFFFFFF;
    }

    *(v5 + 24) = v25;
    *(v5 + 28) = a3;
    if (v39[0] > 0.0)
    {
      v22 = 0.5;
    }

    v26 = v39[0] + v22;
    *(v5 + 16) = v20;
    v27 = v26;
    if (v26 < -2147483650.0)
    {
      LOWORD(v27) = 0;
    }

    if (v26 <= 2147483650.0)
    {
      v28 = v27;
    }

    else
    {
      v28 = -1;
    }

    *(v5 + 30) = v28;
    *(v5 + 20) = a4;
    v29 = 55665;
    do
    {
      v30 = *(v5 + 16 + v21) ^ BYTE1(v29);
      v29 = 52845 * (v29 + v30) + 22719;
      v18 = (v18 + v30);
      ++v21;
    }

    while (v21 != 24);
    goto LABEL_39;
  }

  return 0;
}

uint64_t Core_Save_GPS_Eph(uint64_t a1, char a2, __int128 *a3)
{
  v3 = p_NV;
  v4 = p_NV + 120 * a1 + 1856;
  if (a2)
  {
    *v4 = 0xFFFFFFFFLL;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 0u;
    *(v4 + 100) = 0u;
  }

  else
  {
    v6 = a1;
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = *a3;
    v10 = a3[1];
    *(p_NV + 120 * a1 + 1896) = a3[2];
    *(v4 + 24) = v10;
    *(v4 + 8) = v9;
    v11 = a3[3];
    v12 = a3[4];
    v13 = a3[5];
    *(v4 + 100) = *(a3 + 92);
    *(v4 + 88) = v13;
    *(v4 + 72) = v12;
    *(v4 + 56) = v11;
    v14 = v3 + 120 * a1 + 1864;
    v15 = 55665;
    do
    {
      v16 = *(v14 + v7) ^ BYTE1(v15);
      v15 = 52845 * (v15 + v16) + 22719;
      v8 = (v8 + v16);
      ++v7;
    }

    while (v7 != 112);
    *v4 = v8;
    if (Is_GPS_BinEph_Real(a3))
    {
      EE_Set_GPS_BinEph(v6, a3);
    }
  }

  return 1;
}

uint64_t Core_Save_QZSS_Eph(uint64_t a1, char a2, __int128 *a3)
{
  v3 = p_NV;
  v4 = p_NV + 120 * a1 - 16760;
  if (a2)
  {
    *v4 = 0xFFFFFFFFLL;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 0u;
    *(v4 + 100) = 0u;
  }

  else
  {
    v6 = a1;
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = *a3;
    v10 = a3[1];
    *(p_NV + 120 * a1 - 16720) = a3[2];
    *(v4 + 24) = v10;
    *(v4 + 8) = v9;
    v11 = a3[3];
    v12 = a3[4];
    v13 = a3[5];
    *(v4 + 100) = *(a3 + 92);
    *(v4 + 88) = v13;
    *(v4 + 72) = v12;
    *(v4 + 56) = v11;
    v14 = v3 + 120 * a1 - 16752;
    v15 = 55665;
    do
    {
      v16 = *(v14 + v7) ^ BYTE1(v15);
      v15 = 52845 * (v15 + v16) + 22719;
      v8 = (v8 + v16);
      ++v7;
    }

    while (v7 != 112);
    *v4 = v8;
    if (Is_GPS_BinEph_Real(a3))
    {
      EE_Set_GPS_BinEph(v6, a3);
    }
  }

  return 1;
}

uint64_t Core_Save_GAL_Eph(uint64_t a1, char a2, __int128 *a3)
{
  v3 = p_NV;
  v4 = p_NV + 96 * a1 + 9304;
  if (a2)
  {
    *v4 = 0xFFFFFFFFLL;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 87) = 0;
  }

  else
  {
    v6 = a1;
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = *a3;
    *(p_NV + 96 * a1 + 9328) = a3[1];
    *(v4 + 8) = v9;
    v10 = a3[2];
    v11 = a3[3];
    v12 = a3[4];
    *(v4 + 88) = *(a3 + 10);
    *(v4 + 72) = v12;
    *(v4 + 56) = v11;
    *(v4 + 40) = v10;
    v13 = v3 + 96 * a1 + 9312;
    v14 = 55665;
    do
    {
      v15 = *(v13 + v7) ^ BYTE1(v14);
      v14 = 52845 * (v14 + v15) + 22719;
      v8 = (v8 + v15);
      ++v7;
    }

    while (v7 != 88);
    *v4 = v8;
    if (Is_GAL_IntEph_Real(a3))
    {
      EE_Set_GAL_IntEph(v6, a3);
    }
  }

  return 1;
}

uint64_t Core_Save_BDS_Eph(uint64_t a1, char a2, __int128 *a3)
{
  v3 = p_NV;
  v4 = p_NV + 112 * a1 + 14904;
  if (a2)
  {
    *v4 = 0xFFFFFFFFLL;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 0u;
    *(v4 + 104) = 0;
  }

  else
  {
    v6 = a1;
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = *a3;
    v10 = a3[1];
    *(p_NV + 112 * a1 + 14944) = a3[2];
    *(v4 + 24) = v10;
    *(v4 + 8) = v9;
    v11 = a3[3];
    v12 = a3[4];
    v13 = a3[5];
    *(v4 + 104) = *(a3 + 24);
    *(v4 + 88) = v13;
    *(v4 + 72) = v12;
    *(v4 + 56) = v11;
    v14 = v3 + 112 * a1 + 14912;
    v15 = 55665;
    do
    {
      v16 = *(v14 + v7) ^ BYTE1(v15);
      v15 = 52845 * (v15 + v16) + 22719;
      v8 = (v8 + v16);
      ++v7;
    }

    while (v7 != 104);
    *v4 = v8;
    if (Is_BDS_IntEph_Real(a3))
    {
      EE_Set_BDS_IntEph(v6, a3);
    }
  }

  return 1;
}

BOOL Core_Load_SBAS_Apx(int a1, int *a2, int *a3)
{
  v3 = 0;
  v4 = p_NV + 22128;
  v5 = 1;
  while (1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 55665;
    v9 = p_NV + 22120 + 32 * v3;
    do
    {
      v10 = *(v4 + v6) ^ BYTE1(v8);
      v8 = 52845 * (v8 + v10) + 22719;
      v7 += v10;
      ++v6;
    }

    while (v6 != 24);
    if (*v9 == v7 && *(v9 + 12) == a1)
    {
      break;
    }

    v5 = v3 < 9;
    v4 += 32;
    if (++v3 == 10)
    {
      return 0;
    }
  }

  *a2 = *(v9 + 8);
  v11 = *(v9 + 16);
  a3[2] = *(v9 + 24);
  *a3 = v11;
  return v5;
}

uint64_t Core_Save_SBAS_Apx(int a1, char a2, int a3, int *a4)
{
  v4 = p_NV + 22120;
  if (a2)
  {
    v5 = 0;
    for (i = p_NV + 22128; ; i += 32)
    {
      v7 = 0;
      v8 = 0;
      v9 = 55665;
      v10 = v4 + 32 * v5;
      do
      {
        v11 = *(i + v7) ^ BYTE1(v9);
        v9 = 52845 * (v9 + v11) + 22719;
        v8 += v11;
        ++v7;
      }

      while (v7 != 24);
      if (*v10 == v8 && *(v10 + 12) == a1)
      {
        break;
      }

      if (++v5 == 10)
      {
        return 0;
      }
    }

    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *v10 = 0xFFFFFFFFLL;
    return 1;
  }

  v12 = 0;
  v13 = (p_NV + 22128);
  v14 = -1;
  while (1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 55665;
    v18 = v4 + 32 * v12;
    do
    {
      v19 = v13[v15] ^ BYTE1(v17);
      v17 = 52845 * (v17 + v19) + 22719;
      v16 += v19;
      ++v15;
    }

    while (v15 != 24);
    if (*v18 == v16)
    {
      break;
    }

    v14 = v12;
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_21:
    ++v12;
    v13 += 32;
    if (v12 == 10)
    {
      return 0;
    }
  }

  v20 = *(v18 + 12);
  if ((v20 - 159) < 0xFFFFFFD9 || v20 == a1)
  {
    v14 = v12;
  }

  if (v14 < 0)
  {
    goto LABEL_21;
  }

LABEL_23:
  LODWORD(v23) = 0;
  *(v18 + 8) = a3;
  *(v18 + 12) = a1;
  v24 = *a4;
  *(v18 + 24) = a4[2];
  *(v18 + 16) = v24;
  v25 = 55665;
  v26 = 24;
  do
  {
    v27 = *v13++;
    v28 = v27 ^ BYTE1(v25);
    v25 = 52845 * (v25 + v28) + 22719;
    v23 = (v23 + v28);
    --v26;
  }

  while (v26);
  *v18 = v23;
  return 1;
}

uint64_t Core_Load_TTick_Cal(int a1, int a2, int a3, unsigned int *a4, unsigned __int8 *a5)
{
  v5 = 0;
  v6 = 0;
  v7 = p_NV;
  v8 = p_NV + 20480;
  v9 = p_NV + 22856;
  *a4 = *(p_NV + 22856) - a3;
  *a5 = -1;
  v10 = 55665;
  do
  {
    v11 = *(v9 + v5) ^ BYTE1(v10);
    v10 = 52845 * (v10 + v11) + 22719;
    v6 += v11;
    ++v5;
  }

  while (v5 != 16);
  if (*(v7 + 22848) != v6)
  {
    return 0;
  }

  v12 = *a4;
  if ((*a4 & 0x80000000) != 0)
  {
    v12 = -v12;
  }

  if (v12 > 0x1388)
  {
    return 0;
  }

  v13 = 0;
  v14 = a1 - *(v8 + 2380);
  if (v14 < 14400000)
  {
    v15 = a2 - *(v8 + 2384);
    if (v15 < 14400000)
    {
      v16 = v14 - v15;
      if (v14 - v15 < 0)
      {
        v16 = v15 - v14;
      }

      if (v16 <= 0x1388)
      {
        *a5 = ((1172812403 * v14) >> 46) + (1172812403 * v14 < 0);
        return 1;
      }

      return 0;
    }
  }

  return v13;
}

uint64_t Core_Save_Inhib_EE(BOOL *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = p_NV;
  v5 = 1;
  do
  {
    if (a1[v2])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v3 |= v6;
    v5 *= 2;
    ++v2;
  }

  while (v2 != 32);
  v7 = 0;
  v8 = 0;
  *(p_NV + 22880) = v3;
  v9 = 1;
  do
  {
    if (a1[v7 + 32])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v8 |= v10;
    v9 *= 2;
    ++v7;
  }

  while (v7 != 24);
  v11 = 0;
  v12 = 0;
  v4[2861] = v8;
  v13 = 1;
  do
  {
    if (a1[v11 + 129])
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v12 |= v14;
    v13 *= 2;
    ++v11;
  }

  while (v11 != 10);
  v15 = 0;
  v16 = 0;
  v4[2862] = v12;
  v17 = 1;
  do
  {
    if (a1[v15 + 139])
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v16 |= v18;
    v17 *= 2;
    ++v15;
  }

  while (v15 != 39);
  v19 = 0;
  v20 = 0;
  v4[2863] = v16;
  v21 = 1;
  do
  {
    if (a1[v19 + 92])
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v20 |= v22;
    v21 *= 2;
    ++v19;
  }

  while (v19 != 37);
  v23 = 0;
  v24 = 0;
  v4[2864] = v20;
  v25 = 1;
  do
  {
    if (a1[v23 + 56])
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v24 |= v26;
    v25 *= 2;
    ++v23;
  }

  while (v23 != 36);
  v4[2865] = v24;
  v4[2866] = a2;
  EvLog_v("Core_Save_Inhib_EE: Time 0x%X G %x R %x Q %x S %X B %X E %X", a2, v3, v8, v12, v16, v20, v24);
  v27 = 0;
  LODWORD(v28) = 0;
  v29 = 55665;
  do
  {
    v30 = *(v4 + v27 + 22880) ^ BYTE1(v29);
    v29 = 52845 * (v29 + v30) + 22719;
    v28 = (v28 + v30);
    ++v27;
  }

  while (v27 != 56);
  v4[2859] = v28;
  return 1;
}

BOOL Core_Load_Inhib_EE(BOOL *a1, uint64_t *a2)
{
  v2 = 0;
  LODWORD(v3) = 0;
  v4 = p_NV;
  v5 = 55665;
  do
  {
    v6 = *(p_NV + 22880 + v2) ^ BYTE1(v5);
    v5 = 52845 * (v5 + v6) + 22719;
    v3 = (v3 + v6);
    ++v2;
  }

  while (v2 != 56);
  v7 = *(p_NV + 22872);
  if (v7 == v3)
  {
    v8 = 0;
    v9 = *(p_NV + 22880);
    v10 = 1;
    do
    {
      if ((v10 & v9) != 0)
      {
        a1[v8] = 1;
      }

      v10 *= 2;
      ++v8;
    }

    while (v8 != 32);
    v11 = 0;
    v12 = *(v4 + 22888);
    v13 = 1;
    do
    {
      if ((v13 & v12) != 0)
      {
        a1[v11 + 32] = 1;
      }

      v13 *= 2;
      ++v11;
    }

    while (v11 != 24);
    v14 = 0;
    v15 = *(v4 + 22896);
    v16 = 1;
    do
    {
      if ((v16 & v15) != 0)
      {
        a1[v14 + 129] = 1;
      }

      v16 *= 2;
      ++v14;
    }

    while (v14 != 10);
    v17 = 0;
    v18 = *(v4 + 22904);
    v19 = 1;
    do
    {
      if ((v19 & v18) != 0)
      {
        a1[v17 + 139] = 1;
      }

      v19 *= 2;
      ++v17;
    }

    while (v17 != 39);
    v20 = 0;
    v21 = *(v4 + 22912);
    v22 = 1;
    do
    {
      if ((v22 & v21) != 0)
      {
        a1[v20 + 92] = 1;
      }

      v22 *= 2;
      ++v20;
    }

    while (v20 != 37);
    v23 = 0;
    v24 = *(v4 + 22920);
    v25 = 1;
    do
    {
      if ((v25 & v24) != 0)
      {
        a1[v23 + 56] = 1;
      }

      v25 *= 2;
      ++v23;
    }

    while (v23 != 36);
    v26 = *(v4 + 22928);
    *a2 = v26;
    EvLog_v("Core_Load_Inhib_EE: Time 0x%X G %x R %x Q %x S %X B %X E %X", v26, *(v4 + 22880), *(v4 + 22888), *(v4 + 22896), *(v4 + 22904), *(v4 + 22912), *(v4 + 22920));
  }

  return v7 == v3;
}

uint64_t GN_GPS_Clear_NV_Data(unsigned __int8 *a1, char *a2)
{
  result = 0;
  v157 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    return result;
  }

  v4 = a2;
  if (!a2)
  {
    return result;
  }

  v5 = 0;
  v6 = *(&xmmword_2A1926A40 + 1);
  v8 = qword_2A1926950;
  v7 = unk_2A1926958;
  v9 = qword_2A1926930;
  v10 = qword_2A1926938;
  v11 = v156;
  p_src = &__src;
  v154 = &v157;
  v152[1] = &__src;
  __src = 10;
  v12 = 42;
  memset(v156, 0, sizeof(v156));
  do
  {
    v152[0] = v11 + 1;
    *v11 = v12;
    v11 = v152[0];
    if (v152[0] >= v154)
    {
      v11 = p_src;
      v152[0] = p_src;
    }

    v12 = asc_2997BC75C[++v5];
  }

  while (v5 != 8);
  v152[0] = v11 + 1;
  *v11 = 10;
  if (v152[0] >= v154)
  {
    v152[0] = p_src;
  }

  v13 = mach_continuous_time();
  sprintf_10u(v152, (*&g_MacClockTicksToMsRelation * v13));
  v14 = v152[0]++;
  v15 = 32;
  *v14 = 32;
  if (v152[0] >= v154)
  {
    v16 = p_src;
  }

  else
  {
    v16 = v152[0];
  }

  v17 = 1u;
  do
  {
    v152[0] = v16 + 1;
    *v16 = v15;
    v16 = v152[0];
    if (v152[0] >= v154)
    {
      v16 = p_src;
      v152[0] = p_src;
    }

    v15 = a0GnGpsClearNvD[v17++];
  }

  while (v17 != 31);
  if (!strcmp("VHOT", v4) || !strcmp("HOT", v4))
  {
    v151 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v33 = 0;
    goto LABEL_52;
  }

  if (!strcmp("HOST", v4))
  {
    v151 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v33 = 1;
    goto LABEL_52;
  }

  v150 = v9;
  if (!strcmp("WARM", v4))
  {
    v24 = 0;
    v19 = 0;
    v20 = 0;
    v26 = 0;
    v27 = 0;
    v32 = 0;
    v31 = 0;
    v30 = 0;
    v33 = 0;
    goto LABEL_124;
  }

  if (!strcmp("COLD", v4))
  {
    v32 = 0;
    v26 = 0;
    v19 = 0;
    *(v6 + 8) = 0;
    v30 = 1;
    v31 = 1;
    v27 = 1;
    v25 = 1;
    v20 = 1;
LABEL_122:
    v24 = 1;
LABEL_123:
    *(v6 + 10) = 0;
    *(v6 + 297) = 0;
    *(v8 + 4) = 0;
    v79 = vdupq_n_s64(0x4163125300000000uLL);
    *(v8 + 800) = v79;
    *(v8 + 816) = v79;
    *(v8 + 832) = 0x4163125300000000;
    *(v8 + 896) = v79;
    *(v8 + 912) = 0;
    *(v7 + 4) = 0;
    *(v7 + 800) = v79;
    *(v7 + 816) = v79;
    *(v7 + 832) = 0x4163125300000000;
    *(v7 + 896) = v79;
    *(v7 + 912) = 0;
    g_GN_GNSS_Nav_Data = 0;
    v33 = 1;
    if ((v25 & 1) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_124;
  }

  if (!strcmp("FACT", v4))
  {
    v30 = 1;
    v31 = 1;
    v32 = 1;
    v27 = 1;
    v26 = 1;
    v25 = 1;
    v20 = 1;
    v19 = 1;
    goto LABEL_122;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  while (1)
  {
    v29 = v4[v18];
    if (v29 > 0x48)
    {
      if (v4[v18] > 0x53u)
      {
        switch(v29)
        {
          case 'T':
            v27 = 1;
            break;
          case 'U':
            v22 = 1;
            break;
          case 'V':
            v20 = 1;
            break;
          default:
            goto LABEL_165;
        }
      }

      else if (v29 == 73 || v29 == 75)
      {
        v23 = 1;
      }

      else
      {
        if (v29 != 80)
        {
          goto LABEL_165;
        }

        v28 = 1;
      }

      goto LABEL_47;
    }

    if (v4[v18] > 0x44u)
    {
      switch(v29)
      {
        case 'E':
          v25 = 1;
          break;
        case 'F':
          v26 = 1;
          break;
        case 'H':
          v21 = 1;
          break;
        default:
          goto LABEL_165;
      }

      goto LABEL_47;
    }

    if (v29 == 65)
    {
      v24 = 1;
      goto LABEL_47;
    }

    if (v29 != 67)
    {
      break;
    }

    v19 = 1;
LABEL_47:
    if (++v18 == 16)
    {
      goto LABEL_48;
    }
  }

  if (v4[v18])
  {
LABEL_165:
    v121 = 70;
    v122 = 1u;
    do
    {
      v152[0] = v16 + 1;
      *v16 = v121;
      v16 = v152[0];
      if (v152[0] >= v154)
      {
        v16 = p_src;
        v152[0] = p_src;
      }

      v121 = aFailedInvalidI[v122++];
    }

    while (v122 != 27);
    v123 = *v4;
    if (*v4)
    {
      v124 = (v4 + 1);
      do
      {
        v152[0] = v16 + 1;
        *v16 = v123;
        v16 = v152[0];
        if (v152[0] >= v154)
        {
          v16 = p_src;
          v152[0] = p_src;
        }

        v125 = *v124++;
        v123 = v125;
      }

      while (v125);
    }

    v126 = 34;
    v127 = 1u;
    do
    {
      v152[0] = v16 + 1;
      *v16 = v126;
      v16 = v152[0];
      if (v152[0] >= v154)
      {
        v16 = p_src;
        v152[0] = p_src;
      }

      v126 = asc_2997BC7A3[v127++];
    }

    while (v127 != 4);
    v128 = *(&xmmword_2A1926A70 + 1);
    v129 = v16 - p_src;
    v130 = *(*(&xmmword_2A1926A70 + 1) + 24);
    v131 = **(&xmmword_2A1926A70 + 1);
    v132 = &__src;
    do
    {
      v133 = v130 - v131;
      if (v129 >= v133)
      {
        v134 = v133;
      }

      else
      {
        v134 = v129;
      }

      memcpy(v131, v132, v134);
      v131 = (*v128 + v134);
      *v128 = v131;
      v130 = v128[3];
      if (v131 >= v130)
      {
        v131 = v128[2];
        *v128 = v131;
      }

      v132 += v134;
      v64 = __OFSUB__(v129, v134);
      v129 -= v134;
    }

    while (!((v129 < 0) ^ v64 | (v129 == 0)));
    v135 = xmmword_2A1926A70;
    v136 = LODWORD(v152[0]) - p_src;
    v137 = *(xmmword_2A1926A70 + 24);
    v138 = *xmmword_2A1926A70;
    v139 = &__src;
    do
    {
      v140 = v137 - v138;
      if (v136 >= v140)
      {
        v141 = v140;
      }

      else
      {
        v141 = v136;
      }

      memcpy(v138, v139, v141);
      v138 = (*v135 + v141);
      *v135 = v138;
      v137 = v135[3];
      if (v138 >= v137)
      {
        v138 = v135[2];
        *v135 = v138;
      }

      v139 += v141;
      v64 = __OFSUB__(v136, v141);
      v136 -= v141;
    }

    while (!((v136 < 0) ^ v64 | (v136 == 0)));
    v142 = xmmword_2A1926A80;
    v143 = LODWORD(v152[0]) - p_src;
    v144 = *(xmmword_2A1926A80 + 24);
    v145 = *xmmword_2A1926A80;
    v146 = &__src;
    do
    {
      v147 = v144 - v145;
      if (v143 >= v147)
      {
        v148 = v147;
      }

      else
      {
        v148 = v143;
      }

      memcpy(v145, v146, v148);
      v145 = (*v142 + v148);
      *v142 = v145;
      v144 = v142[3];
      if (v145 >= v144)
      {
        v145 = v142[2];
        *v142 = v145;
      }

      v146 += v148;
      v64 = __OFSUB__(v143, v148);
      v143 -= v148;
    }

    while (!((v143 < 0) ^ v64 | (v143 == 0)));
    GNSS_Event_Log_Ctl(*(&xmmword_2A1926A70 + 1));
    GNSS_Event_Log_Ctl(xmmword_2A1926A70);
    GNSS_Event_Log_Ctl(xmmword_2A1926A80);
    return 0;
  }

LABEL_48:
  v30 = v24 & v21;
  v31 = v24 & v22;
  v32 = v24 & v23;
  if (v28)
  {
    goto LABEL_123;
  }

  v33 = 0;
  if ((v25 & 1) == 0)
  {
LABEL_155:
    v35 = 0;
    if ((v24 & 1) == 0)
    {
      goto LABEL_156;
    }

LABEL_135:
    v100 = (v10 + 7016);
    v101 = 184;
    do
    {
      v102 = &a1[v101];
      *(v102 + 12) = 0;
      *(v102 + 1) = 0uLL;
      *(v102 + 2) = 0uLL;
      *v102 = 0uLL;
      *(v100 + 28) = 0uLL;
      v101 += 56;
      *v100 = 0uLL;
      v100[1] = 0uLL;
      v100 = (v100 + 44);
    }

    while (v101 != 1976);
    v103 = 0;
    *(v6 + 63) = 0u;
    *(v6 + 47) = 0u;
    v104 = a1 + 5840;
    do
    {
      *(v104 + 12) = 0;
      *(v104 + 1) = 0uLL;
      *(v104 + 2) = 0uLL;
      *v104 = 0uLL;
      v104 += 56;
      v105 = (v10 + 10768 + v103);
      *(v105 + 28) = 0uLL;
      v103 += 44;
      *v105 = 0uLL;
      v105[1] = 0uLL;
    }

    while (v103 != 440);
    v106 = 0;
    *(v6 + 97) = 0;
    *(v6 + 89) = 0;
    v107 = a1 + 19240;
    do
    {
      *(v107 + 28) = 0uLL;
      *v107 = 0uLL;
      *(v107 + 1) = 0uLL;
      v107 += 48;
      v108 = v10 + 15352 + v106;
      *(v108 + 32) = 0;
      v106 += 36;
      *v108 = 0uLL;
      *(v108 + 16) = 0uLL;
    }

    while (v106 != 864);
    v109 = 0;
    *(v6 + 131) = 0;
    *(v6 + 123) = 0;
    *(v6 + 139) = 0;
    v110 = v10 + 23072;
    do
    {
      v111 = &a1[v109 + 7672];
      *(v111 + 28) = 0uLL;
      *v111 = 0uLL;
      *(v111 + 1) = 0uLL;
      *(v110 + 31) = 0;
      v109 += 48;
      *v110 = 0uLL;
      *(v110 + 16) = 0uLL;
      v110 += 36;
    }

    while (v109 != 1728);
    v112 = 0;
    *(v6 + 218) = 0;
    *(v6 + 202) = 0u;
    *(v6 + 186) = 0u;
    v113 = a1 + 12944;
    do
    {
      *(v113 + 12) = 0;
      *(v113 + 1) = 0uLL;
      *(v113 + 2) = 0uLL;
      *v113 = 0uLL;
      v113 += 56;
      v114 = (v10 + 31920 + v112);
      *(v114 + 28) = 0uLL;
      v112 += 44;
      *v114 = 0uLL;
      v114[1] = 0uLL;
    }

    while (v112 != 1628);
    v115 = 0;
    *(v6 + 289) = 0;
    *(v6 + 260) = 0u;
    *(v6 + 276) = 0u;
    do
    {
      v116 = &a1[v115 + 22120];
      *v116 = 0;
      *(v116 + 1) = 0;
      *(v116 + 6) = 0;
      *(v116 + 2) = 0;
      v115 += 32;
    }

    while (v115 != 320);
    *(v6 + 148) = 0;
    *(v10 + 37876) = 0;
    *(v10 + 37844) = 0u;
    *(v10 + 37860) = 0u;
    *(v10 + 37812) = 0u;
    *(v10 + 37828) = 0u;
    *(v10 + 37780) = 0u;
    *(v10 + 37796) = 0u;
    *(v10 + 37748) = 0u;
    *(v10 + 37764) = 0u;
    *(v10 + 37716) = 0u;
    *(v10 + 37732) = 0u;
    *(v10 + 37700) = 0u;
    v151 = 1;
    if ((v32 & 1) == 0)
    {
      goto LABEL_148;
    }

LABEL_157:
    *(a1 + 18) = 0;
    *(a1 + 8) = 0u;
    *(v6 + 13) = 0;
    *(v10 + 8424) = 0u;
    v38 = 1;
    if ((v31 & 1) == 0)
    {
      goto LABEL_158;
    }

LABEL_149:
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(v6 + 14) = 0;
    *(a1 + 4808) = 0;
    *(a1 + 1201) = 0u;
    *(a1 + 1200) = 0u;
    *(v6 + 147) = 0;
    *(a1 + 3234) = 0;
    *(a1 + 1616) = 0;
    *(a1 + 807) = 0u;
    *(v6 + 222) = 0;
    *(a1 + 958) = 0;
    *(a1 + 478) = 0u;
    *(v6 + 149) = 0;
    *(v10 + 8440) = 0u;
    *(v10 + 8456) = 0;
    *(v10 + 16216) = 0;
    *(v10 + 16224) = 0u;
    *(v10 + 16240) = 0;
    *(v10 + 24368) = 0;
    *(v10 + 24374) = 0;
    v117 = v10 + 33548;
    *(v10 + 33548) = 0u;
    v39 = 1;
    *(v117 + 16) = 0;
    if ((v30 & 1) == 0)
    {
      goto LABEL_150;
    }

LABEL_159:
    *(a1 + 108) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 19160) = 0u;
    *(a1 + 19176) = 0u;
    *(a1 + 4798) = 0;
    *(a1 + 5816) = 0u;
    *(a1 + 5830) = 0;
    *(a1 + 475) = 0u;
    *(a1 + 476) = 0u;
    *(a1 + 477) = 0u;
    *(a1 + 12856) = 0u;
    *(a1 + 12872) = 0u;
    *(a1 + 12888) = 0u;
    a1[12904] = 0;
    v40 = 1;
    *(v6 + 297) = 0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_160;
    }

LABEL_151:
    *(a1 + 22838) = 0;
    *(a1 + 22808) = 0u;
    *(a1 + 22824) = 0u;
    *(a1 + 22776) = 0u;
    *(a1 + 22792) = 0u;
    *(a1 + 22744) = 0u;
    *(a1 + 22760) = 0u;
    *(a1 + 22712) = 0u;
    *(a1 + 22728) = 0u;
    *(a1 + 22680) = 0u;
    *(a1 + 22696) = 0u;
    *(a1 + 22648) = 0u;
    *(a1 + 22664) = 0u;
    *(a1 + 22616) = 0u;
    *(a1 + 22632) = 0u;
    *(a1 + 22584) = 0u;
    *(a1 + 22600) = 0u;
    *(a1 + 22552) = 0u;
    *(a1 + 22568) = 0u;
    *(a1 + 22520) = 0u;
    *(a1 + 22536) = 0u;
    *(a1 + 22488) = 0u;
    *(a1 + 22504) = 0u;
    *(a1 + 22456) = 0u;
    *(a1 + 22472) = 0u;
    v34 = 1;
    *(a1 + 22440) = 0u;
    if ((v26 & 1) == 0)
    {
      goto LABEL_152;
    }

LABEL_161:
    *(a1 + 9) = 0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(v6 + 8) = 0;
    v36 = 1;
    if ((v27 & 1) == 0)
    {
      goto LABEL_162;
    }

LABEL_153:
    v149 = v19;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    *(a1 + 8) = 0;
    *(a1 + 3) = 0;
    *(v6 + 148) = 0;
    *(v6 + 297) = 0;
    *(v6 + 1) = 0;
    *(v6 + 5) = 0;
    v118 = v33;
    v119 = v4;
    v120 = v38;
    mach_continuous_time();
    v38 = v120;
    v4 = v119;
    v33 = v118;
    *v150 = 0;
    *(v150 + 4) = 0;
    *(v150 + 64) = 0;
    v37 = 1;
    *(v150 + 60) = 0;
    if (v149)
    {
      goto LABEL_163;
    }

    goto LABEL_52;
  }

LABEL_124:
  v80 = 0;
  v81 = v10;
  do
  {
    v82 = &a1[v80 + 1976];
    *(v82 + 28) = 0;
    *(v82 + 5) = 0uLL;
    *(v82 + 6) = 0uLL;
    *(v82 + 3) = 0uLL;
    *(v82 + 4) = 0uLL;
    *(v82 + 1) = 0uLL;
    *(v82 + 2) = 0uLL;
    *v82 = 0uLL;
    *(v81 + 196) = 0uLL;
    *(v81 + 184) = 0uLL;
    *(v81 + 168) = 0uLL;
    *(v81 + 152) = 0uLL;
    *(v81 + 136) = 0uLL;
    *(v81 + 120) = 0uLL;
    *(v81 + 104) = 0uLL;
    v83 = v81 + 3560;
    *(v81 + 3560) = 0uLL;
    *(v81 + 3576) = 0uLL;
    *(v81 + 3592) = 0uLL;
    *(v81 + 3608) = 0uLL;
    *(v81 + 3624) = 0uLL;
    *(v81 + 3640) = 0uLL;
    v80 += 120;
    v81 += 108;
    *(v83 + 92) = 0uLL;
  }

  while (v80 != 3840);
  v84 = 0;
  *(v6 + 31) = 0u;
  *(v6 + 15) = 0u;
  v85 = (v10 + 8608);
  do
  {
    v86 = &a1[v84 + 6400];
    *(v86 + 28) = 0;
    *(v86 + 5) = 0uLL;
    *(v86 + 6) = 0uLL;
    *(v86 + 3) = 0uLL;
    *(v86 + 4) = 0uLL;
    *(v86 + 1) = 0uLL;
    *(v86 + 2) = 0uLL;
    *v86 = 0uLL;
    *(v85 + 92) = 0uLL;
    v85[4] = 0uLL;
    v85[5] = 0uLL;
    v85[2] = 0uLL;
    v85[3] = 0uLL;
    *v85 = 0uLL;
    v85[1] = 0uLL;
    v87 = v85 + 1080;
    *(v85 + 1080) = 0uLL;
    *(v85 + 1096) = 0uLL;
    *(v85 + 1112) = 0uLL;
    *(v85 + 1128) = 0uLL;
    *(v85 + 1144) = 0uLL;
    *(v85 + 1160) = 0uLL;
    v84 += 120;
    v85 = (v85 + 108);
    *(v87 + 92) = 0uLL;
  }

  while (v84 != 1200);
  v88 = 0;
  *(v6 + 87) = 0;
  *(v6 + 79) = 0;
  v89 = (v10 + 11224);
  v90 = (v10 + 12760);
  do
  {
    v91 = &a1[v88 + 20392];
    *(v91 + 8) = 0;
    *(v91 + 2) = 0uLL;
    *(v91 + 3) = 0uLL;
    *v91 = 0uLL;
    *(v91 + 1) = 0uLL;
    *(v89 + 46) = 0uLL;
    v89[1] = 0uLL;
    v89[2] = 0uLL;
    *v89 = 0uLL;
    v89 += 4;
    *(v90 + 92) = 0uLL;
    v90[4] = 0uLL;
    v90[5] = 0uLL;
    v90[2] = 0uLL;
    v90[3] = 0uLL;
    v88 += 72;
    *v90 = 0uLL;
    v90[1] = 0uLL;
    v90 = (v90 + 108);
  }

  while (v88 != 1728);
  v92 = 0;
  *(v6 + 107) = 0;
  *(v6 + 99) = 0;
  *(v6 + 115) = 0;
  v93 = v10 + 16736;
  do
  {
    v94 = &a1[v92 + 9400];
    *(v94 + 4) = 0uLL;
    *(v94 + 5) = 0uLL;
    *(v94 + 2) = 0uLL;
    *(v94 + 3) = 0uLL;
    *v94 = 0uLL;
    *(v94 + 1) = 0uLL;
    *(v93 + 79) = 0;
    *(v93 + 48) = 0uLL;
    *(v93 + 64) = 0uLL;
    *(v93 + 16) = 0uLL;
    *(v93 + 32) = 0uLL;
    *v93 = 0uLL;
    v95 = v93 + 3168;
    *(v93 + 3168) = 0uLL;
    *(v93 + 3184) = 0uLL;
    *(v93 + 3200) = 0uLL;
    *(v93 + 3216) = 0uLL;
    *(v93 + 3232) = 0uLL;
    v92 += 96;
    v93 += 88;
    *(v95 + 79) = 0;
  }

  while (v92 != 3456);
  *(v6 + 182) = 0;
  *(v6 + 166) = 0u;
  *(v6 + 150) = 0u;
  v96 = a1 + 15016;
  v97 = v10 + 28220;
  v98 = 37;
  do
  {
    *(v96 + 92) = 0uLL;
    *(v96 + 4) = 0uLL;
    *(v96 + 5) = 0uLL;
    *(v96 + 2) = 0uLL;
    *(v96 + 3) = 0uLL;
    *v96 = 0uLL;
    *(v96 + 1) = 0uLL;
    v96 += 112;
    v99 = v97 - 3700;
    *(v99 + 96) = 0;
    *(v99 + 64) = 0uLL;
    *(v99 + 80) = 0uLL;
    *(v99 + 32) = 0uLL;
    *(v99 + 48) = 0uLL;
    *v97 = 0uLL;
    *(v97 + 16) = 0uLL;
    *(v97 + 32) = 0uLL;
    *(v97 + 48) = 0uLL;
    *(v97 + 64) = 0uLL;
    *(v97 + 80) = 0uLL;
    *(v97 + 96) = 0;
    v97 += 100;
    *v99 = 0uLL;
    *(v99 + 16) = 0uLL;
    --v98;
  }

  while (v98);
  *(v6 + 252) = 0;
  *(v6 + 239) = 0u;
  *(v6 + 223) = 0u;
  *(v6 + 148) = 0;
  *(v10 + 38928) = 0u;
  *(v10 + 38912) = 0u;
  *(v10 + 38896) = 0u;
  *(v10 + 38880) = 0u;
  *(v10 + 38864) = 0u;
  *(v10 + 38848) = 0u;
  *(v10 + 38832) = 0u;
  *(v10 + 38816) = 0u;
  *(v10 + 38800) = 0u;
  *(v10 + 38784) = 0u;
  *(v10 + 38768) = 0u;
  *(v10 + 38944) = 0;
  *(v10 + 39124) = 0u;
  *(v10 + 39140) = 0u;
  *(v10 + 39156) = 0u;
  *(v10 + 39172) = 0u;
  *(v10 + 39188) = 0u;
  *(v10 + 39204) = 0u;
  *(v10 + 39220) = 0u;
  *(v10 + 39236) = 0u;
  *(v10 + 39252) = 0u;
  *(v10 + 39268) = 0u;
  *(v10 + 39284) = 0u;
  *(v10 + 39300) = 0;
  *(v10 + 37696) = 0;
  *(v10 + 37680) = 0u;
  *(v10 + 37664) = 0u;
  *(v10 + 37648) = 0u;
  *(v10 + 37632) = 0u;
  *(v10 + 37616) = 0u;
  *(v10 + 37600) = 0u;
  *(v10 + 37584) = 0u;
  *(v10 + 37568) = 0u;
  *(v10 + 37552) = 0u;
  *(v10 + 37536) = 0u;
  *(v10 + 37520) = 0u;
  *(v10 + 37504) = 0u;
  *(v10 + 37488) = 0u;
  *(v10 + 37472) = 0u;
  *(v10 + 37456) = 0u;
  *(v10 + 37440) = 0u;
  *(v10 + 37424) = 0u;
  *(v10 + 37408) = 0u;
  *(v10 + 37392) = 0u;
  *(v10 + 37376) = 0u;
  *(v10 + 37360) = 0u;
  v35 = 1;
  *(v10 + 37344) = 0u;
  if (v24)
  {
    goto LABEL_135;
  }

LABEL_156:
  v151 = 0;
  if (v32)
  {
    goto LABEL_157;
  }

LABEL_148:
  v38 = 0;
  if (v31)
  {
    goto LABEL_149;
  }

LABEL_158:
  v39 = 0;
  if (v30)
  {
    goto LABEL_159;
  }

LABEL_150:
  v40 = 0;
  if (v20)
  {
    goto LABEL_151;
  }

LABEL_160:
  v34 = 0;
  if (v26)
  {
    goto LABEL_161;
  }

LABEL_152:
  v36 = 0;
  if (v27)
  {
    goto LABEL_153;
  }

LABEL_162:
  v37 = 0;
  if (v19)
  {
LABEL_163:
    *(a1 + 1428) = 0u;
    *(a1 + 5716) = 0;
  }

LABEL_52:
  if (g_GncPStateInfo != 8)
  {
    v41 = v35;
    v42 = a1;
    v43 = v33;
    v44 = v38;
    GncP07_08WriteNVStore(0x59A0uLL, v42);
    v38 = v44;
    v35 = v41;
    v33 = v43;
  }

  if (((v34 | v36 | v40 | v39 | v38 | v151 | v35 | v37 | v33) & 1) == 0)
  {
    goto LABEL_74;
  }

  if (g_GN_GPS_Data_p_list <= 5)
  {
    if ((g_GN_GPS_Data_p_list - 1) < 3)
    {
      goto LABEL_74;
    }

    if (g_GN_GPS_Data_p_list == 4)
    {
LABEL_71:
      v45 = 1;
      goto LABEL_73;
    }

    if (g_GN_GPS_Data_p_list == 5)
    {
      goto LABEL_69;
    }

    goto LABEL_120;
  }

  if (g_GN_GPS_Data_p_list > 8)
  {
    if (g_GN_GPS_Data_p_list == 9)
    {
      goto LABEL_72;
    }

    if (g_GN_GPS_Data_p_list == 10 || g_GN_GPS_Data_p_list == 11)
    {
      goto LABEL_69;
    }

LABEL_120:
    EvCrt_Illegal_Default("GN_GPS_Clear_NV_Data", 3300);
    goto LABEL_74;
  }

  if (g_GN_GPS_Data_p_list == 6)
  {
LABEL_72:
    v45 = 3;
    goto LABEL_73;
  }

  if (g_GN_GPS_Data_p_list == 7)
  {
    goto LABEL_71;
  }

  if (g_GN_GPS_Data_p_list != 8)
  {
    goto LABEL_120;
  }

LABEL_69:
  v45 = 2;
LABEL_73:
  LODWORD(g_GN_GPS_Data_p_list) = v45;
LABEL_74:
  v46 = 73;
  v47 = v152[0];
  v48 = 1u;
  do
  {
    v152[0] = v47 + 1;
    *v47 = v46;
    v47 = v152[0];
    if (v152[0] >= v154)
    {
      v47 = p_src;
      v152[0] = p_src;
    }

    v46 = aItems[v48++];
  }

  while (v48 != 10);
  v49 = *v4;
  if (*v4)
  {
    v50 = (v4 + 1);
    do
    {
      v152[0] = v47 + 1;
      *v47 = v49;
      v47 = v152[0];
      if (v152[0] >= v154)
      {
        v47 = p_src;
        v152[0] = p_src;
      }

      v51 = *v50++;
      v49 = v51;
    }

    while (v51);
  }

  v52 = 0;
  v53 = 34;
  do
  {
    v152[0] = v47 + 1;
    *v47 = v53;
    v47 = v152[0];
    if (v152[0] >= v154)
    {
      v47 = p_src;
      v152[0] = p_src;
    }

    v53 = asc_2997BC7C6[++v52];
  }

  while (v52 != 2);
  v54 = 0;
  v55 = 42;
  do
  {
    v152[0] = v47 + 1;
    *v47 = v55;
    v47 = v152[0];
    if (v152[0] >= v154)
    {
      v47 = p_src;
      v152[0] = p_src;
    }

    v55 = asc_2997BC75C[++v54];
  }

  while (v54 != 8);
  v152[0] = v47 + 1;
  *v47 = 10;
  v56 = v152[0];
  if (v152[0] >= v154)
  {
    v152[0] = p_src;
    v56 = p_src;
  }

  v57 = *(&xmmword_2A1926A70 + 1);
  v58 = v56 - p_src;
  v59 = *(*(&xmmword_2A1926A70 + 1) + 24);
  v60 = **(&xmmword_2A1926A70 + 1);
  v61 = &__src;
  do
  {
    v62 = v59 - v60;
    if (v58 >= v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = v58;
    }

    memcpy(v60, v61, v63);
    v60 = (*v57 + v63);
    *v57 = v60;
    v59 = v57[3];
    if (v60 >= v59)
    {
      v60 = v57[2];
      *v57 = v60;
    }

    v61 += v63;
    v64 = __OFSUB__(v58, v63);
    v58 -= v63;
  }

  while (!((v58 < 0) ^ v64 | (v58 == 0)));
  v65 = xmmword_2A1926A70;
  v66 = LODWORD(v152[0]) - p_src;
  v67 = *(xmmword_2A1926A70 + 24);
  v68 = *xmmword_2A1926A70;
  v69 = &__src;
  do
  {
    v70 = v67 - v68;
    if (v66 >= v70)
    {
      v71 = v70;
    }

    else
    {
      v71 = v66;
    }

    memcpy(v68, v69, v71);
    v68 = (*v65 + v71);
    *v65 = v68;
    v67 = v65[3];
    if (v68 >= v67)
    {
      v68 = v65[2];
      *v65 = v68;
    }

    v69 += v71;
    v64 = __OFSUB__(v66, v71);
    v66 -= v71;
  }

  while (!((v66 < 0) ^ v64 | (v66 == 0)));
  v72 = xmmword_2A1926A80;
  v73 = LODWORD(v152[0]) - p_src;
  v74 = *(xmmword_2A1926A80 + 24);
  v75 = *xmmword_2A1926A80;
  v76 = &__src;
  do
  {
    v77 = v74 - v75;
    if (v73 >= v77)
    {
      v78 = v77;
    }

    else
    {
      v78 = v73;
    }

    memcpy(v75, v76, v78);
    v75 = (*v72 + v78);
    *v72 = v75;
    v74 = v72[3];
    if (v75 >= v74)
    {
      v75 = v72[2];
      *v72 = v75;
    }

    v76 += v78;
    v64 = __OFSUB__(v73, v78);
    v73 -= v78;
  }

  while (!((v73 < 0) ^ v64 | (v73 == 0)));
  GNSS_Event_Log_Ctl(*(&xmmword_2A1926A70 + 1));
  GNSS_Nav_Debug_Ctl(xmmword_2A1926A70);
  GNSS_GNB_Debug_Ctl(xmmword_2A1926A80);
  return 1;
}

uint64_t Horz_Meas_Update(unsigned int a1, double *a2, double *a3, unsigned int a4, double *a5, _BOOL8 a6, _WORD *a7)
{
  v39[33] = *MEMORY[0x29EDCA608];
  if (*(a5 + 1) >= 1 && (*(a5 + 16) = 0, *a5 == 1))
  {
    v35 = 0.0;
    v11 = a5[8];
    v39[0] = 0.0;
    sinval = 0.0;
    cosval = 1.0;
    if (!R8_EQ(a5 + 8, v39))
    {
      v14 = __sincos_stret(v11);
      cosval = v14.__cosval;
      v39[0] = 1.57079633;
      if (R8_EQ(a5 + 8, v39))
      {
        cosval = 0.0;
        sinval = 1.0;
      }

      else
      {
        sinval = v14.__sinval;
      }
    }

    v15 = *a2;
    v16 = __sincos_stret(*a2);
    v17 = 0;
    v18 = 1.0 / sqrt(v16.__sinval * v16.__sinval * -0.00669437999 + 1.0);
    v19 = a2[2];
    v20 = v16.__cosval * (v19 + v18 * 6378137.0);
    if (v20 < 1.0)
    {
      v20 = 1.0;
    }

    v21 = a5[4];
    a5[11] = (v15 - a5[3]) * (v19 + v18 * (v18 * v18) * 6335439.33);
    a5[12] = (a2[1] - v21) * v20;
    v22 = 1;
    v23 = a5 + 6;
    do
    {
      v37 = 0;
      memset(v36, 0, sizeof(v36));
      v24 = a3[2];
      v25 = a3[1];
      *(v36 + a1) = sinval * a3[3] + cosval * *a3;
      v26 = a3[5];
      *(v36 + a1 + 1) = sinval * a3[4] + cosval * v25;
      v27 = v22;
      *(&v36[1] + a1) = sinval * v26 + cosval * v24;
      *(v36 + a4) = sinval * a5[12] + cosval * a5[11];
      umeas(a6, a4, v23[v17], v36, v39, v38, &v35, a5[13]);
      v28 = v35;
      if (v35 <= 0.0)
      {
        *a5 = 0;
        *(a5 + 16) = 1;
        ++*a7;
      }

      else
      {
        v28 = v23[v17] * (v35 * (v39[a4] * v39[a4]));
      }

      v22 = 0;
      a5[v17 + 14] = v28;
      v29 = -sinval;
      v17 = 1;
      sinval = cosval;
      cosval = v29;
    }

    while ((v27 & 1) != 0);
    v30 = *a5;
  }

  else
  {
    v30 = 0;
  }

  return v30 & 1;
}

void NK_Final_Check(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, double a7, double a8)
{
  v423 = *MEMORY[0x29EDCA608];
  v12 = a2 + 22920;
  *(a2 + 31296) = *(a2 + 800);
  v13 = *(a2 + 816);
  *(a2 + 31320) = *(a2 + 912);
  *(a2 + 31312) = v13;
  *(a2 + 31336) = *(a2 + 928);
  v14 = *(a2 + 24777);
  v15 = v14 - *(a2 + 24778);
  v17 = v14 > 1 && v15 == 2;
  v18 = v14 - v17;
  v395 = *(a2 + 22992) == 1 && (*(a2 + 23000) - 3) < 2;
  if (*(a2 + 964) > 1)
  {
    v25 = a1;
    v26 = *(a1 + 11032);
    v19 = v18;
    if (v26 >= 0x3D)
    {
      if (v26 < 0x12D)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      *(a2 + 964) = v27;
      v19 = v18;
    }
  }

  else
  {
    v19 = v14 - v17;
    if (v18 <= 3)
    {
      v20 = 0;
      v21 = 0;
      v22 = a2 + 3056;
      do
      {
        if (*(v22 + v20 - 96) == 1)
        {
          v23 = *(v22 + 4 * v20);
          if ((v23 - 1) >= 0x1D)
          {
            if (v23)
            {
              v24 = v18;
              EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
              v18 = v24;
            }

            else
            {
              ++v21;
            }
          }
        }

        ++v20;
      }

      while (v20 != 48);
      v29 = v21 > 1 && v15 == 2;
      v19 = v21 - v29;
    }

    v25 = a1;
    if (v19 >= 4 && (*(a1 + 232) & 1) != 0)
    {
      goto LABEL_37;
    }

    if (*(v12 + 72) == 1 && *(v12 + 76) == 1)
    {
      v30 = !v395;
      if (*(a2 + 23040) > 900000000.0)
      {
        v30 = 1;
      }

      if ((v30 & 1) == 0)
      {
LABEL_37:
        *(a2 + 964) = 2;
        *(a1 + 235) = 0;
      }
    }
  }

  v369 = v18;
  v376 = v19;
  if ((*(v25 + 128) & 1) == 0)
  {
    v31 = 0;
    while (*(a2 + 24136 + v31) <= 1.0e18)
    {
      v31 += 8;
      if (v31 == 88)
      {
        goto LABEL_46;
      }
    }

    *(v25 + 128) = 1;
    *(v25 + 132) = 80;
  }

LABEL_46:
  v32 = *&ClkBiasOrigVar[*(a2 + 640)];
  *(a2 + 25600) = v32;
  v33 = (a2 + 24136);
  *(v12 + 2672) = 0;
  *(a2 + 25608) = 0;
  *(v12 + 2676) = 255;
  *&v417 = 0;
  v385 = (a2 + 736);
  if (R8_EQ((a2 + 736), &v417) || (v34 = *v33, *v33 >= v32))
  {
    v35 = 0;
    v36 = 0.0;
  }

  else
  {
    v35 = 1;
    *(v12 + 2672) = 1;
    v36 = *(a2 + 736);
    *(a2 + 25608) = v36;
    *(v12 + 2676) = 0;
    *(a2 + 25600) = v34;
    v32 = v34;
  }

  *&v417 = 0;
  if (!R8_EQ((a2 + 744), &v417))
  {
    v37 = *(a2 + 24144);
    if (v37 < v32)
    {
      v35 = 2;
      *(v12 + 2672) = 2;
      v36 = *(a2 + 744);
      *(a2 + 25608) = v36;
      *(v12 + 2676) = 1;
      *(a2 + 25600) = v37;
      v32 = v37;
    }
  }

  *&v417 = 0;
  if (R8_EQ((a2 + 752), &v417) || (v39 = *(a2 + 24152), v39 >= v32))
  {
    if (!v35)
    {
      v40 = a1;
      goto LABEL_105;
    }

    *&v417 = 0;
    v40 = a1;
    if (R8_EQ((a2 + 25608), &v417))
    {
      goto LABEL_105;
    }

    if (v35 == 1)
    {
      v42 = 0.0;
      goto LABEL_68;
    }

    v35 = 2;
    v41 = 1;
  }

  else
  {
    *(v12 + 2672) = 4;
    v36 = *(a2 + 752);
    *(a2 + 25608) = v36;
    *(v12 + 2676) = 2;
    *(a2 + 25600) = v39;
    *&v417 = 0;
    v40 = a1;
    if (R8_EQ((a2 + 25608), &v417))
    {
      goto LABEL_105;
    }

    v41 = 0;
    v35 = 4;
  }

  *&v417 = 0;
  v42 = 0.0;
  if (!R8_EQ(v385, &v417))
  {
    v42 = vabdd_f64(v36, *v385);
  }

  if (v41)
  {
    v43 = 0.0;
    v35 = 2;
    v40 = a1;
    goto LABEL_76;
  }

  v40 = a1;
LABEL_68:
  *&v417 = 0;
  v43 = 0.0;
  if (!R8_EQ((a2 + 744), &v417))
  {
    v43 = vabdd_f64(v36, *(a2 + 744));
  }

  if (v35 == 4)
  {
    *&v417 = 0;
    if (R8_EQ(v385, &v417) || (v415[0] = 0.0, R8_EQ((a2 + 744), v415)))
    {
      *&v417 = 0;
      if (R8_EQ(v385, &v417))
      {
        *&v417 = 0;
        if (R8_EQ((a2 + 744), &v417))
        {
          goto LABEL_105;
        }

        goto LABEL_82;
      }

      goto LABEL_88;
    }

    v46 = v42 > v43;
    v47 = 2;
LABEL_97:
    if (v46)
    {
      v48 = v47;
    }

    else
    {
      v48 = 1;
    }

    if (v46)
    {
      v49 = 1;
    }

    else
    {
      v49 = v47;
    }

    goto LABEL_103;
  }

LABEL_76:
  *&v417 = 0;
  v44 = 0.0;
  if (!R8_EQ((a2 + 752), &v417))
  {
    v44 = vabdd_f64(v36, *(a2 + 752));
  }

  if (v35 == 2)
  {
    *&v417 = 0;
    if (R8_EQ(v385, &v417) || (v415[0] = 0.0, R8_EQ((a2 + 752), v415)))
    {
      *&v417 = 0;
      if (R8_EQ(v385, &v417))
      {
        goto LABEL_86;
      }

LABEL_88:
      v45 = 1;
      goto LABEL_104;
    }

    v46 = v42 > v44;
    v47 = 4;
    goto LABEL_97;
  }

  *&v417 = 0;
  if (!R8_EQ((a2 + 744), &v417))
  {
    v415[0] = 0.0;
    if (!R8_EQ((a2 + 752), v415))
    {
      if (v43 <= v44)
      {
        v48 = 2;
      }

      else
      {
        v48 = 4;
      }

      if (v43 <= v44)
      {
        v49 = 4;
      }

      else
      {
        v49 = 2;
      }

LABEL_103:
      NK_Final_Check_ClkBias(v48, v40, a2);
      v45 = v49;
      goto LABEL_104;
    }
  }

  *&v417 = 0;
  if (!R8_EQ((a2 + 744), &v417))
  {
LABEL_82:
    v45 = 2;
    goto LABEL_104;
  }

LABEL_86:
  *&v417 = 0;
  if (R8_EQ((a2 + 752), &v417))
  {
    goto LABEL_105;
  }

  v45 = 4;
LABEL_104:
  NK_Final_Check_ClkBias(v45, v40, a2);
LABEL_105:
  v50 = *(a2 + 760);
  v372 = (a2 + 744);
  if (fabs(v50) <= 0.000006)
  {
    if (*v12 == 1)
    {
      v52 = (*(a2 + 22944) + v50 * -299792458.0) * (*(a2 + 22944) + v50 * -299792458.0);
      v53 = *(a2 + 22960);
      if (v52 / v53 > 25.0)
      {
        if (*(v12 + 2229) < 4u || *(a2 + 977) < 0x1Au || *(v12 + 2249) != 1 || *(a2 + 24160) >= v53 || *(a2 + 964) < 2)
        {
          *(a2 + 760) = a7;
          v386 = 1;
          *(v40 + 128) = 1;
          v51 = 71;
          goto LABEL_107;
        }

        *v12 = 0;
        *(p_NA + 8) = 0;
        EvCrt_v("NK_Final_Check: Ext ClkD is ignored in favor of PE estimated ClkD.");
      }
    }

    v386 = 0;
    goto LABEL_117;
  }

  *(a2 + 760) = a7;
  v386 = 1;
  *(v40 + 128) = 1;
  v51 = 81;
LABEL_107:
  *(v40 + 132) = v51;
LABEL_117:
  v400 = 1.0e12;
  v401 = 0x426D1A94A2000000;
  v54 = 0.0;
  v55 = 0.0;
  v56 = 0.0;
  if ((v395 & *(v12 + 72)) == 1)
  {
    v57 = *(a2 + 23064);
    v55 = 0.0;
    if (v57 < 100000000.0)
    {
      v58 = cos(*(a2 + 23056));
      v59 = *(a2 + 23072);
      v60 = v58 * v58 * (v57 - v59);
      v61 = v59 + v60;
      v62 = 1.0;
      if (v61 < 1.0)
      {
        v61 = 1.0;
      }

      v63 = v57 - v60;
      if (v63 >= 1.0)
      {
        v62 = v63;
      }

      v64 = v61 + 1000000.0;
      v65 = v62 + 1000000.0;
      v400 = v62 + 1000000.0;
      v401 = *&v64;
      v66 = *(a2 + 800) - *(a2 + 23016);
      if (v66 >= 1.57079633)
      {
        v67 = 3.14159265;
      }

      else
      {
        if (v66 >= -1.57079633)
        {
          goto LABEL_128;
        }

        v67 = -3.14159265;
      }

      v66 = v67 - v66;
LABEL_128:
      v68 = v66 * 6378137.0 * (v66 * 6378137.0);
      v69 = *(a2 + 808) - *(a2 + 23024);
      if (v69 >= 3.14159265)
      {
        v70 = -6.28318531;
      }

      else
      {
        if (v69 >= -3.14159265)
        {
LABEL_133:
          v55 = v68 / v64;
          v56 = v69 * 6378137.0 * *(a2 + 904) * (v69 * 6378137.0 * *(a2 + 904)) / v65;
          goto LABEL_134;
        }

        v70 = 6.28318531;
      }

      v69 = v69 + v70;
      goto LABEL_133;
    }
  }

LABEL_134:
  if (*(v12 + 200) == 1)
  {
    v71 = *(a2 + 23160);
    v72 = !v395;
    if (v71 >= 250000.0)
    {
      v72 = 1;
    }

    if ((v72 & 1) == 0)
    {
      v73 = *(a2 + 816) - *(a2 + 23144);
      v54 = v73 * v73 / (v71 + 100.0);
    }
  }

  v74 = *(a2 + 816) - *(a2 + 824);
  v75 = fmax(v55, v56) > 49.0;
  if (v54 > 64.0)
  {
    v75 = 1;
  }

  v370 = v74 - 60001;
  if ((v74 - 60001) < 0xFFFF0DCF)
  {
    v75 = 1;
  }

  v390 = v75;
  if (v75)
  {
    EvLog_v("NKFC: KF Reset 83:  Position problem !  SVNum %d  LLH %f %f %d m   PosTest %f %f %f", *(v12 + 1857), *(a2 + 800) * 57.2957795, *(a2 + 808) * 57.2957795, v74, v55, v56, v54);
    if (*(a2 + 960) == 1 && (v395 & *(v12 + 72)) == 1)
    {
      v76 = *(a2 + 23064);
      if (v76 < 100000000.0)
      {
        *(a2 + 800) = *(v12 + 96);
        *(a2 + 24176) = v76;
        *(a2 + 24184) = v76;
        *(a2 + 24264) = v76;
        *(a2 + 24272) = v76;
        v77 = sqrt(v76);
        *(a2 + 24352) = v77;
        *(a2 + 24360) = v77;
      }
    }

    if (*(v12 + 200) == 1)
    {
      v78 = *(a2 + 23144);
      v74 = v78 - *(a2 + 824);
      v79 = *(a2 + 23160);
      v80 = sqrt(v79);
    }

    else
    {
      v74 = 0;
      v78 = *(a2 + 824);
      v80 = 1000.0;
      v79 = 1000000.0;
    }

    *(a2 + 816) = v78;
    *(a2 + 24192) = v79;
    *(a2 + 24280) = v79;
    *(a2 + 24368) = v80;
    v81 = 1;
    *(v40 + 128) = 1;
    *(v40 + 132) = 83;
  }

  else
  {
    v81 = *(v40 + 128);
  }

  v382 = *(a2 + 944);
  v403 = 0u;
  v404 = 0u;
  memset(v405, 0, sizeof(v405));
  v406 = 0u;
  v407 = 0.0;
  v82 = a8 * 99930819.3 * (a8 * 99930819.3);
  v83 = &loc_299728000;
  v384 = a3;
  v371 = (a2 + 752);
  if ((*v12 & 1) == 0)
  {
    v84 = (a2 + 24160);
LABEL_159:
    if (v81)
    {
      v373 = 0;
      v378 = 0;
      *v84 = v82;
      goto LABEL_168;
    }

    goto LABEL_167;
  }

  v84 = (a2 + 24160);
  if (*(v12 + 4) != 1)
  {
    goto LABEL_159;
  }

  v85 = *(a2 + 22960);
  v86 = v85 + 225.0;
  v87 = *(a2 + 22944);
  v88 = (v87 - *(a2 + 760) * 299792458.0) * (v87 - *(a2 + 760) * 299792458.0);
  v89 = v88 / (v85 + 225.0);
  v90 = v85 + v88 * 0.1;
  if (v81)
  {
    if (v89 > 11.0)
    {
      *(a2 + 24160) = v86;
      EvCrt_v("NK_Final_Check: Clock drift check failed", v90);
      v83 = &loc_299728000;
      v378 = 0;
      *(a2 + 760) = v87 / 299792458.0;
      v373 = 1;
      goto LABEL_168;
    }

    if (v89 > 1.0)
    {
LABEL_165:
      v373 = 0;
      v378 = 0;
      *v84 = v90;
      goto LABEL_168;
    }
  }

  else
  {
    if (v89 > 16.0)
    {
      *(a2 + 24160) = v86;
      *(&v404 + 1) = v85 + 225.0;
      EvCrt_v("NK_Final_Check: Clock drift check failed", v90);
      v83 = &loc_299728000;
      *(a2 + 760) = v87 / 299792458.0;
      *(v40 + 168) = 4;
      v373 = 1;
      v378 = 1;
      goto LABEL_168;
    }

    if (*v84 > v90)
    {
      goto LABEL_165;
    }
  }

LABEL_167:
  v373 = 0;
  v378 = 0;
LABEL_168:
  v91 = *(v40 + 128);
  if ((*v12 & 1) == 0)
  {
    if (*(v40 + 128))
    {
      goto LABEL_191;
    }

    if (*v84 > v82 + v82)
    {
      if (*(a2 + 964) <= 1)
      {
        v91 = 1;
        *(v40 + 128) = 1;
        v92 = 72;
LABEL_184:
        *(v40 + 132) = v92;
        v95 = 1;
LABEL_192:
        v379 = v95;
        goto LABEL_193;
      }

      *(a2 + 760) = a7;
      *(a2 + 24160) = v82;
      *(&v404 + 1) = v82;
      *(v40 + 168) = 5;
      v378 = 1;
    }

LABEL_176:
    v93 = *(v40 + 20);
    if (v93 > 8)
    {
      v94 = 1000000000.0;
    }

    else
    {
      v94 = dbl_2997612F0[v93];
    }

    if (*(a2 + 24200) <= v94 && *(a2 + 24208) <= v94 && *(a2 + 24216) <= v94)
    {
      v91 = 0;
    }

    else
    {
      if (*(a2 + 964) < 2)
      {
        v91 = 1;
        *(v40 + 128) = 1;
        v92 = 73;
        goto LABEL_184;
      }

      v96 = &v406;
      v97 = 3;
      v98 = a2;
      do
      {
        v98[86] = 0.0;
        v98[114] = 0.0;
        v99 = 100000000.0;
        v98[89] = 0.0;
        if (v93 <= 8)
        {
          v99 = dbl_299761338[v93];
        }

        *v96++ = v99;
        v98[3025] = v99;
        ++v98;
        --v97;
      }

      while (v97);
      v91 = 0;
      *(a2 + 952) = 0;
      *(a2 + 936) = 0u;
      *(v40 + 168) = 6;
      v378 = 1;
    }

LABEL_191:
    v95 = v390;
    goto LABEL_192;
  }

  v379 = v390;
  if (!*(v40 + 128))
  {
    goto LABEL_176;
  }

LABEL_193:
  if (v74 <= -501)
  {
    v100 = (v74 * v74) / *(a2 + 24192) / 9.0;
    if (v100 > 1.2)
    {
      v101 = 0;
      v102 = v100 + -1.0;
      v103 = a2 + 24176;
      do
      {
        v104 = *(v103 + v101 * 8);
        v415[v101] = v102 * v104;
        *(v103 + v101 * 8) = v104 + v102 * v104;
        ++v101;
      }

      while (v101 != 3);
      if (v74 > -1001)
      {
        *(a2 + 24400) = *(v40 + 7280) + (*(a2 + 24400) - *(v40 + 7280)) * v100;
        v105 = (v40 + 7256);
        v106 = (a2 + 24352);
        v107 = 3;
        do
        {
          v108 = *v105++;
          v109 = *(v106 - 22) + v108;
          *(v106 - 11) = v109;
          *v106++ = sqrt(v109);
          --v107;
        }

        while (v107);
        if (!v91)
        {
          v422 = 0;
          v420 = 0u;
          v421 = 0u;
          v418 = 0u;
          v419 = 0u;
          v417 = 0u;
          v110 = v415[0];
          if (v415[0] <= v415[1])
          {
            v110 = v415[1];
          }

          if (v110 <= v415[2])
          {
            v111 = v415[2];
          }

          else
          {
            v111 = v110;
          }

          for (i = 5; i != 8; ++i)
          {
            *(&v417 + i) = 0x3FF0000000000000;
            if (v111 > 0.0)
            {
              v113 = v83;
              rnk1_core((a1 + 872), i, v111, &v417, v416);
              v83 = v113;
            }

            *(&v417 + i) = 0;
          }

          LOBYTE(v91) = *(a1 + 128);
        }
      }

      else
      {
        *(a2 + 816) = *(a2 + 824);
        if (*(a2 + 964) > 1)
        {
          if (v91)
          {
            LOBYTE(v390) = 1;
          }

          else
          {
            *(v405 + 8) = *(a2 + 24176);
            *(&v405[1] + 1) = *(a2 + 24192);
            *(v40 + 168) = 7;
            LOBYTE(v390) = 1;
            v378 = 1;
          }
        }

        else
        {
          LOBYTE(v91) = 1;
          *(v40 + 128) = 1;
          *(v40 + 132) = 74;
          LOBYTE(v390) = 1;
          v379 = 1;
        }
      }
    }
  }

  v393 = a2 + 800;
  if (*(a2 + 960))
  {
    v114 = 4.0e10;
  }

  else
  {
    v114 = 1.0e16;
  }

  if (*(v12 + 200))
  {
    v115 = (a2 + 24192);
    if (*(v12 + 204) == 1 && v395)
    {
      v116 = *(a2 + 23160);
      v117 = v116 * 2.25 + 5625.0;
      v118 = *(a2 + 23144);
      v119 = (v118 - *(a2 + 816)) * (v118 - *(a2 + 816));
      v120 = v119 / v117;
      v121 = v116 + v119 * v83[25];
      if (v91)
      {
        if (v120 > 11.0)
        {
          v122 = v83;
          *(a2 + 816) = v118;
          v123 = (a2 + 24192);
LABEL_226:
          *v123 = v117;
          EvCrt_v("NK_Final_Check: Vertical position check failed");
          *v115 = *v115 / 2.25;
          if (v91)
          {
            v388 = 0;
          }

          else
          {
            *(&v405[1] + 1) = *(&v405[1] + 1) / 2.25;
            v388 = 1;
          }

          LOBYTE(v390) = 1;
          v124 = a1;
          v83 = v122;
          goto LABEL_235;
        }

        if (v120 > 1.0)
        {
LABEL_231:
          v388 = 0;
          *v115 = v121;
          goto LABEL_234;
        }
      }

      else
      {
        if (v120 > 16.0)
        {
          v122 = v83;
          v123 = &v405[1] + 1;
          *(a2 + 816) = v118;
          *(a2 + 24192) = v117;
          goto LABEL_226;
        }

        if (*v115 > v121)
        {
          goto LABEL_231;
        }
      }

LABEL_233:
      v388 = 0;
      goto LABEL_234;
    }
  }

  else
  {
    v115 = (a2 + 24192);
  }

  if ((v91 & 1) == 0)
  {
    goto LABEL_233;
  }

  v388 = 0;
  *v115 = v114;
LABEL_234:
  v124 = a1;
LABEL_235:
  v125 = 0;
  v126 = (a2 + 23016);
  v127 = &v401;
  v128 = 1;
  v129 = v83[25];
  do
  {
    v130 = v128;
    if ((v128 & 1) == 0)
    {
      if (*(v12 + 72))
      {
        v131 = *(v124 + 128);
        v139 = 8 * v125 + 40;
        v133 = (v33 + v139);
        if (*(v12 + 76) == 1 && v395)
        {
          v134 = *v127;
          v135 = v126[v125];
          v136 = (&v403 + v139);
          v138 = (v393 + 8 * v125);
          v137 = cos(*v126) * 6378137.0;
          if (v137 <= 0.0)
          {
            v145 = (v135 - *v138) * (v135 - *v138);
            v143 = v145 / v134;
            v144 = v134 + v145 * v129;
            if (v131)
            {
LABEL_247:
              if (v143 > 11.0)
              {
                *v138 = v135;
                *v133 = v134;
LABEL_258:
                v33 = (a2 + 24136);
                EvCrt_d("NK_Final_Check: Horizontal position check failed", v125);
                LOBYTE(v390) = 1;
                v124 = a1;
                goto LABEL_263;
              }

              v146 = v143 <= 1.0;
LABEL_261:
              v124 = a1;
              v33 = (a2 + 24136);
              if (!v146)
              {
                *v133 = v144;
              }

              goto LABEL_263;
            }

LABEL_256:
            if (v143 > 16.0)
            {
              *v138 = v135;
              *v133 = v134;
              v388 = 1;
              *v136 = v134;
              goto LABEL_258;
            }

            v146 = *v133 <= v144;
            goto LABEL_261;
          }

LABEL_243:
          v140 = v135 - *v138;
          v141 = -6.28318531;
          if (v140 >= 3.14159265 || (v141 = 6.28318531, v140 < -3.14159265))
          {
            v140 = v140 + v141;
          }

          v142 = v137 * v140 * (v137 * v140);
          v143 = v142 / v134;
          v144 = v134 + v142 * v129;
          if (v131)
          {
            goto LABEL_247;
          }

          goto LABEL_256;
        }

LABEL_253:
        if (!v131)
        {
          goto LABEL_263;
        }
      }

      else
      {
        if ((*(v124 + 128) & 1) == 0)
        {
          break;
        }

LABEL_252:
        v133 = &v33[v125 + 5];
      }

      *v133 = v114;
      goto LABEL_263;
    }

    v131 = *(v124 + 128);
    if (*(v12 + 72))
    {
      v132 = 8 * v125 + 40;
      v133 = (v33 + v132);
      if (*(v12 + 76) != 1 || !v395)
      {
        goto LABEL_253;
      }

      v134 = *v127;
      v135 = v126[v125];
      v136 = (&v403 + v132);
      v137 = 6378137.0;
      v138 = (v393 + 8 * v125);
      goto LABEL_243;
    }

    if (v131)
    {
      goto LABEL_252;
    }

LABEL_263:
    v128 = 0;
    v127 = &v400;
    v125 = 1;
  }

  while ((v130 & 1) != 0);
  if (v388)
  {
    *(v124 + 168) = 8;
    v147 = 1;
    v148 = v386;
    v150 = 4.0e10;
    v149 = v382;
    goto LABEL_268;
  }

  v148 = v386;
  v150 = 4.0e10;
  v149 = v382;
  if (v378)
  {
    v147 = v379;
LABEL_268:
    if (*(v405 + 1) > 0.0 || *&v405[1] > 0.0 || *(&v405[1] + 1) > 0.0)
    {
      v152 = 0;
      v153 = 0.0;
      do
      {
        if (*(v405 + v152 + 8) > v153)
        {
          v153 = *(v405 + v152 + 8);
        }

        if (*(a2 + 24176 + v152) > v153)
        {
          v153 = *(a2 + 24176 + v152);
        }

        v152 += 8;
      }

      while (v152 != 24);
      *(v405 + 1) = v153;
      *&v405[1] = v153;
      v151 = 1;
      *(&v405[1] + 1) = v153;
    }

    else
    {
      v151 = 1;
    }
  }

  else
  {
    v151 = 0;
    v147 = v379;
  }

  if (v390)
  {
    Geo2ECEF(v393, &WGS84_Datum, (a2 + 664));
    if (*(v124 + 128) == 1)
    {
      *(a2 + 688) = 0u;
      *(a2 + 704) = 0u;
      *(a2 + 912) = 0u;
      *(a2 + 928) = 0u;
      *(a2 + 944) = 0u;
      v154 = 1;
      goto LABEL_285;
    }

    v154 = 1;
LABEL_293:
    if (*(v124 + 236))
    {
      goto LABEL_294;
    }

    *(v124 + 236) = 1;
    if ((v151 & 1) == 0)
    {
      goto LABEL_325;
    }

    goto LABEL_297;
  }

  if (*(v124 + 128))
  {
    v154 = 0;
LABEL_285:
    v155 = *(v124 + 20);
    if (v155 > 8)
    {
      v156 = 100000000.0;
    }

    else
    {
      v156 = dbl_299761338[v155];
    }

    *(a2 + 24216) = v156;
    *(a2 + 24208) = v156;
    *(a2 + 24200) = v156;
    v157 = (a2 + 24312);
    v158 = 11;
    do
    {
      v159 = *(v157 - 22);
      *(v157 - 11) = v159;
      *v157++ = sqrt(v159);
      --v158;
    }

    while (v158);
    goto LABEL_293;
  }

  v154 = 0;
  if (v373)
  {
    goto LABEL_293;
  }

LABEL_294:
  if (v151)
  {
LABEL_297:
    v160 = *(v124 + 20);
    if (v160 > 8)
    {
      v161 = 100000000.0;
    }

    else
    {
      v161 = dbl_299761338[v160];
    }

    *&v417 = 0;
    if (R8_EQ(v405 + 1, &v417))
    {
      Comp_NEDvar_UDU(a1 + 872, 0xBu, 5, (a2 + 832), &v417);
      Comp_ErrorEllipse(*&v417, *(&v417 + 1), v162, v415, &v415[1], &v415[2]);
      v163 = v415[0] * v415[0];
      if (*&v418 > v415[0] * v415[0])
      {
        v163 = *&v418;
      }

      v150 = v163 + v163;
    }

    *&v417 = 0;
    if (R8_EQ(&v406, &v417))
    {
      v164 = *(a2 + 24200);
      if (*(a2 + 24208) > v164)
      {
        v164 = *(a2 + 24208);
      }

      if (*(a2 + 24216) > v164)
      {
        v164 = *(a2 + 24216);
      }

      v161 = v164 * 1.2;
    }

    v165 = a1 + 872;
    bzero((a1 + 872), 0x210uLL);
    v166 = 0;
    while (1)
    {
      v167 = *(&v403 + v166);
      if (v167 <= 0.0)
      {
        if (v166 == 4)
        {
          v168 = *(a2 + 24168);
          if (v168 >= 400.0)
          {
            v169 = v168 * 1.2;
          }

          else
          {
            v169 = v168 * 1.1;
          }

          *(a1 + 984) = v169;
          goto LABEL_320;
        }

        if ((v166 - 5) <= 2)
        {
          *(v165 + 8 * (((v166 + 2 + (v166 + 2) * v166) >> 1) - 1)) = v150;
          goto LABEL_320;
        }

        if (v166 >= 8)
        {
          *(v165 + 8 * (((v166 + 2 + (v166 + 2) * v166) >> 1) - 1)) = v161;
          goto LABEL_320;
        }

        v167 = v33[v166] * 1.2;
      }

      *(v165 + 8 * (((v166 + 2 + (v166 + 2) * v166) >> 1) - 1)) = v167;
LABEL_320:
      if (++v166 == 11)
      {
        v148 = v386;
        break;
      }
    }
  }

LABEL_325:
  v396 = v148 | v147;
  if ((v148 | v147) != 1)
  {
    goto LABEL_395;
  }

  v170 = *(a1 + 235);
  v171 = v170 + 1;
  *(a1 + 235) = v170 + 1;
  if (*(a1 + 11028) == 1)
  {
    *(a1 + 11028) = 0;
  }

  v172 = *(a2 + 964);
  if ((v172 > 1 || !*(a1 + 11048)) && ((v170 + 1) == 120 || (v170 + 1) >= 0xB4u))
  {
    if (*(a2 + 12) >= 10)
    {
      *(a2 + 12) = 9;
    }

    v178 = 0;
    *(a1 + 6712) = 0u;
    *(a1 + 6728) = 0u;
    *(a1 + 6696) = 0u;
    *(a2 + 972) = 2;
    *(a4 + 412) = 1;
    *&v179 = 0x101010101010101;
    *(&v179 + 1) = 0x101010101010101;
    *(a4 + 380) = v179;
    *(a4 + 396) = v179;
    *(a4 + 364) = v179;
    v180 = vld1q_dup_f32(a2);
    do
    {
      *(a4 + 416 + v178) = v180;
      v178 += 16;
    }

    while (v178 != 192);
    EvCrt_v("ChanReset ALL : NKFC1 %d %d %d ", *(a1 + 235), v147, v148);
    v181 = ++*(a1 + 235);
    if (v181 >= 0xB4)
    {
      *(a2 + 960) = 0;
      *(a1 + 11048) = 0;
      *(a1 + 235) = 0;
      *(a1 + 232) = 256;
      *(a2 + 964) = 0;
      *(a2 + 16) = 0;
      *v385 = 0.0;
      *(a2 + 744) = 0;
      if (*(a2 + 12) >= 6)
      {
        *(a2 + 12) = 5;
      }
    }

    goto LABEL_395;
  }

  if (*(a4 + 4) || v370 >= 0xFFFF0DCF && (*(a1 + 233) & 1) == 0)
  {
    goto LABEL_395;
  }

  if (*(a2 + 12) >= 10)
  {
    *(a2 + 12) = 9;
  }

  if (v172 < 2)
  {
    if ((v147 & 1) == 0)
    {
      if ((v170 + 1) <= 9u)
      {
        *(a1 + 235) = 10;
      }

      *(a2 + 960) = 0;
      *(a1 + 232) = 0;
    }

    goto LABEL_395;
  }

  v381 = v154;
  if ((v170 + 1) > 5u)
  {
    v174 = 0;
    v177 = a1;
LABEL_365:
    if ((*(v177 + 28) & 1) == 0 && *(a2 + 960) != 1)
    {
      v380 = v174;
      v176 = 100;
      goto LABEL_377;
    }

    *(v177 + 6712) = 0u;
    *(v177 + 6728) = 0u;
    *(v177 + 6696) = 0u;
    v182 = -48;
    v183 = a5;
    do
    {
      v184 = *(v183 + 76);
      if (Is_Legal(v184) && *(v183 + 412) >= 4)
      {
        *(a4 + 8 + GNSS_Id_To_Num_Prn_Idx(v184)) = 1;
        *(a4 + 186 + GNSS_Id_To_Num_Prn_Idx(*(v183 + 76))) = v182 + 48;
      }

      v183 += 4;
      v224 = __CFADD__(v182++, 1);
    }

    while (!v224);
    v185 = 0;
    *(a4 + 412) = 1;
    *&v186 = 0x101010101010101;
    *(&v186 + 1) = 0x101010101010101;
    *(a4 + 380) = v186;
    *(a4 + 396) = v186;
    *(a4 + 364) = v186;
    v187 = vld1q_dup_f32(a2);
    do
    {
      *(a4 + 416 + v185) = v187;
      v185 += 16;
    }

    while (v185 != 192);
    EvCrt_v("ChanReset ALL : NKFC2 %d %d %d ", *(a1 + 235), v370 < 0xFFFF0DCF, *(a1 + 28));
    *(a2 + 972) = 2;
    *(a1 + 235) = 0;
    *(a2 + 964) = 0;
    v148 = v386;
    v154 = v381;
    goto LABEL_395;
  }

  if ((v170 + 1) == 5)
  {
    v171 = 4;
  }

  if (!*(a2 + 960))
  {
    v171 = v170;
  }

  v173 = *(v12 + 2444) >> 4;
  v224 = v173 >= 0xC35;
  v174 = v173 < 0xC35;
  v175 = &BN_Tolerance;
  if (v224)
  {
    v175 = &unk_2997612E5;
  }

  if (v171 <= 2u)
  {
    v174 = 0;
  }

  v176 = v175[v171];
  v177 = a1;
  if (v176 == 100)
  {
    goto LABEL_365;
  }

  v380 = v174;
LABEL_377:
  v188 = 0;
  v189 = 0;
  v190 = 0;
  v191 = 0;
  v192 = (a5 + 76);
  v391 = v177 + 6696;
  v383 = a4 + 186;
  v387 = a4 + 416;
  v389 = a4 + 8;
  do
  {
    if (*(a2 + 2960 + v188) == 1)
    {
      v193 = *(a5 + v188 + 604);
      if (v193 <= v190 || v190 == 0)
      {
        v191 = v188;
        v190 = *(a5 + v188 + 604);
      }

      if (v193 < v176)
      {
        v195 = *v192;
        v196 = Is_Legal(*v192);
        v189 = 1;
        if (v196)
        {
          v197 = GNSS_Id_To_Num_Prn_Idx(v195);
          *(v391 + v188) = 0;
          *(v389 + v197) = 1;
          *(v383 + v197) = v188;
          *(a4 + v188 + 365) |= 1u;
          *(v387 + 4 * v188) = *a2;
          EvCrt_v("ChanReset %d : NKFC3 %d %d %d   %d < %d", v188, v192[2], *v192, v197, v193, v176);
          v189 = 1;
        }
      }
    }

    ++v188;
    v192 += 4;
  }

  while (v188 != 48);
  if (v380 && (v198 = v190, v190 >= v176))
  {
    v199 = (a5 + 76 + 4 * v191);
    v200 = *v199;
    v148 = v386;
    v154 = v381;
    if (Is_Legal(*v199))
    {
      v201 = GNSS_Id_To_Num_Prn_Idx(v200);
      *(v391 + v191) = 0;
      *(v389 + v201) = 1;
      *(v383 + v201) = v191;
      *(a4 + 365 + v191) |= 1u;
      *(v387 + 4 * v191) = *a2;
      EvCrt_v("ChanReset %d : NKFC4 %d %d %d   %d   %d >= %d", v191, v199[2], *v199, v201, 1, v198, v176);
    }
  }

  else
  {
    v148 = v386;
    v154 = v381;
    if ((v189 & 1) == 0)
    {
      goto LABEL_395;
    }
  }

  *(a2 + 972) = 1;
LABEL_395:
  v203 = a2 + 24576;
  v202 = v384;
  v204 = a1;
  if (*(a2 + 24588) < 4 || *(a2 + 24592) < 4 || *a6 != 2)
  {
    goto LABEL_411;
  }

  v205 = *(a1 + 128);
  if ((v205 & 1) == 0)
  {
    v206 = *(a2 + 24200) + *(a2 + 24208);
    v208 = *(a1 + 20);
    v207 = *(a1 + 24);
    if (v206 >= 2.56)
    {
      if (v208 == 4 && v206 * 9.0 + v149 * v149 < 169.0)
      {
        goto LABEL_406;
      }

      if (v149 <= 26.0)
      {
        goto LABEL_411;
      }
    }

    else if (v149 <= 13.0)
    {
      if (v149 <= 3.0)
      {
        if (v149 < 1.5)
        {
          v209 = 2;
LABEL_409:
          if (v209 != v208)
          {
            *(a1 + 20) = v209;
            *&v417 = __PAIR64__(v207, v209);
            NK_Set_Dynamics(&v417, a1 + 32);
            NK_Set_XO_PN(v384, a1 + 32);
          }
        }

LABEL_411:
        v205 = *(a1 + 128);
        goto LABEL_412;
      }

LABEL_406:
      v209 = 3;
      goto LABEL_409;
    }

    v209 = 4;
    goto LABEL_409;
  }

LABEL_412:
  if (!v205 && (*(a2 + 24352) >= 3000.0 || *(a2 + 24360) >= 3000.0 || *(a2 + 24368) >= 3000.0))
  {
    *(a1 + 233) = 1;
  }

  if (v154)
  {
    Geo2ECEF(v393, &WGS84_Datum, (a2 + 664));
    v205 = *(a1 + 128);
  }

  if (!v205)
  {
    v212 = *(&v406 + 1);
    v211 = v407;
    v213 = *&v406;
    v214 = (a2 + 24224);
    v215 = -11;
    v216 = &v403;
    do
    {
      v217 = *v216;
      if (*v216 > 0.0)
      {
        v218 = v215 + 11;
        if (v215 + 11 <= 4)
        {
          if (v218 <= 2)
          {
            v217 = v217 + *(a1 + 7248);
          }

          else if (v215 == -8)
          {
            v217 = v217 + *(a2 + 656) * 0.01;
          }

          *v214 = v217;
        }

        else if (v218 > 7)
        {
          if (v215 == -3)
          {
            *(a2 + 24288) = v213 + *(a2 + 656) * 0.0001;
          }

          else if (v215 == -2)
          {
            *(a2 + 24296) = v212 + *(a2 + 656) * 0.0001;
          }

          else
          {
            *(a2 + 24304) = v211 + *(a2 + 656) * 0.0001;
          }
        }

        else if (v215 == -6)
        {
          *(a2 + 24400) = *(a1 + 7280);
          *(a2 + 24264) = *(a2 + 24176) + *(a1 + 7256);
        }

        else if (v215 == -5)
        {
          *(a2 + 24272) = *(a2 + 24184) + *(a1 + 7264);
        }

        else
        {
          *(a2 + 24280) = *(a2 + 24192) + *(a1 + 7272);
        }

        v214[11] = sqrt(*v214);
      }

      ++v214;
      ++v216;
      v224 = __CFADD__(v215++, 1);
    }

    while (!v224);
  }

  if ((*(a2 + 960) & 1) == 0 && *(v12 + 72) == 1 && *(v12 + 200) == 1 && ((*(v12 + 76) - 1) < 2 || *(a1 + 232) == 1))
  {
    *(a2 + 960) = 1;
  }

  v210 = *(a2 + 24352);
  if (v210 <= *(a2 + 24360))
  {
    v210 = *(a2 + 24360);
  }

  if (v210 <= *(a2 + 24368))
  {
    v210 = *(a2 + 24368);
  }

  if (*(a1 + 235))
  {
    if (v205)
    {
      goto LABEL_522;
    }

    if (*(a1 + 11028) >= 4u && v210 <= 0xC7 && (*(a2 + 25171) & 1) != 0 && v369 >= 5)
    {
      *(a1 + 235) = 0;
    }
  }

  else if (v205)
  {
    goto LABEL_522;
  }

  v219 = *(a2 + 964);
  if (v219 > 2)
  {
    v220 = 1;
  }

  else
  {
    v220 = v154;
  }

  if (v220)
  {
    goto LABEL_523;
  }

  if ((*(a1 + 233) & 1) != 0 || *(a2 + 12) < 7 || *(a2 + 25171) != 1 || !v369)
  {
    goto LABEL_522;
  }

  v221 = *(a1 + 11028);
  if ((v210 > 0x63 || v221 <= 3) && (v210 > 0x45 || v221 <= 2))
  {
    v224 = v210 <= 0x27 && v221 >= 2;
    if (!v224)
    {
      goto LABEL_522;
    }
  }

  v225 = 0;
  v226 = 0;
  v392 = 0;
  v227 = 0;
  v228 = 0;
  v229 = a2 + 3056;
  while (2)
  {
    v230 = *(v229 + 4 * v225);
    if ((v230 - 1) >= 0x1D)
    {
      if (v230)
      {
        EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
        goto LABEL_484;
      }

      if (*(v229 + v225 - 96) == 1 && *(v229 + v225 - 3007) == 1)
      {
        v231 = *(a5 + 604 + v225);
        if (v231 > 0x21)
        {
          ++v228;
        }

        if (v231 > 0x17)
        {
          ++v227;
        }

        v46 = v231 > 0xA;
        v232 = v392;
        if (v46)
        {
          v232 = v392 + 1;
        }

        v392 = v232;
      }
    }

    else
    {
LABEL_484:
      ++v226;
    }

    if (++v225 != 48)
    {
      continue;
    }

    break;
  }

  v204 = a1;
  v203 = a2 + 24576;
  v202 = v384;
  v148 = v386;
  if (v226 > 2)
  {
    goto LABEL_522;
  }

  if (*(v12 + 72) != 1)
  {
    goto LABEL_509;
  }

  v233 = *(v12 + 76);
  if (v233 == 2)
  {
    if (*(a2 + 23064) <= 900000000.0)
    {
      v235 = 1;
      goto LABEL_510;
    }

    goto LABEL_509;
  }

  if (v233 != 1 || (v234 = *(a2 + 23064), v234 > 8100000000.0))
  {
LABEL_509:
    v235 = 0;
    goto LABEL_510;
  }

  if (v234 > 900000000.0)
  {
    v235 = 1;
  }

  else
  {
    v235 = 2;
  }

  if (v234 <= 9000000.0)
  {
    ++v235;
  }

LABEL_510:
  v236 = *(a2 + 22848) == 1 && *(a2 + 22852) == 1 && *(a2 + 22880) <= 900000000.0 || *(a2 + 12) > 9;
  v237 = v235 - v226 + v236;
  v238 = v237 + v228;
  v239 = v237 + v227;
  v240 = v237 + v392;
  if (v238 > 3 || v239 > 4 || v240 > 5)
  {
    v219 = 3;
    goto LABEL_536;
  }

LABEL_522:
  v219 = *(a2 + 964);
LABEL_523:
  if (v219 <= 2)
  {
    if (*(v204 + 128) == 1 && *(v204 + 11048))
    {
      *(v204 + 11048) = 0;
    }

    if (v219 == 1 && *(v204 + 235) > 2u)
    {
      goto LABEL_535;
    }

    v243 = v219 != 2 && v376 > 3;
    v244 = v396;
    if (!v243)
    {
      v244 = 0;
    }

    if (v244)
    {
LABEL_535:
      v219 = 0;
      goto LABEL_536;
    }

    if (!v219 && v376 >= 3)
    {
      if (*(v204 + 235) > 2u)
      {
        v219 = 0;
      }

      else
      {
        v219 = 1;
LABEL_536:
        *(a2 + 964) = v219;
      }
    }
  }

  if (v202[265] != -1)
  {
    if (v219 || *(v204 + 11032) < 0x258u)
    {
      if (v219 == 1 && v149 > 50.0)
      {
        v246 = "NK_Final_Check: Reverting to 'Sky Search' Windows due to low position confidence, and apparent high user speed";
LABEL_548:
        *(a2 + 960) = 0;
        EvCrt_v(v246);
      }
    }

    else if (*(v12 + 72) != 1 || (v245 = *(v12 + 76), v245 != 1) && (v245 != 2 || *(a2 + 23040) >= 2500000000.0))
    {
      v246 = "NK_Final_Check: Reverting to 'Sky Search' Windows due to No Fix within 10 min";
      goto LABEL_548;
    }
  }

  if (*(v203 + 12) >= 4 && *(a2 + 964) >= 1 && *(a2 + 24752) <= 100.0)
  {
    v202[267] = 0;
  }

  v247 = v202[265];
  if (v247)
  {
    v248 = v202[267];
    if (v248)
    {
      v249 = *(a2 + 4);
      if (v249 < v248)
      {
        EvCrt_nd("NK_Final_Check: OS ms Time seems to have gone backwards", 2, v38, *(a2 + 4), v248);
        goto LABEL_560;
      }

      if (v249 - v248 >= v247)
      {
        EvCrt_v("NK_Final_Check: Reverting to 'Sky Search' Windows due to No Fix within %d s", v247 / 0x3E8);
        *(a2 + 960) = 0;
        if ((*(a2 + 16) & 1) == 0)
        {
          *(a2 + 12) = 0;
          *(a2 + 24136) = 0x42D7309374811100;
          *(a2 + 24312) = 0x4163125300000000;
          v250 = vdupq_n_s64(0x42D7309374811100uLL);
          *(a2 + 24224) = v250;
          *(a2 + 24144) = v250;
          *(a2 + 24240) = 0x42D7309374811100;
          *(a2 + 24320) = vdupq_n_s64(0x4163125300000000uLL);
          *(a2 + 24168) = 0x42D7309374811100;
          *(a2 + 24256) = 0x42D7309374811100;
          *(a2 + 24344) = 0x4163125300000000;
        }

LABEL_560:
        v202[267] = 0;
      }
    }
  }

  if (*(a2 + 16) == 1 && *(v204 + 11048) && *(v204 + 11032) >= 0x3Du && *(a2 + 24320) > 40000.0 && *(a2 + 24328) > 40000.0 && *(a2 + 24312) > 40000.0)
  {
    *(a2 + 16) = 0;
  }

  if (v148 && !*(a2 + 964))
  {
    *(v204 + 232) = 0;
  }

  if ((*(v203 + 12) < 4 || *(a2 + 964) < 1 || *(a2 + 24752) > 400.0) && *(v204 + 11032))
  {
    if (!v202[279])
    {
      v202[279] = *(a5 + 4);
    }
  }

  else
  {
    v202[279] = 0;
  }

  memcpy((v204 + 344), (v204 + 872), 0x210uLL);
  if (*(a2 + 25824) > 150.0)
  {
    return;
  }

  if (!*(a2 + 26008))
  {
    return;
  }

  v251 = *(a2 + 26024);
  if (v251 < 2)
  {
    return;
  }

  if ((*(v204 + 11161) & 1) == 0)
  {
    v252 = *(v204 + 11152) <= 17.0 ? 3000 : 5000;
    if (*a2 - *(v204 + 11248) < v252)
    {
      v253 = 11240;
      goto LABEL_593;
    }
  }

  if (*(v204 + 11188) < 2)
  {
    v254 = (a2 + 952);
  }

  else
  {
    v253 = 11192;
LABEL_593:
    v254 = (v204 + v253);
  }

  v255 = *v254;
  v256 = *v254 * 0.0174532925;
  ECEF2FSD_RotM((a2 + 832), v256, v408);
  v257 = a2 + 664;
  v258 = 4;
  v259 = 16;
  v260 = a2;
  do
  {
    *(&v413 + v259) = *(v260 + 680) - *(v260 + 25736);
    --v258;
    v259 -= 8;
    v260 -= 8;
  }

  while (v258 > 1);
  v261 = 0;
  v262 = v413;
  v263 = v414;
  v264 = &v408[2];
  do
  {
    v265 = *(v264 - 1) * *(&v262 + 1) + *(v264 - 2) * *&v262;
    v266 = *v264;
    v264 += 3;
    *(&v410 + v261) = v265 + v266 * v263;
    v261 += 8;
  }

  while (v261 != 24);
  v267 = v255;
  v268 = *(v204 + 140);
  if (v268 >= *(v204 + 144))
  {
    v268 = *(v204 + 144);
  }

  if (v268 >= *(v204 + 148))
  {
    v268 = *(v204 + 148);
  }

  v269 = v268 > 0xA;
  v270 = *(v204 + 11032) <= *(v204 + 16) && *(a2 + 968) == 1;
  v271 = v410;
  v272 = v411;
  EvLog_v("Lsq pos diff:  %3d (%d %3d %3d %3d)  %d%d  %d %f   F %4d %6d %8d    S %4d %6d %8d    D %4d %6d %8d    T %2d %3d   L %2d %f ", v255, *(v204 + 11188), *(v204 + 11240), *(v204 + 11192), *(a2 + 952), v269, v270, *(v204 + 11116), *(v204 + 11128), v410, *(a2 + 25976), *(v204 + 11480), v411, *(a2 + 25976), *(v204 + 11480), v412, *(a2 + 25984), *(v204 + 11488), *(v204 + 11636), *(v204 + 11640), v251, *(a2 + 26016));
  v273 = *(v204 + 140);
  if (v273 >= *(v204 + 144))
  {
    v273 = *(v204 + 144);
  }

  if (v273 >= *(v204 + 148))
  {
    v273 = *(v204 + 148);
  }

  if (v273 < 0xB || *(v204 + 11032) > *(v204 + 16) || *(a2 + 968) != 1)
  {
    goto LABEL_638;
  }

  if ((*(v204 + 11161) & 1) == 0)
  {
    if (v271 >= -5.0 || *(v204 + 11116) == 3)
    {
      goto LABEL_638;
    }

    v274 = 3;
    v275 = 8;
LABEL_620:
    v276 = 0;
    v277 = *(a1 + 11636);
    if (v277 + 1 < v275)
    {
      v278 = v277 + 1;
    }

    else
    {
      v278 = v275;
    }

    *(a1 + 11636) = v278;
    if (v271 < -25.0 && v278 >= v274)
    {
      v279 = *(a2 + 25976) / *(a1 + 11480);
      v280 = 0.0;
      v281 = 1.0;
      if (v279 < 1.0)
      {
        v280 = 1.0;
        if (v279 > 0.00000011920929)
        {
          NK_Get_Smooth_Excl_Weight(v279 * 0.5, 0.0, 1.0);
          v280 = v282;
          v278 = *(a1 + 11636);
        }
      }

      v283 = v275 - v278;
      if (v283)
      {
        NK_Get_Smooth_Excl_Weight(v283, 0.0, v275);
        v281 = v284;
      }

      if (v280 * v281 > 0.00000011920929)
      {
        *v409 = *(a2 + 25976) / (v280 * v281);
        *&v409[8] = vdupq_n_s64(0x412E848000000000uLL);
        *(a1 + 1400) = 0u;
        *(a1 + 1416) = 0u;
        *(a1 + 1432) = 0u;
        *(a1 + 1448) = 0u;
        *(a1 + 1464) = 0u;
        *(a1 + 1480) = 0;
        NK_Body_Frame_Meas(5u, &v413, v409, (a2 + 832), v256, 0xBu, (a1 + 872));
        v285 = 0;
        v286 = *(a1 + 1400);
        v287 = *(a1 + 1408);
        v288 = *(a1 + 1416);
        v413 = *(a1 + 1440);
        v414 = *(a1 + 1456);
        v289 = v413;
        v290 = v414;
        v291 = &v408[2];
        do
        {
          v292 = *(v291 - 1) * *(&v289 + 1) + *(v291 - 2) * *&v289;
          v293 = *v291;
          v291 += 3;
          *(&v410 + v285) = v292 + v293 * v290;
          v285 += 8;
        }

        while (v285 != 24);
        v294 = 0;
        v411 = 0.0;
        v412 = 0.0;
        v295 = v410;
        do
        {
          *(&v413 + v294 * 8) = v408[v294 + 3] * 0.0 + v408[v294] * v295 + v408[v294 + 6] * 0.0;
          ++v294;
        }

        while (v294 != 3);
        *(a1 + 1440) = v413;
        *(a1 + 1456) = v414;
        v204 = a1;
        EvLog_v("Lsq pos meas: F  %2d %f %3d   %f %f   %6d %6d   Wt %f %f   ECEF %f %f %f", *(a1 + 11636), *(a1 + 11128), v267, v271, v295, *(a2 + 25976), *(a1 + 11480), v280, v281, *&v413, *(&v413 + 1), v414);
        NK_Correct_State((a1 + 1400), (a2 + 25166), (a2 + 624));
        v296 = 0;
        *(a1 + 10472) = v286 + *(a1 + 10472);
        *(a1 + 8280) = v287 + *(a1 + 8280);
        *(a1 + 8296) = v288 + *(a1 + 8296);
        v276 = 1;
        v272 = 0.0;
        do
        {
          *(a1 + 10480 + v296) = *(a1 + 10480 + v296) + *(&v413 + v296);
          v296 += 8;
        }

        while (v296 != 24);
        v271 = v295;
        goto LABEL_639;
      }

      v276 = 0;
    }

    v204 = a1;
    goto LABEL_639;
  }

  if (v271 < -5.0)
  {
    v274 = 18;
    v275 = 48;
    goto LABEL_620;
  }

LABEL_638:
  v276 = 0;
  *(v204 + 11636) = 0;
LABEL_639:
  v297 = *(v204 + 140);
  if (v297 >= *(v204 + 144))
  {
    v297 = *(v204 + 144);
  }

  if (v297 >= *(v204 + 148))
  {
    v297 = *(v204 + 148);
  }

  if (v297 < 0xB || *(v204 + 11032) > *(v204 + 16) || *(a2 + 968) != 1)
  {
    goto LABEL_649;
  }

  if (*(v204 + 11161))
  {
    v298 = 120;
    goto LABEL_656;
  }

  if (*(v204 + 11116) == 3)
  {
LABEL_649:
    *(v204 + 11640) = 0;
    if (v276)
    {
      goto LABEL_650;
    }

LABEL_685:
    v308 = 0;
    goto LABEL_686;
  }

  v298 = 20;
LABEL_656:
  v309 = a1;
  v310 = *(a1 + 11640);
  v311 = v310 > 0;
  if (v272 < 0.0)
  {
    v312 = -1;
  }

  else
  {
    v311 = v310 < 0;
    v312 = 1;
  }

  if (v311)
  {
    v310 = 0;
  }

  v313 = v310 + v312;
  *(a1 + 11640) = v313;
  v314 = v298;
  if (v313 > v298)
  {
LABEL_665:
    *(v309 + 11640) = v314;
    v313 = v314;
    goto LABEL_666;
  }

  if ((v313 + v298) < 0 != __OFADD__(v313, v298))
  {
    v314 = -v298;
    v309 = a1;
    goto LABEL_665;
  }

LABEL_666:
  if (v313 >= 0)
  {
    v315 = v313;
  }

  else
  {
    v315 = -v313;
  }

  if (fabs(v272) <= 10.0 || v315 < v298 >> 2)
  {
    goto LABEL_684;
  }

  v316 = *(a2 + 25976) / *(a1 + 11480);
  v317 = 0.0;
  v318 = 1.0;
  if (v316 < 1.0)
  {
    v317 = 1.0;
    if (v316 > 0.00000011920929)
    {
      NK_Get_Smooth_Excl_Weight(v316 * 0.5, 0.0, 1.0);
      v317 = v319;
    }
  }

  if (v298 != v315)
  {
    NK_Get_Smooth_Excl_Weight((v298 - v315), 0.0, v298);
    v318 = v320;
  }

  if (v317 * v318 <= 0.00000011920929)
  {
LABEL_684:
    v204 = a1;
    if (v276)
    {
      goto LABEL_650;
    }

    goto LABEL_685;
  }

  *v409 = 0x412E848000000000;
  *&v409[8] = *(a2 + 25976) / (v317 * v318);
  *&v409[16] = 0x412E848000000000;
  v204 = a1;
  *(a1 + 1480) = 0;
  *(a1 + 1448) = 0u;
  *(a1 + 1464) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1400) = 0u;
  NK_Body_Frame_Meas(5u, &v413, v409, (a2 + 832), v256, 0xBu, (a1 + 872));
  v321 = 0;
  v322 = *(a1 + 1400);
  v323 = *(a1 + 1408);
  v324 = *(a1 + 1416);
  v413 = *(a1 + 1440);
  v414 = *(a1 + 1456);
  v325 = v413;
  v326 = v414;
  v327 = &v408[2];
  do
  {
    v328 = *(v327 - 1) * *(&v325 + 1) + *(v327 - 2) * *&v325;
    v329 = *v327;
    v327 += 3;
    *(&v410 + v321) = v328 + v329 * v326;
    v321 += 8;
  }

  while (v321 != 24);
  v330 = 0;
  v410 = 0.0;
  v412 = 0.0;
  v331 = v411;
  do
  {
    *(&v413 + v330 * 8) = v408[v330 + 3] * v331 + v408[v330] * 0.0 + v408[v330 + 6] * 0.0;
    ++v330;
  }

  while (v330 != 3);
  *(a1 + 1440) = v413;
  *(a1 + 1456) = v414;
  EvLog_v("Lsq pos meas: S  %2d %f %3d   %f %f   %6d %6d   Wt %f %f   ECEF %f %f %f", *(a1 + 11640), *(a1 + 11128), v267, v272, v331, *(a2 + 25976), *(a1 + 11480), v317, v318, *&v413, *(&v413 + 1), v414);
  NK_Correct_State((a1 + 1400), (a2 + 25166), (a2 + 624));
  v332 = 0;
  *(a1 + 10472) = v322 + *(a1 + 10472);
  *(a1 + 8280) = v323 + *(a1 + 8280);
  *(a1 + 8296) = v324 + *(a1 + 8296);
  do
  {
    *(a1 + 10480 + v332) = *(a1 + 10480 + v332) + *(&v413 + v332);
    v332 += 8;
  }

  while (v332 != 24);
LABEL_650:
  v299 = 4;
  v300 = 16;
  v301 = a2;
  do
  {
    *(&v413 + v300) = *(v301 + 680) - *(v301 + 25736);
    --v299;
    v300 -= 8;
    v301 -= 8;
  }

  while (v299 > 1);
  v302 = 0;
  v303 = v413;
  v304 = v414;
  v305 = &v408[2];
  do
  {
    v306 = *(v305 - 1) * *(&v303 + 1) + *(v305 - 2) * *&v303;
    v307 = *v305;
    v305 += 3;
    *(&v410 + v302) = v306 + v307 * v304;
    v302 += 8;
  }

  while (v302 != 24);
  v308 = 1;
  v271 = v410;
  v272 = v411;
LABEL_686:
  if ((*(v204 + 11116) & 0xFFFFFFFE) == 2)
  {
    v333 = 3.5;
  }

  else
  {
    v333 = 2.0;
  }

  v334 = v333 * *(a2 + 25976);
  v335 = 9.9980001e13;
  if (v272 * v272 + v271 * v271 <= v334 * v334 || v334 >= *(v204 + 11480))
  {
    v339 = 0;
  }

  else
  {
    *v409 = vdupq_n_s64(0x4049000000000000uLL);
    *&v409[16] = 0x408F400000000000;
    *(v204 + 1480) = 0;
    *(v204 + 1400) = 0u;
    *(v204 + 1416) = 0u;
    *(v204 + 1432) = 0u;
    *(v204 + 1448) = 0u;
    *(v204 + 1464) = 0u;
    NK_Body_Frame_Meas(5u, &v413, v409, (a2 + 832), v256, 0xBu, (v204 + 872));
    v336 = *(v204 + 1400);
    v397 = *(v204 + 1408);
    v413 = *(v204 + 1440);
    v414 = *(v204 + 1456);
    EvLog_v("Lsq pos adj:  H  %4d %4d %4d   ARP  %6d %6d", v271, v272, v412, *(a2 + 25976), *(v204 + 11480));
    for (j = 0; j != 24; j += 8)
    {
      *(v257 + j) = *(v257 + j) - *(&v413 + j);
    }

    v338 = 0;
    *v385 = *v385 + v336 * -0.00000000333564095;
    *v372 = vmlaq_f64(*v372, vdupq_n_s64(0xBE2CA726EB25F9DBLL), v397);
    v204 = a1;
    *(a1 + 10472) = v336 + *(a1 + 10472);
    *(a1 + 8280) = v397.f64[0] + *(a1 + 8280);
    *(a1 + 8296) = v397.f64[1] + *(a1 + 8296);
    do
    {
      *(a1 + 10480 + v338) = *(a1 + 10480 + v338) + *(&v413 + v338);
      v338 += 8;
    }

    while (v338 != 24);
    ++*(a1 + 236);
    v308 = 1;
    v335 = 50.0;
    v339 = 1;
  }

  v340 = v412;
  v341 = v333 * *(a2 + 25984);
  if (v340 * v340 > v341 * v341 && v341 < *(v204 + 11488))
  {
    *v409 = vdupq_n_s64(0x408F400000000000uLL);
    *&v409[16] = 0x4049000000000000;
    *(v204 + 1480) = 0;
    *(v204 + 1400) = 0u;
    *(v204 + 1416) = 0u;
    *(v204 + 1432) = 0u;
    *(v204 + 1448) = 0u;
    *(v204 + 1464) = 0u;
    NK_Body_Frame_Meas(5u, &v413, v409, (a2 + 832), v256, 0xBu, (v204 + 872));
    v342 = *(v204 + 1400);
    v398 = *(v204 + 1408);
    v413 = *(v204 + 1440);
    v414 = *(v204 + 1456);
    EvLog_v("Lsq pos adj:  V  %4d %4d %4d   ARP  %6d %6d", v271, v272, v340, *(a2 + 25984), *(v204 + 11488));
    for (k = 0; k != 24; k += 8)
    {
      *(v257 + k) = *(v257 + k) - *(&v413 + k);
    }

    v344 = 0;
    *v385 = *v385 + v342 * -0.00000000333564095;
    *v372 = vmlaq_f64(*v372, vdupq_n_s64(0xBE2CA726EB25F9DBLL), v398);
    v204 = a1;
    *(a1 + 10472) = v342 + *(a1 + 10472);
    *(a1 + 8280) = v398.f64[0] + *(a1 + 8280);
    *(a1 + 8296) = v398.f64[1] + *(a1 + 8296);
    do
    {
      *(a1 + 10480 + v344) = *(a1 + 10480 + v344) + *(&v413 + v344);
      v344 += 8;
    }

    while (v344 != 24);
    ++*(a1 + 236);
  }

  if (!v339)
  {
    goto LABEL_757;
  }

  *(v204 + 1480) = 0;
  *(v204 + 1448) = 0u;
  *(v204 + 1464) = 0u;
  *(v204 + 1416) = 0u;
  *(v204 + 1432) = 0u;
  *(v204 + 1400) = 0u;
  *&v417 = 0;
  if (R8_EQ(v385, &v417))
  {
    goto LABEL_718;
  }

  v345 = *(a2 + 736);
  v346 = (a2 + 25664);
  *&v417 = 0;
  if (!R8_EQ((a2 + 25664), &v417))
  {
    v348 = *(a2 + 25872) * *(a2 + 25872);
    if (v348 >= v335)
    {
      v348 = v335;
    }

LABEL_717:
    v350 = *v346;
    v402 = 0.0;
    memset(&v415[1], 0, 256);
    v415[0] = 1.0;
    v415[11] = v345 * 299792458.0 - v350;
    umeas(v204 + 872, 0xBu, v348, v415, &v417, v416, &v402, 1.0e20);
    goto LABEL_718;
  }

  v346 = (a2 + 25680);
  *&v417 = 0;
  if (!R8_EQ((a2 + 25680), &v417))
  {
    v347 = *(a2 + 25880);
LABEL_714:
    v349 = v347 * v347;
    if (v349 >= v335)
    {
      v349 = v335;
    }

    v348 = v349 + 25.0;
    goto LABEL_717;
  }

  v346 = (a2 + 25696);
  *&v417 = 0;
  if (!R8_EQ((a2 + 25696), &v417))
  {
    v347 = *(a2 + 25888);
    goto LABEL_714;
  }

LABEL_718:
  *&v417 = 0;
  if (R8_EQ(v372->f64, &v417))
  {
    goto LABEL_731;
  }

  v351 = *(a2 + 744);
  v352 = (a2 + 25680);
  *&v417 = 0;
  if (!R8_EQ((a2 + 25680), &v417))
  {
    v354 = *(a2 + 25880) * *(a2 + 25880);
    if (v354 >= v335)
    {
      v354 = v335;
    }

LABEL_730:
    v356 = *v352;
    v402 = 0.0;
    memset(&v415[12], 0, 168);
    v415[0] = 0.0;
    memset(&v415[2], 0, 72);
    v415[1] = 1.0;
    v415[11] = v351 * 299792458.0 - v356;
    umeas(v204 + 872, 0xBu, v354, v415, &v417, v416, &v402, 1.0e20);
    goto LABEL_731;
  }

  v352 = (a2 + 25664);
  *&v417 = 0;
  if (!R8_EQ((a2 + 25664), &v417))
  {
    v353 = *(a2 + 25872);
LABEL_727:
    v355 = v353 * v353;
    if (v355 >= v335)
    {
      v355 = v335;
    }

    v354 = v355 + 25.0;
    goto LABEL_730;
  }

  v352 = (a2 + 25696);
  *&v417 = 0;
  if (!R8_EQ((a2 + 25696), &v417))
  {
    v353 = *(a2 + 25888);
    goto LABEL_727;
  }

LABEL_731:
  *&v417 = 0;
  if (R8_EQ(v371, &v417))
  {
    goto LABEL_744;
  }

  v357 = *(a2 + 752);
  v358 = (a2 + 25696);
  *&v417 = 0;
  if (!R8_EQ((a2 + 25696), &v417))
  {
    v360 = *(a2 + 25888) * *(a2 + 25888);
    if (v360 >= v335)
    {
      v360 = v335;
    }

LABEL_743:
    v362 = *v358;
    v402 = 0.0;
    memset(&v415[12], 0, 168);
    memset(v415, 0, 88);
    v415[2] = 1.0;
    v415[11] = v357 * 299792458.0 - v362;
    umeas(v204 + 872, 0xBu, v360, v415, &v417, v416, &v402, 1.0e20);
    goto LABEL_744;
  }

  v358 = (a2 + 25664);
  *&v417 = 0;
  if (!R8_EQ((a2 + 25664), &v417))
  {
    v359 = *(a2 + 25872);
LABEL_740:
    v361 = v359 * v359;
    if (v361 >= v335)
    {
      v361 = v335;
    }

    v360 = v361 + 25.0;
    goto LABEL_743;
  }

  v358 = (a2 + 25680);
  *&v417 = 0;
  if (!R8_EQ((a2 + 25680), &v417))
  {
    v359 = *(a2 + 25880);
    goto LABEL_740;
  }

LABEL_744:
  v363 = *(v204 + 1400);
  v399 = *(v204 + 1408);
  v413 = *(v204 + 1440);
  v414 = *(v204 + 1456);
  *&v417 = 0;
  if (R8_EQ(v385, &v417))
  {
    v364 = 0;
  }

  else
  {
    v364 = (*(a2 + 25664) - *(a2 + 736));
  }

  *&v417 = 0;
  if (R8_EQ(v372->f64, &v417))
  {
    v365 = 0;
  }

  else
  {
    v365 = (*(a2 + 25680) - *(a2 + 744));
  }

  *&v417 = 0;
  if (R8_EQ(v371, &v417))
  {
    v366 = 0;
  }

  else
  {
    v366 = (*(a2 + 25696) - *(a2 + 752));
  }

  EvLog_v("Lsq Clk adj:  C  %4d %4d %4d   ARP  %6d %6d", v364, v365, v366, *(a2 + 25992), *(a1 + 11496));
  for (m = 0; m != 24; m += 8)
  {
    *(v257 + m) = *(v257 + m) - *(&v413 + m);
  }

  v368 = 0;
  *v385 = *v385 + v363 * -0.00000000333564095;
  *v372 = vmlaq_f64(*v372, vdupq_n_s64(0xBE2CA726EB25F9DBLL), v399);
  *(a1 + 10472) = v363 + *(a1 + 10472);
  *(a1 + 8280) = v399.f64[0] + *(a1 + 8280);
  *(a1 + 8296) = v399.f64[1] + *(a1 + 8296);
  do
  {
    *(a1 + 10480 + v368) = *(a1 + 10480 + v368) + *(&v413 + v368);
    v368 += 8;
  }

  while (v368 != 24);
LABEL_757:
  if (v308)
  {
    ECEF2Geo(a2 + 664, &WGS84_Datum, v393);
  }
}

void NK_Final_Check_ClkBias(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49[1] = *MEMORY[0x29EDCA608];
  v47 = 0;
  v46 = 0;
  if (a1 > 2)
  {
    if ((a1 - 5) < 2 || a1 == 3)
    {
      return;
    }

    v46 = 4;
    v6 = 2;
    v7 = 24152;
    v8 = 752;
  }

  else
  {
    if (!a1)
    {
      return;
    }

    if (a1 == 1)
    {
      v6 = 0;
      v46 = 1;
      v7 = 24136;
      v8 = 736;
    }

    else
    {
      v46 = 2;
      v6 = 1;
      v7 = 24144;
      v8 = 744;
    }
  }

  LOBYTE(v47) = v6;
  v9 = *(a3 + v8);
  v10 = *(a3 + v7);
  v48 = v10;
  v49[0] = v9;
  v11 = *(a3 + 25596);
  if (v11 == -1)
  {
    return;
  }

  v45 = 0.0;
  if (R8_EQ((a3 + 25608), &v45))
  {
    return;
  }

  v44 = 0.0;
  if (R8_EQ(v49, &v44))
  {
    return;
  }

  v13 = *(a3 + 25597);
  if (v13 == 1)
  {

    NK_Final_Check_ClkBias_Reset(a1, a2, a3);
    return;
  }

  v14 = (*(a3 + 25608) - v9) * 299792458.0;
  if (v13 != 2)
  {
    v18 = *(a3 + 24536);
    if (v18 >= 25000000.0)
    {
      goto LABEL_76;
    }

    v19 = *(a3 + 24544);
    if (v19 >= 25000000.0)
    {
      goto LABEL_76;
    }

    v20 = *(a3 + 24552);
    if (v20 >= 25000000.0)
    {
      goto LABEL_76;
    }

    v21 = *(a3 + 24496 + 8 * v11);
    if (v21 >= 25000000.0 && *(a3 + 24496 + 8 * v6) >= 25000000.0)
    {
      goto LABEL_76;
    }

    v22 = 0;
    v23 = (a3 + 25592);
    v24 = v18 + 22500.0 + v19 + v20 + *(a3 + 24528);
    v25 = 1;
    v43 = (a3 + 25592);
    while (1)
    {
      v26 = v22;
      v27 = v25;
      v28 = (v25 & 1) != 0 ? v23 : &v46;
      v22 = *v28;
      if (v22 > 6)
      {
        break;
      }

      if (((1 << v22) & 0x6A) != 0)
      {
        v22 = *(a3 + 24783);
      }

      else
      {
        if (v22 == 2)
        {
          v22 = *(a3 + 24788);
          v29 = *(a3 + 24808);
        }

        else
        {
          if (v22 != 4)
          {
            break;
          }

          v22 = *(a3 + 24793);
          v29 = *(a3 + 24812);
        }

        if (v29)
        {
          ++v22;
        }
      }

LABEL_41:
      v25 = 0;
      if ((v27 & 1) == 0)
      {
        v30 = (v21 + v24) * 9.0;
        if (v14 * v14 <= v30 && v10 < 2496542160.0 && (v26 < 2 || v22 || fabs(v14) < 150.0))
        {
          goto LABEL_75;
        }

        EvLog_nd("NKFC:  Constellation Clock Bias deviation event ! ", 4, v12, *v23, a1, v14, sqrt(v30));
        if (*(a3 + 25600) > 2496542160.0)
        {
          *(a3 + 25608) = 0;
          if (!*(a3 + 25597))
          {
            NK_Final_Check_ClkBias_Reset(*(a3 + 25592), a2, a3);
            *(a3 + 25597) = 1;
          }
        }

        if (v10 > 2496542160.0)
        {
          v49[0] = 0.0;
          NK_Final_Check_ClkBias_Reset(a1, a2, a3);
        }

        v45 = 0.0;
        if (R8_EQ((a3 + 25608), &v45))
        {
          goto LABEL_75;
        }

        v44 = 0.0;
        if (R8_EQ(v49, &v44))
        {
          goto LABEL_75;
        }

        v31 = v14 * 0.333333333 * (v14 * 0.333333333);
        if (*(a3 + 25597))
        {
          goto LABEL_68;
        }

        *(a2 + 128) = 1;
        *(a2 + 132) = 70;
        if (*(a3 + 12) >= 10)
        {
          *(a3 + 12) = 9;
        }

        NK_Final_Check_ClkBias_Reset(*v43, a2, a3);
        v32 = *v43;
        if (*v43 == 1)
        {
          v33 = 24312;
          v34 = 24224;
          v35 = 24136;
        }

        else
        {
          if (v32 != 4)
          {
            if (v32 == 2)
            {
              v33 = 24320;
              v34 = 24232;
              v35 = 24144;
              goto LABEL_66;
            }

LABEL_67:
            *(a3 + 25597) = 2;
LABEL_68:
            NK_Final_Check_ClkBias_Reset(a1, a2, a3);
            switch(a1)
            {
              case 1:
                v39 = 24312;
                v40 = 24224;
                v41 = 24136;
                break;
              case 4:
                v39 = 24328;
                v40 = 24240;
                v41 = 24152;
                break;
              case 2:
                v39 = 24320;
                v40 = 24232;
                v41 = 24144;
                break;
              default:
LABEL_75:
                if (!*(a3 + 25597))
                {
LABEL_76:
                  *(a3 + 25597) = 3;
                }

                return;
            }

            *(a3 + v41) = v31 + *(a3 + v41);
            v42 = v31 + *(a3 + v40);
            *(a3 + v40) = v42;
            *(a3 + v39) = sqrt(v42);
            goto LABEL_75;
          }

          v33 = 24328;
          v34 = 24240;
          v35 = 24152;
        }

LABEL_66:
        *(a3 + v35) = v31 + *(a3 + v35);
        v38 = v31 + *(a3 + v34);
        *(a3 + v34) = v38;
        *(a3 + v33) = sqrt(v38);
        goto LABEL_67;
      }
    }

    if (v22)
    {
      EvCrt_Illegal_Default("NK_Final_Check_ClkBias", 3075);
      v23 = (a3 + 25592);
      v22 = 0;
    }

    goto LABEL_41;
  }

  NK_Final_Check_ClkBias_Reset(a1, a2, a3);
  switch(a1)
  {
    case 1:
      v15 = 24312;
      v16 = 24224;
      v17 = 24136;
      break;
    case 4:
      v15 = 24328;
      v16 = 24240;
      v17 = 24152;
      break;
    case 2:
      v15 = 24320;
      v16 = 24232;
      v17 = 24144;
      break;
    default:
      return;
  }

  v36 = v14 * 0.333333333 * (v14 * 0.333333333);
  *(a3 + v17) = v36 + *(a3 + v17);
  v37 = v36 + *(a3 + v16);
  *(a3 + v16) = v37;
  *(a3 + v15) = sqrt(v37);
}

uint64_t NK_Final_Check_ClkBias_Reset(uint64_t result, uint64_t a2, uint64_t a3)
{
  switch(result)
  {
    case 4:
      *(a3 + 752) = 0;
      *(a3 + 770) = 0;
      *(a2 + 8296) = 0;
      *(a2 + 8288) = 0;
      break;
    case 2:
      *(a3 + 744) = 0;
      *(a3 + 769) = 0;
      *(a2 + 8280) = 0;
      *(a2 + 8274) = 0;
      break;
    case 1:
      *(a3 + 736) = 0;
      *(a3 + 768) = 0;
      *(a2 + 10472) = 0;
      *(a2 + 8272) = 0;
      break;
  }

  return result;
}

uint64_t asn1PD_PosPayLoadVer2(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v12 = 0;
  Ver2Extension = Asn1Coder::DecodeChoiceExtension(a1, &v12);
  v10 = 0;
  v11 = 0;
  if (Ver2Extension)
  {
    v5 = Ver2Extension;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_7:
    SuplAsn1Logger::TraceError(Ver2Extension, v6, v7);
    return v5;
  }

  *a2 = v12 + 4;
  Asn1Coder::DecodeOpenTypeFieldStart(a1, &v10);
  if (Ver2Extension)
  {
    v5 = Ver2Extension;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  Ver2Extension = asn1PD_PosPayLoadVer2Extension(a1, (a2 + 80));
  if (Ver2Extension)
  {
    v5 = Ver2Extension;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  if (*(a2 + 80))
  {
    *a2 = 4;
  }

  if (*(a2 + 81))
  {
    *a2 = 5;
  }

  v5 = 0;
  v9 = v10.i32[0];
  *(a1 + 8) = v11 + v10.i32[1];
  *(a1 + 12) = v9;
  return v5;
}

uint64_t asn1PD_PosPayLoadVer2Extension(uint64_t a1, uint64_t *a2)
{
  Asn1Coder::GetBitFromBuffer(a1);
  lppPayload = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_7;
  }

  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  lppPayload = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_7;
  }

  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  *(a2 + 1) = BitFromBuffer;
  lppPayload = *(a1 + 16);
  if (*(a1 + 16))
  {
LABEL_6:
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = lppPayload;
    goto LABEL_7;
  }

  if (*a2)
  {
    lppPayload = asn1PD_PosPayLoad_lppPayload(a1, a2 + 1);
    if (lppPayload)
    {
      goto LABEL_6;
    }

    BitFromBuffer = *(a2 + 1);
  }

  if (!BitFromBuffer)
  {
    return 0;
  }

  lppPayload = 1;
  *(a1 + 16) = 1;
  SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  v7 = 1;
LABEL_7:
  SuplAsn1Logger::TraceError(v7, v5, v6);
  return lppPayload;
}

uint64_t asn1PD_PosPayLoad_lppPayload(uint64_t a1, uint64_t *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v14 = 3;
  v5 = Asn1Coder::DecodeInteger(a1, 1, 3, &v14);
  std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::clear[abi:ne200100](a2);
  if (v5)
  {
    SuplAsn1Logger::TraceError(v5, *(a1 + 8), *(a1 + 12));
  }

  else
  {
    v6 = v14;
    if (v14 < 1)
    {
LABEL_12:
      LOBYTE(v5) = 0;
    }

    else
    {
      while (1)
      {
        v13 = 0;
        v7 = Asn1Coder::DecodeInteger(a1, 1, 0xEA60u, &v13);
        LOBYTE(v5) = v7;
        if (v7)
        {
          SuplAsn1Logger::TraceError(v7, *(a1 + 8), *(a1 + 12));
          return v5;
        }

        __p = 0;
        v11 = 0;
        v12 = 0;
        Asn1Coder::GetBitStringFromBuffer(a1, 8 * v13, &__p, 0);
        v8 = *(a1 + 16);
        if (*(a1 + 16))
        {
          SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
          v2 = v8;
        }

        else
        {
          std::vector<ASN1T_PosPayLoad_lpppayload>::push_back[abi:ne200100](a2, &__p);
        }

        if (__p)
        {
          v11 = __p;
          operator delete(__p);
        }

        if (v8)
        {
          break;
        }

        if (!--v6)
        {
          goto LABEL_12;
        }
      }

      LOBYTE(v5) = v2;
    }
  }

  return v5;
}

uint64_t asn1PE_PosPayLoadVer2(uint64_t a1, _BYTE *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v10 = *a2 - 4;
  Ver2Extension = Asn1Coder::EncodeChoiceExtension(a1, &v10);
  v9 = 0;
  if (Ver2Extension)
  {
    v5 = Ver2Extension;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    Ver2Extension = Asn1Coder::EncodeOpenTypeFieldStart(a1, &v9);
    if (Ver2Extension)
    {
      v5 = Ver2Extension;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
    }

    else
    {
      Ver2Extension = asn1PE_PosPayLoadVer2Extension(a1, a2 + 80);
      if (!Ver2Extension)
      {
        return Asn1Coder::EncodeOpenTypeFieldEnd(a1, &v9);
      }

      v5 = Ver2Extension;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
    }
  }

  SuplAsn1Logger::TraceError(Ver2Extension, v6, v7);
  return v5;
}

uint64_t asn1PE_PosPayLoadVer2Extension(uint64_t a1, unsigned __int8 *a2)
{
  Asn1Coder::AddBitToBuffer(a1, 0);
  lppPayload = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
  }

  else
  {
    Asn1Coder::AddBitToBuffer(a1, *a2);
    lppPayload = *(a1 + 16);
    if (*(a1 + 16))
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      v7 = *(a1 + 16);
    }

    else
    {
      Asn1Coder::AddBitToBuffer(a1, a2[1]);
      lppPayload = *(a1 + 16);
      if (*(a1 + 16) || *a2 && (lppPayload = asn1PE_PosPayLoad_lppPayload(a1, a2 + 1), lppPayload))
      {
        v5 = *(a1 + 8);
        v6 = *(a1 + 12);
        v7 = lppPayload;
      }

      else
      {
        if (!a2[1])
        {
          return 0;
        }

        lppPayload = 1;
        *(a1 + 16) = 1;
        SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
        v5 = *(a1 + 8);
        v6 = *(a1 + 12);
        v7 = 1;
      }
    }
  }

  SuplAsn1Logger::TraceError(v7, v5, v6);
  return lppPayload;
}

uint64_t asn1PE_PosPayLoad_lppPayload(uint64_t a1, void *a2)
{
  v4 = 0;
  v5 = a2[1] - *a2;
  if (v5)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = (*a2 + 8);
    do
    {
      if (*(v7 - 1) != *v7)
      {
        ++v4;
      }

      v7 += 3;
      --v6;
    }

    while (v6);
  }

  v8 = Asn1Coder::EncodeInteger(a1, 1, 3, v4);
  if (v8)
  {
    v9 = v8;
    v10 = *(a1 + 8);
    v11 = *(a1 + 12);
    goto LABEL_10;
  }

  v13 = *a2;
  v12 = a2[1];
  if (v12 == *a2)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = *(v13 + v14);
    v17 = *(v13 + v14 + 8);
    if (v16 != v17)
    {
      break;
    }

LABEL_16:
    ++v15;
    v14 += 24;
    if (v15 >= 0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3))
    {
      return 0;
    }
  }

  v8 = Asn1Coder::EncodeOctetString(a1, 1, 60000, v17 - v16, (v13 + v14), 0, 0);
  if (!v8)
  {
    v13 = *a2;
    v12 = a2[1];
    goto LABEL_16;
  }

  v9 = v8;
  v10 = *(a1 + 8);
  v11 = *(a1 + 12);
LABEL_10:
  SuplAsn1Logger::TraceError(v8, v10, v11);
  return v9;
}

void SuplInitRecd::SuplInitRecd(SuplInitRecd *this)
{
  *this = 0;
  *(this + 16) = 0;
  *(this + 24) = 0u;
  v2 = this + 24;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  Instance = SuplVersionNegotiation::GetInstance(this);
  v4 = atomic_load((Instance + 1));
  v5 = v4 == 255;
  v6 = 1;
  if (v5)
  {
    v6 = 2;
  }

  v7 = atomic_load((Instance + v6));
  *(this + 16) = -1;
  *(this + 26) = v7;
  *(this + 27) = 0;
  *(this + 5) = 0;
  ASN1T_SessionID::ASN1T_SessionID((this + 48));
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  std::vector<unsigned char>::vector[abi:ne200100](this + 48, 4);
  *(this + 408) = 0u;
  *(this + 408) = -1;
  *(this + 63) = 0;
  *(this + 17) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 485) = 0u;
  *(this + 16) = 1;
  v8 = operator new(0x238uLL, MEMORY[0x29EDC9418]);
  if (v8)
  {
    *(v8 + 2) = 0;
    v8[12] = 0;
    *(v8 + 3) = 0;
    *(v8 + 4) = 0;
    *(v8 + 2) = 0;
    *(v8 + 7) = 0;
    *(v8 + 8) = 0;
    *(v8 + 6) = 0;
    *(v8 + 13) = -1;
    v8[40] = -1;
    *(v8 + 36) = 255;
    *(v8 + 10) = 0;
    *(v8 + 11) = 0;
    v8[80] = -1;
    *(v8 + 6) = 0u;
    *(v8 + 7) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 9) = 0u;
    *(v8 + 10) = 0u;
    *(v8 + 22) = 0;
    *(v8 + 70) = 0;
    *(v8 + 33) = 0u;
    *(v8 + 34) = 0u;
    *(v8 + 31) = 0u;
    *(v8 + 32) = 0u;
    *(v8 + 29) = 0u;
    *(v8 + 30) = 0u;
    *(v8 + 27) = 0u;
    *(v8 + 28) = 0u;
    *(v8 + 25) = 0u;
    *(v8 + 26) = 0u;
    *(v8 + 23) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 21) = 0u;
    *(v8 + 22) = 0u;
    *(v8 + 19) = 0u;
    *(v8 + 20) = 0u;
    *(v8 + 17) = 0u;
    *(v8 + 18) = 0u;
    *(v8 + 15) = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 13) = 0u;
    *(v8 + 14) = 0u;
    *(v8 + 12) = 0u;
    v8[360] = -1;
    *(v8 + 460) = 0;
    *(v8 + 452) = 0;
    *(v8 + 467) = 0;
    *(v8 + 62) = 0;
    *(v8 + 63) = 0;
    *(v8 + 61) = 0;
    *(v8 + 128) = 0;
    *(v8 + 65) = 0;
    *(v8 + 67) = 0;
    *(v8 + 66) = 0;
    v8[544] = 0;
    *(v8 + 138) = 0;
    *(v8 + 278) = 0;
    *(v8 + 376) = 0u;
    *(v8 + 392) = 0u;
    *(v8 + 408) = 0u;
    *(v8 + 424) = 0u;
    *(v8 + 433) = 0u;
    *(v8 + 2) = 2304;
    *v8 = 0;
    v8[184] = 0;
  }

  *(this + 5) = v8;
  v9 = operator new(8uLL, MEMORY[0x29EDC9418]);
  if (v9)
  {
    *v9 = v2;
  }

  *(this + 1) = v9;
}

void sub_2996B55CC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 360);
  if (v4)
  {
    *(v1 + 368) = v4;
    operator delete(v4);
  }

  ASN1T_SuplMessage::~ASN1T_SuplMessage(v2);
  _Unwind_Resume(a1);
}

void SuplInitRecd::~SuplInitRecd(SuplInitRecd *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x29C29EB20](v2, 0x20C4093837F09);
  }

  *(this + 1) = 0;
  LcsTimer::Release((this + 496));
  v3 = *(this + 59);
  if (v3)
  {
    *(this + 60) = v3;
    operator delete(v3);
  }

  v4 = *(this + 56);
  if (v4)
  {
    *(this + 57) = v4;
    operator delete(v4);
  }

  v5 = *(this + 53);
  if (v5)
  {
    *(this + 54) = v5;
    operator delete(v5);
  }

  v6 = *(this + 48);
  if (v6)
  {
    *(this + 49) = v6;
    operator delete(v6);
  }

  v7 = *(this + 45);
  if (v7)
  {
    *(this + 46) = v7;
    operator delete(v7);
  }

  v8 = *(this + 42);
  if (v8)
  {
    *(this + 43) = v8;
    operator delete(v8);
  }

  v9 = *(this + 39);
  if (v9)
  {
    *(this + 40) = v9;
    operator delete(v9);
  }

  v10 = *(this + 36);
  if (v10)
  {
    *(this + 37) = v10;
    operator delete(v10);
  }

  v11 = *(this + 31);
  if (v11)
  {
    *(this + 32) = v11;
    operator delete(v11);
  }

  ASN1T_SETId::U::~U((this + 72));
  ASN1T_UlpMessage::~ASN1T_UlpMessage((this + 32));
}

void sub_2996B5724(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

SuplVersionNegotiation *SuplInitRecd::FillHash(SimUtils *a1, uint64_t a2, uint64_t a3, int a4)
{
  v27 = *MEMORY[0x29EDCA608];
  v22[0] = 0;
  __p[1] = 0;
  v24 = 0;
  __p[0] = 0;
  v25 = 7275;
  Instance = SimUtils::GetInstance(a1);
  SlpFqdn = SimUtils::GetSlpFqdn(Instance, v22, a3, a4);
  v10 = SlpFqdn;
  if (SlpFqdn)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 69, "FillHash", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v12, 0, 1);
    }

    goto LABEL_14;
  }

  v13 = SuplVersionNegotiation::GetInstance(SlpFqdn);
  v14 = atomic_load(v13 + 1);
  v15 = v14 == 255;
  v16 = 1;
  if (v15)
  {
    v16 = 2;
  }

  v17 = atomic_load(&v13[v16]);
  if (v17 == 1)
  {
    v18 = (a1 + 360);
LABEL_9:
    calculateHmac<SUPL_SHA_1>(__p, v18, a2);
    goto LABEL_10;
  }

  v19 = SuplUtils::GetInstance(v13);
  v18 = (a1 + 360);
  if (*(v19 + 37))
  {
    goto LABEL_9;
  }

  calculateHmac<SUPL_SHA_256>(__p, v18, a2);
LABEL_10:
  v20 = *(a2 + 8) - *a2;
  if (v20 > 7)
  {
    if (v20 != 8)
    {
      *(a2 + 8) = *a2 + 8;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 8 - v20);
  }

LABEL_14:
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_2996B5908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SuplInitRecd::ProcessSuplInit(uint64_t a1, uint64_t a2, char **a3)
{
  v53 = *MEMORY[0x29EDCA608];
  __p = 0;
  v48 = 0;
  v49 = 0;
  v5 = a3 + 1;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v50[0] = &__p;
  v50[1] = 0;
  v51 = 0;
  v46[0] = v50;
  v46[1] = a1 + 24;
  v6 = *a3;
  v7 = *v5;
  if (v6 == *v5)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "SPL", 69, "ProcessSuplInit", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v14, 0, 1);
    }
  }

  else
  {
    v8 = v7 - v6;
    v9 = *(a1 + 376);
    v10 = *(a1 + 360);
    if (v9 - v10 < v7 - v6)
    {
      if (v10)
      {
        *(a1 + 368) = v10;
        operator delete(v10);
        v9 = 0;
        *(a1 + 360) = 0;
        *(a1 + 368) = 0;
        *(a1 + 376) = 0;
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        v11 = 2 * v9;
        if (2 * v9 <= v8)
        {
          v11 = v7 - v6;
        }

        if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        std::vector<unsigned char>::__vallocate[abi:ne200100]((a1 + 360), v12);
      }

      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v15 = *(a1 + 368);
    v16 = v15 - v10;
    if (v15 - v10 >= v8)
    {
      memmove(*(a1 + 360), v6, v7 - v6);
      v21 = &v10[v8];
    }

    else
    {
      v17 = &v6[v16];
      if (v15 != v10)
      {
        memmove(*(a1 + 360), v6, v16);
        v15 = *(a1 + 368);
      }

      v18 = v15;
      if (v17 != v7)
      {
        v18 = (&v7[v15] - v17);
        v19 = v15;
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != v7);
      }

      v21 = v18;
    }

    *(a1 + 368) = v21;
  }

  v22 = SuplMessage::Decode(v46);
  if (*(a1 + 32) == 1)
  {
    if (v22)
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v24), "SPL", 69, "ProcessSuplInit", 770);
        IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v25, 0, 1);
      }

      v26 = 3;
      goto LABEL_45;
    }

    v30 = *(a1 + 40);
    LOBYTE(v31) = *(a1 + 26);
    if (*(v30 + 247))
    {
      v31 = *(v30 + 560);
    }

    IsLoggingAllowed = SuplVersionNegotiation::Instance::NegotiateNetInitiated(*(a1 + 26), v31);
    if (!IsLoggingAllowed)
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v34 = mach_continuous_time();
        v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v34), "SPL", 69, "ProcessSuplInit", 515);
        IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v35, 0, 1);
      }

      v26 = 10;
      goto LABEL_45;
    }

    if (*(a1 + 48))
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (!IsLoggingAllowed)
      {
LABEL_37:
        v26 = 12;
LABEL_45:
        *(a1 + 18) = v26;
        goto LABEL_46;
      }
    }

    else
    {
      if (*(v30 + 184))
      {
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v36 = mach_continuous_time();
          v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v36), "SPL", 69, "ProcessSuplInit", 515);
          IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v37, 0, 1);
        }

        v26 = 13;
        goto LABEL_45;
      }

      if (*(v30 + 5) == 9 && !*v30)
      {
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v42 = mach_continuous_time();
          v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v42), "SPL", 69, "ProcessSuplInit", 515);
          IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v43, 0, 1);
        }

        v26 = 4;
        goto LABEL_45;
      }

      if (*(a1 + 49))
      {
        if (!*(a1 + 8))
        {
          goto LABEL_47;
        }

        v40 = *(a1 + 40);
        if (v40[5] - 11 > 1 || v40[246])
        {
          if (v40[245] != 1 || !v40[480])
          {
            goto LABEL_47;
          }

          v41 = 20;
        }

        else
        {
          v41 = 7;
        }

        *(a1 + 18) = v41;
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v44 = mach_continuous_time();
          v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v44), "SPL", 69, "ProcessSuplInit", 515);
          IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v45, 0, 1);
        }

LABEL_46:
        *(a1 + 17) = 1;
LABEL_47:
        Instance = SuplUtils::GetInstance(IsLoggingAllowed);
        SuplUtils::CopySlpSessionId(Instance, a1 + 384, a1 + 24);
        v29 = 0;
        goto LABEL_48;
      }

      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (!IsLoggingAllowed)
      {
        goto LABEL_37;
      }
    }

    bzero(__str, 0x410uLL);
    v32 = mach_continuous_time();
    v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v32), "SPL", 69, "ProcessSuplInit", 515);
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v33, 0, 1);
    goto LABEL_37;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v27 = mach_continuous_time();
    v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v27), "SPL", 69, "ProcessSuplInit", 515);
    LbsOsaTrace_WriteLog(0x12u, __str, v28, 0, 1);
  }

  v29 = -5;
LABEL_48:
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  return v29;
}

void sub_2996B60DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GLON_AlmBin2Int(uint64_t result, uint64_t a2)
{
  *a2 = *result;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 16);
  *(a2 + 10) = (*(result + 12) >> 19) & 0x1F;
  *(a2 + 11) = (*(result + 32) >> 20) & 0x1F;
  v3 = (v2 >> 2) & 0x3FFFF;
  if ((v2 & 0x80000) != 0)
  {
    v3 = -((v2 >> 2) & 0x1FFFF);
  }

  *(a2 + 20) = v3;
  v4 = *(result + 28);
  if ((v4 & 0x200000) != 0)
  {
    v5 = -(v4 & 0x1FFFFF);
  }

  else
  {
    v5 = v4 & 0x3FFFFF;
  }

  *(a2 + 24) = v5;
  v6 = *(result + 32);
  v7 = v6 >> 25;
  if (v6 < 0)
  {
    v7 = -((v6 >> 25) & 0x3F);
  }

  *(a2 + 28) = v7;
  v9 = *(result + 24);
  v8 = 32 * v9;
  LOWORD(v9) = v9 >> 11;
  if (((v8 >> 16) & 0x8000) != 0)
  {
    v9 = -(v9 & 0x7FFF);
  }

  *(a2 + 32) = v9;
  v10 = *(result + 12);
  v11 = *(result + 16);
  v12 = (v10 >> 9) & 0x3FF;
  if ((v10 & 0x40000) != 0)
  {
    v12 = -((v10 >> 9) & 0x1FF);
  }

  *(a2 + 34) = v12;
  *(a2 + 36) = (v10 & 0x4000000) != 0;
  *(a2 + 37) = HIBYTE(v10) & 3;
  *(a2 + 38) = (v6 & 0x80000) != 0;
  v13 = __PAIR64__(v10, v11) >> 20;
  v14 = (__PAIR64__(v10, v11) >> 20) & 0x1FFFFF;
  v15 = v13 & 0xFFFFF;
  if ((v10 & 0x100) != 0)
  {
    v16 = -v15;
  }

  else
  {
    v16 = v14;
  }

  *(a2 + 12) = v16;
  v17 = *(result + 24);
  HIDWORD(v18) = *(result + 16);
  LODWORD(v18) = *(result + 20);
  v19 = (v18 >> 19) & 0x7FFF;
  *(a2 + 16) = (v17 & 0x7FF) << 10;
  HIDWORD(v18) = v17;
  LODWORD(v18) = *(result + 28);
  *(a2 + 30) = v19;
  *(a2 + 16) = (v18 >> 22) & 0x1FFFFF;
  return result;
}

uint64_t GLON_AlmInt2Bin(uint64_t result, uint64_t a2)
{
  v2 = *(result + 10);
  *a2 = *result;
  *(a2 + 8) = *(result + 8);
  v3 = (((v2 - 1 - 5 * (((26215 * (v2 - 1)) >> 17) + ((26215 * (v2 - 1)) >> 31))) << 28) + 805306368) & 0x70000000;
  v4 = ((v2 & 0x1F) << 19) & 0xFCFFFFFF | ((*(result + 37) & 3) << 24) | v3 | (*(result + 36) << 26);
  v5 = *(result + 34);
  if ((v5 & 0x200) != 0)
  {
    v5 = -v5 | 0x200;
  }

  v6 = v4 & 0xFFF801FF | ((v5 & 0x3FF) << 9);
  *(a2 + 12) = v6;
  v7 = *(result + 12);
  if ((v7 & 0x100000) != 0)
  {
    v7 = -v7 | 0x100000;
  }

  *(a2 + 12) = v6 & 0xFFFFFE00 | (v7 >> 12) & 0x1FF;
  *(a2 + 16) = v7 << 20;
  v8 = *(result + 20);
  if ((v8 & 0x20000) != 0)
  {
    v8 = -v8 | 0x20000;
  }

  v9 = *(result + 30);
  *(a2 + 16) = (v9 >> 13) & 3 | (4 * (v8 & 0x3FFFF)) & 0xFFFFF | (v7 << 20);
  *(a2 + 20) = v9 << 19;
  v10 = *(result + 32);
  if ((v10 & 0x8000) != 0)
  {
    v10 = -v10 | 0x8000;
  }

  v11 = v3 & 0xF80007FF | (v10 << 11) | 0x8000000;
  *(a2 + 24) = v11;
  *(a2 + 24) = v11 & 0xFFFFF800 | (*(result + 16) >> 10) & 0x7FF;
  v12 = *(result + 16) << 22;
  *(a2 + 28) = v12;
  v13 = *(result + 24);
  if ((v13 & 0x200000) != 0)
  {
    v13 = -v13 | 0x200000;
  }

  v14 = v12 & 0xFFC00000 | v13 & 0x3FFFFF;
  v15 = *(result + 28);
  if ((v15 & 0x40) != 0)
  {
    v15 = -v15 | 0x40;
  }

  v16 = ((*(result + 11) & 0x1F) << 20) | (v15 << 25) | (*(result + 38) << 19);
  *(a2 + 28) = v14;
  *(a2 + 32) = v16;
  return result;
}

double lsim12_00TimersInit(void)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim12_00TimersInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  v2 = &qword_2A191FFA0;
  v3 = 5;
  do
  {
    *(v2 - 4) = 0;
    *v2 = 0;
    *(v2 + 2) = -1;
    v2 += 3;
    --v3;
  }

  while (v3);
  g_LsimTmrArray = 8615942;
  *(&qword_2A191FFA8 + 4) = 0x83790600000001;
  unk_2A191FFC4 = 0x837A0600000002;
  unk_2A191FFDC = 0x837B0600000003;
  unk_2A191FFF4 = 0x837C0600000004;
  dword_2A192000C = 5;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 73, "lsim12_00TimersInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v6, 4, 1);
  }

  return result;
}

uint64_t lsim12_01StartTimer(uint64_t a1, int a2, unsigned int a3, int a4)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim12_01StartTimer");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  v10 = 0;
  v11 = &g_LsimTmrArray;
  while (v11[5] != a4 || *(v11 + 4) == 1)
  {
    --v10;
    v11 += 6;
    if (v10 == -5)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MaxTmrIndex,SrcID,%u,SrcType,%u\n", v12);
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  if (AgpsFsmStartTimer(*v11, a3))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx OsaTmr,Status,%hhu,TimerId,%u,SrcID,%u,SrcType,%u\n", v14, "LSM");
LABEL_12:
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 0, 1);
    }

LABEL_13:
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "lsim12_01StartTimer");
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
    }

    return 0;
  }

  *(v11 + 4) = 1;
  *(v11 + 1) = a1;
  v11[4] = a2;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: OsaTmr,Start,Timer,%u,Index,%u,duration,%ums,SrcID,%u,SrcType,%u\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "lsim12_01StartTimer", *v11, -v10, a3, v11[4], v11[5]);
    LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v21 = mach_continuous_time();
  v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 73, "lsim12_01StartTimer");
  v17 = 1;
  LbsOsaTrace_WriteLog(0xCu, __str, v22, 4, 1);
  return v17;
}

uint64_t lsim12_02StopTimer(int a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim12_02StopTimer");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  v6 = 0;
  v7 = &qword_2A191FFA8;
  while (1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (*(v7 - 12))
      {
        v9 = "ACTIVE";
      }

      else
      {
        v9 = "NOT USED";
      }

      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerIndex,%u,Timer,%u,SrcID,%u,SourceType,%u,Status,%s\n", v8, "LSM", 68, "lsim12_02StopTimer", v6, *(v7 - 4), *v7, *(v7 + 1), v9);
      LbsOsaTrace_WriteLog(0xCu, __str, v10, 5, 1);
    }

    if (*(v7 - 12) == 1 && *v7 == a1 && *(v7 + 1) == a2)
    {
      break;
    }

    ++v6;
    v7 += 3;
    if (v6 == 5)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SrcID,%u,SrcType,%u\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 87, "lsim12_02StopTimer", 770, a1, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v12, 2, 1);
      }

LABEL_19:
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "lsim12_02StopTimer");
        LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
      }

      return 0;
    }
  }

  v13 = AgpsFsmStopTimer(*(v7 - 4));
  if (v13)
  {
    v14 = v13;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx OsaTmr,Status,%hhu,TimerId,%u,SrcID,%u,SrcType,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 69, "lsim12_02StopTimer", 1545, v14, *(v7 - 4), *v7, *(v7 + 1));
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 0, 1);
    }

    *(v7 - 1) = 0;
    *v7 = -1;
    goto LABEL_19;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v21 = mach_continuous_time();
    v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: OsaTmr,Stop,Timer,%u,SourceID,%u\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 73, "lsim12_02StopTimer", *(v7 - 4), *v7);
    LbsOsaTrace_WriteLog(0xCu, __str, v22, 4, 1);
  }

  *(v7 - 12) = 0;
  *(v7 - 1) = 0;
  *v7 = -1;
  if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v23 = mach_continuous_time();
  v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 73, "lsim12_02StopTimer");
  v19 = 1;
  LbsOsaTrace_WriteLog(0xCu, __str, v24, 4, 1);
  return v19;
}

void lsim12_04TimersDeinit(void)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim12_04TimersDeinit");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  v2 = 0;
  v3 = &qword_2A191FFA8;
  do
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (*(v3 - 12))
      {
        v5 = "ACTIVE";
      }

      else
      {
        v5 = "NOT USED";
      }

      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerIndex,%u,TimerId,%u,SrcID,%u,SrcType,%u,Status,%s\n", v4, "LSM", 68, "lsim12_04TimersDeinit", v2, *(v3 - 4), *v3, *(v3 + 1), v5);
      LbsOsaTrace_WriteLog(0xCu, __str, v6, 5, 1);
    }

    if (*(v3 - 12) == 1)
    {
      v7 = AgpsFsmStopTimer(*(v3 - 4));
      if (v7)
      {
        v8 = v7;
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v9 = mach_continuous_time();
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx OsaTmr,Status,%hhu,TimerId,%u,SrcID,%u,SrcType,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 69, "lsim12_04TimersDeinit", 1545, v8, *(v3 - 4), *v3, *(v3 + 1));
          v11 = 0;
LABEL_15:
          LbsOsaTrace_WriteLog(0xCu, __str, v10, v11, 1);
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: OsaTmr,DeInit,Timer,%u,SrcID,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim12_04TimersDeinit", *(v3 - 4), *v3);
        v11 = 4;
        goto LABEL_15;
      }

      *(v3 - 12) = 0;
      *(v3 - 1) = 0;
      *v3 = 0xFFFFFFFFLL;
      *(v3 - 4) = 0;
    }

    ++v2;
    v3 += 3;
  }

  while (v2 != 5);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 73, "lsim12_04TimersDeinit");
    LbsOsaTrace_WriteLog(0xCu, __str, v14, 4, 1);
  }
}

uint64_t lsim12_05TimerExpiry(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim12_05TimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIMUP_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim12_05TimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  v6 = *(a1 + 4);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "lsim12_03TimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
  }

  v9 = 0;
  v10 = &qword_2A191FFA8;
  while (1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (*(v10 - 12))
      {
        v12 = "ACTIVE";
      }

      else
      {
        v12 = "NOT USED";
      }

      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerIndex,%u,TimerId,%u,SrcID,%u,SourceType,%u,Status,%s\n", v11, "LSM", 68, "lsim12_03TimerExpiry", v9, *(v10 - 4), *v10, *(v10 + 1), v12);
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 5, 1);
    }

    if (*(v10 - 4) == v6)
    {
      break;
    }

    ++v9;
    v10 += 3;
    if (v9 == 5)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimerId,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "lsim12_03TimerExpiry", 2052, v6);
        LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
      }

      goto LABEL_24;
    }
  }

  if (*(v10 - 1))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerId,%u,TimerIndex,%u,SrcID,%u,SrcType,%u,Expired\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "lsim12_03TimerExpiry", *(v10 - 4), v9, *v10, *(v10 + 1));
      LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
    }

    (*(v10 - 1))(*v10, *(v10 + 1));
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SrcID,%u,TimerId,%u,TimerIndex,%u\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 87, "lsim12_03TimerExpiry", 258, *v10, *(v10 - 4), v9);
    LbsOsaTrace_WriteLog(0xCu, __str, v19, 2, 1);
  }

  *(v10 - 12) = 0;
  *(v10 - 1) = 0;
  *v10 = -1;
LABEL_24:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 73, "lsim12_03TimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "lsim12_05TimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
  }

  return 0;
}

void ms_report_exception(int a1, int a2, int a3, char *a4)
{
  v28 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&__p, "NULLFileName");
  if (a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, a4);
    size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    p_str = __str.__r_.__value_.__r.__words[0];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v10 = &p_str[-1].__r_.__value_.__r.__words[2] + 7;
    do
    {
      if (!size)
      {
        goto LABEL_14;
      }

      v11 = v10[size--];
    }

    while (v11 != 92 && v11 != 47);
    if (size == -1)
    {
LABEL_14:
      std::string::operator=(&__p, &__str);
      goto LABEL_15;
    }

    std::string::basic_string(&v24, &__str, size + 1, 0xFFFFFFFFFFFFFFFFLL, &v26);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v24;
LABEL_15:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  switch(a1)
  {
    case 2:
      if (a2 == 3)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(&__str, 0x410uLL);
          v15 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v17 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx file,%s,line,%d\n", v15, "PSP", 69, "ms_report_exception", 513, p_p, a3);
          LbsOsaTrace_WriteLog(0x13u, &__str, v17, 0, 1);
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(&__str, 0x410uLL);
        v21 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v22 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = __p.__r_.__value_.__r.__words[0];
        }

        v23 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx file,%s,line,%d,Code,%u\n", v21, "PSP", 69, "ms_report_exception", 515, v22, a3, a2);
        LbsOsaTrace_WriteLog(0x13u, &__str, v23, 0, 1);
      }

      break;
    case 1:
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(&__str, 0x410uLL);
        v12 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v13 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v13 = __p.__r_.__value_.__r.__words[0];
        }

LABEL_23:
        v14 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx file,%s,line,%d,ErrCode,%u\n", v12, "PSP", 69, "ms_report_exception", 770, v13, a3, a2);
        LbsOsaTrace_WriteLog(0x13u, &__str, v14, 0, 1);
      }

      break;
    case 0:
      if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        break;
      }

      bzero(&__str, 0x410uLL);
      v12 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v13 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = __p.__r_.__value_.__r.__words[0];
      }

      goto LABEL_23;
    default:
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(&__str, 0x410uLL);
        v18 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v19 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = __p.__r_.__value_.__r.__words[0];
        }

        v20 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx file,%s,line,%d,Code,%u\n", v18, "PSP", 69, "ms_report_exception", 770, v19, a3, a2);
        LbsOsaTrace_WriteLog(0x13u, &__str, v20, 0, 1);
      }

      break;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2996B7B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Comp_ErrorEllipse(double a1, double a2, double a3, double *a4, double *a5, double *a6)
{
  v12 = a1 - a2;
  if (a1 - a2 >= 0.0 && a1 - a2 <= 0.0 && fabs(a3) <= a1 * 0.0001)
  {
    *a6 = 0.0;
    v24 = sqrt(a1);
    *a4 = v24;
    *a5 = v24;
    return;
  }

  v13 = atan2(a3 + a3, v12) * 0.5;
  v15 = __sincos_stret(v13);
  cosval = v15.__cosval;
  v16 = v13 * 57.2957795;
  v17 = cosval * cosval;
  v18 = v15.__sinval * (cosval + cosval) * a3;
  v19 = a2 + cosval * cosval * v12 + v18;
  v20 = a1 - v17 * v12 - v18;
  if (v19 < 0.000001)
  {
    v19 = 0.000001;
  }

  if (v20 < 0.000001)
  {
    v20 = 0.000001;
  }

  if (v19 > v20)
  {
    v21 = v19;
  }

  else
  {
    v16 = v16 + 90.0;
    v21 = v20;
  }

  if (v19 <= v20)
  {
    v20 = v19;
  }

  *a6 = v16;
  *a4 = sqrt(v21);
  *a5 = sqrt(v20);
  v22 = *a6;
  v23 = 180.0;
  if (*a6 >= 180.0)
  {
    v23 = -180.0;
    goto LABEL_17;
  }

  if (v22 < 0.0)
  {
LABEL_17:
    *a6 = v22 + v23;
  }
}

uint64_t NK_Comp_DR_Res(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v20[1] = *MEMORY[0x29EDCA608];
  *(a3 + 16736) = 0u;
  *(a3 + 16720) = 0u;
  *(a3 + 16704) = 0u;
  *(a3 + 16688) = 0u;
  *(a3 + 16672) = 0u;
  *(a3 + 16656) = 0u;
  *(a3 + 16640) = 0u;
  *(a3 + 16624) = 0u;
  *(a3 + 16608) = 0u;
  *(a3 + 16592) = 0u;
  *(a3 + 16576) = 0u;
  *(a3 + 16560) = 0u;
  *(a3 + 16544) = 0u;
  *(a3 + 16528) = 0u;
  *(a3 + 16512) = 0u;
  *(a3 + 16496) = 0u;
  *(a3 + 16480) = 0u;
  *(a3 + 16464) = 0u;
  *(a3 + 16448) = 0u;
  *(a3 + 16432) = 0u;
  v9 = a3 + 14016;
  *(a3 + 16416) = 0u;
  v19 = a3 + 19968;
  *(a3 + 16400) = 0u;
  v18 = a3 + 4448;
  *(a3 + 0x4000) = 0u;
  v17 = a3 + 26256;
  *(a3 + 16368) = 0u;
  v10 = a2 + 8696;
  do
  {
    v11 = a1 + 4 * v8;
    v12 = *(v11 + 76);
    result = Is_Legal(v12);
    if (result && *(v9 + v8) == 1 && *(a3 + 12) == 11 && (*(v19 + v8) & 1) == 0 && *(v10 + v8 + 1152) == 1)
    {
      if (v12 == 3 && *(a3 + 616) != *(a2 + 7344))
      {
        *(v10 + v6 + 1344) = *(v10 + v6 + 1344) + (*(a3 + 608) - *(a2 + 7336)) * 299792458.0;
      }

      v20[0] = 0.0;
      result = NK_Comp_ith_DR_Res(v8, a3 + 1080, a3 + 13960, v20, *(a3 + 8 * v8 + 120), *(a3 + v6 + 19584), *(v18 + 8 * v8), *(a3 + 656), *(v10 + v6 + 1344));
      *(a3 + v6 + 30912) = *(a3 + v6 + 30144) - *(v10 + v6 + 1808);
      if (*(v9 + v8 + 96) == 1)
      {
        *(v17 + v8) = 1;
      }
    }

    if (*(a3 + v8 + 2912) == 1)
    {
      *(v10 + v6 + 1344) = *(a3 + v6 + 19584);
      *(v10 + v8 + 1152) = 1;
      v14 = *(v11 + 412) >= 14 && *(a1 + v8 + 604) >= *(a2 + 4) && *(a1 + 2 * v8 + 1036) >= *(a2 + 14);
      *(v10 + v8 + 1728) = v14;
      *(v10 + v6 + 1808) = *(a3 + v6 + 30144);
    }

    else
    {
      *(v10 + v6 + 1344) = 0;
      v15 = v10 + v8;
      *(v15 + 1152) = 0;
      v16 = (v10 + v7);
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
      *(v15 + 1728) = 0;
    }

    ++v8;
    v7 += 24;
    v6 += 8;
  }

  while (v8 != 48);
  *(a2 + 8304) = *(a3 + 656);
  *(a2 + 7336) = *(a3 + 608);
  *(a2 + 7344) = *(a3 + 616);
  return result;
}

uint64_t Gnm08_02HandleRxData(uint64_t a1)
{
  v45 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_RX_DATA_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm08_02HandleRxData");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = *(a1 + 16);
    if (*v4 != 122 || v4[1] != 120)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
LABEL_16:
        v15 = 0;
LABEL_17:
        free(v4);
        return v15;
      }

      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 87, "Gnm08_02HandleRxData", 770);
      v14 = __str;
LABEL_15:
      LbsOsaTrace_WriteLog(0xBu, v14, v13, 2, 1);
      goto LABEL_16;
    }

    v5 = *(a1 + 24);
    v30 = 0;
    memset_s(__str, 0x7FCuLL, 0, 0x7FCuLL);
    v33 = 0;
    v34 = 0;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    memset(v42, 0, sizeof(v42));
    v28 = 0;
    v29 = 0;
    v6 = v4[2] - 79;
    v7 = v6 > 7;
    v8 = (1 << v6) & 0xA1;
    if (!v7 && v8 != 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(v32, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(v32, 0x40FuLL, "%10u %s%c %s: Recvd MC,%u,MID,%u,MIDE,%u,Len,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm08_01HandleZxMesg", v4[2], v4[3], v4[4], v5);
        LbsOsaTrace_WriteLog(0xBu, v32, v11, 4, 1);
      }

      Gnm06_01HandleTmZXData(v4, v5);
      goto LABEL_16;
    }

    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
    PlcGnssHw = Gnm03_64GetPlcGnssHw();
    plc00_03DecodeMsg(2, v4, v5, __str, &v30, &v33, &v28, PlcGnssHw);
    if (v33)
    {
      if (IsLoggingAllowed == 1 && plc00_15GetExtErrAsString(&v33, __s, 0x104uLL) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(v32, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(v32, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,Err,%s\n", (*&g_MacClockTicksToMsRelation * v20), "GNM", 87, "Gnm08_01HandleZxMesg", 776, v28, HIBYTE(v28), __s);
        LbsOsaTrace_WriteLog(0xBu, v32, v21, 2, 1);
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        goto LABEL_16;
      }

      bzero(v32, 0x410uLL);
      v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v13 = snprintf(v32, 0x40FuLL, "%10u %s%c %s: #%04hx ZXHeader %X%X%X%X%X%X%X%X\n", v22, "GNM", 87, "Gnm08_01HandleZxMesg");
LABEL_29:
      v14 = v32;
      goto LABEL_15;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(v32, 0x410uLL);
      v24 = mach_continuous_time();
      v25 = snprintf(v32, 0x40FuLL, "%10u %s%c %s: Recvd zx%c%c,%u\n", (*&g_MacClockTicksToMsRelation * v24), "GNM", 73, "Gnm08_01HandleZxMesg", v28, HIBYTE(v28), v29);
      LbsOsaTrace_WriteLog(0xBu, v32, v25, 4, 1);
    }

    switch(v28)
    {
      case 'X':
        v26 = Gnm26_21HandleXMessages(__str, &v28);
        break;
      case 'D':
        v26 = Gnm35_31HandleDMessages(__str, &v28);
        break;
      case 'B':
        v26 = Gnm38_02HandleBMessages(__str, &v28, v23);
        break;
      default:
        if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
        {
          goto LABEL_16;
        }

        bzero(v32, 0x410uLL);
        v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v13 = snprintf(v32, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u\n", v27);
        goto LABEL_29;
    }

    v15 = v26;
    goto LABEL_17;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 69, "Gnm08_02HandleRxData", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v17, 0, 1);
  }

  return 0;
}

uint64_t KFSt_DMeas_Update(unsigned int a1, unsigned int a2, unsigned int a3, double *a4, double *a5, _WORD *a6, double a7)
{
  v19[33] = *MEMORY[0x29EDCA608];
  if (*(a4 + 1) >= 1 && (*(a4 + 16) = 0, *a4 == 1))
  {
    v10 = a4[4];
    v11 = a7 - a4[3];
    memset(v16, 0, sizeof(v16));
    v15 = 0.0;
    a4[6] = v11;
    v17 = 0;
    *(v16 + a1) = 0x3FF0000000000000;
    *(v16 + a2) = 0xBFF0000000000000;
    *(v16 + a3) = v11;
    umeas(a5, a3, v10, v16, v19, v18, &v15, a4[7]);
    v12 = v15;
    if (v15 <= 0.0)
    {
      v13 = 0;
      *a4 = 0;
      *(a4 + 16) = 1;
      ++*a6;
    }

    else
    {
      v12 = a4[4] * (v15 * (v19[a3] * v19[a3]));
      v13 = *a4;
    }

    a4[8] = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

double GLON_EphBin2Int(uint64_t a1, uint64_t a2, int32x4_t a3)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v3 = *(a1 + 56);
  *(a2 + 24) = *(a1 + 52) >> 27;
  v4 = *(a1 + 16);
  *(a2 + 25) = (*(a1 + 12) >> 23) & 3;
  v5 = *(a1 + 20);
  *(a2 + 26) = (*(a1 + 24) & 0x800000) != 0;
  *(a2 + 27) = (v3 >> 19) & 3;
  v6 = (__PAIR64__(v4, v5) >> 19) & 0x7FFFFFF;
  if ((v4 & 0x2000) != 0)
  {
    LODWORD(v6) = -((__PAIR64__(v4, v5) >> 19) & 0x3FFFFFF);
  }

  *(a2 + 28) = v6;
  v8 = *(a1 + 12);
  v7 = *(a1 + 16);
  v9 = (v7 >> 14) & 0x1F;
  if ((v7 & 0x40000) != 0)
  {
    v9 = -((v7 >> 14) & 0xF);
  }

  *(a2 + 52) = v9;
  v10 = __PAIR64__(v8, v7) >> 19;
  v11 = v10 & 0xFFFFFF;
  v12 = v10 & 0x7FFFFF;
  if ((v8 & 0x400) != 0)
  {
    v13 = -v12;
  }

  else
  {
    v13 = v11;
  }

  *(a2 + 40) = v13;
  HIDWORD(v14) = *(a1 + 28);
  LODWORD(v14) = *(a1 + 32);
  v15 = (v14 >> 19) & 0x7FFFFFF;
  v16 = (v14 >> 19) & 0x3FFFFFF;
  if ((v14 & 0x200000000000) != 0)
  {
    v17 = -v16;
  }

  else
  {
    v17 = v15;
  }

  *(a2 + 32) = v17;
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  v20 = (v18 >> 14) & 0x1F;
  if ((v18 & 0x40000) != 0)
  {
    v20 = -((v18 >> 14) & 0xF);
  }

  *(a2 + 53) = v20;
  v21 = __PAIR64__(v19, v18) >> 19;
  v22 = v21 & 0xFFFFFF;
  v23 = v21 & 0x7FFFFF;
  if ((v19 & 0x400) != 0)
  {
    v24 = -v23;
  }

  else
  {
    v24 = v22;
  }

  *(a2 + 44) = v24;
  HIDWORD(v25) = *(a1 + 40);
  LODWORD(v25) = *(a1 + 44);
  v26 = (v25 >> 19) & 0x7FFFFFF;
  v27 = (v25 >> 19) & 0x3FFFFFF;
  if ((v25 & 0x200000000000) != 0)
  {
    v28 = -v27;
  }

  else
  {
    v28 = v26;
  }

  *(a2 + 36) = v28;
  v30 = *(a1 + 36);
  v29 = *(a1 + 40);
  v31 = (v29 >> 14) & 0x1F;
  if ((v29 & 0x40000) != 0)
  {
    v31 = -((v29 >> 14) & 0xF);
  }

  v32 = __PAIR64__(v30, v29) >> 19;
  *(a2 + 54) = v31;
  v33 = v32 & 0xFFFFFF;
  v34 = v32 & 0x7FFFFF;
  if ((v30 & 0x400) != 0)
  {
    v35 = -v34;
  }

  else
  {
    v35 = v33;
  }

  *(a2 + 48) = v35;
  v36 = *(a1 + 48);
  if ((v36 & 0x4000000) != 0)
  {
    v37 = -((v36 >> 5) & 0x1FFFFF);
  }

  else
  {
    v37 = (v36 >> 5) & 0x3FFFFF;
  }

  *(a2 + 56) = v37;
  v38 = *(a1 + 36);
  v39 = (v38 >> 15) & 0x7FF;
  if ((v38 & 0x2000000) != 0)
  {
    v39 = -((v38 >> 15) & 0x3FF);
  }

  *(a2 + 60) = v39;
  v40 = *(a1 + 48);
  if ((v40 & 0x10) != 0)
  {
    v40 = -(*(a1 + 48) & 0xF);
  }

  else
  {
    LOBYTE(v40) = v40 & 0x1F;
  }

  *(a2 + 55) = v40;
  *(a2 + 14) = (*(a1 + 12) >> 11) & 0xFFF;
  v41 = *(a1 + 24);
  *(a2 + 13) = BYTE2(v41) & 0x7F;
  a3.i64[0] = __PAIR64__(v38, v41);
  v42 = vand_s8(vmovn_s32(vshlq_u32(vzip1q_s32(a3, vdupq_lane_s32(__PAIR64__(v38, v41), 1)), xmmword_2997613A0)), 0x1000300010007);
  *a3.i8 = vuzp1_s8(v42, v42);
  *(a2 + 18) = a3.i32[0];
  v43 = *(a1 + 52);
  v44 = *(a1 + 56);
  *(a2 + 22) = (v43 & 0x1000) != 0;
  *(a2 + 23) = BYTE1(v43) & 0xF;
  *(a2 + 16) = (__PAIR64__(v43, v44) >> 26) & 0x7FF;
  *(a2 + 12) = (v44 >> 21) & 0x1F;
  return *a3.i64;
}

uint64_t GLON_EphInt2Bin(uint64_t result, uint64_t a2)
{
  *a2 = *result;
  v2 = ((*(result + 14) & 0xFFF) << 11) & 0xFE7FFFFF | ((*(result + 25) & 3) << 23) | 0x8000000;
  *(a2 + 8) = *(result + 8);
  *(a2 + 12) = v2;
  v3 = *(result + 40);
  if ((v3 & 0x800000) != 0)
  {
    v3 = -v3 | 0x800000;
  }

  v4 = v2 & 0xFFFFF800 | (v3 >> 13) & 0x7FF;
  v5 = v3 << 19;
  v6 = *(result + 52);
  if ((v6 & 0x10) != 0)
  {
    v6 = -v6 | 0x10;
  }

  v7 = v5 & 0xFFF83FFF | ((v6 & 0x1F) << 14);
  *(a2 + 12) = v4;
  *(a2 + 16) = v7;
  v8 = *(result + 28);
  if ((v8 & 0x4000000) != 0)
  {
    v8 = -v8 | 0x4000000;
  }

  *(a2 + 16) = v7 & 0xFFFFC000 | (v8 >> 13) & 0x3FFF;
  *(a2 + 20) = v8 << 19;
  v9 = (*(result + 26) << 23) & 0xF880FFFF | ((*(result + 18) & 7) << 24) | ((*(result + 13) & 0x7F) << 16) | 0x10000000;
  *(a2 + 24) = v9;
  v10 = *(result + 44);
  if ((v10 & 0x800000) != 0)
  {
    v10 = -v10 | 0x800000;
  }

  v11 = v9 & 0xFFFFF800 | (v10 >> 13) & 0x7FF;
  v12 = v10 << 19;
  v13 = *(result + 53);
  if ((v13 & 0x10) != 0)
  {
    v13 = -v13 | 0x10;
  }

  v14 = v12 & 0xFFF83FFF | ((v13 & 0x1F) << 14);
  *(a2 + 24) = v11;
  *(a2 + 28) = v14;
  v15 = *(result + 32);
  if ((v15 & 0x4000000) != 0)
  {
    v15 = -v15 | 0x4000000;
  }

  *(a2 + 28) = v14 & 0xFFFFC000 | (v15 >> 13) & 0x3FFF;
  *(a2 + 32) = v15 << 19;
  v16 = *(result + 60);
  if ((v16 & 0x400) != 0)
  {
    v16 = -v16 | 0x400;
  }

  v17 = ((v16 & 0x7FF) << 15) | (*(result + 19) << 26) | ((*(result + 20) & 3) << 12) | (*(result + 21) << 11) | 0x18000000;
  *(a2 + 36) = v17;
  v18 = *(result + 48);
  if ((v18 & 0x800000) != 0)
  {
    v18 = -v18 | 0x800000;
  }

  v19 = *(result + 54);
  if ((v19 & 0x10) != 0)
  {
    v19 = -v19 | 0x10;
  }

  v20 = v17 & 0xFFFFF800 | (v18 >> 13) & 0x7FF;
  v21 = (v18 << 19) | ((v19 & 0x1F) << 14);
  *(a2 + 36) = v20;
  *(a2 + 40) = v21;
  v22 = *(result + 36);
  if ((v22 & 0x4000000) != 0)
  {
    v22 = -v22 | 0x4000000;
  }

  *(a2 + 40) = v21 & 0xFFFFC000 | (v22 >> 13) & 0x3FFF;
  *(a2 + 44) = v22 << 19;
  *(a2 + 48) = 0x20000000;
  v23 = *(result + 56);
  if ((v23 & 0x200000) != 0)
  {
    v23 = -v23 | 0x200000;
  }

  v24 = *(result + 55);
  if ((v24 & 0x10) != 0)
  {
    v24 = -v24 | 0x10;
  }

  v25 = v24 & 0x1F | (32 * (v23 & 0x3FFFFF)) | 0x20000000;
  v26 = *(result + 16);
  v27 = (*(result + 24) << 27) | (*(result + 22) << 12) | ((*(result + 23) & 0xF) << 8) | (v26 >> 6) & 0x1F;
  *(a2 + 48) = v25;
  *(a2 + 52) = v27;
  *(a2 + 56) = (v26 << 26) | ((*(result + 12) & 0x1F) << 21) | ((*(result + 27) & 3) << 19);
  return result;
}

uint64_t Gnm12_11RejectGnssMsaReq(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSA_GNSS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm12_11RejectGnssMsaReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm13_00SendGnssReqCnf(0, *(a1 + 12), 2);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm12_11RejectGnssMsaReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  return 0;
}

uint64_t Gnm12_12ServiceGnssMsaReq(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v17[8] = 0;
  *&v17[4] = 0;
  *&v17[12] = 0;
  v17[20] = 0;
  memset(&v17[24], 0, 32);
  *&v17[56] = 0xFFFF;
  *&v17[60] = 0;
  *&v17[64] = 0;
  v17[69] = 0;
  v16 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSA_GNSS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 77, "Gnm12_12ServiceGnssMsaReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 3, 1);
  }

  if (a1)
  {
    v4 = Gnm02_12ReqAssistInstn(*(a1 + 12), "LSIM_GNM_POSN_START_MSA_GNSS_REQ", 1, &v16);
    if (v4)
    {
      v5 = v4;
      if (*(v4 + 1))
      {
        if (*(v4 + 2) == 2)
        {
          *v17 = *(a1 + 12);
          v17[5] = 1;
          v17[68] = v16;
          v6 = Gnm12_02FillGnssReqParams(v17, (a1 + 20));
          v7 = v17[68];
          if ((v6 & 1) == 0)
          {
            if (v17[68])
            {
              Gnm10_28StopPositioning(v5);
            }

            Gnm02_21DeleteInstn(v5);
            v13 = *(a1 + 12);
            v14 = 2;
            goto LABEL_22;
          }

          if (v17[68] && v17[7] != *(*(v5 + 1) + 7))
          {
            goto LABEL_20;
          }

          v17[8] = *(a1 + 16);
          if (v17[8] == 1)
          {
            Gnm02_24AbortAllNafSessions(8);
          }

          if (Gnm12_03SendAssistPosStart(v17, *v5))
          {
            v8 = *(v5 + 1);
            v9 = *&v17[48];
            *(v8 + 32) = *&v17[32];
            *(v8 + 48) = v9;
            *(v8 + 62) = *&v17[62];
            v10 = *&v17[16];
            *v8 = *v17;
            *(v8 + 16) = v10;
            return 0;
          }

          if (v7)
          {
LABEL_20:
            Gnm10_28StopPositioning(v5);
            Gnm02_21DeleteInstn(v5);
          }
        }
      }
    }

    v13 = *(a1 + 12);
    v14 = 0;
LABEL_22:
    Gnm13_00SendGnssReqCnf(v14, v13, 2);
    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 69, "Gnm12_12ServiceGnssMsaReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v12, 0, 1);
  }

  return 0;
}

uint64_t Gnm12_02FillGnssReqParams(uint64_t a1, int *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnssID,%u,AsstAvail,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm12_02FillGnssReqParams", *(a2 + 36), *(a2 + 37));
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  if (*(a2 + 36))
  {
    v6 = *a2;
    if ((*a2 - 1) < 3)
    {
      *(a1 + 20) = *(a2 + 36);
      *(a1 + 58) = *(a2 + 37) == 0;
      if (v6 == 3)
      {
        *(a1 + 58) = 0;
        *(a1 + 12) = *(a2 + 7);
      }

      else
      {
        *(a1 + 12) = *(a2 + 7);
        if (v6 == 1)
        {
          v9 = 18;
          goto LABEL_16;
        }
      }

      v9 = 20;
LABEL_16:
      *(a1 + 6) = v9;
      *(a1 + 69) = *(a2 + 38);
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Qos PosRepType,%u RespTime,%u,EarlyRespTime,%u,AgeLimit,%u,HorAcc,%u,VertAcc,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm12_01PopulateQosParams", a2[4], a2[3], a2[6], a2[5], *(a2 + 6), *(a2 + 8));
        LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
      }

      *(a1 + 56) = *(a2 + 6);
      *(a1 + 57) = *(a2 + 8);
      v12 = a2[4];
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v20 = a2[3];
          *(a1 + 36) = v20;
          *(a1 + 40) = 0;
          *(a1 + 60) = *(a2 + 2);
          *(a1 + 7) = 2;
          *(a1 + 44) = 0;
          *(a1 + 48) = 0;
          if ((v20 - 7200001) >= 0xFF922300)
          {
            v8 = 1;
            goto LABEL_51;
          }

          if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
          {
            goto LABEL_48;
          }

          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespTime\n");
          goto LABEL_47;
        }

        if (v12 != 3)
        {
LABEL_21:
          if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
          {
LABEL_48:
            v8 = 0;
            goto LABEL_51;
          }

          bzero(__str, 0x410uLL);
          v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PosRep,%u\n", v24);
LABEL_47:
          LbsOsaTrace_WriteLog(0xBu, __str, v13, 2, 1);
          goto LABEL_48;
        }
      }

      else
      {
        if (!v12)
        {
          *(a1 + 60) = 0;
          *(a1 + 7) = 0;
          *(a1 + 44) = 0;
          v8 = 1;
          *(a1 + 36) = 0;
LABEL_51:
          v21 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          *(a1 + 24) = v21;
          *(a1 + 52) = v21;
          return v8;
        }

        if (v12 != 1)
        {
          goto LABEL_21;
        }
      }

      v14 = HIWORD(dword_2A193B6D8);
      if ((*(a1 + 6) & 4) != 0)
      {
        if ((*(a1 + 6) & 2) == 0 && a2[5])
        {
          goto LABEL_33;
        }
      }

      else if ((*(a1 + 6) & 2) == 0)
      {
        goto LABEL_33;
      }

      if ((a2[3] - 7200001) < 0xFF922300)
      {
        v8 = 0;
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v15 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespTime\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 87, "Gnm12_01PopulateQosParams", 514);
          LbsOsaTrace_WriteLog(0xBu, __str, v16, 2, 1);
          v8 = 0;
        }

LABEL_34:
        v17 = a2[3];
        if (v17 <= v14)
        {
          v18 = 0;
        }

        else
        {
          v18 = v14;
        }

        *(a1 + 40) = v17 - v18;
        *(a1 + 60) = 1;
        if (a2[4] == 3)
        {
          *(a1 + 44) = 0;
        }

        else
        {
          v19 = a2[6];
          if (!v19 || v19 >= v17)
          {
            *(a1 + 7) = 1;
            *(a1 + 44) = 0;
            *(a1 + 36) = 0;
            goto LABEL_50;
          }

          *(a1 + 44) = v19;
        }

        *(a1 + 7) = 4;
        *(a1 + 36) = 1000;
LABEL_50:
        *(a1 + 48) = a2[5];
        goto LABEL_51;
      }

LABEL_33:
      v8 = 1;
      goto LABEL_34;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LocType,%u\n", v23);
      goto LABEL_11;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnssID\n");
LABEL_11:
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
  }

  return 0;
}

BOOL Gnm12_03SendAssistPosStart(uint64_t a1, __int16 a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("Gnm12_03SendAssistPosStart", 259, 1, 0x38uLL);
  v5 = v4;
  if (!v4)
  {
    return v5 != 0;
  }

  *(v4 + 6) = a2;
  v4[49] = *(a1 + 8);
  v6 = *(a1 + 28);
  v7.i64[0] = v6;
  v7.i64[1] = HIDWORD(v6);
  *(v4 + 20) = vmovn_s64(vcvtq_u64_f64(vmulq_f64(vcvtq_f64_u64(v7), vdupq_n_s64(0x3F50624DD2F1A9FCuLL))));
  v8 = *(a1 + 48);
  if (v8 > 0x5265C00)
  {
    v8 = 0;
  }

  *(v4 + 10) = v8;
  v9 = *(a1 + 7);
  if (v9 == 2)
  {
    v10 = 0;
    *(v4 + 14) = *(a1 + 60);
    *(v4 + 8) = *(a1 + 36);
  }

  else
  {
    *(v4 + 8) = *(a1 + 36);
    if (v9 == 4)
    {
      v4[16] = (dword_2A192081C & 0x1000) == 0;
      v10 = 2;
    }

    else if (v9 == 1)
    {
      v4[16] = (dword_2A192081C & 0x1000) == 0;
      v10 = 1;
    }

    else
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
      v10 = 0;
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionType,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 87, "Gnm12_03SendAssistPosStart", 770, *(a1 + 7));
        LbsOsaTrace_WriteLog(0xBu, __str, v13, 2, 1);
        v10 = 0;
      }
    }
  }

  v5[15] = v10;
  v14 = *(a1 + 40);
  v15 = v14 >= 0x32;
  v16 = v14 - 50;
  if (v15)
  {
    *(v5 + 9) = v16;
  }

  v17 = *(a1 + 56);
  if (v17 == 255)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = (pow(1.1, v17) + -1.0) * 10.0;
  }

  v19 = *(a1 + 57);
  if (v19 == 255)
  {
    v21 = qword_2A1920830;
    v20 = 0.0;
    if (*&qword_2A1920830 <= 0.0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v20 = (pow(1.025, v19) + -1.0) * 45.0;
  v21 = qword_2A1920830;
  if (*&qword_2A1920830 > 0.0)
  {
    if (v20 == 0.0 || (v20 > 0.0 ? (v22 = *&qword_2A1920830 < v20) : (v22 = 0), v22))
    {
LABEL_27:
      v20 = *&v21;
    }
  }

LABEL_28:
  v23 = (v18 + 1.0);
  if (v18 > 65535.0)
  {
    LOWORD(v23) = -1;
  }

  if (v18 <= 0.0)
  {
    LOWORD(v23) = 0;
  }

  *(v5 + 22) = v23;
  v24 = (v20 + 1.0);
  if (v20 > 65535.0)
  {
    LOWORD(v24) = -1;
  }

  if (v20 <= 0.0)
  {
    LOWORD(v24) = 0;
  }

  *(v5 + 23) = v24;
  v5[54] = *(a1 + 69);
  v5[48] = 0;
  if ((*(a1 + 6) & 2) != 0)
  {
    v25 = 4;
    goto LABEL_40;
  }

  if ((*(a1 + 6) & 4) != 0)
  {
    v25 = 2;
LABEL_40:
    v5[48] = v25;
  }

  v5[50] = *(a1 + 20);
  v5[14] = -*(a1 + 68);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v26 = mach_continuous_time();
    v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_START_POS_REQ =>GNCS Id,%u\n", (*&g_MacClockTicksToMsRelation * v26), "GNM", 73, "Gnm12_03SendAssistPosStart", *(v5 + 6));
    LbsOsaTrace_WriteLog(0xBu, __str, v27, 4, 1);
  }

  AgpsSendFsmMsg(128, 130, 8519680, v5);
  return v5 != 0;
}

uint64_t Gnm12_13RejectGnssMsbReq(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSB_GNSS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm12_13RejectGnssMsbReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm13_00SendGnssReqCnf(0, *(a1 + 12), 4);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm12_13RejectGnssMsbReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  return 0;
}

uint64_t Gnm12_14ServiceGnssMsbReq(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v17[8] = 0;
  *&v17[4] = 0;
  *&v17[12] = 0;
  v17[20] = 0;
  memset(&v17[24], 0, 32);
  *&v17[56] = 0xFFFF;
  *&v17[60] = 0;
  *&v17[64] = 0;
  v17[69] = 0;
  v16 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSB_GNSS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 77, "Gnm12_14ServiceGnssMsbReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 3, 1);
  }

  if (a1)
  {
    v4 = Gnm02_12ReqAssistInstn(*(a1 + 12), "LSIM_GNM_POSN_START_MSB_GNSS_REQ", 1, &v16);
    if (v4)
    {
      v5 = v4;
      if (*(v4 + 1))
      {
        if (*(v4 + 2) == 2)
        {
          *v17 = *(a1 + 12);
          v17[5] = 1;
          v17[68] = v16;
          v6 = Gnm12_02FillGnssReqParams(v17, (a1 + 20));
          v7 = v17[68];
          if ((v6 & 1) == 0)
          {
            if (v17[68])
            {
              Gnm10_28StopPositioning(v5);
            }

            Gnm02_21DeleteInstn(v5);
            v13 = *(a1 + 12);
            v14 = 2;
            goto LABEL_22;
          }

          if (v17[68] && v17[7] != *(*(v5 + 1) + 7))
          {
            goto LABEL_20;
          }

          v17[8] = *(a1 + 16);
          if (v17[8] == 1)
          {
            Gnm02_24AbortAllNafSessions(8);
          }

          if (Gnm12_03SendAssistPosStart(v17, *v5))
          {
            v8 = *(v5 + 1);
            v9 = *&v17[48];
            *(v8 + 32) = *&v17[32];
            *(v8 + 48) = v9;
            *(v8 + 62) = *&v17[62];
            v10 = *&v17[16];
            *v8 = *v17;
            *(v8 + 16) = v10;
            return 0;
          }

          if (v7)
          {
LABEL_20:
            Gnm10_28StopPositioning(v5);
            Gnm02_21DeleteInstn(v5);
          }
        }
      }
    }

    v13 = *(a1 + 12);
    v14 = 0;
LABEL_22:
    Gnm13_00SendGnssReqCnf(v14, v13, 4);
    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 69, "Gnm12_14ServiceGnssMsbReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v12, 0, 1);
  }

  return 0;
}

uint64_t Gnm12_15AbortReq(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_ABORT_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 77, "Gnm12_15AbortReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 3, 1);
  }

  if (a1)
  {
    InstnFromAssistId = Gnm02_33GetInstnFromAssistId(*(a1 + 12), 1);
    if (!InstnFromAssistId)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 87, "Gnm12_15AbortReq", 2052, *(a1 + 12));
        LbsOsaTrace_WriteLog(0xBu, __str, v13, 2, 1);
      }

      v8 = *(a1 + 12);
      v9 = 4;
      goto LABEL_14;
    }

    v5 = InstnFromAssistId;
    if (!Gnm10_28StopPositioning(InstnFromAssistId))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Stop Posn Failure\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm12_15AbortReq");
        LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
      }

      Gnm02_21DeleteInstn(v5);
      v8 = *(a1 + 12);
      v9 = 0;
LABEL_14:
      Gnm13_03SendAbortCnf(v8, v9);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 69, "Gnm12_15AbortReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 0, 1);
  }

  return 0;
}

uint64_t Gnm12_16RejectAidStatusReq(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_AID_STATUS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm12_16RejectAidStatusReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm13_08SendErrAssistStatus();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm12_16RejectAidStatusReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  return 0;
}

uint64_t Gnm12_17HandleAidStatusReq(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_AID_STATUS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm12_17HandleAidStatusReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = *(a1 + 12);
    if (v4)
    {
      if (v4 >= 5)
      {
        v4 = 5;
      }

      if (AgpsFsmStartTimer(8399366, 1000 * v4) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm12_17HandleAidStatusReq", 1544);
        LbsOsaTrace_WriteLog(0xBu, __str, v6, 2, 1);
      }
    }

    LOBYTE(g_AssistReq) = 1;
    HIDWORD(g_AssistReq) = *(a1 + 16);
    Gnm14_03SendPosEstimateReq();
    Gnm17_13SendPollAssistStatus();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm12_17HandleAidStatusReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 0, 1);
  }

  return 0;
}

uint64_t Gnm12_18HandleAssistTimeout(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_ASSIST_STATUS_TIMER\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm12_18HandleAssistTimeout");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (g_AssistReq == 1)
    {
      Gnm13_07SendAidStatusCnf(0);
      LOBYTE(g_AssistReq) = 0;
    }

    if (BYTE1(g_AssistReq) == 1)
    {
      Gnm13_13HandleAssistStatus(0);
      BYTE1(g_AssistReq) = 0;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v5 = 78;
      if (g_AssistReq)
      {
        v6 = 89;
      }

      else
      {
        v6 = 78;
      }

      if (BYTE1(g_AssistReq))
      {
        v5 = 89;
      }

      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: InternalReq,%c,ExternalReq,%c\n", v4, "GNM", 73, "Gnm12_18HandleAssistTimeout", v5, v6);
      v8 = 4;
      goto LABEL_17;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 69, "Gnm12_18HandleAssistTimeout", 517);
    v8 = 0;
LABEL_17:
    LbsOsaTrace_WriteLog(0xBu, __str, v7, v8, 1);
  }

  return 0;
}