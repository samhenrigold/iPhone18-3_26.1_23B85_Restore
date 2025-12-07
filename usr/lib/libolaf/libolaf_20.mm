void Gnm25_15HandleReqRestoreNv(int a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RestoreReqMask,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm25_15HandleReqRestoreNv", a1);
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if ((a1 & 8) != 0 && (dword_2A19397C1 & 1) == 0)
  {
    BYTE2(dword_2A19397C1) = 0;
    LOBYTE(dword_2A19397C1) = 1;
    Gnm27_23RestoreFixedMe(&dword_2A19397C1);
  }

  if ((a1 & 0x10) != 0 && (dword_2A19397C6 & 1) == 0)
  {
    HIWORD(dword_2A19397C6) = 0;
    LOBYTE(dword_2A19397C6) = 1;
    Gnm10_29SendFwActivity(1, 1);
    Gnm29_01RestoreVarMENv(0);
  }
}

uint64_t Gnm25_18CheckRestoreStatus(uint64_t a1, const char *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a1 <= 70)
  {
    if (a1 == 32)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s Success\n");
        goto LABEL_17;
      }

      return 1;
    }

    if (a1 != 67)
    {
LABEL_19:
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v12 = a2;
        v13 = a1;
        v11 = 770;
        v5 = "%10u %s%c %s: #%04hx %s RespStatus,%u\n";
        v10 = v7;
        goto LABEL_21;
      }

      return 0;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v11 = a2;
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = "%10u %s%c %s: %s CS error\n";
LABEL_21:
    v8 = snprintf(__str, 0x40FuLL, v5, v10, "GNM", 87, "Gnm25_18CheckRestoreStatus", v11, v12, v13);
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
    return 0;
  }

  if (a1 == 71)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v11 = a2;
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = "%10u %s%c %s: %s Gen failure\n";
    goto LABEL_21;
  }

  if (a1 == 78)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s Not required\n");
      goto LABEL_17;
    }

    return 1;
  }

  if (a1 != 84)
  {
    goto LABEL_19;
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  mach_continuous_time();
  v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s Not required, TCXO\n");
LABEL_17:
  v6 = 1;
  LbsOsaTrace_WriteLog(0xBu, __str, v4, 4, 1);
  return v6;
}

uint64_t GLON_EphInt2Real(uint64_t result, uint64_t a2)
{
  *a2 = *result;
  v2 = 900 * *(result + 13);
  *(a2 + 8) = *(result + 8);
  *(a2 + 12) = v2;
  v3 = *(result + 12);
  v4 = *(result + 32);
  v5 = *(result + 36);
  v6.f64[0] = *(result + 40);
  v7 = *(result + 52);
  *(a2 + 24) = *(result + 28) * 0.48828125;
  v6.f64[1] = v7;
  *(a2 + 32) = vmulq_f64(v6, xmmword_29975F200);
  *(a2 + 48) = v4 * 0.48828125;
  v8 = *(result + 48);
  v6.f64[0] = *(result + 44);
  v6.f64[1] = *(result + 53);
  *(a2 + 56) = vmulq_f64(v6, xmmword_29975F200);
  v6.f64[0] = v8;
  v9 = *(result + 54);
  *(a2 + 20) = v3;
  v6.f64[1] = v9;
  v10.f64[0] = *(result + 56);
  *(a2 + 72) = v5 * 0.48828125;
  v10.f64[1] = *(result + 60);
  *(a2 + 80) = vmulq_f64(v6, xmmword_29975F200);
  *(a2 + 96) = vmulq_f64(v10, xmmword_29975F210);
  *(a2 + 112) = vcvtd_n_f64_s32(*(result + 55), 0x1EuLL);
  *(a2 + 120) = *(result + 18);
  *(a2 + 124) = *(result + 22);
  *(a2 + 126) = *(result + 16);
  v11 = *(result + 14);
  v12 = (v11 >> 7) & 0x1F;
  v13 = (v11 >> 1) & 0x3F;
  if (v11)
  {
    v14 = 30;
  }

  else
  {
    v14 = 0;
  }

  *(a2 + 16) = v14 + 60 * v13 + 3600 * v12;
  return result;
}

double NK_Publish_Nav_Soln(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2 + 24576;
  *a4 = *(a2 + 24584);
  *(a4 + 4) = *(a2 + 24588);
  if (*(a4 + 16) == 1)
  {
    v9 = *(a3 + 128) ^ 1;
  }

  else
  {
    if ((*(a3 + 128) & 1) != 0 || *(a3 + 140) < 2u || *(a3 + 152))
    {
      goto LABEL_7;
    }

    v9 = 1;
  }

  *(a4 + 16) = v9;
LABEL_7:
  *(a4 + 17) = *(a2 + 24597);
  *(a4 + 20) = *(a3 + 20);
  memcpy((a4 + 32), (a2 + 624), 0x150uLL);
  v10 = *(a4 + 360);
  if (v10 < 0.0)
  {
    do
    {
      v10 = v10 + 360.0;
    }

    while (v10 < 0.0);
    *(a4 + 360) = v10;
  }

  if (v10 > 360.0)
  {
    do
    {
      v10 = v10 + -360.0;
    }

    while (v10 > 360.0);
    *(a4 + 360) = v10;
  }

  v33 = (a3 + 0x2000);
  v11 = *(a4 + 336);
  *(a4 + 920) = *(a4 + 320);
  *(a4 + 936) = v11;
  *(a4 + 952) = *(a4 + 352);
  *(a4 + 960) = v10;
  *(a4 + 19) = *(a2 + 960);
  *(a4 + 12) = *(a2 + 964);
  memcpy((a4 + 368), (a2 + 24776), 0x174uLL);
  v12 = *(a2 + 24600);
  v13 = *(a2 + 24616);
  v14 = *(a2 + 24632);
  *(a4 + 792) = *(a2 + 24648);
  *(a4 + 760) = v13;
  *(a4 + 776) = v14;
  *(a4 + 744) = v12;
  v15 = *(a2 + 24688);
  v16 = *(a2 + 24672);
  v17 = *(a2 + 24704);
  *(a4 + 800) = *(a2 + 24656);
  *(a4 + 816) = v16;
  *(a4 + 832) = v15;
  *(a4 + 848) = v17;
  v18 = *(a2 + 24768);
  v19 = *(a2 + 24752);
  v20 = *(a2 + 24736);
  *(a4 + 864) = *(a2 + 24720);
  *(a4 + 880) = v20;
  *(a4 + 896) = v19;
  *(a4 + 912) = v18;
  *(a4 + 880) = fmin(fmax(*(a4 + 880), 1.0), 180.0);
  *(a4 + 856) = fmax(*(a4 + 856), 0.01);
  v21 = a3 + 7552;
  bzero((a4 + 968), 0x270uLL);
  v22 = 0;
  v23 = 1036;
  v24 = 1160;
  do
  {
    v25 = a1 + 4 * v22;
    if (*(v25 + 412) == 3)
    {
      goto LABEL_28;
    }

    v26 = (a4 + v24);
    *(v26 - 48) = *(v25 + 76);
    *v26 = *(v25 + 412);
    v27 = a4 + v22;
    *(v27 + 1352) = *(a1 + v22 + 604);
    *(v27 + 1544) = *(a2 + v22 + 1176);
    if (*(v21 + 4 * v22) == 1)
    {
      if (*(a2 + v22 + 2960) == 1)
      {
        v28 = *(a2 + 3056 + 4 * v22);
        if (v28 < 0x1E)
        {
          v29 = 1u >> v28;
LABEL_21:
          *(a4 + v22 + 1496) = v29;
          goto LABEL_22;
        }

        EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
      }

      LOBYTE(v29) = 0;
      goto LABEL_21;
    }

LABEL_22:
    v30 = *(v25 + 412);
    if (v30 < 15)
    {
      if (v30 < 13)
      {
        v31 = *(a1 + v23 - 192);
      }

      else
      {
        v31 = *(a1 + v23 - 96);
      }
    }

    else
    {
      v31 = *(a1 + v23);
    }

    *(a4 + 2 * v22 + 1400) = v31;
LABEL_28:
    ++v22;
    v23 += 2;
    v24 += 4;
  }

  while (v22 != 48);
  if (!*(v8 + 12))
  {
    *(v8 + 201) = 0;
    *(v8 + 207) = 0;
    *(v8 + 212) = 0;
    *(v8 + 217) = 0;
    *(a4 + 369) = 0;
    *(a4 + 375) = 0;
    *(a4 + 380) = 0;
    *(a4 + 385) = 0;
    *(a4 + 1496) = 0u;
    *(a4 + 1512) = 0u;
    *(a4 + 1528) = 0u;
  }

  memcpy((a4 + 1592), (a2 + 7616), 0x180uLL);
  *(a4 + 1976) = *(a2 + 2824);
  *(a4 + 1984) = *(a2 + 2832);
  *(a4 + 1992) = v33[1395];
  *(a4 + 2000) = *(a2 + 8400);
  *(a4 + 2016) = v33[1396];
  *(a4 + 2024) = *(a2 + 13976);
  result = *(a2 + 13984);
  *(a4 + 2032) = result;
  *(a4 + 2040) = v33[1397];
  return result;
}

double SV_Data_Decode_Init(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v15 = *MEMORY[0x29EDCA608];
  bzero(__src, 0x35A4uLL);
  v2 = &__src[5604];
  v3 = 392;
  do
  {
    *(v2 - 3) = 0;
    *(v2 - 8) = 0;
    *(v2 - 3) = 0;
    *(v2 - 8) = 0;
    *(v2 - 1) = 0;
    *v2 = 0;
    v2 += 28;
    v3 -= 28;
  }

  while (v3);
  memset(&__src[5972], 0, 427);
  memset(&__src[6400], 0, 93);
  memset(&__src[6496], 0, 86);
  bzero(&__src[6584], 0x193DuLL);
  bzero(&__src[13046], 0x2ACuLL);
  bzero(&__src[13732], 0x10DCuLL);
  memcpy(v1, __src, 0x4680uLL);
  memset_pattern16(v1, &unk_29975F240, 0xC0uLL);
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *(v1 + 192) = v4;
  *(v1 + 208) = v4;
  memset_pattern16((v1 + 224), &unk_29975F240, 0x40uLL);
  *(v1 + 17984) = 0u;
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *(v1 + 18016) = v5;
  *(v1 + 18000) = 0u;
  *(v1 + 18032) = v5;
  memset_pattern16((v1 + 3584), &unk_29975F240, 0x3CuLL);
  *(v1 + 3652) = -1;
  *(v1 + 3644) = -1;
  memset_pattern16((v1 + 3654), &unk_29975F240, 0x14uLL);
  *(v1 + 13041) = -1;
  *&v6 = -1;
  *(&v6 + 1) = -1;
  *(v1 + 13009) = v6;
  *(v1 + 13025) = v6;
  memset_pattern16((v1 + 13046), &unk_29975F220, 0x48uLL);
  memset_pattern16((v1 + 13118), &unk_29975F250, 0x120uLL);
  memset_pattern16((v1 + 13406), &unk_29975F250, 0x48uLL);
  memset_pattern16((v1 + 13478), &unk_29975F250, 0x48uLL);
  v7 = xmmword_299729020;
  v8 = xmmword_299728F20;
  v9 = (v1 + 17911);
  v10 = vdupq_n_s64(4uLL);
  v11 = 36;
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x24uLL), v8)), *v7.i8).u8[0])
    {
      *(v9 - 3) = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x24uLL), *&v8)), *&v7).i8[2])
    {
      *(v9 - 2) = 0;
    }

    if (vuzp1_s16(*&v7, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x24uLL), *&v7))).i32[1])
    {
      *(v9 - 1) = 0;
      *v9 = 0;
    }

    v7 = vaddq_s64(v7, v10);
    v8 = vaddq_s64(v8, v10);
    v9 += 4;
    v11 -= 4;
  }

  while (v11);
  *(v1 + 17980) = -1;
  *&v12 = -1;
  *(&v12 + 1) = -1;
  *(v1 + 6456) = v12;
  *(v1 + 6472) = v12;
  *(v1 + 6485) = -1;
  memset_pattern16((v1 + 6508), &unk_29975F230, 0x4AuLL);
  result = 0.0;
  *(v1 + 6496) = 0;
  *(v1 + 6504) = 0;
  return result;
}

void MAPGen_inpMAP2mST(uint64_t a1, uint64_t a2, double *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  *(a3 + 2) = 10;
  TCU_ConvertOStimeToTTICKtime(a2, *a1, a3);
  memset(v18, 0, sizeof(v18));
  VecSet_3x1(3, v18, *(a1 + 16) * 0.0174532925, *(a1 + 8) * 0.0174532925, *(a1 + 24));
  memset(v17, 0, sizeof(v17));
  CreateC_e_n(v18, v17);
  memset(v16, 0, sizeof(v16));
  v6 = __sincos_stret(*(a1 + 40) * 0.0174532925);
  v7 = 0.0;
  VecSet_3x1(3, v16, v6.__cosval, v6.__sinval, 0.0);
  Mult_Mat_scalar(*(a1 + 48), 3, v16, 3, v16);
  memset(v15, 0, sizeof(v15));
  Mult_MatT_Mat(9);
  memset(v14, 0, sizeof(v14));
  VecSet_3x1(3, v14, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  InsUtil_Geo2ECEF_Iterative(v14, (a3 + 16));
  Add_Mat(3, a3 + 32, 3, v15, 3, a3 + 40);
  Set_Mat_Const(4, 1u, 6, a3 + 4, 0.0);
  Set_Mat_Size(6, a3 + 18, 4, 1);
  *(a3 + 11) = xmmword_29975F270;
  a3[13] = 0.1;
  a3[10] = *(a1 + 56);
  v12 = 0u;
  v13 = 0u;
  InsUtil_ECEF2Geo_Iterative(a3 + 20, &v12, 6378137.0);
  v8 = g_FPE_LogSeverity;
  if ((g_FPE_LogSeverity & 8) == 0)
  {
    goto LABEL_9;
  }

  v9 = mach_continuous_time();
  v10 = 0.0;
  if (g_TCU)
  {
    v7 = *(g_TCU + 8);
    v10 = *a3 - *(g_TCU + 64);
    v11 = 604800.0;
    if (v10 >= 604800.0)
    {
      v11 = -604800.0;
    }

    else if (v10 >= 0.0)
    {
      goto LABEL_8;
    }

    v10 = v10 + v11;
  }

LABEL_8:
  LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: MAP = {tow:%0.3f,LLH_start:[%0.6f %0.6f %0.1f],LLH_end:[%0.6f %0.6f %0.1f],LW:[%0.1f %0.1f]}", "MAPGen_inpMAP2mST", 129, (*&g_MacClockTicksToMsRelation * v9), v7, v10, *(a1 + 8), *(a1 + 16), *(a1 + 24), *&v13, *(&v12 + 1), *(&v13 + 1), *(a1 + 48), *(a1 + 56));
  v8 = g_FPE_LogSeverity;
LABEL_9:
  if ((v8 & 0x200) != 0)
  {
    LC_LOG_NMEA_GENERIC("%s,MAP,%.3f,%.1f,%.1f,%.3f", "$PFPEX", *a3, *(a1 + 48), *(a1 + 56), *(a2 + 40) - *a3);
  }
}

uint64_t MAPGen_run(double *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = *MEMORY[0x29EDCA608];
  v8 = *(a3 + 87784);
  v9 = *(a4 + 128048);
  v33 = 0;
  memset(__dst, 0, sizeof(__dst));
  v31 = 0;
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
  v18 = 0u;
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
    MAPGen_inpMAP2mST(__dst, a5, &v18);
    v12 = *&v18;
    v13 = *a1;
    if (*&v18 < *a1)
    {
      if (*&v18 < v13 + -6.0)
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

          LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f MAP: ignoring measurement in the past! meas.time=%0.3f, prevTime=%0.3f (diff=%0.3f)", "MAPGen_run", 192, (*&g_MacClockTicksToMsRelation * v14), v15, *&v18, *a1, *a1 - *&v18);
        }

        goto LABEL_17;
      }

      if ((g_FPE_LogSeverity & 4) != 0)
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

        LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f MAP: using measurement %0.3f sec in the past. meas.time=%0.3f, prevTime=%0.3f", "MAPGen_run", 201, (*&g_MacClockTicksToMsRelation * v16), v17, *a1 - *&v18, *&v18, *a1);
        v13 = *a1;
      }

      v12 = v13 + 0.001;
      *&v18 = v13 + 0.001;
    }

    *a1 = v12;
    Cyc_Record_Write(v9, &v18);
LABEL_17:
    result = Cyc_Record_Count_Free(v9, 1u);
    if (!result)
    {
      return result;
    }
  }

  DWORD2(v18) = 12;
  *&v18 = v10 + 0.001;
  *&v19 = 0x4000000000000000;
  if (v10 + 0.001 > *a1)
  {
    *a1 = v10 + 0.001;
    return Cyc_Record_Write(v9, &v18);
  }

  return result;
}

uint64_t *lpp_session_detect(unsigned __int8 *a1)
{
  if (!**(GetStaticLppPrivate() + 1))
  {
    return 0;
  }

  for (result = **(GetStaticLppPrivate() + 1); result; result = *result)
  {
    if (*(result + 16) == *a1 && *(result + 5) == *(a1 + 1))
    {
      break;
    }
  }

  return result;
}

_LPP_SESSION *lpp_session_create(void *a1, char a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = operator new(0x58uLL, MEMORY[0x29EDC9418]);
  if (v4)
  {
    v5 = v4;
    _LPP_SESSION::_LPP_SESSION(v4);
  }

  else
  {
    if (*(GetStaticLppPrivate() + 1))
    {
      v6 = *(*(GetStaticLppPrivate() + 1) + 8);
    }

    else
    {
      v6 = 0;
    }

    lpp_session_delete(v6);
    v7 = operator new(0x58uLL, MEMORY[0x29EDC9418]);
    v5 = v7;
    if (!v7)
    {
      v13 = 2;
      v14 = 12288;
      v15 = 105;
      goto LABEL_18;
    }

    _LPP_SESSION::_LPP_SESSION(v7);
  }

  memset_s(v5, 0x58uLL, 0, 0x58uLL);
  *(v5 + 2) = *a1;
  *(v5 + 24) = 0;
  *(v5 + 68) = xmmword_29975F280;
  *(v5 + 84) = 0;
  v8 = operator new(0x10uLL, MEMORY[0x29EDC9418]);
  if (!v8)
  {
    *(v5 + 5) = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v17), "OSA", 69, "lpp_session_create", "lpp_session_create");
      LbsOsaTrace_WriteLog(0xEu, __str, v18, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("lpp_session_create", "lpp_session.cpp", 123, "false && Memory allocation failure");
  }

  *v8 = 0;
  v8[1] = 0;
  *(v5 + 5) = v8;
  if (*(v5 + 16) != 1)
  {
    v13 = 1;
    v14 = 0x4000;
    v15 = 138;
LABEL_18:
    ms_report_exception(v13, v14, v15, "lpp_session_create");
    return v5;
  }

  *(v5 + 64) = a2;
  *(v5 + 6) = lpp_session_up_process_downlink_message;
  *(v5 + 7) = lpp_session_up_process_uplink_pdu;
  v9 = *(GetStaticLppPrivate() + 1);
  if (v9)
  {
    v10 = *v9;
    *v9 = v5;
    *v5 = v10;
    *(v5 + 1) = 0;
    if (v10)
    {
      v9 = v10;
    }

    v9[1] = v5;
  }

  lpp_state_control(0);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionCreate,type,%u,sessionId,%u,Initiater,%u\n", (*&g_MacClockTicksToMsRelation * v11), "PSP", 68, "lpp_session_create", *(v5 + 16), *(v5 + 5), 0);
    LbsOsaTrace_WriteLog(0x13u, __str, v12, 5, 1);
  }

  return v5;
}

void lpp_session_delete(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionDelete,type,%u,sessionId,%u,Initiater,%u\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "lpp_session_delete", *(a1 + 16), *(a1 + 20), 0);
      LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
    }

    v4 = **(a1 + 40);
    if (v4)
    {
      do
      {
        v5 = *v4;
        lpp_transaction_abort(v4);
        v4 = v5;
      }

      while (v5);
    }

    lpp_session_destroy(a1);
    lpp_state_control(1u);
  }

  else
  {

    ms_report_exception(2, 16426, 194, "lpp_session_delete");
  }
}

void lpp_session_up_process_downlink_message(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (*(a1 + 16) == 1)
  {
    if (*(a2 + 8) && *a2)
    {
      v13 = 0;
      v14 = 0;
      __s[1] = 0;
      v11 = 0;
      __s[0] = 0;
      v12 = 0;
      memset_s(__s, 0x30uLL, 0, 0x30uLL);
      v11 = 0;
      v13 = *(a2 + 8);
      v12 = *a2;
      v14 = 0;
      v11 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x578uLL);
      v4 = decode_asn1_message(0, 0, v13, v12, v11, 0);
      v5 = v11;
      *(v11 + 16) = 0;
      v5[32] = 0;
      if (!v5[1392])
      {
        v5[8] = 0;
      }

      if (v4 <= 0)
      {
        if (v5[8] != 1)
        {
          goto LABEL_19;
        }

        v9 = lpp_transaction_process_downlink_message(a1, __s);
        v5 = v11;
        if (v9 == 5)
        {
          goto LABEL_19;
        }

        v6 = v9;
        if (!v11)
        {
          ms_report_exception(2, 16426, 436, "lpp_session_error_detected");
LABEL_13:
          v5 = v11;
LABEL_19:
          GenericFreeSort(v5, &ySDL_T_LASN_LPP_Message);
          if (v11)
          {
            free(v11);
          }

          return;
        }
      }

      else
      {
        v6 = 2;
      }

      if (v5[1392] != 1 || (*(v5 + 12) & 0xFFFFFFFE) != 6)
      {
        v18 = 0;
        v19 = 0;
        v15[1] = 0;
        v16 = 0;
        v15[0] = 0;
        v17 = 0;
        memset_s(v15, 0x30uLL, 0, 0x30uLL);
        v7 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x578uLL);
        v16 = v7;
        v8 = v5[8];
        v7[8] = v8;
        if (v8 == 1)
        {
          *v7 = *v5;
          v7 = v16;
        }

        v7[32] = 0;
        v7[9] = 0;
        v7[1392] = 1;
        *(v7 + 10) = 0;
        *(v7 + 12) = 7;
        *(v7 + 14) = 0;
        v7[68] = 1;
        *(v7 + 16) = v6;
        (*(a1 + 56))(a1, v15);
      }

      goto LABEL_13;
    }
  }

  else
  {

    ms_report_exception(2, 16385, 295, "lpp_session_up_process_downlink_message");
  }
}

void lpp_session_up_process_uplink_pdu(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v5 = 16426;
    v6 = 368;
LABEL_17:

    ms_report_exception(2, v5, v6, "lpp_session_up_process_uplink_pdu");
    return;
  }

  if (!a2)
  {
    v5 = 16442;
    v6 = 374;
    goto LABEL_17;
  }

  v11 = 0;
  v12 = 0;
  v10 = 0;
  v3 = *(a2 + 16);
  v9 = v3;
  *(v3 + 16) = 0;
  *(v3 + 32) = 0;
  v4 = *(v3 + 48) == 5 && *(v3 + 216) == 1 && *(v3 + 168) == 1 && *(v3 + 164) == 1;
  if (!encode_asn1_message(0, 0, &v11, 0, &v10, v3))
  {
    lpp_send_up_uplink_message(a1 + 16, 0, &v10, v4);
  }

  v7 = **(a1 + 40);
  v8 = v9;
  if (v7)
  {
    while (*(v7 + 4) != *v9 || *(v7 + 5) != *(v9 + 1))
    {
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_22;
      }
    }

    if (*(v7 + 25) == 2)
    {
      lpp_transaction_delete(v7);
      v8 = v9;
    }
  }

LABEL_22:
  GenericFreeSort(v8, &ySDL_T_LASN_LPP_Message);
  if (v9)
  {
    free(v9);
  }
}

void lpp_session_destroy(_LPP_SESSION *a1)
{
  v2 = *(a1 + 5);
  v3 = *v2;
  if (*v2)
  {
    do
    {
      v4 = *v3;
      if (v2)
      {
        v5 = v3[1];
        if (v5)
        {
          v6 = v3[1];
        }

        else
        {
          v6 = v2;
        }

        *v6 = v4;
        if (v4)
        {
          v7 = v4;
        }

        else
        {
          v7 = v2;
        }

        v7[1] = v5;
        *v3 = 0;
        v3[1] = 0;
      }

      MEMORY[0x29C29EB20](v3, 0x10A0C405697C842);
      v2 = *(a1 + 5);
      v3 = v4;
    }

    while (v4);
  }

  lpm_utils_linkedlist_destroy(v2);
  StaticLppPrivate = GetStaticLppPrivate();
  v9 = StaticLppPrivate[1];
  if (v9)
  {
    v11 = *a1;
    v10 = *(a1 + 1);
    if (v10)
    {
      v12 = *(a1 + 1);
    }

    else
    {
      v12 = StaticLppPrivate[1];
    }

    *v12 = v11;
    if (v11)
    {
      v9 = v11;
    }

    *(v9 + 8) = v10;
    *a1 = 0;
    *(a1 + 1) = 0;
  }

  memset_s(a1, 0x58uLL, 0, 0x58uLL);

  JUMPOUT(0x29C29EB20);
}

uint64_t lpp_session_exists(int a1)
{
  if (!**(GetStaticLppPrivate() + 1))
  {
    return 0;
  }

  for (result = **(GetStaticLppPrivate() + 1); result; result = *result)
  {
    if (*(result + 20) == a1)
    {
      break;
    }
  }

  return result;
}

void _LPP_SESSION::_LPP_SESSION(_LPP_SESSION *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = -1;
  *(this + 5) = -1;
  *(this + 24) = -1;
  *(this + 84) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  memset_s(this + 64, 1uLL, 0, 1uLL);
  memset_s(this + 68, 8uLL, 0, 8uLL);
  memset_s(this + 76, 8uLL, 0, 8uLL);
}

uint64_t GN_GPS_Write_NMEA(uint64_t a1, char *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {

    return LbsOsaTrace_PrintAsciiBuf(1u, 4u, 1, a2, a1);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Len,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GN_GPS_Write_NMEA", 515, 0);
      LbsOsaTrace_WriteLog(8u, __str, v4, 2, 1);
    }

    return 0;
  }
}

uint64_t GN_GPS_Write_GNB_Debug(uint64_t a1, char *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {

    return LbsOsaTrace_PrintAsciiBuf(0, 4u, 1, a2, a1);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Len,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GN_GPS_Write_GNB_Debug", 515, 0);
      LbsOsaTrace_WriteLog(8u, __str, v4, 2, 1);
    }

    return 0;
  }
}

uint64_t GN_GPS_Write_Nav_Debug(uint64_t a1, char *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {

    return LbsOsaTrace_PrintAsciiBuf(2u, 4u, 1, a2, a1);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Len,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GN_GPS_Write_Nav_Debug", 515, 0);
      LbsOsaTrace_WriteLog(8u, __str, v4, 2, 1);
    }

    return 0;
  }
}

uint64_t GN_GPS_Write_Event_Log(uint64_t a1, char *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {

    return LbsOsaTrace_PrintAsciiBuf(3u, 4u, 0, a2, a1);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Len,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GN_GPS_Write_Event_Log", 515, 0);
      LbsOsaTrace_WriteLog(8u, __str, v4, 2, 1);
    }

    return 0;
  }
}

uint64_t GN_GPS_Write_LCD_Debug(uint64_t a1, char *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {

    return LbsOsaTrace_PrintAsciiBuf(7u, 4u, 0, a2, a1);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Len,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GN_GPS_Write_LCD_Debug", 515, 0);
      LbsOsaTrace_WriteLog(8u, __str, v4, 2, 1);
    }

    return 0;
  }
}

uint64_t GN_GPS_Write_GNB_Ctrl(unsigned int a1, char *a2)
{
  v19[255] = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Len,%u\n", v16);
LABEL_15:
      LbsOsaTrace_WriteLog(8u, __str, v8, 2, 1);
    }

    return 0;
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_15;
    }

    return 0;
  }

  v4 = g_GncPStateInfo;
  v5 = g_GncPStateInfo == 6 || g_GncPStateInfo == 9;
  if (v5)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GncState,%hhu,IgnoredBytes,%hu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GN_GPS_Write_GNB_Ctrl", v4, a1);
      LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
    }

    return a1;
  }

  else
  {
    v10 = 0;
    while (1)
    {
      memset_s(__str, 0x7FCuLL, 0, 0x7FCuLL);
      v11 = &a2[v10];
      v12 = a1 - v10;
      if ((a1 - v10) >= 0x7F5u)
      {
        v13 = 2036;
        while (v11[v13] != 10)
        {
          v5 = v13-- == 0;
          if (v5)
          {
            goto LABEL_26;
          }
        }

        if ((v13 & 0x8000) == 0)
        {
          v12 = v13 + 1;
          goto LABEL_27;
        }

LABEL_26:
        v12 = 2037;
      }

LABEL_27:
      *__str = v12;
      memcpy_s("GN_GPS_Write_GNB_Ctrl", 337, v19, 0x7F5u, v11, v12);
      if (!GncP03_03EncSendGMH(0x4Du, 0x6Du, 0x4Du, __str))
      {
        break;
      }

      v10 += *__str;
      if (a1 <= v10)
      {
        return v10;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(v17, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(v17, 0x40FuLL, "%10u %s%c %s: #%04hx TotalLen,%u,Written,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 87, "GN_GPS_Write_GNB_Ctrl", 774, a1, v10);
      LbsOsaTrace_WriteLog(8u, v17, v15, 2, 1);
    }
  }

  return v10;
}

uint64_t GN_GPS_Hard_Reset_GNB(__n128 a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (g_GncPStateInfo == 9)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FWReset not done\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 73, "GN_GPS_Hard_Reset_GNB");
      LbsOsaTrace_WriteLog(8u, __str, v2, 4, 1);
    }

    return 0;
  }

  else
  {

    return GncP08_03HandleHardReset(a1);
  }
}

uint64_t asn1PE_Version(uint64_t a1, unsigned __int8 *a2)
{
  v4 = Asn1Coder::EncodeInteger(a1, 0, 255, *a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_7:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    return v5;
  }

  v4 = Asn1Coder::EncodeInteger(a1, 0, 255, a2[1]);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  v4 = Asn1Coder::EncodeInteger(a1, 0, 255, a2[2]);
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  return v5;
}

uint64_t asn1PD_Version(uint64_t a1, _BYTE *a2)
{
  v4 = Asn1Coder::DecodeInteger(a1, 0, 0xFFu, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_7:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    return v5;
  }

  v4 = Asn1Coder::DecodeInteger(a1, 0, 0xFFu, a2 + 1);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  v4 = Asn1Coder::DecodeInteger(a1, 0, 0xFFu, a2 + 2);
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  return v5;
}

void ASN1T_UlpMessage::~ASN1T_UlpMessage(ASN1T_UlpMessage *this)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (v2 > 4)
  {
    switch(v2)
    {
      case 5u:
        v6 = *(this + 1);
        if (v6)
        {
          ASN1T_Velocity::U::~U((v6 + 19));
          *__str = v6 + 15;
          std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](__str);
          *__str = v6 + 12;
          std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](__str);
          v7 = v6[8];
          if (v7)
          {
            v6[9] = v7;
            operator delete(v7);
          }

          v8 = v6[5];
          if (v8)
          {
            v6[6] = v8;
            operator delete(v8);
          }

          v9 = v6[2];
          if (v9)
          {
            v6[3] = v9;
            operator delete(v9);
          }

          v10 = 0x1030C40C2B5F699;
          goto LABEL_24;
        }

        break;
      case 6u:
        v6 = *(this + 1);
        if (v6)
        {
          v11 = v6[55];
          if (v11)
          {
            v6[56] = v11;
            operator delete(v11);
          }

          ASN1T_Velocity::U::~U((v6 + 9));
          v12 = v6[2];
          if (v12)
          {
            v6[3] = v12;
            operator delete(v12);
          }

          v10 = 0x1010C402AA3C6D1;
LABEL_24:
          v4 = v6;
LABEL_28:
          MEMORY[0x29C29EB20](v4, v10);
        }

        break;
      case 0xFFFFu:
        return;
      default:
        goto LABEL_31;
    }

LABEL_29:
    *(this + 1) = 0;
    return;
  }

  if (v2 == 1)
  {
    v13 = *(this + 1);
    if (!v13)
    {
      goto LABEL_29;
    }

    ASN1T_SUPLINIT::~ASN1T_SUPLINIT(v13);
    v5 = -1055686863;
    goto LABEL_27;
  }

  if (v2 == 4)
  {
    v3 = *(this + 1);
    if (!v3)
    {
      goto LABEL_29;
    }

    ASN1T_SUPLPOSINIT::~ASN1T_SUPLPOSINIT(v3);
    v5 = -1914762622;
LABEL_27:
    v10 = v5 | 0x1030C4000000000;
    goto LABEL_28;
  }

LABEL_31:
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "SPL", 69, "~ASN1T_UlpMessage", 515);
    LbsOsaTrace_WriteLog(0x12u, __str, v15, 0, 1);
  }
}

void sub_29964A61C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ASN1T_SUPLPOSINIT::~ASN1T_SUPLPOSINIT(ASN1T_SUPLPOSINIT *this)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v2 = *(this + 145);
  if (v2)
  {
    *(this + 146) = v2;
    operator delete(v2);
  }

  ASN1T_Velocity::U::~U((this + 800));
  v8[0] = (this + 768);
  std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v8);
  v8[0] = (this + 744);
  std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v8);
  v3 = *(this + 89);
  if (v3)
  {
    *(this + 90) = v3;
    operator delete(v3);
  }

  v4 = *(this + 86);
  if (v4)
  {
    *(this + 87) = v4;
    operator delete(v4);
  }

  v5 = *(this + 83);
  if (v5)
  {
    *(this + 84) = v5;
    operator delete(v5);
  }

  ASN1T_Velocity::U::~U((this + 288));
  v6 = *(this + 29);
  if (v6)
  {
    *(this + 30) = v6;
    operator delete(v6);
  }

  ASN1T_CellInfo::~ASN1T_CellInfo((this + 80));
  v7 = *(this + 7);
  if (v7)
  {
    *(this + 8) = v7;
    operator delete(v7);
  }
}

uint64_t asn1PE_UlpMessage(uint64_t a1, unsigned __int8 **a2)
{
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v7 = Asn1Coder::EncodeInteger(a1, 0, 7, *a2 - 1);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_15;
    }

    v8 = *a2;
    switch(v8)
    {
      case 6:
        v9 = asn1PE_SUPLEND(a1, a2[1]);
        break;
      case 5:
        v9 = asn1PE_SUPLPOS(a1, a2[1]);
        break;
      case 4:
        v9 = asn1PE_SUPLPOSINIT(a1, a2[1]);
        break;
      default:
        v4 = 1;
        SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
LABEL_14:
        v5 = *(a1 + 8);
        v6 = *(a1 + 12);
        LODWORD(v7) = v4;
        goto LABEL_15;
    }

    v4 = v9;
    if (!v9)
    {
      return v4;
    }

    goto LABEL_14;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  LODWORD(v7) = *(a1 + 16);
LABEL_15:
  SuplAsn1Logger::TraceError(v7, v5, v6);
  return v4;
}

uint64_t asn1PD_UlpMessage(uint64_t a1, unsigned __int16 *a2)
{
  v37 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    return v5;
  }

  if (!BitFromBuffer)
  {
    v35 = 0;
    v6 = Asn1Coder::DecodeInteger(a1, 0, 7u, &v35);
    v5 = v6;
    if (v6)
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 12);
      goto LABEL_7;
    }

    v10 = v35;
    v11 = v35 + 1;
    v12 = *a2;
    if (v35 + 1 == v12)
    {
LABEL_37:
      *a2 = v11;
      if (v10 != 5)
      {
        if (v10 != 4)
        {
          if (v10)
          {
            *(a1 + 16) = 4;
            SuplAsn1Logger::TraceError(4u, *(a1 + 8), *(a1 + 12));
            v5 = 4;
LABEL_55:
            SuplAsn1Logger::TraceError(v5, *(a1 + 8), *(a1 + 12));
            return v5;
          }

          v25 = *(a2 + 1);
          if (v25)
          {
            goto LABEL_43;
          }

          v26 = operator new(0x238uLL, MEMORY[0x29EDC9418]);
          if (v26)
          {
            v25 = v26;
            ASN1T_SUPLINIT::ASN1T_SUPLINIT(v26);
            *(a2 + 1) = v27;
LABEL_43:
            v28 = asn1PD_SUPLINIT(a1, v25);
            goto LABEL_52;
          }

          *(a2 + 1) = 0;
          if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
          {
            goto LABEL_61;
          }

LABEL_62:
          v5 = 2;
          *(a1 + 16) = 2;
          return v5;
        }

        v29 = *(a2 + 1);
        if (v29)
        {
          goto LABEL_47;
        }

        v30 = operator new(0x200uLL, MEMORY[0x29EDC9418]);
        v29 = v30;
        if (v30)
        {
          *(v30 + 136) = 0u;
          *(v30 + 120) = 0u;
          *(v30 + 104) = 0u;
          *(v30 + 88) = 0u;
          *(v30 + 72) = 0u;
          *(v30 + 56) = 0u;
          *(v30 + 40) = 0u;
          *(v30 + 24) = 0u;
          *(v30 + 8) = 0u;
          v30[144] = -1;
          *(v30 + 168) = 0u;
          *(v30 + 184) = 0u;
          *(v30 + 200) = 0u;
          *(v30 + 216) = 0u;
          *(v30 + 232) = 0u;
          *(v30 + 248) = 0u;
          *(v30 + 152) = 0u;
          *(v30 + 63) = 0;
          *(v30 + 264) = 0u;
          *(v30 + 280) = 0u;
          *(v30 + 296) = 0u;
          *(v30 + 312) = 0u;
          *(v30 + 328) = 0u;
          *(v30 + 344) = 0u;
          *(v30 + 360) = 0u;
          *(v30 + 376) = 0u;
          *(v30 + 392) = 0u;
          *(v30 + 408) = 0u;
          *(v30 + 424) = 0u;
          *(v30 + 440) = 0u;
          *(v30 + 456) = 0u;
          *(v30 + 472) = 0u;
          *(v30 + 488) = 0u;
          *v30 = 0;
          *(a2 + 1) = v30;
LABEL_47:
          v28 = asn1PD_SUPLPOS(a1, v29);
          goto LABEL_52;
        }

        *(a2 + 1) = 0;
        if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          goto LABEL_62;
        }

LABEL_61:
        bzero(__str, 0x410uLL);
        v33 = mach_continuous_time();
        v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v33), "SPL", 69, "asn1PD_UlpMessage", 1537);
        LbsOsaTrace_WriteLog(0x12u, __str, v34, 0, 1);
        goto LABEL_62;
      }

      v31 = *(a2 + 1);
      if (!v31)
      {
        v32 = operator new(0x1D0uLL, MEMORY[0x29EDC9418]);
        v31 = v32;
        if (!v32)
        {
          *(a2 + 1) = 0;
          if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        *v32 = 0;
        v32[2] = 0;
        *(v32 + 3) = 0;
        *(v32 + 4) = 0;
        *(v32 + 2) = 0;
        *(v32 + 44) = 0;
        *(v32 + 13) = 0;
        v32[56] = -1;
        *(v32 + 29) = 0;
        v32[60] = 0;
        *(v32 + 10) = -16777216;
        *(v32 + 8) = 255;
        v32[8] = 0;
        *(v32 + 55) = 0;
        *(v32 + 56) = 0;
        *(v32 + 57) = 0;
        *(v32 + 88) = 0u;
        *(v32 + 104) = 0u;
        *(v32 + 120) = 0u;
        *(v32 + 136) = 0u;
        *(v32 + 152) = 0u;
        *(v32 + 168) = 0u;
        *(v32 + 184) = 0u;
        *(v32 + 200) = 0u;
        *(v32 + 216) = 0u;
        *(v32 + 232) = 0u;
        *(v32 + 248) = 0u;
        *(v32 + 72) = 0u;
        *(v32 + 264) = 0u;
        *(v32 + 280) = 0u;
        *(v32 + 296) = 0u;
        *(v32 + 312) = 0u;
        *(v32 + 328) = 0u;
        *(v32 + 344) = 0u;
        *(v32 + 360) = 0u;
        *(v32 + 376) = 0u;
        *(v32 + 392) = 0u;
        *(v32 + 408) = 0u;
        *(v32 + 417) = 0u;
        *(a2 + 1) = v32;
      }

      v28 = asn1PD_SUPLEND(a1, v31);
LABEL_52:
      v5 = v28;
      if (!v28)
      {
        return v5;
      }

      goto LABEL_55;
    }

    if (*a2 <= 4u)
    {
      if (v12 != 1)
      {
        if (v12 != 4)
        {
          goto LABEL_37;
        }

        v14 = a2 + 4;
        v13 = *(a2 + 1);
        if (!v13)
        {
          goto LABEL_36;
        }

        ASN1T_SUPLPOSINIT::~ASN1T_SUPLPOSINIT(v13);
        v16 = -1914762622;
        goto LABEL_25;
      }

      v14 = a2 + 4;
      v21 = *(a2 + 1);
      if (v21)
      {
        ASN1T_SUPLINIT::~ASN1T_SUPLINIT(v21);
        v16 = -1055686863;
LABEL_25:
        v20 = v16 | 0x1030C4000000000;
LABEL_35:
        MEMORY[0x29C29EB20](v15, v20);
      }

LABEL_36:
      *v14 = 0;
      goto LABEL_37;
    }

    if (v12 == 5)
    {
      v14 = a2 + 4;
      v17 = *(a2 + 1);
      if (!v17)
      {
        goto LABEL_36;
      }

      ASN1T_Velocity::U::~U((v17 + 19));
      *__str = v17 + 15;
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](__str);
      *__str = v17 + 12;
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](__str);
      v22 = v17[8];
      if (v22)
      {
        v17[9] = v22;
        operator delete(v22);
      }

      v23 = v17[5];
      if (v23)
      {
        v17[6] = v23;
        operator delete(v23);
      }

      v24 = v17[2];
      if (v24)
      {
        v17[3] = v24;
        operator delete(v24);
      }

      v20 = 0x1030C40C2B5F699;
    }

    else
    {
      if (v12 != 6)
      {
        goto LABEL_37;
      }

      v14 = a2 + 4;
      v17 = *(a2 + 1);
      if (!v17)
      {
        goto LABEL_36;
      }

      v18 = v17[55];
      if (v18)
      {
        v17[56] = v18;
        operator delete(v18);
      }

      ASN1T_Velocity::U::~U((v17 + 9));
      v19 = v17[2];
      if (v19)
      {
        v17[3] = v19;
        operator delete(v19);
      }

      v20 = 0x1010C402AA3C6D1;
    }

    v15 = v17;
    goto LABEL_35;
  }

  Asn1Coder::SkipChoiceExtension(a1);
  v5 = v6;
  if (v6)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 12);
LABEL_7:
    SuplAsn1Logger::TraceError(v6, v7, v8);
  }

  return v5;
}

uint64_t SuplMessage::Encode(SuplMessage *this)
{
  v2 = *this;
  *(v2 + 16) = 0;
  *(v2 + 1) = 0;
  v3 = *(*this + 8);
  v4 = SuplMessage::asn1PE_UlpPdu(this);
  if (!v4)
  {
    v5 = *this;
    v6 = *(*this + 8);
    v7 = *(*this + 12);
    if (v7)
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = *(*this + 8);
    }

    **(this + 1) = v8;
    *(v5 + 8) = v3;
    v4 = Asn1Coder::EncodeInteger(v5, 0, 0xFFFF, v8);
    v9 = *this;
    if (!v4)
    {
      *(v9 + 2) = v6;
      *(v9 + 3) = v7;
    }

    v10 = *v9;
    v11 = **(this + 1);
    v12 = *(v10 + 8) - *v10;
    if (v11 <= v12)
    {
      if (v11 < v12)
      {
        *(v10 + 8) = *v10 + v11;
      }
    }

    else
    {
      std::vector<unsigned char>::__append(v10, v11 - v12);
    }
  }

  return v4;
}

uint64_t SuplMessage::asn1PE_UlpPdu(SuplMessage *this)
{
  v2 = *this;
  v3 = 0x8000;
  do
  {
    Asn1Coder::AddBitToBuffer(v2, 0);
    v4 = v3 > 1;
    v3 >>= 1;
  }

  while (v4);
  v5 = *(v2 + 16);
  v6 = *this;
  if (v5)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 12);
    LODWORD(v6) = v5;
LABEL_11:
    SuplAsn1Logger::TraceError(v6, v7, v8);
    return v5;
  }

  v5 = asn1PE_Version(v6, (*(this + 1) + 2));
  v6 = *this;
  if (v5)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 12);
    LODWORD(v6) = v5;
    goto LABEL_11;
  }

  v5 = asn1PE_SessionID(v6, (*(this + 1) + 24));
  v6 = *this;
  if (v5)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 12);
    LODWORD(v6) = v5;
    goto LABEL_11;
  }

  v6 = asn1PE_UlpMessage(v6, (*(this + 1) + 8));
  v5 = v6;
  if (v6)
  {
    v7 = *(*this + 8);
    v8 = *(*this + 12);
    goto LABEL_11;
  }

  return v5;
}

uint64_t SuplMessage::Decode(SuplMessage *this)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *this;
  *(v1 + 16) = 0;
  *(v1 + 8) = 0;
  v2 = SuplMessage::asn1PD_UlpPdu(this);
  if (v2 && LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 69, "Decode", 770);
    LbsOsaTrace_WriteLog(0x12u, __str, v4, 0, 1);
  }

  return v2;
}

uint64_t SuplMessage::asn1PD_UlpPdu(SuplMessage *this)
{
  v2 = Asn1Coder::DecodeInteger(*this, 0, 0xFFFFu, *(this + 1));
  v3 = *this;
  if (v2)
  {
    v4 = *(v3 + 8);
    v5 = *(v3 + 12);
    LODWORD(v3) = v2;
LABEL_15:
    SuplAsn1Logger::TraceError(v3, v4, v5);
    return v2;
  }

  v2 = asn1PD_Version(v3, (*(this + 1) + 2));
  v3 = *this;
  if (v2)
  {
    v4 = *(v3 + 8);
    v5 = *(v3 + 12);
    LODWORD(v3) = v2;
    goto LABEL_15;
  }

  v2 = asn1PD_SessionID(v3, *(this + 1) + 24);
  v3 = *this;
  if (v2)
  {
    v4 = *(v3 + 8);
    v5 = *(v3 + 12);
    LODWORD(v3) = v2;
    goto LABEL_15;
  }

  v3 = asn1PD_UlpMessage(v3, (*(this + 1) + 8));
  if (v3)
  {
    v2 = v3;
    v4 = *(*this + 8);
    v5 = *(*this + 12);
    goto LABEL_15;
  }

  v4 = *(*this + 8);
  v5 = *(*this + 12);
  if (v5)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = *(*this + 8);
  }

  if (v6 != **(this + 1))
  {
    v2 = 6;
    LODWORD(v3) = 6;
    goto LABEL_15;
  }

  return 0;
}

void ASN1T_SUPLINIT::~ASN1T_SUPLINIT(ASN1T_SUPLINIT *this)
{
  v2 = *(this + 65);
  if (v2)
  {
    *(this + 66) = v2;
    operator delete(v2);
  }

  v3 = *(this + 61);
  if (v3)
  {
    *(this + 62) = v3;
    operator delete(v3);
  }

  v4 = *(this + 53);
  if (v4)
  {
    *(this + 54) = v4;
    operator delete(v4);
  }

  v5 = *(this + 50);
  if (v5)
  {
    *(this + 51) = v5;
    operator delete(v5);
  }

  v6 = *(this + 47);
  if (v6)
  {
    *(this + 48) = v6;
    operator delete(v6);
  }

  if (*(this + 35))
  {
    std::vector<ASN1T_SupportedWLANApData>::clear[abi:ne200100](this + 35);
    operator delete(*(this + 35));
  }

  v7 = *(this + 27);
  if (v7)
  {
    *(this + 28) = v7;
    operator delete(v7);
  }

  v8 = *(this + 24);
  if (v8)
  {
    *(this + 25) = v8;
    operator delete(v8);
  }

  v9 = *(this + 18);
  if (v9)
  {
    *(this + 19) = v9;
    operator delete(v9);
  }

  v10 = *(this + 15);
  if (v10)
  {
    *(this + 16) = v10;
    operator delete(v10);
  }

  v11 = *(this + 12);
  if (v11)
  {
    *(this + 13) = v11;
    operator delete(v11);
  }

  v12 = *(this + 6);
  if (v12)
  {
    *(this + 7) = v12;
    operator delete(v12);
  }

  v13 = *(this + 2);
  if (v13)
  {
    *(this + 3) = v13;
    operator delete(v13);
  }
}

void std::vector<ASN1T_SupportedWLANApData>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

double CCH_initStates(int *a1)
{
  Set_Mat_Const(0xF, 0x24u, 0x400, a1, NAN);
  a1[2050] = 0;
  Set_Mat_Const(1, 0x17u, 0x20, a1 + 2052, NAN);
  Set_Vec_Values_By_Idx(0.0, 32, a1 + 2052, __const__Z16CCH_resetFBufferP12CCH_StateObj_ind);
  a1[2118] = 0;
  Set_Mat_Const(1, 0x24u, 0x33, a1 + 2120, 0.0);
  Set_Mat_Size(0x33, a1 + 2224, 0, 0);
  Set_Mat_Size(0x33, a1 + 2328, 0, 0);
  Set_Mat_Size(0x33, a1 + 2432, 0, 0);
  Set_Mat_Size(0x20, a1 + 2536, 0, 0);

  Set_Mat_Size(0x400, a1 + 2602, 0, 0);
  return result;
}

BOOL CCH_Run(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v137 = *MEMORY[0x29EDCA608];
  memset(v67, 0, sizeof(v67));
  Append_To_Row_Vec(32, (v1 + 8208), 0x33, v67);
  Append_To_Row_Vec(32, v9, 0x33, v67);
  Copy_SubMat_to_Mat(1.0, 51, v67, v10[2118], 0, 1024, v10);
  v10[2118] = (v10[2118] + 1) % 0xFu;
  v11 = v10[2050];
  if ((v11 + 1) < 0x1E)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 30;
  }

  v10[2050] = v12;
  Set_Mat_Const(1, 0x17u, 0x20, v10 + 2052, NAN);
  Set_Vec_Values_By_Idx(0.0, 32, v10 + 2052, __const__Z16CCH_resetFBufferP12CCH_StateObj_ind);
  if (v10[2050] == 30)
  {
    v13 = v10[2118];
    if (*v10 != 15 || v10[1] != 36)
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

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrix size (%ux%u) is not asexpected (%ux%u)!", "CCH_prepFeatures", 381, v14, v15, *v10, v10[1], 15, 36);
      }

      g_FPE_AssertFlag = 1;
    }

    v55 = v5;
    v56 = v3;
    Set_Mat_Const(0xF, 0x33u, 0x400, v10 + 2602, 0.0);
    v17 = 0;
    v18 = 0;
    v19 = v10[1];
    v20 = v10 + 2604;
    v21 = v10[2603];
    do
    {
      v22 = v19 * (v13 % 0xF);
      v23 = v17;
      v24 = 36;
      do
      {
        *&v20[2 * v23++] = *&v10[2 * v22++ + 2];
        --v24;
      }

      while (v24);
      ++v18;
      v17 += v21;
      ++v13;
    }

    while (v18 != 15);
    v25 = 36;
    Copy_SubMat_from_Mat(1.0, 1024, v10 + 2602, 14, 0, 1, 36, 51, v10 + 2120);
    v135 = 0u;
    v134 = 0u;
    v133 = 0u;
    v132 = 0u;
    v131 = 0u;
    v130 = 0u;
    v129 = 0u;
    v127 = xmmword_29975F290;
    v136 = 0;
    v128 = 26;
    Min_Mat_Scalar_Col_By_Idx(83.0, 1024, v10 + 2602, &v127);
    Max_Mat_Scalar_Col_By_Idx(-83.0, 1024, v10 + 2602, &v127);
    v66 = 0;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    v57 = xmmword_29975F2A0;
    v58 = 21;
    Min_Mat_Scalar_Col_By_Idx(500.0, 1024, v10 + 2602, &v57);
    Max_Mat_Scalar_Col_By_Idx(-500.0, 1024, v10 + 2602, &v57);
    Min_Mat_Scalar_Col_By_Idx(200.0, 1024, v10 + 2602, dword_29975F3A0);
    Max_Mat_Scalar_Col_By_Idx(-200.0, 1024, v10 + 2602, dword_29975F3A0);
    v119 = 0u;
    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v118 = 0x300000001;
    *(&v119 + 4) = 0x200000001;
    Min_Mat_Scalar_Col_By_Idx(100.0, 1024, v10 + 2602, &v118);
    Max_Mat_Scalar_Col_By_Idx(-100.0, 1024, v10 + 2602, &v118);
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    v108 = xmmword_29975F2B0;
    v117 = 0;
    v109 = 8;
    Min_Mat_Scalar_Col_By_Idx(100.0, 1024, v10 + 2602, &v108);
    Max_Mat_Scalar_Col_By_Idx(-100.0, 1024, v10 + 2602, &v108);
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v98 = xmmword_29975F2C0;
    v107 = 0;
    v99 = 11;
    Min_Mat_Scalar_Col_By_Idx(500.0, 1024, v10 + 2602, &v98);
    Max_Mat_Scalar_Col_By_Idx(-500.0, 1024, v10 + 2602, &v98);
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    v93 = 0u;
    v92 = 0u;
    v91 = 0u;
    v90 = 0u;
    v88 = xmmword_29975F2D0;
    v97 = 0;
    v89 = 35;
    Abs_Mat_Col_By_Idx(1024, v10 + 2602, &v88);
    Min_Mat_Scalar_Col_By_Idx(10.0, 1024, v10 + 2602, &v88);
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    v83 = 0u;
    v82 = 0u;
    v81 = 0u;
    v80 = 0u;
    v78 = xmmword_29975F2E0;
    v87 = 0;
    v79 = 32;
    Abs_Mat_Col_By_Idx(1024, v10 + 2602, &v78);
    Min_Mat_Scalar_Col_By_Idx(10.0, 1024, v10 + 2602, &v78);
    v76 = 0u;
    v75 = 0u;
    v74 = 0u;
    v73 = 0u;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v68 = xmmword_29975F2F0;
    v77 = 0;
    v69 = 29;
    Min_Mat_Scalar_Col_By_Idx(10.0, 1024, v10 + 2602, &v68);
    Max_Mat_Scalar_Col_By_Idx(-10.0, 1024, v10 + 2602, &v68);
    v26 = 0;
    v27 = v10[2602];
    do
    {
      if (v27)
      {
        v28 = 0;
        v29 = v10[2603];
        v30 = dword_29975F428[v26 + 2];
        v31 = v25;
        do
        {
          *&v20[2 * v31] = 0;
          ++v28;
          v31 += v29;
          v30 += v29;
        }

        while (v27 != v28);
      }

      ++v26;
      ++v25;
    }

    while (v26 != 15);
    if (v55 && (g_FPE_LogSeverity & 8) != 0)
    {
      v32 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v33 = g_TCU ? *(g_TCU + 8) : 0.0;
      v34 = 14 * v10[2603];
      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f CCH In 1: VI %5.2f %5.2f %5.2f LS %2d %6.2f %6.2f ExP %7.3f %7.3f %7.3f %7.2f %7.2f %7.2f GNSS %2d %2d %6.3f %6.3f %6.3f %6.3f %2d", "CCH_Run", 541, v32, v33, *&v20[2 * v34], *&v20[2 * (v34 | 1)], *&v20[2 * v34 + 4], *&v20[2 * v34 + 6], *&v20[2 * v34 + 8], *&v20[2 * v34 + 10], *&v20[2 * v34 + 12], *&v20[2 * v34 + 14], *&v20[2 * v34 + 16], *&v20[2 * v34 + 18], *&v20[2 * v34 + 20], *&v20[2 * v34 + 22], *&v20[2 * v34 + 24], *&v20[2 * v34 + 26], *&v20[2 * v34 + 28], *&v20[2 * v34 + 30], *&v20[2 * v34 + 32], *&v20[2 * v34 + 34], *&v20[2 * v34 + 36]);
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        v35 = mach_continuous_time();
        v36 = g_TCU ? *(g_TCU + 8) : 0.0;
        v37 = 14 * v10[2603];
        LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f CCH In 2: LS %7.2f %7.2f %7.2f FIV %1d %1d Vel %6.2f %6.2f %6.2f Vi %7.4f %7.4f %7.4f BA %7.5f %7.5f %7.5f BG %7.5f %7.5f %7.5f", "CCH_Run", 560, (*&g_MacClockTicksToMsRelation * v35), v36, *&v20[2 * (v37 + 19)], *&v20[2 * (v37 + 20)], *&v20[2 * (v37 + 21)], *&v20[2 * (v37 + 22)], *&v20[2 * (v37 + 23)], *&v20[2 * (v37 + 24)], *&v20[2 * (v37 + 25)], *&v20[2 * (v37 + 26)], *&v20[2 * (v37 + 27)], *&v20[2 * (v37 + 28)], *&v20[2 * (v37 + 29)], *&v20[2 * (v37 + 30)], *&v20[2 * (v37 + 31)], *&v20[2 * (v37 + 32)], *&v20[2 * (v37 + 33)], *&v20[2 * (v37 + 34)], *&v20[2 * (v37 + 35)]);
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

          v40 = 14 * v10[2603];
          LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f CCH In 3: VI %1d %1d %1d LS %1d %1d %1d ExP %1d %1d %1d %1d %1d %1d LS %1d %1d %1d", "CCH_Run", 577, v38, v39, *&v20[2 * (v40 + 36)], *&v20[2 * (v40 + 37)], *&v20[2 * (v40 + 38)], *&v20[2 * (v40 + 39)], *&v20[2 * (v40 + 40)], *&v20[2 * (v40 + 41)], *&v20[2 * (v40 + 42)], *&v20[2 * (v40 + 43)], *&v20[2 * (v40 + 44)], *&v20[2 * (v40 + 45)], *&v20[2 * (v40 + 46)], *&v20[2 * (v40 + 47)], *&v20[2 * (v40 + 48)], *&v20[2 * (v40 + 49)], *&v20[2 * (v40 + 50)]);
        }
      }
    }

    Sub_Mat(1024, v10 + 2602, 1024, (*(v10 + 2326) + 119688), 0x400, v10 + 2602);
    ElMult_Mat_Mat(1024, v10 + 2602, 1024, (*(v10 + 2326) + 127888), 0x400, v10 + 2602);
    bzero(&v57, 0x2008uLL);
    Set_Mat_Const(1, 1u, 0x400, &v57, 1.0);
    v41 = 0;
    v42 = &dword_29975F4B8;
    do
    {
      v43 = 0;
      v44 = *(&unk_29975F4B0 + 34 * v41 + 1);
      do
      {
        bzero(&v127, 0x2008uLL);
        v45 = 1;
        Set_Mat_Size(0x400, &v127, 5 * v44 + 1, 1);
        v46 = 0;
        *(&v127 + 1) = 0x3FF0000000000000;
        do
        {
          if (v44)
          {
            v47 = v10[2603] * dword_29975F978[34 * v43 + 2 + v46];
            v48 = v42;
            v49 = v45;
            v50 = v44;
            do
            {
              v51 = *v48++;
              *(&v127 + ++v49) = *&v20[2 * (v51 + v47)];
              --v50;
            }

            while (v50);
          }

          ++v46;
          v45 += v44;
        }

        while (v46 != 5);
        Mult_Mat_Mat(1024);
        Append_To_Col_Vec(1024, &v127, 0x400, &v57);
        ++v43;
      }

      while (v43 != 3);
      ++v41;
      v42 += 34;
    }

    while (v41 != 9);
    v52 = 0.0;
    Max_Mat_Scalar(0.0, 1024, &v57, 0x400, &v57);
    Mult_Mat_Mat(11300);
    Max_Mat_Scalar(0.0, 51, v10 + 2224, 0x33, v10 + 2224);
    Append_On_Left_Vec(1.0, 51, v10 + 2224, 0x33, (v10 + 2328));
    Mult_Mat_Mat(2601);
    Max_Mat_Scalar(0.0, 51, v10 + 2328, 0x33, v10 + 2328);
    Append_On_Left_Vec(1.0, 51, v10 + 2328, 0x33, (v10 + 2432));
    Mult_Mat_Mat(1024);
    Max_Mat_Scalar(0.0, 51, v10 + 2432, 0x33, v10 + 2432);
    Append_On_Left_Vec(1.0, 51, v10 + 2432, 0x20, (v10 + 2536));
    Mult_Mat_Mat(32);
    v53 = *(v10 + 1269);
    if (v53 >= -23.0)
    {
      v52 = 1.0;
      if (v53 <= 23.0)
      {
        v52 = 1.0 / (exp(-v53) + 1.0);
      }
    }

    *v56 = v52;
    v54 = 0.7;
    if (v7)
    {
      v54 = 0.8;
    }

    return v52 <= v54;
  }

  else
  {
    *v3 = 0.0;
    return 1;
  }
}

void CCH_insertMeas(const char *result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v43 = *MEMORY[0x29EDCA608];
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v33 = xmmword_29975F2B0;
  v42 = 0;
  v34 = 8;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v23 = xmmword_29975F2C0;
  v32 = 0;
  v24 = 11;
  v15 = 0u;
  v16 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v14 = 0x300000001;
  *(&v15 + 4) = 0x200000001;
  if (a2 > 5)
  {
    if ((a2 - 10) < 2 || a2 == 6)
    {
      return;
    }

    if (a2 == 9)
    {
      Set_Mat_Cols_From_Mat_By_Idx(6, a4, &v33, 32, result + 2052);
      v9 = &v23;
      v10 = (result + 8208);
      v11 = a6;
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      *(result + 1046) = *(a6 + 1);
      *(result + 1047) = *(a6 + 2);
      *(result + 1048) = *(a6 + 3);
      *(result + 1031) = *(a6 + 4);
      *(result + 1032) = *(a6 + 5);
      *(result + 1030) = *(a3 + 195);
      return;
    }

    if (a2 == 5)
    {
      v9 = &v14;
      v10 = (result + 8208);
      v11 = a4;
LABEL_10:
      Set_Mat_Cols_From_Mat_By_Idx(6, v11, v9, 32, v10);
      return;
    }

LABEL_17:
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Meas %d not supported!", "CCH_insertMeas", 714, v12, v13, a2);
    }

    g_FPE_AssertFlag = 1;
    return;
  }

  if (*(a5 + 8) == 1.0)
  {
    *(result + 1039) = *(result + 1039) + 1.0;
  }

  if (*(a5 + 16) == 1.0)
  {
    *(result + 1040) = *(result + 1040) + 1.0;
  }

  *(result + 1041) = *(a4 + 8) + *(result + 1041);
  *(result + 1042) = *(a4 + 16) + *(result + 1042);
  *(result + 1043) = *(result + 1043) + *(a4 + 8) * *(a4 + 8);
  *(result + 1044) = *(result + 1044) + *(a4 + 16) * *(a4 + 16);
  *(result + 1045) = *(result + 1045) + 1.0;
}

double *CCH_logLastFeatures(double *result)
{
  if (*(result + 2050) == 30 && (g_FPE_LogSeverity & 0x200) != 0)
  {
    return LC_LOG_NMEA_GENERIC("%s,CCH_IN,%.1f,%.2f,%.2f,%.2f,%.1f,%.2f,%.2f,%.2f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.1f,%.2f,%.2f,%.2f,%.2f", "$PFPEX", result[1083], result[1061], result[1062], result[1063], result[1084], result[1067], result[1068], result[1069], result[1070], result[1071], result[1072], result[1080], result[1081], result[1082], result[1079], result[1073], result[1074], result[1075], sqrt(result[1077]), result[1076], sqrt(result[1078]));
  }

  return result;
}

uint64_t Get_SS_Order(uint64_t result)
{
  v1 = 0;
  *(result + 176) = 0;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  do
  {
    *(result + v1) = PP_GPS_SS_Order_Table[v1];
    ++v1;
  }

  while (v1 != 32);
  for (i = 0; i != 36; ++i)
  {
    if ((i + 56) <= 0xB1)
    {
      *(result + 56 + i) = PP_GAL_SS_Order_Table[i] + 56;
    }
  }

  for (j = 0; j != 37; ++j)
  {
    if ((j + 92) <= 0xB1)
    {
      *(result + 92 + j) = PP_BDS_SS_Order_Table[j] + 92;
    }
  }

  for (k = 129; k != 139; ++k)
  {
    if (k <= 0xB1)
    {
      *(result + k) = k + 1;
    }
  }

  return result;
}

void NK_Limited_Reset(uint64_t a1, uint64_t a2, _DWORD *a3, double a4)
{
  v79 = *MEMORY[0x29EDCA608];
  v7 = a2 + 22848;
  *(a1 + 168) = 0;
  if ((*(a1 + 128) & 1) == 0)
  {
    if ((*(a2 + 960) & 1) == 0 && *(a2 + 24778) <= 2u && (!*(a1 + 11048) || *(a1 + 11032) >= 0x1Fu))
    {
      Comp_ErrorEllipse(*(a2 + 24264), *(a2 + 24272), *(a2 + 24400), &v71, &v72, &v73);
      v10 = v71 * v71;
      v71 = v71 * v71;
      v11 = *(a2 + 24224);
      v12 = *(a2 + 24232);
      if (v11 < v12)
      {
        v12 = *(a2 + 24224);
      }

      if (v12 > *(a2 + 24240))
      {
        v12 = *(a2 + 24240);
      }

      if (v10 + v12 >= 1600000000.0)
      {
        v13 = *(v7 + 72);
        if (v13 == 1 && *(a2 + 24248) < *(a2 + 22960) * 0.25 || (v13 & 1) == 0 && *(a2 + 24248) < a4 * 99930819.3 * (a4 * 99930819.3) * 0.25)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (*v7 == 1 && v11 < *(a2 + 22888) * 0.25)
        {
          goto LABEL_25;
        }

        if (*(v7 + 144) == 1)
        {
          if (!*v7 || v10 < *(a2 + 23064) * 0.25)
          {
LABEL_25:
            for (i = 2; i != 13; ++i)
            {
              *(a1 + 872 + 8 * ((((i - 1) * i) >> 1) - 1)) = *(a1 + 872 + 8 * ((((i - 1) * i) >> 1) - 1)) * 1.15;
            }

            v15 = (a2 + 24216);
            for (j = 12; j > 1; --j)
            {
              *v15 = *v15 * 1.15;
              --v15;
            }

            v17 = (a2 + 24304);
            for (k = 12; k > 1; --k)
            {
              *v17 = *v17 * 1.15;
              --v17;
            }

            v19 = (a2 + 24392);
            for (m = 12; m > 1; --m)
            {
              *v19 = *v19 * 1.07;
              --v19;
            }
          }
        }

        else if (!*v7 || !*(v7 + 144))
        {
          goto LABEL_25;
        }
      }
    }

    v8 = *(a1 + 128);
    if ((v8 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_34;
  }

  v8 = 1;
LABEL_34:
  v21 = *(a1 + 132) - 61;
  if (v21 <= 4 && v21 != 2)
  {
    v23 = *(a1 + 160);
    Comp_NEDvar_UDU(a1 + 344, 0xBu, 5, (a2 + 832), &v69);
    *(a2 + 24400) = v24;
    Comp_ErrorEllipse(*&v69, *(&v69 + 1), v24, &v71, &v72, &v73);
    v25 = v71 * v71;
    ud2var(a1 + 344, 0xBu, 1, 0xBu, (a2 + 24136));
    v26 = v70;
    if (v70 <= v25)
    {
      v26 = v25;
    }

    if (*(a2 + 24176) > v26)
    {
      v26 = *(a2 + 24176);
    }

    if (*(a2 + 24184) > v26)
    {
      v26 = *(a2 + 24184);
    }

    if (*(a2 + 24192) > v26)
    {
      v26 = *(a2 + 24192);
    }

    *(a2 + 24192) = v26;
    *(a2 + 24184) = v26;
    *(a2 + 24176) = v26;
    v27 = *(a2 + 24200);
    if (*(a2 + 24208) > v27)
    {
      v27 = *(a2 + 24208);
    }

    v28 = *(a2 + 24216);
    if (v28 <= v27)
    {
      v28 = v27;
    }

    v29 = fmax(v23, 9.0);
    if (*a3 == 2)
    {
      v30 = *(a1 + 20);
      if (v30 <= 3)
      {
        v31 = 100.0;
        if (v30 != 3)
        {
          v31 = 4.0;
        }

        if (v29 * v28 > v31)
        {
          v32 = dbl_29975FBA0[v30];
          *(a1 + 20) = dword_29975FB90[v30];
          v33 = v32 / v29;
          if (v28 > v33)
          {
            v28 = v33;
          }
        }
      }
    }

    *(a2 + 24216) = v28;
    *(a2 + 24208) = v28;
    v34 = 3027;
    *(a2 + 24200) = v28;
    do
    {
      *(a2 + 8 * v34) = v29 * *(a2 + 8 * v34);
      v35 = v34 - 3016;
      --v34;
    }

    while (v35 > 1);
    v36 = 2;
    do
    {
      *(&v69 + v36) = v29 * *(&v69 + v36);
      v37 = v36-- + 1;
    }

    while (v37 > 1);
    *(a2 + 24400) = v29 * *(a2 + 24400);
    bzero((a1 + 872), 0x210uLL);
    for (n = 3017; n != 3028; ++n)
    {
      *(a1 + 872 + 8 * ((((n - 3016) * (n - 3015)) >> 1) - 1)) = *(a2 + 8 * n);
    }

    *(a2 + 24176) = v69;
    *(a2 + 24192) = v70;
    NK_Recompute_Sigmas(a1, a2);
    *(a1 + 128) = 0;
    *(a1 + 168) = 2;
    return;
  }

LABEL_64:
  if (v8)
  {
    return;
  }

  v39 = 0;
  v40 = (a2 + 24136);
  do
  {
    *(&v63 + v39) = *(a2 + 25166 + v39) ^ 1;
    if (v39 == 2)
    {
      if (*(a2 + 24152) > 1000000000.0)
      {
        v64 = 0;
      }
    }

    else if (v39 == 1)
    {
      if (*(a2 + 24144) > 1000000000.0)
      {
        HIBYTE(v63) = 0;
      }
    }

    else if (!v39 && *v40 > 1000000000.0)
    {
      LOBYTE(v63) = 0;
    }

    ++v39;
  }

  while (v39 != 11);
  v41 = *(v7 + 2516);
  if (v41 >= 0x1D4C1)
  {
    v63 = 257;
    *(a2 + 768) = 0;
    *(a2 + 769) = 0;
    v64 = 1;
    v66 = 16843009;
LABEL_79:
    v42 = *(a2 + 944);
    EvLog_v("NK_Limited_Reset: Partial reset velocity: %d  %d  ", v41, v42);
    v43 = v42 * v42;
    if (*(v7 + 2516) / 0xFA0u > v42)
    {
      *(a2 + 704) = 0u;
      *(a2 + 720) = 0u;
      *(a2 + 688) = 0u;
      *(a2 + 912) = 0u;
      *(a2 + 928) = 0u;
      *(a2 + 944) = 0u;
    }

    v65 = 1;
    v67 = 257;
    v68 = 1;
    goto LABEL_83;
  }

  if (v41 >= 0xFA0)
  {
    goto LABEL_79;
  }

  v43 = 0;
LABEL_83:
  v44 = 0;
  v45 = 0;
  v78 = 0.0;
  v76 = 0u;
  v77 = 0u;
  v75 = 0u;
  memset(v74, 0, sizeof(v74));
  do
  {
    if (*(&v63 + v44) == 1)
    {
      v46 = v40[45];
      if (*(a2 + 968))
      {
        v46 = v46 + v46;
      }

      if (((v44 & 0xE) == 8 || v44 == 3 || v44 == 10) && v43 != 0)
      {
        v46 = v46 + v43;
      }

      *(v74 + v44) = v46;
      ++v45;
      ++*(a1 + 10960 + 2 * v44);
      *v40 = v46;
    }

    ++v44;
    ++v40;
  }

  while (v44 != 11);
  if (BYTE1(v66) == 1)
  {
    Comp_NEDvar_UDU(a1 + 344, 0xBu, 5, (a2 + 832), &v69);
    *(a2 + 24400) = v50;
    Comp_ErrorEllipse(*&v69, *(&v69 + 1), v50, &v71, &v72, &v73);
    v51 = v71 * v71;
    v71 = v51;
    if (v70 > v51)
    {
      v51 = v70;
    }

    *&v76 = v51;
    *(&v76 + 1) = v51;
    *(&v75 + 1) = v51;
    *(a2 + 24176) = v69;
    *(a2 + 24192) = v70;
  }

  if (v67 == 1)
  {
    v52 = *(a2 + 24560);
    if (*(a2 + 24568) > v52)
    {
      v52 = *(a2 + 24568);
    }

    if (*(a2 + 24576) > v52)
    {
      v52 = *(a2 + 24576);
    }

    v53 = v52 + v52;
    if (*a3 == 2)
    {
      v54 = *(a1 + 20);
      if (v54 <= 3)
      {
        v55 = 100.0;
        if (v54 != 3)
        {
          v55 = 4.0;
        }

        if (v53 > v55)
        {
          Dynamics_Mode::Promote_Dynamic_Level((a1 + 20));
        }
      }
    }

    *(&v77 + 1) = v53;
    v78 = v53;
    *&v77 = v53;
    *(a2 + 24216) = v53;
    *(a2 + 24208) = v53;
    *(a2 + 24200) = v53;
  }

  if (v45)
  {
    if (v45 > 9)
    {
      if (v45 == 10)
      {
        v56 = -11;
        v57 = v74;
        do
        {
          v62 = 0.0;
          if (R8_EQ(v57, &v62))
          {
            ud2var(a1 + 872, 0xBu, v56 + 12, 1u, v57);
          }

          ++v57;
        }

        while (!__CFADD__(v56++, 1));
      }

      bzero((a1 + 872), 0x210uLL);
      v59 = v74;
      for (ii = 2; ii != 13; ++ii)
      {
        v61 = *v59++;
        *(a1 + 872 + 8 * ((((ii - 1) * ii) >> 1) - 1)) = v61;
      }
    }

    else
    {
      Partial_Reset(11, v74, (a1 + 872));
    }

    *(a1 + 27000) = *(a2 + 624);
    *(a1 + 168) = 1;
    *(a1 + 144) = 0;
    NK_Recompute_Sigmas(a1, a2);
  }
}

_DWORD *Dynamics_Mode::Promote_Dynamic_Level(_DWORD *this)
{
  v1 = *this;
  if (v1 <= 6)
  {
    *this = dword_29975FBC0[v1];
  }

  return this;
}

double *NK_Recompute_Sigmas(double *result, double *a2)
{
  v2 = a2 + 3017;
  v3 = -11;
  do
  {
    v4 = v3 + 11;
    if (v3 + 11 <= 4)
    {
      if (v4 <= 2)
      {
        v5 = *v2 + result[906];
      }

      else if (v3 == -8)
      {
        v5 = *v2 + a2[82] * 0.01;
      }

      else
      {
        v5 = *v2;
      }

      v2[11] = v5;
    }

    else if (v4 > 7)
    {
      if (v3 == -3)
      {
        a2[3036] = a2[3025] + a2[82] * 0.0001;
      }

      else if (v3 == -2)
      {
        a2[3037] = a2[3026] + a2[82] * 0.0001;
      }

      else
      {
        a2[3038] = a2[3027] + a2[82] * 0.0001;
      }
    }

    else if (v3 == -6)
    {
      a2[3050] = a2[3050] + result[910];
      a2[3033] = a2[3022] + result[907];
    }

    else if (v3 == -5)
    {
      a2[3034] = a2[3023] + result[908];
    }

    else
    {
      a2[3035] = a2[3024] + result[909];
    }

    v2[22] = sqrt(v2[11]);
    ++v2;
  }

  while (!__CFADD__(v3++, 1));
  return result;
}

uint64_t Gnm01_01DefaultMsgHandler(unsigned __int8 *a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm01_01DefaultMsgHandler", 517);
      v8 = 0;
LABEL_43:
      LbsOsaTrace_WriteLog(0xBu, __str, v7, v8, 1);
      return 0;
    }

    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FSM:MID,%X,Srce,%u,Dest,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 87, "Gnm01_01DefaultMsgHandler", 519, *(a1 + 1), *a1, a1[1]);
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 2, 1);
  }

  v4 = *(a1 + 1);
  if (v4 > 8520962)
  {
    if (v4 > 8591615)
    {
      if (v4 == 8591616)
      {
        Gnm13_03SendAbortCnf(*(a1 + 3), 0);
        return 0;
      }

      if (v4 == 8786691)
      {
        goto LABEL_27;
      }

      v9 = 8787203;
    }

    else
    {
      if (v4 == 8520963 || v4 == 8521220)
      {
        goto LABEL_20;
      }

      v9 = 8521475;
    }

    if (v4 != v9)
    {
      goto LABEL_41;
    }

LABEL_27:
    v11 = *(a1 + 2);
    if (v11)
    {
      free(v11);
    }

    *(a1 + 2) = 0;
    return 0;
  }

  if (v4 > 8520194)
  {
    if (v4 == 8520195)
    {
      v10 = *(a1 + 3);
      if (v10[31])
      {
        free(v10[31]);
        v10 = *(a1 + 3);
      }

      v10[31] = 0;
      if (v10[9])
      {
        free(v10[9]);
        v10 = *(a1 + 3);
      }

      v10[9] = 0;
      if (v10[33])
      {
        free(v10[33]);
        v10 = *(a1 + 3);
      }

      goto LABEL_21;
    }

    if (v4 != 8520451 && v4 != 8520707)
    {
      goto LABEL_41;
    }

LABEL_20:
    v10 = *(a1 + 3);
    if (!v10)
    {
LABEL_22:
      *(a1 + 3) = 0;
      return 0;
    }

LABEL_21:
    free(v10);
    goto LABEL_22;
  }

  if (v4 != 8389379)
  {
    if (v4 == 8405248)
    {
      Gnm11_00ApiStatusCB(11, 0, 0, 18);
      return 0;
    }

    if (v4 == 8407043)
    {
      Gnm11_00ApiStatusCB(11, 1, a1[12], 14);
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FSM:SBCFG Request,%u discarded\n", v14);
LABEL_32:
        v7 = v5;
        v8 = 2;
        goto LABEL_43;
      }

      return 0;
    }

LABEL_41:
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No memory free done\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm01_01DefaultMsgHandler");
      v8 = 4;
      goto LABEL_43;
    }

    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_CLEAR_GNSS_CACHE discarded\n");
    goto LABEL_32;
  }

  return 0;
}

uint64_t UnCompact_GPS_BinEph(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 9) = *(a2 + 9);
  v2 = (a2 + 11);
  *(result + 10) = *(a2 + 10);
  v3 = result + 24;
  *(result + 11) = 0;
  *(result + 16) = 0;
  for (i = 21; i > 1; --i)
  {
    *v3 = *v2;
    *(v3 + 1) = v2[1];
    *(v3 + 2) = v2[2];
    v3 += 4;
    v2 += 3;
  }

  *(result + 104) = 0xFFFFFF;
  return result;
}

double SuplLppExecutePosRsp(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "SuplLppExecutePosRsp");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_27;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_24;
  }

  LODWORD(__s) = 255;
  BYTE4(__s) = -1;
  v20 = -1;
  memset_s(&__s, 0xCuLL, 0, 0xCuLL);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LPP Sub Msg Type,%u\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 65, "SuplLppExecutePosRsp", *(a1 + 1));
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 1, 1);
  }

  v6 = *(a1 + 1);
  if (v6 > 1)
  {
    if (v6 == 6)
    {
      v15 = *(*(a1 + 8) + 16);
      LODWORD(__s) = 2;
      v20 = *(a1 + 16);
      BYTE4(__s) = 1;
      lpp_t_pos_meas_cnf(0, v15, 2, __s, v20, *v15);
      goto LABEL_27;
    }

    if (v6 != 2)
    {
LABEL_19:
      if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        goto LABEL_27;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LPP message\n");
      goto LABEL_24;
    }
  }

  else if (*(a1 + 1))
  {
    if (v6 == 1)
    {
      *&__dst = 0x8000000080000000;
      *(&__dst + 1) = 0xFFFF00007FFFFFFFLL;
      *v22 = 255;
      *&v22[8] = -1;
      v22[10] = -1;
      *&v22[2] = -1;
      v22[6] = -1;
      memset(&v22[11], 0, 32);
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AID_RQD_MSG  \n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 73, "SuplLppExecutePosRsp");
        LbsOsaTrace_WriteLog(0x13u, __str, v8, 4, 1);
      }

      LODWORD(__s) = 2;
      v9 = *(a1 + 16);
      v20 = v9;
      BYTE4(__s) = 1;
      v10 = *(a1 + 8);
      if (*(v10 + 8))
      {
        memcpy_s("SuplLppExecutePosRsp", 92, &__dst, 0x3Cu, *v10, 0x3CuLL);
        v11 = 1;
        v9 = v20;
      }

      else
      {
        v11 = 0;
      }

      *__str = __dst;
      v24 = *v22;
      *v25 = *&v22[16];
      *&v25[12] = *&v22[28];
      lpp_t_lpi_pos_aid_req(__str, v11, __s, v9);
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  v13 = *(a1 + 8);
  v14 = *v13;
  if (*v13)
  {
    LODWORD(__s) = 2;
    v20 = *(a1 + 16);
    BYTE4(__s) = 1;
    *&v25[16] = v14[3];
    v26 = v14[4];
    v27 = v14[5];
    v28 = v14[6];
    *__str = *v14;
    v24 = v14[1];
    *v25 = v14[2];
    lpp_t_pos_loc_cnf(__str, __s, v20, *(v13 + 9));
    goto LABEL_27;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Position data not received\n");
LABEL_24:
    LbsOsaTrace_WriteLog(0x13u, __str, v12, 0, 1);
  }

LABEL_27:
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "PSP", 68, "SuplLppExecutePosRsp");
    LbsOsaTrace_WriteLog(0x13u, __str, v18, 5, 1);
  }

  return result;
}

double SuplLppExecuteAdReq(unsigned int *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "SuplLppExecuteAdReq");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_15;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_14:
    LbsOsaTrace_WriteLog(0x13u, __str, v10, 0, 1);
    goto LABEL_15;
  }

  v4 = operator new(0x40uLL, MEMORY[0x29EDC9418]);
  if (!v4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_15;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNSS Aid Req\n");
    goto LABEL_14;
  }

  v5 = v4;
  *v4 = 0x8000000080000000;
  *(v4 + 1) = 0xFFFF00007FFFFFFFLL;
  *(v4 + 8) = 255;
  *(v4 + 12) = -1;
  v4[26] = -1;
  *(v4 + 18) = -1;
  v4[22] = -1;
  *(v4 + 27) = 0u;
  *(v4 + 43) = 0u;
  v6 = *(a1 + 46);
  v4[60] = v6;
  if (v6)
  {
    memset_s(v4, 0x3CuLL, 0, 0x3CuLL);
    *(v5 + 3) = *(a1 + 6);
    v5[16] = *(a1 + 10);
    v7 = *(a1 + 11);
    v5[17] = v7;
    v5[18] = *(a1 + 42);
    if (v7)
    {
      v8 = a1 + 27;
      v9 = v5 + 43;
      do
      {
        *v9 = *v8;
        *(v9 - 16) = *(v8 - 15);
        ++v9;
        ++v8;
        --v7;
      }

      while (v7);
    }
  }

  lpp_t_supl_ad_req(*a1, *(a1 + 4), v5, 0xFFFF);
LABEL_15:
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 68, "SuplLppExecuteAdReq");
    LbsOsaTrace_WriteLog(0x13u, __str, v13, 5, 1);
  }

  return result;
}

double SuplLppUpdatePosCap(_BYTE *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "SuplLppUpdatePosCap");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  BYTE1(v7[0]) = 1;
  if (a1[3] == 1)
  {
    BYTE3(v8) = 1;
    BYTE6(v8) = a1[2];
    BYTE4(v8) = *a1;
    HIBYTE(v8) = a1[4];
  }

  v10 = 1;
  v9 = a1[5];
  lpp_t_classmark_ind(v7);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "PSP", 68, "SuplLppUpdatePosCap");
    LbsOsaTrace_WriteLog(0x13u, __str, v6, 5, 1);
  }

  return result;
}

double SuplLppUpdateCap(unsigned __int8 *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "SuplLppUpdateCap");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  if (*a1 == 1)
  {
    LOBYTE(v9) = 1;
    BYTE2(v10) = 1;
    WORD2(v10) = *(a1 + 1);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNSS ID,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 69, "SuplLppUpdateCap", 770, *a1);
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 0, 1);
  }

  lpp_t_classmark_ind(&v9);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 68, "SuplLppUpdateCap");
    LbsOsaTrace_WriteLog(0x13u, __str, v8, 5, 1);
  }

  return result;
}

double SuplLppExecuteCapReq(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "SuplLppExecuteCapReq");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  lpp_t_supl_lpp_caps_req(*a1, *(a1 + 4));
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "PSP", 68, "SuplLppExecuteCapReq");
    LbsOsaTrace_WriteLog(0x13u, __str, v6, 5, 1);
  }

  return result;
}

_BYTE *LPP_Bridge_init(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Initialization Fn\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 73, "LPP_Bridge_init");
    LbsOsaTrace_WriteLog(0x13u, __str, v1, 4, 1);
  }

  LPP_init();
  return lpp_t_mm_lpm_status_ind(1, 0xFFFF, 0xFFFFFFFFuLL);
}

uint64_t LPP_Bridge_de_init(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: De-Initialization Fn\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 73, "LPP_Bridge_de_init");
    LbsOsaTrace_WriteLog(0x13u, __str, v1, 4, 1);
  }

  return LPP_destroy();
}

uint64_t Vert_Meas_Update(unsigned int a1, double *a2, unsigned int a3, double *a4, double *a5, _WORD *a6, double a7)
{
  v20[33] = *MEMORY[0x29EDCA608];
  if (*(a4 + 1) >= 1 && (*(a4 + 16) = 0, *a4 == 1))
  {
    v10 = a4[4];
    v11 = a7 - a4[3];
    a4[6] = v11;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v12 = a2[7];
    *(v17 + a1) = -a2[6];
    *(v17 + a1 + 1) = -v12;
    *(&v17[1] + a1) = -a2[8];
    v16 = 0.0;
    *(v17 + a3) = v11;
    umeas(a5, a3, v10, v17, v20, v19, &v16, a4[7]);
    v13 = v16;
    if (v16 <= 0.0)
    {
      v14 = 0;
      *a4 = 0;
      *(a4 + 16) = 1;
      ++*a6;
    }

    else
    {
      v13 = a4[4] * (v16 * (v20[a3] * v20[a3]));
      v14 = *a4;
    }

    a4[8] = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

void Corr_Old_PR_Est(unsigned __int8 *a1, int a2, int a3, int a4, int a5, unsigned int a6, double *a7, const double *a8, double a9, double a10, double a11, double a12, double *a13, _BYTE *a14, double *a15)
{
  v18 = a9 <= 5.0;
  v19 = fabs(a10) <= 5995849.16 && a9 <= 5.0;
  v20 = fabs(a11) <= 5995849.16 && a9 <= 5.0;
  if (fabs(a12) > 5995849.16)
  {
    v18 = 0;
  }

  v21 = a14;
  if (a9 > 5.0 || a5 == 0)
  {

    bzero(a14, a6);
  }

  else if (a6)
  {
    v28 = v19 & a2;
    v35 = v20 & a3;
    v29 = v18 & a4;
    v30 = a1;
    v31 = a6;
    while (*v21 != 1)
    {
LABEL_31:
      v30 += 4;
      ++a15;
      a13 += 3;
      ++a7;
      ++v21;
      if (!--v31)
      {
        return;
      }
    }

    v32 = PosCor_dot_AveLOS(a8, *a7, a13) + *a15;
    *a15 = v32;
    if (!a1)
    {
      goto LABEL_25;
    }

    v33 = *v30;
    if (v33 == 4)
    {
      if (!v29)
      {
LABEL_30:
        *v21 = 0;
        goto LABEL_31;
      }

      v34 = v32 - a12;
      goto LABEL_29;
    }

    if (v33 == 2)
    {
      if (!v35)
      {
        goto LABEL_30;
      }

      v34 = v32 - a11;
    }

    else
    {
LABEL_25:
      if (!v28)
      {
        goto LABEL_30;
      }

      v34 = v32 - a10;
    }

LABEL_29:
    *a15 = v34;
    goto LABEL_31;
  }
}

double PosCor_dot_AveLOS(const double *a1, double a2, double *a3)
{
  v3 = 0;
  v11 = *MEMORY[0x29EDCA608];
  v4 = 0.0;
  do
  {
    v4 = v4 + a1[v3] * a3[v3];
    ++v3;
  }

  while (v3 != 3);
  for (i = 0; i != 3; ++i)
  {
    *(&v9 + i * 8) = a3[i] - -(a1[i] - v4 * a3[i]) / a2;
  }

  v6 = 0;
  v7 = 0.0;
  do
  {
    v7 = v7 + a1[v6] * (a3[v6] + *(&v9 + v6 * 8));
    ++v6;
  }

  while (v6 != 3);
  *a3 = v9;
  *(a3 + 2) = v10;
  return v7 * 0.5;
}

void *Init_DB_Acq_Aid_Table(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36[1] = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 168);
  v7 = *(a1 + 888);
  v8 = *(a1 + 872);
  *a3 = *(a1 + 32);
  v9 = *(a1 + 152);
  v10 = (*(a1 + 40) - *(a1 + 144)) * 1000.0;
  if (v10 <= 0.0)
  {
    v11 = -0.5;
  }

  else
  {
    v11 = 0.5;
  }

  v12 = v10 + v11;
  if (v12 >= -2147483650.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0x80000000;
  }

  if (v12 <= 2147483650.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(a1 + 48);
  *(a3 + 32) = v14;
  *(a3 + 36) = v15;
  v16 = (*(a1 + 192) - v9) * 1000.0;
  if (v16 <= 0.0)
  {
    v17 = -0.5;
  }

  else
  {
    v17 = 0.5;
  }

  v18 = v16 + v17;
  if (v18 <= 2147483650.0)
  {
    if (v18 >= -2147483650.0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0x80000000;
    }
  }

  else
  {
    v19 = 0x7FFFFFFF;
  }

  *(a3 + 40) = v19;
  v36[0] = 0.0;
  API_Get_UTC_Cor(1, v36);
  if (v36[0] <= 0.0)
  {
    v20 = -0.5;
  }

  else
  {
    v20 = 0.5;
  }

  v21 = v36[0] + v20;
  if (v36[0] + v20 <= 2147483650.0)
  {
    if (v21 >= -2147483650.0)
    {
      v22 = v21;
    }

    else
    {
      LOBYTE(v22) = 0;
    }
  }

  else
  {
    LOBYTE(v22) = -1;
  }

  *(a3 + 44) = v22;
  for (i = 60; i != 3996; i += 48)
  {
    v24 = (a3 + i);
    *(v24 + 29) = 0uLL;
    *v24 = 0uLL;
    v24[1] = 0uLL;
  }

  result = memset((a3 + 3996), 255, 0x4DEuLL);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  *(a3 + 6132) = 0;
  *(a3 + 6136) = 0;
  do
  {
    v30 = v29 + 1;
    if (*(a2 + 33605 + v28) == 1)
    {
      v31 = 0;
      *(a3 + 4530 + 2 * v26++) = v30;
      *(a3 + 6133) = v26;
    }

    else
    {
      *(a3 + 4886 + 2 * v27++) = v30;
      *(a3 + 6135) = v27;
      v31 = 3;
    }

    *(a3 + 5420 + 4 * v28++) = v31;
    v29 = v28;
  }

  while (v28 != 178);
  v32 = fabs(v6);
  v33 = sqrt(v8 * v8 + v7 * v7);
  v34 = (v6 * 1000000000.0);
  v35 = 3 * (v33 + 1313.75887);
  if (v33 >= 21500.0)
  {
    LOWORD(v35) = -536;
  }

  if (v32 >= 0.000032768)
  {
    LOWORD(v34) = 0;
  }

  *(a3 + 4) = v35;
  *(a3 + 6) = -1;
  *(a3 + 14) = 0x7FFF7FFF7FFFFFFFLL;
  *(a3 + 22) = -256;
  *(a3 + 24) = v34;
  *(a3 + 26) = 0xFFFF;
  *(a3 + 30) = -154;
  *(a3 + 48) = 0;
  *(a3 + 52) = *(a1 + 20);
  *(a3 + 6210) = 3584;
  *(a3 + 6140) = 0u;
  *(a3 + 6156) = 0u;
  *(a3 + 6172) = 0u;
  *(a3 + 6188) = 0u;
  *(a3 + 6202) = 0;
  *(a3 + 6216) = a2 + 16336;
  *(a3 + 6224) = a2 + 16432;
  return result;
}

__int128 *Comp_Cur_Acq_Aid(__int128 *result, uint64_t a2)
{
  *(a2 + 4) = 0;
  *(a2 + 8) = *(result + 2);
  *(a2 + 16) = *(result + 8);
  *(a2 + 36) = *(result + 9);
  if (*(result + 4) == 1)
  {
    v2 = *a2 - *result;
    if (*a2 == *result)
    {
      v3 = *result;
      v4 = result[2];
      *(a2 + 16) = result[1];
      *(a2 + 32) = v4;
      *a2 = v3;
    }

    else if (v2 <= 150000)
    {
      *(a2 + 12) = *(result + 3);
      v5 = *(result + 10);
      *(a2 + 32) = *(result + 8) - v2 + (v2 << 10);
      v6 = a2 + 32;
      *(a2 + 20) = v5;
      *(a2 + 18) = *(result + 9);
      *(a2 + 24) = *(result + 6);
      v7 = *(result + 11);
      v8 = v2 * v5;
      if (v8 < 0)
      {
        HIWORD(v8) = (v8 + 0xFFFF) >> 16;
      }

      *(a2 + 22) = v7 + HIWORD(v8);
      *(a2 + 28) = *(result + 7);
      v9 = (2924415343 * (*(result + 11) + (v7 + HIWORD(v8))) * v2) >> 32;
      result = Inc_CA_Chips((v9 >> 21) + (v9 >> 31), (a2 + 32), (a2 + 28));
      *(v6 - 28) = 1;
    }
  }

  return result;
}

const char *Set_Mat_Size(const char *result, int *a2, int a3, int a4)
{
  if (a4 * a3 <= result)
  {
    *a2 = a3;
    a2[1] = a4;
  }

  else
  {
    *a2 = 0;
    if (g_FPE_LogSeverity)
    {
      v6 = result;
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v8 = *(g_TCU + 8);
      }

      else
      {
        v8 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Cannot set mat to size %dx%d, number of elements only %d", "Set_Mat_Size", 71, v7, v8, a3, a4, v6);
    }

    g_FPE_AssertFlag = 1;
  }

  return result;
}

const char *VecSet_3x1(const char *result, uint64_t a2, double a3, double a4, double a5)
{
  v6 = result;
  if (result > 2)
  {
    *a2 = 0x100000003;
    *(a2 + 8) = a3;
    *(a2 + 16) = a4;
    *(a2 + 24) = a5;
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Vout has %d elements, while %d are required!", "VecSet_3x1", 93, v7, v8, v6, 3);
    }

    g_FPE_AssertFlag = 1;

    return Set_Mat_Size(v6, a2, 0, 0);
  }

  return result;
}

void Mult_Mat_Mat(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v5 = v4;
  v6 = v2;
  v7 = v1;
  __C[2601] = *MEMORY[0x29EDCA608];
  if (v1 && v2 && v4)
  {
    v8 = *v1;
    v9 = *(v1 + 4);
    v11 = *v2;
    __ldc = *(v2 + 1);
    if (*v2 == v9)
    {
      v12 = v3;
      if (__ldc * v8 > v3)
      {
        if (g_FPE_LogSeverity)
        {
          mach_continuous_time();
          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!");
        }

LABEL_27:
        g_FPE_AssertFlag = 1;

        Set_Mat_Size(v12, v5, 0, 0);
        return;
      }

      if ((__ldc * v8) >= 0xA2A)
      {
        if (g_FPE_LogSeverity)
        {
          mach_continuous_time();
          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f output matrix is too big to fit allocated temp memory! %dx%d");
        }

        goto LABEL_27;
      }

      if (v4 == v1 || v4 == v2)
      {
        bzero(__C, 0x5148uLL);
        v17[0] = v8;
        v17[1] = __ldc;
        cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, v8, __ldc, v9, 1.0, v7 + 1, v9, v6 + 1, __ldc, 0.0, __C, __ldc);
        Copy_Mat(2601, v17, v12, v5);
      }

      else
      {
        *v4 = v8;
        *(v4 + 4) = __ldc;
        cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, v8, __ldc, v9, 1.0, (v1 + 8), *(v1 + 4), v2 + 1, *(v2 + 1), 0.0, (v4 + 8), __ldc);
      }
    }

    else
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

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "Mult_Mat_Mat", 231, v15, v16, v8, v9, v11, __ldc);
      }

      g_FPE_AssertFlag = 1;
      *v5 = 0;
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input matrices are NULL: Mat1=%p, Mat2=%p, Mout=%p", "Mult_Mat_Mat", 219, v13, v14, v7, v6, v5);
    }

    g_FPE_AssertFlag = 1;
  }
}

void Copy_Mat(uint64_t a1, unsigned int *a2, const char *a3, int *a4)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 > 0x33 || v6 >= 0x34)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix too big: %dx%d", "Copy_Mat", 2176, v10, v11, v5, v6);
    }

    g_FPE_AssertFlag = 1;
    *a4 = 0;
  }

  else if (v6 * v5 <= a3)
  {
    *a4 = v5;
    a4[1] = v6;
    if (v5)
    {
      v12 = 0;
      for (i = 0; i != v5; ++i)
      {
        if (v6)
        {
          v14 = a2[1] * i;
          v15 = v12;
          v16 = v6;
          do
          {
            *&a4[2 * v15++ + 2] = *&a2[2 * v14++ + 2];
            --v16;
          }

          while (v16);
        }

        v12 += v6;
      }
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Copy_Mat", 2184, v8, v9, a3, v6 * v5);
    }

    g_FPE_AssertFlag = 1;

    Set_Mat_Size(a3, a4, 0, 0);
  }
}

void Mult_MatT_Mat(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v5 = v4;
  v6 = v2;
  v7 = v1;
  __C[2601] = *MEMORY[0x29EDCA608];
  if (v1 && v2 && v4)
  {
    v9 = *v1;
    v8 = *(v1 + 4);
    v11 = *v2;
    __ldc = *(v2 + 1);
    if (*v2 == *v1)
    {
      v12 = v3;
      if (__ldc * v8 > v3)
      {
        if (g_FPE_LogSeverity)
        {
          mach_continuous_time();
          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!");
        }

LABEL_27:
        g_FPE_AssertFlag = 1;

        Set_Mat_Size(v12, v5, 0, 0);
        return;
      }

      if ((__ldc * v8) >= 0xA2A)
      {
        if (g_FPE_LogSeverity)
        {
          mach_continuous_time();
          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f output matrix is too big to fit allocated temp memory! %dx%d");
        }

        goto LABEL_27;
      }

      if (v4 == v1 || v4 == v2)
      {
        bzero(__C, 0x5148uLL);
        v17[0] = v8;
        v17[1] = __ldc;
        cblas_dgemm(CblasRowMajor, CblasTrans, CblasNoTrans, v8, __ldc, v9, 1.0, v7 + 1, v8, v6 + 1, __ldc, 0.0, __C, __ldc);
        Copy_Mat(2601, v17, v12, v5);
      }

      else
      {
        *v4 = v8;
        *(v4 + 4) = __ldc;
        cblas_dgemm(CblasRowMajor, CblasTrans, CblasNoTrans, v8, __ldc, v9, 1.0, (v1 + 8), *(v1 + 4), v2 + 1, *(v2 + 1), 0.0, (v4 + 8), __ldc);
      }
    }

    else
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

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "Mult_MatT_Mat", 301, v15, v16, v9, v8, v11, __ldc);
      }

      g_FPE_AssertFlag = 1;
      *v5 = 0;
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input matrices are NULL: Mat1=%p, Mat2=%p, Mout=%p", "Mult_MatT_Mat", 285, v13, v14, v7, v6, v5);
    }

    g_FPE_AssertFlag = 1;
  }
}

void Mult_Mat_MatT(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v5 = v4;
  v6 = v2;
  v7 = v1;
  __C[2601] = *MEMORY[0x29EDCA608];
  if (v1 && v2 && v4)
  {
    v8 = *v1;
    __ldb = *(v1 + 4);
    __ldc = *v2;
    v11 = *(v2 + 4);
    if (v11 == __ldb)
    {
      v12 = v3;
      if (__ldc * v8 > v3)
      {
        if (g_FPE_LogSeverity)
        {
          mach_continuous_time();
          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!");
        }

LABEL_27:
        g_FPE_AssertFlag = 1;

        Set_Mat_Size(v12, v5, 0, 0);
        return;
      }

      if ((__ldc * v8) >= 0xA2A)
      {
        if (g_FPE_LogSeverity)
        {
          mach_continuous_time();
          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f output matrix is too big to fit allocated temp memory! %dx%d");
        }

        goto LABEL_27;
      }

      if (v4 == v1 || v4 == v2)
      {
        bzero(__C, 0x5148uLL);
        v17[0] = v8;
        v17[1] = __ldc;
        cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasTrans, v8, __ldc, __ldb, 1.0, v7 + 1, __ldb, v6 + 1, __ldb, 0.0, __C, __ldc);
        Copy_Mat(2601, v17, v12, v5);
      }

      else
      {
        *v4 = v8;
        *(v4 + 4) = __ldc;
        cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasTrans, v8, __ldc, __ldb, 1.0, (v1 + 8), *(v1 + 4), (v2 + 8), *(v2 + 4), 0.0, (v4 + 8), __ldc);
      }
    }

    else
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

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "Mult_Mat_MatT", 371, v15, v16, v8, __ldb, __ldc, v11);
      }

      g_FPE_AssertFlag = 1;
      *v5 = 0;
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input matrices are NULL: Mat1=%p, Mat2=%p, Mout=%p", "Mult_Mat_MatT", 354, v13, v14, v7, v6, v5);
    }

    g_FPE_AssertFlag = 1;
  }
}

void Cross_Vec_Vec(uint64_t a1, double *a2, uint64_t a3, double *a4, const char *a5, int *a6)
{
  v23[4] = *MEMORY[0x29EDCA608];
  if (a2 && a4 && a6)
  {
    if (*(a2 + 1) * *a2 == 3 && *(a4 + 1) * *a4 == 3)
    {
      if (a5 > 2)
      {
        v17 = a2[2];
        v18 = a2[3];
        v20 = a4[2];
        v19 = a4[3];
        v23[0] = 0x100000003;
        *&v23[1] = v17 * v19 - v18 * v20;
        v21 = a2[1];
        v22 = a4[1];
        *&v23[2] = v18 * v22 - v21 * v19;
        *&v23[3] = v21 * v20 - v17 * v22;
        Copy_Mat(3, v23, a5, a6);
      }

      else
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

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Vout has %d elements, while %d are required!", "Cross_Vec_Vec", 519, v15, v16, a5, 3);
        }

        g_FPE_AssertFlag = 1;

        Set_Mat_Size(a5, a6, 0, 0);
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

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices are not 3x1 or 1x3 vectors. sizes %dx%d , %dx%d are not supported!", "Cross_Vec_Vec", 511, v10, v11, *a2, *(a2 + 1), *a4, *(a4 + 1));
      }

      g_FPE_AssertFlag = 1;
      *a6 = 0;
    }
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input vectors are NULL: Mat1=%p, Mat2=%p, Mout=%p", "Cross_Vec_Vec", 502, v12, v13, a2, a4, a6);
    }

    g_FPE_AssertFlag = 1;
  }
}

double Dot_Vec_Vec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a4)
  {
    if (*(a2 + 4) * *a2 == 3 && *(a4 + 4) * *a4 == 3)
    {
      return *(a2 + 16) * *(a4 + 16) + *(a2 + 8) * *(a4 + 8) + *(a2 + 24) * *(a4 + 24);
    }

    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f inputs are not 3x1 or 1x3 vectors. sizes %dx%d , %dx%d are not supported!");
    }
  }

  else if (g_FPE_LogSeverity)
  {
    mach_continuous_time();
    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input vectors are NULL: Mat1=%p, Mat2=%p");
  }

  g_FPE_AssertFlag = 1;
  return 0.0;
}

void ElMult_Mat_Mat(uint64_t a1, int *a2, uint64_t a3, int *a4, const char *a5, int *a6)
{
  if (a2 && a4 && a6)
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = *a4;
    v12 = a4[1];
    if (*a4 == *a2 && v12 == v10)
    {
      if (v10 * v9 <= a5)
      {
        *a6 = v9;
        a6[1] = v10;
        if (v9)
        {
          v21 = 0;
          for (i = 0; i != v9; ++i)
          {
            if (v10)
            {
              v23 = a2[1] * i;
              v24 = a4[1] * i;
              v25 = v21;
              v26 = v10;
              do
              {
                *&a6[2 * v25++ + 2] = *&a2[2 * v23++ + 2] * *&a4[2 * v24++ + 2];
                --v26;
              }

              while (v26);
            }

            v21 += v10;
          }
        }
      }

      else
      {
        if (g_FPE_LogSeverity)
        {
          v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v20 = *(g_TCU + 8);
          }

          else
          {
            v20 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "ElMult_Mat_Mat", 599, v19, v20, a5, v10 * v9);
        }

        g_FPE_AssertFlag = 1;

        Set_Mat_Size(a5, a6, 0, 0);
      }
    }

    else
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

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "ElMult_Mat_Mat", 591, v14, v15, v9, v10, v11, v12);
      }

      g_FPE_AssertFlag = 1;
      *a6 = 0;
    }
  }

  else
  {
    if (g_FPE_LogSeverity)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input matrices are NULL: Mat1=%p, Mat2=%p, Mout=%p", "ElMult_Mat_Mat", 580, v16, v17, a2, a4, a6);
    }

    g_FPE_AssertFlag = 1;
  }
}

void ElDiv_Mat_Mat(uint64_t a1, int *a2, uint64_t a3, int *a4, const char *a5, int *a6)
{
  if (a2 && a4 && a6)
  {
    v9 = *a2;
    v8 = a2[1];
    v10 = *a4;
    v11 = a4[1];
    if (*a4 == *a2 && v11 == v8)
    {
      if (v8 * v9 <= a5)
      {
        *a6 = v9;
        a6[1] = v8;
        v31 = v9;
        if (v9)
        {
          v20 = 0;
          v21 = a4 + 2;
          v22 = a6 + 2;
          v23 = v8;
          v24 = v8;
          do
          {
            if (v8)
            {
              v25 = 0;
              v26 = a4[1];
              do
              {
                v27 = (v25 + v20 * v26);
                v28 = *&v21[2 * v27];
                if (fabs(v28) <= 1.0e-30)
                {
                  if (g_FPE_LogSeverity)
                  {
                    v29 = mach_continuous_time();
                    if (g_TCU)
                    {
                      v30 = *(g_TCU + 8);
                    }

                    else
                    {
                      v30 = 0.0;
                    }

                    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "ElDiv_Mat_Mat", 660, (*&g_MacClockTicksToMsRelation * v29), v30, *&v21[2 * (v25 + v20 * a4[1])], 1.0e-30);
                    v26 = a4[1];
                    v23 = a6[1];
                    v27 = (v25 + v20 * v26);
                  }

                  g_FPE_AssertFlag = 1;
                  *&v21[2 * v27] = 0x3FF0000000000000;
                  v28 = 1.0;
                  v24 = v23;
                }

                *&v22[2 * (v25 + v20 * v24)] = *&a2[2 * (v25 + v20 * a2[1]) + 2] / v28;
                ++v25;
              }

              while (v8 != v25);
            }

            ++v20;
          }

          while (v20 != v31);
        }
      }

      else
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

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "ElDiv_Mat_Mat", 648, v18, v19, a5, v8 * v9);
        }

        g_FPE_AssertFlag = 1;

        Set_Mat_Size(a5, a6, 0, 0);
      }
    }

    else
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

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "ElDiv_Mat_Mat", 640, v13, v14, v9, v8, v10, v11);
      }

      g_FPE_AssertFlag = 1;
      *a6 = 0;
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input matrices are NULL: Mat1=%p, Mat2=%p, Mout=%p", "ElDiv_Mat_Mat", 629, v15, v16, a2, a4, a6);
    }

    g_FPE_AssertFlag = 1;
  }
}

void ElDiv_Mat_Mat_Cond(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t *a6, const char *a7, int *a8)
{
  v8 = a6;
  v10 = a2;
  if (a2 && a4 && a8 && a6)
  {
    v11 = *a2;
    v12.i64[0] = *a4;
    v12.i64[1] = *a4;
    v13.i64[0] = *a2;
    v13.i64[1] = *a6;
    if (vminv_u16(vmovn_s32(vceqq_s32(v13, v12))))
    {
      v19 = HIDWORD(*a2);
      v20 = HIDWORD(v11) * v11;
      if (HIDWORD(v11) * v11 <= a7)
      {
        *a8 = v11;
        if (v11)
        {
          v23 = 0;
          v24 = a6 + 1;
          v25 = a8 + 2;
          v26 = a4 + 2;
          v27 = a2 + 1;
          v28 = &unk_2A14BE000;
          v29 = &unk_2A14BE000;
          v30 = HIDWORD(v11);
          v42 = v11;
          do
          {
            if (v19)
            {
              for (i = 0; i != v19; ++i)
              {
                if (*&v24[i + v23 * *(v8 + 1)] == 0.0)
                {
                  v39 = 0.0;
                }

                else
                {
                  v32 = (i + v23 * a4[1]);
                  v33 = *&v26[2 * v32];
                  if (fabs(v33) <= 1.0e-30)
                  {
                    if (v28[1316])
                    {
                      v34 = v27;
                      v35 = v10;
                      v36 = v28;
                      v37 = mach_continuous_time();
                      if (g_TCU)
                      {
                        v38 = *(g_TCU + 8);
                      }

                      else
                      {
                        v38 = 0.0;
                      }

                      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "ElDiv_Mat_Mat_Cond", 719, (*&g_MacClockTicksToMsRelation * v37), v38, *&v26[2 * (i + v23 * a4[1])], 1.0e-30);
                      v30 = a8[1];
                      v32 = (i + v23 * a4[1]);
                      v28 = v36;
                      v10 = v35;
                      v27 = v34;
                      v8 = a6;
                      v29 = &unk_2A14BE000;
                    }

                    v29[2616] = 1;
                    *&v26[2 * v32] = 0x3FF0000000000000;
                    v33 = 1.0;
                  }

                  v39 = *&v27[i + v23 * v10[1]] / v33;
                }

                *&v25[2 * (i + v23 * v30)] = v39;
              }
            }

            ++v23;
          }

          while (v23 != v42);
        }
      }

      else
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

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "ElDiv_Mat_Mat_Cond", 704, v21, v22, a7, v20);
        }

        g_FPE_AssertFlag = 1;

        Set_Mat_Size(a7, a8, 0, 0);
      }
    }

    else
    {
      if (g_FPE_LogSeverity)
      {
        v40 = *a4;
        v41 = *a6;
        v43 = *a2;
        v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v15 = *(g_TCU + 8);
        }

        else
        {
          v15 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d, %dx%d", "ElDiv_Mat_Mat_Cond", 696, v14, v15, v43, HIDWORD(v43), v40, HIDWORD(v40), v41, HIDWORD(v41));
      }

      g_FPE_AssertFlag = 1;
      *a8 = 0;
    }
  }

  else
  {
    if (g_FPE_LogSeverity)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input matrices are NULL: Mat1=%p, Mat2=%p, Mout=%p, Mcond=%p", "ElDiv_Mat_Mat_Cond", 683, v16, v17, v10, a4, a8, v8);
    }

    g_FPE_AssertFlag = 1;
  }
}

void Sqrt_Mat(uint64_t a1, int *a2, const char *a3, int *a4)
{
  if (a2 && a4)
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = v8 * *a2;
    if (v9 <= a3)
    {
      *a4 = v7;
      a4[1] = v8;
      if (v7)
      {
        v14 = 0;
        v15 = v8;
        v20 = v7;
        do
        {
          if (v8)
          {
            for (i = 0; i != v8; ++i)
            {
              v17 = *&a2[2 * (i + v14 * a2[1]) + 2];
              if (v17 < 0.0)
              {
                if (g_FPE_LogSeverity)
                {
                  v18 = mach_continuous_time();
                  if (g_TCU)
                  {
                    v19 = *(g_TCU + 8);
                  }

                  else
                  {
                    v19 = 0.0;
                  }

                  LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "Sqrt_Mat", 766, (*&g_MacClockTicksToMsRelation * v18), v19, v17);
                  v15 = a4[1];
                }

                g_FPE_AssertFlag = 1;
                v17 = 1.0;
              }

              *&a4[2 * (i + v14 * v15) + 2] = sqrt(v17);
            }
          }

          ++v14;
        }

        while (v14 != v20);
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

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Sqrt_Mat", 751, v10, v11, a3, v9);
      }

      g_FPE_AssertFlag = 1;

      Set_Mat_Size(a3, a4, 0, 0);
    }
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input matrices are NULL: Min=%p, Mout=%p", "Sqrt_Mat", 742, v12, v13, a2, a4);
    }

    g_FPE_AssertFlag = 1;
  }
}

void Transpose_Mat(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v4 = v3;
  v5 = v1;
  v19[1024] = *MEMORY[0x29EDCA608];
  if (v1 && v3)
  {
    v6 = v2;
    v7 = *v1;
    v8 = v1[1];
    if (v8 * *v1 <= v2)
    {
      bzero(v19, 0x2000uLL);
      v18[0] = v8;
      v18[1] = v7;
      if (v7)
      {
        v13 = 0;
        for (i = 0; i != v7; ++i)
        {
          v15 = v13;
          v16 = i;
          v17 = v8;
          if (v8)
          {
            do
            {
              v19[v16] = v5[v15 + 1];
              v16 += v7;
              ++v15;
              --v17;
            }

            while (v17);
          }

          v13 += v8;
        }
      }

      Copy_Mat(1024, v18, v6, v4);
    }

    else
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

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Transpose_Mat", 795, v9, v10, v6, v8 * v7);
      }

      g_FPE_AssertFlag = 1;

      Set_Mat_Size(v6, v4, 0, 0);
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input matrices are NULL: Min=%p, Mout=%p", "Transpose_Mat", 786, v11, v12, v5, v4);
    }

    g_FPE_AssertFlag = 1;
  }
}

void Sub_Mat(uint64_t a1, int *a2, uint64_t a3, int *a4, const char *a5, int *a6)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *a4;
  v10 = a4[1];
  if (*a2 == *a4 && v8 == v10)
  {
    if (v8 * v7 <= a5)
    {
      *a6 = v7;
      a6[1] = v8;
      if (v7)
      {
        v17 = 0;
        for (i = 0; i != v7; ++i)
        {
          if (v8)
          {
            v19 = a2[1] * i;
            v20 = a4[1] * i;
            v21 = v17;
            v22 = v8;
            do
            {
              *&a6[2 * v21++ + 2] = *&a2[2 * v19++ + 2] - *&a4[2 * v20++ + 2];
              --v22;
            }

            while (v22);
          }

          v17 += v8;
        }
      }
    }

    else
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

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Sub_Mat", 841, v15, v16, a5, v8 * v7);
      }

      g_FPE_AssertFlag = 1;

      Set_Mat_Size(a5, a6, 0, 0);
    }
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "Sub_Mat", 833, v12, v13, v7, v8, v9, v10);
    }

    g_FPE_AssertFlag = 1;
    *a6 = 0;
  }
}

void Add_Mat(uint64_t a1, int *a2, uint64_t a3, int *a4, const char *a5, int *a6)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *a4;
  v10 = a4[1];
  if (*a2 == *a4 && v8 == v10)
  {
    if (v8 * v7 <= a5)
    {
      *a6 = v7;
      a6[1] = v8;
      if (v7)
      {
        v17 = 0;
        for (i = 0; i != v7; ++i)
        {
          if (v8)
          {
            v19 = a2[1] * i;
            v20 = a4[1] * i;
            v21 = v17;
            v22 = v8;
            do
            {
              *&a6[2 * v21++ + 2] = *&a2[2 * v19++ + 2] + *&a4[2 * v20++ + 2];
              --v22;
            }

            while (v22);
          }

          v17 += v8;
        }
      }
    }

    else
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

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Add_Mat", 884, v15, v16, a5, v8 * v7);
      }

      g_FPE_AssertFlag = 1;

      Set_Mat_Size(a5, a6, 0, 0);
    }
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "Add_Mat", 876, v12, v13, v7, v8, v9, v10);
    }

    g_FPE_AssertFlag = 1;
    *a6 = 0;
  }
}

void Add_Mat_ScalarMult(double a1, uint64_t a2, int *a3, uint64_t a4, int *a5, const char *a6, int *a7)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = *a5;
  v11 = a5[1];
  if (*a3 == *a5 && v9 == v11)
  {
    if (v9 * v8 <= a6)
    {
      *a7 = v8;
      a7[1] = v9;
      if (v8)
      {
        v18 = 0;
        for (i = 0; i != v8; ++i)
        {
          if (v9)
          {
            v20 = a3[1] * i;
            v21 = a5[1] * i;
            v22 = v18;
            v23 = v9;
            do
            {
              *&a7[2 * v22++ + 2] = *&a3[2 * v20++ + 2] + *&a5[2 * v21++ + 2] * a1;
              --v23;
            }

            while (v23);
          }

          v18 += v9;
        }
      }
    }

    else
    {
      if (g_FPE_LogSeverity)
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

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Add_Mat_ScalarMult", 928, v16, v17, a6, v9 * v8);
      }

      g_FPE_AssertFlag = 1;

      Set_Mat_Size(a6, a7, 0, 0);
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "Add_Mat_ScalarMult", 920, v13, v14, v8, v9, v10, v11);
    }

    g_FPE_AssertFlag = 1;
    *a7 = 0;
  }
}

void Min_Mat_Mat(uint64_t a1, int *a2, uint64_t a3, int *a4, const char *a5, int *a6)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *a4;
  v10 = a4[1];
  if (*a2 == *a4 && v8 == v10)
  {
    if (v8 * v7 <= a5)
    {
      *a6 = v7;
      a6[1] = v8;
      if (v7)
      {
        v17 = 0;
        v18 = 0;
        v19 = a4 + 2;
        do
        {
          if (v8)
          {
            v20 = a2[1] * v18;
            v21 = a4[1] * v18;
            v22 = v17;
            v23 = v8;
            do
            {
              v24 = *&a2[2 * v20 + 2];
              if (v24 >= *&v19[2 * v21])
              {
                v24 = *&v19[2 * v21];
              }

              *&a6[2 * v22++ + 2] = v24;
              ++v21;
              ++v20;
              --v23;
            }

            while (v23);
          }

          ++v18;
          v17 += v8;
        }

        while (v18 != v7);
      }
    }

    else
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

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Min_Mat_Mat", 972, v15, v16, a5, v8 * v7);
      }

      g_FPE_AssertFlag = 1;

      Set_Mat_Size(a5, a6, 0, 0);
    }
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "Min_Mat_Mat", 964, v12, v13, v7, v8, v9, v10);
    }

    g_FPE_AssertFlag = 1;
    *a6 = 0;
  }
}

void Max_Mat_Mat(uint64_t a1, int *a2, uint64_t a3, int *a4, const char *a5, int *a6)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *a4;
  v10 = a4[1];
  if (*a2 == *a4 && v8 == v10)
  {
    if (v8 * v7 <= a5)
    {
      *a6 = v7;
      a6[1] = v8;
      if (v7)
      {
        v17 = 0;
        v18 = 0;
        v19 = a4 + 2;
        do
        {
          if (v8)
          {
            v20 = a2[1] * v18;
            v21 = a4[1] * v18;
            v22 = v17;
            v23 = v8;
            do
            {
              v24 = *&a2[2 * v20 + 2];
              if (v24 <= *&v19[2 * v21])
              {
                v24 = *&v19[2 * v21];
              }

              *&a6[2 * v22++ + 2] = v24;
              ++v21;
              ++v20;
              --v23;
            }

            while (v23);
          }

          ++v18;
          v17 += v8;
        }

        while (v18 != v7);
      }
    }

    else
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

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Max_Mat_Mat", 1016, v15, v16, a5, v8 * v7);
      }

      g_FPE_AssertFlag = 1;

      Set_Mat_Size(a5, a6, 0, 0);
    }
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices not compatible: %dx%d , %dx%d", "Max_Mat_Mat", 1008, v12, v13, v7, v8, v9, v10);
    }

    g_FPE_AssertFlag = 1;
    *a6 = 0;
  }
}

void Max_Mat_Scalar(double a1, uint64_t a2, int *a3, const char *a4, int *a5)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = v8 * *a3;
  if (v9 <= a4)
  {
    *a5 = v7;
    a5[1] = v8;
    if (v7)
    {
      v12 = 0;
      for (i = 0; i != v7; ++i)
      {
        if (v8)
        {
          v14 = a3[1] * i;
          v15 = v12;
          v16 = v8;
          do
          {
            v17 = *&a3[2 * v14 + 2];
            if (v17 <= a1)
            {
              v17 = a1;
            }

            *&a5[2 * v15++ + 2] = v17;
            ++v14;
            --v16;
          }

          while (v16);
        }

        v12 += v8;
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Max_Mat_Scalar", 1051, v10, v11, a4, v9);
    }

    g_FPE_AssertFlag = 1;

    Set_Mat_Size(a4, a5, 0, 0);
  }
}

void Min_Mat_Scalar(double a1, uint64_t a2, int *a3, const char *a4, int *a5)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = v8 * *a3;
  if (v9 <= a4)
  {
    *a5 = v7;
    a5[1] = v8;
    if (v7)
    {
      v12 = 0;
      for (i = 0; i != v7; ++i)
      {
        if (v8)
        {
          v14 = a3[1] * i;
          v15 = v12;
          v16 = v8;
          do
          {
            v17 = *&a3[2 * v14 + 2];
            if (v17 >= a1)
            {
              v17 = a1;
            }

            *&a5[2 * v15++ + 2] = v17;
            ++v14;
            --v16;
          }

          while (v16);
        }

        v12 += v8;
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Min_Mat_Scalar", 1086, v10, v11, a4, v9);
    }

    g_FPE_AssertFlag = 1;

    Set_Mat_Size(a4, a5, 0, 0);
  }
}

double Max_Vec(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*a2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input vector is empty: %dx%d");
    }

    goto LABEL_23;
  }

  if (v3 >= 2 && v4 >= 2)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f matrix as input is not supported (input size=%dx%d) enter vector");
    }

LABEL_23:
    g_FPE_AssertFlag = 1;
    return 0.0;
  }

  result = *(a2 + 8);
  v8 = v4 * v3;
  if (v8 < 2)
  {
    v9 = 0;
    if (!a3)
    {
      return result;
    }

    goto LABEL_22;
  }

  v9 = 0;
  v10 = (a2 + 16);
  for (i = 1; i != v8; ++i)
  {
    v12 = *v10++;
    v13 = v12;
    if (v12 > result)
    {
      v9 = i;
      result = v13;
    }
  }

  if (a3)
  {
LABEL_22:
    *a3 = v9;
  }

  return result;
}

void Max_Vec_Cond(uint64_t a1, unsigned int *a2, uint64_t a3, int *a4, _DWORD *a5)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input vector is empty: %dx%d");
    }

    goto LABEL_26;
  }

  if (v5 >= 2 && v6 >= 2)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f matrix as input is not supported (input size=%dx%d) enter vector");
    }

LABEL_26:
    g_FPE_AssertFlag = 1;
    return;
  }

  First_NonZero_in_Vector_Starting_At = Find_First_NonZero_in_Vector_Starting_At(a3, a4, 0);
  if (First_NonZero_in_Vector_Starting_At < 0)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f conditional vector has no non-zero values!", "Max_Vec_Cond", 1183, v17, v18);
    }

    g_FPE_AssertFlag = 1;
  }

  else
  {
    v13 = *&a2[2 * First_NonZero_in_Vector_Starting_At + 2];
    v14 = v6 * v5;
    if (v14 >= 2)
    {
      v15 = 0;
      v16 = v14 - 1;
      do
      {
        if (*&a4[2 * v15 + 4] > 0.0 && *&a2[2 * v15 + 4] > v13)
        {
          First_NonZero_in_Vector_Starting_At = v15 + 1;
          v13 = *&a2[2 * v15 + 4];
        }

        ++v15;
      }

      while (v16 != v15);
    }

    if (a5)
    {
      *a5 = First_NonZero_in_Vector_Starting_At;
    }
  }
}

uint64_t Find_First_NonZero_in_Vector_Starting_At(uint64_t a1, int *a2, unsigned int a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != 1 && v4 != 1)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input is not a vector! size = %dx%d", "Find_First_NonZero_in_Vector_Starting_At", 2818, v8, v9, v3, v4);
    }

    g_FPE_AssertFlag = 1;
    return 0xFFFFFFFFLL;
  }

  v6 = v4 * v3 - a3;
  if (v4 * v3 <= a3)
  {
    return 0xFFFFFFFFLL;
  }

  for (result = a3; *&a2[2 * result + 2] == 0.0; ++result)
  {
    if (!--v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void Min_Vec_Cond(uint64_t a1, unsigned int *a2, uint64_t a3, int *a4, _DWORD *a5)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input vector is empty: %dx%d");
    }

    goto LABEL_26;
  }

  if (v5 >= 2 && v6 >= 2)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f matrix as input is not supported (input size=%dx%d) enter vector");
    }

LABEL_26:
    g_FPE_AssertFlag = 1;
    return;
  }

  First_NonZero_in_Vector_Starting_At = Find_First_NonZero_in_Vector_Starting_At(a3, a4, 0);
  if (First_NonZero_in_Vector_Starting_At < 0)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f conditional vector has no non-zero values!", "Min_Vec_Cond", 1236, v17, v18);
    }

    g_FPE_AssertFlag = 1;
  }

  else
  {
    v13 = *&a2[2 * First_NonZero_in_Vector_Starting_At + 2];
    v14 = v6 * v5;
    if (v14 >= 2)
    {
      v15 = 0;
      v16 = v14 - 1;
      do
      {
        if (*&a4[2 * v15 + 4] > 0.0 && *&a2[2 * v15 + 4] < v13)
        {
          First_NonZero_in_Vector_Starting_At = v15 + 1;
          v13 = *&a2[2 * v15 + 4];
        }

        ++v15;
      }

      while (v16 != v15);
    }

    if (a5)
    {
      *a5 = First_NonZero_in_Vector_Starting_At;
    }
  }
}

const char *Set_Mat_Const(const char *result, unsigned int a2, const char *a3, int *a4, double a5)
{
  v7 = result;
  if (result > 0x33 || a2 >= 0x34)
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

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix too big: %dx%d", "Set_Mat_Const", 1319, v11, v12, v7, a2);
    }

    g_FPE_AssertFlag = 1;
    *a4 = 0;
  }

  else if (a2 * result <= a3)
  {
    *a4 = result;
    a4[1] = a2;
    if (result)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = v13;
        v16 = a2;
        if (a2)
        {
          do
          {
            *&a4[2 * v15++ + 2] = a5;
            --v16;
          }

          while (v16);
        }

        ++v14;
        v13 += a2;
      }

      while (v14 != result);
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Set_Mat_Const", 1327, v9, v10, a3, a2 * v7);
    }

    g_FPE_AssertFlag = 1;

    return Set_Mat_Size(a3, a4, 0, 0);
  }

  return result;
}

void Set_Mat_Const_Cond(double a1, uint64_t a2, uint32x2_t *a3, const char *a4, int *a5)
{
  v5 = *a3;
  v6 = *a5;
  *v7.i8 = *a3;
  v7.i64[1] = *a5;
  v8.i64[0] = 0x3300000033;
  v8.i64[1] = 0x3300000033;
  if (vmaxv_u16(vmovn_s32(vcgtq_u32(v7, v8))))
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix too big: cond:%dx%d , out:%dx%d");
    }

LABEL_20:
    g_FPE_AssertFlag = 1;
    return;
  }

  v9 = *a3;
  v10 = HIDWORD(*a3);
  if ((vcgt_u32(v5, v6).u8[0] & 1) != 0 || v5.i32[1] > v6.i32[1])
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix too big: %dx%d");
    }

    goto LABEL_20;
  }

  if (v5.i32[1] * v5.i32[0] <= a4)
  {
    if (v5.i32[0])
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = v15;
        v19 = v16;
        v20 = v5.u32[1];
        if (v5.i32[1])
        {
          do
          {
            if (*&a3[v18 + 1] > 0.0)
            {
              *&a5[2 * v19 + 2] = a1;
            }

            ++v19;
            ++v18;
            --v20;
          }

          while (v20);
        }

        ++v17;
        v16 += v6.i32[1];
        v15 += v5.u32[1];
      }

      while (v17 != v5.i32[0]);
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Set_Mat_Const_Cond", 1378, v13, v14, a4, v10 * v9);
    }

    g_FPE_AssertFlag = 1;

    Set_Mat_Size(a4, a5, 0, 0);
  }
}

const char *Set_Mat_I(const char *result, const char *a2, int *a3, double a4)
{
  v5 = result;
  if (result < 0x34)
  {
    if (result * result <= a2)
    {
      *a3 = result;
      a3[1] = result;
      result = Set_Mat_Const(result, result, a2, a3, 0.0);
      if (v5)
      {
        v12 = 0;
        v13 = a3[1] + 1;
        v14 = v5;
        do
        {
          *&a3[2 * v12 + 2] = a4;
          v12 += v13;
          --v14;
        }

        while (v14);
      }
    }

    else
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

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Set_Mat_I", 1416, v9, v10, a2, v5 * v5);
      }

      g_FPE_AssertFlag = 1;

      return Set_Mat_Size(a2, a3, 0, 0);
    }
  }

  else
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

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix too big: %dx%d", "Set_Mat_I", 1408, v6, v7, v5, v5);
    }

    g_FPE_AssertFlag = 1;
    *a3 = 0;
  }

  return result;
}

void Exp_Mat(double a1, uint64_t a2, int *a3, const char *a4, int *a5)
{
  v7 = *a3;
  v8 = a3[1];
  if (v8 * *a3 <= a4)
  {
    *a5 = v7;
    a5[1] = v8;
    if (v7)
    {
      v13 = 0;
      v14 = 0;
      v15 = a3 + 2;
      v16 = a5 + 2;
      do
      {
        if (v8)
        {
          v17 = a3[1] * v14;
          v18 = v8;
          v19 = v13;
          do
          {
            *&v16[2 * v19++] = exp(*&v15[2 * v17++] * a1);
            --v18;
          }

          while (v18);
        }

        ++v14;
        v13 += v8;
      }

      while (v14 != v7);
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Exp_Mat", 1447, v9, v10, a4, v8 * v7);
    }

    g_FPE_AssertFlag = 1;

    Set_Mat_Size(a4, a5, 0, 0);
  }
}

const char *Invert_Mat(uint64_t a1)
{
  result = MEMORY[0x2A1C7C4A8](a1);
  v104 = *MEMORY[0x29EDCA608];
  v6 = *v2;
  v5 = *(v2 + 1);
  if (v6 == v5)
  {
    v7 = v4;
    v8 = v3;
    if (v6 * v6 <= v3)
    {
      v13 = v2;
      if (v6 == 1)
      {
        *v4 = 0x100000001;
        v14 = v2[1];
        if (fabs(v14) <= 1.0e-30)
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

            result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "Invert_Mat", 1495, v15, v16, v13[1], 1.0e-30);
          }

          g_FPE_AssertFlag = 1;
          v13[1] = 1.0;
          v14 = 1.0;
        }

        v7[1] = 1.0 / v14;
      }

      else
      {
        v88 = v4;
        bzero(&v99, 0x2008uLL);
        bzero(&v96, 0x2008uLL);
        Set_Mat_Const(v6, v6, 0x400, &v99, 0.0);
        v87 = v6;
        Set_Mat_Const(v6, v6, 0x400, &v96, 0.0);
        v17 = 0;
        v89 = *(v13 + 1);
        v18 = v89 - 1;
        v19 = v13 + 1;
        do
        {
          v101[v100 * v17] = v19[*(v13 + 1) * v17];
          v20 = v101[0];
          if (fabs(v101[0]) <= 1.0e-30)
          {
            if (g_FPE_LogSeverity)
            {
              v21 = mach_continuous_time();
              if (g_TCU)
              {
                v22 = *(g_TCU + 8);
              }

              else
              {
                v22 = 0.0;
              }

              LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "LU_decomp_Mat", 1540, (*&g_MacClockTicksToMsRelation * v21), v22, v101[0], 1.0e-30);
            }

            g_FPE_AssertFlag = 1;
            v101[0] = 1.0;
            v20 = 1.0;
          }

          *&v98[v17] = v19[v17] / v20;
          v23 = v97;
          v98[v17 + v17 * v97] = 0x3FF0000000000000;
          ++v17;
        }

        while (v17 <= v18);
        v90 = v89 - 2;
        if (v90)
        {
          v24 = 1;
          do
          {
            v25 = v24;
            if (v24 <= 1uLL)
            {
              v26 = 1;
            }

            else
            {
              v26 = v24;
            }

            if (v24 <= v18)
            {
              v27 = *(v13 + 1);
              v28 = v100;
              v29 = v100 * v24;
              v30 = v24;
              do
              {
                v31 = v19[v24 + v30 * v27];
                v32 = v24 + v30 * v28;
                v101[v32] = v31;
                v33 = v29;
                v34 = v24;
                v35 = v26;
                do
                {
                  v31 = v31 - v101[v33] * *&v98[v34];
                  v101[v32] = v31;
                  v34 += v23;
                  ++v33;
                  --v35;
                }

                while (v35);
                ++v30;
                v29 += v28;
              }

              while (v30 <= v18);
            }

            if (++v24 <= v18)
            {
              v36 = v100;
              v37 = v25 + 1;
              do
              {
                v38 = v19[v37 + *(v13 + 1) * v25];
                v39 = v37 + v23 * v25;
                *&v98[v39] = v38;
                v40 = v25 * v36;
                v41 = v37;
                v42 = v26;
                do
                {
                  v38 = v38 - v101[v40] * *&v98[v41];
                  *&v98[v39] = v38;
                  v41 += v23;
                  ++v40;
                  --v42;
                }

                while (v42);
                v43 = v25 + v25 * v36;
                v44 = v101[v43];
                if (fabs(v44) <= 1.0e-30)
                {
                  if (g_FPE_LogSeverity)
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

                    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "LU_decomp_Mat", 1562, (*&g_MacClockTicksToMsRelation * v45), v46, v101[v25 + v25 * v100], 1.0e-30);
                    v36 = v100;
                    v23 = v97;
                    v43 = v25 + v25 * v100;
                  }

                  g_FPE_AssertFlag = 1;
                  v101[v43] = 1.0;
                  v44 = 1.0;
                }

                *&v98[v37 + v23 * v25] = *&v98[v37 + v23 * v25] / v44;
                ++v37;
              }

              while (v37 <= v18);
            }
          }

          while (v24 <= v90);
        }

        v47 = v19[v18 + v18 * *(v13 + 1)];
        v48 = v100 * v18;
        v49 = v18 + v100 * v18;
        v101[v49] = v47;
        if (v18 <= 1)
        {
          v50 = 1;
        }

        else
        {
          v50 = v18;
        }

        do
        {
          v47 = v47 - v101[v48] * *&v98[v18];
          v101[v49] = v47;
          v18 += v23;
          ++v48;
          --v50;
        }

        while (v50);
        result = v87;
        *v88 = v87;
        *(v88 + 1) = v87;
        v95 = 0;
        memset(v94, 0, sizeof(v94));
        v93 = 0;
        memset(v92, 0, sizeof(v92));
        if (v87)
        {
          v51 = 0;
          do
          {
            v91 = (v51 + 1);
            if (v51 < 0x20)
            {
              Set_Vec_Zeros(result, 0x20, v94);
              *(v94 + v51 + 1) = 0x3FF0000000000000;
            }

            else
            {
              if (g_FPE_LogSeverity)
              {
                v52 = mach_continuous_time();
                if (g_TCU)
                {
                  v53 = *(g_TCU + 8);
                }

                else
                {
                  v53 = 0.0;
                }

                LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f x has %d elements, while %d are required!", "Set_Vec_one_1", 1675, (*&g_MacClockTicksToMsRelation * v52), v53, 32, v51 + 1);
              }

              g_FPE_AssertFlag = 1;
              Set_Mat_Size(0x20, v94, 0, 0);
            }

            v103 = 0;
            memset(v102, 0, sizeof(v102));
            v54 = v100;
            Set_Vec_Zeros(v100, 0x20, v92);
            Set_Vec_Zeros(v54, 0x20, v102);
            v55 = v101[0];
            if (fabs(v101[0]) <= 1.0e-30)
            {
              if (g_FPE_LogSeverity)
              {
                v56 = mach_continuous_time();
                if (g_TCU)
                {
                  v57 = *(g_TCU + 8);
                }

                else
                {
                  v57 = 0.0;
                }

                LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "LU_solve_Vec", 1596, (*&g_MacClockTicksToMsRelation * v56), v57, v101[0], 1.0e-30);
              }

              g_FPE_AssertFlag = 1;
              v101[0] = 1.0;
              v55 = 1.0;
            }

            v58 = *(v94 + 1) / v55;
            *(v102 + 1) = v58;
            v59 = v54 - 1;
            if (v54 == 1)
            {
              *(v92 + 1) = v58;
            }

            else
            {
              v60 = 1;
              v61 = v100;
              do
              {
                v62 = v60;
                if (v60 <= 1uLL)
                {
                  v63 = 1;
                }

                else
                {
                  v63 = v60;
                }

                v64 = *(v94 + v60 + 1);
                *(v102 + v60 + 1) = v64;
                v65 = v61 * v60;
                v66 = v102 + 1;
                do
                {
                  v67 = *v66++;
                  v64 = v64 - v101[v65] * v67;
                  *(v102 + v62 + 1) = v64;
                  ++v65;
                  --v63;
                }

                while (v63);
                v68 = v62 + v62 * v61;
                v69 = v101[v68];
                if (fabs(v69) <= 1.0e-30)
                {
                  if (g_FPE_LogSeverity)
                  {
                    v70 = mach_continuous_time();
                    if (g_TCU)
                    {
                      v71 = *(g_TCU + 8);
                    }

                    else
                    {
                      v71 = 0.0;
                    }

                    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "LU_solve_Vec", 1605, (*&g_MacClockTicksToMsRelation * v70), v71, v101[v62 + v62 * v100], 1.0e-30);
                    v61 = v100;
                    v64 = *(v102 + v62 + 1);
                    v68 = v62 + v62 * v100;
                  }

                  g_FPE_AssertFlag = 1;
                  v101[v68] = 1.0;
                  v69 = 1.0;
                }

                *(v102 + v62 + 1) = v64 / v69;
                v60 = v62 + 1;
              }

              while (v62 + 1 <= v59);
              *(v92 + v59 + 1) = *(v102 + v59 + 1);
              v72 = v54 - 2;
              if (v54 >= 2)
              {
                v73 = v54 + v97 * v72 - 1;
                v74 = ~v97;
                v75 = 1;
                do
                {
                  v76 = v72;
                  v77 = *(v102 + v72 + 1);
                  *(v92 + v72 + 1) = v77;
                  if (v72 < v59)
                  {
                    v78 = v72 + 1;
                    v79 = v73;
                    v80 = v75;
                    do
                    {
                      v77 = v77 - *&v98[v79] * *(v92 + v78 + 1);
                      *(v92 + v76 + 1) = v77;
                      ++v78;
                      ++v79;
                      --v80;
                    }

                    while (v80);
                  }

                  v72 = v76 - 1;
                  ++v75;
                  v73 += v74;
                }

                while (v76 - 1 < v54);
              }
            }

            v81 = *v88;
            v82 = *(v88 + 1);
            if (v81 == LODWORD(v92[0]))
            {
              v83 = v92 + 1;
              if (v81)
              {
                do
                {
                  v84 = *v83++;
                  v88[v51 + 1] = v84;
                  LODWORD(v51) = v51 + v82;
                  --v81;
                }

                while (v81);
              }
            }

            else
            {
              if (g_FPE_LogSeverity)
              {
                v85 = mach_continuous_time();
                if (g_TCU)
                {
                  v86 = *(g_TCU + 8);
                }

                else
                {
                  v86 = 0.0;
                }

                LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f vector size doesn't match matrix size! %d -> %dx%d", "Copy_Vec_to_Mat_Col", 1698, (*&g_MacClockTicksToMsRelation * v85), v86, LODWORD(v92[0]), v81, v82);
              }

              g_FPE_AssertFlag = 1;
              *v88 = 0.0;
            }

            result = v87;
            v51 = v91;
          }

          while (v91 != v87);
        }
      }
    }

    else
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

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Ainv has %d elements, while %d are required!", "Invert_Mat", 1485, v9, v10, v8, v6 * v6);
      }

      g_FPE_AssertFlag = 1;

      return Set_Mat_Size(v8, v7, 0, 0);
    }
  }

  else
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

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input cannot be inverted. M=%d != N=%d", "Invert_Mat", 1479, v11, v12, v6, v5);
    }

    g_FPE_AssertFlag = 1;
  }

  return result;
}

void Set_Vec_Zeros(unsigned int a1, const char *a2, int *a3)
{
  if (a1 < 0x34)
  {
    if (a2 >= a1)
    {
      *a3 = a1;
      a3[1] = 1;
      if (a1)
      {

        bzero(a3 + 2, 8 * a1);
      }
    }

    else
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

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f x has %d elements, while %d are required!", "Set_Vec_Zeros", 1648, v8, v9, a2, a1);
      }

      g_FPE_AssertFlag = 1;

      Set_Mat_Size(a2, a3, 0, 0);
    }
  }

  else
  {
    if (g_FPE_LogSeverity)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested vector too big: %dx%d", "Set_Vec_Zeros", 1633, v5, v6, a1, 1);
    }

    g_FPE_AssertFlag = 1;
    *a3 = 0;
  }
}

void Copy_Vec_to_Mat_diag(uint64_t a1, int *a2, unsigned int a3, unsigned int a4, int a5, int a6, uint64_t a7, unsigned int *a8)
{
  v9 = *a2;
  v10 = a2[1];
  if (*a2 == 1 || v10 == 1)
  {
    v12 = *a8;
    v13 = a8[1];
    v14 = (v10 * v9);
    if (v14)
    {
      v15 = v12 > a3;
    }

    else
    {
      v15 = 0;
    }

    if (v15 && v13 > a4)
    {
      v17 = a6 + a4;
      v18 = a4 + v13 * a3;
      v19 = a5 + a3;
      v20 = 1;
      do
      {
        *&a8[2 * v18 + 2] = *&a2[2 * v20];
        if (v20 >= v14)
        {
          break;
        }

        if (v19 >= v12)
        {
          break;
        }

        ++v20;
        v18 += a6 + v13 * a5;
        v19 += a5;
        v21 = v17 >= v13;
        v17 += a6;
      }

      while (!v21);
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f first input is not a vector! size = %dx%d", "Copy_Vec_to_Mat_diag", 1735, v22, v23, v9, v10);
    }

    g_FPE_AssertFlag = 1;
    *a8 = 0;
  }
}

void Copy_Mat_diag_to_Vec(uint64_t a1, unsigned int *a2, unsigned int a3, int a4, uint64_t a5, _DWORD *a6)
{
  v7 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
    v9 = a4 + a3;
    if (v7 < a4 + a3)
    {
      v9 = *a2;
    }

    if (a4)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    *a6 = v10 - a3;
    a6[1] = 1;
    if (v10 > a3)
    {
      v11 = a2[1] + 1;
      v12 = a6 + 2;
      v13 = v10 - a3;
      v14 = a3 * v11;
      do
      {
        *v12++ = *&a2[2 * v14 + 2];
        v14 += v11;
        --v13;
      }

      while (v13);
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f first input is not a square matrix! size = %dx%d", "Copy_Mat_diag_to_Vec", 1767, v15, v16, v7, v8);
    }

    g_FPE_AssertFlag = 1;
    *a6 = 0;
  }
}

void Copy_SubMat_to_Mat(double a1, uint64_t a2, _DWORD *a3, int a4, int a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  v8 = a3[1];
  if (*a7 >= (*a3 + a4))
  {
    v9 = *a3 + a4;
  }

  else
  {
    v9 = *a7;
  }

  v10 = v9 - a4;
  v11 = v8 + a5;
  if (v7 < v8 + a5)
  {
    v11 = a7[1];
  }

  if (a1 == 1.0)
  {
    if (v9 != a4)
    {
      v12 = 0;
      v13 = 0;
      v14 = a3 + 2;
      v15 = a5 + v7 * a4;
      do
      {
        v16 = v12;
        v17 = v15;
        v18 = (v11 - a5);
        if (v11 != a5)
        {
          do
          {
            *&a7[2 * v17++ + 2] = *&v14[2 * v16++];
            --v18;
          }

          while (v18);
        }

        ++v13;
        v15 += v7;
        v12 += v8;
      }

      while (v13 != v10);
    }
  }

  else if (v9 != a4)
  {
    v19 = 0;
    v20 = 0;
    v21 = a3 + 2;
    v22 = a5 + v7 * a4;
    do
    {
      v23 = v19;
      v24 = v22;
      v25 = (v11 - a5);
      if (v11 != a5)
      {
        do
        {
          *&a7[2 * v24++ + 2] = *&v21[2 * v23++] * a1;
          --v25;
        }

        while (v25);
      }

      ++v20;
      v22 += v7;
      v19 += v8;
    }

    while (v20 != v10);
  }
}

void Copy_SubMat_from_Mat(double a1, uint64_t a2, _DWORD *a3, int a4, int a5, int a6, int a7, uint64_t a8, int *a9)
{
  v13 = a4;
  if ((a6 + a4) <= *a3 && (a7 + a5) <= a3[1])
  {
    *a9 = a6;
    a9[1] = a7;
    if (a6)
    {
      v16 = 0;
      for (i = 0; i != a6; ++i)
      {
        if (a7)
        {
          v18 = a5 + a3[1] * v13;
          v19 = v16;
          v20 = a7;
          do
          {
            *&a9[2 * v19++ + 2] = *&a3[2 * v18++ + 2] * a1;
            --v20;
          }

          while (v20);
        }

        ++v13;
        v16 += a7;
      }
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix is bigger than input matrix: m0=%d, n0=%d, size=%dx%d", "Copy_SubMat_from_Mat", 1859, v14, v15, v13, a5, a6, a7);
    }

    g_FPE_AssertFlag = 1;
    *a9 = 0;
  }
}

void Mult_Mat_scalar(double a1, uint64_t a2, int *a3, const char *a4, int *a5)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = v8 * *a3;
  if (v9 <= a4)
  {
    *a5 = v7;
    a5[1] = v8;
    if (v7)
    {
      v12 = 0;
      for (i = 0; i != v7; ++i)
      {
        if (v8)
        {
          v14 = a3[1] * i;
          v15 = v12;
          v16 = v8;
          do
          {
            *&a5[2 * v15++ + 2] = *&a3[2 * v14++ + 2] * a1;
            --v16;
          }

          while (v16);
        }

        v12 += v8;
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Mult_Mat_scalar", 2012, v10, v11, a4, v9);
    }

    g_FPE_AssertFlag = 1;

    Set_Mat_Size(a4, a5, 0, 0);
  }
}

void Mat_Eq_Scalar(double a1, uint64_t a2, unsigned int *a3, const char *a4, int *a5)
{
  v6 = *a3;
  v7 = a3[1];
  if (*a3 > 0x33 || v7 >= 0x34)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix too big: %dx%d", "Mat_Eq_Scalar", 2046, v11, v12, v6, v7);
    }

    g_FPE_AssertFlag = 1;
    *a5 = 0;
  }

  else if (v7 * v6 <= a4)
  {
    *a5 = v6;
    a5[1] = v7;
    if (v6)
    {
      v13 = 0;
      for (i = 0; i != v6; ++i)
      {
        if (v7)
        {
          v15 = a3[1] * i;
          v16 = v13;
          v17 = v7;
          do
          {
            if (*&a3[2 * v15 + 2] == a1)
            {
              v18 = 1.0;
            }

            else
            {
              v18 = 0.0;
            }

            *&a5[2 * v16++ + 2] = v18;
            ++v15;
            --v17;
          }

          while (v17);
        }

        v13 += v7;
      }
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Mat_Eq_Scalar", 2054, v9, v10, a4, v7 * v6);
    }

    g_FPE_AssertFlag = 1;

    Set_Mat_Size(a4, a5, 0, 0);
  }
}

void Mat_Greater_than_Scalar(double a1, uint64_t a2, unsigned int *a3, const char *a4, int *a5)
{
  v6 = *a3;
  v7 = a3[1];
  if (*a3 > 0x33 || v7 >= 0x34)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix too big: %dx%d", "Mat_Greater_than_Scalar", 2090, v11, v12, v6, v7);
    }

    g_FPE_AssertFlag = 1;
    *a5 = 0;
  }

  else if (v7 * v6 <= a4)
  {
    *a5 = v6;
    a5[1] = v7;
    if (v6)
    {
      v13 = 0;
      for (i = 0; i != v6; ++i)
      {
        if (v7)
        {
          v15 = a3[1] * i;
          v16 = v13;
          v17 = v7;
          do
          {
            if (*&a3[2 * v15 + 2] <= a1)
            {
              v18 = 0.0;
            }

            else
            {
              v18 = 1.0;
            }

            *&a5[2 * v16++ + 2] = v18;
            ++v15;
            --v17;
          }

          while (v17);
        }

        v13 += v7;
      }
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Mat_Greater_than_Scalar", 2098, v9, v10, a4, v7 * v6);
    }

    g_FPE_AssertFlag = 1;

    Set_Mat_Size(a4, a5, 0, 0);
  }
}

uint64_t Filter_Rows_from_Mat(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  v7 = *a2;
  if (a4[1] * *a4 != *a2)
  {
    if (g_FPE_LogSeverity)
    {
      v8 = a2[1];
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v10 = *(g_TCU + 8);
      }

      else
      {
        v10 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input selector vector length does not match given matrix! length=%d, size=%dx%d", "Filter_Rows_from_Mat", 2266, v9, v10, a4[1] * *a4, v7, v8);
    }

    g_FPE_AssertFlag = 1;
  }

  result = Find_First_NonZero_in_Vector_Starting_At(a3, a4, 0);
  if (result == -1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      if (result != v12)
      {
        v13 = a2[1];
        if (v13)
        {
          v14 = v13 * result;
          v15 = v13 * v12;
          do
          {
            *&a2[2 * v15++ + 2] = *&a2[2 * v14++ + 2];
            --v13;
          }

          while (v13);
        }
      }

      ++v12;
      result = Find_First_NonZero_in_Vector_Starting_At(a3, a4, result + 1);
    }

    while (result != -1);
  }

  *a2 = v12;
  return result;
}

void Filter_Cols_from_Mat(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v19 = *MEMORY[0x29EDCA608];
  v9 = *v6;
  v10 = v6[1];
  if (v2[1] * *v2 != v10)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input selector vector length does not match given matrix! length=%d, size=%dx%d", "Filter_Cols_from_Mat", 2299, v11, v12, v3[1] * *v3, v9, v10);
    }

    g_FPE_AssertFlag = 1;
  }

  First_NonZero_in_Vector_Starting_At = Find_First_NonZero_in_Vector_Starting_At(v5, v3, 0);
  if (First_NonZero_in_Vector_Starting_At == -1)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      if (First_NonZero_in_Vector_Starting_At != v14)
      {
        v15 = *v7;
        if (v15)
        {
          v16 = 0;
          v17 = v7[1];
          do
          {
            *&v7[2 * (v14 + v16) + 2] = *&v7[2 * (First_NonZero_in_Vector_Starting_At + v16) + 2];
            v16 += v17;
            --v15;
          }

          while (v15);
        }
      }

      ++v14;
      First_NonZero_in_Vector_Starting_At = Find_First_NonZero_in_Vector_Starting_At(v5, v3, First_NonZero_in_Vector_Starting_At + 1);
    }

    while (First_NonZero_in_Vector_Starting_At != -1);
  }

  bzero(v18, 0x2008uLL);
  Copy_SubMat_from_Mat(1.0, v8, v7, 0, 0, v9, v14, 1024, v18);
  Copy_Mat(1024, v18, v8, v7);
}

double Norma2_Vec(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != 1 && v3 != 1)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f first input is not a vector! size = %dx%d", "Norma2_Vec", 2330, v10, v11, v2, v3);
    }

    g_FPE_AssertFlag = 1;
    return 0.0;
  }

  if (!v2)
  {
    return 0.0;
  }

  v5 = 0;
  v6 = 0;
  result = 0.0;
  do
  {
    v8 = v5;
    v9 = a2[1];
    if (v3)
    {
      do
      {
        result = result + *&a2[2 * v8 + 2] * *&a2[2 * v8 + 2];
        ++v8;
        --v9;
      }

      while (v9);
    }

    ++v6;
    v5 += v3;
  }

  while (v6 != v2);
  return result;
}

void SVD_decomp(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, const char *a5, int *a6, const char *a7, uint64_t a8)
{
  v39 = *MEMORY[0x29EDCA608];
  if (!a2 || !a4 || !a6 || !a8)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input matrices are NULL: A=%p, U=%p, S=%p, Vt=%p");
    }

    goto LABEL_21;
  }

  Set_Mat_Size(a3, a4, 0, 0);
  Set_Mat_Size(a5, a6, 0, 0);
  Set_Mat_Size(a7, a8, 0, 0);
  v16 = *a2;
  __n = *(a2 + 4);
  __m = v16;
  if (v16 != __n)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f A=%p is not a square matrix! M=%d, N=%d");
    }

    goto LABEL_21;
  }

  if (v16 >= 4)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f SVD_decomp should operate on [2x2] or [3x3] matrices. A is a [%dx%d] matrix");
    }

LABEL_21:
    g_FPE_AssertFlag = 1;
    return;
  }

  v17 = v16 * v16;
  if (v16 * v16 > a3)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f U has %d elements, while %d are required!", "SVD_decomp", 2409, v18, v19, a3, v16 * v16);
    }

    g_FPE_AssertFlag = 1;
    v26 = a3;
    v27 = a4;
LABEL_41:
    Set_Mat_Size(v26, v27, 0, 0);
    return;
  }

  if (v17 > a5)
  {
    if (g_FPE_LogSeverity)
    {
      v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v21 = *(g_TCU + 8);
      }

      else
      {
        v21 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f S has %d elements, while %d are required!", "SVD_decomp", 2415, v20, v21, a5, v16 * v16);
    }

    g_FPE_AssertFlag = 1;
    v26 = a5;
    v27 = a6;
    goto LABEL_41;
  }

  if (v17 > a7)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f V has %d elements, while %d are required!", "SVD_decomp", 2421, v22, v23, a7, v16 * v16);
    }

    g_FPE_AssertFlag = 1;
    v26 = a7;
    v27 = a8;
    goto LABEL_41;
  }

  Transpose_Mat(a1);
  __jobvt = 65;
  __ldu = v16;
  __lda = v16;
  v29 = 0;
  __ldvt = v16;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  __lwork = 15;
  memset(v36, 0, sizeof(v36));
  Set_Mat_Size(3, v36, 3, 1);
  dgesvd_(&__jobvt, &__jobvt, &__m, &__n, (a2 + 8), &__lda, v36 + 1, (a4 + 8), &__ldu, (a8 + 8), &__ldvt, v37, &__lwork, &v29);
  if (v29 < 1)
  {
    Set_Mat_Size(a3, a4, __m, __m);
    Set_Mat_Size(a5, a6, __m, __m);
    Set_Mat_Size(a7, a8, __m, __m);
    Copy_Vec_to_Mat_diag(3, v36, 0, 0, 1, 1, a5, a6);
    Transpose_Mat(a1);
    Transpose_Mat(a3);
  }

  else if ((g_FPE_LogSeverity & 2) != 0)
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

    LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f The algorithm computing SVD failed to converge.\n", "SVD_decomp", 2468, v24, v25);
  }
}

uint64_t All_Mat_Greater_Than(double a1, uint64_t a2, unsigned int *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 > 0x33 || v4 > 0x33)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrix dimenssions is too big! size = %dx%d", "All_Mat_Greater_Than", 2501, v10, v11, v3, v4);
    }

    result = 0;
    g_FPE_AssertFlag = 1;
  }

  else if (v3)
  {
    v5 = 0;
    v6 = 0;
    result = 1;
    while (1)
    {
      v8 = a3[1];
      v9 = v5;
      if (v4)
      {
        break;
      }

LABEL_8:
      ++v6;
      v5 += v4;
      if (v6 == v3)
      {
        return result;
      }
    }

    while (*&a3[2 * v9 + 2] > a1)
    {
      ++v9;
      if (!--v8)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t All_Mat_Smaller_Than(double a1, uint64_t a2, unsigned int *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 > 0x33 || v4 > 0x33)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrix dimenssions is too big! size = %dx%d", "All_Mat_Smaller_Than", 2532, v10, v11, v3, v4);
    }

    result = 0;
    g_FPE_AssertFlag = 1;
  }

  else if (v3)
  {
    v5 = 0;
    v6 = 0;
    result = 1;
    while (1)
    {
      v8 = a3[1];
      v9 = v5;
      if (v4)
      {
        break;
      }

LABEL_8:
      ++v6;
      v5 += v4;
      if (v6 == v3)
      {
        return result;
      }
    }

    while (*&a3[2 * v9 + 2] < a1)
    {
      ++v9;
      if (!--v8)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
    return 1;
  }

  return result;
}

BOOL Any_Mat_Equal_To(uint64_t a1, unsigned int *a2, int a3, unsigned int a4)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = v6 * *a2;
  if (a4)
  {
    v7 = a4;
  }

  if (v5 > 0x33 || v6 > 0x33)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrix dimenssions is too big! size = %dx%d", "Any_Mat_Equal_To", 2573, v18, v19, v5, v6);
    }

    v17 = 0;
    g_FPE_AssertFlag = 1;
  }

  else
  {
    if (v5)
    {
      v8 = 0;
      v9 = 0;
      v10 = 1;
      while (!v6)
      {
LABEL_15:
        v10 = ++v8 < v5;
        if (v8 == v5)
        {
          goto LABEL_16;
        }
      }

      v11 = v9 + v6;
      v12 = a2[1];
      while (1)
      {
        v4 = v9 + 1 <= v7;
        if (v9 + 1 > v7)
        {
          break;
        }

        v13 = *&a2[2 * v9 + 2];
        v14 = v13 < 0.0;
        v15 = floor(v13 + 0.5);
        v16 = -floor(0.5 - v13);
        if (!v14)
        {
          v16 = v15;
        }

        if (v16 == a3)
        {
          break;
        }

        ++v9;
        if (!--v12)
        {
          v9 = v11;
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_16:
      v10 = 0;
    }

    return v10 && v4;
  }

  return v17;
}

BOOL Any_Mat_Not_Equal_To(uint64_t a1, unsigned int *a2, int a3, unsigned int a4)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = v6 * *a2;
  if (a4)
  {
    v7 = a4;
  }

  if (v5 > 0x33 || v6 > 0x33)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrix dimenssions is too big! size = %dx%d", "Any_Mat_Not_Equal_To", 2619, v18, v19, v5, v6);
    }

    v17 = 0;
    g_FPE_AssertFlag = 1;
  }

  else
  {
    if (v5)
    {
      v8 = 0;
      v9 = 0;
      v10 = 1;
      while (!v6)
      {
LABEL_15:
        v10 = ++v8 < v5;
        if (v8 == v5)
        {
          goto LABEL_16;
        }
      }

      v11 = v9 + v6;
      v12 = a2[1];
      while (1)
      {
        v4 = v9 + 1 <= v7;
        if (v9 + 1 > v7)
        {
          break;
        }

        v13 = *&a2[2 * v9 + 2];
        v14 = v13 < 0.0;
        v15 = floor(v13 + 0.5);
        v16 = -floor(0.5 - v13);
        if (!v14)
        {
          v16 = v15;
        }

        if (v16 != a3)
        {
          break;
        }

        ++v9;
        if (!--v12)
        {
          v9 = v11;
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_16:
      v10 = 0;
    }

    return v10 && v4;
  }

  return v17;
}

uint64_t All_Mat_Equal_To(uint64_t a1, unsigned int *a2, int a3, unsigned int a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 * *a2;
  if (a4)
  {
    v6 = a4;
  }

  if (v4 > 0x33 || v5 > 0x33)
  {
    if (g_FPE_LogSeverity)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrix dimenssions is too big! size = %dx%d", "All_Mat_Equal_To", 2665, v16, v17, v4, v5);
    }

    result = 0;
    g_FPE_AssertFlag = 1;
  }

  else if (v4)
  {
    v7 = 0;
    v8 = 0;
    result = 1;
    while (!v5)
    {
LABEL_15:
      if (++v7 == v4)
      {
        return result;
      }
    }

    v10 = v8 + v5;
    v11 = a2[1];
    while (v8 + 1 <= v6)
    {
      v12 = *&a2[2 * v8 + 2];
      v13 = v12 < 0.0;
      v14 = floor(v12 + 0.5);
      v15 = -floor(0.5 - v12);
      if (!v13)
      {
        v15 = v14;
      }

      if (v15 != a3)
      {
        break;
      }

      ++v8;
      if (!--v11)
      {
        v8 = v10;
        goto LABEL_15;
      }
    }

    return 0;
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t Any_Mat_Greater_Than(double a1, uint64_t a2, unsigned int *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 > 0x33 || v4 > 0x33)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrix dimenssions is too big! size = %dx%d", "Any_Mat_Greater_Than", 2701, v10, v11, v3, v4);
    }

    result = 0;
    g_FPE_AssertFlag = 1;
  }

  else if (v3)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = a3[1];
      v8 = v5;
      if (v4)
      {
        break;
      }

LABEL_8:
      result = 0;
      ++v6;
      v5 += v4;
      if (v6 == v3)
      {
        return result;
      }
    }

    while (*&a3[2 * v8 + 2] <= a1)
    {
      ++v8;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  else
  {
    return 0;
  }

  return result;
}

void Sign_Mat(uint64_t a1, unsigned int *a2, const char *a3, int *a4)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 > 0x33 || v6 >= 0x34)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix too big: %dx%d", "Sign_Mat", 2732, v10, v11, v5, v6);
    }

    g_FPE_AssertFlag = 1;
    *a4 = 0;
  }

  else if (v6 * v5 <= a3)
  {
    *a4 = v5;
    a4[1] = v6;
    if (v5)
    {
      v12 = 0;
      for (i = 0; i != v5; ++i)
      {
        if (v6)
        {
          v14 = a2[1] * i;
          v15 = v6;
          v16 = v12;
          do
          {
            v17 = *&a2[2 * v14 + 2];
            v18 = v17 < 0.0;
            if (v17 <= 0.0)
            {
              v19 = 0.0;
            }

            else
            {
              v19 = 1.0;
            }

            if (v18)
            {
              v19 = -1.0;
            }

            *&a4[2 * v16++ + 2] = v19;
            ++v14;
            --v15;
          }

          while (v15);
        }

        v12 += v6;
      }
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Sign_Mat", 2740, v8, v9, a3, v6 * v5);
    }

    g_FPE_AssertFlag = 1;

    Set_Mat_Size(a3, a4, 0, 0);
  }
}

void Abs_Mat(uint64_t a1, unsigned int *a2, const char *a3, int *a4)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 > 0x33 || v6 >= 0x34)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix too big: %dx%d", "Abs_Mat", 2773, v10, v11, v5, v6);
    }

    g_FPE_AssertFlag = 1;
    *a4 = 0;
  }

  else if (v6 * v5 <= a3)
  {
    *a4 = v5;
    a4[1] = v6;
    if (v5)
    {
      v12 = 0;
      for (i = 0; i != v5; ++i)
      {
        if (v6)
        {
          v14 = a2[1] * i;
          v15 = v6;
          v16 = v12;
          do
          {
            v17 = *&a2[2 * v14 + 2];
            if (v17 < 0.0)
            {
              v17 = -v17;
            }

            *&a4[2 * v16++ + 2] = v17;
            ++v14;
            --v15;
          }

          while (v15);
        }

        v12 += v6;
      }
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Abs_Mat", 2781, v8, v9, a3, v6 * v5);
    }

    g_FPE_AssertFlag = 1;

    Set_Mat_Size(a3, a4, 0, 0);
  }
}

double Norma_Vec(uint64_t a1, int *a2)
{
  v2 = Norma2_Vec(a1, a2);
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "Norma_Vec", 2843, v3, v4, v2);
    }

    g_FPE_AssertFlag = 1;
    v2 = 1.0;
  }

  return sqrt(v2);
}

void Eig2x2(uint64_t a1, double *a2, const char *a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v8 = *a2;
  v9 = *(a2 + 1);
  if (*a2 != 2 || v9 != 2)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix must by 2x2! input is %dx%d", "Eig2x2", 2862, v11, v12, v8, v9);
    }

    g_FPE_AssertFlag = 1;
    *a4 = 0;
    *a6 = 0;
    return;
  }

  if (a5 <= 3)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f eigVal has %d elements, while %d are required!", "Eig2x2", 2872, v14, v15, a5, 4);
    }

    g_FPE_AssertFlag = 1;
    v27 = a5;
    v28 = a6;
LABEL_30:

    Set_Mat_Size(v27, v28, 0, 0);
    return;
  }

  if (a3 <= 3)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f eigVec has %d elements, while %d are required!", "Eig2x2", 2878, v17, v18, a3, 4);
    }

    g_FPE_AssertFlag = 1;
    v27 = a3;
    v28 = a4;
    goto LABEL_30;
  }

  v19 = a2[1];
  v20 = a2[2];
  v21 = a2[3];
  v22 = a2[4];
  Set_Mat_Size(a3, a4, 2, 2);
  Set_Mat_Size(a5, a6, 2, 2);
  v23 = v19 + v22;
  v24 = v20 * v21 + (v19 - v22) * (v19 - v22) * 0.25;
  if (v24 < 0.0)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "Eig2x2", 2899, v25, v26, v24);
    }

    g_FPE_AssertFlag = 1;
    v24 = 1.0;
  }

  v29 = sqrt(v24);
  v30 = v29 + v23 * 0.5;
  v31 = -(v29 - v23 * 0.5);
  *(a6 + 8) = v30;
  v32 = a6 + 8;
  *(a6 + 8 + 8 * (*(a6 + 4) + 1)) = v31;
  v33 = (a4 + 8);
  if (v21 == 0.0)
  {
    if (v20 == 0.0)
    {
      *(a4 + 8) = 0x3FF0000000000000;
      v34 = *(a4 + 4);
      v33->i64[v34] = 0;
      *(a4 + 16) = 0;
      v21 = 1.0;
    }

    else
    {
      *(a4 + 8) = v20;
      v34 = *(a4 + 4);
      *&v33->i64[v34] = v30 - v19;
      *(a4 + 16) = v20;
      v21 = v31 - v19;
    }
  }

  else
  {
    *(a4 + 8) = v30 - v22;
    v34 = *(a4 + 4);
    *&v33->i64[v34] = v21;
    *(a4 + 16) = v31 - v22;
  }

  *&v33->i64[(v34 + 1)] = v21;
  v35 = sqrt(*&v33->i64[v34] * *&v33->i64[v34] + *(a4 + 8) * *(a4 + 8));
  v36 = sqrt(v21 * v21 + *(a4 + 16) * *(a4 + 16));
  if (fabs(v35) <= 1.0e-30)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "Eig2x2", 2936, v37, v38, v35, 1.0e-30);
    }

    g_FPE_AssertFlag = 1;
    v35 = 1.0;
  }

  if (fabs(v36) <= 1.0e-30)
  {
    if (g_FPE_LogSeverity)
    {
      v39 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v40 = *(g_TCU + 8);
      }

      else
      {
        v40 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "Eig2x2", 2937, v39, v40, v36, 1.0e-30);
    }

    g_FPE_AssertFlag = 1;
    v36 = 1.0;
  }

  *(a4 + 8) = *(a4 + 8) / v35;
  v41 = *(a4 + 4);
  *&v33->i64[v41] = *&v33->i64[v41] / v35;
  *(a4 + 16) = *(a4 + 16) / v36;
  v42 = v41 + 1;
  *&v33->i64[(v41 + 1)] = *&v33->i64[(v41 + 1)] / v36;
  if (v31 < v30)
  {
    v43 = *(a6 + 4) + 1;
    v44 = *(a6 + 8);
    *(a6 + 8) = *(v32 + 8 * v43);
    *(v32 + 8 * v43) = v44;
    *v33 = vextq_s8(*v33, *v33, 8uLL);
    v45 = v33->i64[v41];
    v33->i64[v41] = v33->i64[v42];
    v33->i64[v42] = v45;
  }
}

void Set_Vec_Values_By_Idx(double a1, uint64_t a2, _DWORD *a3, int *a4)
{
  v4 = *a4;
  v5 = a4[1];
  if (v5 * *a4)
  {
    v9 = 0;
    v10 = a3[1] * *a3 - 1;
    v11 = a3 + 2;
    do
    {
      v12 = a4[v9 + 2];
      if (v12 > v10)
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

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input index at place %u with value of %u exceeds matrix size [%ux%u]", "Set_Vec_Values_By_Idx", 2989, (*&g_MacClockTicksToMsRelation * v13), v14, v9, v12, *a3, a3[1]);
          v4 = *a4;
          v5 = a4[1];
        }

        g_FPE_AssertFlag = 1;
      }

      *&v11[2 * v12] = a1;
      ++v9;
    }

    while (v9 < (v4 * v5));
  }
}

void Set_Mat_Cols_By_Idx(double a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  if (a4[1] * *a4)
  {
    v7 = 0;
    v8 = a4 + 2;
    v9 = a3 + 2;
    v10 = *a3;
    v11 = a3[1];
    do
    {
      v12 = v8[v7];
      if (v12 >= v11)
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

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input index at place %u with value of %u exceeds matrix size [%ux%u]", "Set_Mat_Cols_By_Idx", 3013, (*&g_MacClockTicksToMsRelation * v13), v14, v7, v12, v10, v11);
        }

        g_FPE_AssertFlag = 1;
      }

      if (v10)
      {
        v15 = a3[1];
        v16 = v10;
        do
        {
          *&v9[2 * v12] = a1;
          v12 += v15;
          --v16;
        }

        while (v16);
      }

      ++v7;
    }

    while (v7 < (a4[1] * *a4));
  }
}

void Set_Mat_Rows_By_Idx(double a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  if (a4[1] * *a4)
  {
    v7 = 0;
    v8 = a4 + 2;
    v9 = a3 + 2;
    v10 = *a3;
    v11 = a3[1];
    do
    {
      v12 = v8[v7];
      if (v12 >= v10)
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

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input index at place %u with value of %u exceeds matrix size [%ux%u]", "Set_Mat_Rows_By_Idx", 3041, (*&g_MacClockTicksToMsRelation * v13), v14, v7, v12, v10, v11);
        }

        g_FPE_AssertFlag = 1;
      }

      if (v11)
      {
        v15 = a3[1] * v12;
        v16 = v11;
        do
        {
          *&v9[2 * v15++] = a1;
          --v16;
        }

        while (v16);
      }

      ++v7;
    }

    while (v7 < (a4[1] * *a4));
  }
}

void Set_Mat_Cols_From_Mat_By_Idx(uint64_t a1, unsigned int *a2, _DWORD *a3, uint64_t a4, _DWORD *a5)
{
  v5 = *a2;
  v6 = a5[1];
  if (v5 != *a5)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices dimensions don't agree! [%ux%u] vs. [%ux%u]");
    }

    goto LABEL_21;
  }

  v7 = (a3[1] * *a3);
  if (v7 != a2[1])
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input vector and small matrix dimensions don't agree! [%u] vs. [%ux%u]");
    }

LABEL_21:
    g_FPE_AssertFlag = 1;
    return;
  }

  if (v7)
  {
    v9 = 0;
    v10 = a3 + 2;
    v11 = a2 + 2;
    v12 = a5 + 2;
    v13 = &unk_2A14BE000;
    v14 = &unk_2A14BE000;
    v23 = a2;
    do
    {
      v15 = v10[v9];
      if (v15 >= v6)
      {
        if (v13[1316])
        {
          v16 = v13;
          v17 = mach_continuous_time();
          if (g_TCU)
          {
            v18 = *(g_TCU + 8);
          }

          else
          {
            v18 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input index at place %u with value of %u exceeds matrix column span [%ux%u]", "Set_Mat_Cols_From_Mat_By_Idx", 3150, (*&g_MacClockTicksToMsRelation * v17), v18, v9, v15, v5, v6);
          v13 = v16;
          a2 = v23;
          v14 = &unk_2A14BE000;
        }

        v14[2616] = 1;
      }

      if (v5)
      {
        v19 = a2[1];
        v20 = a5[1];
        v21 = v9;
        v22 = v5;
        do
        {
          *&v12[2 * v15] = *&v11[2 * v21];
          v15 += v20;
          v21 += v19;
          --v22;
        }

        while (v22);
      }

      ++v9;
    }

    while (v9 != v7);
  }
}

void Max_Mat_Scalar_Col_By_Idx(double a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  v4 = (a4[1] * *a4);
  if (v4)
  {
    v7 = 0;
    v8 = a4 + 2;
    v9 = a3 + 2;
    v10 = *a3;
    v11 = a3[1];
    do
    {
      v12 = v8[v7];
      if (v12 >= v11)
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

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input index at place %u with value of %u exceeds matrix column span [%ux%u]", "Max_Mat_Scalar_Col_By_Idx", 3183, (*&g_MacClockTicksToMsRelation * v13), v14, v7, v12, v10, v11);
        }

        g_FPE_AssertFlag = 1;
      }

      if (v10)
      {
        v15 = a3[1];
        v16 = v10;
        do
        {
          v17 = *&v9[2 * v12];
          if (v17 <= a1)
          {
            v17 = a1;
          }

          *&v9[2 * v12] = v17;
          v12 += v15;
          --v16;
        }

        while (v16);
      }

      ++v7;
    }

    while (v7 != v4);
  }
}

void Min_Mat_Scalar_Col_By_Idx(double a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  v4 = (a4[1] * *a4);
  if (v4)
  {
    v7 = 0;
    v8 = a4 + 2;
    v9 = a3 + 2;
    v10 = *a3;
    v11 = a3[1];
    do
    {
      v12 = v8[v7];
      if (v12 >= v11)
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

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input index at place %u with value of %u exceeds matrix column span [%ux%u]", "Min_Mat_Scalar_Col_By_Idx", 3226, (*&g_MacClockTicksToMsRelation * v13), v14, v7, v12, v10, v11);
        }

        g_FPE_AssertFlag = 1;
      }

      if (v10)
      {
        v15 = a3[1];
        v16 = v10;
        do
        {
          v17 = *&v9[2 * v12];
          if (v17 >= a1)
          {
            v17 = a1;
          }

          *&v9[2 * v12] = v17;
          v12 += v15;
          --v16;
        }

        while (v16);
      }

      ++v7;
    }

    while (v7 != v4);
  }
}

void Abs_Mat_Col_By_Idx(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v3 = (a3[1] * *a3);
  if (v3)
  {
    v5 = 0;
    v6 = a3 + 2;
    v7 = a2 + 2;
    v8 = *a2;
    v9 = a2[1];
    do
    {
      v10 = v6[v5];
      if (v10 >= v9)
      {
        if (g_FPE_LogSeverity)
        {
          v11 = mach_continuous_time();
          if (g_TCU)
          {
            v12 = *(g_TCU + 8);
          }

          else
          {
            v12 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input index at place %u with value of %u exceeds matrix column span [%ux%u]", "Abs_Mat_Col_By_Idx", 3263, (*&g_MacClockTicksToMsRelation * v11), v12, v5, v10, v8, v9);
        }

        g_FPE_AssertFlag = 1;
      }

      if (v8)
      {
        v13 = a2[1];
        v14 = v8;
        do
        {
          v15 = *&v7[2 * v10];
          if (v15 < 0.0)
          {
            v15 = -v15;
          }

          *&v7[2 * v10] = v15;
          v10 += v13;
          --v14;
        }

        while (v14);
      }

      ++v5;
    }

    while (v5 != v3);
  }
}

const char *Append_To_Row_Vec(uint64_t a1, _DWORD *a2, const char *a3, unsigned int *a4)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *a4;
  v10 = a4[1];
  if (*a2 != 1 && v8 != 1)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Added input is not a vector: [%ux%d]", "Append_To_Row_Vec", 3325, v12, v13, v7, v8);
    }

    g_FPE_AssertFlag = 1;
  }

  v14 = (v8 * v7);
  if (v9 >= 2)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Input is not a row vector:  [%ux%d]", "Append_To_Row_Vec", 3326, v15, v16, v9, v10);
    }

    g_FPE_AssertFlag = 1;
  }

  if (v10 + v14 <= a3)
  {
    result = Set_Mat_Size(a3, a4, 1, v10 + v14);
    if (v14)
    {
      v20 = (a2 + 2);
      do
      {
        v21 = *v20++;
        *&a4[2 * v10++ + 2] = v21;
        --v14;
      }

      while (v14);
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Append_To_Row_Vec", 3330, v17, v18, a3, v10 + v14);
    }

    g_FPE_AssertFlag = 1;

    return Set_Mat_Size(a3, a4, 0, 0);
  }

  return result;
}

const char *Append_To_Col_Vec(uint64_t a1, _DWORD *a2, const char *a3, int *a4)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *a4;
  v10 = a4[1];
  if (*a2 != 1 && v8 != 1)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Added input is not a vector: [%ux%d]", "Append_To_Col_Vec", 3361, v12, v13, v7, v8);
    }

    g_FPE_AssertFlag = 1;
  }

  v14 = (v8 * v7);
  if (v10 >= 2)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Input is not a row vector:  [%ux%d]", "Append_To_Col_Vec", 3362, v15, v16, v9, v10);
    }

    g_FPE_AssertFlag = 1;
  }

  v17 = v10 + v14;
  if (v17 <= a3)
  {
    result = Set_Mat_Size(a3, a4, v9 + v14, 1);
    if (v14)
    {
      v21 = (a2 + 2);
      do
      {
        v22 = *v21++;
        *&a4[2 * v9++ + 2] = v22;
        --v14;
      }

      while (v14);
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Append_To_Col_Vec", 3366, v18, v19, a3, v17);
    }

    g_FPE_AssertFlag = 1;

    return Set_Mat_Size(a3, a4, 0, 0);
  }

  return result;
}

const char *Append_On_Left_Vec(double a1, uint64_t a2, unsigned int *a3, const char *a4, uint64_t a5)
{
  v10 = *a3;
  v9 = a3[1];
  v11 = v9 * *a3;
  if (*a3 != 1 && v9 != 1)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Added input is not a vector: [%ux%d]", "Append_On_Left_Vec", 3397, v13, v14, v10, v9);
    }

    g_FPE_AssertFlag = 1;
  }

  if (v11 + 1 <= a4)
  {
    if (v10 <= v9)
    {
      v20 = v9 + 1;
      v18 = a4;
      v19 = a5;
      v17 = 1;
    }

    else
    {
      v17 = v10 + 1;
      v18 = a4;
      v19 = a5;
      v20 = 1;
    }

    result = Set_Mat_Size(v18, v19, v17, v20);
    if (v11)
    {
      v22 = 2 * v11;
      do
      {
        *(a5 + 8 + v22 * 4) = *&a3[v22];
        v22 -= 2;
      }

      while (v22 * 4);
    }

    *(a5 + 8) = a1;
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Vout has %d elements, while %d are required!", "Append_On_Left_Vec", 3401, v15, v16, a4, v11 + 1);
    }

    g_FPE_AssertFlag = 1;

    return Set_Mat_Size(a4, a5, 0, 0);
  }

  return result;
}

const char *Shift_Right_Vec(double a1, uint64_t a2, int *a3, const char *a4, uint64_t a5)
{
  v10 = *a3;
  v9 = a3[1];
  v11 = v9 * *a3;
  if (*a3 != 1 && v9 != 1)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Added input is not a vector: [%ux%d]", "Shift_Right_Vec", 3441, v13, v14, v10, v9);
    }

    g_FPE_AssertFlag = 1;
  }

  if (v11 <= a4)
  {
    result = Set_Mat_Size(a4, a5, v10, v9);
    v18 = v11 - 1;
    if (v11 != 1)
    {
      v19 = v18 - 1;
      v20 = (a5 + 8 * v18 + 8);
      do
      {
        v21 = v19;
        *v20-- = *&a3[2 * v19-- + 2];
      }

      while (v21);
    }

    *(a5 + 8) = a1;
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Vout has %d elements, while %d are required!", "Shift_Right_Vec", 3445, v15, v16, a4, v11 + 1);
    }

    g_FPE_AssertFlag = 1;

    return Set_Mat_Size(a4, a5, 0, 0);
  }

  return result;
}

const char *Shift_Left_Vec(double a1, uint64_t a2, int *a3, const char *a4, int *a5)
{
  v10 = *a3;
  v9 = a3[1];
  v11 = (v9 * *a3);
  if (*a3 != 1 && v9 != 1)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Added input is not a vector: [%ux%d]", "Shift_Left_Vec", 3478, v13, v14, v10, v9);
    }

    g_FPE_AssertFlag = 1;
  }

  if (v11 <= a4)
  {
    result = Set_Mat_Size(a4, a5, v10, v9);
    if (v11 >= 2)
    {
      v18 = a5 + 2;
      v19 = v11 - 1;
      v20 = a3 + 4;
      do
      {
        v21 = *v20;
        v20 += 2;
        *v18 = v21;
        v18 += 2;
        --v19;
      }

      while (v19);
    }

    *&a5[2 * (v11 - 1) + 2] = a1;
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Vout has %d elements, while %d are required!", "Shift_Left_Vec", 3482, v15, v16, a4, v9 * v10);
    }

    g_FPE_AssertFlag = 1;

    return Set_Mat_Size(a4, a5, 0, 0);
  }

  return result;
}

const char *Diff_Vec(uint64_t a1, _DWORD *a2, const char *a3, int *a4)
{
  v8 = *a2;
  v7 = a2[1];
  v9 = v7 * *a2;
  if (*a2 != 1 && v7 != 1)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Added input is not a vector: [%ux%d]", "Diff_Vec", 3513, v11, v12, v8, v7);
    }

    g_FPE_AssertFlag = 1;
  }

  if (v9 - 1 <= a3)
  {
    if (v8 <= v7)
    {
      v18 = v7 - 1;
      v15 = a3;
      v16 = a4;
      v17 = 1;
    }

    else
    {
      v15 = a3;
      v16 = a4;
      v17 = v8 - 1;
      v18 = 1;
    }

    result = Set_Mat_Size(v15, v16, v17, v18);
    if (v9 >= 2)
    {
      v20 = (a4 + 2);
      v21 = v9 - 1;
      v22 = (a2 + 4);
      do
      {
        *v20++ = *v22 - *(v22 - 1);
        ++v22;
        --v21;
      }

      while (v21);
    }
  }

  else
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Vout has %d elements, while %d are required!", "Diff_Vec", 3517, v13, v14, a3, v9 - 1);
    }

    g_FPE_AssertFlag = 1;

    return Set_Mat_Size(a3, a4, 0, 0);
  }

  return result;
}

double Diag_Mult_Mat(double result, uint64_t a2, unsigned int *a3, uint64_t a4, _DWORD *a5)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a5[1] * *a5;
  if (v7 != v8)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Input matrix must be square: [%ux%d]", "Diag_Mult_Mat", 3552, v10, v11, v7, v8);
    }

    g_FPE_AssertFlag = 1;
  }

  if (v7 != v9)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Input vector must have same length as matrix rows/columns: mat=[%ux%d], vec=[%ux%u]", "Diag_Mult_Mat", 3553, v12, v13, v7, v8, *a5, a5[1]);
    }

    g_FPE_AssertFlag = 1;
  }

  if (v7)
  {
    v14 = 0;
    v15 = a3 + 2;
    v16 = a3[1] + 1;
    v17 = (a5 + 2);
    do
    {
      v18 = *v17++;
      result = *&v15[2 * v14] * v18;
      *&v15[2 * v14] = result;
      v14 += v16;
      --v7;
    }

    while (v7);
  }

  return result;
}