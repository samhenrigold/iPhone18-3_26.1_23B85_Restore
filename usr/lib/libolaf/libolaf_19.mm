uint64_t GNS_WlMeas(uint64_t a1, const void *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "PSP", 68, "GNS_WlMeas");
    LbsOsaTrace_WriteLog(0x13u, __str, v4, 5, 1);
  }

  v22 = -1;
  v20 = 1539;
  v5 = operator new(0xC20uLL, MEMORY[0x29EDC9418]);
  if (!v5)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Wlan Meas Msg\n", (*&g_MacClockTicksToMsRelation * v13), "PSP", 69, "GNS_WlMeas", 1537);
      LbsOsaTrace_WriteLog(0x13u, __str, v14, 0, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      return 14;
    }

    bzero(__str, 0x410uLL);
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v15, "PSP", 68, "GNS_WlMeas");
    goto LABEL_15;
  }

  v6 = v5;
  for (i = 0; i != 3072; i += 48)
  {
    v8 = &v5[i];
    *(v8 + 63) = 0;
    *(v8 + 2) = 0uLL;
    *(v8 + 3) = 0uLL;
    *(v8 + 9) = 4294934527;
  }

  v21 = v5;
  memcpy(v5, a2, 0xC20uLL);
  if (SuplPospPostMessage(&v20))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Message posting failed,%u\n", (*&g_MacClockTicksToMsRelation * v9), "PSP", 69, "GNS_WlMeas", 1548, v20);
      LbsOsaTrace_WriteLog(0x13u, __str, v10, 0, 1);
    }

    MEMORY[0x29C29EB20](v6, 0x1000C400624F575);
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      return 14;
    }

    bzero(__str, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v11, "PSP", 68, "GNS_WlMeas");
LABEL_15:
    LbsOsaTrace_WriteLog(0x13u, __str, v12, 5, 1);
    return 14;
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v18 = mach_continuous_time();
  v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "PSP", 68, "GNS_WlMeas");
  v16 = 1;
  LbsOsaTrace_WriteLog(0x13u, __str, v19, 5, 1);
  return v16;
}

double posp_TimerExpiry_Ind(int a1, int a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 68, "posp_TimerExpiry_Ind");
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 5, 1);
  }

  wlan_session_info = find_wlan_session_info();
  if (a2 != 1 || wlan_session_info != a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TmrId,%u,TmrType,%u\n", v13);
LABEL_17:
    LbsOsaTrace_WriteLog(0x13u, __str, v14, 0, 1);
    goto LABEL_18;
  }

  v19 = -1;
  v17 = 1539;
  v7 = operator new(0xC20uLL, MEMORY[0x29EDC9418]);
  if (!v7)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Wlan Meas Msg\n");
    goto LABEL_17;
  }

  v8 = 0;
  *v7 = 0;
  *(v7 + 4) = 0;
  *(v7 + 10) = 0;
  *(v7 + 20) = 0;
  v7[28] = 0;
  do
  {
    v9 = &v7[v8];
    *(v9 + 63) = 0;
    *(v9 + 2) = 0uLL;
    *(v9 + 3) = 0uLL;
    *(v9 + 9) = 4294934527;
    v8 += 48;
  }

  while (v8 != 3072);
  v18 = v7;
  *(v7 + 6) = 11;
  if (!SuplPospPostMessage(&v17))
  {
LABEL_18:
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      return result;
    }

    goto LABEL_19;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Message posting failed,%u\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 69, "posp_TimerExpiry_Ind", 1548, v17);
    LbsOsaTrace_WriteLog(0x13u, __str, v11, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
LABEL_19:
    bzero(__str, 0x410uLL);
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v15, "PSP", 68, "posp_TimerExpiry_Ind");
    LbsOsaTrace_WriteLog(0x13u, __str, v16, 5, 1);
  }

  return result;
}

double GM_Apply_LT_Slew(double *a1, __int16 *a2, double *a3, _WORD *a4)
{
  v6 = *a1 * 1000.0;
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
    v9 = 0x7FFFFFFF;
  }

  Inc_Local_Time(-v9, 604800, a3, a2);
  result = *a1 + v9 * -0.001;
  *a1 = result;
  a4[1] = v9;
  *a4 = 256;
  a4[2] = v9;
  return result;
}

void NK_Transform_State(uint64_t a1)
{
  ECEF2Geo(a1 + 40, &WGS84_Datum, a1 + 176);
  v2 = STANAG_WGS84_Mean_Sea_Level((a1 + 176));
  v3 = __sincos_stret(*(a1 + 176));
  *(a1 + 224) = v3.__cosval;
  v4 = (a1 + 224);
  *(a1 + 200) = v2;
  v5 = __sincos_stret(*(a1 + 184));
  *(a1 + 208) = -(v3.__sinval * v5.__cosval);
  *(a1 + 216) = -(v3.__sinval * v5.__sinval);
  *(a1 + 232) = -v5.__sinval;
  *(a1 + 240) = v5.__cosval;
  *(a1 + 248) = 0;
  *(a1 + 256) = -(v3.__cosval * v5.__cosval);
  *(a1 + 264) = -(v3.__cosval * v5.__sinval);
  *(a1 + 272) = -v3.__sinval;
  *(a1 + 280) = v3.__cosval;
  v6 = (a1 + 288);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = 3;
  do
  {
    v11 = *(v4 - 1) * v8 + *(v4 - 2) * v7;
    v12 = *v4;
    v4 += 3;
    *v6++ = v11 + v12 * v9;
    --v10;
  }

  while (v10);
  v13 = *(a1 + 288) * *(a1 + 288) + *(a1 + 296) * *(a1 + 296);
  *(a1 + 312) = sqrt(v13 + *(a1 + 304) * *(a1 + 304));
  *(a1 + 320) = sqrt(v13);
}

double GAL_AlmInt2Real(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v2 = vcvtd_n_f64_u32(*(a1 + 16), 0x10uLL);
  *(a2 + 16) = vcvtd_n_f64_s32(*(a1 + 14), 9uLL);
  *(a2 + 24) = v2;
  v3 = *(a1 + 24) * 0.0000958737992;
  v4 = *(a1 + 26) * 0.0000958737992;
  v5 = *(a1 + 20) * 0.0000958737992;
  *(a2 + 48) = *(a1 + 22) * 3.6572952e-10;
  *(a2 + 56) = v3;
  v6 = *(a1 + 18) * 0.000191747598;
  *(a2 + 12) = 600 * *(a1 + 12);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  v7 = vcvtd_n_f64_s32(*(a1 + 28), 0x13uLL);
  v8 = *(a1 + 30);
  *(a2 + 64) = v4;
  *(a2 + 72) = v7;
  result = v8 * 3.63797881e-12;
  *(a2 + 80) = v8 * 3.63797881e-12;
  *(a2 + 89) = *(a1 + 33);
  *(a2 + 90) = *(a1 + 34);
  return result;
}

uint64_t Init_DB_SA_Assistance(uint64_t result, uint64_t a2)
{
  *a2 = 1542;
  *(a2 + 104) = result + 367;
  *(a2 + 112) = result + 301;
  *(a2 + 120) = result + 307;
  *(a2 + 128) = result + 313;
  *(a2 + 136) = result + 319;
  *(a2 + 144) = result + 325;
  *(a2 + 152) = result + 331;
  *(a2 + 160) = result + 337;
  *(a2 + 168) = result + 343;
  *(a2 + 176) = result + 349;
  *(a2 + 184) = result + 355;
  *(a2 + 192) = result + 361;
  *(a2 + 8) = result + 376;
  *(a2 + 16) = result + 378;
  *(a2 + 24) = result + 380;
  *(a2 + 32) = result + 382;
  *(a2 + 40) = result + 384;
  *(a2 + 48) = result + 386;
  *(a2 + 56) = result + 388;
  *(a2 + 64) = result + 390;
  *(a2 + 72) = result + 392;
  *(a2 + 80) = result + 394;
  *(a2 + 88) = result + 396;
  *(a2 + 96) = result + 398;
  *(a2 + 200) = result + 21000;
  *(a2 + 208) = result + 19172;
  *(a2 + 216) = result + 19244;
  *(a2 + 224) = result + 19316;
  *(a2 + 232) = result + 19388;
  *(a2 + 240) = result + 19416;
  *(a2 + 248) = result + 19608;
  *(a2 + 256) = result + 20040;
  *(a2 + 264) = result + 20184;
  *(a2 + 272) = result + 20328;
  *(a2 + 280) = result + 20472;
  *(a2 + 288) = result + 20616;
  return result;
}

uint64_t GN_ExtA_Set_Device_Motion_State(unsigned int *a1)
{
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Device_Motion_State"))
  {
    if (a1[1] < 4)
    {
      if (a1[2] < 4)
      {
        v4 = p_NA;
        v5 = (p_NA + 301);
        v6 = (p_NA + 302);
        *(p_NA + 306) = *(p_NA + 305);
        *v6 = *v5;
        memmove((v4 + 19184), (v4 + 19172), 0x3CuLL);
        v2 = 1;
        *(v4 + 301) = 1;
        ++*(v4 + 378);
        v7 = a1[2];
        *(v4 + 19172) = *a1;
        *(v4 + 19180) = v7;
        Debug_Log_ExtA_DMS(a1);
        return v2;
      }

      EvCrt_v("GN_ExtA_Set_Device_Motion_State: FAILED: Mov_Reliab = %d > GN_EXTA_MAR_HIGH, Out of range!");
    }

    else
    {
      EvCrt_v("GN_ExtA_Set_Device_Motion_State: FAILED: Mov_State = %d > GN_EXTA_DMS_MOVING, Out of range!");
    }
  }

  return 0;
}

uint64_t GN_ExtA_Set_User_Activity_Context(unsigned int *a1)
{
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_User_Activity_Context"))
  {
    if (a1[1] < 12)
    {
      if (a1[2] < 4)
      {
        v4 = p_NA;
        v5 = (p_NA + 307);
        *(p_NA + 312) = *(p_NA + 311);
        *(v4 + 308) = *v5;
        memmove((v4 + 19256), (v4 + 19244), 0x3CuLL);
        v2 = 1;
        *(v4 + 307) = 1;
        ++*(v4 + 380);
        v6 = a1[2];
        *(v4 + 19244) = *a1;
        *(v4 + 19252) = v6;
        Debug_Log_ExtA_UAC(a1);
        return v2;
      }

      EvCrt_v("GN_ExtA_Set_User_Activity_Context: FAILED: Act_Reliab = %d > GN_EXTA_MAR_HIGH, Out of range!");
    }

    else
    {
      EvCrt_v("GN_ExtA_Set_User_Activity_Context: FAILED: Act_Context = %d > GN_EXTA_UAC_SKY_DIVING, Out of range!");
    }
  }

  return 0;
}

uint64_t GN_ExtA_Set_Fixed_In_Vehicle(unsigned int *a1)
{
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Fixed_In_Vehicle"))
  {
    if (a1[1] < 4)
    {
      if (a1[2] < 4)
      {
        v4 = p_NA;
        v5 = (p_NA + 313);
        v6 = (p_NA + 314);
        *(p_NA + 318) = *(p_NA + 317);
        *v6 = *v5;
        memmove((v4 + 19328), (v4 + 19316), 0x3CuLL);
        v2 = 1;
        *(v4 + 313) = 1;
        ++*(v4 + 382);
        v7 = a1[2];
        *(v4 + 19316) = *a1;
        *(v4 + 19324) = v7;
        Debug_Log_ExtA_FIV(a1);
        return v2;
      }

      EvCrt_v("GN_ExtA_Set_Fixed_In_Vehicle: FAILED: FIV_Reliab = %d > GN_EXTA_MAR_HIGH, Out of range!");
    }

    else
    {
      EvCrt_v("GN_ExtA_Set_Fixed_In_Vehicle: FAILED: FIV_Ind = %d > GN_EXTA_FIV_KNOWN_FIXED, Out of range!");
    }
  }

  return 0;
}

uint64_t GN_ExtA_Set_Sig_Env_Sev(uint64_t a1)
{
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Sig_Env_Sev"))
  {
    if (a1 < 8)
    {
      v3 = p_NA;
      v4 = (p_NA + 319);
      *(p_NA + 324) = *(p_NA + 323);
      *(v3 + 320) = *v4;
      v5 = *(v3 + 19404);
      *(v3 + 19392) = *(v3 + 19388);
      *(v3 + 19408) = v5;
      v2 = 1;
      *(v3 + 319) = 1;
      ++*(v3 + 384);
      *(v3 + 19388) = a1;
      Debug_Log_ExtA_SES(a1);
      return v2;
    }

    EvCrt_v("GN_ExtA_Set_Sig_Env_Sev:    FAILED:  SES_Ind = %d  > GN_EXTA_SES_D_URBAN_CAN, Out of range !", a1);
  }

  return 0;
}

uint64_t GN_ExtA_Set_Altitude(uint64_t a1)
{
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Altitude"))
  {
    v2 = *(a1 + 8);
    if (v2 < -500.0 || v2 > 9000.0)
    {
      EvCrt_v("GN_ExtA_Set_Altitude: FAILED: Altitude = %g <%d or >%d, Out of range!");
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 0.01 || v3 > 650.0)
      {
        EvCrt_v("GN_ExtA_Set_Altitude: FAILED: Sigma_Altitude = %g <=0.01m or >650m, Out of range!");
      }

      else
      {
        if (*(a1 + 24) < 4)
        {
          v6 = p_NA;
          v7 = (p_NA + 325);
          v8 = (p_NA + 326);
          *(p_NA + 330) = *(p_NA + 329);
          *v8 = *v7;
          memmove((v6 + 19448), (v6 + 19416), 0xA0uLL);
          v4 = 1;
          *(v6 + 325) = 1;
          ++*(v6 + 386);
          v9 = *(a1 + 16);
          *(v6 + 19416) = *a1;
          *(v6 + 19432) = v9;
          Debug_Log_ExtA_Alt(a1);
          return v4;
        }

        EvCrt_v("GN_ExtA_Set_Altitude: FAILED: Trust = %d > GN_EXTA_TRUST_HIGH, Out of range!");
      }
    }
  }

  return 0;
}

uint64_t GN_ExtA_Set_Map_Vector_Seg(uint64_t a1)
{
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_Map_Vector_Seg"))
  {
    return 0;
  }

  if (fabs(*(a1 + 8)) > 90.0)
  {
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Latitude = %g <-90.0 or >90.0, Out of range!");
    return 0;
  }

  v2 = *(a1 + 16);
  if (v2 < -180.0 || v2 > 360.0)
  {
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Longitude = %g <-180.0 or >360.0, Out of range!");
    return 0;
  }

  if (*(a1 + 32) == 1)
  {
    v3 = *(a1 + 24);
    if (v3 < -500.0 || v3 > 6000.0)
    {
      EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Height = %g <%d or >%d, Out of range!");
      return 0;
    }
  }

  v4 = *(a1 + 40);
  if (v4 < -180.0 || v4 > 360.0)
  {
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Direction = %d <-180 or >+360, Out of range!");
    return 0;
  }

  v5 = *(a1 + 48);
  if (v5 <= 0.0 || v5 > 9999.0)
  {
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Length = %g < 0 or > 9999, Out of range!");
    return 0;
  }

  v6 = *(a1 + 56);
  if (v6 <= 0.0 || v6 > 999.0)
  {
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Width = %g < 0 or > 999, Out of range!");
    return 0;
  }

  v7 = p_NA;
  v8 = (p_NA + 331);
  *(p_NA + 336) = *(p_NA + 335);
  *(v7 + 332) = *v8;
  memmove((v7 + 19680), (v7 + 19608), 0x168uLL);
  v9 = 1;
  *(v7 + 331) = 1;
  ++*(v7 + 388);
  *(v7 + 19608) = *a1;
  v11 = *(a1 + 32);
  v10 = *(a1 + 48);
  v12 = *(a1 + 16);
  *(v7 + 19672) = *(a1 + 64);
  *(v7 + 19640) = v11;
  *(v7 + 19656) = v10;
  *(v7 + 19624) = v12;
  Debug_Log_ExtA_MapV(a1);
  return v9;
}

uint64_t GN_ExtA_Set_Speed_Constraint(uint64_t a1)
{
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Speed_Constraint"))
  {
    if (*(a1 + 4) < 86400001)
    {
      v2 = *(a1 + 8);
      if (v2 >= 0.0)
      {
        v3 = *(a1 + 16);
        if (v3 >= 0.0 && v3 <= 100.0)
        {
          if (v3 >= v2)
          {
            v7 = p_NA;
            v8 = (p_NA + 337);
            v9 = (p_NA + 338);
            *(p_NA + 342) = *(p_NA + 341);
            *v9 = *v8;
            memmove((v7 + 20064), (v7 + 20040), 0x78uLL);
            v5 = 1;
            *(v7 + 337) = 1;
            ++*(v7 + 390);
            v10 = *(a1 + 16);
            *(v7 + 20040) = *a1;
            *(v7 + 20056) = v10;
            Debug_Log_ExtA_SpdC(a1);
            return v5;
          }

          EvCrt_v("GN_ExtA_Set_Speed_Constraint: FAILED: Speed_Lower = %g Speed_Upper = %g , Mis-match!");
        }

        else
        {
          EvCrt_v("GN_ExtA_Set_Speed_Constraint: FAILED: Speed_Upper = %g < 0 or > 100 m/s , Out of range!");
        }
      }

      else
      {
        EvCrt_v("GN_ExtA_Set_Speed_Constraint: FAILED: Speed_Lower = %g < 0, Out of range!");
      }
    }

    else
    {
      EvCrt_v("GN_ExtA_Set_Speed_Constraint: FAILED: Duration = %d , Out of range!");
    }
  }

  return 0;
}

uint64_t GN_ExtA_Set_Along_Track_Vel(double *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_Along_Track_Vel"))
  {
    return 0;
  }

  if (fabs(a1[1]) > 100.0)
  {
    EvCrt_v("GN_ExtA_Set_Along_Track_Vel: FAILED: Velocity = %g > +/-100.0 m/s, Out of range!");
    return 0;
  }

  if (a1[2] <= 0.0)
  {
    EvCrt_v("GN_ExtA_Set_Along_Track_Vel: FAILED: RMS_Vel = %g <=0, Out of range!");
    return 0;
  }

  v2 = p_NA;
  v3 = (p_NA + 343);
  *(p_NA + 348) = *(p_NA + 347);
  *(v2 + 344) = *v3;
  memmove((v2 + 20208), (v2 + 20184), 0x78uLL);
  v4 = 1;
  *(v2 + 343) = 1;
  ++*(v2 + 392);
  v5 = *(a1 + 2);
  *(v2 + 20184) = *a1;
  *(v2 + 20200) = v5;
  Debug_Log_ExtA_AT_Vel(a1);
  return v4;
}

uint64_t GN_ExtA_Set_Vertical_Vel(double *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_Vertical_Vel"))
  {
    return 0;
  }

  if (fabs(a1[1]) > 100.0)
  {
    EvCrt_v("GN_ExtA_Set_Vertical_Vel: FAILED: Velocity = %g > +/-100 m/s, Out of range!");
    return 0;
  }

  if (a1[2] <= 0.0)
  {
    EvCrt_v("GN_ExtA_Set_Vertical_Vel: FAILED: RMS_Vel = %g <=0, Out of range!");
    return 0;
  }

  v2 = p_NA;
  v3 = (p_NA + 349);
  v4 = (p_NA + 350);
  *(p_NA + 354) = *(p_NA + 353);
  *v4 = *v3;
  memmove((v2 + 20352), (v2 + 20328), 0x78uLL);
  v5 = 1;
  *(v2 + 349) = 1;
  ++*(v2 + 394);
  v6 = *(a1 + 2);
  *(v2 + 20328) = *a1;
  *(v2 + 20344) = v6;
  Debug_Log_ExtA_V_Vel(a1);
  return v5;
}

uint64_t GN_ExtA_Set_User_Heading(double *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_User_Heading"))
  {
    return 0;
  }

  if (fabs(a1[1]) > 360.0)
  {
    EvCrt_v("GN_ExtA_Set_User_Heading: FAILED: Heading = %g > +/-360.0, Out of range!");
    return 0;
  }

  if (a1[2] <= 0.0)
  {
    EvCrt_v("GN_ExtA_Set_User_Heading: FAILED: RMS_Heading = %g <=0, Out of range!");
    return 0;
  }

  v2 = p_NA;
  v3 = (p_NA + 355);
  *(p_NA + 360) = *(p_NA + 359);
  *(v2 + 356) = *v3;
  memmove((v2 + 20496), (v2 + 20472), 0x78uLL);
  v4 = 1;
  *(v2 + 355) = 1;
  ++*(v2 + 396);
  v5 = *(a1 + 2);
  *(v2 + 20472) = *a1;
  *(v2 + 20488) = v5;
  Debug_Log_ExtA_Heading(a1);
  return v4;
}

uint64_t GN_ExtA_Set_Tunnel_End_Point(double *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_Tunnel_End_Point"))
  {
    return 0;
  }

  if (fabs(a1[1]) <= 90.0)
  {
    v2 = a1[2];
    if (v2 < -180.0 || v2 > 360.0)
    {
      EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: Longitude = %g <-180.0 or >360.0, Out of range!");
    }

    else if (a1[3] <= 0.0)
    {
      EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: SMaj_Sig = %g <=0.0, Out of range!");
    }

    else if (a1[4] <= 0.0)
    {
      EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: SMin_Sig = %g <=0.0, Out of range!");
    }

    else
    {
      if (*(a1 + 20) < 0xB4)
      {
        if (*(a1 + 42) == 1)
        {
          v5 = a1[6];
          if (v5 < -500.0 || v5 > 6000.0)
          {
            EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: Height = %g <%d or >%d, Out of range!");
            return 0;
          }

          if (a1[7] <= 0.0)
          {
            EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: Height_Sig = %g <=0.0, Out of range!");
            return 0;
          }
        }

        v6 = p_NA;
        v7 = (p_NA + 361);
        v8 = (p_NA + 362);
        *(p_NA + 366) = *(p_NA + 365);
        *v8 = *v7;
        memmove((v6 + 20680), (v6 + 20616), 0x140uLL);
        v3 = 1;
        *(v6 + 361) = 1;
        ++*(v6 + 398);
        v9 = *(a1 + 3);
        v11 = *a1;
        v10 = *(a1 + 1);
        *(v6 + 20648) = *(a1 + 2);
        *(v6 + 20664) = v9;
        *(v6 + 20616) = v11;
        *(v6 + 20632) = v10;
        Debug_Log_ExtA_Tunnel_End_Point(a1);
        return v3;
      }

      EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: SMaj_Brg = %d <0 or >=180, Out of range!");
    }
  }

  else
  {
    EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: Latitude = %g <-90.0 or >90.0, Out of range!");
  }

  return 0;
}

double Comp_SVrange_Sag_Corr(float64x2_t *a1, double *a2, float64x2_t *a3, float64x2_t *a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = vsubq_f64(*a4, *a3);
  v17 = v4;
  v5 = a4[1].f64[0] - a3[1].f64[0];
  v18 = v5;
  v6 = 0.0;
  v7 = 2;
  do
  {
    v6 = v6 + v17.f64[v7] * v17.f64[v7];
    v8 = v7-- + 1;
  }

  while (v8 > 1);
  v9 = 0;
  v10 = sqrt(v6);
  *a1 = vdivq_f64(v4, vdupq_lane_s64(*&v10, 0));
  a1[1].f64[0] = v5 / v10;
  v11 = vmulq_f64(*a4, xmmword_29975D2A0);
  v15 = vextq_s8(v11, v11, 8uLL);
  v16 = 0;
  v12 = 0.0;
  do
  {
    v12 = v12 + *&v15.i64[v9] * v17.f64[v9];
    ++v9;
  }

  while (v9 != 3);
  v13 = v12 * 0.00000000333564095;
  *a2 = v13;
  return v10 - v13;
}

BOOL lsim23_02GnmStopEarlyStartSession(char a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("lsim23_02GnmStopEarlyStartSession", 62, 1, 0x10uLL);
  v3 = v2;
  if (v2)
  {
    v2[12] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_EARLYSTART_STOP_IND => GNM\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim23_02GnmStopEarlyStartSession");
      LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(131, 128, 8604163, v3);
  }

  return v3 != 0;
}

uint64_t lsim23_11HandleEcallStartInd()
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim23_11HandleEcallStartInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_ECALL_START_IND\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim23_11HandleEcallStartInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  g_LsimEcallOngoing = 1;
  v4 = gnssOsa_Calloc("lsim23_01GnmStartEarlyStartSession", 41, 1, 0xCuLL);
  if (v4)
  {
    v5 = v4;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_EARLYSTART_START_IND => GNM\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim23_01GnmStartEarlyStartSession");
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }

    AgpsSendFsmMsg(131, 128, 8603907, v5);
  }

  else
  {
    lsim23_04SendApiStatus(0, 0);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim23_11HandleEcallStartInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  return 0;
}

double lsim23_04SendApiStatus(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim23_04SendApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (g_GnsEcallCallback)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:API_STATUS =>EcallCB,Api,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "lsim23_04SendApiStatus", a1, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
    }

    g_GnsEcallCallback(a1, a2, v6);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ECALL\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 87, "lsim23_04SendApiStatus", 258);
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim23_04SendApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
  }

  return result;
}

uint64_t lsim23_12HandleEcallStopInd()
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim23_12HandleEcallStopInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_ECALL_STOP_IND\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim23_12HandleEcallStopInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  g_LsimEcallOngoing = 0;
  if (!lsim23_02GnmStopEarlyStartSession(1))
  {
    lsim23_04SendApiStatus(1, 0);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim23_12HandleEcallStopInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  return 0;
}

uint64_t lsim23_15HandleEarlyStartStartRsp(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim23_15HandleEarlyStartStartRsp");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_EARLYSTART_START_RSP\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim23_15HandleEarlyStartStartRsp");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  lsim23_04SendApiStatus(0, *(a1 + 12));
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim23_15HandleEarlyStartStartRsp");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  return 0;
}

uint64_t lsim23_16HandleEarlyStartStopRsp(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim23_16HandleEarlyStartStopRsp");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_EARLYSTART_STOP_RSP\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim23_16HandleEarlyStartStopRsp");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (*(a1 + 16) == 1)
  {
    lsim23_04SendApiStatus(1, *(a1 + 12));
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim23_16HandleEarlyStartStopRsp");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  return 0;
}

double lsim23_21EcallCbInit(uint64_t (*a1)(void, void, __n128))
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    goto LABEL_2;
  }

  if (g_GnsEcallCallback)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim23_21EcallCbInit", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

LABEL_2:
    g_GnsEcallCallback = a1;
    return result;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim23_21EcallCbInit", 513);
    LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

  return result;
}

uint64_t GNS_EcallInitialize(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_EcallInitialize");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = 1;
  v5 = gnssOsa_Calloc("GNS_EcallInitialize", 224, 1, 0x18uLL);
  if (!v5)
  {
    return 6;
  }

  v5[3] = 1;
  *(v5 + 2) = a1;
  AgpsSendFsmMsg(131, 131, 8635139, v5);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_EcallInitialize");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  return v4;
}

uint64_t GNS_EcallStart(char a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_EcallStart");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("GNS_EcallStart", 256, 1, 0x10uLL);
  if (v4)
  {
    v4[12] = a1;
    AgpsSendFsmMsg(131, 131, 8631299, v4);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 73, "GNS_EcallStart");
      v7 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v6, 4, 1);
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
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_EcallStart");
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
    }

    return 6;
  }

  return v7;
}

uint64_t GNS_EcallStop(char a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_EcallStop");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("GNS_EcallStop", 286, 1, 0x10uLL);
  if (v4)
  {
    v4[12] = a1;
    AgpsSendFsmMsg(131, 131, 8631555, v4);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 73, "GNS_EcallStop");
      v7 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v6, 4, 1);
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
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_EcallStop");
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
    }

    return 6;
  }

  return v7;
}

uint64_t Comp_CurrState(unsigned int a1, int a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v6 = *(a3 + 184);
  if (v6)
  {
    *(a4 + 132) = *(a3 + 180);
    *(a4 + 128) = *(a3 + 176);
    *(a4 + 120) = v6;
    v7 = (*(a3 + 160) + 604800 * (*(a3 + 164) - a2));
    *(a4 + 124) = *(a3 + 166);
    v8 = a5 - v7;
    if (fabs(a6) > 0.1)
    {
      v8 = v8 + a6 / -299792458.0 - *(a3 + 96);
    }

    *a4 = v8;
    v9 = fabs(v8);
    if (v9 >= a1)
    {
      return 0;
    }

    else
    {
      v10 = v8 * v8;
      v11 = v8 * v8 * 0.5;
      v12 = (a3 + 48);
      v13 = (a4 + 32);
      v14 = 3;
      do
      {
        *(v13 - 3) = *(v12 - 6) + *(v12 - 3) * v8 + *v12 * v11 + v12[3] * (v8 * v11 * 0.333333333);
        *v13++ = *(v12 - 3) + *v12 * v8 + v12[3] * v11;
        ++v12;
        --v14;
      }

      while (v14);
      v15 = *(a3 + 104);
      v16 = *(a3 + 96) + v8 * v15;
      *(a4 + 56) = v16;
      *(a4 + 64) = v15;
      v17 = *(a3 + 136);
      v18 = *(a3 + 120);
      *(a4 + 112) = *(a3 + 152);
      *(a4 + 80) = v18;
      *(a4 + 96) = v17;
      *(a4 + 56) = v16 - *(a4 + 80);
      if (v9 <= 30.0)
      {
        v19 = *(a3 + 112);
      }

      else
      {
        v19 = *(a3 + 112) + v10 * (v10 * 8.0e-10 + 0.00003) * (v10 * (v10 * 8.0e-10 + 0.00003));
      }

      *(a4 + 72) = v19;
      return 1;
    }
  }

  else
  {
    result = 0;
    *(a4 + 125) = 0;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void LcsSuplGlueLayer::~LcsSuplGlueLayer(LcsSuplGlueLayer *this)
{
  *this = &unk_2A1F88CC8;
  *(this + 1) = &unk_2A1F88D30;
  *(this + 4) = 0;
  *(this + 5) = 0;
}

{
  *this = &unk_2A1F88CC8;
  *(this + 1) = &unk_2A1F88D30;
  *(this + 4) = 0;
  *(this + 5) = 0;

  JUMPOUT(0x29C29EB20);
}

uint64_t LcsSuplGlueLayer::GetInstance(LcsSuplGlueLayer *this)
{
  v5 = *MEMORY[0x29EDCA608];
  if (LcsSuplGlueLayer::GetInstance(void)::pred_lcsSuplglueLayer != -1)
  {
    dispatch_once(&LcsSuplGlueLayer::GetInstance(void)::pred_lcsSuplglueLayer, &__block_literal_global_6);
  }

  result = LcsSuplGlueLayer::m_suplgluelayer_handle;
  if (!LcsSuplGlueLayer::m_suplgluelayer_handle)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "GetInstance", "GetInstance");
      LbsOsaTrace_WriteLog(0xEu, __str, v3, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("GetInstance", "LcsSuplGlueLayer.cpp", 69, "false && Memory allocation failure");
  }

  return result;
}

void *___ZN16LcsSuplGlueLayer11GetInstanceEv_block_invoke()
{
  result = operator new(0x30uLL, MEMORY[0x29EDC9418]);
  if (result)
  {
    *result = &unk_2A1F88CC8;
    result[1] = &unk_2A1F88D30;
    *(result + 6) = 0;
    *(result + 4) = 0;
    result[4] = 0;
    result[5] = 0;
  }

  LcsSuplGlueLayer::m_suplgluelayer_handle = result;
  return result;
}

uint64_t LcsSuplGlueLayer::GenerateRequestId(LcsSuplGlueLayer *this)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *(this + 4);
  if (v2 <= 0xFE)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 1;
  }

  *(this + 4) = v3;
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: new requestID,%u\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 73, "GenerateRequestId", *(this + 4));
    LbsOsaTrace_WriteLog(0x12u, __str, v5, 4, 1);
  }

  return *(this + 4);
}

uint64_t LcsSuplGlueLayer::ConnectReq(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v31 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (!v4)
  {
LABEL_4:
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    result = 0;
    if (!IsLoggingAllowed)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "ConnectReq", 2052, a2);
    LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
    return 0;
  }

  while (*v4 != a2)
  {
    v4 = *(v4 + 8);
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  v24 = -1;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v27 = 0;
  v28 = -1;
  v29 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: requestID,%u\n", (*&g_MacClockTicksToMsRelation * v10), "SPL", 73, "ConnectReq", a2);
    LbsOsaTrace_WriteLog(0x12u, __str, v11, 4, 1);
  }

  v12 = *a3;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = 3;
      goto LABEL_21;
    }

    if (v12 == 3)
    {
      v13 = 1;
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (*a3)
  {
    if (v12 == 1)
    {
      v13 = 2;
LABEL_21:
      v26 = v13;
      goto LABEL_22;
    }

LABEL_16:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TCP/IP AddressType,%u\n", (*&g_MacClockTicksToMsRelation * v14), "SPL", 69, "ConnectReq", 515, *a3);
      LbsOsaTrace_WriteLog(0x12u, __str, v15, 0, 1);
    }

    goto LABEL_22;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AddressType is Not set\n", (*&g_MacClockTicksToMsRelation * v16), "SPL", 69, "ConnectReq", 770);
    LbsOsaTrace_WriteLog(0x12u, __str, v17, 0, 1);
  }

LABEL_22:
  v18 = a3[31];
  if ((v18 & 0x8000000000000000) == 0)
  {
    v19 = a3 + 8;
    if (!a3[31])
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v19 = *(a3 + 1);
  v18 = *(a3 + 2);
  if (v18)
  {
LABEL_24:
    memmove(v25, v19, v18);
  }

LABEL_25:
  v28 = *(a3 + 16);
  v29 = 0;
  Trace_GN_SUPL_Connect_Req_Parms(&v24);
  if (!GN_SUPL_Connect_Req_Out(*(v4 + 16), &v24))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Connection rejected\n", (*&g_MacClockTicksToMsRelation * v22), "SPL", 69, "ConnectReq", 2305);
    LbsOsaTrace_WriteLog(0x12u, __str, v23, 0, 1);
    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Connection accepted\n", (*&g_MacClockTicksToMsRelation * v20), "SPL", 73, "ConnectReq");
    LbsOsaTrace_WriteLog(0x12u, __str, v21, 4, 1);
  }

  return 1;
}

uint64_t non-virtual thunk toLcsSuplGlueLayer::ConnectReq(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v3 = a1 - 8;

  return LcsSuplGlueLayer::ConnectReq(v3, a2, a3);
}

void LcsSuplGlueLayer::MeasurePositionRsp(uint64_t a1, __int16 *a2, unsigned __int8 *a3, int a4)
{
  v50 = *MEMORY[0x29EDCA608];
  LcsFunctionEntryExitTrace::LcsFunctionEntryExitTrace(v48, 184, "MeasurePositionRsp");
  v8 = *(a1 + 40);
  if (!v8)
  {
LABEL_4:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 69, "MeasurePositionRsp", 2052, a4);
      LbsOsaTrace_WriteLog(0x12u, __str, v10, 0, 1);
    }

    goto LABEL_54;
  }

  while (*v8 != a4)
  {
    v8 = *(v8 + 8);
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  LODWORD(v40) = 0;
  *(&v40 + 1) = 0;
  *&v41 = 0;
  *(&v41 + 6) = 0;
  HIWORD(v41) = -1;
  v42 = 0;
  v43 = 0;
  v47 = 0;
  v45 = 0uLL;
  v44 = -1;
  v46 = 0;
  if (*a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: resultCode,%u\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 73, "MeasurePositionRsp", *a2);
      LbsOsaTrace_WriteLog(0x12u, __str, v12, 4, 1);
    }

    v13 = *a2;
    if (v13 == 65520)
    {
      v23 = *(a2 + 2);
      if (v23 == 15)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v28 = mach_continuous_time();
          v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL Positioning Not Permitted\n", (*&g_MacClockTicksToMsRelation * v28), "SPL", 69, "MeasurePositionRsp", 770);
          LbsOsaTrace_WriteLog(0x12u, __str, v29, 0, 1);
        }

        v16 = 3;
      }

      else if (v23 == 6)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v24 = mach_continuous_time();
          v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL Pos Method Failure\n", (*&g_MacClockTicksToMsRelation * v24), "SPL", 69, "MeasurePositionRsp", 2306);
          LbsOsaTrace_WriteLog(0x12u, __str, v25, 0, 1);
        }

        v16 = 1;
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v30 = mach_continuous_time();
          v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Server Error\n", (*&g_MacClockTicksToMsRelation * v30), "SPL", 69, "MeasurePositionRsp", 2307);
          LbsOsaTrace_WriteLog(0x12u, __str, v31, 0, 1);
        }

        v16 = 4;
      }
    }

    else if (v13 == 65519)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Unknown\n", (*&g_MacClockTicksToMsRelation * v14), "SPL", 69, "MeasurePositionRsp", 2305);
        LbsOsaTrace_WriteLog(0x12u, __str, v15, 0, 1);
      }

      v16 = 8;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v26 = mach_continuous_time();
        v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx result code\n", (*&g_MacClockTicksToMsRelation * v26), "SPL", 69, "MeasurePositionRsp", 770);
        LbsOsaTrace_WriteLog(0x12u, __str, v27, 0, 1);
      }

      v16 = 0;
    }

    DWORD1(v40) = 7;
    goto LABEL_51;
  }

  DWORD1(v40) = 7;
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Fix type,%u\n", (*&g_MacClockTicksToMsRelation * v17), "SPL", 73, "MeasurePositionRsp", *a3);
    LbsOsaTrace_WriteLog(0x12u, __str, v18, 4, 1);
  }

  if (*a3)
  {
    v19 = 2 * (*a3 == 1);
  }

  else
  {
    v19 = 1;
  }

  DWORD2(v40) = v19;
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: shape,%u\n", (*&g_MacClockTicksToMsRelation * v20), "SPL", 68, "MeasurePositionRsp", a3[1]);
    LbsOsaTrace_WriteLog(0x12u, __str, v21, 5, 1);
  }

  if (!a3[1])
  {
    HIDWORD(v40) = 16;
    if (a3[2] == 1)
    {
      v22 = 2;
    }

    else
    {
      if (a3[2])
      {
        LODWORD(v41) = 0;
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v33 = mach_continuous_time();
          v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx hemisphere\n", (*&g_MacClockTicksToMsRelation * v33), "SPL", 69, "MeasurePositionRsp", 770);
          LbsOsaTrace_WriteLog(0x12u, __str, v34, 0, 1);
        }

LABEL_42:
        *(&v41 + 4) = *(a3 + 1);
        HIDWORD(v41) = *(a3 + 4);
        v42 = -1;
        if (a3[3] == 1)
        {
          v32 = 2;
        }

        else
        {
          if (a3[3])
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v38 = mach_continuous_time();
              v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Altitude direction\n", (*&g_MacClockTicksToMsRelation * v38), "SPL", 69, "MeasurePositionRsp", 770);
              LbsOsaTrace_WriteLog(0x12u, __str, v39, 0, 1);
            }

            goto LABEL_49;
          }

          v32 = 1;
        }

        v43 = v32;
LABEL_49:
        LOWORD(v44) = *(a3 + 21);
        *&v35 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        LODWORD(v40) = v35;
        DWORD1(v40) = 1;
        WORD2(v45) = *(a3 + 12);
        v35.i32[0] = *(a3 + 26);
        *(&v45 + 6) = vmovl_u8(v35).u64[0];
        HIWORD(v45) = a3[30];
        v46 = *(a3 + 16);
        v47 = v40;
        goto LABEL_50;
      }

      v22 = 1;
    }

    LODWORD(v41) = v22;
    goto LABEL_42;
  }

LABEL_50:
  v16 = 2;
LABEL_51:
  Trace_GN_SUPL_Position_Resp_Out(*(v8 + 16), v16, &v40, 1);
  if ((GN_SUPL_Position_Resp_Out(*(v8 + 16), v16, &v40) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v36 = mach_continuous_time();
    v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GN_SUPL_Position_Resp_Out call failed\n", (*&g_MacClockTicksToMsRelation * v36), "SPL", 69, "MeasurePositionRsp", 770);
    LbsOsaTrace_WriteLog(0x12u, __str, v37, 0, 1);
  }

LABEL_54:
  LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(v48);
}

void sub_299639904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(va);
  _Unwind_Resume(a1);
}

void LcsSuplGlueLayer::PushSessionInfo(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: requestID,%u\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 73, "PushSessionInfo", *(a2 + 16));
    LbsOsaTrace_WriteLog(0x12u, __str, v5, 4, 1);
  }

  v6 = *(a1 + 40);
  while (v6)
  {
    v7 = v6;
    v6 = *(v6 + 8);
    if (!v6)
    {
      *(v7 + 8) = a2;
      *(a2 + 8) = 0;
      return;
    }
  }

  *(a2 + 8) = *(a1 + 40);
  *(a1 + 40) = a2;
}

void LcsSuplGlueLayer::DeleteSessionInfo(LcsSuplGlueLayer *this, int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: requestID,%u\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 73, "DeleteSessionInfo", a2);
    LbsOsaTrace_WriteLog(0x12u, __str, v5, 4, 1);
  }

  v6 = *(this + 5);
  if (v6)
  {
    v7 = *(this + 5);
    while (*v7 != a2)
    {
      v7 = *(v7 + 8);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    while (*v6 != a2)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    LcsLinkedList::Remove(this + 24, v6);
LABEL_12:
    *(v7 + 8) = 0;
    MEMORY[0x29C29EB20](v7, 0x1020C40903548AELL);
  }

  else
  {
LABEL_7:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Session Deletion Failed\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 87, "DeleteSessionInfo", 2050);
      LbsOsaTrace_WriteLog(0x12u, __str, v9, 2, 1);
    }
  }
}

void LcsSuplGlueLayer::DisconnectReq(LcsSuplGlueLayer *this, int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = *(this + 5);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    Trace_GN_SUPL_Disconnect_Req_Out(*(v3 + 16));
    GN_SUPL_Disconnect_Req_Out(*(v3 + 16));

    LcsSuplGlueLayer::DeleteSessionInfo(this, a2);
  }

  else
  {
LABEL_4:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "DisconnectReq", 2052, a2);
      LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }
  }
}

void non-virtual thunk toLcsSuplGlueLayer::DisconnectReq(LcsSuplGlueLayer *this, int a2)
{
  v2 = (this - 8);

  LcsSuplGlueLayer::DisconnectReq(v2, a2);
}

uint64_t LcsSuplGlueLayer::SendDataReq(uint64_t a1, int a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: requestID,%u,buflen,%lu\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 73, "SendDataReq", a2, *(a3 + 8) - *a3);
    LbsOsaTrace_WriteLog(0x12u, __str, v7, 4, 1);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    while (*v8 != a2)
    {
      v8 = *(v8 + 8);
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    Trace_GN_SUPL_PDU_Delivery_Out(*(v8 + 16), (*(a3 + 8) - *a3), *a3);
    return GN_SUPL_PDU_Delivery_Out(*(v8 + 16), (*(a3 + 8) - *a3), *a3);
  }

  else
  {
LABEL_6:
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 69, "SendDataReq", 2052, a2);
      LbsOsaTrace_WriteLog(0x12u, __str, v12, 0, 1);
      return 0;
    }
  }

  return result;
}

uint64_t non-virtual thunk toLcsSuplGlueLayer::SendDataReq(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a1 - 8;

  return LcsSuplGlueLayer::SendDataReq(v3, a2, a3);
}

uint64_t LcsSuplGlueLayer::GetAidMask(SuplUtils *a1, int a2, unsigned __int8 a3, unsigned int a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 5);
  if (v4)
  {
    while (*v4 != a2)
    {
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    v10 = 2;
    v23 = 2;
    Instance = SuplUtils::GetInstance(a1);
    SuplUtils::FillSetCapabilities(Instance, v22, a3, 0);
    if (v23)
    {
      if (v23 == 1)
      {
        v10 = 3;
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx No pref method set\n", (*&g_MacClockTicksToMsRelation * v12), "SPL", 87, "ConvertPosMethod", 770);
        v10 = 1;
        LbsOsaTrace_WriteLog(0x12u, __str, v13, 2, 1);
      }

      else
      {
        v10 = 1;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PrefMethod,%u\n", (*&g_MacClockTicksToMsRelation * v14), "SPL", 73, "ConvertPosMethod", v10);
      LbsOsaTrace_WriteLog(0x12u, __str, v15, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SUPL ConstellationSupport,%u\n", (*&g_MacClockTicksToMsRelation * v16), "SPL", 73, "ConvertConstellation", a4);
      LbsOsaTrace_WriteLog(0x12u, __str, v17, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnssBitMask,%u\n", (*&g_MacClockTicksToMsRelation * v18), "SPL", 73, "ConvertConstellation", a4 < 2);
      LbsOsaTrace_WriteLog(0x12u, __str, v19, 4, 1);
    }

    v20 = a4 < 2;
    Trace_GN_SUPL_AidRequest_Out(*(v4 + 16), 7000, v10, v20);
    return (GN_SUPL_AidRequest_Out(*(v4 + 16), 0x1B58u, v10, v20) - 1);
  }

  else
  {
LABEL_4:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL session is NULL\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "GetAidMask", 2052);
      LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
    }

    return -1;
  }
}

uint64_t LcsSuplGlueLayer::ProcessSuplPosPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    goto LABEL_10;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_10;
  }

  while (*v3 != *(a3 + 28))
  {
    v3 = *(v3 + 8);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  v5 = *(a3 + 24) - 1 < 3 ? (*(a3 + 24) - 1) + 1 : 0;
  v6 = *(a3 + 32) == 1;
  Trace_GN_SUPL_PPDU_Decode_Out(*(v3 + 16), (*(a3 + 8) - *a3), *a3, v5, v6, v6);
  v7 = GN_SUPL_PPDU_Decode_Out(*(v3 + 16), (*(a3 + 8) - *a3), *a3, v5, v6, v6);
  v8 = 0;
  if (!v7)
  {
LABEL_10:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 69, "ProcessSuplPosPayload", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v10, 0, 1);
    }

    return -1;
  }

  return v8;
}

uint64_t LcsSuplGlueLayer::ProtocolSessionEnd(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  v4 = a2;
  v44 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    goto LABEL_5;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: shape,%u\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 73, "ProtocolSessionEnd", a4[1]);
    LbsOsaTrace_WriteLog(0x12u, __str, v7, 4, 1);
  }

  if (!a4[1])
  {
    if (*a4)
    {
      if (*a4 == 1)
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Fixtype,%u\n", (*&g_MacClockTicksToMsRelation * v16), "SPL", 69, "ProtocolSessionEnd", 770, *a4);
          LbsOsaTrace_WriteLog(0x12u, __str, v17, 0, 1);
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    if (a4[2])
    {
      if (a4[2] == 1)
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx hemisphere,%u\n", (*&g_MacClockTicksToMsRelation * v18), "SPL", 69, "ProtocolSessionEnd", 770, a4[2]);
          LbsOsaTrace_WriteLog(0x12u, __str, v19, 0, 1);
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v8 = *(a4 + 8);
    v29 = *(a4 + 1);
    v25 = a4[18];
    v26 = a4[19];
    if (a4[3])
    {
      if (a4[3] == 1)
      {
        v20 = 2;
      }

      else
      {
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
        v20 = 0;
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v22 = mach_continuous_time();
          v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Altitude direction,%u\n", (*&g_MacClockTicksToMsRelation * v22), "SPL", 69, "ProtocolSessionEnd", 770, a4[3]);
          LbsOsaTrace_WriteLog(0x12u, __str, v23, 0, 1);
          v20 = 0;
        }
      }
    }

    else
    {
      v20 = 1;
    }

    HIDWORD(v28) = v20;
    v12 = a4[21];
    v13 = (a4[22] << 8) | 0xFFFFFFFFFFFF0000;
    v11 = 1;
    v27 = 16;
    LOBYTE(v28) = -1;
    v15 = v25;
    v14 = v26;
  }

  else
  {
LABEL_5:
    v8 = 0;
    v9 = 0;
    v27 = 0;
    v28 = 0;
    v10 = 0;
    v29 = 0;
    v11 = 7;
    v12 = 255;
    v13 = -256;
    v14 = -1;
    v15 = -1;
  }

  Trace_GN_SUPL_PPDU_SessionEnd_Out(v4, a3);
  *__str = 0;
  v32 = v11;
  v33 = v10;
  v34 = v27;
  v35 = v9;
  v36 = v29;
  v37 = v8;
  v38 = v15;
  v39 = v14;
  v40 = v28;
  v41 = HIDWORD(v28);
  v42 = v12 | v13;
  v43 = 0;
  return GN_SUPL_PPDU_SessionEnd_Out(v4, a3, __str);
}

uint64_t LcsSuplGlueLayer::ProcessLppCapsReq(LcsSuplGlueLayer *this, int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = *(this + 5);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    GN_SUPL_PPDU_PduRequest_Out(*(v3 + 16), 3, 1, 0, 0, 0);
    return 0;
  }

  else
  {
LABEL_4:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 69, "ProcessLppCapsReq", 2052, a2);
      LbsOsaTrace_WriteLog(0x12u, __str, v5, 0, 1);
    }

    return -1;
  }
}

uint64_t LcsSuplGlueLayer::ProcessLppADReq(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v7 = v2;
  v54 = *MEMORY[0x29EDCA608];
  v8 = *(v1 + 40);
  if (!v8)
  {
LABEL_5:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v12), "SPL", 69, "ProcessLppADReq", 2052, v7);
      v14 = __str;
LABEL_59:
      LbsOsaTrace_WriteLog(0x12u, v14, v13, 0, 1);
      return -1;
    }

    return -1;
  }

  v9 = v6;
  v10 = v5;
  v11 = v3;
  while (*v8 != v2)
  {
    v8 = *(v8 + 8);
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  LODWORD(v38[0]) = -1;
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  v37 = 0;
  memset(v53, 0, sizeof(v53));
  memset(v52, 0, sizeof(v52));
  v38[1] = &v37;
  if (*v4 == 1)
  {
    v15 = *(v4 + 8);
    if ((v15 & 0x20) != 0)
    {
      LOBYTE(v37) = 1;
      if ((v15 & 0x10) == 0)
      {
LABEL_10:
        if ((v15 & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if ((v15 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    BYTE1(v37) = 1;
    if ((v15 & 4) == 0)
    {
LABEL_12:
      BYTE3(v37) = 1;
      *&v39 = v52;
      *v52 = 1;
      if ((v15 & 2) != 0)
      {
        v52[4] = 1;
        if ((v15 & 0x80) == 0)
        {
LABEL_14:
          if ((v15 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_39;
        }
      }

      else if ((v15 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      v52[5] = 1;
      if ((v15 & 1) == 0)
      {
LABEL_15:
        if ((v15 & 8) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_40;
      }

LABEL_39:
      v52[6] = 1;
      if ((v15 & 8) == 0)
      {
LABEL_16:
        if ((v15 & 0x40) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_40:
      v52[7] = 1;
      if ((v15 & 0x40) == 0)
      {
LABEL_18:
        *&v52[16] = *(v4 + 12);
        v52[18] = *(v4 + 14);
        v52[19] = *(v4 + 64);
        v52[20] = *(v4 + 15);
        v16 = v52[20];
        if (v52[20])
        {
          v17 = 0;
          v18 = *(v4 + 16);
          v19 = *(v4 + 24) - v18;
          v20 = *(v4 + 40);
          if (*(v4 + 48) - v20 < v19)
          {
            v19 = *(v4 + 48) - v20;
          }

          if (v19 >= 0x40)
          {
            v19 = 64;
          }

          do
          {
            if (v19 == v17)
            {
              break;
            }

            v52[v17 + 21] = *(v18 + v17);
            *(v53 + v17) = *(v20 + v17);
            ++v17;
          }

          while (v16 != v17);
        }

        goto LABEL_25;
      }

LABEL_17:
      v52[8] = 1;
      goto LABEL_18;
    }

LABEL_11:
    BYTE2(v37) = 1;
    goto LABEL_12;
  }

LABEL_25:
  *__str = 0;
  v44 = -1;
  memset_s(v45, 0x1840uLL, 0, 0x1840uLL);
  *&__str[4] = 5;
  v44 = v9;
  v21 = *(v10 + 88);
  v47 = v21;
  v22 = *(v10 + 64);
  if (*(v10 + 72) - v22 != 4)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(v42, 0x410uLL);
      mach_continuous_time();
      v13 = snprintf(v42, 0x40FuLL, "%10u %s%c %s: #%04hx CellIdentity Invalid\n");
LABEL_58:
      v14 = v42;
      goto LABEL_59;
    }

    return -1;
  }

  v46 = 16 * v22[3];
  v46 += v22[2] << 8;
  v46 += v22[1] << 16;
  v46 = (v46 + (*v22 << 24)) >> 4;
  if (*(v10 + 8) == 1)
  {
    v23 = *(v10 + 16);
    if (*(v10 + 24) - v23 == 3)
    {
      v45[0] = 100 * *v23 + 10 * v23[1] + v23[2];
    }
  }

  v24 = *(v10 + 40);
  v25 = *(v10 + 48) - v24;
  if (v25 == 3)
  {
    v26 = 100 * *v24 + 10 * v24[1];
    v27 = 2;
    goto LABEL_43;
  }

  if (v25 != 2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(v42, 0x410uLL);
      mach_continuous_time();
      v13 = snprintf(v42, 0x40FuLL, "%10u %s%c %s: #%04hx MNC Invalid\n");
      goto LABEL_58;
    }

    return -1;
  }

  v26 = 10 * *v24;
  v27 = 1;
LABEL_43:
  v45[1] = v26 + v24[v27];
  if (*v10 == 1)
  {
    v28 = *(v10 + 120);
  }

  else
  {
    v28 = -1;
  }

  v49 = v28;
  if (*(v10 + 1) == 1)
  {
    v29 = *(v10 + 121);
  }

  else
  {
    v29 = -1;
  }

  v50 = v29;
  if (*(v10 + 2) == 1)
  {
    v30 = *(v10 + 122);
  }

  else
  {
    v30 = -1;
  }

  v51 = v30;
  v31 = *(v10 + 96);
  v32 = *v31;
  v48 = v32 << 8;
  v48 = v31[1] | (v32 << 8);
  *__str = 2;
  if (v11 == 8)
  {
    *v42 = v21;
    Trace_GN_SUPL_PPDU_PduRequest_Out(*(v8 + 16), 3, 2, v38, v42, __str);
    v33 = *(v8 + 16);
    v34 = v42;
  }

  else
  {
    Trace_GN_SUPL_PPDU_PduRequest_Out(*(v8 + 16), 3, 2, v38, 0, __str);
    v33 = *(v8 + 16);
    v34 = 0;
  }

  GN_SUPL_PPDU_PduRequest_Out(v33, 3, 2, v38, v34, __str);
  return 0;
}

uint64_t LcsSuplGlueLayer::SendSuplMsgStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_EventNotif_Out sessionId,%u,suplMsg,%u,posMethod,%u,suplEndCause,%u\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 73, "SendSuplMsgStatus", v10, v9, v8, v7);
    LbsOsaTrace_WriteLog(0x12u, __str, v12, 4, 1);
  }

  if (a6 && LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status %u, Sign of Lat,%u,lat,%u,long,%d,Alt,%u,Dr of Al,%u,UnMjraxis,%u,UnMnraxis,%u,Alt Uncer,%u\n", (*&g_MacClockTicksToMsRelation * v13), "SPL", 73, "SendSuplMsgStatus", *(a6 + 4), *(a6 + 16), *(a6 + 20), *(a6 + 24), *(a6 + 28), *(a6 + 36), *(a6 + 30), *(a6 + 31), *(a6 + 40));
    LbsOsaTrace_WriteLog(0x12u, __str, v14, 4, 1);
  }

  return GN_SUPL_EventNotif_Out(v10, 1, 0, v9, v8, v7, a6);
}

uint64_t LcsSuplGlueLayer::SendSuplConnectionStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_EventNotif_Out sessionId,%u,statusCode,%u, InvalidSuplMsg NoPosMeth NoEndCause\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 73, "SendSuplConnectionStatus", v4, v3);
    LbsOsaTrace_WriteLog(0x12u, __str, v6, 4, 1);
  }

  return GN_SUPL_EventNotif_Out(v4, 2, v3, 0, 0, 0, 0);
}

BOOL NK_Predict_State(int *a1, int *a2)
{
  v12[1] = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = *a2;
  v6 = *a1 - *a2;
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = v6 * 0.001;
  *(a2 + 4) = v7;
  a2[6] = v5;
  *a2 = v4;
  *(a2 + 1) = *(a1 + 3);
  a2[4] = a1[3];
  *(a2 + 11) = *(a1 + 9);
  *(a2 + 20) = *(a1 + 17);
  a2[37] = a1[25];
  *(a2 + 152) = *(a1 + 104);
  *(a2 + 77) = *(a1 + 53);
  *(a2 + 78) = *(a1 + 54);
  *(a2 + 20) = *(a1 + 14);
  v8 = (a2 + 10);
  v9 = 3;
  do
  {
    *v8 = *v8 + v8[3] * v7;
    ++v8;
    --v9;
  }

  while (v9);
  v12[0] = 0.0;
  if (!R8_EQ(a2 + 14, v12))
  {
    *(a2 + 14) = *(a2 + 14) + *(a2 + 17) * v7;
  }

  v12[0] = 0.0;
  if (!R8_EQ(a2 + 15, v12))
  {
    *(a2 + 15) = *(a2 + 15) + *(a2 + 17) * v7;
  }

  v12[0] = 0.0;
  result = R8_EQ(a2 + 16, v12);
  if (!result)
  {
    *(a2 + 16) = *(a2 + 16) + *(a2 + 17) * v7;
  }

  v11 = a1[11];
  if (v11)
  {
    v12[0] = 0.0;
    if (!R8_EQ(a2 + 14, v12))
    {
      *(a2 + 14) = *(a2 + 14) + v11 * -0.001;
    }

    v12[0] = 0.0;
    if (!R8_EQ(a2 + 15, v12))
    {
      *(a2 + 15) = *(a2 + 15) + v11 * -0.001;
    }

    v12[0] = 0.0;
    result = R8_EQ(a2 + 16, v12);
    if (!result)
    {
      *(a2 + 16) = *(a2 + 16) + v11 * -0.001;
    }
  }

  return result;
}

double SuplRrlpExecutePosRsp(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "SuplRrlpExecutePosRsp");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  v27 = 0;
  v25 = 0;
  v26 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RRLP Sub Msg Type,%u\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 65, "SuplRrlpExecutePosRsp", *(a1 + 1));
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 1, 1);
  }

  v6 = *(a1 + 1);
  if (v6 == 2)
  {
    v11 = **(a1 + 8);
    if (!v11)
    {
      goto LABEL_17;
    }

    v10 = rrl_process_measure_response_stand_alone(v11, &v27, &v25);
    goto LABEL_14;
  }

  if (v6 == 1)
  {
    v10 = rrl_process_assistance_data_request(**(a1 + 8), *(*(a1 + 8) + 8), &v27, &v25);
LABEL_14:
    v9 = v10;
LABEL_20:
    v21 = 0;
    v22 = 0;
    if (v27 && v9 <= 1)
    {
      v23 = 0;
      v21 = v25;
      v22 = v26;
    }

    else
    {
      v23 = 1;
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Error in encoding Rsp msg\n", (*&g_MacClockTicksToMsRelation * v16), "PSP", 69, "SuplRrlpExecutePosRsp", 770);
        LbsOsaTrace_WriteLog(0x13u, __str, v17, 0, 1);
      }
    }

    v24 = *(a1 + 16);
    HandleRRLPResponse(&v21);
    goto LABEL_26;
  }

  if (*(a1 + 1))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Measure Position Response\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 69, "SuplRrlpExecutePosRsp", 770);
      v9 = 1;
      LbsOsaTrace_WriteLog(0x13u, __str, v13, 0, 1);
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_20;
  }

  v7 = *(a1 + 8);
  v8 = *v7;
  if (*v7)
  {
    v9 = rrl_process_measure_response_msb(*v7, 2, &v27, &v25);
    if (!*v8)
    {
      SendStatusReport(*(a1 + 16), 2, 0, 0, 0, 255);
    }

    goto LABEL_20;
  }

LABEL_17:
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx gps_ptr\n", (*&g_MacClockTicksToMsRelation * v14), "PSP", 69, "SuplRrlpExecutePosRsp", 513);
    LbsOsaTrace_WriteLog(0x13u, __str, v15, 0, 1);
  }

LABEL_26:
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "PSP", 68, "SuplRrlpExecutePosRsp");
    LbsOsaTrace_WriteLog(0x13u, __str, v20, 5, 1);
  }

  return result;
}

double SuplRrlpExecutePosReq(unsigned int *a1)
{
  v118 = *MEMORY[0x29EDCA608];
  v41 = 255;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "SuplRrlpExecutePosReq");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  v42 = 1;
  v4 = a1[5];
  v43 = v4;
  v5 = *(a1 + 16);
  if ((v5 - 2) >= 2 && v5 != 0)
  {
    if (v5 == 1)
    {
      v41 = 0;
    }

    v39 = 0;
    v40 = 0;
    v12 = gnssOsa_Calloc("SuplRrlpExecutePosReq", 140, 1, *a1);
    v40 = v12;
    if (!v12)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        goto LABEL_42;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_25;
    }

    memcpy_s("SuplRrlpExecutePosReq", 149, v12, *a1, *(a1 + 1), *a1);
    v39 = *a1;
    v38 = 0;
    v36 = 15;
    v37 = 3;
    v34[0] = 0;
    v34[4] = 3;
    memset_s(&v35, 0xCuLL, 0, 0xCuLL);
    v13 = rrl_process_downlink_message(&v39, 2, &v38, &v36, &v37, v34);
    LOBYTE(v44) = 0;
    v45 = 0;
    v46 = -1;
    v47 = -1;
    v48 = -1;
    v49 = 255;
    T_UTRAN_GPS_TIME_s::T_UTRAN_GPS_TIME_s(v50);
    v14 = 0;
    v50[7] = 2;
    v51 = 32512;
    v52 = 0;
    v53 = -1;
    v54 = -1;
    v55 = -1;
    v56 = -1;
    v57 = 0;
    do
    {
      v15 = &v44 + v14;
      v15[78] = -1;
      *(v15 + 20) = -1;
      v15[84] = -1;
      v14 += 8;
    }

    while (v14 != 128);
    v58 = -1;
    v59 = 0;
    v60 = -1;
    v61 = 0;
    v62 = -1;
    v63 = 255;
    T_UTRAN_GPS_TIME_s::T_UTRAN_GPS_TIME_s(v64);
    v64[28] = 0;
    v65 = -1;
    v66 = -1;
    v67 = -1;
    v68 = -1;
    v69 = 255;
    v70 = 0;
    v71 = -1;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = -1;
    v76 = 0;
    v77 = 255;
    v78 = 0;
    v79 = 0;
    v80 = -1;
    v81 = 0;
    v82 = 0x7FFFFFFF7FFFFFFFLL;
    v83 = 0x800000;
    v84 = 32639;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = -1;
    v92 = -1;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = -1;
    v101 = -1;
    v102 = -1;
    *(v103 + 5) = -1;
    v103[0] = -1;
    T_GNSS_POSITION_s::T_GNSS_POSITION_s(v104);
    v104[28] = -16777216;
    v105 = 0x7F7F7F7F7F7F7F7FLL;
    v106 = 255;
    v30 = 0;
    v31 = 0;
    v32 = -1;
    v33 = -1;
    if (v13)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Decode Failed\n", (*&g_MacClockTicksToMsRelation * v16), "PSP", 69, "SuplRrlpExecutePosReq", 770);
        LbsOsaTrace_WriteLog(0x13u, __str, v17, 0, 1);
      }

      rrl_clear_gnss_ad(&v44, 1);
      if (v13 == 1 && v38 == 1)
      {
        v32 = 0;
        v30 = v39;
        v31 = v40;
      }

      else
      {
        if (v13 == -1)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        v32 = v19;
      }

      v33 = v4;
      goto LABEL_41;
    }

    v29 = 0;
    if (v36 != 2)
    {
      if (!v36)
      {
        *__str = -1;
        v108 = -1;
        v109 = -16776961;
        v110 = 0;
        v111 = -1;
        v112 = 255;
        v113 = 0x200000003;
        v114 = -1;
        v115 = -1;
        v116 = 0xFFFF;
        v117 = -1;
        memset_s(__str, 0x2CuLL, 0, 0x2CuLL);
        v27 = 0;
        if (!rrl_process_measure_request(&v44, __str, &v27, &v29, &v39, 0))
        {
          if (v44 == 1)
          {
            SuplRrlpHandleAsstData(&v44, &v28, &v41);
          }

          __s = 0;
          memset_s(&__s, 8uLL, 0, 8uLL);
          if (v27 == 1)
          {
            gps_gnss_start_auto_mode(1, __str, __s, &v41);
            goto LABEL_42;
          }

          if (v27 == 2)
          {
            gps_gnss_start_based_mode(1, __str, __s, &v41);
            goto LABEL_42;
          }

          rrl_clean_measure_procedure();
          rrl_free_asn_pdu();
          v32 = 2;
          goto LABEL_58;
        }

        if (v29 == 1)
        {
LABEL_57:
          v32 = 0;
          v30 = v39;
          v31 = v40;
LABEL_58:
          v33 = v43;
LABEL_41:
          HandleRRLPResponse(&v30);
        }

LABEL_42:
        if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
        {
          return result;
        }

        bzero(__str, 0x410uLL);
        v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v23, "PSP", 68, "SuplRrlpExecutePosReq");
        goto LABEL_44;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        goto LABEL_42;
      }

      bzero(__str, 0x410uLL);
      v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx v_compType,%d\n", v25);
LABEL_25:
      LbsOsaTrace_WriteLog(0x13u, __str, v18, 0, 1);
      goto LABEL_42;
    }

    if (rrl_process_assistance_data_delivery(&v44, &v29, &v39))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Assisstance data\n", (*&g_MacClockTicksToMsRelation * v20), "PSP", 69, "SuplRrlpExecutePosReq", 770);
        v22 = 0;
LABEL_55:
        LbsOsaTrace_WriteLog(0x13u, __str, v21, v22, 1);
      }
    }

    else if (v44 == 1)
    {
      SuplRrlpHandleAsstData(&v44, &v28, &v41);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v24 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Assistance data not recieved\n", (*&g_MacClockTicksToMsRelation * v24), "PSP", 87, "SuplRrlpExecutePosReq", 770);
      v22 = 2;
      goto LABEL_55;
    }

    if (v29 == 1)
    {
      goto LABEL_57;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_42;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Assistance data\n");
    goto LABEL_25;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos protocol\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 87, "SuplRrlpExecutePosReq", 770);
    LbsOsaTrace_WriteLog(0x13u, __str, v8, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v10, "PSP", 68, "SuplRrlpExecutePosReq");
LABEL_44:
    LbsOsaTrace_WriteLog(0x13u, __str, v11, 5, 1);
  }

  return result;
}

double SuplRrlpHandleAsstData(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "PSP", 68, "SuplRrlpHandleAsstData");
    LbsOsaTrace_WriteLog(0x13u, __str, v7, 5, 1);
  }

  if (*(a1 + 8) == 1 && *(a1 + 9) == 1)
  {
    *a2 = 1;
    gps_set_gps_time(a1 + 16, 0, a3);
  }

  if (*(a1 + 504) != 1)
  {
    *a2 = 1;
    gps_set_gnss_ref_loc(a1 + 504, *(a1 + 616), 0, a3);
  }

  if (*(a1 + 8) == 1)
  {
    *a2 = 1;
    if (*(a1 + 304) == 1)
    {
      gps_set_based_aid((a1 + 312), 0, a3);
    }

    if (*(a1 + 224) == 1)
    {
      v8 = *(a1 + 288);
      if (v8)
      {
        MEMORY[0x29C29EAF0](v8, 0x1000C804359ADF2);
      }

      *(a1 + 288) = 0;
    }

    if (*(a1 + 336) == 1)
    {
      gps_set_almanac_aid(a1 + 344, 0, a3);
    }

    if (*(a1 + 368) == 1)
    {
      gps_set_gps_utc_model(a1 + 372, a3);
    }

    if (*(a1 + 388) == 1)
    {
      gps_set_gps_real_time_integrity(a1 + 392, a3);
    }
  }

  if (*(a1 + 617) == 1)
  {
    *a2 = 1;
    gps_set_gnss_iono_model(a1 + 618, *(a1 + 629), 0, a3);
  }

  rrl_clear_gnss_ad(a1, 0);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 68, "SuplRrlpHandleAsstData");
    LbsOsaTrace_WriteLog(0x13u, __str, v11, 5, 1);
  }

  return result;
}

char *SuplRrlpSessionEnd(void)
{
  StaticLpPrivate = GetStaticLpPrivate();
  memset_s(StaticLpPrivate + 1344, 0x1CuLL, 0, 0x1CuLL);

  return rrl_free_asn_pdu();
}

double SuplRrlpUpdateCap(unsigned __int8 *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "SuplRrlpUpdateCap");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  memset(v9, 0, sizeof(v9));
  if (*a1 == 1)
  {
    BYTE2(v9[0]) = 1;
    WORD2(v9[0]) = *(a1 + 1);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNSS ID,%u\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 69, "SuplRrlpUpdateCap", 770, *a1);
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 0, 1);
  }

  rrl_set_pos_caps(v9);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 68, "SuplRrlpUpdateCap");
    LbsOsaTrace_WriteLog(0x13u, __str, v8, 5, 1);
  }

  return result;
}

uint64_t RRLP_Bridge_init(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Initialization Fn\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 73, "RRLP_Bridge_init");
    LbsOsaTrace_WriteLog(0x13u, __str, v1, 4, 1);
  }

  return rrl_init();
}

double RRLP_Bridge_de_init(void)
{
  v4 = *MEMORY[0x29EDCA608];
  rrl_clean();
  rrl_destroy();
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: De-Initialization Fn\n", (*&g_MacClockTicksToMsRelation * v1), "PSP", 73, "RRLP_Bridge_de_init");
    LbsOsaTrace_WriteLog(0x13u, __str, v2, 4, 1);
  }

  return result;
}

double *NK_Set_Constell_Clock_Bias(double *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v8 = result;
  v9 = 0;
  v46 = *MEMORY[0x29EDCA608];
  v36 = 0.0;
  v37 = 0.0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = (a2 + 4832);
  v11 = a2;
  v41 = 0;
  do
  {
    if (*(v11 + 2960) == 1 && *(v11 + 49) == 1)
    {
      v12 = *(result + v9);
      v13 = 1.0 / v10[252];
      *(&v42 + v12) = *(&v42 + v12) + *v10 * v13;
      *(&v38 + v12) = v13 + *(&v38 + v12);
    }

    v9 += 4;
    ++v10;
    ++v11;
  }

  while (v9 != 192);
  v14 = *(&v42 + 1) + *(&v43 + 1) + *(&v44 + 1);
  v15 = *(&v38 + 1) + *(&v39 + 1) + *(&v40 + 1);
  if (v15 > 0.0)
  {
    v14 = fabs(v14) / v15;
  }

  v16 = *&v39;
  if (*&v39 > 0.0)
  {
    *&v43 = fabs(*&v43) / *&v39;
  }

  v17 = *&v40;
  if (*&v40 > 0.0)
  {
    *&v44 = fabs(*&v44) / *&v40;
  }

  v18 = *(a2 + 768);
  if (v18 == 1 && v14 > 0.0)
  {
    LOBYTE(v19) = *(a2 + 769);
    v20 = *(a2 + 736) * 299792458.0;
    v21 = 1;
    v22 = 0.0;
    if (v19)
    {
      v23 = 0;
      v24 = 0.0;
      LOBYTE(v25) = *(a2 + 768);
      goto LABEL_30;
    }

    v27 = 0;
    LOBYTE(v26) = 0;
    v23 = 0;
    LOBYTE(v25) = *(a2 + 768);
  }

  else
  {
    v19 = *(a2 + 769);
    if (v19 == 1 && *&v43 > 0.0)
    {
      LOBYTE(v26) = 0;
      v20 = *(a2 + 744) * 299792458.0;
      v27 = 1;
      v21 = 2;
      v23 = 1;
      LOBYTE(v25) = *(a2 + 769);
    }

    else
    {
      v25 = *(a2 + 770);
      if (v25 != 1 || *&v44 <= 0.0)
      {
        return result;
      }

      v20 = *(a2 + 752) * 299792458.0;
      v21 = 4;
      v23 = 2;
      v22 = 0.0;
      v26 = 1;
      if (v19)
      {
        v24 = 0.0;
LABEL_32:
        v28 = 0.0;
        if (*(a3 + 33548) >= 1 && *(a3 + 33556))
        {
          v29 = *(a2 + 24) + -14.0;
          if (v29 < 0.0)
          {
            v29 = v29 + 604800.0;
          }

          v30 = (*(a3 + 33556) * 0.1 + *(a3 + 33558) * 0.1 * v29) * 0.000000001;
          v28 = v30 * 299792458.0;
          if (v26)
          {
            v24 = v30 * 299792458.0;
          }
        }

        goto LABEL_38;
      }

      v27 = 0;
    }
  }

  v24 = 0.0;
  v22 = 0.0;
  if (*(a3 + 16296) == 1)
  {
    v22 = vcvtd_n_f64_s32(*(a3 + 16236), 0x1EuLL) * 299792458.0;
    if (v27)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0.0;
    }
  }

  if (v26)
  {
    v21 = 4;
    v26 = 1;
    goto LABEL_32;
  }

LABEL_30:
  v28 = 0.0;
  if ((*(a2 + 770) & 1) == 0)
  {
    v26 = 0;
    goto LABEL_32;
  }

LABEL_38:
  if (v15 > 0.0 && (v18 & 1) == 0)
  {
    LOWORD(v35) = 1;
    v36 = *(a2 + 736) * 299792458.0;
    v37 = 0.0;
    BYTE2(v35) = v18;
    LOBYTE(v32) = v21;
    BYTE1(v32) = v23;
    BYTE2(v32) = v25;
    v33 = v20;
    v34 = v24;
    result = NK_Adjust_Constell(&v32, &v35, result, a2, a4, a5);
    *(a2 + 736) = v36 * 0.00000000333564095;
    *(a2 + 768) = BYTE2(v35);
    LOBYTE(v19) = *(a2 + 769);
  }

  if (v16 > 0.0 && (v19 & 1) == 0)
  {
    LOWORD(v35) = 258;
    v36 = *(a2 + 744) * 299792458.0;
    v37 = v22;
    BYTE2(v35) = v19;
    LOBYTE(v32) = v21;
    BYTE1(v32) = v23;
    BYTE2(v32) = v25;
    v33 = v20;
    v34 = v24;
    result = NK_Adjust_Constell(&v32, &v35, v8, a2, v6, a5);
    *(a2 + 744) = v36 * 0.00000000333564095;
    *(a2 + 769) = BYTE2(v35);
  }

  if (v17 > 0.0)
  {
    v31 = *(a2 + 770);
    if ((v31 & 1) == 0)
    {
      LOWORD(v35) = 516;
      v36 = *(a2 + 752) * 299792458.0;
      v37 = v28;
      BYTE2(v35) = v31;
      LOBYTE(v32) = v21;
      BYTE1(v32) = v23;
      BYTE2(v32) = v25;
      v33 = v20;
      v34 = v24;
      result = NK_Adjust_Constell(&v32, &v35, v8, a2, v6, a5);
      *(a2 + 752) = v36 * 0.00000000333564095;
      *(a2 + 770) = BYTE2(v35);
    }
  }

  return result;
}

double *NK_Adjust_Constell(double *result, double *a2, unsigned __int8 *a3, uint64_t a4, char a5, uint64_t a6)
{
  v8 = a3;
  v9 = result;
  v10 = 0;
  v11 = 0;
  v42 = *MEMORY[0x29EDCA608];
  v12 = result[1] - result[2] + a2[2];
  v13 = v12 - a2[1];
  memset(v41, 0, sizeof(v41));
  v14 = a4 + 19584;
  v15 = a4 + 4832;
  v16 = a4 + 5216;
  v17 = a4 + 5600;
  v18 = *a2;
  v19 = a3;
  do
  {
    v21 = *v19;
    v19 += 4;
    v20 = v21;
    v23 = v18 == 4 && v20 == 4;
    v24 = v20 == 2 && v18 == 2;
    if ((v24 || v23 || v18 == 1 && v20 <= 5 && ((1 << v20) & 0x2A) != 0) && *(a4 + v10 + 2960) == 1)
    {
      *(v14 + 8 * v10) = v13 + *(v14 + 8 * v10);
      v25 = v13 + *(v15 + 8 * v10);
      *(v15 + 8 * v10) = v25;
      *(v16 + 8 * v10) = v25;
      *(v17 + 8 * v10) = v25;
      if (*(a4 + v10 + 49) == 1)
      {
        *(v41 + v11++) = v25;
      }
    }

    ++v10;
  }

  while (v10 != 48);
  if (!v11)
  {
    goto LABEL_47;
  }

  v40 = a2;
  result = VecSortAscR8(v41, 0, v11 - 1);
  v26 = v11 >> 1;
  if (v11)
  {
    v27 = *(v41 + v26);
  }

  else
  {
    v27 = (*(v41 + v26 - 1) + *(v41 + v26)) * 0.5;
  }

  a2 = v40;
  v40[1] = v12;
  if (fabs(v27) < 586.104512)
  {
    v28 = 0;
    v29 = a4 + 6848;
    do
    {
      v31 = *v8;
      v8 += 4;
      v30 = v31;
      v33 = v18 == 4 && v30 == 4;
      v34 = v30 == 2 && v18 == 2;
      if ((v34 || v33 || v18 == 1 && v30 <= 5 && ((1 << v30) & 0x2A) != 0) && *(a4 + v28 + 2960) == 1)
      {
        *(v14 + 8 * v28) = *(v14 + 8 * v28) - v27;
        v35 = *(v15 + 8 * v28) - v27;
        *(v15 + 8 * v28) = v35;
        *(v16 + 8 * v28) = v35;
        *(v17 + 8 * v28) = v35;
        if ((a5 & 1) == 0)
        {
          v36 = v35 * 0.5 * (v35 * 0.5);
          if (*(v29 + 8 * v28) > v36)
          {
            v36 = *(v29 + 8 * v28);
          }

          *(v29 + 8 * v28) = v36;
        }
      }

      ++v28;
    }

    while (v28 != 48);
    v12 = v40[1] - v27;
LABEL_47:
    a2[1] = v12;
  }

  v37 = *(v9 + 1);
  v38 = *(a2 + 1);
  *(a6 + 8 * ((v38 + 2 + (v38 + 2) * v38) >> 1) - 8) = fmax(*(a6 + 8 * ((v37 + 2 + (v37 + 2) * v37) >> 1) - 8), 62500.0);
  *(a6 + 8 * v38 + 48) = *(a6 + 8 * v37 + 48);
  return result;
}

uint64_t SmallBufInitBuf(uint64_t *a1)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 196) = 0;
  *(v2 + 720) = 0;
  *(*a1 + 728) = 0;
  *(*a1 + 736) = 0;
  v3 = *a1;
  *(v3 + 744) = 0;
  *(v3 + 1056) = xmmword_29975EEF0;
  *(v3 + 1112) = 0;
  v4 = *a1 + 756;
  *v4 = SmallInit;
  *(v4 + 16) = *algn_29975EF10;
  *(v4 + 32) = xmmword_29975EF20;
  v5 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x1000uLL);
  *v4 = v5;
  if (v5)
  {
    v6 = 0;
    *(v4 + 24) = v5;
    *(v4 + 32) = v5;
    *(v4 + 8) = v5 + 4096;
    *(v4 + 16) = v5;
  }

  else
  {
    v7 = *a1;
    v6 = 1;
    CUCFErrorHandler(v7, 1);
  }

  return v6;
}

uint64_t SmallBufCloseBuf(uint64_t *a1)
{
  v2 = *a1;
  if (*(v2 + 744))
  {
    v3 = 9;
    CUCFErrorHandler(v2, 9);
  }

  else
  {
    if (*(v2 + 799))
    {
      goto LABEL_7;
    }

    v4 = (v2 + 756);
    v5 = *(v2 + 756);
    if (v5)
    {
      free(v5);
    }

    *v4 = 0;
    v2 = *a1;
    if (*a1)
    {
LABEL_7:
      free(v2);
    }

    v3 = 0;
    *a1 = 0;
  }

  return v3;
}

uint64_t SmallBufInitBufWithMemory(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 196) = 0;
  *(v2 + 720) = 0;
  *(*a1 + 728) = 0;
  *(*a1 + 736) = 0;
  v3 = *a1;
  *(v3 + 744) = 0;
  *(v3 + 1056) = xmmword_29975EEF0;
  *(v3 + 1112) = 0;
  v4 = *a1;
  v5 = *a1 + 756;
  *(v5 + 32) = xmmword_29975EF20;
  *v5 = SmallInit;
  *(v5 + 16) = *algn_29975EF10;
  v6 = *a2;
  v7 = *a2 + a2[1];
  *v5 = *a2;
  *(v5 + 8) = v7;
  *(v5 + 32) = v6;
  v8 = v6 + a2[2];
  *(v5 + 16) = v6;
  *(v5 + 24) = v8;
  *(v4 + 799) = 1;
  return 0;
}

uint64_t SmallBufCloseBufToMemory(void **a1, unsigned __int8 **a2)
{
  if (!a2)
  {
    return 6;
  }

  v3 = *a1;
  if (v3[744])
  {
    v4 = 9;
    CUCFErrorHandler(v3, 9);
  }

  else
  {
    v5 = *(v3 + 756);
    v6 = (*(v3 + 764) - v5);
    *a2 = v5;
    a2[1] = v6;
    v7 = *(v3 + 772);
    v8 = v3[796];
    if (v8 <= v3[797])
    {
      v9 = (*(v3 + 780) - v7);
    }

    else
    {
      v9 = (*(v3 + 780) - v7 + 1);
    }

    a2[2] = v9;
    if (v8 == 7)
    {
      if (v5 != v7)
      {
        memcpy_s("posp_memcpy", 29, v5, v9, v7, v9);
      }
    }

    else
    {
      *v5 = *v7 << (7 - v8);
      v11 = *(v3 + 772);
      v10 = *(v3 + 780);
      if (v11 != v10)
      {
        v12 = v11 + 1;
        *(v3 + 772) = v12;
        if (v12 != v10)
        {
          do
          {
            *v5 |= *v12 >> (v3[796] + 1);
            *++v5 = **(v3 + 772) << (7 - v3[796]);
            v13 = *(v3 + 780);
            v12 = (*(v3 + 772) + 1);
            *(v3 + 772) = v12;
          }

          while (v12 != v13);
        }

        if (v3[797] != 7)
        {
          *v5 |= *v12 >> (v3[796] + 1);
          v14 = v3[796];
          if (v14 > v3[797])
          {
            v5[1] = **(v3 + 772) << (7 - v14);
          }
        }
      }
    }

    if (*a1)
    {
      free(*a1);
    }

    v4 = 0;
    *a1 = 0;
  }

  return v4;
}

unint64_t SmallBufGetLength(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return *(a1 + 1064);
      }

      v4 = *(a1 + 780) - *(a1 + 772);
      v5 = *(a1 + 796);
      v6 = *(a1 + 797);
      return v5 - v6 + 8 * v4;
    }

    v7 = *(a1 + 780) - *(a1 + 772);
    v8 = *(a1 + 796);
    v9 = *(a1 + 797);
  }

  else
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        if (a2 == 4)
        {
          v2 = *(a1 + 1064);
          if ((v2 & 7) != 0)
          {
            return (v2 >> 3) + 1;
          }

          else
          {
            return v2 >> 3;
          }
        }

        return *(a1 + 1064);
      }

      v4 = *(a1 + 788) - *(a1 + 772);
      v5 = *(a1 + 796);
      v6 = *(a1 + 798);
      return v5 - v6 + 8 * v4;
    }

    v7 = *(a1 + 788) - *(a1 + 772);
    v8 = *(a1 + 796);
    v9 = *(a1 + 798);
  }

  if (v8 <= v9)
  {
    return v7;
  }

  else
  {
    return v7 + 1;
  }
}

uint64_t SmallBufGetMemory(uint64_t a1, void *a2)
{
  v2 = a1 + 756;
  result = *(a1 + 756);
  *a2 = *(v2 + 8) - result;
  return result;
}

char *SmallBufAppendMemory(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 799))
  {
    CUCFErrorHandler(a1, 7);
    return 0;
  }

  else
  {
    v4 = (a1 + 756);
    v5 = *(a1 + 764) - *(a1 + 756) + a2;
    v3 = gnssOsa_Calloc("posp_alloc", 18, 1, v5);
    if (v3)
    {
      v6 = *(a1 + 764) - *v4;
      memcpy_s("posp_memcpy", 29, v3, v6, *v4, v6);
      v7 = *v4;
      v8 = &v3[*(a1 + 780) - *(a1 + 756)];
      *(a1 + 772) = &v3[*(a1 + 772) - *(a1 + 756)];
      *(a1 + 780) = v8;
      *(a1 + 788) = &v3[*(a1 + 788) - v7];
      if (v7)
      {
        free(v7);
      }

      *v4 = v3;
      *(a1 + 764) = &v3[v5];
    }

    else
    {
      CUCFErrorHandler(a1, 1);
    }
  }

  return v3;
}

uint64_t SmallBufSetDataCurr(uint64_t result, uint64_t a2, char a3)
{
  *(result + 788) += a2;
  *(result + 798) = a3;
  return result;
}

uint64_t SmallBufSetDataEnd(uint64_t result, uint64_t a2, char a3)
{
  *(result + 780) += a2;
  *(result + 797) = a3;
  return result;
}

uint64_t SmallBufCopyBuf(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    v10 = 5;
    v11 = a2;
    v12 = 5;
    goto LABEL_12;
  }

  if (*(a1 + 752) != *(a2 + 752))
  {
    v10 = 2;
    v11 = a2;
    v12 = 2;
    goto LABEL_12;
  }

  v4 = (a1 + 756);
  v5 = (a2 + 772);
  v6 = *(a2 + 772);
  v7 = *(a2 + 780) - v6;
  if (*(a2 + 797) == 7)
  {
    v8 = *(a2 + 780) - v6;
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = *v4;
  if (v8 <= *(a1 + 764) - *(a1 + 756))
  {
LABEL_18:
    v15 = &v9[*(a2 + 788) - v6];
    *(a1 + 780) = &v9[v7];
    *(a1 + 788) = v15;
    *(a1 + 772) = v9;
    memcpy_s("posp_memcpy", 29, v9, v8, *v5, v8);
    v10 = 0;
    *(a1 + 796) = *(a2 + 796);
    *(a1 + 797) = *(a2 + 797);
    return v10;
  }

  if (!*(a1 + 799))
  {
    v14 = gnssOsa_Calloc("posp_alloc", 18, 1, v8);
    if (!v14)
    {
      v10 = 1;
      v11 = a2;
      v12 = 1;
      goto LABEL_12;
    }

    v9 = v14;
    if (*v4)
    {
      free(*v4);
    }

    *v4 = v9;
    *(a1 + 764) = &v9[v8];
    v6 = *v5;
    v7 = *(a2 + 780) - *(a2 + 772);
    goto LABEL_18;
  }

  v10 = 7;
  v11 = a2;
  v12 = 7;
LABEL_12:
  CUCFErrorHandler(v11, v12);
  return v10;
}

uint64_t SmallBufInitWriteMode(uint64_t a1)
{
  if (*(a1 + 744))
  {
    v1 = 8;
    CUCFErrorHandler(a1, 8);
  }

  else
  {
    v1 = 0;
    v2 = *(a1 + 756);
    *(a1 + 772) = v2;
    *(a1 + 780) = v2;
    *(a1 + 788) = v2;
    *(a1 + 796) = 1799;
    *(a1 + 798) = 7;
    *a1 = 0;
    *(a1 + 744) = 2;
  }

  return v1;
}

uint64_t SmallBufCloseWriteMode(uint64_t a1)
{
  if (*(a1 + 744) == 2)
  {
    v1 = 0;
    *(a1 + 744) = 0;
  }

  else
  {
    v1 = 10;
    CUCFErrorHandler(a1, 10);
  }

  return v1;
}

uint64_t SmallBufInitReadMode(uint64_t a1)
{
  if (*(a1 + 744))
  {
    v1 = 8;
    CUCFErrorHandler(a1, 8);
  }

  else
  {
    v1 = 0;
    *(a1 + 788) = *(a1 + 772);
    *(a1 + 798) = *(a1 + 796);
    *a1 = 0;
    *(a1 + 744) = 1;
  }

  return v1;
}

uint64_t SmallBufCloseReadMode(uint64_t a1)
{
  if (*(a1 + 744) == 1)
  {
    v1 = 0;
    *(a1 + 744) = 0;
  }

  else
  {
    v1 = 10;
    CUCFErrorHandler(a1, 10);
  }

  return v1;
}

uint64_t SmallBufCloseDeleteReadMode(uint64_t a1)
{
  if (*(a1 + 744) == 1)
  {
    v1 = 0;
    *(a1 + 772) = *(a1 + 788);
    *(a1 + 796) = *(a1 + 798);
    *(a1 + 744) = 0;
  }

  else
  {
    v1 = 10;
    CUCFErrorHandler(a1, 10);
  }

  return v1;
}

uint64_t SmallBufGetByte(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 744) != 1)
  {
    v6 = 11;
    goto LABEL_7;
  }

  v2 = (a1 + 780);
  v3 = *(a1 + 788);
  v4 = *(a1 + 798);
  if (v4 - *(a1 + 797) + 8 * (*(a1 + 780) - v3) <= 7)
  {
    v5 = *(a1 + 728);
    if (!v5 || (v5(a1, 1), v3 = *(v1 + 788), v4 = *(v1 + 798), v4 - *(v1 + 797) + 8 * (*v2 - v3) <= 7))
    {
      a1 = v1;
      v6 = 12;
LABEL_7:
      CUCFErrorHandler(a1, v6);
      LOBYTE(v7) = 0;
      return v7;
    }
  }

  if (v4 == 7)
  {
    LOBYTE(v7) = *v3;
  }

  else
  {
    v7 = (v3[1] >> (v4 + 1)) | (*v3 << (7 - v4));
  }

  *(v1 + 788) = v3 + 1;
  return v7;
}

uint64_t SmallBufPeekByte(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 744) != 1)
  {
    v5 = 11;
    goto LABEL_7;
  }

  v2 = *(a1 + 788);
  v3 = *(a1 + 798);
  if (v3 - *(a1 + 797) + 8 * (*(a1 + 780) - v2) <= 7)
  {
    v4 = *(a1 + 728);
    if (!v4 || (v4(a1, 1), v2 = *(v1 + 788), v3 = *(v1 + 798), v3 - *(v1 + 797) + 8 * (*(v1 + 780) - v2) <= 7))
    {
      a1 = v1;
      v5 = 12;
LABEL_7:
      CUCFErrorHandler(a1, v5);
      LOBYTE(v2) = 0;
      return v2;
    }
  }

  if (v3 == 7)
  {
    LOBYTE(v2) = *v2;
  }

  else
  {
    LODWORD(v2) = (v2[1] >> (v3 + 1)) | (*v2 << (7 - v3));
  }

  return v2;
}

char *SmallBufPutByte(char *result, unsigned int a2)
{
  v2 = result;
  if (result[744])
  {
    v4 = result + 764;
    v5 = result[797];
    v6 = *(result + 780);
    if (v5 == 7)
    {
      if (v6 == *v4)
      {
        result = SmallBufAppendMemory(result, 4096);
        if (!result)
        {
          return result;
        }

        v6 = *(v2 + 780);
      }

      *v6 = a2;
    }

    else
    {
      if (v6 + 1 == *v4)
      {
        result = SmallBufAppendMemory(result, 4096);
        if (!result)
        {
          return result;
        }

        LOBYTE(v5) = v2[797];
        v6 = *(v2 + 780);
      }

      *v6 |= a2 >> (7 - v5);
      *(*(v2 + 780) + 1) = a2 << (v2[797] + 1);
    }

    ++*(v2 + 780);
  }

  else
  {

    return CUCFErrorHandler(result, 11);
  }

  return result;
}

uint64_t SmallBufGetSeg(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  if (*(a1 + 744) != 1)
  {
    v8 = 11;
    goto LABEL_13;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = (a1 + 780);
  if (*(a1 + 798) != 7)
  {
    CUCFErrorHandler(a1, 15);
  }

  result = *(v2 + 788);
  v6 = *v4 - result;
  if (a2 > v6)
  {
    v7 = *(v2 + 728);
    if (v7)
    {
      v7(v2, (a2 - v6));
      result = *(v2 + 788);
      v6 = *v4 - result;
    }

    if (*(v2 + 797) != 7)
    {
      ++v6;
    }

    if (v6 < a2)
    {
      a1 = v2;
      v8 = 12;
LABEL_13:
      CUCFErrorHandler(a1, v8);
      return 0;
    }
  }

  *(v2 + 788) = result + a2;
  return result;
}

uint64_t SmallBufSkipSeg(uint64_t result, int64_t a2)
{
  v2 = result;
  if (*(result + 744) == 1)
  {
    if (!a2)
    {
      return result;
    }

    v4 = (result + 780);
    if (*(result + 798) != 7)
    {
      result = CUCFErrorHandler(result, 15);
    }

    v5 = *(v2 + 788);
    v6 = *v4 - v5;
    if (a2 <= v6)
    {
      goto LABEL_16;
    }

    v7 = *(v2 + 728);
    if (v7)
    {
      result = v7(v2, (a2 - v6));
      v5 = *(v2 + 788);
      v6 = *v4 - v5;
    }

    if (*(v2 + 797) != 7)
    {
      ++v6;
    }

    if (v6 >= a2)
    {
LABEL_16:
      *(v2 + 788) = v5 + a2;
      return result;
    }

    result = v2;
    v8 = 12;
  }

  else
  {
    v8 = 11;
  }

  return CUCFErrorHandler(result, v8);
}

uint64_t SmallBufPeekSeg(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 744) != 1)
  {
    v8 = 11;
    goto LABEL_13;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = (a1 + 780);
  if (*(a1 + 798) != 7)
  {
    CUCFErrorHandler(a1, 15);
  }

  result = *(a1 + 788);
  v6 = *v4 - result;
  if (a2 > v6)
  {
    v7 = *(a1 + 728);
    if (v7)
    {
      v7(a1, (a2 - v6));
      result = *(a1 + 788);
      v6 = *v4 - result;
    }

    if (*(a1 + 797) != 7)
    {
      ++v6;
    }

    if (v6 < a2)
    {
      v8 = 12;
LABEL_13:
      CUCFErrorHandler(a1, v8);
      return 0;
    }
  }

  return result;
}

char *SmallBufPutSeg(char *result, unsigned __int8 *__src, size_t a3)
{
  v3 = result;
  if (result[744])
  {
    v4 = a3;
    if (!a3)
    {
      return result;
    }

    v6 = result + 764;
    v7 = *(result + 780);
    v8 = &v7[v4];
    if (result[797] == 7)
    {
      if (v8 > *v6)
      {
        result = SmallBufAppendMemory(result, 4096);
        if (!result)
        {
          return result;
        }

        v7 = *(v3 + 780);
      }

      result = memcpy_s("posp_memcpy", 29, v7, v4, __src, v4);
      *(v3 + 780) += v4;
    }

    else if ((v8 + 1) <= *v6 || (result = SmallBufAppendMemory(result, 4096)) != 0)
    {
      do
      {
        **(v3 + 780) |= *__src >> (7 - v3[797]);
        v9 = *(v3 + 780);
        *(v3 + 780) = v9 + 1;
        v10 = *__src++;
        *(v9 + 1) = v10 << (v3[797] + 1);
        --v4;
      }

      while (v4);
    }
  }

  else
  {

    return CUCFErrorHandler(result, 11);
  }

  return result;
}

char *SmallBufPutBit(char *result, int a2)
{
  v2 = result;
  if (result[744])
  {
    v3 = a2;
    v4 = result[797];
    if (v4 == 7)
    {
      v5 = *(result + 780);
      if (v5 == *(result + 764))
      {
        result = SmallBufAppendMemory(result, 4096);
        if (!result)
        {
          return result;
        }

        v5 = *(v2 + 780);
      }

      *v5 = v3 << 7;
      v6 = 6;
    }

    else
    {
      **(result + 780) |= a2 << v4;
      if (result[797])
      {
        v6 = result[797] - 1;
      }

      else
      {
        ++*(result + 780);
        v6 = 7;
      }
    }

    v2[797] = v6;
  }

  else
  {

    return CUCFErrorHandler(result, 11);
  }

  return result;
}

uint64_t SmallBufGetBit(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 744) != 1)
  {
    v8 = 11;
LABEL_9:
    CUCFErrorHandler(a1, v8);
    return 0;
  }

  v2 = (a1 + 780);
  v3 = *(a1 + 788);
  if (v3 == *(a1 + 780) && *(a1 + 798) == *(a1 + 797))
  {
    v4 = *(a1 + 728);
    if (!v4 || (v4(a1, 1), v3 = *(v1 + 788), v3 == *v2))
    {
      a1 = v1;
      v8 = 12;
      goto LABEL_9;
    }
  }

  v5 = *(v1 + 798);
  if (v5 == 7)
  {
    result = *v3 >> 7;
    v7 = 6;
  }

  else
  {
    result = (*v3 >> v5) & 1;
    if (*(v1 + 798))
    {
      v7 = v5 - 1;
    }

    else
    {
      *(v1 + 788) = v3 + 1;
      v7 = 7;
    }
  }

  *(v1 + 798) = v7;
  return result;
}

char *SmallBufPutBits(char *result, unint64_t a2, unsigned int a3)
{
  v3 = result;
  if (!result[744])
  {
    v5 = 11;
    goto LABEL_6;
  }

  v4 = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x21)
  {
    v5 = 13;
LABEL_6:

    return CUCFErrorHandler(result, v5);
  }

  v7 = result[797];
  v8 = a3 - v7 + 7;
  v9 = v8 & 7;
  v10 = v8 >> 3;
  v11 = *(result + 780) + v10;
  if ((v8 & 7) != 0)
  {
    ++v11;
  }

  if (v11 > *(result + 764))
  {
    result = SmallBufAppendMemory(result, 4096);
    if (!result)
    {
      return result;
    }

    v7 = v3[797];
  }

  if (v7 == 7)
  {
    **(v3 + 780) = 0;
  }

  if (v8 >= 8u)
  {
    v12 = (*(v3 + 780) + v10);
    *(v3 + 780) = v12;
    v3[797] = v9 ^ 7;
    if ((v8 & 7) != 0)
    {
      *v12 = a2 << (8 - v9);
      a2 >>= v9;
      v12 = *(v3 + 780);
    }

    v13 = v12 - 1;
    if (v8 >= 0x10u)
    {
      do
      {
        *v13-- = a2;
        LODWORD(v10) = v10 - 1;
        a2 >>= 8;
      }

      while (v10 > 1u);
    }

    *v13 |= a2;
  }

  else
  {
    **(v3 + 780) |= a2 << (v3[797] - v4 + 1);
    v3[797] -= v4;
  }

  return result;
}

unint64_t SmallBufGetBits(uint64_t a1, unsigned int a2)
{
  v2 = a1;
  if (*(a1 + 744) != 1)
  {
    v4 = 11;
    goto LABEL_6;
  }

  v3 = a2;
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x21)
  {
    v4 = 13;
LABEL_6:
    CUCFErrorHandler(a1, v4);
    return 0;
  }

  v6 = (a1 + 780);
  v7 = *(a1 + 788);
  v8 = *(a1 + 798);
  v9 = v8 - *(a1 + 797) + 8 * (*(a1 + 780) - v7);
  v10 = a2 - v9;
  if (a2 > v9)
  {
    v11 = *(a1 + 728);
    if (v11)
    {
      v12 = v10 >> 3;
      if ((v10 & 7) != 0)
      {
        v13 = (v12 + 1);
      }

      else
      {
        v13 = v12;
      }

      v11(a1, v13);
      v7 = *(v2 + 788);
      v9 = *(v2 + 798) - *(v2 + 797) + 8 * (*v6 - v7);
      LODWORD(v8) = *(v2 + 798);
    }

    if (v9 < v3)
    {
      a1 = v2;
      v4 = 12;
      goto LABEL_6;
    }
  }

  if (v8 == 7)
  {
    result = 0;
  }

  else
  {
    result = (SmallBufGetBits(sCoder *,unsigned char)::SmallBufBitMask[v8] & *v7);
    if (((~v8 + v3) & 0x80) != 0)
    {
      result >>= -(~v8 + v3);
      *(v2 + 798) = v8 - v3;
      return result;
    }

    *(v2 + 788) = ++v7;
    *(v2 + 798) = 7;
    LOBYTE(v3) = ~v8 + v3;
  }

  v14 = v3 & 7;
  if (v3 >= 8u)
  {
    v15 = v3 >> 3;
    do
    {
      v16 = *v7++;
      result = v16 | (result << 8);
      --v15;
      *(v2 + 788) = v7;
    }

    while (v15);
  }

  if ((v3 & 7) != 0)
  {
    *(v2 + 798) = v14 ^ 7;
    return (result << v14) | (*v7 >> (8 - v14));
  }

  return result;
}

uint64_t SmallBufAlign(uint64_t result)
{
  v1 = *(result + 744);
  if (v1 == 2)
  {
    if (*(result + 797) != 7)
    {
      ++*(result + 780);
      *(result + 797) = 7;
    }
  }

  else if (v1 == 1)
  {
    if (*(result + 798) != 7)
    {
      ++*(result + 788);
      *(result + 798) = 7;
    }
  }

  else
  {

    return CUCFErrorHandler(result, 11);
  }

  return result;
}

void Hal19_HandleBufferResp(unsigned __int8 *a1, unsigned int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx data\n");
    goto LABEL_7;
  }

  if (a2 <= 0xC)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len,%u\n", v4);
    goto LABEL_7;
  }

  if (a1[2] == 66 && a1[3] == 67)
  {
    g_ChipBuffersResp = a1[9];
    byte_2A1938EBB = a1[8];
    Hal08_SetGizar2AvaialbleBuffers(g_ChipBuffersResp);
    if (!gnssOsa_SemRelease(g_HandleAckSem))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        __error();
        v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v3);
LABEL_7:
        LbsOsaTrace_WriteLog(0xDu, __str, v2, 0, 1);
      }
    }
  }
}

uint64_t Hal19_GetChiBuffers(void)
{
  v22 = *MEMORY[0x29EDCA608];
  v17[0] = 0;
  qmemcpy(v15, "Bc ", sizeof(v15));
  v19 = 3;
  v20 = 0;
  plc00_10EncodeHdrPlCs(v15, v18, 12, 1u, 1, v17);
  v0 = v17[0];
  if (v17[0])
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Hdrerr,%u\n", (*&g_MacClockTicksToMsRelation * v1), "HAL", 69, "Hal19_GetChiBuffers", 775, v0);
      LbsOsaTrace_WriteLog(0xDu, __str, v2, 0, 1);
    }

    return 0xFFFFFFFFLL;
  }

  v21 = 167772160;
  g_HalState = 12;
  if (Hal22_ZxSendToChip(v18, 0xCuLL) <= 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "HAL", 69, "Hal19_GetChiBuffers", 1282);
      LbsOsaTrace_WriteLog(0xDu, __str, v9, 0, 1);
    }

    return 4294967289;
  }

  else
  {
    v4 = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0x1388u);
    if (v4 == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "HAL", 69, "Hal19_GetChiBuffers", 1543);
        LbsOsaTrace_WriteLog(0xDu, __str, v11, 0, 1);
      }

      return 4294967287;
    }

    else
    {
      if (v4)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
        if (!result)
        {
          return result;
        }

        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "HAL", 69, "Hal19_GetChiBuffers", 1541);
        v7 = 0;
LABEL_20:
        LbsOsaTrace_WriteLog(0xDu, __str, v6, v7, 1);
        return 0;
      }

      if (byte_2A1938EBB == 32)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0);
        if (!result)
        {
          return result;
        }

        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Buffer,%u\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 73, "Hal19_GetChiBuffers", g_ChipBuffersResp);
        v7 = 4;
        goto LABEL_20;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx err,%d\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 69, "Hal19_GetChiBuffers", 770, byte_2A1938EBB);
        LbsOsaTrace_WriteLog(0xDu, __str, v14, 0, 1);
      }

      return 4294967288;
    }
  }
}

void Hal19_HandlePatchResp(unsigned __int8 *a1, unsigned int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx data\n");
    goto LABEL_15;
  }

  if (a2 <= 0xB)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len,%u\n", v9);
    goto LABEL_15;
  }

  if (a1[2] != 66)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MsgC,%c \n", v11);
    goto LABEL_15;
  }

  v4 = a1[3];
  v5 = v4 - 70;
  if ((v4 - 70) > 0x2A)
  {
LABEL_11:
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx default - MsgID,%c \n", v10);
    goto LABEL_15;
  }

  if (((1 << v5) & 0x601) == 0)
  {
    if (((1 << v5) & 0x60100000000) != 0)
    {
      return;
    }

    goto LABEL_11;
  }

  v6 = a1[4];
  if (v6 == 80 || v6 == 77)
  {
    v7 = a1[8];
    v8 = *(a1 + 5);

    Hal08_HandleSingleAck(v6, v4, v8, v7);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MSGX-ID,%c\n", v12);
LABEL_15:
    LbsOsaTrace_WriteLog(0xDu, __str, v2, 0, 1);
  }
}

uint64_t asn1PD_NotificationMode(uint64_t a1, unsigned __int8 *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  v11 = 0;
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
  }

  else
  {
    if (BitFromBuffer)
    {
      v8 = Asn1Coder::DecodeEnumerationExtension(a1, &v11);
      if (v8)
      {
        v5 = v8;
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        goto LABEL_3;
      }

      v10 = v11;
    }

    else
    {
      v8 = Asn1Coder::DecodeInteger(a1, 0, 1u, &v11);
      if (v8)
      {
        v5 = v8;
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        goto LABEL_3;
      }

      v10 = v11 + 1;
    }

    if (v10 <= 1u)
    {
      v5 = 0;
      *a2 = v10;
      return v5;
    }

    v5 = 4;
    *(a1 + 16) = 4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = 4;
  }

LABEL_3:
  SuplAsn1Logger::TraceError(v8, v6, v7);
  return v5;
}

uint64_t asn1PD_HistoricReporting(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_18:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    return v5;
  }

  v9 = BitFromBuffer;
  *(a2 + 24) = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_18;
  }

  v10 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  v17 = 0;
  if (v5)
  {
LABEL_17:
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
    goto LABEL_18;
  }

  if (v10)
  {
    v11 = Asn1Coder::DecodeEnumerationExtension(a1, &v17);
    if (v11)
    {
      v5 = v11;
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
LABEL_16:
      SuplAsn1Logger::TraceError(v11, v12, v13);
      goto LABEL_17;
    }
  }

  else
  {
    v11 = Asn1Coder::DecodeInteger(a1, 0, 2u, &v17);
    if (v11)
    {
      v5 = v11;
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      goto LABEL_16;
    }
  }

  if (v17 >= 3u)
  {
    v5 = 4;
    *(a1 + 16) = 4;
    v12 = *(a1 + 8);
    v13 = *(a1 + 12);
    LODWORD(v11) = 4;
    goto LABEL_16;
  }

  *a2 = v17;
  if (*(a2 + 24))
  {
    v14 = Asn1Coder::GetBitFromBuffer(a1);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_16;
    }

    v16 = v14;
    *(a2 + 20) = Asn1Coder::GetBitFromBuffer(a1);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_16;
    }

    *(a2 + 21) = Asn1Coder::GetBitFromBuffer(a1);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_16;
    }

    *(a2 + 22) = Asn1Coder::GetBitFromBuffer(a1);
    v5 = *(a1 + 16);
    if (*(a1 + 16) || *(a2 + 20) && (v5 = asn1PD_TimeWindow(a1, (a2 + 4)), v5))
    {
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      LODWORD(v11) = v5;
      goto LABEL_16;
    }

    if (*(a2 + 21))
    {
      v11 = Asn1Coder::DecodeInteger(a1, 1, 0x10000u, (a2 + 12));
      if (v11)
      {
        v5 = v11;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        goto LABEL_16;
      }
    }

    if (*(a2 + 22))
    {
      v11 = Asn1Coder::DecodeInteger(a1, 0, 0x15180u, (a2 + 16));
      if (v11)
      {
        v5 = v11;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        goto LABEL_16;
      }
    }

    if (v16)
    {
      v11 = Asn1Coder::SkipSequenceExtension(a1);
      if (v11)
      {
        v5 = v11;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        goto LABEL_16;
      }
    }
  }

  if (!v9)
  {
    return 0;
  }

  v8 = Asn1Coder::SkipSequenceExtension(a1);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_18;
  }

  return v5;
}

uint64_t asn1PD_TimeWindow(uint64_t a1, _DWORD *a2)
{
  v4 = Asn1Coder::DecodeInteger(a1, -525600, -1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    return v5;
  }

  v4 = Asn1Coder::DecodeInteger(a1, -525599, 0, a2 + 1);
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  return v5;
}

uint64_t asn1PD_ProtectionLevel(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_18:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    return v5;
  }

  v9 = BitFromBuffer;
  *(a2 + 64) = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_18;
  }

  v10 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  v17 = 0;
  if (v5)
  {
LABEL_17:
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
    goto LABEL_18;
  }

  if (v10)
  {
    v11 = Asn1Coder::DecodeEnumerationExtension(a1, &v17);
    if (v11)
    {
      v5 = v11;
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
LABEL_16:
      SuplAsn1Logger::TraceError(v11, v12, v13);
      goto LABEL_17;
    }
  }

  else
  {
    v11 = Asn1Coder::DecodeInteger(a1, 0, 1u, &v17);
    if (v11)
    {
      v5 = v11;
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      goto LABEL_16;
    }
  }

  if (v17 >= 2u)
  {
    v5 = 4;
    *(a1 + 16) = 4;
    v12 = *(a1 + 8);
    v13 = *(a1 + 12);
    LODWORD(v11) = 4;
    goto LABEL_16;
  }

  *a2 = v17;
  if (*(a2 + 64))
  {
    v14 = Asn1Coder::GetBitFromBuffer(a1);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_16;
    }

    v16 = v14;
    Asn1Coder::GetBitStringFromBuffer(a1, 0x40u, (a2 + 8), 0);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      goto LABEL_21;
    }

    v11 = Asn1Coder::DecodeInteger(a1, 0, 0xFFFFu, (a2 + 32));
    if (v11)
    {
      v5 = v11;
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      goto LABEL_16;
    }

    Asn1Coder::GetBitStringFromBuffer(a1, 0x20u, (a2 + 40), 0);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
LABEL_21:
      SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      LODWORD(v11) = v5;
      goto LABEL_16;
    }

    if (v16)
    {
      v11 = Asn1Coder::SkipSequenceExtension(a1);
      if (v11)
      {
        v5 = v11;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        goto LABEL_16;
      }
    }
  }

  if (!v9)
  {
    return 0;
  }

  v8 = Asn1Coder::SkipSequenceExtension(a1);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_18;
  }

  return v5;
}

uint64_t asn1PD_SUPLINIT_VER2(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v14[0] = 0;
  v15 = 0;
  v4 = Asn1Coder::DecodeSequenceExtension(a1, v14);
  v12 = 0;
  v13 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    Asn1Coder::DecodeOpenTypeFieldStart(a1, &v12);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
    }

    else
    {
      BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
      v5 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        LODWORD(v4) = *(a1 + 16);
      }

      else
      {
        v9 = BitFromBuffer;
        *(a2 + 240) = Asn1Coder::GetBitFromBuffer(a1);
        v5 = *(a1 + 16);
        if (*(a1 + 16))
        {
          v6 = *(a1 + 8);
          v7 = *(a1 + 12);
          LODWORD(v4) = *(a1 + 16);
        }

        else
        {
          *(a2 + 241) = Asn1Coder::GetBitFromBuffer(a1);
          v5 = *(a1 + 16);
          if (*(a1 + 16))
          {
            v6 = *(a1 + 8);
            v7 = *(a1 + 12);
            LODWORD(v4) = *(a1 + 16);
          }

          else
          {
            *(a2 + 242) = Asn1Coder::GetBitFromBuffer(a1);
            v5 = *(a1 + 16);
            if (*(a1 + 16))
            {
              v6 = *(a1 + 8);
              v7 = *(a1 + 12);
              LODWORD(v4) = *(a1 + 16);
            }

            else
            {
              *(a2 + 243) = Asn1Coder::GetBitFromBuffer(a1);
              v5 = *(a1 + 16);
              if (*(a1 + 16))
              {
                v6 = *(a1 + 8);
                v7 = *(a1 + 12);
                LODWORD(v4) = *(a1 + 16);
              }

              else
              {
                *(a2 + 244) = Asn1Coder::GetBitFromBuffer(a1);
                v5 = *(a1 + 16);
                if (*(a1 + 16))
                {
                  v6 = *(a1 + 8);
                  v7 = *(a1 + 12);
                  LODWORD(v4) = *(a1 + 16);
                }

                else
                {
                  *(a2 + 245) = Asn1Coder::GetBitFromBuffer(a1);
                  v5 = *(a1 + 16);
                  if (*(a1 + 16))
                  {
                    v6 = *(a1 + 8);
                    v7 = *(a1 + 12);
                    LODWORD(v4) = *(a1 + 16);
                  }

                  else
                  {
                    *(a2 + 246) = Asn1Coder::GetBitFromBuffer(a1);
                    v5 = *(a1 + 16);
                    if (*(a1 + 16))
                    {
                      v6 = *(a1 + 8);
                      v7 = *(a1 + 12);
                      LODWORD(v4) = *(a1 + 16);
                    }

                    else
                    {
                      *(a2 + 247) = Asn1Coder::GetBitFromBuffer(a1);
                      v5 = *(a1 + 16);
                      if (*(a1 + 16) || *(a2 + 240) && (v5 = asn1PD_NotificationMode(a1, (a2 + 248)), v5))
                      {
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                        LODWORD(v4) = v5;
                      }

                      else if (*(a2 + 241) && (v4 = asn1PD_SupportedNetworkInformation(a1, (a2 + 256)), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (*(a2 + 242) && (v4 = asn1PD_TriggerType(a1, (a2 + 352)), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (*(a2 + 243) && (v4 = asn1PD_SLPAddress(a1, a2 + 360), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (*(a2 + 244) && (v4 = asn1PD_HistoricReporting(a1, a2 + 448), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (*(a2 + 245) && (v4 = asn1PD_ProtectionLevel(a1, a2 + 480), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (*(a2 + 246) && (v4 = asn1PD_GNSSPosTechnology(a1, (a2 + 552)), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (*(a2 + 247) && (v4 = Asn1Coder::DecodeInteger(a1, 0, 255, (a2 + 560)), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (v9)
                      {
                        v5 = 1;
                        *(a1 + 16) = 1;
                        SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                        LODWORD(v4) = 1;
                      }

                      else
                      {
                        v11 = v12.i32[0];
                        *(a1 + 8) = v13 + v12.i32[1];
                        *(a1 + 12) = v11;
                        v4 = Asn1Coder::SkipSequenceExtensionAddition(a1, v14, 1u);
                        v5 = v4;
                        if (!v4)
                        {
                          return v5;
                        }

                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
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

  SuplAsn1Logger::TraceError(v4, v6, v7);
  return v5;
}

uint64_t NK_Check_State(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 11032);
  if (v3 >= 0x258)
  {
    v4 = 0;
    while (*(a3 + 2960 + v4) != 1 || *(result + v4) < 0x21u)
    {
      if (++v4 == 48)
      {
        return result;
      }
    }

    *(a3 + 960) = 0;
    *(a2 + 233) = 1;
    *(a3 + 964) = 0;
    *(a2 + 235) = 0;
    if (*(a3 + 12) >= 10)
    {
      *(a3 + 12) = 9;
    }

    if (v3 >= 0x384)
    {
      *(a2 + 11048) = 0;
    }
  }

  return result;
}

double Trop_Elev_MapF(uint64_t a1)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = 0.0;
  v2 = R8_EQ((a1 + 16), v4);
  result = 1.0;
  if (!v2)
  {
    return 1.0 / (*(a1 + 8) + 0.00143 / (*(a1 + 8) / *(a1 + 16) + 0.0445));
  }

  return result;
}

void Trop_Niell_MappingFunc::Get_Dry_MappingFunc_OF(Trop_Niell_MappingFunc *this, double a2, double a3, double a4, int a5)
{
  Trop_Niell_MappingFunc::Set_MappingFunc_Params(this, a4, a5);
  if (*(this + 66) == 1 && a3 >= -500.0 && a3 <= 18000.0)
  {
    sin(a2 * 0.0174532925);
  }
}

void Trop_Niell_MappingFunc::Set_MappingFunc_Params(uint64_t this, double a2, int a3)
{
  v4 = a3 - 1;
  if ((a3 - 1) > 0x16D)
  {
    v5 = 0;
    *(this + 65) = 0;
  }

  else if (*(this + 8) == a3 && (*(this + 65) & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1;
    *(this + 65) = 1;
    *(this + 8) = a3;
  }

  if (fabs(a2) > 90.0)
  {
    v6 = 0;
    *(this + 64) = 0;
LABEL_18:
    *(this + 66) = v6;
    return;
  }

  if (vabdd_f64(*this, a2) > 0.5 || (*(this + 64) & 1) == 0)
  {
    *(this + 64) = 1;
    *this = a2;
    if (v4 >= 0x16E)
    {
      return;
    }

    goto LABEL_17;
  }

  v7 = v4 > 0x16D;
  v8 = v5 ^ 1;
  if (v7)
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
LABEL_17:
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_a_Dry_Avg, NMF_a_Dry_Amp);
    *(this + 40) = v9;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_b_Dry_Avg, NMF_b_Dry_Amp);
    *(this + 48) = v10;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_c_Dry_Avg, NMF_c_Dry_Amp);
    *(this + 56) = v11;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_a_Wet_Avg, 0);
    *(this + 16) = v12;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_b_Wet_Avg, 0);
    *(this + 24) = v13;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_c_Wet_Avg, 0);
    *(this + 32) = v14;
    v6 = 1;
    goto LABEL_18;
  }
}

void Trop_Niell_MappingFunc::Get_Wet_MappingFunc_OF(Trop_Niell_MappingFunc *this, double a2, double a3, int a4)
{
  Trop_Niell_MappingFunc::Set_MappingFunc_Params(this, a3, a4);
  if (*(this + 66) == 1)
  {
    fmax(sin(a2 * 0.0174532925), 0.001);
  }
}

void Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(Trop_Niell_MappingFunc *this, const double *a2, const double *a3)
{
  if (a2)
  {
    v3 = *(this + 2);
    if (*this < 0.0)
    {
      v3 = v3 + 182.625;
    }

    cos((v3 + -28.0) * 0.0172024238);
  }
}

uint64_t SuplUtils::GetInstance(SuplUtils *this)
{
  v5 = *MEMORY[0x29EDCA608];
  if (SuplUtils::GetInstance(void)::pred_suplUtils != -1)
  {
    dispatch_once(&SuplUtils::GetInstance(void)::pred_suplUtils, &__block_literal_global_7);
  }

  result = SuplUtils::m_supl_utils;
  if (!SuplUtils::m_supl_utils)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "GetInstance", "GetInstance");
      LbsOsaTrace_WriteLog(0xEu, __str, v3, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("GetInstance", "SuplUtils.cpp", 63, "false && Memory allocation failure");
  }

  return result;
}

char *___ZN9SuplUtils11GetInstanceEv_block_invoke()
{
  result = operator new(0x118uLL, MEMORY[0x29EDC9418]);
  if (result)
  {
    *(result + 15) = 0u;
    *(result + 16) = 0u;
    *(result + 13) = 0u;
    *(result + 14) = 0u;
    *(result + 11) = 0u;
    *(result + 12) = 0u;
    *(result + 9) = 0u;
    *(result + 10) = 0u;
    *(result + 7) = 0u;
    *(result + 8) = 0u;
    *(result + 5) = 0u;
    *(result + 6) = 0u;
    *(result + 3) = 0u;
    *(result + 4) = 0u;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *result = 0u;
    result[36] = 1;
    *(result + 20) = -254;
    *(result + 30) = 0;
    *(result + 38) = 0;
    *(result + 46) = 0;
    result[105] = 0;
    *(result + 60) = 0;
    *(result + 68) = 0;
    *(result + 76) = 0;
    *(result + 82) = 0;
    *(result + 90) = 0;
    *(result + 46) = 0;
    *(result + 187) = 0;
    *(result + 102) = 0;
    *(result + 110) = 0;
    *(result + 30) = 0;
    *(result + 31) = 0;
    *(result + 29) = 0;
    *(result + 255) = 0;
    result[276] = 0;
    *(result + 268) = 0;
    *(result + 277) = 1;
    result[279] = 1;
  }

  SuplUtils::m_supl_utils = result;
  return result;
}

uint64_t SuplUtils::SetSETInfo(SimUtils *a1, int a2, uint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v16 = -1;
  v18 = 0;
  v19 = 0;
  __p = 0;
  if (*a3 != 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
LABEL_6:
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "SetSETInfo", 514);
      LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
    }

    return -4;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 8);
  if ((v5 - v6) >= 9)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      goto LABEL_6;
    }

    return -4;
  }

  if (&v16 == a3)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    a1 = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v6, v5, v5 - v6);
    v10 = __p;
    v11 = v18;
  }

  __str[0] = -1;
  v12 = v11 - v10;
  if ((v11 - v10) > 7)
  {
    if (v12 != 8)
    {
      v18 = v10 + 8;
LABEL_17:
      v13 = 0;
      do
      {
        v10[v13] = (v10[v13] >> 4) | (16 * v10[v13]);
        ++v13;
        v10 = __p;
      }

      while (v13 < v18 - __p);
      goto LABEL_19;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(&__p, 8 - v12, __str);
    v10 = __p;
    v11 = v18;
  }

  if (v11 != v10)
  {
    goto LABEL_17;
  }

LABEL_19:
  v16 = *a3;
  Instance = SimUtils::GetInstance(a1);
  SimUtils::SetSETInfo(Instance, a2, &v16);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_299640E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SuplUtils::FillSetId(SimUtils *a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x29EDCA608];
  LOWORD(v10) = -1;
  v12 = 0;
  v13 = 0;
  __p = 0;
  Instance = SimUtils::GetInstance(a1);
  SimUtils::GetSETInfo(Instance, a3, &v10);
  if (v10 == 1)
  {
    *a2 = 4;
    if ((a2 + 80) != &__p)
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a2 + 80), __p, v12, v12 - __p);
    }

    __str[0] = -1;
    v6 = *(a2 + 80);
    v7 = *(a2 + 88) - v6;
    if (v7 > 7)
    {
      if (v7 != 8)
      {
        *(a2 + 88) = v6 + 8;
      }
    }

    else
    {
      std::vector<unsigned char>::__append((a2 + 80), 8 - v7, __str);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "FillSetId", 514);
    LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_299641010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SuplUtils::FillLocationId(SimUtils *a1, uint64_t a2, int a3)
{
  result = SimUtils::GetInstance(a1);
  v6 = *(result + 16);
  if (v6)
  {
    while (*v6 != a3)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        return result;
      }
    }

    return ASN1T_LocationId::operator=(a2, (v6 + 56));
  }

  return result;
}

uint64_t SuplUtils::ProcessSuplMtlrMessage(SuplUtils *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v34 = *MEMORY[0x29EDCA608];
  v8 = operator new(0x200uLL, MEMORY[0x29EDC9418]);
  if (v8)
  {
    v9 = v8;
    SuplInitRecd::SuplInitRecd(v8);
    v10 = SuplInitRecd::ProcessSuplInit(v9, a2, a3);
    if (v10)
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "SPL", 69, "ProcessSuplMtlrMessage", 770);
        IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v13, 0, 1);
      }

      Instance = LcsSuplGlueLayer::GetInstance(IsLoggingAllowed);
      v15 = SuplUtils::ConvertPosMethod(Instance, *(*(v9 + 40) + 5));
      LcsSuplGlueLayer::SendSuplMsgStatus(Instance, a4, 2, v15, 0, 0);
      SuplInitRecd::~SuplInitRecd(v9);
      MEMORY[0x29C29EB20]();
      return -1;
    }

    else
    {
      v19 = *(v9 + 8);
      if (v19)
      {
        v20 = *v19;
        if (v20)
        {
          if (*(*(v20 + 16) + 73))
          {
            v21 = SuplProvider::GetInstance(v10);
            SuplProvider::AbortAllSessionsOnPriority(v21);
          }
        }
      }

      *v9 = a4;
      *(v9 + 4) = a2;
      *(v9 + 16) = 1;
      if (SuplUtils::StoreSuplInitRecd(a1, a4, v9))
      {
        started = SuplInitRecd::StartSessionTimer(v9);
        v23 = LcsSuplGlueLayer::GetInstance(started);
        v24 = SuplUtils::ConvertPosMethod(v23, *(*(v9 + 40) + 5));
        v25 = LcsSuplGlueLayer::SendSuplMsgStatus(v23, a4, 1, v24, 0, 0);
        IsLocIdValid = *(SimUtils::GetInstance(v25) + 16);
        if (!IsLocIdValid)
        {
          goto LABEL_23;
        }

        while (*IsLocIdValid != a2)
        {
          IsLocIdValid = *(IsLocIdValid + 1);
          if (!IsLocIdValid)
          {
            goto LABEL_23;
          }
        }

        IsLocIdValid = SimInformation::IsLocIdValid(IsLocIdValid);
        if (IsLocIdValid)
        {
          SuplUtils::ProcessWaitingSuplInits(a1);
        }

        else
        {
LABEL_23:
          LcsSuplGlueLayer::GetInstance(IsLocIdValid);
          GN_SUPL_LocIdReq_Out(4095, a2);
        }

        return 0;
      }

      else
      {
        v27 = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
        if (v27)
        {
          bzero(__str, 0x410uLL);
          v28 = mach_continuous_time();
          v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v28), "SPL", 69, "ProcessSuplMtlrMessage", 1537);
          v27 = LbsOsaTrace_WriteLog(0x12u, __str, v29, 0, 1);
        }

        v30 = LcsSuplGlueLayer::GetInstance(v27);
        v31 = SuplUtils::ConvertPosMethod(v30, *(*(v9 + 40) + 5));
        LcsSuplGlueLayer::SendSuplMsgStatus(v30, a4, 2, v31, 0, 0);
        SuplInitRecd::~SuplInitRecd(v9);
        MEMORY[0x29C29EB20]();
        return -2;
      }
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "SPL", 69, "ProcessSuplMtlrMessage", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v18, 0, 1);
    }

    return -3;
  }
}

uint64_t SuplUtils::ConvertPosMethod(uint64_t a1, unsigned int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x11)
  {
    v2 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Position Method\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 69, "ConvertPosMethod", 770);
      LbsOsaTrace_WriteLog(0x12u, __str, v4, 0, 1);
      v2 = 0;
    }
  }

  else
  {
    v2 = dword_29975F118[a2];
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Position Method,%u\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 73, "ConvertPosMethod", v2);
    LbsOsaTrace_WriteLog(0x12u, __str, v6, 4, 1);
  }

  return v2;
}

uint64_t SuplUtils::StoreSuplInitRecd(uint64_t a1, int a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = operator new(0x18uLL, MEMORY[0x29EDC9418]);
  if (v6)
  {
    v6[1] = 0;
    v6[2] = a3;
    *v6 = a2;
    v7 = *(a1 + 16);
    while (v7)
    {
      v8 = v7;
      v7 = *(v7 + 8);
      if (!v7)
      {
        *(v8 + 8) = v6;
        v6[1] = 0;
        return 1;
      }
    }

    v6[1] = *(a1 + 16);
    *(a1 + 16) = v6;
    return 1;
  }

  else
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 69, "StoreSuplInitRecd", 1537);
      LbsOsaTrace_WriteLog(0x12u, __str, v12, 0, 1);
      return 0;
    }
  }

  return result;
}

uint64_t SuplInitRecd::StartSessionTimer(SuplInitRecd *this)
{
  Instance = LcsUtils::GetInstance(this);
  v3 = *this;
  v4 = SuplUtils::GetInstance(Instance);
  if (*(v4 + 38))
  {
    v5 = 1000 * *(v4 + 38);
  }

  else
  {
    v5 = 260000;
  }

  LcsTimer::Init(this + 124, v3 + 0xFFFF, 0, v5, 1);

  return LcsTimer::Start((this + 496));
}

SuplProvider *SuplUtils::ProcessWaitingSuplInits(SuplProvider *this)
{
  v12 = *MEMORY[0x29EDCA608];
  for (i = *(this + 2); i; i = *(i + 8))
  {
    v2 = *(i + 16);
    if (v2)
    {
      if (*(v2 + 16) == 1)
      {
        *(v2 + 16) = 0;
        v3 = *(*(v2 + 40) + 5);
        this = SuplProvider::GetInstance(this);
        if (this)
        {
          BYTE4(v10) = -1;
          v11 = 0;
          LOBYTE(v10) = 3;
          v4 = *(i + 16);
          v5 = *(v4 + 1);
          if (v5)
          {
            v6 = *v5;
            if (v6)
            {
              if (*(*(v6 + 16) + 73))
              {
                LOBYTE(v10) = 2;
              }
            }
          }

          SuplProvider::InitSessionNode(this, v4[1], *v4, &v10, 0);
          RequestedGNSSList = *(*(i + 16) + 8);
          if (RequestedGNSSList)
          {
            RequestedGNSSList = SuplInitRecdVer2::GetRequestedGNSSList(RequestedGNSSList);
            v8 = RequestedGNSSList;
          }

          else
          {
            v8 = 0;
          }

          Instance = LcsSuplGlueLayer::GetInstance(RequestedGNSSList);
          this = (*(*Instance + 16))(Instance, **(i + 16), v3, v8);
        }
      }
    }
  }

  return this;
}

uint64_t SuplUtils::DeleteSuplInitRecd(uint64_t this, int a2)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = *(this + 16);
    do
    {
      if (*v3 == a2)
      {
        while (*v2 != a2)
        {
          v2 = *(v2 + 8);
          if (!v2)
          {
            goto LABEL_9;
          }
        }

        LcsLinkedList::Remove(this, v2);
LABEL_9:
        v4 = *(v3 + 16);
        if (v4)
        {
          SuplInitRecd::~SuplInitRecd(v4);
          MEMORY[0x29C29EB20]();
        }

        *(v3 + 8) = 0;
        *(v3 + 16) = 0;

        JUMPOUT(0x29C29EB20);
      }

      v3 = *(v3 + 8);
    }

    while (v3);
  }

  return this;
}

uint64_t SuplUtils::ValidateSlpId(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  if (v5 == *a2)
  {
    v6 = 1;
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "ValidateSlpId", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
    }

    v6 = 0;
    v5 = *a2;
  }

  if (v5 == 255)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return v6;
    }

    bzero(__str, 0x410uLL);
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v15 = 515;
    goto LABEL_17;
  }

  if (v5 == 2)
  {
    v10 = a3[8];
    v11 = a3[9] - v10;
    v12 = *(a2 + 8);
    v13 = *(a2 + 9);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
    goto LABEL_12;
  }

  v9 = a2[8];
  if (v9 == 2)
  {
    v10 = a3[5];
    v11 = a3[6] - v10;
    v12 = *(a2 + 5);
    v13 = *(a2 + 6);
    goto LABEL_19;
  }

  if (v9 != 1)
  {
LABEL_12:
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return v6;
    }

    bzero(__str, 0x410uLL);
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v15 = 514;
LABEL_17:
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v14, "SPL", 69, "ValidateSlpId", v15);
    LbsOsaTrace_WriteLog(0x12u, __str, v16, 0, 1);
    return v6;
  }

  v10 = a3[2];
  v11 = a3[3] - v10;
  v12 = *(a2 + 2);
  v13 = *(a2 + 3);
LABEL_19:
  if (v11 != v13 - v12 || memcmp(v10, v12, v11))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "SPL", 69, "ValidateSlpId", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v18, 0, 1);
    }

    return 0;
  }

  return v6;
}

uint64_t SuplUtils::ValidateSlpSessionId(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 8) - *a2;
  if (v4 == *(a3 + 8) - *a3 && !memcmp(*a2, *a3, v4))
  {
    return 1;
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "ValidateSlpSessionId", 515);
    LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
    return 0;
  }

  return result;
}

uint64_t SuplUtils::ValidateSetSessionId(SuplUtils *this, int a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 == a3)
  {
    return 1;
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "ValidateSetSessionId", 515);
    LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    return 0;
  }

  return result;
}

uint64_t SuplUtils::ValidateSetId(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  if (v3 != *a3)
  {
    goto LABEL_20;
  }

  if (*a2 > 4u)
  {
    if (v3 != 5)
    {
      if (v3 == 6)
      {
        v11 = a2[128];
        if (v11 == a3[128] && (v11 == 2 || v11 == 1))
        {
          return 1;
        }

        goto LABEL_20;
      }

      if (v3 != 255)
      {
LABEL_20:
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "SPL", 69, "ValidateSetId", 515);
          LbsOsaTrace_WriteLog(0x12u, __str, v13, 0, 1);
        }

        return 0;
      }
    }
  }

  else if ((v3 - 2) >= 2)
  {
    if (v3 == 1)
    {
      v4 = *(a2 + 1);
      v5 = *(a2 + 2) - v4;
      v6 = *(a3 + 1);
      v7 = *(a3 + 2);
      goto LABEL_13;
    }

    if (v3 == 4)
    {
      v4 = *(a2 + 10);
      v5 = *(a2 + 11) - v4;
      v6 = *(a3 + 10);
      v7 = *(a3 + 11);
LABEL_13:
      if (v5 == v7 - v6 && !memcmp(v4, v6, v5))
      {
        return 1;
      }

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v8 = mach_continuous_time();
  v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "ValidateSetId", 770);
  v10 = 1;
  LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
  return v10;
}

BOOL SuplUtils::GetFixedSetCapabilities(uint64_t a1, uint64_t a2, int a3)
{
  Instance = SimUtils::GetInstance(a1);
  result = SimUtils::IsItCampedOnLte(Instance, a3);
  *(a2 + 9) = !result;
  if (*(a1 + 279))
  {
    v8 = 0;
  }

  else
  {
    v9 = result && *(a1 + 276) == 1;
    v8 = v9;
  }

  *a2 = v8;
  *(a2 + 1) = *(a1 + 277);
  *(a2 + 10) = 0;
  *(a2 + 8) = 0;
  return result;
}

BOOL SuplUtils::FillSetCapabilities(_BYTE *a1, uint64_t a2, int a3, int a4)
{
  result = SuplUtils::GetFixedSetCapabilities(a1, a2, a4);
  if (a1[277] == 1)
  {
    *(a2 + 7) = 1;
  }

  if ((a3 & 0xFFFFFFFD) == 0 && !a1[279] && a1[276] == 1)
  {
    *(a2 + 7) = 0;
  }

  return result;
}

SimInformation *SuplUtils::IsSETInfoValid(SuplUtils *this, int a2)
{
  result = *(SimUtils::GetInstance(this) + 16);
  if (result)
  {
    while (*result != a2)
    {
      result = *(result + 1);
      if (!result)
      {
        return result;
      }
    }

    return (SimInformation::IsSETIdValid(result) == 1);
  }

  return result;
}

void SuplUtils::CopySlpSessionId(int a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a3 + 224 != a2)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, *(a3 + 224), *(a3 + 232), *(a3 + 232) - *(a3 + 224));
  }

  v5 = *(a3 + 248);
  *(a2 + 24) = v5;
  if (v5 == 255)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = 515;
    goto LABEL_18;
  }

  if (v5 != 2)
  {
    if (v5 == 1)
    {
      v6 = *(a3 + 256);
      *(a2 + 32) = v6;
      if (v6 == 2)
      {
        v7 = (a2 + 64);
        if (a2 + 64 == a3 + 288)
        {
          return;
        }

        v8 = *(a3 + 288);
        v9 = *(a3 + 296);
        goto LABEL_22;
      }

      if (v6 == 1)
      {
        v7 = (a2 + 40);
        if (a2 + 40 == a3 + 264)
        {
          return;
        }

        v8 = *(a3 + 264);
        v9 = *(a3 + 272);
LABEL_22:

        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v7, v8, v9, v9 - v8);
        return;
      }
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = 514;
LABEL_18:
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v10, "SPL", 69, "CopySlpSessionId", v11);
    LbsOsaTrace_WriteLog(0x12u, __str, v14, 0, 1);
    return;
  }

  if (a2 + 88 != a3 + 312)
  {
    v12 = *(a3 + 312);
    v13 = *(a3 + 320);

    std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>((a2 + 88), v12, v13, v13 - v12);
  }
}

void SuplUtils::ConvertLocEstimatetoAsn1Position(int a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return;
    }

    goto LABEL_7;
  }

  *a2 = 0;
  v4 = *(a3 + 1);
  if (v4 > 0xA)
  {
LABEL_18:
    if (v4 == 255)
    {
LABEL_4:
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "ConvertLocEstimatetoAsn1Position", 770);
        LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
      }

      return;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return;
    }

LABEL_7:
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "ConvertLocEstimatetoAsn1Position", 515);
    LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
    return;
  }

  if (((1 << v4) & 0x523) != 0)
  {
    goto LABEL_4;
  }

  if (v4 != 3)
  {
    if (v4 == 9)
    {
      *(a2 + 35) = (*(a2 + 36) & 0x800000) != 0;
      *(a2 + 36) = *(a3 + 68) & 0x7FFFFF;
      *(a2 + 40) = *(a3 + 76);
      v9 = *(a3 + 84);
      v10 = *(a3 + 108);
      if (v9 != 0xFFFF && v10 != 255)
      {
        *(a2 + 34) = 1;
      }

      *(a2 + 52) = v10;
      *(a2 + 48) = v9 >> 15;
      *(a2 + 50) = v9 & 0x7FFF;
      v11 = *(a3 + 92);
      v12 = *(a3 + 100);
      if (v11 != 255 && v12 != 255 && *(a3 + 116) != 255)
      {
        *(a2 + 32) = 1;
      }

      *(a2 + 46) = *(a3 + 116);
      *(a2 + 44) = v11;
      v13 = 117;
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v14 = *(a3 + 32);
  *(a2 + 36) = v14;
  *(a2 + 40) = *(a3 + 40);
  *(a2 + 35) = (v14 & 0x800000) != 0;
  *(a2 + 34) = 0;
  *(a2 + 32) = 1;
  *(a2 + 46) = *(a3 + 64);
  *(a2 + 44) = *(a3 + 48);
  v12 = *(a3 + 56);
  v13 = 65;
LABEL_22:
  v16 = (a2 + 8);
  v15 = *(a2 + 8);
  *(a2 + 45) = v12;
  *(a2 + 33) = 1;
  *(a2 + 47) = *(a3 + v13);
  v17 = *(a2 + 16) - v15;
  if (v17 > 0xC)
  {
    if (v17 != 13)
    {
      *(a2 + 16) = v15 + 13;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(v16, 13 - v17);
    v15 = *v16;
  }

  *v15 = (*(a3 + 216) / 0xAu - 10 * ((6554 * (*(a3 + 216) / 0xAu)) >> 16)) | 0x30;
  (*v16)[1] = (*(a3 + 216) % 0xAu) | 0x30;
  (*v16)[2] = (*(a3 + 218) / 0xAu - 10 * ((26 * (*(a3 + 218) / 0xAu)) >> 8)) | 0x30;
  (*v16)[3] = (*(a3 + 218) % 0xAu) | 0x30;
  (*v16)[4] = (*(a3 + 219) / 0xAu - 10 * ((26 * (*(a3 + 219) / 0xAu)) >> 8)) | 0x30;
  (*v16)[5] = (*(a3 + 219) % 0xAu) | 0x30;
  (*v16)[6] = (*(a3 + 220) / 0xAu - 10 * ((26 * (*(a3 + 220) / 0xAu)) >> 8)) | 0x30;
  (*v16)[7] = (*(a3 + 220) % 0xAu) | 0x30;
  (*v16)[8] = (*(a3 + 221) / 0xAu - 10 * ((26 * (*(a3 + 221) / 0xAu)) >> 8)) | 0x30;
  (*v16)[9] = (*(a3 + 221) % 0xAu) | 0x30;
  (*v16)[10] = (*(a3 + 222) / 0xAu - 10 * ((26 * (*(a3 + 222) / 0xAu)) >> 8)) | 0x30;
  (*v16)[11] = (*(a3 + 222) % 0xAu) | 0x30;
  (*v16)[12] = 90;
}

uint64_t SuplUtils::IsItDuplicateSUPLINIT(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x29EDCA608];
  ASN1T_SessionID::ASN1T_SessionID(v13);
  v4 = *a2;
  v5 = *(a2 + 8);
  __p = 0;
  v39 = 0;
  v40 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v4, v5, v5 - v4);
  v36[0] = &__p;
  v36[1] = 5;
  v37 = 0;
  v6 = asn1PD_SessionID(v36, v13);
  v7 = __p;
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  v8 = 0;
  if (!v6)
  {
    if (v13[1])
    {
      v8 = *(a1 + 16);
      if (v8)
      {
        while (1)
        {
          v9 = *(v8 + 16);
          if (*(v9 + 49))
          {
            v7 = SuplUtils::ValidateSlpSessionId(v7, v28, v9 + 384);
            if (v7)
            {
              v7 = SuplUtils::ValidateSlpId(v7, v29, (*(v8 + 16) + 408));
              if (v7)
              {
                break;
              }
            }
          }

          v8 = *(v8 + 8);
          if (!v8)
          {
            goto LABEL_14;
          }
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(&__p, 0x410uLL);
          v10 = mach_continuous_time();
          v11 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "SPL", 69, "IsSessionWithSLPExists", 515);
          LbsOsaTrace_WriteLog(0x12u, &__p, v11, 0, 1);
        }

        v8 = 1;
      }
    }
  }

LABEL_14:
  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  return v8;
}

void sub_299642D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57)
{
  if (__p)
  {
    a57 = __p;
    operator delete(__p);
  }

  ASN1T_SessionID::~ASN1T_SessionID(&a14);
  _Unwind_Resume(a1);
}

uint64_t SuplUtils::IsQopValid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*a3 == 2)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Last know position fix is not valid\n");
    goto LABEL_10;
  }

  if (*(a3 + 1) != 9)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Last know position shape type is not valid\n");
    goto LABEL_10;
  }

  if (*(a3 + 92) > *(a2 + 3))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: stored semiminor axis is not valid\n");
    goto LABEL_10;
  }

  if (*a2 == 1 && *(a3 + 108) > *(a2 + 4))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: vertical accuracy is not valid\n");
LABEL_10:
      LbsOsaTrace_WriteLog(0x12u, __str, v4, 4, 1);
      return 0;
    }
  }

  else
  {
    if (*(a2 + 1) != 1)
    {
      return 1;
    }

    v5 = *(a3 + 228);
    if (1000 * *(a2 + 8) >= (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v5)
    {
      return 1;
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: maxlocation age is not valid\n");
      goto LABEL_10;
    }
  }

  return result;
}

void **SuplUtils::StoreLastKnownPositionFix(void **result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    *(result + 20) = *a2;
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    v6 = *(a2 + 40);
    *(result + 6) = *(a2 + 56);
    *(result + 5) = v6;
    *(result + 4) = v5;
    *(result + 3) = v4;
    v7 = *(a2 + 72);
    v8 = *(a2 + 88);
    v9 = *(a2 + 104);
    *(result + 10) = *(a2 + 120);
    *(result + 9) = v9;
    *(result + 8) = v8;
    *(result + 7) = v7;
    v10 = *(a2 + 136);
    v11 = *(a2 + 152);
    v12 = *(a2 + 168);
    result[28] = *(a2 + 184);
    *(result + 13) = v12;
    *(result + 12) = v11;
    *(result + 11) = v10;
    if (result + 5 != a2)
    {
      result = std::vector<UtaLcsShapePoint>::__assign_with_size[abi:ne200100]<UtaLcsShapePoint*,UtaLcsShapePoint*>(result + 29, *(a2 + 192), *(a2 + 200), (*(a2 + 200) - *(a2 + 192)) >> 4);
    }

    *(v3 + 16) = *(a2 + 216);
  }

  return result;
}

uint64_t SuplUtils::GetLastKnownPosition(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 80);
  *(a2 + 56) = *(a1 + 96);
  *(a2 + 40) = v6;
  *(a2 + 24) = v5;
  *(a2 + 8) = v4;
  v7 = *(a1 + 112);
  v8 = *(a1 + 128);
  v9 = *(a1 + 144);
  *(a2 + 120) = *(a1 + 160);
  *(a2 + 104) = v9;
  *(a2 + 88) = v8;
  *(a2 + 72) = v7;
  v10 = *(a1 + 176);
  v11 = *(a1 + 192);
  v12 = *(a1 + 208);
  *(a2 + 184) = *(a1 + 224);
  *(a2 + 168) = v12;
  *(a2 + 152) = v11;
  *(a2 + 136) = v10;
  if (a1 + 40 != a2)
  {
    std::vector<UtaLcsShapePoint>::__assign_with_size[abi:ne200100]<UtaLcsShapePoint*,UtaLcsShapePoint*>((a2 + 192), *(a1 + 232), *(a1 + 240), (*(a1 + 240) - *(a1 + 232)) >> 4);
  }

  *(a2 + 216) = *(a1 + 256);
  return 0;
}

unsigned __int8 *SuplUtils::ConvertSuplAddressToGnSuplAddess(unsigned __int8 *result, char *__str)
{
  v2 = *result;
  if (v2 == 1)
  {
    v5 = result[8];
    if (v5 == 2)
    {
      *(__str + 64) = 2;
      v6 = *(result + 5);
      return snprintf(__str, 0x100uLL, "%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d", *v6, v6[1], v6[2], v6[3], v6[4], v6[5]);
    }

    else if (v5 == 1)
    {
      *(__str + 64) = 1;
      return snprintf(__str, 0x100uLL, "%d.%d.%d.%d");
    }
  }

  else if (v2 == 2)
  {
    *(__str + 64) = 3;
    v3 = *(result + 8);
    v4 = *(result + 9);
    if (v4 != v3)
    {

      return memmove(__str, v3, v4 - v3);
    }
  }

  else
  {
    *(__str + 64) = 0;
  }

  return result;
}

uint64_t SuplUtils::DecodeSUPL_INIT(SuplVersionNegotiation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = *MEMORY[0x29EDCA608];
  if (*a3 != *(a3 + 8))
  {
    v26 = 0;
    Instance = SuplVersionNegotiation::GetInstance(a1);
    v7 = atomic_load((Instance + 1));
    v8 = v7 == 255;
    v9 = 1;
    if (v8)
    {
      v9 = 2;
    }

    v10 = atomic_load((Instance + v9));
    v27 = v10;
    v28 = 0;
    v29 = -1;
    v30 = 0;
    ASN1T_SessionID::ASN1T_SessionID(v31);
    __p = 0;
    v24 = 0;
    v25 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, *(a3 + 8), *(a3 + 8) - *a3);
    v55[0] = &__p;
    v55[1] = 0;
    v56 = 0;
    v22[0] = v55;
    v22[1] = &v26;
    v11 = SuplMessage::Decode(v22);
    if (v11 || v29 != 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v18), "SPL", 69, "DecodeSUPL_INIT", 515);
        LbsOsaTrace_WriteLog(0x12u, __str, v19, 0, 1);
      }

      v17 = -5;
      goto LABEL_43;
    }

    v12 = v30;
    *(a4 + 5) = *(v30 + 184) == 0;
    *(a4 + 6) = v27;
    *(a4 + 7) = v28;
    *(a4 + 12) = SuplUtils::ConvertPosMethod(v11, *(v12 + 5));
    *(a4 + 272) = 0;
    if (v31[1] == 1)
    {
      SuplUtils::ConvertSuplAddressToGnSuplAddess(v48, (a4 + 16));
    }

    *(a4 + 536) = 0;
    if (*(v12 + 243) == 1)
    {
      SuplUtils::ConvertSuplAddressToGnSuplAddess((v12 + 360), (a4 + 280));
    }

    *(a4 + 800) = 0;
    if (*(v12 + 1) == 1)
    {
      SuplUtils::ConvertSuplAddressToGnSuplAddess((v12 + 80), (a4 + 544));
    }

    *(a4 + 808) = *(v12 + 73) != 0;
    *(a4 + 812) = 0;
    if (*v12 == 1)
    {
      v13 = *(v12 + 13);
      if (v13 <= 4)
      {
        *(a4 + 812) = v13 + 1;
      }
    }

    *(a4 + 816) = 0;
    if (*(v12 + 246))
    {
      v14 = *(v12 + 552);
      if (v14 == 1)
      {
        *(a4 + 816) = 1;
      }

      else
      {
        LOBYTE(v14) = 0;
      }

      if (*(v12 + 553) == 1)
      {
        LOBYTE(v14) = v14 | 2;
        *(a4 + 816) = v14;
      }

      if (*(v12 + 554) == 1)
      {
        LOBYTE(v14) = v14 | 4;
        *(a4 + 816) = v14;
      }

      if (*(v12 + 555) == 1)
      {
        LOBYTE(v14) = v14 | 8;
        *(a4 + 816) = v14;
      }

      if (*(v12 + 556) == 1)
      {
        LOBYTE(v14) = v14 | 0x10;
        *(a4 + 816) = v14;
      }

      if (*(v12 + 557) == 1)
      {
        *(a4 + 816) = v14 | 0x20;
      }
    }

    *(a4 + 817) = 0;
    if (*(v12 + 2) == 1)
    {
      *(a4 + 817) = 1;
      *(a4 + 820) = *(v12 + 171);
      *(a4 + 824) = *(v12 + 176);
      *(a4 + 828) = *(v12 + 180);
    }

    *(a4 + 832) = 0;
    if (*(v12 + 242) == 1)
    {
      v20 = *(v12 + 352);
      if (v20 == 1)
      {
LABEL_41:
        *(a4 + 832) = v20;
        goto LABEL_42;
      }

      if (!*(v12 + 352))
      {
        v20 = 2;
        goto LABEL_41;
      }
    }

LABEL_42:
    v17 = 0;
    *(a4 + 4) = 1;
LABEL_43:
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    if (v53)
    {
      v54 = v53;
      operator delete(v53);
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    ASN1T_UlpMessage::~ASN1T_UlpMessage(&v29);
    return v17;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "SPL", 69, "DecodeSUPL_INIT", 515);
    LbsOsaTrace_WriteLog(0x12u, __str, v16, 0, 1);
  }

  return -5;
}

void SuplUtils::ConvertSuplEndStatusToGNSupl(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (a2 > 0x17)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_29975F15C[a2];
  }

  *a3 = v3;
}

LcsSuplGlueLayer *SuplUtils::AbortAllStoredSuplInits(LcsSuplGlueLayer *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = this;
    do
    {
      v3 = *(v1 + 8);
      if (*(v1 + 16))
      {
        Instance = LcsSuplGlueLayer::GetInstance(this);
        if (Instance)
        {
          v5 = Instance + 8;
        }

        else
        {
          v5 = 0;
        }

        v6 = (*(*v5 + 8))(v5, **(v1 + 16));
        v7 = SuplPosPayloadHandler::GetInstance(v6);
        v8 = **(v1 + 16);
        v9 = LcsSuplGlueLayer::GetInstance(v7);
        (*(*v9 + 8))(v9, v8, 3, 0);
        SuplPosPayloadHandler::ResetLppParams(v7);
        this = SuplUtils::DeleteSuplInitRecd(v2, **(v1 + 16));
      }

      v1 = v3;
    }

    while (v3);
  }

  return this;
}

void ASN1T_SuplMessage::~ASN1T_SuplMessage(ASN1T_SuplMessage *this)
{
  v2 = *(this + 39);
  if (v2)
  {
    *(this + 40) = v2;
    operator delete(v2);
  }

  v3 = *(this + 36);
  if (v3)
  {
    *(this + 37) = v3;
    operator delete(v3);
  }

  v4 = *(this + 33);
  if (v4)
  {
    *(this + 34) = v4;
    operator delete(v4);
  }

  v5 = *(this + 28);
  if (v5)
  {
    *(this + 29) = v5;
    operator delete(v5);
  }

  ASN1T_SETId::U::~U((this + 48));
  ASN1T_UlpMessage::~ASN1T_UlpMessage((this + 8));
}

void GLON_Alm_Apply_Corrns(uint64_t a1, double *a2, uint64_t a3, double a4, float64_t a5, double a6)
{
  v11 = a2[7];
  v12 = __sincos_stret(a2[8]);
  v13 = *(a1 + 8) + v11 * v12.__sinval;
  v14 = *(a1 + 16) + v11 * v12.__cosval;
  v15 = a2[4] + 1.09955743;
  v16 = sqrt(v14 * v14 + v13 * v13);
  *a3 = *a1 + a4;
  *(a3 + 8) = v16;
  v17.f64[0] = a5;
  v17.f64[1] = v15;
  *(a3 + 16) = vaddq_f64(v17, *(a1 + 24));
  if (fabs(v16) <= 2.22044605e-16)
  {
    *(a3 + 40) = 0;
    v18 = 0.0;
  }

  else if (fabs(v14) <= 2.22044605e-16)
  {
    if (v13 <= 0.0)
    {
      *(a3 + 40) = 0xBFF921FB54442D28;
      v18 = -1.57079633;
    }

    else
    {
      *(a3 + 40) = 0x3FF921FB54442D28;
      v18 = 1.57079633;
    }
  }

  else
  {
    v18 = atan2(v13, v14);
    *(a3 + 40) = v18;
  }

  *(a3 + 32) = *(a1 + 40) + a6 - v18;
}

void SuplResponseRecd::SuplResponseRecd(SuplResponseRecd *this)
{
  v8 = *MEMORY[0x29EDCA608];
  SuplState::SuplState(this);
  *v2 = &unk_2A1F88F10;
  *(v2 + 360) = 0;
  *(v2 + 16) = 3;
  *(v2 + 32) = 4;
  v3 = operator new(0x4A0uLL, MEMORY[0x29EDC9418]);
  if (!v3)
  {
    *(this + 5) = 0;
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return;
    }

    goto LABEL_7;
  }

  *v3 = 0;
  *(v3 + 15) = 0;
  *(v3 + 22) = 0;
  *(v3 + 4) = 0x200000100000101;
  *(v3 + 6) = 0;
  v3[14] = 0;
  *(v3 + 44) = 0;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  v3[80] = 0;
  *(v3 + 90) = 0xFFFFFFFFLL;
  *(v3 + 14) = 0;
  *(v3 + 15) = 0;
  *(v3 + 13) = 0;
  v3[128] = 0;
  *(v3 + 68) = 0;
  v3[138] = 0;
  *(v3 + 140) = -1;
  v3[150] = 0;
  *(v3 + 19) = 0xFFFF000000000000;
  *(v3 + 20) = 0;
  *(v3 + 21) = 0;
  *(v3 + 182) = 0;
  *(v3 + 22) = 0;
  *(v3 + 25) = 0;
  *(v3 + 26) = 0;
  *(v3 + 24) = 0;
  v3[216] = 1;
  *(v3 + 30) = 0;
  *(v3 + 31) = 0;
  *(v3 + 29) = 0;
  *(v3 + 260) = 0;
  *(v3 + 67) = 0;
  v3[272] = -1;
  *(v3 + 137) = 0;
  v3[276] = 0;
  *(v3 + 129) = -256;
  *(v3 + 128) = 0;
  *(v3 + 35) = 255;
  *(v3 + 18) = 0u;
  *(v3 + 19) = 0u;
  *(v3 + 20) = 0u;
  *(v3 + 21) = 0u;
  *(v3 + 22) = 0u;
  *(v3 + 23) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 25) = 0u;
  *(v3 + 26) = 0u;
  *(v3 + 27) = 0u;
  *(v3 + 28) = 0u;
  *(v3 + 29) = 0u;
  *(v3 + 30) = 0u;
  *(v3 + 31) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 33) = 0u;
  *(v3 + 34) = 0u;
  *(v3 + 35) = 0u;
  *(v3 + 36) = 0u;
  *(v3 + 37) = 0u;
  *(v3 + 38) = 0u;
  *(v3 + 39) = 0u;
  *(v3 + 80) = 0;
  v3[224] = 0;
  *(v3 + 41) = 0u;
  *(v3 + 42) = 0u;
  *(v3 + 43) = 0u;
  *(v3 + 44) = 0u;
  *(v3 + 45) = 0u;
  *(v3 + 46) = 0u;
  *(v3 + 47) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 49) = 0u;
  *(v3 + 50) = 0u;
  v3[792] = -1;
  v3[648] = 0;
  *(v3 + 51) = 0u;
  *(v3 + 52) = 0u;
  *(v3 + 53) = 0u;
  *(v3 + 54) = 0u;
  *(v3 + 55) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 57) = 0u;
  *(v3 + 58) = 0u;
  *(v3 + 59) = 0u;
  *(v3 + 60) = 0u;
  *(v3 + 61) = 0u;
  *(v3 + 62) = 0u;
  *(v3 + 63) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 65) = 0u;
  *(v3 + 66) = 0u;
  *(v3 + 67) = 0u;
  *(v3 + 68) = 0u;
  *(v3 + 69) = 0u;
  *(v3 + 70) = 0u;
  *(v3 + 71) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 73) = 0u;
  *(this + 5) = v3;
  v4 = operator new(1uLL, MEMORY[0x29EDC9418]);
  if (v4)
  {
    *(this + 46) = v4;
    return;
  }

  *(this + 46) = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
LABEL_7:
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "SuplResponseRecd", 1537);
    LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
  }
}

void SuplResponseRecd::~SuplResponseRecd(SuplResponseRecd *this)
{
  v10[1] = *MEMORY[0x29EDCA608];
  *this = &unk_2A1F88F10;
  if (*(this + 16) == 4)
  {
    v2 = *(this + 5);
    if (v2)
    {
      v3 = *(v2 + 1160);
      if (v3)
      {
        *(v2 + 1168) = v3;
        operator delete(v3);
      }

      ASN1T_Velocity::U::~U((v2 + 800));
      v10[0] = (v2 + 768);
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v10);
      v10[0] = (v2 + 744);
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v10);
      v4 = *(v2 + 712);
      if (v4)
      {
        *(v2 + 720) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 688);
      if (v5)
      {
        *(v2 + 696) = v5;
        operator delete(v5);
      }

      v6 = *(v2 + 664);
      if (v6)
      {
        *(v2 + 672) = v6;
        operator delete(v6);
      }

      ASN1T_Velocity::U::~U((v2 + 288));
      v7 = *(v2 + 232);
      if (v7)
      {
        *(v2 + 240) = v7;
        operator delete(v7);
      }

      ASN1T_CellInfo::~ASN1T_CellInfo((v2 + 80));
      v8 = *(v2 + 56);
      if (v8)
      {
        *(v2 + 64) = v8;
        operator delete(v8);
      }

      MEMORY[0x29C29EB20](v2, 0x1030C408DDF0A82);
    }

    *(this + 5) = 0;
    v9 = *(this + 46);
    if (v9)
    {
      MEMORY[0x29C29EB20](v9, 0xC400A2AC0F1);
    }

    *(this + 46) = 0;
  }

  SuplState::~SuplState(this);
}

{

  SuplResponseRecd::~SuplResponseRecd(this);
}

{
  SuplResponseRecd::~SuplResponseRecd(this);

  JUMPOUT(0x29C29EB20);
}

void SuplResponseRecd::UpdateState(SuplResponseRecd *this)
{
  if (*(this + 360))
  {
    *(this + 360) = 0;
    v1 = *(this + 1);

    SuplState::UpdateState(this, 4, v1);
  }
}

uint64_t SuplResponseRecd::Init(SuplResponseRecd *this)
{
  v120 = *MEMORY[0x29EDCA608];
  std::vector<unsigned char>::vector[abi:ne200100](v57, 3000);
  v59[0] = v57;
  v59[1] = 0;
  v60 = 0;
  v2 = *(this + 5);
  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(v3 + 432);
    *(v2 + 18) = *(v3 + 446);
    *(v2 + 4) = v4;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "PrepareSuplPosInit", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
  }

  v7 = *(this + 1);
  if (v7)
  {
    v61 = *(v7 + 456);
    v8 = *(v7 + 472);
    v62 = *(v7 + 464);
    v63 = 0;
    v64 = 0;
    v65 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v63, v8, *(v7 + 480), *(v7 + 480) - v8);
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v9 = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v66, *(v7 + 496), *(v7 + 504), *(v7 + 504) - *(v7 + 496));
    v10 = *(v7 + 520);
    v69 = v10;
    if (v61 == 1)
    {
      v11 = (v62 >> 6) & 1;
      v12 = (v62 >> 4) & 1;
      v13 = (v62 >> 3) & 1;
      v14 = (v62 >> 5) & 1;
      v15 = v62 & 1;
      v16 = (v62 >> 2) & 1;
      v17 = (v62 >> 1) & 1;
    }

    else
    {
      v17 = 0;
      v16 = 0;
      v15 = 0;
      v14 = 0;
      v13 = 0;
      v12 = 0;
      v11 = 0;
    }

    if ((v16 | v17 | v15 | v14 | v13 | v12 | v11) == 1)
    {
      *v2 = 1;
      *(v2 + 39) = v11;
      *(v2 + 37) = v12;
      *(v2 + 41) = v13;
      *(v2 + 38) = v14;
      *(v2 + 33) = v15;
      *(v2 + 35) = v16;
      *(v2 + 34) = v17;
      if (v13)
      {
        *(v2 + 32) = 1;
        goto LABEL_15;
      }
    }

    else if (v13)
    {
LABEL_15:
      *(v2 + 50) = WORD2(v62);
      *(v2 + 52) = BYTE6(v62);
      *(v2 + 54) = v10;
      v21 = HIBYTE(v62);
      *(v2 + 53) = HIBYTE(v62);
      if (v21)
      {
        v22 = 0;
        *(v2 + 48) = 1;
        v23 = *(v2 + 56);
        *(v2 + 64) = v23;
        do
        {
          v24 = *(v63 + v22);
          v25 = *(v66 + v22);
          v26 = *(v2 + 72);
          if (v23 >= v26)
          {
            v27 = *(v2 + 56);
            v28 = v23 - v27;
            v29 = (v23 - v27) >> 3;
            v30 = v29 + 1;
            if ((v29 + 1) >> 61)
            {
              std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
            }

            v31 = v26 - v27;
            if (v31 >> 2 > v30)
            {
              v30 = v31 >> 2;
            }

            if (v31 >= 0x7FFFFFFFFFFFFFF8)
            {
              v32 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v30;
            }

            if (v32)
            {
              if (!(v32 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v33 = v29;
            v34 = (8 * v29);
            v35 = v24 | (v25 << 32);
            v36 = &v34[-v33];
            *v34 = v35;
            v23 = (v34 + 1);
            v9 = memcpy(v36, v27, v28);
            *(v2 + 56) = v36;
            *(v2 + 64) = v23;
            *(v2 + 72) = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          else
          {
            *v23 = v24 | (v25 << 32);
            v23 += 8;
          }

          *(v2 + 64) = v23;
          if (v22 > 0x1C)
          {
            break;
          }

          ++v22;
        }

        while (v22 < HIBYTE(v62));
      }
    }

    Instance = SimUtils::GetInstance(v9);
    IsItCampedOnLte = SimUtils::IsItCampedOnLte(Instance, *(*(this + 1) + 532));
    if (IsItCampedOnLte)
    {
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::clear[abi:ne200100]((v2 + 744));
      SuplResponseRecdVer2::UpdateLppCapPayload(*(this + 46), (this + 32));
      SuplResponseRecdVer2::UpdateLppADPayload(*(this + 46), this + 32, *(this + 1));
    }

    v39 = *(this + 1);
    if (v39)
    {
      if ((*(v39 + 380) & 0xFE) != 2)
      {
        goto LABEL_46;
      }

      *(this + 48) = 1;
      *(this + 28) = *(v39 + 376);
      v40 = SuplUtils::GetInstance(IsItCampedOnLte);
      SuplUtils::FillSetId(v40, this + 64, *(*(this + 1) + 532));
      v42 = SuplUtils::GetInstance(v41);
      SuplUtils::FillLocationId(v42, *(this + 5) + 80, *(*(this + 1) + 532));
      SuplInitRecd = SuplSession::GetSuplInitRecd(*(this + 1));
      v44 = SuplInitRecd;
      if (SuplInitRecd)
      {
        if (*(*(SuplInitRecd + 5) + 2) == 1)
        {
          *__str = -254;
          v71 = 0;
          v72 = 0;
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v86 = 0;
          v87 = 0;
          v88 = 0;
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v92 = 0;
          v93 = 0;
          v94 = 0;
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v98 = 0;
          v99 = 0;
          v100 = 0;
          v101 = 0;
          v102 = 0;
          v103 = 0;
          v104 = 0;
          *(v105 + 3) = 0;
          v105[0] = 0;
          v105[2] = 0;
          v106 = 0;
          v107 = 0;
          v108 = 0;
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = 0;
          v113 = 0;
          v114 = 0;
          v118 = 0;
          v119 = 0;
          v116 = 0;
          v117[0] = 0;
          *(v117 + 7) = 0;
          __p = 0;
          v45 = SuplUtils::GetInstance(SuplInitRecd);
          LastKnownPosition = SuplUtils::GetLastKnownPosition(v45, __str);
          v47 = SuplUtils::GetInstance(LastKnownPosition);
          IsQopValid = SuplUtils::IsQopValid(v47, *(v44 + 5) + 168, __str);
          if (IsQopValid == 1)
          {
            v49 = SuplUtils::GetInstance(IsQopValid);
            SuplUtils::ConvertLocEstimatetoAsn1Position(v49, v2 + 224, __str);
            *(v2 + 1) = 1;
          }

          if (__p)
          {
            v116 = __p;
            operator delete(__p);
          }
        }

        if (SuplInitRecd::FillHash(v44, v2 + 1160, *(*(this + 1) + 376), *(*(this + 1) + 532)) && LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v50 = mach_continuous_time();
          v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v50), "SPL", 69, "PrepareSuplPosInit", 770);
          LbsOsaTrace_WriteLog(0x12u, __str, v51, 0, 1);
        }
      }

      *(v2 + 3) = 1;
      v39 = *(this + 1);
      if (v39)
      {
LABEL_46:
        ASN1T_SessionID::operator=(this + 48, v39 + 64);
      }
    }

    v58[0] = v59;
    v58[1] = this + 24;
    if (SuplMessage::Encode(v58) && LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v52 = mach_continuous_time();
      v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v52), "SPL", 69, "PrepareSuplPosInit", 770);
      LbsOsaTrace_WriteLog(0x12u, __str, v53, 0, 1);
    }

    *(*(this + 1) + 408) = 1;
    if (v66)
    {
      v67 = v66;
      operator delete(v66);
    }

    IsLoggingAllowed = v63;
    if (v63)
    {
      v64 = v63;
      operator delete(v63);
    }

    goto LABEL_54;
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v19), "SPL", 69, "PrepareSuplPosInit", 513);
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v20, 0, 1);
  }

LABEL_54:
  v54 = LcsSuplGlueLayer::GetInstance(IsLoggingAllowed);
  LcsSuplGlueLayer::SendSuplMsgStatus(v54, *(*(this + 1) + 376), 3, 0, 0, 0);
  if (SuplState::SendSuplMessage(this))
  {
    *(this + 360) = 1;
  }

  (*(*this + 16))(this);
  v55 = *(this + 360);
  if (v57[0])
  {
    v57[1] = v57[0];
    operator delete(v57[0]);
  }

  return v55;
}

void sub_2996449C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56)
{
  SuplAsstDataNeededInfo::~SuplAsstDataNeededInfo(&a22);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void DD_Assist_GAL_Data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v7 = 0;
  v109 = *MEMORY[0x29EDCA608];
  v91 = a4 + 24368;
  v8 = a4 + 19904;
  v101 = a4 + 16736;
  v96 = a2 - 241;
  v102 = a1 + 17908;
  v104 = a4 + 23072;
  v100 = a1 + 13009;
  v99 = a1 + 13046;
  v98 = a1 + 17044;
  v95 = a1 + 13118;
  v94 = (a1 + 13406);
  v93 = a1 + 13478;
  v9 = (a1 + 13732);
  v92 = a1 + 13732;
  v10 = a3 + 56;
  v103 = a2;
  do
  {
    if (*(v10 + v7) <= 0xA5u && (*(*(a4 + 16608) + v7) != 1 || (v96 - *(v101 + 88 * v7)) <= 0xFFFFF806))
    {
      v107 = 0u;
      memset(v108, 0, 23);
      memset(v106, 0, sizeof(v106));
      v105 = 0u;
      if (!Core_Get_GAL_Eph((v7 + 1), v6, &v105))
      {
        goto LABEL_9;
      }

      v11 = *(a4 + 16608);
      if (*(v11 + v7) == 1)
      {
        v12 = (v101 + 88 * v7);
        if (v105 <= *v12 && v103 - *v12 > -1801)
        {
LABEL_9:
          *(*(a4 + 16568) + 20 * v7 + 8) = 0;
          v6 = v103;
          goto LABEL_25;
        }

        if (v105 - *v12 <= 10799 && Is_GAL_IntEph_Real(v101 + 88 * v7) && !Is_GAL_IntEph_Real(&v105))
        {
          v6 = v103;
          *v12 = v103;
          goto LABEL_25;
        }
      }

      v13 = *(v102 + v7);
      if (v13 == 1 && (v108[22] & 1) != 0 || v13 == 2 && (v108[21] & 1) != 0)
      {
        v14 = *(a4 + 16560);
LABEL_18:
        *(v14 + v7) = 0;
        v15 = *(a4 + 16568) + 20 * v7;
        v16 = (v15 + 12);
        v17 = (v15 + 8);
        if (*(v101 + 88 * v7 + 4) == 5)
        {
          v18 = v17;
        }

        else
        {
          v18 = v16;
        }

        *v18 = 2;
        v6 = v103;
LABEL_22:
        v19 = 0;
        LODWORD(v20) = 0;
        v21 = p_NV;
        v22 = (p_NV + 7612);
        v24 = *v14;
        v23 = v14[1];
        *(p_NV + 7644) = *(v14 + 8);
        *v22 = v24;
        v22[1] = v23;
        v25 = 55665;
        do
        {
          v26 = *(v21 + 7608 + v19) ^ BYTE1(v25);
          v25 = 52845 * (v25 + v26) + 22719;
          v20 = (v20 + v26);
          ++v19;
        }

        while (v19 != 40);
        *(v21 + 7600) = v20;
        *(v95 + 8 * v7) = 0x400040004000400;
        v94[v7] = 1024;
        *(v93 + 2 * v7) = 1024;
        *(v102 + v7) = 0;
        v27 = (v92 + 92 * v7);
        *(v27 + 76) = 0u;
        v27[3] = 0u;
        v27[4] = 0u;
        v27[1] = 0u;
        v27[2] = 0u;
        *v27 = 0u;
        goto LABEL_25;
      }

      if (v13 != 3 && *(v102 + v7))
      {
        v28 = 1;
      }

      else
      {
        v28 = (v108[21] | v108[22]) ^ 1;
      }

      v14 = *(a4 + 16560);
      if ((v28 & 1) != 0 && (*(v14 + v7) & 1) == 0 && (v29 = *(a4 + 16624), *(v29 + v7) == 1))
      {
        v30 = (v104 + 36 * v7);
        v31 = *v30;
        if (*v30 + 3600 > v103)
        {
          v32 = *(v30 + 34);
          if (v13 == 1 && (v32 & 1) != 0)
          {
            goto LABEL_18;
          }

          v33 = *(v30 + 33);
          if (v13 == 2 && (v33 & 1) != 0)
          {
            goto LABEL_18;
          }

          if (v13 == 3 || !*(v102 + v7)) && ((v33 | v32))
          {
            goto LABEL_18;
          }
        }

        if (v31 + 100 < v103)
        {
          *(*(a4 + 16584) + v7) = 0;
          *(v29 + v7) = 0;
          *(v100 + v7) = -1;
          *(v99 + 2 * v7) = 2048;
          *(v98 + 36 * gal_E1B_AlmSvId2SubframeId[v7] - 4) = 0;
          v14 = *(a4 + 16560);
          v11 = *(a4 + 16608);
        }
      }

      else if ((v28 & 1) == 0)
      {
        goto LABEL_18;
      }

      v34 = v101 + 88 * v7;
      v35 = v106[0];
      *v34 = v105;
      *(v34 + 16) = v35;
      *(v34 + 80) = *&v108[16];
      v36 = *v108;
      *(v34 + 48) = v107;
      *(v34 + 64) = v36;
      *(v34 + 32) = v106[1];
      *(*(a4 + 16576) + v7) = 1;
      *(v11 + v7) = 1;
      *(v14 + v7) = 1;
      v37 = *(a4 + 16568) + 20 * v7;
      v38 = (v37 + 12);
      v39 = (v37 + 8);
      if (*(v34 + 4) == 5)
      {
        v40 = v39;
      }

      else
      {
        v40 = v38;
      }

      *v40 = 1;
      v6 = v103;
      if (v103 >= 1)
      {
        *(*(a4 + 16632) + v7) = 1;
        Core_Save_GAL_Eph((v7 + 1), 0, v34);
        v14 = *(a4 + 16560);
      }

      goto LABEL_22;
    }

LABEL_25:
    ++v7;
  }

  while (v7 != 36);
  if (v6 >= 1)
  {
    v41 = 0;
    v42 = v94;
    do
    {
      if (*(*(a4 + 16560) + v41) == 1 && (*(*(a5 + 936) + v41) & 1) == 0 && *(v10 + v41) <= 0xA5u && (*(*(a4 + 16616) + v41) != 1 || v103 - *v8 >= 241))
      {
        v107 = 0u;
        memset(v108, 0, 23);
        memset(v106, 0, sizeof(v106));
        v105 = 0u;
        GAL_IntEph = EE_Get_GAL_IntEph((v41 + 1), v103, &v105);
        v44 = *(a4 + 16616);
        if (!GAL_IntEph || *(v44 + v41) == 1 && v105 <= *v8)
        {
          *(v44 + v41) = 0;
        }

        else
        {
          v45 = v106[0];
          *v8 = v105;
          *(v8 + 16) = v45;
          *(v8 + 80) = *&v108[16];
          v46 = *v108;
          *(v8 + 48) = v107;
          *(v8 + 64) = v46;
          *(v8 + 32) = v106[1];
          *(*(a4 + 16576) + v41) = 1;
          *(v44 + v41) = 1;
          Debug_Log_GAL_Eph(2, &v105);
          *(v95 + 8 * v41) = 0x400040004000400;
          *v42 = 1024;
          v42[36] = 1024;
          *(v102 + v41) = 0;
          *(v9 + 76) = 0u;
          v9[3] = 0u;
          v9[4] = 0u;
          v9[1] = 0u;
          v9[2] = 0u;
          *v9 = 0u;
        }
      }

      ++v41;
      v9 = (v9 + 92);
      ++v42;
      v8 += 88;
    }

    while (v41 != 36);
  }

  v47 = 0;
  v48 = v103 / 604800 - 1024;
  v105 = 0u;
  memset(v106, 0, 19);
  v49 = v48 + ((v48 >> 29) & 3);
  v50 = v49 >> 2;
  v51 = 7680;
  v97 = (v48 - (v49 & 0xFFFC));
  while (2)
  {
    if (*(*(a4 + 16624) + v47) == 1 && v103 - *(v104 + 36 * v47) < 1801 || !Core_Get_GAL_Alm((v47 + 1), v103, &v105) || *(*(a4 + 16624) + v47) == 1 && v105 <= *(v104 + 36 * v47))
    {
      goto LABEL_82;
    }

    v52 = *(v102 + v47);
    v53 = v52 != 1 || (BYTE2(v106[1]) & 1) == 0;
    if (!v53 || v52 == 2 && (BYTE1(v106[1]) & 1) != 0)
    {
      v54 = *(a4 + 16560);
      v55 = v54 + v47;
      goto LABEL_78;
    }

    if (v52 != 3 && *(v102 + v47))
    {
      v64 = 1;
    }

    else
    {
      v64 = (BYTE1(v106[1]) | BYTE2(v106[1])) ^ 1;
    }

    v54 = *(a4 + 16560);
    v55 = v54 + v47;
    if ((v64 & 1) == 0 || (*v55 & 1) != 0 || (v65 = *(a4 + 16608), *(v65 + v47) != 1))
    {
      if (v64)
      {
        goto LABEL_102;
      }

      goto LABEL_78;
    }

    v66 = (v101 + 88 * v47);
    v67 = *v66;
    if (*v66 + 3600 > v103)
    {
      if (v68 = *(v66 + 86), v52 == 1) && (v68 & 1) != 0 || (v69 = *(v66 + 85), v52 == 2) && (v69 & 1) != 0 || (v52 == 3 || !*(v102 + v47)) && ((v69 | v68))
      {
LABEL_78:
        *v55 = 0;
        goto LABEL_79;
      }
    }

    if (v67 + 100 < v103)
    {
      *(*(a4 + 16576) + v47) = 0;
      *(v65 + v47) = 0;
      *(v95 + 8 * v47) = 0x400040004000400;
      v94[v47] = 1024;
      *(v93 + 2 * v47) = 1024;
      *(v102 + v47) = 0;
      v70 = (v92 + 92 * v47);
      *(v70 + 76) = 0u;
      v70[3] = 0u;
      v70[4] = 0u;
      v70[1] = 0u;
      v70[2] = 0u;
      *v70 = 0u;
    }

LABEL_102:
    if (v97 > 1)
    {
      if (v97 == 2)
      {
        if (WORD5(v105))
        {
          v71 = v50;
        }

        else
        {
          v71 = v50 + 1;
        }
      }

      else if (v97 == 3)
      {
        if (SWORD5(v105) >= 2)
        {
          v71 = v50;
        }

        else
        {
          v71 = v50 + 1;
        }
      }

      else
      {
        EvCrt_Illegal_Default("DD_Assist_GAL_Alm", 701);
        v71 = v50;
      }
    }

    else if (v97)
    {
      v71 = v50;
    }

    else
    {
      v71 = v50 - (WORD5(v105) == 3);
    }

    WORD5(v105) += 4 * v71;
    v72 = (v104 + 36 * v47);
    v73 = v106[0];
    *v72 = v105;
    v72[1] = v73;
    *(v72 + 8) = v106[1];
    *(*(a4 + 16584) + v47) = 1;
    *(*(a4 + 16624) + v47) = 1;
    v54 = *(a4 + 16560);
    *(v54 + v47) = 1;
    if (v103 >= 1)
    {
      v74 = 0;
      LODWORD(v75) = 0;
      v76 = p_NV;
      v77 = p_NV + 48 * v47;
      v78 = *v72;
      v79 = v72[1];
      *(v77 + 7712) = *(v72 + 8);
      *(v77 + 7696) = v79;
      *(v77 + 7680) = v78;
      v80 = v76 + v51;
      v81 = 55665;
      do
      {
        v82 = *(v80 + v74) ^ BYTE1(v81);
        v81 = 52845 * (v81 + v82) + 22719;
        v75 = (v75 + v82);
        ++v74;
      }

      while (v74 != 40);
      *(v77 + 7672) = v75;
      v54 = *(a4 + 16560);
    }

LABEL_79:
    v56 = 0;
    LODWORD(v57) = 0;
    v58 = p_NV;
    v59 = (p_NV + 7612);
    v61 = *v54;
    v60 = v54[1];
    *(p_NV + 7644) = *(v54 + 8);
    *v59 = v61;
    v59[1] = v60;
    v62 = 55665;
    do
    {
      v63 = *(v58 + 7608 + v56) ^ BYTE1(v62);
      v62 = 52845 * (v62 + v63) + 22719;
      v57 = (v57 + v63);
      ++v56;
    }

    while (v56 != 40);
    *(v58 + 7600) = v57;
    *(v100 + v47) = -1;
    *(v99 + 2 * v47) = 2048;
    *(v98 + 36 * gal_E1B_AlmSvId2SubframeId[v47] - 4) = 0;
LABEL_82:
    ++v47;
    v51 += 48;
    if (v47 != 36)
    {
      continue;
    }

    break;
  }

  *(&v105 + 6) = 0;
  *&v105 = 0;
  if (((*(v91 + 4) - 4) > 2 || v103 - *v91 >= 1801) && Core_Get_GAL_GGTO(v103, &v105) && ((*(v91 + 4) - 4) > 2 || v105 > *v91))
  {
    *v91 = v105;
    *(a4 + 24384) = *(a4 + 24368);
    v83 = *(v91 + 10);
    *(a4 + 24392) = *(v91 + 8) * 2.91038305e-11;
    *(a4 + 24400) = v83 * 4.4408921e-16;
    *(v91 + 40) = 3600 * *(v91 + 12);
    *(v91 + 44) = *(v91 + 13);
    if (v103 >= 1)
    {
      v84 = 0;
      LODWORD(v85) = 0;
      v86 = p_NV;
      v87 = p_NV + 7656;
      *(p_NV + 7656) = v105;
      v88 = 55665;
      do
      {
        v89 = *(v87 + v84) ^ BYTE1(v88);
        v88 = 52845 * (v88 + v89) + 22719;
        v85 = (v85 + v89);
        ++v84;
      }

      while (v84 != 16);
      *(v86 + 7648) = v85;
    }
  }
}

void NK_Set_Accuracy(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = *MEMORY[0x29EDCA608];
  v8 = a4 + 24680;
  if (*(a4 + 25165) == 1)
  {
    if (*(a4 + 24352) > 30000.0)
    {
      *(a4 + 24352) = 0x40DD4C0000000000;
    }

    if (*(a4 + 24360) > 30000.0)
    {
      *(a4 + 24360) = 0x40DD4C0000000000;
    }

    if (*(a4 + 24368) > 30000.0)
    {
      *(a4 + 24368) = 0x40DD4C0000000000;
    }

    if (*(a4 + 24264) > 900000000.0)
    {
      *(a4 + 24264) = 0x41CAD27480000000;
    }

    if (*(a4 + 24272) > 900000000.0)
    {
      *(a4 + 24272) = 0x41CAD27480000000;
    }

    if (*(a4 + 24280) > 900000000.0)
    {
      *(a4 + 24280) = 0x41CAD27480000000;
    }
  }

  v9 = *(a4 + 24312);
  if (v9 >= *(a4 + 24320))
  {
    v9 = *(a4 + 24320);
  }

  if (v9 <= *(a4 + 24328))
  {
    v10 = v9;
  }

  else
  {
    v10 = *(a4 + 24328);
  }

  v11 = a4 + 24656;
  *(a4 + 24696) = v10;
  v12 = v10;
  if ((*(a4 + 16) & 1) == 0)
  {
    if (*(a3 + 11048) || (v13 = 0.0, *(a4 + 12) >= 9))
    {
      v13 = v10;
    }

    v12 = sqrt(v13 + *(a4 + 24256) * 8.98755179e10);
  }

  *(a4 + 24704) = v12;
  *(a4 + 24744) = *(a4 + 24336);
  *(a4 + 24656) = *(a4 + 24352);
  *(a4 + 24680) = *(a4 + 24368);
  v14 = *(a4 + 24264);
  v15 = *(a4 + 24272);
  *(a4 + 24672) = sqrt(v14 + v15);
  *(a4 + 24688) = sqrt(v14 + v15 + *(a4 + 24280));
  v16 = *(a4 + 24288);
  v17 = 0.0;
  v18 = *(a4 + 24296);
  *(a4 + 24712) = sqrt(v16 + 0.0 + v18);
  *(a4 + 24720) = *(a4 + 24392);
  for (i = 3036; i != 3039; ++i)
  {
    v17 = v17 + *(a4 + 8 * i);
  }

  *(a4 + 24728) = sqrt(v17);
  v20 = *(a4 + 24736);
  v21 = *(a4 + 920) * *(a4 + 920);
  v22 = *(a4 + 912) * *(a4 + 912);
  if (v21 < 0.000001 && v22 < 0.000001)
  {
    v22 = 0.000001;
    v21 = 0.000001;
  }

  v23 = 57.2957795 / (v22 + v21) * ((v16 * v21 + v18 * v22) * (57.2957795 / (v22 + v21)));
  v24 = 0.5;
  if (!*(a3 + 11161))
  {
    v24 = 1.0;
  }

  v25 = 20.0;
  if (*(a4 + 936) >= v24)
  {
    v25 = 10.0;
  }

  v26 = sqrt(v23);
  v27 = *(a4 + 944);
  if (v27 >= 4.0 || v26 >= v25 || *(a4 + 24780) > 7u)
  {
    if (v26 >= 180.0)
    {
      v28 = *(a3 + 11144) < v24;
      v29 = v26;
      if (v28)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    *(a4 + 31436) = 1;
    v26 = v25;
  }

  v30 = v26 - v20;
  if (*(a3 + 11116) != 3 || (v29 = v20, v20 < 180.0) && (v29 = v20, v30 <= 1.0))
  {
    if (v27 >= 4.0)
    {
      v29 = v26;
    }

    else
    {
      v29 = v26;
      if (v30 > 5.0)
      {
        v29 = v20 + fmin(0.93 / fmax(fabs(v30), 2.22044605e-16) + 0.07, 0.25) * v30;
      }
    }
  }

LABEL_45:
  if (v20 < 180.0)
  {
    v31 = fabs(*(a3 + 11200));
    if (v31 > 3.0)
    {
      v32 = v31 * 0.5;
      if (v29 < v32)
      {
        *(a4 + 31437) = 1;
        v29 = v32;
      }
    }
  }

  *(a4 + 24736) = fmin(v29, 180.0);
  Comp_ErrorEllipse(v14, v15, *(a4 + 24400), (a4 + 24752), (a4 + 24760), (a4 + 24768));
  if (*(a4 + 964) <= 1 && *(a4 + 960) == 1)
  {
    v33 = *(a4 + 24752);
    if (v33 < 9999000.0 && v33 > 1000.0)
    {
      v34 = *(a4 + 24760);
      v35 = v33 / v34;
      if (v35 > 50.0)
      {
        *(a4 + 24760) = v34 * v35 * 0.04;
      }
    }
  }

  if (!a1 || *a4 <= a1)
  {
    EvLog_v("TTick_Restart Test: %u %u", 2, a1);
  }

  if ((*(a3 + 233) & 1) == 0 && !*(a4 + 968) && (*(a3 + 11028) - 3) >= 0xFFFFFFFE && *(a4 + 24752) > 18.0 && *(a4 + 2840) <= 0.03 && *a4 < a1 + 5000)
  {
    if (*(a3 + 11048) || (v36 = 0.0, *(a4 + 12) >= 9))
    {
      v36 = v10 * 1.11265006e-17;
    }

    if ((*(a4 + 16) & 1) == 0)
    {
      v36 = v36 + *(a4 + 24256) * 0.000001;
    }

    v37 = sqrt(v36) * 1000000.0;
    v38 = -0.5;
    if (v37 > 0.0)
    {
      v38 = 0.5;
    }

    v39 = v37 + v38;
    if (v39 <= 2147483650.0 && (v39 < -2147483650.0 || v39 <= 99900))
    {
      v41 = 0;
      v42 = 0;
      v43 = a4 + 3056;
      do
      {
        if (*(v43 + v41 - 96) == 1)
        {
          v44 = *(v43 + 4 * v41);
          if ((v44 - 1) >= 0x1D)
          {
            if (v44)
            {
              v64 = v42;
              EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
              v42 = v64;
            }

            else if (*(a2 + v41) > 0x23u)
            {
              ++v42;
            }
          }
        }

        ++v41;
      }

      while (v41 != 48);
      if (v42 >= 6)
      {
        v45 = *(a4 + 24752);
        v46 = v45 * dbl_29975F1F0[*(a3 + 11028) == 1];
        if (v46 < 18.0)
        {
          v46 = 18.0;
        }

        *(a4 + 24752) = v46;
        if (v46 < *(a4 + 24760))
        {
          *(a4 + 24760) = v46;
        }

        v47 = *v8;
        v48 = *v8;
        if (*v8 > 50.0)
        {
          v48 = v47 * 0.8;
          *v8 = v47 * 0.8;
          if (v47 * 0.8 < 50.0)
          {
            *v8 = 0x4049000000000000;
            v48 = 50.0;
          }
        }

        EvLog_v("NK_Set_Accuracy: Reset pos acc H %g %g V %g %g", v45, v46, v47, v48);
      }
    }
  }

  v49 = *(a4 + 2840);
  if (*(v8 + 97) <= 5u && v49 <= *(a3 + 10888))
  {
    v49 = *(a3 + 10888);
  }

  v50 = *(a4 + 24672);
  if (v49 > 25.0)
  {
    v51 = sqrt(v49);
    *(a4 + 24696) = v51 * *(a4 + 24696);
    *(a4 + 24656) = vmulq_n_f64(*(a4 + 24656), v51);
    v50 = v51 * v50;
    *(a4 + 24672) = v50;
    *v8 = vmulq_n_f64(*v8, v51);
    *(a4 + 24752) = vmulq_n_f64(*(a4 + 24752), v51);
  }

  if (v50 < 100.0)
  {
    v52 = *(a4 + 2832);
    if (v52 <= 10.0)
    {
      v53 = 1.0;
    }

    else
    {
      *&v77[0] = 0;
      v53 = 1.0;
      if (!R8_EQ((a4 + 2832), v77))
      {
        v53 = log10(v52);
      }
    }

    v54 = *(v8 + 98);
    v55 = *(a4 + 968);
    if (v54 <= 9 && v55 == 1)
    {
      v56 = ((10.0 - v54) / 10.0 + 1.0) * ((10.0 - v54) / 10.0 + 1.0);
    }

    else
    {
      if (v55)
      {
        goto LABEL_111;
      }

      v59 = 0;
      v60 = 0;
      memset(v77, 0, sizeof(v77));
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v61 = (a3 + 2104);
      *v65 = 0u;
      v66 = 0u;
      do
      {
        if (*(a4 + v59 + 2960) == 1 && *(a3 + 7744 + 2 * v59))
        {
          *(v77 + v60) = *(a4 + 7616 + 8 * v59) * *v61;
          v65[v60] = v60;
          ++v60;
        }

        ++v59;
        v61 += 5;
      }

      while (v59 != 48);
      if (!v60)
      {
        goto LABEL_111;
      }

      VecSortIndexAscR8(v77, v60, v65, 1);
      v62 = 75 * v60 + 37;
      if (v62 >= 0x2BC)
      {
        v63 = v62 / 0x64;
      }

      else
      {
        v63 = 6;
      }

      if (v60 < 7)
      {
        v63 = v60;
      }

      v56 = fmax(fabs(*(v77 + v65[v63 - 1])) / (v53 * (*(a4 + 24752) + *(a4 + 24760)) * 0.5), 1.0);
    }

    v53 = v53 * v56;
LABEL_111:
    v57 = fmin(v53, 4.0);
    *(a4 + 24696) = *(a4 + 24696) * v57;
    *(a4 + 24656) = vmulq_n_f64(*(a4 + 24656), v57);
    *(a4 + 24672) = v57 * v50;
    *v8 = vmulq_n_f64(*v8, v57);
    *(a4 + 24752) = vmulq_n_f64(*(a4 + 24752), v57);
  }

  v58 = 0;
  do
  {
    if (*(v11 + v58) > 9999000.0)
    {
      *(v11 + v58) = 0x4163125300000000;
    }

    v58 += 8;
  }

  while (v58 != 120);
}

double lsim13_02SuplConfig(void)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim13_02SuplConfig");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  if ((dword_2A18CCEB4 & 0x400) != 0)
  {
    v2 = 11;
  }

  else
  {
    v2 = 10;
  }

  v15 = v2;
  v16 = v2;
  if (byte_2A18CCEB0)
  {
    v16 = byte_2A18CCEB0;
  }

  if (byte_2A18CCEB1)
  {
    v3 = byte_2A18CCEB1;
  }

  else
  {
    v3 = 10;
  }

  v17 = v3;
  v19 = word_2A18CCEB2;
  v4 = dword_2A18CCEAC;
  v18 = dword_2A18CCEAC;
  v20 = (dword_2A18CCEB4 & 0x80000) != 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PrefPosM,%u\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 68, "lsim13_02SuplConfig", v4);
    LbsOsaTrace_WriteLog(0xCu, __str, v6, 5, 1);
  }

  GN_SUPL_Set_Config(&v15);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "lsim13_03SuplExtdConfig");
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
  }

  v14[6] = (dword_2A18CCEB4 & 0x800) != 0;
  v14[7] = (dword_2A18CCEB4 & 0x1000) != 0;
  v14[2] = byte_2A18CCEB8;
  v14[0] = byte_2A18CCEBA;
  v14[1] = byte_2A18CCEB9;
  v14[5] = byte_2A18CCEBD;
  v14[3] = byte_2A18CCEBF;
  v14[4] = byte_2A18CCEBE;
  GN_SUPL_Extd_Set_Config(v14);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim13_03SuplExtdConfig");
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim13_02SuplConfig");
    LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
  }

  return result;
}

uint64_t lsim13_01SetConfig(uint64_t a1)
{
  v281 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim13_01SetConfig");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_LSIM_CONFIG_IND\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim13_01SetConfig");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "lsim13_04SetUserConfig");
      LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
    }

    if (dword_2A18CCEB4)
    {
      v274 = (v6[564] & 1) == 0;
      if ((dword_2A18CCEB4 & 0x80) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v274 = 0;
      if ((dword_2A18CCEB4 & 0x80) != 0)
      {
LABEL_10:
        v273 = (v6[564] & 0x80) == 0;
LABEL_13:
        memcpy_s("lsim13_04SetUserConfig", 247, &g_LsimUserConfig, 0x244u, v6, 0x244uLL);
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v9 = mach_continuous_time();
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG,Bitmask,%X\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 77, "lsim13_04SetUserConfig", dword_2A18CCEB4);
          LbsOsaTrace_WriteLog(0xCu, __str, v10, 3, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          if ((dword_2A18CCEB4 & 0x80) != 0)
          {
            v12 = 84;
          }

          else
          {
            v12 = 70;
          }

          if ((dword_2A18CCEB4 & 0x40) != 0)
          {
            v13 = 84;
          }

          else
          {
            v13 = 70;
          }

          if ((dword_2A18CCEB4 & 0x20) != 0)
          {
            v14 = 84;
          }

          else
          {
            v14 = 70;
          }

          v218 = v13;
          if ((dword_2A18CCEB4 & 0x10) != 0)
          {
            v15 = 84;
          }

          else
          {
            v15 = 70;
          }

          if ((dword_2A18CCEB4 & 8) != 0)
          {
            v16 = 84;
          }

          else
          {
            v16 = 70;
          }

          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG,UpTrans,%c,CpTrans,%c,PreUpTrans,%c,Mo,%c,Mt,%c\n", v11, "LSM", 73, "lsim13_04SetUserConfig", v16, v15, v14, v218, v12);
          LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          if ((dword_2A18CCEB4 & 0x1000) != 0)
          {
            v19 = 84;
          }

          else
          {
            v19 = 70;
          }

          if ((dword_2A18CCEB4 & 0x800) != 0)
          {
            v20 = 84;
          }

          else
          {
            v20 = 70;
          }

          v233 = v20;
          v235 = v19;
          if ((dword_2A18CCEB4 & 0x400) != 0)
          {
            v21 = 84;
          }

          else
          {
            v21 = 70;
          }

          if ((dword_2A18CCEB4 & 0x2000) != 0)
          {
            v22 = 84;
          }

          else
          {
            v22 = 70;
          }

          v219 = v21;
          if ((dword_2A18CCEB4 & 0x200) != 0)
          {
            v23 = 84;
          }

          else
          {
            v23 = 70;
          }

          if ((dword_2A18CCEB4 & 0x80000) != 0)
          {
            v24 = 84;
          }

          else
          {
            v24 = 70;
          }

          v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG,DisableSuplMsa,%c,SuplMultiSess,%c,Tls,%c,SuplV2,%c,SuplV2Lpp,%c,SuplV2Sha1Override,%c\n", v18, "LSM", 73, "lsim13_04SetUserConfig", v24, v23, v22, v219, v233, v235);
          LbsOsaTrace_WriteLog(0xCu, __str, v25, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v26 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          if (dword_2A18CCEB4)
          {
            v27 = 84;
          }

          else
          {
            v27 = 70;
          }

          if ((dword_2A18CCEB4 & 0x20000) != 0)
          {
            v28 = 84;
          }

          else
          {
            v28 = 70;
          }

          v234 = v28;
          v236 = v27;
          if ((dword_2A18CCEB4 & 0x10000) != 0)
          {
            v29 = 84;
          }

          else
          {
            v29 = 70;
          }

          if ((dword_2A18CCEB4 & 0x40000) != 0)
          {
            v30 = 84;
          }

          else
          {
            v30 = 70;
          }

          v220 = v29;
          if ((dword_2A18CCEB4 & 0x8000) != 0)
          {
            v31 = 84;
          }

          else
          {
            v31 = 70;
          }

          if ((dword_2A18CCEB4 & 0x4000) != 0)
          {
            v32 = 84;
          }

          else
          {
            v32 = 70;
          }

          v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG,Fa,%c,CpMoar,%c,NwPfOverride,%c,WifiPos,%c,SntpRft,%c,GnssChipEn,%c\n", v26, "LSM", 73, "lsim13_04SetUserConfig", v32, v31, v30, v220, v234, v236);
          LbsOsaTrace_WriteLog(0xCu, __str, v33, 4, 1);
        }

        v34 = 0;
        v35 = 0;
        v36 = 1;
        do
        {
          v37 = v36;
          v38 = &g_LsimUserConfig + 268 * v34;
          v39 = *(v38 + 1);
          if (v39 && strnlen(v38 + 8, 0x100uLL))
          {
            v278 = 0;
            v279 = -1;
            v275 = *v38;
            v277 = v39;
            v40 = strncpy(v276, v38 + 8, 0x100uLL);
            v278 = strnlen(v40, 0x100uLL);
            v41 = *(v38 + 132);
            if (!v41)
            {
              v41 = 7275;
            }

            v279 = v41;
            if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v42 = mach_continuous_time();
              v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG,SimIndex,%u,SimId,%u,Addr,%s,Port,%u,AddType,%u\n", (*&g_MacClockTicksToMsRelation * v42), "LSM", 73, "lsim13_04SetUserConfig", v35, v275, v276, v279, v277);
              LbsOsaTrace_WriteLog(0xCu, __str, v43, 4, 1);
            }

            GN_SUPL_Set_SlpInfo(&v275);
          }

          v36 = 0;
          v34 = 1;
          v35 = 1;
        }

        while ((v37 & 1) != 0);
        if (dword_2A18CCEAC == 3)
        {
          dword_2A18CCEAC = 2;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v44 = mach_continuous_time();
          v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG,PrefPosM,%u,UT2,%us,UT3,%us,SuplSessTo,%us\n", (*&g_MacClockTicksToMsRelation * v44), "LSM", 73, "lsim13_04SetUserConfig", dword_2A18CCEAC, byte_2A18CCEB0, byte_2A18CCEB1, word_2A18CCEB2);
          LbsOsaTrace_WriteLog(0xCu, __str, v45, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v46 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          v47 = 70;
          if (byte_2A18CCEBC)
          {
            v48 = 84;
          }

          else
          {
            v48 = 70;
          }

          if (byte_2A18CCEBB)
          {
            v49 = 84;
          }

          else
          {
            v49 = 70;
          }

          if (byte_2A18CCEBA)
          {
            v50 = 84;
          }

          else
          {
            v50 = 70;
          }

          if (byte_2A18CCEB9)
          {
            v51 = 84;
          }

          else
          {
            v51 = 70;
          }

          if (byte_2A18CCEB8)
          {
            v47 = 84;
          }

          v52 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG,GPS ,Auto,%c,Msb,%c,Msa,%c,PredEE,%c,SaEE,%c\n", v46, "LSM", 73, "lsim13_04SetUserConfig", v47, v51, v50, v49, v48);
          LbsOsaTrace_WriteLog(0xCu, __str, v52, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v53 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          v54 = 70;
          if (byte_2A18CCEC1)
          {
            v55 = 84;
          }

          else
          {
            v55 = 70;
          }

          if (byte_2A18CCEC0)
          {
            v56 = 84;
          }

          else
          {
            v56 = 70;
          }

          if (byte_2A18CCEBF)
          {
            v57 = 84;
          }

          else
          {
            v57 = 70;
          }

          if (byte_2A18CCEBE)
          {
            v58 = 84;
          }

          else
          {
            v58 = 70;
          }

          if (byte_2A18CCEBD)
          {
            v54 = 84;
          }

          v59 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG,BDS ,Auto,%c,Msb,%c,Msa,%c,PredEE,%c,SaEE,%c\n", v53, "LSM", 73, "lsim13_04SetUserConfig", v54, v58, v57, v56, v55);
          LbsOsaTrace_WriteLog(0xCu, __str, v59, 4, 1);
        }

        if (v273)
        {
          lsim04_02CloseOtherCpNiSessions(1, 0);
          lsim05_42CloseSuplSessions(3, 0);
        }

        if (v274)
        {
          lsim04_02CloseOtherCpNiSessions(4, 0);
          lsim05_43CloseOtherPospSessions(4, 0);
          lsim05_42CloseSuplSessions(4, 0);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v60 = mach_continuous_time();
          v61 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v60), "LSM", 73, "lsim13_04SetUserConfig");
          LbsOsaTrace_WriteLog(0xCu, __str, v61, 4, 1);
        }

        v62 = *(a1 + 16);
        if (v62)
        {
          free(v62);
        }

        *(a1 + 16) = 0;
        goto LABEL_126;
      }
    }

    v273 = 0;
    goto LABEL_13;
  }

LABEL_126:
  v63 = *(a1 + 24);
  if (v63)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v64 = mach_continuous_time();
      v65 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v64), "LSM", 73, "lsim13_05SetPltConfig");
      LbsOsaTrace_WriteLog(0xCu, __str, v65, 4, 1);
    }

    memcpy_s("lsim13_05SetPltConfig", 364, &g_LsimPltConfig, 0x1Cu, v63, 0x1CuLL);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v66 = mach_continuous_time();
      v67 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,MSA AR Mandatory Mask\n", (*&g_MacClockTicksToMsRelation * v66), "LSM", 73, "lsim13_05SetPltConfig");
      LbsOsaTrace_WriteLog(0xCu, __str, v67, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v68 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((g_LsimPltConfig & 4) != 0)
      {
        v69 = 84;
      }

      else
      {
        v69 = 70;
      }

      if ((g_LsimPltConfig & 2) != 0)
      {
        v70 = 84;
      }

      else
      {
        v70 = 70;
      }

      if (g_LsimPltConfig)
      {
        v71 = 84;
      }

      else
      {
        v71 = 70;
      }

      v72 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,Iono,%c,Rfp,%c,Rft,%c\n", v68, "LSM", 73, "lsim13_05SetPltConfig", v71, v70, v69);
      LbsOsaTrace_WriteLog(0xCu, __str, v72, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v73 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((g_LsimPltConfig & 0x8000000) != 0)
      {
        v74 = 84;
      }

      else
      {
        v74 = 70;
      }

      if ((g_LsimPltConfig & 0x4000000) != 0)
      {
        v75 = 84;
      }

      else
      {
        v75 = 70;
      }

      if ((g_LsimPltConfig & 0x2000000) != 0)
      {
        v76 = 84;
      }

      else
      {
        v76 = 70;
      }

      v249 = v75;
      v261 = v74;
      if ((g_LsimPltConfig & 0x800000) != 0)
      {
        v77 = 84;
      }

      else
      {
        v77 = 70;
      }

      if ((g_LsimPltConfig & 0x1000000) != 0)
      {
        v78 = 84;
      }

      else
      {
        v78 = 70;
      }

      v237 = v77;
      if ((g_LsimPltConfig & 0x100000) != 0)
      {
        v79 = 84;
      }

      else
      {
        v79 = 70;
      }

      if ((g_LsimPltConfig & 0x400000) != 0)
      {
        v80 = 84;
      }

      else
      {
        v80 = 70;
      }

      v221 = v79;
      if ((g_LsimPltConfig & 0x200000) != 0)
      {
        v81 = 84;
      }

      else
      {
        v81 = 70;
      }

      if ((g_LsimPltConfig & 0x80000) != 0)
      {
        v82 = 84;
      }

      else
      {
        v82 = 70;
      }

      v83 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,GPS ,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v73, "LSM", 73, "lsim13_05SetPltConfig", v82, v81, v80, v221, v78, v237, v76, v249, v261);
      LbsOsaTrace_WriteLog(0xCu, __str, v83, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v84 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((g_LsimPltConfig & 0x80000000000) != 0)
      {
        v85 = 84;
      }

      else
      {
        v85 = 70;
      }

      if ((g_LsimPltConfig & 0x40000000000) != 0)
      {
        v86 = 84;
      }

      else
      {
        v86 = 70;
      }

      if ((g_LsimPltConfig & 0x20000000000) != 0)
      {
        v87 = 84;
      }

      else
      {
        v87 = 70;
      }

      v250 = v86;
      v262 = v85;
      if ((g_LsimPltConfig & 0x8000000000) != 0)
      {
        v88 = 84;
      }

      else
      {
        v88 = 70;
      }

      if ((g_LsimPltConfig & 0x10000000000) != 0)
      {
        v89 = 84;
      }

      else
      {
        v89 = 70;
      }

      v238 = v88;
      if ((g_LsimPltConfig & 0x1000000000) != 0)
      {
        v90 = 84;
      }

      else
      {
        v90 = 70;
      }

      if ((g_LsimPltConfig & 0x4000000000) != 0)
      {
        v91 = 84;
      }

      else
      {
        v91 = 70;
      }

      v222 = v90;
      if ((g_LsimPltConfig & 0x2000000000) != 0)
      {
        v92 = 84;
      }

      else
      {
        v92 = 70;
      }

      if ((g_LsimPltConfig & 0x800000000) != 0)
      {
        v93 = 84;
      }

      else
      {
        v93 = 70;
      }

      v94 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,GLON,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v84, "LSM", 73, "lsim13_05SetPltConfig", v93, v92, v91, v222, v89, v238, v87, v250, v262);
      LbsOsaTrace_WriteLog(0xCu, __str, v94, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v95 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((g_LsimPltConfig & 0x800000000000000) != 0)
      {
        v96 = 84;
      }

      else
      {
        v96 = 70;
      }

      if ((g_LsimPltConfig & 0x400000000000000) != 0)
      {
        v97 = 84;
      }

      else
      {
        v97 = 70;
      }

      if ((g_LsimPltConfig & 0x200000000000000) != 0)
      {
        v98 = 84;
      }

      else
      {
        v98 = 70;
      }

      v251 = v97;
      v263 = v96;
      if ((g_LsimPltConfig & 0x80000000000000) != 0)
      {
        v99 = 84;
      }

      else
      {
        v99 = 70;
      }

      if ((g_LsimPltConfig & 0x100000000000000) != 0)
      {
        v100 = 84;
      }

      else
      {
        v100 = 70;
      }

      v239 = v99;
      if ((g_LsimPltConfig & 0x10000000000000) != 0)
      {
        v101 = 84;
      }

      else
      {
        v101 = 70;
      }

      if ((g_LsimPltConfig & 0x40000000000000) != 0)
      {
        v102 = 84;
      }

      else
      {
        v102 = 70;
      }

      v223 = v101;
      if ((g_LsimPltConfig & 0x20000000000000) != 0)
      {
        v103 = 84;
      }

      else
      {
        v103 = 70;
      }

      if ((g_LsimPltConfig & 0x8000000000000) != 0)
      {
        v104 = 84;
      }

      else
      {
        v104 = 70;
      }

      v105 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,BDS ,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v95, "LSM", 73, "lsim13_05SetPltConfig", v104, v103, v102, v223, v100, v239, v98, v251, v263);
      LbsOsaTrace_WriteLog(0xCu, __str, v105, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v106 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((word_2A19267F4 & 0x800) != 0)
      {
        v107 = 84;
      }

      else
      {
        v107 = 70;
      }

      if ((word_2A19267F4 & 0x400) != 0)
      {
        v108 = 84;
      }

      else
      {
        v108 = 70;
      }

      if ((word_2A19267F4 & 0x200) != 0)
      {
        v109 = 84;
      }

      else
      {
        v109 = 70;
      }

      v252 = v108;
      v264 = v107;
      if ((word_2A19267F4 & 0x80) != 0)
      {
        v110 = 84;
      }

      else
      {
        v110 = 70;
      }

      if ((word_2A19267F4 & 0x100) != 0)
      {
        v111 = 84;
      }

      else
      {
        v111 = 70;
      }

      v240 = v110;
      if ((word_2A19267F4 & 0x10) != 0)
      {
        v112 = 84;
      }

      else
      {
        v112 = 70;
      }

      if ((word_2A19267F4 & 0x40) != 0)
      {
        v113 = 84;
      }

      else
      {
        v113 = 70;
      }

      v224 = v112;
      if ((word_2A19267F4 & 0x20) != 0)
      {
        v114 = 84;
      }

      else
      {
        v114 = 70;
      }

      if ((word_2A19267F4 & 8) != 0)
      {
        v115 = 84;
      }

      else
      {
        v115 = 70;
      }

      v116 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,GAL ,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v106, "LSM", 73, "lsim13_05SetPltConfig", v115, v114, v113, v224, v111, v240, v109, v252, v264);
      LbsOsaTrace_WriteLog(0xCu, __str, v116, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v117 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((word_2A19267F2 & 0x800) != 0)
      {
        v118 = 84;
      }

      else
      {
        v118 = 70;
      }

      if ((word_2A19267F2 & 0x400) != 0)
      {
        v119 = 84;
      }

      else
      {
        v119 = 70;
      }

      if ((word_2A19267F2 & 0x200) != 0)
      {
        v120 = 84;
      }

      else
      {
        v120 = 70;
      }

      v253 = v119;
      v265 = v118;
      if ((word_2A19267F2 & 0x80) != 0)
      {
        v121 = 84;
      }

      else
      {
        v121 = 70;
      }

      if ((word_2A19267F2 & 0x100) != 0)
      {
        v122 = 84;
      }

      else
      {
        v122 = 70;
      }

      v241 = v121;
      if ((word_2A19267F2 & 0x10) != 0)
      {
        v123 = 84;
      }

      else
      {
        v123 = 70;
      }

      if ((word_2A19267F2 & 0x40) != 0)
      {
        v124 = 84;
      }

      else
      {
        v124 = 70;
      }

      v225 = v123;
      if ((word_2A19267F2 & 0x20) != 0)
      {
        v125 = 84;
      }

      else
      {
        v125 = 70;
      }

      if ((word_2A19267F2 & 8) != 0)
      {
        v126 = 84;
      }

      else
      {
        v126 = 70;
      }

      v127 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,QZSS,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v117, "LSM", 73, "lsim13_05SetPltConfig", v126, v125, v124, v225, v122, v241, v120, v253, v265);
      LbsOsaTrace_WriteLog(0xCu, __str, v127, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v128 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((word_2A19267F0 & 0x800) != 0)
      {
        v129 = 84;
      }

      else
      {
        v129 = 70;
      }

      if ((word_2A19267F0 & 0x400) != 0)
      {
        v130 = 84;
      }

      else
      {
        v130 = 70;
      }

      if ((word_2A19267F0 & 0x200) != 0)
      {
        v131 = 84;
      }

      else
      {
        v131 = 70;
      }

      v254 = v130;
      v266 = v129;
      if ((word_2A19267F0 & 0x80) != 0)
      {
        v132 = 84;
      }

      else
      {
        v132 = 70;
      }

      if ((word_2A19267F0 & 0x100) != 0)
      {
        v133 = 84;
      }

      else
      {
        v133 = 70;
      }

      v242 = v132;
      if ((word_2A19267F0 & 0x10) != 0)
      {
        v134 = 84;
      }

      else
      {
        v134 = 70;
      }

      if ((word_2A19267F0 & 0x40) != 0)
      {
        v135 = 84;
      }

      else
      {
        v135 = 70;
      }

      v226 = v134;
      if ((word_2A19267F0 & 0x20) != 0)
      {
        v136 = 84;
      }

      else
      {
        v136 = 70;
      }

      if ((word_2A19267F0 & 8) != 0)
      {
        v137 = 84;
      }

      else
      {
        v137 = 70;
      }

      v138 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,SBAS,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v128, "LSM", 73, "lsim13_05SetPltConfig", v137, v136, v135, v226, v133, v242, v131, v254, v266);
      LbsOsaTrace_WriteLog(0xCu, __str, v138, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v139 = mach_continuous_time();
      v140 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,MSB AR Mandatory Mask\n", (*&g_MacClockTicksToMsRelation * v139), "LSM", 73, "lsim13_05SetPltConfig");
      LbsOsaTrace_WriteLog(0xCu, __str, v140, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v141 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((qword_2A19267F6 & 4) != 0)
      {
        v142 = 84;
      }

      else
      {
        v142 = 70;
      }

      if ((qword_2A19267F6 & 2) != 0)
      {
        v143 = 84;
      }

      else
      {
        v143 = 70;
      }

      if (qword_2A19267F6)
      {
        v144 = 84;
      }

      else
      {
        v144 = 70;
      }

      v145 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,Iono,%c,Rfp,%c,Rft,%c\n", v141, "LSM", 73, "lsim13_05SetPltConfig", v144, v143, v142);
      LbsOsaTrace_WriteLog(0xCu, __str, v145, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v146 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((qword_2A19267F6 & 0x8000000) != 0)
      {
        v147 = 84;
      }

      else
      {
        v147 = 70;
      }

      if ((qword_2A19267F6 & 0x4000000) != 0)
      {
        v148 = 84;
      }

      else
      {
        v148 = 70;
      }

      if ((qword_2A19267F6 & 0x2000000) != 0)
      {
        v149 = 84;
      }

      else
      {
        v149 = 70;
      }

      v255 = v148;
      v267 = v147;
      if ((qword_2A19267F6 & 0x800000) != 0)
      {
        v150 = 84;
      }

      else
      {
        v150 = 70;
      }

      if ((qword_2A19267F6 & 0x1000000) != 0)
      {
        v151 = 84;
      }

      else
      {
        v151 = 70;
      }

      v243 = v150;
      if ((qword_2A19267F6 & 0x100000) != 0)
      {
        v152 = 84;
      }

      else
      {
        v152 = 70;
      }

      if ((qword_2A19267F6 & 0x400000) != 0)
      {
        v153 = 84;
      }

      else
      {
        v153 = 70;
      }

      v227 = v152;
      if ((qword_2A19267F6 & 0x200000) != 0)
      {
        v154 = 84;
      }

      else
      {
        v154 = 70;
      }

      if ((qword_2A19267F6 & 0x80000) != 0)
      {
        v155 = 84;
      }

      else
      {
        v155 = 70;
      }

      v156 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,GPS ,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v146, "LSM", 73, "lsim13_05SetPltConfig", v155, v154, v153, v227, v151, v243, v149, v255, v267);
      LbsOsaTrace_WriteLog(0xCu, __str, v156, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v157 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((qword_2A19267F6 & 0x80000000000) != 0)
      {
        v158 = 84;
      }

      else
      {
        v158 = 70;
      }

      if ((qword_2A19267F6 & 0x40000000000) != 0)
      {
        v159 = 84;
      }

      else
      {
        v159 = 70;
      }

      if ((qword_2A19267F6 & 0x20000000000) != 0)
      {
        v160 = 84;
      }

      else
      {
        v160 = 70;
      }

      v256 = v159;
      v268 = v158;
      if ((qword_2A19267F6 & 0x8000000000) != 0)
      {
        v161 = 84;
      }

      else
      {
        v161 = 70;
      }

      if ((qword_2A19267F6 & 0x10000000000) != 0)
      {
        v162 = 84;
      }

      else
      {
        v162 = 70;
      }

      v244 = v161;
      if ((qword_2A19267F6 & 0x1000000000) != 0)
      {
        v163 = 84;
      }

      else
      {
        v163 = 70;
      }

      if ((qword_2A19267F6 & 0x4000000000) != 0)
      {
        v164 = 84;
      }

      else
      {
        v164 = 70;
      }

      v228 = v163;
      if ((qword_2A19267F6 & 0x2000000000) != 0)
      {
        v165 = 84;
      }

      else
      {
        v165 = 70;
      }

      if ((qword_2A19267F6 & 0x800000000) != 0)
      {
        v166 = 84;
      }

      else
      {
        v166 = 70;
      }

      v167 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,GLO ,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v157, "LSM", 73, "lsim13_05SetPltConfig", v166, v165, v164, v228, v162, v244, v160, v256, v268);
      LbsOsaTrace_WriteLog(0xCu, __str, v167, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v168 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((qword_2A19267F6 & 0x800000000000000) != 0)
      {
        v169 = 84;
      }

      else
      {
        v169 = 70;
      }

      if ((qword_2A19267F6 & 0x400000000000000) != 0)
      {
        v170 = 84;
      }

      else
      {
        v170 = 70;
      }

      if ((qword_2A19267F6 & 0x200000000000000) != 0)
      {
        v171 = 84;
      }

      else
      {
        v171 = 70;
      }

      v257 = v170;
      v269 = v169;
      if ((qword_2A19267F6 & 0x80000000000000) != 0)
      {
        v172 = 84;
      }

      else
      {
        v172 = 70;
      }

      if ((qword_2A19267F6 & 0x100000000000000) != 0)
      {
        v173 = 84;
      }

      else
      {
        v173 = 70;
      }

      v245 = v172;
      if ((qword_2A19267F6 & 0x10000000000000) != 0)
      {
        v174 = 84;
      }

      else
      {
        v174 = 70;
      }

      if ((qword_2A19267F6 & 0x40000000000000) != 0)
      {
        v175 = 84;
      }

      else
      {
        v175 = 70;
      }

      v229 = v174;
      if ((qword_2A19267F6 & 0x20000000000000) != 0)
      {
        v176 = 84;
      }

      else
      {
        v176 = 70;
      }

      if ((qword_2A19267F6 & 0x8000000000000) != 0)
      {
        v177 = 84;
      }

      else
      {
        v177 = 70;
      }

      v178 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,BDS ,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v168, "LSM", 73, "lsim13_05SetPltConfig", v177, v176, v175, v229, v173, v245, v171, v257, v269);
      LbsOsaTrace_WriteLog(0xCu, __str, v178, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v179 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((word_2A1926802 & 0x800) != 0)
      {
        v180 = 84;
      }

      else
      {
        v180 = 70;
      }

      if ((word_2A1926802 & 0x400) != 0)
      {
        v181 = 84;
      }

      else
      {
        v181 = 70;
      }

      if ((word_2A1926802 & 0x200) != 0)
      {
        v182 = 84;
      }

      else
      {
        v182 = 70;
      }

      v258 = v181;
      v270 = v180;
      if ((word_2A1926802 & 0x80) != 0)
      {
        v183 = 84;
      }

      else
      {
        v183 = 70;
      }

      if ((word_2A1926802 & 0x100) != 0)
      {
        v184 = 84;
      }

      else
      {
        v184 = 70;
      }

      v246 = v183;
      if ((word_2A1926802 & 0x10) != 0)
      {
        v185 = 84;
      }

      else
      {
        v185 = 70;
      }

      if ((word_2A1926802 & 0x40) != 0)
      {
        v186 = 84;
      }

      else
      {
        v186 = 70;
      }

      v230 = v185;
      if ((word_2A1926802 & 0x20) != 0)
      {
        v187 = 84;
      }

      else
      {
        v187 = 70;
      }

      if ((word_2A1926802 & 8) != 0)
      {
        v188 = 84;
      }

      else
      {
        v188 = 70;
      }

      v189 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,GAL ,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v179, "LSM", 73, "lsim13_05SetPltConfig", v188, v187, v186, v230, v184, v246, v182, v258, v270);
      LbsOsaTrace_WriteLog(0xCu, __str, v189, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v190 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((word_2A1926800 & 0x800) != 0)
      {
        v191 = 84;
      }

      else
      {
        v191 = 70;
      }

      if ((word_2A1926800 & 0x400) != 0)
      {
        v192 = 84;
      }

      else
      {
        v192 = 70;
      }

      if ((word_2A1926800 & 0x200) != 0)
      {
        v193 = 84;
      }

      else
      {
        v193 = 70;
      }

      v259 = v192;
      v271 = v191;
      if ((word_2A1926800 & 0x80) != 0)
      {
        v194 = 84;
      }

      else
      {
        v194 = 70;
      }

      if ((word_2A1926800 & 0x100) != 0)
      {
        v195 = 84;
      }

      else
      {
        v195 = 70;
      }

      v247 = v194;
      if ((word_2A1926800 & 0x10) != 0)
      {
        v196 = 84;
      }

      else
      {
        v196 = 70;
      }

      if ((word_2A1926800 & 0x40) != 0)
      {
        v197 = 84;
      }

      else
      {
        v197 = 70;
      }

      v231 = v196;
      if ((word_2A1926800 & 0x20) != 0)
      {
        v198 = 84;
      }

      else
      {
        v198 = 70;
      }

      if ((word_2A1926800 & 8) != 0)
      {
        v199 = 84;
      }

      else
      {
        v199 = 70;
      }

      v200 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,QZSS,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v190, "LSM", 73, "lsim13_05SetPltConfig", v199, v198, v197, v231, v195, v247, v193, v259, v271);
      LbsOsaTrace_WriteLog(0xCu, __str, v200, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v201 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((word_2A19267FE & 0x800) != 0)
      {
        v202 = 84;
      }

      else
      {
        v202 = 70;
      }

      if ((word_2A19267FE & 0x400) != 0)
      {
        v203 = 84;
      }

      else
      {
        v203 = 70;
      }

      if ((word_2A19267FE & 0x200) != 0)
      {
        v204 = 84;
      }

      else
      {
        v204 = 70;
      }

      v260 = v203;
      v272 = v202;
      if ((word_2A19267FE & 0x80) != 0)
      {
        v205 = 84;
      }

      else
      {
        v205 = 70;
      }

      if ((word_2A19267FE & 0x100) != 0)
      {
        v206 = 84;
      }

      else
      {
        v206 = 70;
      }

      v248 = v205;
      if ((word_2A19267FE & 0x10) != 0)
      {
        v207 = 84;
      }

      else
      {
        v207 = 70;
      }

      if ((word_2A19267FE & 0x40) != 0)
      {
        v208 = 84;
      }

      else
      {
        v208 = 70;
      }

      v232 = v207;
      if ((word_2A19267FE & 0x20) != 0)
      {
        v209 = 84;
      }

      else
      {
        v209 = 70;
      }

      if ((word_2A19267FE & 8) != 0)
      {
        v210 = 84;
      }

      else
      {
        v210 = 70;
      }

      v211 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG,SBAS,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v201, "LSM", 73, "lsim13_05SetPltConfig", v210, v209, v208, v232, v206, v248, v204, v260, v272);
      LbsOsaTrace_WriteLog(0xCu, __str, v211, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v212 = mach_continuous_time();
      v213 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v212), "LSM", 73, "lsim13_05SetPltConfig");
      LbsOsaTrace_WriteLog(0xCu, __str, v213, 4, 1);
    }

    v214 = *(a1 + 24);
    if (v214)
    {
      free(v214);
    }

    *(a1 + 24) = 0;
  }

  lsim13_02SuplConfig();
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v215 = mach_continuous_time();
    v216 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v215), "LSM", 73, "lsim13_01SetConfig");
    LbsOsaTrace_WriteLog(0xCu, __str, v216, 4, 1);
  }

  return 0;
}