uint64_t std::__function::__func<std::function<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>,std::allocator<std::function<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>>,gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t NK_Check_Num_SV_Res(uint64_t result, _DWORD *a2, unsigned int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v10 = 0;
  v11 = (a7 + 152);
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  do
  {
    v16 = v11[v10];
    v17 = vmovl_u8(*v16.i8);
    v18 = vmovl_high_u8(v16);
    v15 = vaddw_high_u16(v15, v18);
    v14 = vaddw_u16(v14, *v18.i8);
    v13 = vaddw_high_u16(v13, v17);
    v12 = vaddw_u16(v12, *v17.i8);
    ++v10;
  }

  while (v10 != 3);
  v19 = 0;
  *(a7 + 3) = vaddvq_s32(vaddq_s32(vaddq_s32(v12, v14), vaddq_s32(v13, v15)));
  v20 = (a10 + 152);
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
  do
  {
    v25 = v20[v19];
    v26 = vmovl_u8(*v25.i8);
    v27 = vmovl_high_u8(v25);
    v24 = vaddw_high_u16(v24, v27);
    v23 = vaddw_u16(v23, *v27.i8);
    v22 = vaddw_high_u16(v22, v26);
    v21 = vaddw_u16(v21, *v26.i8);
    ++v19;
  }

  while (v19 != 3);
  v28 = 0;
  *(a10 + 3) = vaddvq_s32(vaddq_s32(vaddq_s32(v21, v23), vaddq_s32(v22, v24)));
  v29 = (a8 + 152);
  v30 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
  v33 = 0uLL;
  do
  {
    v34 = v29[v28];
    v35 = vmovl_u8(*v34.i8);
    v36 = vmovl_high_u8(v34);
    v33 = vaddw_high_u16(v33, v36);
    v32 = vaddw_u16(v32, *v36.i8);
    v31 = vaddw_high_u16(v31, v35);
    v30 = vaddw_u16(v30, *v35.i8);
    ++v28;
  }

  while (v28 != 3);
  LOBYTE(v37) = vaddvq_s32(vaddq_s32(vaddq_s32(v30, v32), vaddq_s32(v31, v33)));
  *(a8 + 3) = v37;
  v38 = *(a7 + 3);
  if (v38 < a3 || v38 <= 2 && (a4 & 1) == 0 && (!result || !a6 && *a2))
  {
    *(a7 + 3) = 0;
    *v11 = 0u;
    *(a7 + 168) = 0u;
    *(a7 + 184) = 0u;
    v37 = *(a8 + 3);
    if (v37 + *(a10 + 3) < 3 || (a9 <= 100000000.0 ? (v39 = a4 == 0) : (v39 = 1), !v39 ? (v40 = a5 <= 2) : (v40 = 1), v40))
    {
      LOBYTE(v37) = 0;
      *(a10 + 3) = 0;
      *v20 = 0uLL;
      *(a10 + 168) = 0uLL;
      *(a10 + 184) = 0uLL;
      *(a8 + 3) = 0;
      *v29 = 0uLL;
      *(a8 + 168) = 0uLL;
      *(a8 + 184) = 0uLL;
    }
  }

  if (a3 > (*(a10 + 3) + v37))
  {
    *(a10 + 3) = 0;
    *v20 = 0u;
    *(a10 + 168) = 0u;
    *(a10 + 184) = 0u;
    *(a8 + 3) = 0;
    *v29 = 0u;
    *(a8 + 168) = 0u;
    *(a8 + 184) = 0u;
  }

  return result;
}

uint64_t ARP_Calc(uint64_t result)
{
  v1 = *(result + 88);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v3 < 0 != v2)
  {
    v5 = vdupq_n_s64(0x416312D000000000uLL);
    v6 = v5;
  }

  else
  {
    if (v3 >= 9)
    {
      v3 = 9;
    }

    v4 = g_ARP_cBiasP_Table[v3 + 10];
    v5 = vmulq_n_f64(vsqrtq_f64(*(result + 8)), v4);
    v6 = vmulq_n_f64(vsqrtq_f64(*(result + 24)), v4);
  }

  *(result + 40) = v5;
  *(result + 56) = v6;
  return result;
}

void Gnm31_05SendUserCfgGnc(void)
{
  v11 = *MEMORY[0x29EDCA608];
  v0 = (xmmword_2A1920838 & 1) != 0 || (BYTE1(xmmword_2A1920838) & 1) != 0 || BYTE2(xmmword_2A1920838) == 1;
  if ((BYTE5(xmmword_2A1920838) & 1) != 0 || (BYTE6(xmmword_2A1920838) & 1) != 0 || BYTE7(xmmword_2A1920838) == 1)
  {
    v0 |= 0x20u;
  }

  if ((BYTE10(xmmword_2A1920838) & 1) != 0 || (BYTE11(xmmword_2A1920838) & 1) != 0 || BYTE12(xmmword_2A1920838) == 1)
  {
    v0 |= 4u;
  }

  if ((HIBYTE(xmmword_2A1920838) & 1) != 0 || (byte_2A1920848 & 1) != 0 || byte_2A1920849 == 1)
  {
    v0 |= 0x10u;
  }

  if ((dword_2A192084C & 1) != 0 || (dword_2A192084C & 0x100) != 0 || BYTE2(dword_2A192084C) == 1)
  {
    v0 |= 2u;
  }

  if ((byte_2A1920851 & 1) != 0 || (byte_2A1920852 & 1) != 0 || byte_2A1920853 == 1)
  {
    v0 |= 0x40u;
  }

  v1 = gnssOsa_Calloc("Gnm31_05SendUserCfgGnc", 507, 1, 0x50uLL);
  if (v1)
  {
    v2 = v1;
    v1[16] = v0;
    *(v1 + 16) = BYTE1(dword_2A1920824);
    *(v1 + 17) = dword_2A1920824;
    *(v1 + 18) = BYTE2(dword_2A1920824);
    v1[10] = 1;
    v3 = dword_2A1920820;
    if ((dword_2A1920820 & 0x200) != 0)
    {
      *(v1 + 23) = dword_2A1920828;
      v1[12] = HIWORD(dword_2A1920828);
      v4 = 51;
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v4 = 19;
      if ((dword_2A1920820 & 0x800) == 0)
      {
LABEL_31:
        *(v1 + 3) = v4 | 0x200;
        *(v1 + 72) = (dword_2A192081C & 0x40000) != 0;
        v5 = HIBYTE(dword_2A1920824);
        if (HIBYTE(dword_2A1920824) > 3u)
        {
          if (HIBYTE(dword_2A1920824) > 5u)
          {
            if (HIBYTE(dword_2A1920824) == 6)
            {
              v5 = 4;
            }

            else
            {
              if (HIBYTE(dword_2A1920824) != 7)
              {
                goto LABEL_51;
              }

              v5 = 6;
            }
          }

          else if (HIBYTE(dword_2A1920824) == 4)
          {
            v5 = 5;
          }

          else
          {
            if (HIBYTE(dword_2A1920824) != 5)
            {
              goto LABEL_51;
            }

            v5 = 1;
          }
        }

        else if (HIBYTE(dword_2A1920824) - 2 >= 2 && HIBYTE(dword_2A1920824))
        {
          if (HIBYTE(dword_2A1920824) == 1)
          {
            Gnm17_12SendClearNv(0x10000);
LABEL_47:
            if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v6 = mach_continuous_time();
              v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_CFG_UPDATE_IND =>GNCP CfgMask,0x%X\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm31_05SendUserCfgGnc", v2[3]);
              LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
            }

            AgpsSendFsmMsg(128, 134, 8394499, v2);
            return;
          }

LABEL_51:
          if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v8 = mach_continuous_time();
            v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StartMode,%hhu\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm31_05SendUserCfgGnc", 515, HIBYTE(dword_2A1920824));
            LbsOsaTrace_WriteLog(0xBu, __str, v9, 2, 1);
          }

          goto LABEL_47;
        }

        *(v1 + 22) = v5;
        *(v1 + 3) = v4 | 0x208;
        goto LABEL_47;
      }
    }

    v4 |= 0x80u;
    v1[17] = word_2A192082C;
    goto LABEL_31;
  }
}

void Gnm31_06SendUserCfgLsim(void)
{
  v32 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("Gnm31_06SendUserCfgLsim", 601, 1, 0x20uLL);
  if (!v0)
  {
    return;
  }

  v1 = v0;
  v0[3] = 0;
  v2 = gnssOsa_Calloc("Gnm31_06SendUserCfgLsim", 609, 1, 0x244uLL);
  v1[2] = v2;
  if (v2)
  {
    v3 = 0;
    for (i = 1; ; i = 0)
    {
      v5 = i;
      v6 = &g_UsrConfig + 262 * v3;
      v8 = v6[82];
      v7 = v6 + 82;
      v9 = v1[2];
      *(v9 + 268 * v3) = v8;
      v10 = v7[257];
      if (v10 > 1)
      {
        if (v10 != 3 && v10 != 2)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (!v7[257])
        {
          goto LABEL_14;
        }

        if (v10 != 1)
        {
LABEL_11:
          if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v12 = mach_continuous_time();
            v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AddrType,%hhu\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 87, "Gnm31_06SendUserCfgLsim", 770, v7[257]);
            LbsOsaTrace_WriteLog(0xBu, __str, v13, 2, 1);
          }

          v9 = v1[2];
LABEL_14:
          *(v9 + 268 * v3 + 4) = 0;
          goto LABEL_15;
        }
      }

      v11 = v9 + 268 * v3;
      *(v11 + 4) = v10;
      *(v11 + 264) = *(v7 + 130);
      strncpy_s((v11 + 8), 0x100u, v7 + 1, v7[258]);
LABEL_15:
      v3 = 1;
      if ((v5 & 1) == 0)
      {
        v14 = v1[2];
        *(v14 + 536) = 0;
        v15 = byte_2A1920860;
        if (byte_2A1920860 && byte_2A1920860 != 1 && byte_2A1920860 != 2)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v16 = mach_continuous_time();
            v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PrefPosMethod,%hhu\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 87, "Gnm31_06SendUserCfgLsim", 770, byte_2A1920860);
            LbsOsaTrace_WriteLog(0xBu, __str, v17, 2, 1);
          }

          v14 = v1[2];
          v15 = 3;
        }

        v18 = dword_2A192081C;
        v19 = vdupq_n_s32(dword_2A192081C);
        *(v14 + 556) = v15;
        v20 = vshlq_u32(v19, xmmword_299728C40);
        v20.i32[3] = vshlq_u32(v19, xmmword_299728C50).i32[3];
        v21 = vandq_s8(v20, xmmword_299728C60);
        v22 = vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
        v23 = v22.i32[0] | v20.i8[0] & 0x80 | v22.i32[1] | (16 * v18) & 0x40000;
        if (v18)
        {
          v24 = &dword_2A1920858;
          v25 = vld1q_dup_f32(v24);
          v26 = vandq_s8(vshlq_u32(v25, xmmword_299728C70), xmmword_299728C80);
          *v26.i8 = vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
          v23 |= v26.i32[0] | v26.i32[1];
        }

        v27 = (dword_2A1920820 << 9) & (HIWORD(qword_2A1920A6E) << 15) & 0x8000 | v23;
        if ((dword_2A1920820 & 0x20) != 0)
        {
          v28 = dword_2A192085C;
          if ((dword_2A192085C & 0x40) != 0)
          {
            *(v14 + 560) = qword_2A1920A6E;
          }

          if ((v28 & 0x100) != 0)
          {
            *(v14 + 562) = WORD1(qword_2A1920A6E);
          }
        }

        *(v14 + 568) = xmmword_2A1920838;
        *(v14 + 569) = vzip1_s32(*(&xmmword_2A1920838 + 1), *&byte_2A1920851);
        *(v14 + 577) = byte_2A1920855;
        *(v14 + 564) = v27;
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_LSIM_CONFIG_IND =>LSIM\n", (*&g_MacClockTicksToMsRelation * v29), "GNM", 73, "Gnm31_06SendUserCfgLsim");
          LbsOsaTrace_WriteLog(0xBu, __str, v30, 4, 1);
        }

        AgpsSendFsmMsg(128, 131, 8594435, v1);
        return;
      }
    }
  }

  free(v1);
}

uint64_t Gnm31_10InitUserCfg(void)
{
  unk_2A1920818 = 0;
  *&algn_2A192082F = 0u;
  *&byte_2A1920848 = 0u;
  *&dword_2A192081C = 0x47F0000181FLL;
  *(&xmmword_2A1920838 + 4) = xmmword_299728C90;
  dword_2A192084C = 16777217;
  *&dword_2A1920858 = 0x10000001ELL;
  *(&dword_2A1920824 + 2) = 0;
  algn_2A1920861 = -256;
  unk_2A1920873 = 0u;
  unk_2A1920883 = 0u;
  unk_2A1920893 = 0u;
  unk_2A19208A3 = 0u;
  unk_2A19208B3 = 0u;
  unk_2A19208C3 = 0u;
  unk_2A19208D3 = 0u;
  unk_2A19208E3 = 0u;
  unk_2A19208F3 = 0u;
  unk_2A1920903 = 0u;
  byte_2A1920968 = -1;
  word_2A1920966 = -1;
  word_2A1920A6C = -1;
  qword_2A1920A6E = 0;
  *(&qword_2A1920A6E + 6) = 1;
  xmmword_2A1920A49 = 0u;
  unk_2A1920A59 = 0u;
  dword_2A1920A68 = 0;
  g_UsrConfig = 0x332E352E322E76;
  LOWORD(dword_2A1920824) = 512;
  byte_2A192082E = 30;
  LODWORD(xmmword_2A1920838) = 16843009;
  byte_2A1920850 = 0;
  *&byte_2A1920851 = 16843009;
  byte_2A1920860 = 2;
  xmmword_2A1920863 = 0u;
  byte_2A1920855 = 0;
  xmmword_2A1920913 = 0u;
  unk_2A1920923 = 0u;
  xmmword_2A1920933 = 0u;
  unk_2A1920943 = 0u;
  xmmword_2A1920953 = 0u;
  *(&xmmword_2A1920953 + 15) = 0;
  xmmword_2A1920969 = 0u;
  unk_2A1920979 = 0u;
  xmmword_2A1920989 = 0u;
  unk_2A1920999 = 0u;
  xmmword_2A19209A9 = 0u;
  unk_2A19209B9 = 0u;
  xmmword_2A19209C9 = 0u;
  unk_2A19209D9 = 0u;
  xmmword_2A19209E9 = 0u;
  unk_2A19209F9 = 0u;
  xmmword_2A1920A09 = 0u;
  unk_2A1920A19 = 0u;
  xmmword_2A1920A29 = 0u;
  unk_2A1920A39 = 0u;

  return Gnm31_00PrintUsrCfg("INITIALIZED DEFAULT VALUE");
}

uint64_t Gnm31_00PrintUsrCfg(const char *a1)
{
  v165 = *MEMORY[0x29EDCA608];
  if (strnlen(&g_UsrConfig, 0xCuLL) <= 11 && LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:%s Version,%s\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm31_00PrintUsrCfg", a1, &g_UsrConfig);
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:ConfigMask,0x%X,Config2Mask,0x%X\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm31_00PrintUsrCfg", dword_2A192081C, dword_2A1920820);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v7 = 89;
    if ((dword_2A192081C & 1) == 0)
    {
      v7 = 78;
    }

    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:UPAllowed,%c\n", v6, "GNM", 68, "Gnm31_00PrintUsrCfg", v7);
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v10 = 89;
    if ((dword_2A192081C & 2) == 0)
    {
      v10 = 78;
    }

    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:CPAllowed,%c\n", v9, "GNM", 68, "Gnm31_00PrintUsrCfg", v10);
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v13 = 89;
    if ((dword_2A192081C & 4) == 0)
    {
      v13 = 78;
    }

    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:UPoverCP,%c\n", v12, "GNM", 68, "Gnm31_00PrintUsrCfg", v13);
    LbsOsaTrace_WriteLog(0xBu, __str, v14, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v16 = 89;
    if ((dword_2A192081C & 8) == 0)
    {
      v16 = 78;
    }

    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:MoAllowed,%c\n", v15, "GNM", 68, "Gnm31_00PrintUsrCfg", v16);
    LbsOsaTrace_WriteLog(0xBu, __str, v17, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v19 = 89;
    if ((dword_2A192081C & 0x10) == 0)
    {
      v19 = 78;
    }

    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:NIAllowed,%c\n", v18, "GNM", 68, "Gnm31_00PrintUsrCfg", v19);
    LbsOsaTrace_WriteLog(0xBu, __str, v20, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v21 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v22 = 89;
    if ((dword_2A192081C & 0x20) == 0)
    {
      v22 = 78;
    }

    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:FAAllowed,%c\n", v21, "GNM", 68, "Gnm31_00PrintUsrCfg", v22);
    LbsOsaTrace_WriteLog(0xBu, __str, v23, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v24 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v25 = 89;
    if ((dword_2A192081C & 0x40) == 0)
    {
      v25 = 78;
    }

    v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:Wi-FiAid,%c\n", v24, "GNM", 68, "Gnm31_00PrintUsrCfg", v25);
    LbsOsaTrace_WriteLog(0xBu, __str, v26, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v27 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v28 = 89;
    if ((dword_2A192081C & 0x80) == 0)
    {
      v28 = 78;
    }

    v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:SNTPRefTime,%c\n", v27, "GNM", 68, "Gnm31_00PrintUsrCfg", v28);
    LbsOsaTrace_WriteLog(0xBu, __str, v29, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v30 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v31 = 89;
    if ((dword_2A192081C & 0x100) == 0)
    {
      v31 = 78;
    }

    v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:SensorAid,%c\n", v30, "GNM", 68, "Gnm31_00PrintUsrCfg", v31);
    LbsOsaTrace_WriteLog(0xBu, __str, v32, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v33 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v34 = 89;
    if ((dword_2A192081C & 0x200) == 0)
    {
      v34 = 78;
    }

    v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:HotStartReady,%c\n", v33, "GNM", 68, "Gnm31_00PrintUsrCfg", v34);
    LbsOsaTrace_WriteLog(0xBu, __str, v35, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v36 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v37 = 89;
    if ((dword_2A192081C & 0x400) == 0)
    {
      v37 = 78;
    }

    v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:PositionReady,%c\n", v36, "GNM", 68, "Gnm31_00PrintUsrCfg", v37);
    LbsOsaTrace_WriteLog(0xBu, __str, v38, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v39 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v40 = 89;
    if ((dword_2A192081C & 0x800) == 0)
    {
      v40 = 78;
    }

    v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:GNSSEnabled,%c\n", v39, "GNM", 68, "Gnm31_00PrintUsrCfg", v40);
    LbsOsaTrace_WriteLog(0xBu, __str, v41, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v42 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v43 = 89;
    if ((dword_2A192081C & 0x8000) == 0)
    {
      v43 = 78;
    }

    v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:LTLAgeingEnabled,%c\n", v42, "GNM", 68, "Gnm31_00PrintUsrCfg", v43);
    LbsOsaTrace_WriteLog(0xBu, __str, v44, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v45 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v46 = 89;
    if ((dword_2A192081C & 0x10000) == 0)
    {
      v46 = 78;
    }

    v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:STLDivIgnore,%c\n", v45, "GNM", 68, "Gnm31_00PrintUsrCfg", v46);
    LbsOsaTrace_WriteLog(0xBu, __str, v47, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v48 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v49 = 89;
    if ((dword_2A192081C & 0x20000) == 0)
    {
      v49 = 78;
    }

    v50 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:CLTLearningsEnabled,%c\n", v48, "GNM", 68, "Gnm31_00PrintUsrCfg", v49);
    LbsOsaTrace_WriteLog(0xBu, __str, v50, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v51 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v52 = 89;
    if ((dword_2A192081C & 0x1000) == 0)
    {
      v52 = 78;
    }

    v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:EarlyReturn,%c\n", v51, "GNM", 68, "Gnm31_00PrintUsrCfg", v52);
    LbsOsaTrace_WriteLog(0xBu, __str, v53, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v54 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v55 = 89;
    if ((dword_2A192081C & 0x4000) == 0)
    {
      v55 = 78;
    }

    v56 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:NwPeriodicOverride,%c\n", v54, "GNM", 68, "Gnm31_00PrintUsrCfg", v55);
    LbsOsaTrace_WriteLog(0xBu, __str, v56, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v57 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v58 = 89;
    if ((dword_2A192081C & 0x40000) == 0)
    {
      v58 = 78;
    }

    v59 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:UseBrdNavMsgDisbld,%c\n", v57, "GNM", 68, "Gnm31_00PrintUsrCfg", v58);
    LbsOsaTrace_WriteLog(0xBu, __str, v59, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v60 = mach_continuous_time();
    v61 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:SensitivityTTFF,%hhu,SensitivityMode,%hhu,PowerPref,%hhu,ColdStartMode,%hhu\n", (*&g_MacClockTicksToMsRelation * v60), "GNM", 73, "Gnm31_00PrintUsrCfg", dword_2A1920824, BYTE1(dword_2A1920824), BYTE2(dword_2A1920824), HIBYTE(dword_2A1920824));
    LbsOsaTrace_WriteLog(0xBu, __str, v61, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v62 = mach_continuous_time();
    v63 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:Constel Auto Msb Msa PredEph SaEph\n", (*&g_MacClockTicksToMsRelation * v62), "GNM", 73, "Gnm31_00PrintUsrCfg");
    LbsOsaTrace_WriteLog(0xBu, __str, v63, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v64 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v65 = 78;
    if (BYTE4(xmmword_2A1920838))
    {
      v66 = 89;
    }

    else
    {
      v66 = 78;
    }

    if (BYTE3(xmmword_2A1920838))
    {
      v67 = 89;
    }

    else
    {
      v67 = 78;
    }

    if (BYTE2(xmmword_2A1920838))
    {
      v68 = 89;
    }

    else
    {
      v68 = 78;
    }

    if (BYTE1(xmmword_2A1920838))
    {
      v69 = 89;
    }

    else
    {
      v69 = 78;
    }

    if (xmmword_2A1920838)
    {
      v65 = 89;
    }

    v70 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:GPS  %c %c %c %c %c\n", v64, "GNM", 73, "Gnm31_00PrintUsrCfg", v65, v69, v68, v67, v66);
    LbsOsaTrace_WriteLog(0xBu, __str, v70, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v71 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v72 = 78;
    if (BYTE9(xmmword_2A1920838))
    {
      v73 = 89;
    }

    else
    {
      v73 = 78;
    }

    if (BYTE8(xmmword_2A1920838))
    {
      v74 = 89;
    }

    else
    {
      v74 = 78;
    }

    if (BYTE7(xmmword_2A1920838))
    {
      v75 = 89;
    }

    else
    {
      v75 = 78;
    }

    if (BYTE6(xmmword_2A1920838))
    {
      v76 = 89;
    }

    else
    {
      v76 = 78;
    }

    if (BYTE5(xmmword_2A1920838))
    {
      v72 = 89;
    }

    v77 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:GLON %c %c %c %c %c\n", v71, "GNM", 73, "Gnm31_00PrintUsrCfg", v72, v76, v75, v74, v73);
    LbsOsaTrace_WriteLog(0xBu, __str, v77, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v78 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v79 = 78;
    if (BYTE14(xmmword_2A1920838))
    {
      v80 = 89;
    }

    else
    {
      v80 = 78;
    }

    if (BYTE13(xmmword_2A1920838))
    {
      v81 = 89;
    }

    else
    {
      v81 = 78;
    }

    if (BYTE12(xmmword_2A1920838))
    {
      v82 = 89;
    }

    else
    {
      v82 = 78;
    }

    if (BYTE11(xmmword_2A1920838))
    {
      v83 = 89;
    }

    else
    {
      v83 = 78;
    }

    if (BYTE10(xmmword_2A1920838))
    {
      v79 = 89;
    }

    v84 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:SBAS %c %c %c %c %c\n", v78, "GNM", 73, "Gnm31_00PrintUsrCfg", v79, v83, v82, v81, v80);
    LbsOsaTrace_WriteLog(0xBu, __str, v84, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v85 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v86 = 78;
    if (byte_2A192084B)
    {
      v87 = 89;
    }

    else
    {
      v87 = 78;
    }

    if (byte_2A192084A)
    {
      v88 = 89;
    }

    else
    {
      v88 = 78;
    }

    if (byte_2A1920849)
    {
      v89 = 89;
    }

    else
    {
      v89 = 78;
    }

    if (byte_2A1920848)
    {
      v90 = 89;
    }

    else
    {
      v90 = 78;
    }

    if (HIBYTE(xmmword_2A1920838))
    {
      v86 = 89;
    }

    v91 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:QZSS %c %c %c %c %c\n", v85, "GNM", 73, "Gnm31_00PrintUsrCfg", v86, v90, v89, v88, v87);
    LbsOsaTrace_WriteLog(0xBu, __str, v91, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v92 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v93 = 78;
    if (byte_2A1920850)
    {
      v94 = 89;
    }

    else
    {
      v94 = 78;
    }

    if (HIBYTE(dword_2A192084C))
    {
      v95 = 89;
    }

    else
    {
      v95 = 78;
    }

    if (BYTE2(dword_2A192084C))
    {
      v96 = 89;
    }

    else
    {
      v96 = 78;
    }

    if (BYTE1(dword_2A192084C))
    {
      v97 = 89;
    }

    else
    {
      v97 = 78;
    }

    if (dword_2A192084C)
    {
      v93 = 89;
    }

    v98 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:GAL  %c %c %c %c %c\n", v92, "GNM", 73, "Gnm31_00PrintUsrCfg", v93, v97, v96, v95, v94);
    LbsOsaTrace_WriteLog(0xBu, __str, v98, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v99 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v100 = 78;
    if (byte_2A1920855)
    {
      v101 = 89;
    }

    else
    {
      v101 = 78;
    }

    if (byte_2A1920854)
    {
      v102 = 89;
    }

    else
    {
      v102 = 78;
    }

    if (byte_2A1920853)
    {
      v103 = 89;
    }

    else
    {
      v103 = 78;
    }

    if (byte_2A1920852)
    {
      v104 = 89;
    }

    else
    {
      v104 = 78;
    }

    if (byte_2A1920851)
    {
      v100 = 89;
    }

    v105 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:BDS  %c %c %c %c %c\n", v99, "GNM", 73, "Gnm31_00PrintUsrCfg", v100, v104, v103, v102, v101);
    LbsOsaTrace_WriteLog(0xBu, __str, v105, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v106 = mach_continuous_time();
    v107 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:SUPL ConfigMask,0x%X,Config2Mask,0x%X\n", (*&g_MacClockTicksToMsRelation * v106), "GNM", 73, "Gnm31_00PrintUsrCfg", dword_2A1920858, dword_2A192085C);
    LbsOsaTrace_WriteLog(0xBu, __str, v107, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v108 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v109 = 89;
    if ((dword_2A1920858 & 1) == 0)
    {
      v109 = 78;
    }

    v110 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:SUPL MultiSessn,%c\n", v108, "GNM", 68, "Gnm31_00PrintUsrCfg", v109);
    LbsOsaTrace_WriteLog(0xBu, __str, v110, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v111 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v112 = 89;
    if ((dword_2A1920858 & 2) == 0)
    {
      v112 = 78;
    }

    v113 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:SUPL SecureTLS,%c\n", v111, "GNM", 68, "Gnm31_00PrintUsrCfg", v112);
    LbsOsaTrace_WriteLog(0xBu, __str, v113, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v114 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v115 = 89;
    if ((dword_2A1920858 & 4) == 0)
    {
      v115 = 78;
    }

    v116 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:SUPL PosTechECID,%c\n", v114, "GNM", 68, "Gnm31_00PrintUsrCfg", v115);
    LbsOsaTrace_WriteLog(0xBu, __str, v116, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v117 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v118 = 89;
    if ((dword_2A1920858 & 8) == 0)
    {
      v118 = 78;
    }

    v119 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:SUPL Ver2Support,%c\n", v117, "GNM", 68, "Gnm31_00PrintUsrCfg", v118);
    LbsOsaTrace_WriteLog(0xBu, __str, v119, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v120 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v121 = 89;
    if ((dword_2A1920858 & 0x10) == 0)
    {
      v121 = 78;
    }

    v122 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:SUPL LPPPDUs,%c\n", v120, "GNM", 68, "Gnm31_00PrintUsrCfg", v121);
    LbsOsaTrace_WriteLog(0xBu, __str, v122, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v123 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v124 = 89;
    if ((dword_2A1920858 & 0x20) == 0)
    {
      v124 = 78;
    }

    v125 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:SUPL Ver2SHA1,%c\n", v123, "GNM", 68, "Gnm31_00PrintUsrCfg", v124);
    LbsOsaTrace_WriteLog(0xBu, __str, v125, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v126 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v127 = 89;
    if ((dword_2A1920858 & 0x40) == 0)
    {
      v127 = 78;
    }

    v128 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:SUPL MSAdisabl,%c\n", v126, "GNM", 68, "Gnm31_00PrintUsrCfg", v127);
    LbsOsaTrace_WriteLog(0xBu, __str, v128, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v129 = mach_continuous_time();
    v130 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:SUPL PrefPosMeth,%hhu\n", (*&g_MacClockTicksToMsRelation * v129), "GNM", 73, "Gnm31_00PrintUsrCfg", byte_2A1920860);
    LbsOsaTrace_WriteLog(0xBu, __str, v130, 4, 1);
  }

  v131 = 0;
  v132 = 1;
  v133 = 1;
  do
  {
    v134 = v132;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v135 = mach_continuous_time();
      v136 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:SUPL SIMNo,%u,SIMId,%u,SLPAddrType,%hhu,PortNum,%u,SLPAddrLen,%u\n", (*&g_MacClockTicksToMsRelation * v135), "GNM", 73, "Gnm31_00PrintUsrCfg", v133, *(&g_UsrConfig + 262 * v131 + 82), *(&g_UsrConfig + 262 * v131 + 339), *(&g_UsrConfig + 131 * v131 + 171), *(&g_UsrConfig + 262 * v131 + 340));
      LbsOsaTrace_WriteLog(0xBu, __str, v136, 4, 1);
    }

    v137 = &g_UsrConfig + 262 * v131;
    v139 = v137[83];
    v138 = v137 + 83;
    if (v139 && strnlen(v138, 0x100uLL) <= 255 && LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v140 = mach_continuous_time();
      v141 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:SUPL SIMNo,%u,SLPAddress,%s\n", (*&g_MacClockTicksToMsRelation * v140), "GNM", 73, "Gnm31_00PrintUsrCfg", v133, v138);
      LbsOsaTrace_WriteLog(0xBu, __str, v141, 4, 1);
    }

    v132 = 0;
    v133 = 2;
    v131 = 1;
  }

  while ((v134 & 1) != 0);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v142 = mach_continuous_time();
    v143 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:SUPL UT2Timer,%u\n", (*&g_MacClockTicksToMsRelation * v142), "GNM", 73, "Gnm31_00PrintUsrCfg", qword_2A1920A6E);
    LbsOsaTrace_WriteLog(0xBu, __str, v143, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v144 = mach_continuous_time();
    v145 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:SUPL UT3Timer,%u\n", (*&g_MacClockTicksToMsRelation * v144), "GNM", 73, "Gnm31_00PrintUsrCfg", BYTE1(qword_2A1920A6E));
    LbsOsaTrace_WriteLog(0xBu, __str, v145, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v146 = mach_continuous_time();
    v147 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:SUPL SessinTO,%u\n", (*&g_MacClockTicksToMsRelation * v146), "GNM", 73, "Gnm31_00PrintUsrCfg", WORD1(qword_2A1920A6E));
    LbsOsaTrace_WriteLog(0xBu, __str, v147, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v148 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v149 = 89;
    if ((qword_2A1920A6E & 0x1000000000000) == 0)
    {
      v149 = 78;
    }

    v150 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:CP SemiAutoPos,%c\n", v148, "GNM", 73, "Gnm31_00PrintUsrCfg", v149);
    LbsOsaTrace_WriteLog(0xBu, __str, v150, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v151 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v152 = 78;
    if (dword_2A1920828)
    {
      v152 = 89;
    }

    v153 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:SimulatedMode,%c\n", v151, "GNM", 68, "Gnm31_00PrintUsrCfg", v152);
    LbsOsaTrace_WriteLog(0xBu, __str, v153, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v154 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v155 = 78;
    if (BYTE1(dword_2A1920828))
    {
      v155 = 89;
    }

    v156 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:ExternalClock,%c\n", v154, "GNM", 68, "Gnm31_00PrintUsrCfg", v155);
    LbsOsaTrace_WriteLog(0xBu, __str, v156, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v157 = mach_continuous_time();
    v158 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:EarliestGpsWkNo,%u\n", (*&g_MacClockTicksToMsRelation * v157), "GNM", 73, "Gnm31_00PrintUsrCfg", HIWORD(dword_2A1920828));
    LbsOsaTrace_WriteLog(0xBu, __str, v158, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v159 = mach_continuous_time();
    v160 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:EarlyStartTO,%us\n", (*&g_MacClockTicksToMsRelation * v159), "GNM", 73, "Gnm31_00PrintUsrCfg", byte_2A192082E);
    LbsOsaTrace_WriteLog(0xBu, __str, v160, 4, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v162 = mach_continuous_time();
    v163 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: USRCFG:E911TargetVertAccM,%fm\n", (*&g_MacClockTicksToMsRelation * v162), "GNM", 73, "Gnm31_00PrintUsrCfg", *&qword_2A1920830);
    return LbsOsaTrace_WriteLog(0xBu, __str, v163, 4, 1);
  }

  return result;
}

uint64_t Gnm31_12UpdateUserCfg(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_SET_USER_CONFIG\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm31_12UpdateUserCfg");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Update received\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm31_03HandleUserCfg");
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    v6 = *(a1 + 12);
    if (v6)
    {
      dword_2A192081C = dword_2A192081C & 0xFFFFFFFE | *(a1 + 28) & 1;
      if ((v6 & 2) == 0)
      {
LABEL_8:
        if ((v6 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_37;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

    dword_2A192081C = dword_2A192081C & 0xFFFFFFFD | (2 * ((*(a1 + 28) >> 1) & 1));
    if ((v6 & 4) == 0)
    {
LABEL_9:
      if ((v6 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_38;
    }

LABEL_37:
    dword_2A192081C = dword_2A192081C & 0xFFFFFFFB | (4 * ((*(a1 + 28) >> 2) & 1));
    if ((v6 & 8) == 0)
    {
LABEL_10:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_39;
    }

LABEL_38:
    dword_2A192081C = dword_2A192081C & 0xFFFFFFF7 | (8 * ((*(a1 + 28) >> 3) & 1));
    if ((v6 & 0x20) == 0)
    {
LABEL_11:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_40;
    }

LABEL_39:
    dword_2A192081C = dword_2A192081C & 0xFFFFFFDF | (32 * ((*(a1 + 28) >> 5) & 1));
    if ((v6 & 0x40) == 0)
    {
LABEL_12:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_41;
    }

LABEL_40:
    dword_2A192081C = dword_2A192081C & 0xFFFFFFBF | (((*(a1 + 28) >> 6) & 1) << 6);
    if ((v6 & 0x80) == 0)
    {
LABEL_13:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_42;
    }

LABEL_41:
    dword_2A192081C = dword_2A192081C & 0xFFFFFF7F | (((*(a1 + 28) >> 7) & 1) << 7);
    if ((v6 & 0x100) == 0)
    {
LABEL_14:
      if ((v6 & 0x800) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_43;
    }

LABEL_42:
    dword_2A192081C = dword_2A192081C & 0xFFFFFEFF | (((*(a1 + 28) >> 8) & 1) << 8);
    if ((v6 & 0x800) == 0)
    {
LABEL_15:
      if ((v6 & 0x8000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_44;
    }

LABEL_43:
    dword_2A192081C = dword_2A192081C & 0xFFFFF7FF | (((*(a1 + 28) >> 11) & 1) << 11);
    if ((v6 & 0x8000) == 0)
    {
LABEL_16:
      if ((v6 & 0x10000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_45;
    }

LABEL_44:
    dword_2A192081C = dword_2A192081C & 0xFFFF7FFF | (((*(a1 + 28) >> 15) & 1) << 15);
    if ((v6 & 0x10000) == 0)
    {
LABEL_17:
      if ((v6 & 0x20000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_46;
    }

LABEL_45:
    dword_2A192081C = dword_2A192081C & 0xFFFEFFFF | ((HIWORD(*(a1 + 28)) & 1) << 16);
    if ((v6 & 0x20000) == 0)
    {
LABEL_18:
      if ((v6 & 0x1000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_47;
    }

LABEL_46:
    dword_2A192081C = dword_2A192081C & 0xFFFDFFFF | (((*(a1 + 28) >> 17) & 1) << 17);
    if ((v6 & 0x1000) == 0)
    {
LABEL_19:
      if ((v6 & 0x40000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_47:
    dword_2A192081C = dword_2A192081C & 0xFFFFEFFF | (((*(a1 + 28) >> 12) & 1) << 12);
    if ((v6 & 0x40000) == 0)
    {
LABEL_21:
      v7 = *(a1 + 32);
      if ((v7 & 0x200) != 0)
      {
        LOWORD(dword_2A1920828) = *(a1 + 40);
        if (dword_2A1920828 == 1)
        {
          v10 = *(a1 + 42);
        }

        else
        {
          v10 = 0;
        }

        HIWORD(dword_2A1920828) = v10;
        dword_2A1920820 |= 0x200u;
        if ((v6 & 0x4000) == 0)
        {
LABEL_23:
          if ((v7 & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_54;
        }
      }

      else if ((v6 & 0x4000) == 0)
      {
        goto LABEL_23;
      }

      dword_2A192081C = dword_2A192081C & 0xFFFFBFFF | (((*(a1 + 28) >> 14) & 1) << 14);
      if ((v7 & 1) == 0)
      {
LABEL_24:
        if ((v7 & 2) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_55;
      }

LABEL_54:
      dword_2A1920820 |= 1u;
      LOBYTE(dword_2A1920824) = *(a1 + 36);
      if ((v7 & 2) == 0)
      {
LABEL_25:
        if ((v7 & 4) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_56;
      }

LABEL_55:
      dword_2A1920820 |= 2u;
      BYTE2(dword_2A1920824) = *(a1 + 38);
      if ((v7 & 4) == 0)
      {
LABEL_26:
        if ((v7 & 8) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_57;
      }

LABEL_56:
      dword_2A1920820 |= 4u;
      BYTE1(dword_2A1920824) = *(a1 + 37);
      if ((v7 & 8) == 0)
      {
LABEL_27:
        if ((v7 & 0x400) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_60;
      }

LABEL_57:
      dword_2A1920820 |= 8u;
      v11 = *(a1 + 39);
      if (v11 > 7)
      {
        LOBYTE(v11) = 0;
      }

      HIBYTE(dword_2A1920824) = v11;
      if ((v7 & 0x400) == 0)
      {
LABEL_28:
        if ((v7 & 0x1000) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_61;
      }

LABEL_60:
      dword_2A1920820 |= 0x400u;
      byte_2A192082E = *(a1 + 46);
      if ((v7 & 0x1000) == 0)
      {
LABEL_29:
        if ((v7 & 0x800) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_62;
      }

LABEL_61:
      dword_2A1920820 |= 0x1000u;
      qword_2A1920830 = *(a1 + 48);
      if ((v7 & 0x800) == 0)
      {
LABEL_30:
        if ((v7 & 0x10) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_63;
      }

LABEL_62:
      dword_2A1920820 |= 0x800u;
      word_2A192082C = *(a1 + 44);
      if ((v7 & 0x10) == 0)
      {
LABEL_31:
        if ((v7 & 0x20) == 0)
        {
          goto LABEL_99;
        }

LABEL_64:
        dword_2A1920820 |= 0x20u;
        v12 = *(a1 + 640);
        if (v12)
        {
          dword_2A1920858 = dword_2A1920858 & 0xFFFFFFFE | *(a1 + 88) & 1;
          if ((v12 & 2) == 0)
          {
LABEL_66:
            if ((v12 & 4) == 0)
            {
              goto LABEL_67;
            }

            goto LABEL_86;
          }
        }

        else if ((v12 & 2) == 0)
        {
          goto LABEL_66;
        }

        dword_2A1920858 = dword_2A1920858 & 0xFFFFFFFD | (2 * ((*(a1 + 88) >> 1) & 1));
        if ((v12 & 4) == 0)
        {
LABEL_67:
          if ((v12 & 8) == 0)
          {
            goto LABEL_68;
          }

          goto LABEL_87;
        }

LABEL_86:
        dword_2A1920858 = dword_2A1920858 & 0xFFFFFFFB | (4 * ((*(a1 + 88) >> 2) & 1));
        if ((v12 & 8) == 0)
        {
LABEL_68:
          if ((v12 & 0x10) == 0)
          {
            goto LABEL_69;
          }

          goto LABEL_88;
        }

LABEL_87:
        dword_2A1920858 = dword_2A1920858 & 0xFFFFFFF7 | (8 * ((*(a1 + 88) >> 3) & 1));
        if ((v12 & 0x10) == 0)
        {
LABEL_69:
          if ((v12 & 0x20) == 0)
          {
            goto LABEL_71;
          }

          goto LABEL_70;
        }

LABEL_88:
        dword_2A1920858 = dword_2A1920858 & 0xFFFFFFEF | (16 * ((*(a1 + 88) >> 4) & 1));
        if ((v12 & 0x20) == 0)
        {
LABEL_71:
          v13 = *(a1 + 92);
          if (v13)
          {
            dword_2A192085C |= 1u;
            byte_2A1920860 = *(a1 + 96);
          }

          if ((v12 & 0x40) != 0)
          {
            dword_2A1920858 = dword_2A1920858 & 0xFFFFFFBF | (((*(a1 + 88) >> 6) & 1) << 6);
          }

          if (byte_2A1920860 == 1 && (dword_2A1920858 & 0x40) != 0)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v14 = mach_continuous_time();
              v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DisableMSA,true,PrefPosMeth,eMSA\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 87, "Gnm31_03HandleUserCfg", 770);
              LbsOsaTrace_WriteLog(0xBu, __str, v15, 2, 1);
            }

            byte_2A1920860 = 2;
            v13 = *(a1 + 92);
          }

          if ((v13 & 0x40) != 0)
          {
            dword_2A192085C |= 0x40u;
            LOWORD(qword_2A1920A6E) = *(a1 + 622);
            if ((v13 & 0x100) == 0)
            {
LABEL_82:
              if ((v13 & 4) == 0)
              {
LABEL_99:
                v23 = dword_2A1920820;
                if ((*(a1 + 32) & 0x40) != 0)
                {
                  v23 = dword_2A1920820 | 0x40;
                  dword_2A1920820 |= 0x40u;
                  if (*(a1 + 644))
                  {
                    *(&qword_2A1920A6E + 6) = *(&qword_2A1920A6E + 6) & 0xFFFFFFFE | *(a1 + 628) & 1;
                  }
                }

                if ((v23 & 0x800) != 0)
                {
                  Gnm53_15InitLtlRefTime(604800 * word_2A192082C);
                  v23 = dword_2A1920820;
                }

                if ((v23 & 0x200) != 0 && BYTE1(dword_2A1920828) == 1)
                {
                  Gnm53_58SetLtlExtHWClk();
                }

                Gnm31_05SendUserCfgGnc();
                Gnm31_06SendUserCfgLsim();
                Gnm31_00PrintUsrCfg("UPDATED");
                return 0;
              }

LABEL_92:
              v16 = 0;
              dword_2A192085C |= 4u;
              v17 = 1;
              do
              {
                v18 = v17;
                v19 = a1 + 98 + 262 * v16;
                if (*(v19 + 257))
                {
                  v20 = *(v19 + 258);
                  if (*(v19 + 258))
                  {
                    v21 = &g_UsrConfig + 262 * v16;
                    v21[339] = *(v19 + 257);
                    v21[340] = v20;
                    v21[82] = *v19;
                    memcpy_s("Gnm31_03HandleUserCfg", 442, v21 + 83, 0x100u, (v19 + 1), v20);
                    v21[v21[340] + 83] = 0;
                  }
                }

                v17 = 0;
                v22 = *(v19 + 260);
                if (!v22)
                {
                  v22 = 7275;
                }

                *(&g_UsrConfig + 131 * v16 + 171) = v22;
                v16 = 1;
              }

              while ((v18 & 1) != 0);
              goto LABEL_99;
            }
          }

          else if ((v13 & 0x100) == 0)
          {
            goto LABEL_82;
          }

          dword_2A192085C |= 0x100u;
          WORD1(qword_2A1920A6E) = *(a1 + 624);
          if ((v13 & 4) == 0)
          {
            goto LABEL_99;
          }

          goto LABEL_92;
        }

LABEL_70:
        dword_2A1920858 = dword_2A1920858 & 0xFFFFFFDF | (32 * ((*(a1 + 88) >> 5) & 1));
        goto LABEL_71;
      }

LABEL_63:
      dword_2A1920820 |= 0x10u;
      xmmword_2A1920838 = *(a1 + 56);
      *(&xmmword_2A1920838 + 14) = *(a1 + 70);
      if ((*(a1 + 32) & 0x20) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_64;
    }

LABEL_20:
    dword_2A192081C = dword_2A192081C & 0xFFFBFFFF | (((*(a1 + 28) >> 18) & 1) << 18);
    goto LABEL_21;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm31_12UpdateUserCfg", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v9, 0, 1);
  }

  return 0;
}

uint64_t Gnm31_14GetUserCfg(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, _DWORD *))
{
  v36 = *MEMORY[0x29EDCA608];
  memset_s(__s, 0x270uLL, 0, 0x270uLL);
  v4 = dword_2A1920820;
  __s[0] = -1;
  __s[1] = dword_2A192081C;
  v21 = dword_2A1920820;
  v5.i32[0] = dword_2A1920824;
  v6 = vmovl_u8(v5).u64[0];
  v7 = vuzp1_s16(v6, vrev32_s16(v6));
  v22 = vuzp1_s8(v7, v7).u32[0];
  v34 = byte_2A192082E;
  v35 = qword_2A1920830;
  v33 = word_2A192082C;
  v32 = dword_2A1920828;
  if ((dword_2A1920820 & 0x10) != 0)
  {
    v23[0] = xmmword_2A1920838;
    *(v23 + 14) = *(&xmmword_2A1920838 + 14);
  }

  if ((dword_2A1920820 & 0x20) != 0)
  {
    v25 = dword_2A1920858;
    v24 = -1;
    v26 = dword_2A192085C;
    v27 = byte_2A1920860;
    v29 = qword_2A1920A6E;
    if ((dword_2A192085C & 4) != 0)
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = v9;
        v11 = 262 * v8;
        v12 = &g_UsrConfig + v11;
        v13 = *(&g_UsrConfig + v11 + 82);
        v14 = &v28[v11];
        *v14 = v13;
        v15 = v12[340];
        v14[258] = v15;
        v14[257] = v12[339];
        *(v14 + 130) = *(v12 + 171);
        strncpy_s(v14 + 1, 0x100u, v12 + 83, v15);
        v9 = 0;
        v8 = 1;
      }

      while ((v10 & 1) != 0);
      v4 = v21;
    }
  }

  if ((v4 & 0x40) != 0)
  {
    v30 = -1;
    v31 = *(&qword_2A1920A6E + 6);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GetCfgCB returned UserCfg\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm31_14GetUserCfg");
    LbsOsaTrace_WriteLog(0xBu, __str, v17, 4, 1);
  }

  return a2(a1, 1, __s);
}

uint64_t gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(uint64_t a1, uint64_t *a2, std::string *a3)
{
  v34[19] = *MEMORY[0x29EDCA608];
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  v34[6] = 0;
  v5 = MEMORY[0x29EDC9590] + 104;
  v34[0] = MEMORY[0x29EDC9590] + 104;
  v6 = MEMORY[0x29EDC9590] + 64;
  v30 = MEMORY[0x29EDC9590] + 64;
  v7 = MEMORY[0x29EDC9528];
  v8 = *(MEMORY[0x29EDC9528] + 24);
  v29[0] = *(MEMORY[0x29EDC9528] + 16);
  *(v29 + *(v29[0] - 24)) = v8;
  v29[1] = 0;
  v9 = (v29 + *(v29[0] - 24));
  std::ios_base::init(v9, &v31);
  v10 = MEMORY[0x29EDC9590] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v7[5];
  v30 = v7[4];
  *(&v30 + *(v30 - 24)) = v11;
  v29[0] = v7[1];
  *(v29 + *(v29[0] - 24)) = v7[6];
  v34[0] = v5;
  v29[0] = v10;
  v30 = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100](&v31, &__p, 24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = *a2;
  if (a2[1] != *a2)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = *(v12 + v13);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "0x", 2);
      v17 = v16;
      v18 = *v16;
      v19 = v16 + *(*v16 - 24);
      if (*(v19 + 36) == -1)
      {
        std::ios_base::getloc((v16 + *(*v16 - 24)));
        v20 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
        v21 = (v20->__vftable[2].~facet_0)(v20, 32);
        std::locale::~locale(&__p);
        *(v19 + 36) = v21;
        v18 = *v17;
      }

      *(v19 + 36) = 48;
      *(v17 + *(v18 - 24) + 24) = 2;
      *(v17 + *(v18 - 24) + 8) = *(v17 + *(v18 - 24) + 8) & 0xFFFFFFB5 | 8;
      v22 = MEMORY[0x29C29EA00](v17, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", ", 2);
      std::stringbuf::str();
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(a3, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      memset(&__p, 0, sizeof(__p));
      std::string::operator=(&v33, &__p);
      std::stringbuf::__init_buf_ptrs[abi:ne200100](&v31);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v13 = v14;
      v12 = *a2;
    }

    while (a2[1] - *a2 > v14++);
  }

  v29[0] = *MEMORY[0x29EDC9528];
  v26 = *(MEMORY[0x29EDC9528] + 72);
  *(v29 + *(v29[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v30 = v26;
  v31 = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v31 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v32);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C29EAA0](v34);
}

void sub_299512F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29C29EAA0](a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t gnssTest::ZxFactoryHandler::Ga23_01GetZxTestType(uint64_t a1, unsigned __int8 **a2, char *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v5 = (*a2)[8];
  if (v5 != 32 && v5 != 83)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Test status\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "Ga23_01GetZxTestType", 776);
      LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
    }

    v7 = 0;
    v8 = -1;
    goto LABEL_11;
  }

  v6 = v4[2];
  if (v6 == 84)
  {
    v11 = v4[3];
    if (v11 == 71)
    {
      if (v4[4] == 77)
      {
        v7 = 0;
        v8 = 21;
        goto LABEL_11;
      }
    }

    else if (v11 == 76)
    {
      v12 = v4[4];
      if (v12 == 77 || v12 == 32)
      {
        v7 = 0;
        v8 = 22;
        goto LABEL_11;
      }
    }

    else if (v11 == 80 && v4[4] == 77)
    {
      v7 = 0;
      v8 = v4[9];
      goto LABEL_11;
    }
  }

  else if (v6 == 88 && v4[3] == 86 && v4[4] == 77)
  {
    v7 = 0;
    v8 = 5;
LABEL_11:
    *a3 = v8;
    return v7;
  }

  *a3 = 1024;
  v13 = *a2;
  if ((*a2)[8] != 32)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Test status\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 69, "Ga23_01GetZxTestType", 257);
      v7 = 1;
      LbsOsaTrace_WriteLog(0x18u, __str, v16, 0, 1);
      return v7;
    }

    return 1;
  }

  if (v13[2] != 84)
  {
    return 3;
  }

  v14 = (((v13[3] - 66) >> 1) | ((v13[3] - 66) << 7));
  v7 = 3;
  if (v14 <= 2)
  {
    if (((v13[3] - 66) >> 1) | ((v13[3] - 66) << 7))
    {
      if (v14 != 2 || v13[4] != 32)
      {
        return v7;
      }

      *a3 = 3;
    }

    else
    {
      if (v13[4] != 32)
      {
        return v7;
      }

      *a3 = 0;
    }

    return 2;
  }

  if (v14 == 3)
  {
    if (v13[4] == 32)
    {
      v7 = 2;
      *a3 = 2;
    }

    return v7;
  }

  if (v14 == 4)
  {
    v17 = v13[4];
    if (v17 != 80 && v17 != 77)
    {
      return v7;
    }

    *a3 = 1;
    return 2;
  }

  if (v14 == 7 && v13[4] == 80)
  {
    *a3 = v13[9];
    return 1;
  }

  return v7;
}

uint64_t gnssTest::ZxFactoryHandler::Ga23_03BuildZxCpRomCSProdMsg(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga23_03BuildZxCpRomCSProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  __str[0] = 122;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 120;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 84;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 112;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 80;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 2;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  v26 = 0;
  v27 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v5 = ~*a2 + *(a2 + 8);
  if (v5 < 8 || v5 > 0x7FF || v26 - __p <= v5)
  {
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = 0;
    v12 = 8;
    v13 = 8;
    do
    {
      v11 += *(__p + v12);
      v12 = ++v13;
    }

    while (v5 >= v13);
    v26 = __p;
    operator delete(__p);
    if (v11 != -1)
    {
      __str[0] = v11;
      std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
      __str[0] = HIBYTE(v11);
      std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
      v15 = *(a2 + 8) - *a2;
      if (v15 < 0x10000)
      {
        *(*a2 + 5) = v15 - 8;
        v14.i32[0] = *(*a2 + 2);
        v18 = vaddv_s16(*&vmovl_u8(v14)) + *(*a2 + 6);
        if (v18)
        {
          *(*a2 + 7) = v18;
          __str[0] = 10;
          std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v19 = mach_continuous_time();
            v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "Ga23_03BuildZxCpRomCSProdMsg");
            LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
          }

          return 1;
        }

        else
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v21 = mach_continuous_time();
            v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpRom\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 69, "Ga23_03BuildZxCpRomCSProdMsg", 781);
            LbsOsaTrace_WriteLog(0x18u, __str, v22, 0, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v23 = mach_continuous_time();
            v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 68, "Ga23_03BuildZxCpRomCSProdMsg");
            LbsOsaTrace_WriteLog(0x18u, __str, v24, 5, 1);
          }

          result = 0;
          *(a2 + 8) = *a2;
        }
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpRomRange\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "Ga23_03BuildZxCpRomCSProdMsg", 772);
          LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          goto LABEL_9;
        }
      }

      return result;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpRomCs\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga23_03BuildZxCpRomCSProdMsg", 781);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
LABEL_9:
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "Ga23_03BuildZxCpRomCSProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
    return 0;
  }

  return result;
}

void std::vector<unsigned char>::push_back[abi:ne200100](uint64_t a1, char *a2)
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
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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

uint64_t gnssTest::ZxFactoryHandler::Ga23_04ParseZxCpRomCSProdMsg(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga23_04ParseZxCpRomCSProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if ((gnssTest::ZxHandler::Ga23_03IsCheckSumValid(a2) & 1) == 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v5 = *a2;
  v6 = a2[1] - *a2;
  if (v6 <= 8)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      goto LABEL_10;
    }

LABEL_8:
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpRom\n");
LABEL_9:
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    goto LABEL_10;
  }

  if (v5[2] != 84 || v5[3] != 80 || v5[4] != 80)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MsgType\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "Ga23_04ParseZxCpRomCSProdMsg", 770);
      v11 = 0;
      goto LABEL_22;
    }

    return 0;
  }

  if (v5[8] != 32)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpRom status\n");
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v6 <= 0xA)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpRomCS\n");
      goto LABEL_9;
    }

LABEL_10:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v8, "ADP", 68, "Ga23_04ParseZxCpRomCSProdMsg");
LABEL_12:
      v10 = v9;
      v11 = 5;
LABEL_22:
      LbsOsaTrace_WriteLog(0x18u, __str, v10, v11, 1);
    }

    return 0;
  }

  __dst = 0;
  memcpy_s("Ga23_04ParseZxCpRomCSProdMsg", 398, &__dst, 1u, v5 + 10, 1uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CpStatus,%u\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 73, "Ga23_04ParseZxCpRomCSProdMsg", __dst);
    LbsOsaTrace_WriteLog(0x18u, __str, v16, 4, 1);
  }

  if (__dst != 112)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v19, "ADP", 68, "Ga23_04ParseZxCpRomCSProdMsg");
    goto LABEL_12;
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v17 = mach_continuous_time();
  v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "Ga23_04ParseZxCpRomCSProdMsg");
  v13 = 1;
  LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
  return v13;
}

uint64_t gnssTest::ZxHandler::Ga23_03IsCheckSumValid(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v19 = 0;
  v20 = 0;
  v18 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v18, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  if ((v19 - v18) >= 7)
  {
    v2 = 0;
    for (i = 2; i != 7; ++i)
    {
      v2 += v18[i];
    }
  }

  else
  {
    if (!v18)
    {
LABEL_17:
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid CS\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "Ga23_03IsCheckSumValid", 784);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
      return 0;
    }

    v2 = -1;
  }

  v19 = v18;
  operator delete(v18);
  if (v2 == -1)
  {
    goto LABEL_17;
  }

  v4 = *a1;
  if (*(*a1 + 7) != v2)
  {
    goto LABEL_17;
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v4, *(a1 + 8), *(a1 + 8) - v4);
  v5 = *(a1 + 8) - *a1 - 4;
  if (v5 >= 8 && (v5 <= 0x7FF ? (v6 = v16 - __p > v5) : (v6 = 0), v6))
  {
    v12 = 0;
    v13 = 8;
    v14 = 8;
    do
    {
      v12 += *(__p + v13);
      v13 = ++v14;
    }

    while (v5 >= v14);
    v16 = __p;
    operator delete(__p);
    if (v12 != 0xFFFF && *(*(a1 + 8) - 3) == v12)
    {
      return 1;
    }
  }

  else if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CS Comp. err\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "Ga23_03IsCheckSumValid", 784);
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    return 0;
  }

  return result;
}

uint64_t gnssTest::ZxFactoryHandler::Ga23_05BuildZxMeRomCSProdMsg(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga23_05BuildZxMeRomCSProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  __str[0] = 122;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 120;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 84;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 112;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 77;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 2;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  v27 = 0;
  v28 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v5 = ~*a2 + *(a2 + 8);
  if (v5 < 8 || v5 > 0x7FF || v27 - __p <= v5)
  {
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = 0;
    v12 = 8;
    v13 = 8;
    do
    {
      v11 += *(__p + v12);
      v12 = ++v13;
    }

    while (v5 >= v13);
    v27 = __p;
    operator delete(__p);
    if (v11 != -1)
    {
      __str[0] = v11;
      std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
      __str[0] = HIBYTE(v11);
      std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
      v15 = *a2;
      v16 = *(a2 + 8) - *a2;
      if (v16 < 0x10000)
      {
        v19 = v16 - 8;
        v15[5] = v19;
        *(*a2 + 6) = HIBYTE(v19);
        v20 = *a2;
        v14.i32[0] = *(*a2 + 2);
        v21 = vaddv_s16(*&vmovl_u8(v14)) + *(*a2 + 6);
        if (v21)
        {
          v20[7] = v21;
          __str[0] = 10;
          std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v22 = mach_continuous_time();
            v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "Ga23_05BuildZxMeRomCSProdMsg");
            LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
          }

          return 1;
        }

        else
        {
          *(a2 + 8) = v20;
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v24 = mach_continuous_time();
            v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MeRom\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 69, "Ga23_05BuildZxMeRomCSProdMsg", 781);
            LbsOsaTrace_WriteLog(0x18u, __str, v25, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
          if (result)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        *(a2 + 8) = v15;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MeRomRange\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "Ga23_05BuildZxMeRomCSProdMsg", 772);
          LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          goto LABEL_9;
        }
      }

      return result;
    }
  }

  *(a2 + 8) = *a2;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MeRom\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga23_05BuildZxMeRomCSProdMsg", 784);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
LABEL_9:
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "Ga23_05BuildZxMeRomCSProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
    return 0;
  }

  return result;
}

uint64_t gnssTest::ZxFactoryHandler::Ga23_06ParseZxMeRomCSProdMsg(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((gnssTest::ZxHandler::Ga23_03IsCheckSumValid(a2) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      goto LABEL_13;
    }

    return 0;
  }

  v3 = *a2;
  v4 = a2[1] - *a2;
  if (v4 <= 8)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v3[2] != 84 || v3[3] != 80 || v3[4] != 77)
  {
    goto LABEL_32;
  }

  if (v3[8] != 32)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MeRom status\n");
    goto LABEL_14;
  }

  if (v4 <= 0x10)
  {
LABEL_32:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
LABEL_13:
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MeRom\n");
LABEL_14:
      LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
    }

    return 0;
  }

  *&__dst[3] = 0;
  *__dst = 0;
  memcpy_s("Ga23_06ParseZxMeRomCSProdMsg", 525, __dst, 7u, v3 + 10, 7uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MeStatus,%u,MeResp,%u\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 73, "Ga23_06ParseZxMeRomCSProdMsg", __dst[0], __dst[1]);
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 4, 1);
  }

  v10 = __dst[0] != 99 || __dst[1] == 112;
  v6 = v10;
  if (!v10 && LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MeRom Resp Failed\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 73, "Ga23_06ParseZxMeRomCSProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v12, 4, 1);
  }

  return v6;
}

uint64_t gnssTest::ZxFactoryHandler::Ga23_07BuildZxMeCwModProdMsg(uint64_t a1, void *a2, int a3, int a4, int a5, unsigned __int16 a6, double a7)
{
  v57 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "Ga23_07BuildZxMeCwModProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
  }

  __str[0] = 122;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 120;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 84;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 112;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 77;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  v55 = 0;
  v54 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "Ga23_09MapFramCwModParamToCoreParams");
    LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
  }

  if (a3 > 4)
  {
    if ((a3 - 8) < 2)
    {
      a3 = 4;
    }

    else
    {
      if (a3 != 5 && a3 != 7)
      {
        goto LABEL_19;
      }

      a3 = 5;
    }

    LOBYTE(v54) = a3;
    goto LABEL_18;
  }

  if ((a3 - 1) < 3)
  {
    a3 = 0;
    LOBYTE(v54) = 0;
LABEL_18:
    v19 = 1;
    goto LABEL_23;
  }

  if (!a3)
  {
LABEL_22:
    v19 = 0;
LABEL_23:
    *(&v54 + 1) = a6;
    if (a5)
    {
      if (a3 > 3)
      {
        a5 = 0;
        if (a3 == 4)
        {
          v18 = a4 + 64;
        }

        else
        {
          v18 = a4 ^ 0x80;
        }

        BYTE3(v54) = v18;
      }

      else
      {
        a5 = 0;
        BYTE3(v54) = a4;
        v18 = a4;
      }
    }

    else
    {
      v18 = 0;
      BYTE3(v54) = 0;
      HIDWORD(v54) = 0;
    }

    goto LABEL_33;
  }

  if (a3 != 4)
  {
LABEL_19:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Band,%u\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 87, "Ga23_09MapFramCwModParamToCoreParams", 770, a3);
      LbsOsaTrace_WriteLog(0x18u, __str, v21, 2, 1);
    }

    a3 = 0;
    goto LABEL_22;
  }

  LOBYTE(v54) = 3;
  *(a1 + 4) = a4;
  *(&v54 + 1) = a6;
  if (a5)
  {
    a5 = 0;
    v18 = a4 + 8;
    BYTE3(v54) = a4 + 8;
  }

  else
  {
    v18 = 0;
    BYTE3(v54) = 0;
    a5 = a4 + 8;
    HIDWORD(v54) = a4 + 8;
  }

  v19 = 1;
LABEL_33:
  v22 = vcvtpd_s64_f64(a7);
  LOWORD(v55) = v22;
  HIWORD(v55) = 1;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v23 = mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SvId,%u,TimeForTestMs,%u,Bw,%u,NumOfChannels,%u,Signalsource,%u,CenterDopplerFreq,%u\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 68, "Ga23_09MapFramCwModParamToCoreParams", v18, a6, v22, 1, 0, a5);
    LbsOsaTrace_WriteLog(0x18u, __str, v24, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v25 = mach_continuous_time();
    v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 68, "Ga23_09MapFramCwModParamToCoreParams");
    LbsOsaTrace_WriteLog(0x18u, __str, v26, 5, 1);
  }

  if ((v19 & 1) == 0)
  {
    a2[1] = *a2;
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v32 = mach_continuous_time();
    v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 68, "Ga23_07BuildZxMeCwModProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v33, 5, 1);
    return 0;
  }

  __str[0] = 1;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  std::vector<unsigned char>::push_back[abi:ne200100](a2, &v54);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  v27 = BYTE2(v54);
  *(*a2 + 10) = BYTE1(v54);
  *(*a2 + 11) = v27;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, &v54 + 3);
  __str[0] = BYTE4(v54);
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = BYTE5(v54);
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = BYTE6(v54);
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = HIBYTE(v54);
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = v55;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = BYTE1(v55);
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  std::vector<unsigned char>::push_back[abi:ne200100](a2, &v55 + 2);
  std::vector<unsigned char>::push_back[abi:ne200100](a2, &v55 + 3);
  __p = 0;
  v52 = 0;
  v53 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
  v28 = ~*a2 + a2[1];
  if (v28 < 8 || v28 > 0x7FF || v52 - __p <= v28)
  {
    if (__p)
    {
      v52 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v34 = 0;
    v35 = 8;
    v36 = 8;
    do
    {
      v34 += *(__p + v35);
      v35 = ++v36;
    }

    while (v28 >= v36);
    v52 = __p;
    operator delete(__p);
    if (v34 != -1)
    {
      __str[0] = v34;
      std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
      __str[0] = HIBYTE(v34);
      std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
      v38 = *a2;
      v39 = a2[1] - *a2;
      if (v39 < 0x10000)
      {
        v42 = v39 - 8;
        *(v38 + 5) = v42;
        *(*a2 + 6) = HIBYTE(v42);
        v43 = *a2;
        v37.i32[0] = *(*a2 + 2);
        v44 = vaddv_s16(*&vmovl_u8(v37)) + *(*a2 + 6);
        if (v44)
        {
          *(v43 + 7) = v44;
          __str[0] = 10;
          std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v45 = mach_continuous_time();
            v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v45), "ADP", 68, "Ga23_07BuildZxMeCwModProdMsg");
            LbsOsaTrace_WriteLog(0x18u, __str, v46, 5, 1);
          }

          return 1;
        }

        else
        {
          a2[1] = v43;
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v47 = mach_continuous_time();
            v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MeCw or Mod\n", (*&g_MacClockTicksToMsRelation * v47), "ADP", 69, "Ga23_07BuildZxMeCwModProdMsg", 781);
            LbsOsaTrace_WriteLog(0x18u, __str, v48, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
          if (result)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        a2[1] = v38;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v40 = mach_continuous_time();
          v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CwModRange\n", (*&g_MacClockTicksToMsRelation * v40), "ADP", 69, "Ga23_07BuildZxMeCwModProdMsg", 772);
          LbsOsaTrace_WriteLog(0x18u, __str, v41, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          goto LABEL_66;
        }
      }

      return result;
    }
  }

  a2[1] = *a2;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v29 = mach_continuous_time();
    v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CwMod\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 69, "Ga23_07BuildZxMeCwModProdMsg", 784);
    LbsOsaTrace_WriteLog(0x18u, __str, v30, 0, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
LABEL_66:
    bzero(__str, 0x410uLL);
    v49 = mach_continuous_time();
    v50 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v49), "ADP", 68, "Ga23_07BuildZxMeCwModProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v50, 5, 1);
    return 0;
  }

  return result;
}

uint64_t gnssTest::ZxFactoryHandler::Ga23_08ParseZxMeCwModProdMsg(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v40 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "Ga23_08ParseZxMeCwModProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
  }

  v10 = *a2;
  if (*(*a2 + 2) != 84 || v10[3] != 80 || v10[4] != 77)
  {
    a2[1] = v10;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Msg Type\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "Ga23_08ParseZxMeCwModProdMsg", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (!result)
    {
      return result;
    }

LABEL_15:
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "Ga23_08ParseZxMeCwModProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
    return 0;
  }

  if (v10[8] != 32)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CW or Mod status\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "Ga23_08ParseZxMeCwModProdMsg", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (!result)
    {
      return result;
    }

    goto LABEL_15;
  }

  memset(__dst, 0, 17);
  if (a2[1] - v10 <= 0x1AuLL)
  {
    a2[1] = v10;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ZxMsg\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "Ga23_08ParseZxMeCwModProdMsg", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      return 0;
    }

    goto LABEL_15;
  }

  memcpy_s("Ga23_08ParseZxMeCwModProdMsg", 686, __dst, 0x11u, v10 + 10, 0x11uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "Ga23_10MapCoreParamsToFramCwModParams");
    LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
  }

  v22 = BYTE1(__dst[0]);
  if (BYTE1(__dst[0]) > 3u)
  {
    if (BYTE1(__dst[0]) == 4)
    {
      v22 = 8;
    }

    else if (BYTE1(__dst[0]) != 5)
    {
      goto LABEL_30;
    }

    *a3 = v22;
    goto LABEL_36;
  }

  if (!BYTE1(__dst[0]))
  {
    v25 = 1;
    *a3 = 1;
    goto LABEL_37;
  }

  if (BYTE1(__dst[0]) == 3)
  {
    *a3 = 4;
    *(a3 + 4) = *(a1 + 4);
LABEL_36:
    v25 = 1;
    goto LABEL_37;
  }

LABEL_30:
  *a3 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v23 = mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Defalt CW Constel,%u\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 69, "Ga23_10MapCoreParamsToFramCwModParams", 515, BYTE1(__dst[0]));
    LbsOsaTrace_WriteLog(0x18u, __str, v24, 0, 1);
  }

  v25 = 0;
LABEL_37:
  if (a4 == 1)
  {
    if (BYTE1(__dst[0]) > 3u)
    {
      if (BYTE1(__dst[0]) == 4)
      {
        v26 = BYTE4(__dst[0]) - 64;
        goto LABEL_50;
      }

      if (BYTE1(__dst[0]) == 5)
      {
        v26 = BYTE4(__dst[0]) - 128;
        goto LABEL_50;
      }
    }

    else
    {
      if (!BYTE1(__dst[0]))
      {
        v26 = BYTE4(__dst[0]);
        goto LABEL_50;
      }

      if (BYTE1(__dst[0]) == 3)
      {
        v26 = BYTE4(__dst[0]) - 8;
LABEL_50:
        *(a3 + 4) = v26;
        goto LABEL_51;
      }
    }

    *(a3 + 4) = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v27 = mach_continuous_time();
      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Default Mod Constel,%u\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 69, "Ga23_10MapCoreParamsToFramCwModParams", 515, BYTE1(__dst[0]));
      LbsOsaTrace_WriteLog(0x18u, __str, v28, 0, 1);
    }

    v25 = 0;
  }

LABEL_51:
  v29 = vcvtd_n_f64_s32(*(&__dst[1] + 7), 4uLL);
  *(a3 + 8) = vcvtd_n_f64_s32(*(__dst + 7), 8uLL);
  *(a3 + 16) = v29;
  *(a3 + 24) = *(__dst + 5);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v30 = mach_continuous_time();
    v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 68, "Ga23_10MapCoreParamsToFramCwModParams");
    LbsOsaTrace_WriteLog(0x18u, __str, v31, 5, 1);
  }

  if ((v25 & 1) == 0)
  {
    a2[1] = *a2;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v36 = mach_continuous_time();
      v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 68, "Ga23_08ParseZxMeCwModProdMsg");
      LbsOsaTrace_WriteLog(0x18u, __str, v37, 5, 1);
    }

    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v32 = mach_continuous_time();
    v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Const,%u,Jnr,%d,KVal,%d,MeasState,%d,NoOfTrack,%u,ResStatus,%u,Cn0,%d,TrackChannelId,%u,Rssi,%d,BasebandFreqOffset,%d\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 68, "Ga23_08ParseZxMeCwModProdMsg", BYTE1(__dst[0]), SBYTE1(__dst[1]), SBYTE2(__dst[1]), *(&__dst[1] + 3), BYTE2(__dst[0]), LOBYTE(__dst[0]), *(__dst + 7), BYTE3(__dst[0]), *(&__dst[1] + 7), *(&__dst[1] + 5));
    LbsOsaTrace_WriteLog(0x18u, __str, v33, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v34 = mach_continuous_time();
    v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 68, "Ga23_08ParseZxMeCwModProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v35, 5, 1);
  }

  return 1;
}

uint64_t gnssTest::ZxFactoryHandler::Ga23_11BuildZxMePowerProdMsg(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v47 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 68, "Ga23_11BuildZxMePowerProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
  }

  __str[0] = 122;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 120;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 84;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 103;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 77;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "Ga23_13MapFramPowerParamToCorePowerParams");
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
  }

  if (a3 >= 5)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PwrMode,%u\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 87, "Ga23_13MapFramPowerParamToCorePowerParams", 770, a3);
      LbsOsaTrace_WriteLog(0x18u, __str, v14, 2, 1);
    }

    LOBYTE(v11) = 0;
    v12 = 0;
  }

  else
  {
    v11 = 0x10u >> a3;
    v12 = (0x4FFFFFF00uLL >> (8 * a3));
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MePwrMode,%u\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 73, "Ga23_13MapFramPowerParamToCorePowerParams", v12);
    LbsOsaTrace_WriteLog(0x18u, __str, v16, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "Ga23_13MapFramPowerParamToCorePowerParams");
    LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
  }

  __str[0] = v12;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  if ((v12 & 0xFE) == 2)
  {
    v19 = 5;
  }

  else
  {
    v19 = 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PwrTimeOut,%u\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 73, "Ga23_11BuildZxMePowerProdMsg", v19);
    LbsOsaTrace_WriteLog(0x18u, __str, v21, 4, 1);
  }

  __str[0] = v19;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  if (a4)
  {
    __str[0] = 1;
  }

  else
  {
    __str[0] = (v11 & 1) == 0;
  }

  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  v44 = 0;
  v45 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v22 = ~*a2 + *(a2 + 8);
  if (v22 < 8 || v22 > 0x7FF || v44 - __p <= v22)
  {
    if (__p)
    {
      v44 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v28 = 0;
    v29 = 8;
    v30 = 8;
    do
    {
      v28 += *(__p + v29);
      v29 = ++v30;
    }

    while (v22 >= v30);
    v44 = __p;
    operator delete(__p);
    if (v28 != -1)
    {
      __str[0] = v28;
      std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
      __str[0] = HIBYTE(v28);
      std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
      v32 = *a2;
      v33 = *(a2 + 8) - *a2;
      if (v33 < 0x10000)
      {
        v36 = v33 - 8;
        v32[5] = v36;
        *(*a2 + 6) = HIBYTE(v36);
        v37 = *a2;
        v31.i32[0] = *(*a2 + 2);
        v38 = vaddv_s16(*&vmovl_u8(v31)) + *(*a2 + 6);
        if (v38)
        {
          v37[7] = v38;
          __str[0] = 10;
          std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v39 = mach_continuous_time();
            v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v39), "ADP", 68, "Ga23_11BuildZxMePowerProdMsg");
            LbsOsaTrace_WriteLog(0x18u, __str, v40, 5, 1);
          }

          return 1;
        }

        else
        {
          *(a2 + 8) = v37;
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v41 = mach_continuous_time();
            v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PwrProd\n", (*&g_MacClockTicksToMsRelation * v41), "ADP", 69, "Ga23_11BuildZxMePowerProdMsg", 781);
            LbsOsaTrace_WriteLog(0x18u, __str, v42, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
          if (result)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        *(a2 + 8) = v32;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v34 = mach_continuous_time();
          v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PowerRange\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 69, "Ga23_11BuildZxMePowerProdMsg", 772);
          LbsOsaTrace_WriteLog(0x18u, __str, v35, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          goto LABEL_28;
        }
      }

      return result;
    }
  }

  *(a2 + 8) = *a2;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v23 = mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Power\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 69, "Ga23_11BuildZxMePowerProdMsg", 784);
    LbsOsaTrace_WriteLog(0x18u, __str, v24, 0, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
LABEL_28:
    bzero(__str, 0x410uLL);
    v26 = mach_continuous_time();
    v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 68, "Ga23_11BuildZxMePowerProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v27, 5, 1);
    return 0;
  }

  return result;
}

uint64_t gnssTest::ZxFactoryHandler::Ga23_12ParseZxMePowerProdMsg(uint64_t a1, void *a2, _DWORD *a3, int a4)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 68, "Ga23_12ParseZxMePowerProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
  }

  if (gnssTest::ZxHandler::Ga23_03IsCheckSumValid(a2))
  {
    v9 = *a2;
    if (a2[1] - *a2 <= 8uLL)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MePwr\n");
LABEL_18:
        LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    if (v9[2] != 84 || v9[3] != 71 || v9[4] != 77)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MesgType\n");
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (v9[8] != 32)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        goto LABEL_19;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MePwr status\n");
      goto LABEL_18;
    }

    *a3 = gnssTest::ZxFactoryHandler::Ga23_14MapCorePowerParamsToFramPowerParam(v9[9]);
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0);
    if (a4)
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_28;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PwrMode PCIe,0x%x\n");
    }

    else
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_28;
      }

      bzero(__str, 0x410uLL);
      v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PwrMode,0x%x,UART LP,0x%x\n", v19);
    }

    LbsOsaTrace_WriteLog(0x18u, __str, v12, 4, 1);
LABEL_28:
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      return 1;
    }

    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "Ga23_12ParseZxMePowerProdMsg");
    v15 = 1;
    LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
    return v15;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MePwr Resp\n");
    goto LABEL_18;
  }

LABEL_19:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "Ga23_12ParseZxMePowerProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
  }

  return 0;
}

uint64_t gnssTest::ZxFactoryHandler::Ga23_14MapCorePowerParamsToFramPowerParam(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 68, "Ga23_14MapCorePowerParamsToFramPowerParam");
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 5, 1);
  }

  v4 = 0;
  if (a1 <= 3)
  {
    if ((a1 - 1) >= 3)
    {
      if (!a1)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a1 == 255)
  {
LABEL_10:
    v4 = 4;
    goto LABEL_11;
  }

  if (a1 == 4)
  {
    a1 = 4;
    goto LABEL_14;
  }

LABEL_11:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MePwrMode,%u\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 87, "Ga23_14MapCorePowerParamsToFramPowerParam", 770, a1);
    LbsOsaTrace_WriteLog(0x18u, __str, v6, 2, 1);
  }

  a1 = v4;
LABEL_14:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PwrMode,%u\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 73, "Ga23_14MapCorePowerParamsToFramPowerParam", a1);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "Ga23_14MapCorePowerParamsToFramPowerParam");
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
  }

  return a1;
}

uint64_t gnssTest::ZxFactoryHandler::Ga23_15ParseZxProdModeIndProdMsg(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if ((gnssTest::ZxHandler::Ga23_03IsCheckSumValid(a2) & 1) == 0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  v3 = *a2;
  if (a2[1] - *a2 <= 8uLL)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

LABEL_6:
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ProdInd\n");
LABEL_16:
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
    return 0;
  }

  if (v3[2] != 84 || v3[3] != 66 || v3[4] != 32)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MesgType\n");
    goto LABEL_16;
  }

  if (v3[8] == 32)
  {
    v6 = v3[9];
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ProdInd,%u\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 73, "Ga23_15ParseZxProdModeIndProdMsg", v6);
      LbsOsaTrace_WriteLog(0x18u, __str, v8, 4, 1);
    }

    return v6 == 1;
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ProdInd status err\n");
      goto LABEL_16;
    }
  }

  return result;
}

BOOL gnssTest::ZxFactoryHandler::Ga23_16BuildZxPingProdMsg(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "Ga23_16BuildZxPingProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v6, 5, 1);
  }

  __str[0] = 122;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 120;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 84;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 106;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  if (a3 == 1)
  {
    v7 = 77;
  }

  else
  {
    if (a3)
    {
      goto LABEL_8;
    }

    v7 = 80;
  }

  __str[0] = v7;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
LABEL_8:
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  *(*a2 + 5) = 0;
  *(*a2 + 6) = 0;
  v8.i32[0] = *(*a2 + 2);
  v9 = vaddv_s16(*&vmovl_u8(v8)) + *(*a2 + 6);
  if (v9)
  {
    *(*a2 + 7) = v9;
    __str[0] = 10;
    std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
LABEL_14:
      bzero(__str, 0x410uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v12, "ADP", 68, "Ga23_16BuildZxPingProdMsg");
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Ping\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "Ga23_16BuildZxPingProdMsg", 781);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      goto LABEL_14;
    }
  }

  return v9 != 0;
}

uint64_t gnssTest::ZxFactoryHandler::Ga23_21ParseZxPingProdMsg(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v137 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 68, "Ga23_21ParseZxPingProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
  }

  v9 = *a2;
  if (*(*a2 + 2) != 84 || *(v9 + 3) != 74)
  {
LABEL_14:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Ping Parse\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "Ga23_21ParseZxPingProdMsg", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      goto LABEL_17;
    }

    return result;
  }

  v10 = *(v9 + 4);
  if (v10 == 80)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "Ga23_17ParseZxCpPingProdMsg");
      LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
    }

    v25 = a2;
    v24 = *a2;
    v26 = v25[1] - v24;
    if (v26 > 8)
    {
      if (*(v24 + 8) == 32)
      {
        memset(__s, 0, 58);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v74 = mach_continuous_time();
          v75 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v74), "ADP", 68, "Ga23_18ProcessCpPingRsp");
          LbsOsaTrace_WriteLog(0x18u, __str, v75, 5, 1);
        }

        if (v26 > 0x2Du)
        {
          v76 = *(v24 + 9);
          LOBYTE(__s[0]) = v76 & 3;
          BYTE1(__s[0]) = (v76 >> 2) & 3;
          BYTE2(__s[0]) = v76 & 0x10;
          v77 = *(v24 + 12);
          BYTE3(__s[0]) = *(v24 + 11);
          BYTE4(__s[0]) = v77 & 0xF;
          BYTE5(__s[0]) = v77 & 0x10;
          BYTE6(__s[0]) = v77 >> 7;
          v78 = *(v24 + 13);
          BYTE7(__s[0]) = v78 & 0xF;
          BYTE8(__s[0]) = v78 >> 4;
          v79 = *(v24 + 14);
          HIDWORD(__s[0]) = *(v24 + 17);
          *(__s + 9) = v79;
          LOBYTE(__s[1]) = 0;
          *(&__s[1] + 1) = *(v24 + 21);
          DWORD1(__s[1]) = *(v24 + 24);
          BYTE8(__s[1]) = 0;
          v80 = *(v24 + 28);
          *(&__s[2] + 1) = *(v24 + 36);
          *(&__s[1] + 9) = v80;
          v81 = *(v24 + 37);
          *(&__s[2] + 11) = *(v24 + 45);
          *(&__s[2] + 3) = v81;
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v82 = mach_continuous_time();
            v83 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v82), "ADP", 68, "Ga23_18ProcessCpPingRsp");
            LbsOsaTrace_WriteLog(0x18u, __str, v83, 5, 1);
          }

          std::string::append(a3, "CP,");
          std::to_string(__str, BYTE1(__s[0]));
          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v84 = __str;
          }

          else
          {
            v84 = __str[0].__r_.__value_.__r.__words[0];
          }

          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __str[0].__r_.__value_.__l.__size_;
          }

          std::string::append(a3, v84, size);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__data_);
          }

          std::string::append(a3, ".");
          std::to_string(__str, LOBYTE(__s[0]));
          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v86 = __str;
          }

          else
          {
            v86 = __str[0].__r_.__value_.__r.__words[0];
          }

          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v87 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v87 = __str[0].__r_.__value_.__l.__size_;
          }

          std::string::append(a3, v86, v87);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__data_);
          }

          std::string::append(a3, ",");
          std::string::append(a3, "FW,");
          std::string::append(a3, (__s | 9));
          std::string::append(a3, ",");
          std::string::append(a3, "CPPatch,");
          std::string::append(a3, &__s[1] + 1);
          std::string::append(a3, ",");
          std::string::append(a3, "SW_Build_Date,");
          std::string::append(a3, &__s[1] + 9);
          std::string::append(a3, ",");
          std::string::append(a3, "SW_Build_Time,");
          std::string::append(a3, &__s[2] + 3);
          std::string::append(a3, ",");
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v88 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
            if (*(a3 + 23) >= 0)
            {
              v89 = a3;
            }

            else
            {
              v89 = *a3;
            }

            v90 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Version,%s\n", v88, "ADP", 73, "Ga23_17ParseZxCpPingProdMsg", v89);
            LbsOsaTrace_WriteLog(0x18u, __str, v90, 4, 1);
          }

          memset(&v134, 0, sizeof(v134));
          std::string::append(&v134, "FW,");
          std::string::append(&v134, (__s | 9));
          std::string::append(&v134, ",");
          std::string::append(&v134, "CP,");
          std::to_string(__str, BYTE1(__s[0]));
          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v91 = __str;
          }

          else
          {
            v91 = __str[0].__r_.__value_.__r.__words[0];
          }

          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v92 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v92 = __str[0].__r_.__value_.__l.__size_;
          }

          std::string::append(&v134, v91, v92);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__data_);
          }

          std::string::append(&v134, ".");
          std::to_string(__str, LOBYTE(__s[0]));
          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v93 = __str;
          }

          else
          {
            v93 = __str[0].__r_.__value_.__r.__words[0];
          }

          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v94 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v94 = __str[0].__r_.__value_.__l.__size_;
          }

          std::string::append(&v134, v93, v94);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__data_);
          }

          std::string::append(&v134, ",");
          std::string::append(&v134, "Patch,");
          std::string::append(&v134, &__s[1] + 1);
          std::string::append(&v134, ",");
          std::string::append(&v134, "SW_Build_Date,");
          std::string::append(&v134, &__s[1] + 9);
          std::string::append(&v134, ",");
          std::string::append(&v134, "SW_Build_Time,");
          std::string::append(&v134, &__s[2] + 3);
          std::string::append(&v134, ",");
          std::string::append(&v134, "v_ChipDash,");
          std::to_string(__str, BYTE8(__s[0]));
          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v95 = __str;
          }

          else
          {
            v95 = __str[0].__r_.__value_.__r.__words[0];
          }

          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v96 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v96 = __str[0].__r_.__value_.__l.__size_;
          }

          std::string::append(&v134, v95, v96);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__data_);
          }

          std::string::append(&v134, ",");
          std::string::append(&v134, "v_ChipStep,");
          std::to_string(__str, BYTE7(__s[0]));
          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v97 = __str;
          }

          else
          {
            v97 = __str[0].__r_.__value_.__r.__words[0];
          }

          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v98 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v98 = __str[0].__r_.__value_.__l.__size_;
          }

          std::string::append(&v134, v97, v98);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__data_);
          }

          std::string::append(&v134, ",");
          std::string::append(&v134, "v_ExtProdId,");
          std::to_string(__str, BYTE2(__s[0]));
          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v99 = __str;
          }

          else
          {
            v99 = __str[0].__r_.__value_.__r.__words[0];
          }

          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v100 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v100 = __str[0].__r_.__value_.__l.__size_;
          }

          std::string::append(&v134, v99, v100);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__data_);
          }

          std::string::append(&v134, ",");
          std::string::append(&v134, "v_IsOTPProg,");
          std::to_string(__str, SBYTE6(__s[0]));
          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v101 = __str;
          }

          else
          {
            v101 = __str[0].__r_.__value_.__r.__words[0];
          }

          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v102 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v102 = __str[0].__r_.__value_.__l.__size_;
          }

          std::string::append(&v134, v101, v102);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__data_);
          }

          std::string::append(&v134, ",");
          std::string::append(&v134, "v_KeyType,");
          std::to_string(__str, BYTE5(__s[0]));
          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v103 = __str;
          }

          else
          {
            v103 = __str[0].__r_.__value_.__r.__words[0];
          }

          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v104 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v104 = __str[0].__r_.__value_.__l.__size_;
          }

          std::string::append(&v134, v103, v104);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__data_);
          }

          std::string::append(&v134, ",");
          std::string::append(&v134, "v_ProdType,");
          std::to_string(__str, *(__s + 3));
          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v105 = __str;
          }

          else
          {
            v105 = __str[0].__r_.__value_.__r.__words[0];
          }

          if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v106 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v106 = __str[0].__r_.__value_.__l.__size_;
          }

          std::string::append(&v134, v105, v106);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__data_);
          }

          std::string::append(&v134, ",");
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v107 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
            if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v108 = &v134;
            }

            else
            {
              v108 = v134.__r_.__value_.__r.__words[0];
            }

            v109 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TestOutput,%s\n", v107, "ADP", 68, "Ga23_17ParseZxCpPingProdMsg", v108);
            LbsOsaTrace_WriteLog(0x18u, __str, v109, 5, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v110 = mach_continuous_time();
            v111 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v110), "ADP", 68, "Ga23_17ParseZxCpPingProdMsg");
            LbsOsaTrace_WriteLog(0x18u, __str, v111, 5, 1);
          }

          if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v134.__r_.__value_.__l.__data_);
          }

          v73 = 0;
          goto LABEL_252;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v126 = mach_continuous_time();
          v127 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpPingResponse\n", (*&g_MacClockTicksToMsRelation * v126), "ADP", 69, "Ga23_18ProcessCpPingRsp", 770);
          LbsOsaTrace_WriteLog(0x18u, __str, v127, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v128 = mach_continuous_time();
          v129 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v128), "ADP", 68, "Ga23_18ProcessCpPingRsp");
          LbsOsaTrace_WriteLog(0x18u, __str, v129, 5, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v130 = mach_continuous_time();
          v131 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpPing Resp\n", (*&g_MacClockTicksToMsRelation * v130), "ADP", 69, "Ga23_17ParseZxCpPingProdMsg", 257);
          LbsOsaTrace_WriteLog(0x18u, __str, v131, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          goto LABEL_280;
        }
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v116 = mach_continuous_time();
          v117 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Ping CP Status\n", (*&g_MacClockTicksToMsRelation * v116), "ADP", 69, "Ga23_17ParseZxCpPingProdMsg", 770);
          LbsOsaTrace_WriteLog(0x18u, __str, v117, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          goto LABEL_280;
        }
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v27 = mach_continuous_time();
        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Parse Ping CP\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 69, "Ga23_17ParseZxCpPingProdMsg", 783);
        LbsOsaTrace_WriteLog(0x18u, __str, v28, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
LABEL_280:
        bzero(__str, 0x410uLL);
        v132 = mach_continuous_time();
        v133 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v132), "ADP", 68, "Ga23_17ParseZxCpPingProdMsg");
        LbsOsaTrace_WriteLog(0x18u, __str, v133, 5, 1);
      }
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      goto LABEL_17;
    }

    return result;
  }

  if (v10 != 77)
  {
    goto LABEL_14;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "Ga23_19ParseZxMePingProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
  }

  v13 = *a2;
  v14 = a2[1] - *a2;
  if (v14 > 8)
  {
    if (*(v13 + 8) != 32)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v114 = mach_continuous_time();
        v115 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MePing Status\n", (*&g_MacClockTicksToMsRelation * v114), "ADP", 69, "Ga23_19ParseZxMePingProdMsg", 770);
        LbsOsaTrace_WriteLog(0x18u, __str, v115, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        goto LABEL_270;
      }

      goto LABEL_271;
    }

    memset(__s, 0, 62);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "Ga23_20ProcessMePingRsp");
      LbsOsaTrace_WriteLog(0x18u, __str, v30, 5, 1);
    }

    if (v14 <= 0x2Du)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v118 = mach_continuous_time();
        v119 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpPingResponse\n", (*&g_MacClockTicksToMsRelation * v118), "ADP", 69, "Ga23_20ProcessMePingRsp", 770);
        LbsOsaTrace_WriteLog(0x18u, __str, v119, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v120 = mach_continuous_time();
        v121 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v120), "ADP", 68, "Ga23_20ProcessMePingRsp");
        LbsOsaTrace_WriteLog(0x18u, __str, v121, 5, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v122 = mach_continuous_time();
        v123 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MePing Resp\n", (*&g_MacClockTicksToMsRelation * v122), "ADP", 69, "Ga23_19ParseZxMePingProdMsg", 257);
        LbsOsaTrace_WriteLog(0x18u, __str, v123, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        goto LABEL_270;
      }

      goto LABEL_271;
    }

    memset_s(__s, 0x3EuLL, 0, 0x3EuLL);
    v31 = *(v13 + 9);
    LOBYTE(__s[0]) = v31 & 3;
    BYTE1(__s[0]) = (v31 >> 2) & 3;
    v32 = *(v13 + 10);
    BYTE2(__s[0]) = v32 & 0xF;
    BYTE3(__s[0]) = v32 >> 4;
    BYTE11(__s[0]) = *(v13 + 11);
    BYTE12(__s[0]) = *(v13 + 13);
    v33 = *(v13 + 17);
    *(__s + 13) = *(v13 + 14);
    LODWORD(__s[1]) = v33;
    BYTE4(__s[1]) = 0;
    v34 = *(v13 + 21);
    DWORD2(__s[1]) = *(v13 + 24);
    *(&__s[1] + 5) = v34;
    BYTE12(__s[1]) = 0;
    v35 = *(v13 + 28);
    *(&__s[2] + 5) = *(v13 + 36);
    *(&__s[1] + 13) = v35;
    v36 = *(v13 + 37);
    *(&__s[2] + 15) = *(v13 + 45);
    *(&__s[2] + 7) = v36;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v37 = mach_continuous_time();
      v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 68, "Ga23_20ProcessMePingRsp");
      LbsOsaTrace_WriteLog(0x18u, __str, v38, 5, 1);
    }

    std::string::append(a3, "ME,");
    std::to_string(__str, BYTE1(__s[0]));
    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = __str;
    }

    else
    {
      v39 = __str[0].__r_.__value_.__r.__words[0];
    }

    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = __str[0].__r_.__value_.__l.__size_;
    }

    std::string::append(a3, v39, v40);
    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str[0].__r_.__value_.__l.__data_);
    }

    std::string::append(a3, ".");
    std::to_string(__str, LOBYTE(__s[0]));
    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = __str;
    }

    else
    {
      v41 = __str[0].__r_.__value_.__r.__words[0];
    }

    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = __str[0].__r_.__value_.__l.__size_;
    }

    std::string::append(a3, v41, v42);
    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str[0].__r_.__value_.__l.__data_);
    }

    std::string::append(a3, ",");
    std::string::append(a3, "BB,");
    std::to_string(__str, BYTE3(__s[0]));
    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = __str;
    }

    else
    {
      v43 = __str[0].__r_.__value_.__r.__words[0];
    }

    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v44 = __str[0].__r_.__value_.__l.__size_;
    }

    std::string::append(a3, v43, v44);
    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str[0].__r_.__value_.__l.__data_);
    }

    std::string::append(a3, ".");
    std::to_string(__str, BYTE2(__s[0]));
    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = __str;
    }

    else
    {
      v45 = __str[0].__r_.__value_.__r.__words[0];
    }

    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v46 = __str[0].__r_.__value_.__l.__size_;
    }

    std::string::append(a3, v45, v46);
    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str[0].__r_.__value_.__l.__data_);
    }

    std::string::append(a3, ",");
    std::string::append(a3, "MEPatch,");
    std::string::append(a3, &__s[1] + 5);
    std::string::append(a3, ",");
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v47 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (*(a3 + 23) >= 0)
      {
        v48 = a3;
      }

      else
      {
        v48 = *a3;
      }

      v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Version,%s\n", v47, "ADP", 73, "Ga23_19ParseZxMePingProdMsg", v48);
      LbsOsaTrace_WriteLog(0x18u, __str, v49, 4, 1);
    }

    memset(&v134, 0, sizeof(v134));
    std::string::append(&v134, "ME,");
    std::to_string(__str, BYTE1(__s[0]));
    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = __str;
    }

    else
    {
      v50 = __str[0].__r_.__value_.__r.__words[0];
    }

    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v51 = __str[0].__r_.__value_.__l.__size_;
    }

    std::string::append(&v134, v50, v51);
    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str[0].__r_.__value_.__l.__data_);
    }

    std::string::append(&v134, ".");
    std::to_string(__str, LOBYTE(__s[0]));
    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = __str;
    }

    else
    {
      v52 = __str[0].__r_.__value_.__r.__words[0];
    }

    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v53 = __str[0].__r_.__value_.__l.__size_;
    }

    std::string::append(&v134, v52, v53);
    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str[0].__r_.__value_.__l.__data_);
    }

    std::string::append(&v134, ",");
    std::string::append(&v134, "BB,");
    std::to_string(__str, BYTE3(__s[0]));
    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = __str;
    }

    else
    {
      v54 = __str[0].__r_.__value_.__r.__words[0];
    }

    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v55 = __str[0].__r_.__value_.__l.__size_;
    }

    std::string::append(&v134, v54, v55);
    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str[0].__r_.__value_.__l.__data_);
    }

    std::string::append(&v134, ".");
    std::to_string(__str, BYTE2(__s[0]));
    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = __str;
    }

    else
    {
      v56 = __str[0].__r_.__value_.__r.__words[0];
    }

    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v57 = __str[0].__r_.__value_.__l.__size_;
    }

    std::string::append(&v134, v56, v57);
    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str[0].__r_.__value_.__l.__data_);
    }

    std::string::append(&v134, ",");
    std::string::append(&v134, "MMCU,");
    std::to_string(__str, BYTE11(__s[0]));
    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = __str;
    }

    else
    {
      v58 = __str[0].__r_.__value_.__r.__words[0];
    }

    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v59 = __str[0].__r_.__value_.__l.__size_;
    }

    std::string::append(&v134, v58, v59);
    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str[0].__r_.__value_.__l.__data_);
    }

    std::string::append(&v134, ",");
    std::string::append(&v134, "RF,");
    std::to_string(__str, BYTE12(__s[0]));
    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = __str;
    }

    else
    {
      v60 = __str[0].__r_.__value_.__r.__words[0];
    }

    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v61 = __str[0].__r_.__value_.__l.__size_;
    }

    std::string::append(&v134, v60, v61);
    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str[0].__r_.__value_.__l.__data_);
    }

    std::string::append(&v134, ",");
    std::string::append(&v134, "v_IsRemovable,");
    std::to_string(__str, SBYTE7(__s[0]));
    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = __str;
    }

    else
    {
      v62 = __str[0].__r_.__value_.__r.__words[0];
    }

    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v63 = __str[0].__r_.__value_.__l.__size_;
    }

    std::string::append(&v134, v62, v63);
    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str[0].__r_.__value_.__l.__data_);
    }

    std::string::append(&v134, ",");
    std::string::append(&v134, "v_LnaType,");
    std::to_string(__str, BYTE5(__s[0]));
    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = __str;
    }

    else
    {
      v64 = __str[0].__r_.__value_.__r.__words[0];
    }

    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v65 = __str[0].__r_.__value_.__l.__size_;
    }

    std::string::append(&v134, v64, v65);
    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str[0].__r_.__value_.__l.__data_);
    }

    std::string::append(&v134, ",");
    std::string::append(&v134, "v_XOType,");
    std::to_string(__str, BYTE6(__s[0]));
    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = __str;
    }

    else
    {
      v66 = __str[0].__r_.__value_.__r.__words[0];
    }

    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v67 = __str[0].__r_.__value_.__l.__size_;
    }

    std::string::append(&v134, v66, v67);
    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str[0].__r_.__value_.__l.__data_);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v68 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = &v134;
      }

      else
      {
        v69 = v134.__r_.__value_.__r.__words[0];
      }

      v70 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TestOutput,%s\n", v68, "ADP", 68, "Ga23_19ParseZxMePingProdMsg", v69);
      LbsOsaTrace_WriteLog(0x18u, __str, v70, 5, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v71 = mach_continuous_time();
      v72 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v71), "ADP", 68, "Ga23_19ParseZxMePingProdMsg");
      LbsOsaTrace_WriteLog(0x18u, __str, v72, 5, 1);
    }

    if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v134.__r_.__value_.__l.__data_);
    }

    v73 = 1;
LABEL_252:
    *a4 = v73;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v112 = mach_continuous_time();
      v113 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v112), "ADP", 68, "Ga23_21ParseZxPingProdMsg");
      LbsOsaTrace_WriteLog(0x18u, __str, v113, 5, 1);
    }

    return 1;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MePing\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 69, "Ga23_19ParseZxMePingProdMsg", 783);
    LbsOsaTrace_WriteLog(0x18u, __str, v16, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
LABEL_270:
    bzero(__str, 0x410uLL);
    v124 = mach_continuous_time();
    v125 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v124), "ADP", 68, "Ga23_19ParseZxMePingProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v125, 5, 1);
  }

LABEL_271:
  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
LABEL_17:
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "Ga23_21ParseZxPingProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
    return 0;
  }

  return result;
}

void sub_2995197F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnssTest::ZxFactoryHandler::Ga23_22BuildZxApSignalGpioProdMsg(_BYTE *a1, uint64_t a2, char a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v31 = a3;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "Ga23_22BuildZxApSignalGpioProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v6, 5, 1);
  }

  __str[0] = 122;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 120;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 84;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 104;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 32;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  std::vector<unsigned char>::push_back[abi:ne200100](a2, &v31);
  *a1 = v31;
  v29 = 0;
  v30 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v7 = ~*a2 + *(a2 + 8);
  if (v7 < 8 || v7 > 0x7FF || v29 - __p <= v7)
  {
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v13 = 0;
    v14 = 8;
    v15 = 8;
    do
    {
      v13 += *(__p + v14);
      v14 = ++v15;
    }

    while (v7 >= v15);
    v29 = __p;
    operator delete(__p);
    if (v13 != -1)
    {
      __str[0] = v13;
      std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
      __str[0] = HIBYTE(v13);
      std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
      v17 = *a2;
      v18 = *(a2 + 8) - *a2;
      if (v18 < 0x10000)
      {
        v21 = v18 - 8;
        v17[5] = v21;
        *(*a2 + 6) = HIBYTE(v21);
        v22 = *a2;
        v16.i32[0] = *(*a2 + 2);
        v23 = vaddv_s16(*&vmovl_u8(v16)) + *(*a2 + 6);
        if (v23)
        {
          v22[7] = v23;
          __str[0] = 10;
          std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v24 = mach_continuous_time();
            v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 68, "Ga23_22BuildZxApSignalGpioProdMsg");
            LbsOsaTrace_WriteLog(0x18u, __str, v25, 5, 1);
          }

          return 1;
        }

        else
        {
          *(a2 + 8) = v22;
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v26 = mach_continuous_time();
            v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GpioProd\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 69, "Ga23_22BuildZxApSignalGpioProdMsg", 781);
            LbsOsaTrace_WriteLog(0x18u, __str, v27, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
          if (result)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        *(a2 + 8) = v17;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v19 = mach_continuous_time();
          v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GpioRange\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "Ga23_22BuildZxApSignalGpioProdMsg", 772);
          LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          goto LABEL_9;
        }
      }

      return result;
    }
  }

  *(a2 + 8) = *a2;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GpioProd\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "Ga23_22BuildZxApSignalGpioProdMsg", 784);
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
LABEL_9:
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "Ga23_22BuildZxApSignalGpioProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    return 0;
  }

  return result;
}

uint64_t gnssTest::ZxFactoryHandler::Ga23_23ParseZxApSignalGpioProdMsg(unsigned __int8 *a1, void *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga23_23ParseZxApSignalGpioProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  if (gnssTest::ZxHandler::Ga23_03IsCheckSumValid(a2))
  {
    v6 = *a2;
    if (a2[1] - *a2 > 8uLL)
    {
      if (v6[2] != 84 || v6[3] != 72 || v6[4] != 32)
      {
        goto LABEL_21;
      }

      if (v6[8] != 32)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          goto LABEL_21;
        }

        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GpioProd status\n");
        goto LABEL_9;
      }

      if (v6[9] == *a1)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          return 1;
        }

        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "Ga23_23ParseZxApSignalGpioProdMsg");
        v10 = 1;
        LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
        return v10;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Time mismatch\n");
        goto LABEL_9;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      goto LABEL_8;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
LABEL_8:
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GpioProd\n");
LABEL_9:
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

LABEL_21:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "Ga23_23ParseZxApSignalGpioProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
  }

  return 0;
}

uint64_t gnssTest::ZxFactoryHandler::Ga23_24BuildZxTimeMarkProdMsg(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga23_24BuildZxTimeMarkProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  __str[0] = 122;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 120;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 84;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 108;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 77;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  v27 = 0;
  v28 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v5 = ~*a2 + *(a2 + 8);
  if (v5 < 8 || v5 > 0x7FF || v27 - __p <= v5)
  {
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = 0;
    v12 = 8;
    v13 = 8;
    do
    {
      v11 += *(__p + v12);
      v12 = ++v13;
    }

    while (v5 >= v13);
    v27 = __p;
    operator delete(__p);
    if (v11 != -1)
    {
      __str[0] = v11;
      std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
      __str[0] = HIBYTE(v11);
      std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
      v15 = *a2;
      v16 = *(a2 + 8) - *a2;
      if (v16 < 0x10000)
      {
        v19 = v16 - 8;
        v15[5] = v19;
        *(*a2 + 6) = HIBYTE(v19);
        v20 = *a2;
        v14.i32[0] = *(*a2 + 2);
        v21 = vaddv_s16(*&vmovl_u8(v14)) + *(*a2 + 6);
        if (v21)
        {
          v20[7] = v21;
          __str[0] = 10;
          std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v22 = mach_continuous_time();
            v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "Ga23_24BuildZxTimeMarkProdMsg");
            LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
          }

          return 1;
        }

        else
        {
          *(a2 + 8) = v20;
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v24 = mach_continuous_time();
            v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimeMark\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 69, "Ga23_24BuildZxTimeMarkProdMsg", 781);
            LbsOsaTrace_WriteLog(0x18u, __str, v25, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
          if (result)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        *(a2 + 8) = v15;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimemarkRange\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "Ga23_24BuildZxTimeMarkProdMsg", 772);
          LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          goto LABEL_9;
        }
      }

      return result;
    }
  }

  *(a2 + 8) = *a2;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimeMark\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga23_24BuildZxTimeMarkProdMsg", 784);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
LABEL_9:
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "Ga23_24BuildZxTimeMarkProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
    return 0;
  }

  return result;
}

uint64_t gnssTest::ZxFactoryHandler::Ga23_25ParseZxTimeMarkProdMsg(uint64_t a1, uint64_t *a2, _DWORD *a3, unsigned __int16 *a4)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 68, "Ga23_25ParseZxTimeMarkProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
  }

  if ((gnssTest::ZxHandler::Ga23_03IsCheckSumValid(a2) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
LABEL_8:
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimeMark\n");
LABEL_23:
      LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
    }

LABEL_24:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "Ga23_25ParseZxTimeMarkProdMsg");
      LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
    }

    return 0;
  }

  v9 = *a2;
  if ((a2[1] - *a2) <= 8)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  if (*(v9 + 2) != 84 || *(v9 + 3) != 76 || (v11 = *(v9 + 4), v11 != 77) && v11 != 32)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid zx resp\n");
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v12 = *(v9 + 8);
  if (v12 != 32 && v12 != 83)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      goto LABEL_24;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimeMark status\n");
    goto LABEL_23;
  }

  if (!a3 || !a4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      goto LABEL_24;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TTick\n");
    goto LABEL_23;
  }

  *a3 = *(v9 + 9);
  *a4 = (4 * *(v9 + 13)) | (*(v9 + 14) << 10);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TTick,%u,TTickMs,%u\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 73, "Ga23_25ParseZxTimeMarkProdMsg", *a3, *a4);
    LbsOsaTrace_WriteLog(0x18u, __str, v14, 4, 1);
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v15 = mach_continuous_time();
  v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "Ga23_25ParseZxTimeMarkProdMsg");
  v17 = 1;
  LbsOsaTrace_WriteLog(0x18u, __str, v16, 5, 1);
  return v17;
}

uint64_t gnssTest::ZxFactoryHandler::Ga23_24BuildZxStopProdMsg(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga23_24BuildZxStopProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  __str[0] = 122;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 120;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 84;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 102;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 32;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  v29 = 1;
  v30 = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, &v29);
  __str[0] = v30;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = HIBYTE(v30);
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  v27 = 0;
  v28 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v5 = ~*a2 + *(a2 + 8);
  if (v5 < 8 || v5 > 0x7FF || v27 - __p <= v5)
  {
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = 0;
    v12 = 8;
    v13 = 8;
    do
    {
      v11 += *(__p + v12);
      v12 = ++v13;
    }

    while (v5 >= v13);
    v27 = __p;
    operator delete(__p);
    if (v11 != -1)
    {
      __str[0] = v11;
      std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
      __str[0] = HIBYTE(v11);
      std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
      v15 = *a2;
      v16 = *(a2 + 8) - *a2;
      if (v16 < 0x10000)
      {
        v19 = v16 - 8;
        v15[5] = v19;
        *(*a2 + 6) = HIBYTE(v19);
        v20 = *a2;
        v14.i32[0] = *(*a2 + 2);
        v21 = vaddv_s16(*&vmovl_u8(v14)) + *(*a2 + 6);
        if (v21)
        {
          v20[7] = v21;
          __str[0] = 10;
          std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v22 = mach_continuous_time();
            v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "Ga23_24BuildZxStopProdMsg");
            LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
          }

          return 1;
        }

        else
        {
          *(a2 + 8) = v20;
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v24 = mach_continuous_time();
            v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StopPod\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 69, "Ga23_24BuildZxStopProdMsg", 781);
            LbsOsaTrace_WriteLog(0x18u, __str, v25, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
          if (result)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        *(a2 + 8) = v15;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StopRange\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "Ga23_24BuildZxStopProdMsg", 772);
          LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          goto LABEL_9;
        }
      }

      return result;
    }
  }

  *(a2 + 8) = *a2;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StopProd\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga23_24BuildZxStopProdMsg", 781);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
LABEL_9:
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "Ga23_24BuildZxStopProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
    return 0;
  }

  return result;
}

uint64_t gnssTest::ZxFactoryHandler::Ga23_33CalcIntegrationTime(double a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "Ga23_33CalcIntegrationTime");
    LbsOsaTrace_WriteLog(0x18u, __str, v6, 5, 1);
  }

  if (a3 <= 4)
  {
    if ((a3 - 1) < 3 || a3 == 4)
    {
      v7 = 5 * (a1 / 0x3E8) + 1985;
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if ((a3 - 8) < 2)
  {
    v8 = a1 / 0x3E8;
    v9 = 340;
    goto LABEL_12;
  }

  if (a3 == 5 || a3 == 7)
  {
    v8 = a1 / 0x3E8;
    v9 = 10;
LABEL_12:
    v7 = v8 * v9 + 1985;
    goto LABEL_13;
  }

LABEL_16:
  v7 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Band,%u\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "Ga23_33CalcIntegrationTime", 770, a3);
    LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
    v7 = 0;
  }

LABEL_13:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "Ga23_33CalcIntegrationTime");
    LbsOsaTrace_WriteLog(0x18u, __str, v11, 5, 1);
  }

  return v7;
}

uint64_t gnssTest::ZxFactoryHandler::Ga23_34BuildZxProdIndProdMsg(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga23_34BuildZxProdIndProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  __str[0] = 122;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 120;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 84;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 98;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 32;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  __str[0] = 1;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
  v27 = 0;
  v28 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v5 = ~*a2 + *(a2 + 8);
  if (v5 < 8 || v5 > 0x7FF || v27 - __p <= v5)
  {
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = 0;
    v12 = 8;
    v13 = 8;
    do
    {
      v11 += *(__p + v12);
      v12 = ++v13;
    }

    while (v5 >= v13);
    v27 = __p;
    operator delete(__p);
    if (v11 != -1)
    {
      __str[0] = v11;
      std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
      __str[0] = HIBYTE(v11);
      std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
      v15 = *a2;
      v16 = *(a2 + 8) - *a2;
      if (v16 < 0x10000)
      {
        v19 = v16 - 8;
        v15[5] = v19;
        *(*a2 + 6) = HIBYTE(v19);
        v20 = *a2;
        v14.i32[0] = *(*a2 + 2);
        v21 = vaddv_s16(*&vmovl_u8(v14)) + *(*a2 + 6);
        if (v21)
        {
          v20[7] = v21;
          __str[0] = 10;
          std::vector<unsigned char>::push_back[abi:ne200100](a2, __str);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v22 = mach_continuous_time();
            v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "Ga23_34BuildZxProdIndProdMsg");
            LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
          }

          return 1;
        }

        else
        {
          *(a2 + 8) = v20;
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v24 = mach_continuous_time();
            v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ProdIndReq\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 69, "Ga23_34BuildZxProdIndProdMsg", 781);
            LbsOsaTrace_WriteLog(0x18u, __str, v25, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
          if (result)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        *(a2 + 8) = v15;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ProdIndReq\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "Ga23_34BuildZxProdIndProdMsg", 772);
          LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
        if (result)
        {
          goto LABEL_9;
        }
      }

      return result;
    }
  }

  *(a2 + 8) = *a2;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ProdIndReq\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga23_34BuildZxProdIndProdMsg", 784);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  if (result)
  {
LABEL_9:
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "Ga23_34BuildZxProdIndProdMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
    return 0;
  }

  return result;
}

uint64_t gnssTest::ZxFactoryHandler::Ga23_35ParseLtlRespMsg(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga23_35ParseLtlRespMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (gnssTest::ZxHandler::Ga23_03IsCheckSumValid(a2))
  {
    v5 = *a2;
    if (a2[1] - *a2 > 8uLL)
    {
      if (v5[2] != 88 || v5[3] != 86 || v5[4] != 77 || v5[8] == 32)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          return 1;
        }

        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "Ga23_35ParseLtlRespMsg");
        v9 = 1;
        LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
        return v9;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LTL Resp status\n");
        goto LABEL_9;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      goto LABEL_8;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
LABEL_8:
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LTL Resp\n");
LABEL_9:
    LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 68, "Ga23_35ParseLtlRespMsg");
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
  }

  return 0;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C29EA50](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_29951C3E8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  MEMORY[0x29C29E9D0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C29E9E0](v13);
  return a1;
}

void sub_29951C57C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::locale a11)
{
  if (a2)
  {
    MEMORY[0x29C29E9E0](&a9, a2, a3, a4, a5, a6, a7, a8);
    __cxa_begin_catch(exception_object);
    std::ios_base::__set_badbit_and_consider_rethrow((v11 + *(*v11 - 24)));
    __cxa_end_catch();
    JUMPOUT(0x29951C540);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  v19 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__p, __c, v12);
      *(&__p + v12) = 0;
      if (v18 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v14 = (*(*v6 + 96))(v6, p_p, v12);
      if (v18 < 0)
      {
        operator delete(__p);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t GM_Get_Best_ASSS(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
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
      if (v10 >= a3 && (*v7 & 0x308) == 0x208)
      {
        if (*(v8 - 8) == 1)
        {
          if (*v8)
          {
            v11 = 70;
          }

          else
          {
            v11 = 64;
          }

          v10 += v11;
          if (v8[3])
          {
            v10 += 128;
          }
        }

        if (v10 <= v6)
        {
          v9 = v9;
        }

        else
        {
          v6 = v10;
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

void *SV_Gen_Meas(int *a1, char *__dst, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = __dst;
  v13 = a1;
  v322 = *MEMORY[0x29EDCA608];
  v14 = __dst + 4096;
  v15 = a5 + 1024;
  v307 = 0;
  v306 = 0;
  v290 = __dst + 4096;
  if ((a5[1864] & 1) == 0)
  {
    *&__dsta = 0;
    UTC_Cor = API_Get_UTC_Cor(1, &__dsta);
    v17 = -0.5;
    if (*&__dsta > 0.0)
    {
      v17 = 0.5;
    }

    v18 = *&__dsta + v17;
    if (v18 <= 2147483650.0)
    {
      if (v18 >= -2147483650.0)
      {
        v19 = v18;
      }

      else
      {
        LOBYTE(v19) = 0;
      }
    }

    else
    {
      LOBYTE(v19) = -1;
    }

    v12 = __dst;
    if (UTC_Cor)
    {
      v20 = *(v15 + 3361);
      v21 = v19 - v20;
      if (v19 != v20)
      {
        v22 = v21 * 1023000.0;
        v23 = -0.5;
        if (v22 > 0.0)
        {
          v23 = 0.5;
        }

        v24 = v22 + v23;
        if (v24 <= 2147483650.0)
        {
          if (v24 >= -2147483650.0)
          {
            v25 = v24;
          }

          else
          {
            v25 = 0x80000000;
          }
        }

        else
        {
          v25 = 0x7FFFFFFFLL;
        }

        v26 = (a5 + 680);
        v27 = a5 + 8;
        v28 = 48;
        do
        {
          if (*v26 == 2 && (*v27 || v27[1] || *(v27 + 4)))
          {
            Inc_CA_Chips(v25, v27 + 1, v27);
            EvLog_v("SV_Gen_Meas: Adj GLO ZC&CP  Con %d  SV %2d  dUTC %3d  Chip_Inc %6d", *v26, v26[2], v21, v25 / 1000);
            v12 = __dst;
          }

          v27 += 14;
          v26 += 36;
          --v28;
        }

        while (v28);
        *(v15 + 3361) = v19;
        v14 = v290;
        v13 = a1;
      }

      *(v15 + 3360) = 1;
    }
  }

  v298 = *a5;
  v282 = a5[1];
  v29 = v12;
  memcpy(v12, a5 + 680, 0x6C0uLL);
  v30 = a5 + 8;
  v280 = (v29 + 1728);
  memcpy(v29 + 1728, a5 + 8, 0xA80uLL);
  v31 = 0;
  v14[324] = *(v15 + 3360);
  *(v29 + 1104) = *(a5 + 17);
  memset(v321, 0, 48);
  v32 = v13 + 64;
  do
  {
    v33 = *v29;
    v36 = Is_Legal(*v29) && v33 == 3;
    if (!v36 || (*(v29 + 4) & 8) == 0)
    {
      goto LABEL_44;
    }

    LOBYTE(v34) = v29[4];
    LOBYTE(v35) = v29[18];
    v37 = v34 + v35 * 0.0625;
    v38 = &v32[14 * BYTE2(v33)];
    v39 = v38 - 14;
    v40 = *a5;
    v41 = *(v38 - 3);
    if (v41)
    {
      v42 = *a5 - v41 < 60001;
    }

    else
    {
      v42 = 1;
    }

    if (v42 && (v43 = v39[10], v43 < 6))
    {
      v39[11] = v40;
      if (v43 == 5)
      {
        v49 = *(v39 + 6);
        *v39 = *(v39 + 2);
        *(v39 + 1) = v49;
        *(v39 + 4) = v37;
        v45 = 40;
      }

      else
      {
        *&v39[2 * v43] = v37;
        v44 = v43 + 1;
        v39[10] = v43 + 1;
        v45 = 8 * (v43 + 1);
        if (v43 < 4)
        {
          v46 = 40 - 8 * v44;
          goto LABEL_41;
        }
      }

      v46 = 0;
      LODWORD(v44) = 5;
    }

    else
    {
      *(v39 + 10) = 0u;
      *(v39 + 6) = 0u;
      *(v39 + 2) = 0u;
      *v39 = v37;
      LODWORD(v44) = 1;
      v39[10] = 1;
      v39[11] = v40;
      v45 = 8;
      v46 = 32;
    }

LABEL_41:
    bzero(&__dsta + v45, v46);
    memcpy(&__dsta, v39, v45);
    VecMedian8(&__dsta, v44);
    *(v39 + 6) = v47;
    v48 = &v32[14 * v29[2]];
    if (!*(v48 - 4) || *(v48 - 1) < 14.0)
    {
      *(v29 + 4) &= ~8u;
      v321[v31] = 1;
    }

LABEL_44:
    ++v31;
    v29 += 36;
  }

  while (v31 != 48);
  v50 = 0;
  v51 = __dst + 8;
  do
  {
    v52 = *(v51 - 2);
    if (Is_Legal(v52) && v52 == 4)
    {
      v54 = *a6 && BYTE2(v52) - 1 > 4;
      if (!v54 && (*v51 & 8) != 0)
      {
        *v51 &= ~8u;
        v321[v50] = 1;
      }
    }

    ++v50;
    v51 += 36;
  }

  while (v50 != 48);
  v55 = 0;
  v56 = 0;
  v57 = __dst;
  do
  {
    v58 = v57;
    if (Is_Legal(*&v57[v55]))
    {
      v57 = v58;
      if ((*&v58[v55 + 8] & 8) != 0 && v58[v55 + 4] > v56)
      {
        v56 = v58[v55 + 4];
      }
    }

    else
    {
      v57 = v58;
    }

    v55 += 36;
  }

  while (v55 != 1728);
  if (v56 >= 0x1Eu)
  {
    v59 = 0;
    v60 = v56 - 21;
    v61 = v56 - 24;
    v62 = v321;
    do
    {
      v63 = &v57[v59];
      v64 = *&v57[v59];
      v65 = Is_Legal(v64);
      v57 = __dst;
      if (!v65 || (*(v63 + 8) & 8) == 0 || (*v62 & 1) != 0 || __dst[v59 + 4] >= v60)
      {
        goto LABEL_84;
      }

      switch(v64)
      {
        case 5u:
          goto LABEL_80;
        case 4u:
          if (BYTE2(v64) < 6u)
          {
            break;
          }

          v67 = GM_CrossCorr_Protection(4, v61, v63, v30, a7);
          v57 = __dst;
          if (!v67)
          {
            break;
          }

LABEL_81:
          *v62 = 1;
          break;
        case 1u:
LABEL_80:
          v66 = GM_CrossCorr_Protection(6, v61, v63, v30, a7);
          v57 = __dst;
          if (v66)
          {
            goto LABEL_81;
          }

          break;
      }

LABEL_84:
      v59 += 36;
      ++v62;
      v30 += 14;
    }

    while (v59 != 1728);
  }

  *(v57 + 1682) = *a9;
  v290[2680] = *(a9 + 4);
  v290[2636] = *(a9 + 5);
  v68 = *(a9 + 8);
  *(v57 + 846) = v68;
  *(v57 + 3367) = *(a9 + 16);
  *(v57 + 842) = *(a9 + 24);
  v69 = *(a9 + 32);
  *(v57 + 1686) = *(a9 + 60);
  *(v57 + 3374) = *(a9 + 66);
  v290[2654] = *(a9 + 64);
  *(v57 + 3376) = *(a9 + 68);
  *(v57 + 845) = *(a9 + 72);
  *(v57 + 848) = v69 + *(a9 + 40) * ((v298 - v68) * 0.001);
  v281 = (v57 + 4424);
  v70 = -2304;
  do
  {
    v71 = &v57[v70 + 6728];
    *(v71 + 29) = 0uLL;
    *v71 = 0uLL;
    *(v71 + 1) = 0uLL;
    v70 += 48;
  }

  while (v70);
  v296 = 0;
  v72 = 47;
  v73 = 1728;
  v74 = 6695;
  v75 = 6680;
  while (2)
  {
    v76 = &v57[v73];
    v77 = v57[v73 - 36];
    if (v77 <= 6 && v77 != 0)
    {
      if (v77 == 2)
      {
        v79 = &v57[v73];
        v80 = *(a8 + 16432 + 4 * v57[v73 - 33] + 28);
        if (v80 != 2139062143)
        {
          *(v79 - 34) = v80;
          if (!v80)
          {
            goto LABEL_106;
          }

          goto LABEL_103;
        }

        *(v79 - 34) = 0;
        if ((*(v79 - 14) & 0x200) != 0)
        {
          *(v79 - 14) &= 0xFCFFu;
        }

LABEL_106:
        if (*(v76 - 36) != 2 && g_Enable_Event_Log >= 3u)
        {
          EvLog_d("SV_Gen_Meas: index fail", v72);
          v57 = __dst;
        }
      }

      else if (v77 != 6)
      {
        if (!v57[v73 - 34])
        {
          goto LABEL_106;
        }

LABEL_103:
        v81 = GNSS_Id_To_Num_Prn_Idx(*(v76 - 9));
        if ((*(a7 + 3996 + v81) & 0x8000000000000000) != 0)
        {
          v57 = __dst;
        }

        else
        {
          v57 = __dst;
          v82 = &__dst[v75];
          v83 = (a7 + 60 + 48 * *(a7 + 3996 + v81));
          v84 = *v83;
          v85 = v83[2];
          *(v82 + 1) = v83[1];
          *(v82 + 2) = v85;
          *v82 = v84;
          if (__dst[v74 - 11] == 1)
          {
            v296 |= __dst[v74];
          }
        }

        if ((*&v57[v73 - 28] & 0x200) != 0 && (*(a8 + 33605 + v81) != 1 || *(a6 + 253 + v81) == 1))
        {
          *&v57[v73 - 28] &= 0xFCFFu;
        }
      }
    }

    v72 = (v72 - 1);
    v74 -= 48;
    v75 -= 48;
    v73 -= 36;
    if (v73)
    {
      continue;
    }

    break;
  }

  v86 = v57 + 6796;
  *(v57 + 6956) = 0u;
  *(v57 + 6972) = 0u;
  *(v57 + 6924) = 0u;
  *(v57 + 6940) = 0u;
  *(v57 + 6892) = 0u;
  *(v57 + 6908) = 0u;
  *(v57 + 6860) = 0u;
  *(v57 + 6876) = 0u;
  *(v57 + 6828) = 0u;
  *(v57 + 6844) = 0u;
  *(v57 + 6796) = 0u;
  *(v57 + 6812) = 0u;
  bzero(v57 + 6992, 0x600uLL);
  GM_Inc_Local_Time(v298, __dst);
  v87 = __dst;
  *(__dst + 1693) = v282;
  v88 = *(__dst + 848);
  if (fabs(v88) > 0.00055)
  {
    *(a1 + 4) = 1;
  }

  if (v290[2636] == 1 && *(a1 + 4) == 1)
  {
    v89 = v88 * 1000.0;
    v90 = -0.5;
    if (v89 > 0.0)
    {
      v90 = 0.5;
    }

    v91 = v89 + v90;
    if (v91 <= 2147483650.0)
    {
      if (v91 >= -2147483650.0)
      {
        v92 = v91;
      }

      else
      {
        v92 = 0x80000000;
      }
    }

    else
    {
      v92 = 0x7FFFFFFF;
    }

    Inc_Local_Time(-v92, 86400, __dst + 845, __dst + 3376);
    v135 = *(__dst + 3376);
    v136 = *(__dst + 3374);
    if (v135 >= 1462)
    {
      v137 = v135 - 2922;
      if (*(__dst + 3376) < 0xB6Au)
      {
        v137 = 0;
      }

      v135 = v135 - 1461 * ((v137 + 1460) / 0x5B5u) - 1461;
      v136 += (v137 + 1460) / 0x5B5u + 1;
      *(__dst + 3376) = v135;
      *(__dst + 3374) = v136;
    }

    if (v135 <= 0)
    {
      if (v135 <= -1460)
      {
        v141 = -1460;
      }

      else
      {
        v141 = v135;
      }

      v142 = (v141 - v135 - (v135 < -1460)) / 0x5B5u;
      if (v135 < -1460)
      {
        ++v142;
      }

      v143 = v136 + ~v142;
      *(__dst + 3376) = v135 + 1461 * v142 + 1461;
      *(__dst + 3374) = v143;
      if (v143 < 0)
      {
        goto LABEL_212;
      }
    }

    else
    {
      if ((v136 & 0x8000) == 0)
      {
        goto LABEL_199;
      }

LABEL_212:
      *(__dst + 3374) = 0;
    }

LABEL_199:
    GM_Apply_LT_Slew(__dst + 848, __dst + 3367, __dst + 842, a1 + 2);
    v87 = __dst;
    if (*(a1 + 5) == 1 && *(a1 + 3))
    {
      v138 = 0;
      v139 = -1575420 * *(a1 + 3);
      v140 = a1 + 255;
      do
      {
        if (v140[v138] == 1)
        {
          *&v140[4 * v138 - 51] += v139;
        }

        --v138;
      }

      while (v138 != -48);
    }
  }

  else
  {
    *(a1 + 3) = 0;
    *(a1 + 5) = 0;
  }

  v273 = v86;
  Min_SNR = GM_Get_Min_SNR(v87, 48);
  GM_Prop_AAD(*(__dst + 1692), 48, v281);
  v94 = __dst;
  if (v290[2636] == 1 && *(__dst + 1682) >= 7 && *(a4 + 1) == 1 && *(a4 + 12) == 3)
  {
    for (i = 0; i != 48; ++i)
    {
      v96 = &v94[36 * i];
      v97 = GM_Gen_SV_Meas_QI(v96);
      v98 = *(v96 + 8);
      v99 = *v96;
      v100 = Is_Legal(*v96);
      v94 = __dst;
      if (v100 && v97 >= 8 && (v98 & 0x300u) >= 0x200)
      {
        v102 = v281 + 48 * i;
        if (*(v102 + 4) == 1 && *(v102 + 15) == 1)
        {
          v103 = (v280 + 56 * i);
          v104 = *v103;
          LODWORD(v103) = (2149582851 * v103[1]) >> 32;
          v105 = ((v103 >> 9) + (v103 >> 31) + 1500 * v104) * 0.001;
          v106 = *(__dst + 842);
          v107 = v106 - v105;
          if (v99 == 2)
          {
            while (v107 >= 43200.0)
            {
              v105 = v105 + 86400.0;
              v107 = v106 - v105;
            }

            while (v107 < -43200.0)
            {
              v105 = v105 + -86400.0;
              v107 = v106 - v105;
            }
          }

          if (v107 >= 302400.0)
          {
            v107 = v107 + -604800.0;
          }

          else if (v107 < -302400.0)
          {
            v107 = v107 + 604800.0;
          }

          if (fabs(v107) > 3.0)
          {
            *(v96 + 8) = v98 & 0xFCFF;
            EvLog_v("SV_Gen_Meas: SF Sync Rej ! Ch %d, SF Sync %d, d_TOW %g", i, (v98 & 0x300) >> 8, v107);
            v94 = __dst;
          }
        }
      }
    }
  }

  GM_Cross_Constell(v94, a8);
  GM_Get_Best_SyncSV(v280, __dst, v281, Min_SNR, 48, &v307 + 1, &v307);
  Best_NSSS = GM_Get_Best_NSSS(__dst, v281, Min_SNR, 48);
  v109 = GM_Adjust_AAD(v307, Best_NSSS, v280, 48, v281);
  v110 = __dst;
  v111 = 0;
  *(__dst + 1698) = v109;
  v112 = (a3 + 96);
  v113 = -2304;
  v114 = 1732;
  do
  {
    v115 = Is_Legal(*&v110[v111]);
    v110 = __dst;
    if (v115)
    {
      v116 = &__dst[v114];
      v117 = *&__dst[v114];
      v118 = *&__dst[v113 + 6760];
      v119 = __OFSUB__(v117, v118);
      v120 = v117 - v118;
      if (v120 < 0 != v119)
      {
        v120 += 1534500;
      }

      v121 = v120 % 1023;
      if (v121 > 512)
      {
        LOWORD(v121) = v121 - 1023;
      }

      *(v112 - 48) = v121;
      *v112 = *(v116 + 2) / 256 - *&__dst[v113 + 6750];
      v112[48] = *(v116 + 3) / 256 - *&__dst[v113 + 6750];
    }

    v111 += 36;
    ++v112;
    v113 += 48;
    v114 += 56;
  }

  while (v111 != 1728);
  v306 = 0;
  v122 = a1;
  v123 = a1[3];
  v124 = *(__dst + 3367) > *(a9 + 16);
  v125 = *(__dst + 1682);
  if (v123 <= 4)
  {
    v126 = v123 > 2;
  }

  else
  {
    v126 = 2;
  }

  v276 = v126;
  if (v123 <= 4)
  {
    v127 = v290;
    v128 = a6;
    if (v123 >= 3 && v125 < 9)
    {
      goto LABEL_164;
    }

LABEL_167:
    if (v125 == 11)
    {
      v124 = 0;
      v127[2680] = 1;
      a1[3] = 6;
    }

    else
    {
      if (v123 <= 4 && (v307 & 0x8000000000000000) == 0)
      {
        goto LABEL_171;
      }

      v129 = v307;
      if (v123 <= 2 && (v307 & 0x80000000) == 0)
      {
        goto LABEL_173;
      }

      if ((Best_NSSS & 0x80000000) == 0 && !v123)
      {
        goto LABEL_172;
      }
    }
  }

  else
  {
    v127 = v290;
    v128 = a6;
    if (v125 >= 9)
    {
      goto LABEL_167;
    }

LABEL_164:
    v127[2680] = 0;
    a1[3] = 2;
    if (v307 < 0)
    {
      v129 = v307;
      if ((v307 & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      goto LABEL_173;
    }

LABEL_171:
    v129 = v307;
LABEL_172:
    if ((v129 & 0x80000000) != 0)
    {
      v124 = 1;
      if ((Best_NSSS & 0x80000000) == 0)
      {
        GM_Set_MSec_TOW_NSSS((v280 + 56 * Best_NSSS), v281 + 48 * Best_NSSS, __dst + 842, &v306, 604800.0);
        v110 = __dst;
        v127[2680] = 0;
        a1[3] = 1;
      }
    }

    else
    {
LABEL_173:
      v130 = v129;
      v131 = v281 + 48 * v129;
      if (*(v131 + 4) == 1)
      {
        v132 = vcvtd_n_f64_u32(*(v131 + 16), 1uLL);
        v133 = v296;
      }

      else
      {
        v134 = *&__dst[36 * v130];
        v132 = 77.0;
        v133 = v296;
        if (v134 <= 3u)
        {
          if (v134 == 2)
          {
            v132 = 73.0;
          }

          else if (v134 == 3)
          {
            v132 = 87.0;
          }
        }

        else if (v134 == 4)
        {
          if ((v134 & 0xFF0000u) <= 0xA0000)
          {
            v144 = 129;
          }

          else
          {
            v144 = 81;
          }

          v132 = v144;
        }

        else if (v134 == 5 || v134 == 6)
        {
          v132 = 129.0;
        }
      }

      GM_Set_MSec_TOT_SSS(v280 + 56 * v130, v132, 604800.0, *(__dst + 842));
      v110 = __dst;
      v146 = *(__dst + 1682);
      if (!v146)
      {
        if (v145 >= 0.0)
        {
          if (v145 >= 604800.0)
          {
            v145 = v145 + -604800.0;
          }
        }

        else
        {
          v145 = v145 + 604800.0;
        }
      }

      v147 = (v145 - *(__dst + 842)) * 1000.0;
      v148 = -0.5;
      if (v147 > 0.0)
      {
        v148 = 0.5;
      }

      v149 = v147 + v148;
      if (v149 <= 2147483650.0)
      {
        if (v149 >= -2147483650.0)
        {
          v150 = v149;
        }

        else
        {
          v150 = 0x80000000;
        }
      }

      else
      {
        v150 = 0x7FFFFFFF;
      }

      v306 = v150;
      *(__dst + 842) = v145;
      if (v150 >= 0)
      {
        v151 = v150;
      }

      else
      {
        v151 = -v150;
      }

      v153 = v146 > 1 && v151 > 0xEA60;
      if (v153)
      {
        v154 = 0;
        *(__dst + 1686) = 0;
        do
        {
          v155 = (v281 + v154);
          *(v155 + 29) = 0uLL;
          *v155 = 0uLL;
          v155[1] = 0uLL;
          v154 += 48;
        }

        while (v154 != 2304);
        for (j = 60; j != 3996; j += 48)
        {
          v157 = (a7 + j);
          *(v157 + 29) = 0uLL;
          *v157 = 0uLL;
          v157[1] = 0uLL;
        }

        v133 = 0;
      }

      v158 = g_Enable_Event_Log;
      if (g_Enable_Event_Log >= 3u)
      {
        EvLog_v("GLO_TIM: SV_Gen_Meas GPS set %g   TOW_adjust %d ms", *(__dst + 842), v150);
        v110 = __dst;
        v158 = g_Enable_Event_Log;
      }

      v159 = v307;
      if (v158 >= 2 && (v307 & 0x80000000) == 0)
      {
        v160 = &v110[36 * v307];
        if (*v160 == 4)
        {
          v161 = v160[2];
          if (v161 >= 0x1F)
          {
            EvLog_v("SV_Gen_Meas: Warning, BestASSS  BDS SV%d", v161);
            v110 = __dst;
            v159 = v307;
          }
        }
      }

      if (v133)
      {
        v162 = 8;
      }

      else
      {
        v162 = 9;
      }

      if (*(v281 + 48 * v159 + 4))
      {
        v163 = 9;
      }

      else
      {
        v163 = v162;
      }

      *(v110 + 1682) = v163;
      if (v110[36 * v159] == 2)
      {
        *&__dsta = 0;
        API_Get_UTC_Cor(1, &__dsta);
        v110 = __dst;
        v164 = -86400.0;
        v165 = *(__dst + 842) + floor(*(__dst + 842) / 86400.0) * -86400.0 + 10800.0 - *&__dsta;
        *(__dst + 845) = v165;
        if (v165 >= 86400.0 || (v164 = 86400.0, v165 < 0.0))
        {
          v165 = v165 + v164;
          *(__dst + 845) = v165;
        }

        v163 = *(__dst + 1682);
        if (*(__dst + 1686) < v163 && (*(a8 + 8444) - 2) <= 4)
        {
          *(__dst + 1686) = v163;
        }

        if (g_Enable_Event_Log >= 3u)
        {
          EvLog_v("GLO_TIM: SV_Gen_Meas GPS-Glon set %g", v165);
          v110 = __dst;
          v163 = *(__dst + 1682);
        }
      }

      if (v163 == 9)
      {
        if (v307 < 0 || HIDWORD(v307) != v307)
        {
          a1[3] = 3;
          v127[2680] = 0;
          v276 = 1;
          goto LABEL_274;
        }

        a1[3] = 5;
        v124 = 1;
        v127[2680] = 1;
        v276 = 2;
      }

      else
      {
        if (!v153)
        {
          GM_Prop_AAD((*(v110 + 1692) + v150), 48, v281);
          v110 = __dst;
          v306 = 0;
        }

LABEL_274:
        v124 = 1;
      }
    }
  }

  if (v127[2636] == 1)
  {
    v166 = *(v110 + 1682);
    if (v166 >= 1 && v166 >= *(v110 + 1686))
    {
      LODWORD(v320[0]) = 0;
      LODWORD(v303) = 0;
      *&__dsta = 0;
      API_Get_UTC_Cor(1, &__dsta);
      GPS_To_Glon_Time(0, *(__dst + 3367), *(__dst + 842), *&__dsta, &v303, v320, __dst + 845);
      v110 = __dst;
      v167 = LOWORD(v320[0]);
      if (v127[2654] != 1 || LODWORD(v320[0]) != *(__dst + 3376))
      {
        if (g_Enable_Event_Log >= 3u)
        {
          EvLog_v("SV_Gen_Meas: GPS_GLO %d %d ", *(__dst + 3376), LODWORD(v320[0]));
          v110 = __dst;
        }

        *(v110 + 3374) = LOWORD(v303);
        *(v110 + 3376) = v167;
        v127[2654] = 1;
      }

      v168 = *(v110 + 1682);
      if (*(v110 + 1686) < v168 && (*(a8 + 8444) - 2) <= 4)
      {
        *(v110 + 1686) = v168;
      }
    }
  }

  *(v128 + 47) = 0;
  v169 = *a1;
  v305 = 0;
  v304 = 0;
  *v302 = 0;
  v303 = 0.0;
  Pos_LLH = Core_Get_Pos_LLH(*(v110 + 1692), 150000, 0, &v304, &__dsta, v320, &v303, &v305 + 1, &v305, v302, &v302[4]);
  if ((*&v302[4] - 3) < 2)
  {
    v172 = Pos_LLH;
  }

  else
  {
    v172 = 0;
  }

  v277 = v172;
  v271 = Best_NSSS;
  v272 = v124;
  if (*(a7 + 48) || *(v128 + 52) > 4u)
  {
    v297 = 0;
    v176 = __dst;
  }

  else
  {
    v173 = 0;
    v318 = 0u;
    v319 = 0u;
    v316 = 0u;
    v317 = 0u;
    v314 = 0u;
    v315 = 0u;
    v312 = 0u;
    v313 = 0u;
    v310 = 0u;
    v311 = 0u;
    v174 = __dst;
    __dsta = 0u;
    v309 = 0u;
    do
    {
      if (Is_Legal(*v174))
      {
        *(&__dsta + v173) = GM_Gen_SV_Meas_QI(v174);
      }

      v173 += 4;
      v174 += 9;
    }

    while (v173 != 192);
    p_dsta = &__dsta;
    GM_Reject_Rep_SV(__dst, 0x30u, &__dsta);
    v176 = __dst;
    v177 = 0;
    v178 = 0;
    v179 = 0;
    v180 = 0;
    LOWORD(v181) = *(a7 + 26);
    if ((v181 * 1.57542) <= 50)
    {
      v182 = 50;
    }

    else
    {
      v182 = (v181 * 1.57542);
    }

    v183 = 435;
    v184 = 4446;
    v185 = 4428;
    do
    {
      if (Is_Legal(*&v176[v177]) && *p_dsta >= 10)
      {
        v176 = __dst;
        if (*&__dst[v177 + 12] >= 0x3E8u && __dst[v185] == 1)
        {
          v186 = *&__dst[4 * v183] / 256 - *&__dst[v184];
          if (v186 < 0)
          {
            v186 = *&__dst[v184] - *&__dst[4 * v183] / 256;
          }

          if (v186 > v182)
          {
            ++v180;
          }

          ++v179;
          if (__dst[v177 + 4] > v178)
          {
            v178 = __dst[v177 + 4];
          }
        }
      }

      else
      {
        v176 = __dst;
      }

      v183 += 14;
      v184 += 48;
      v185 += 48;
      ++p_dsta;
      v177 += 36;
    }

    while (v183 != 1107);
    v297 = v180 > 0;
    if (v180 <= 0)
    {
      if (v179 < 1)
      {
        goto LABEL_458;
      }

      v320[0] = 0.0;
      v303 = 0.0;
      if (Core_Get_Clk_Drift(*(v176 + 1692), 300, &v304, v320, &v303, &v302[4]))
      {
        v265 = 0x43ABC16D674EC800;
        v266 = (v320[0] * 1000000000.0) - *(a7 + 24);
        LOWORD(v265) = *(a7 + 26);
        v171 = v265 * 0.333333333;
        v267 = sqrt(v303 * 1.0e18 + v171 * v171);
        if (v266 < 0)
        {
          v266 = *(a7 + 24) - (v320[0] * 1000000000.0);
        }

        v176 = __dst;
        if (v266 <= 3 * v267)
        {
          goto LABEL_458;
        }

LABEL_455:
        *(p_NA + 8) = 0;
        v268 = *(a6 + 248);
        if (*(a6 + 248))
        {
          *(a6 + 992) = 0;
          *(a6 + 1000) = v268 * 0.000000001;
        }

        EvCrt_v("SV_Gen_Meas: eFA GOH Triggered: #Dopp %d #DoppDiscrp %d loud_SNR %d oscFrqUnc %d ", v179, v180, v178, v182);
      }

      else
      {
        v297 = 0;
      }

      v176 = __dst;
    }

    else
    {
      if (v178 > 0x18u || v180 != 1)
      {
        goto LABEL_455;
      }

LABEL_458:
      v297 = 0;
    }

    v122 = a1;
  }

  v187 = 0;
  v188 = 0;
  v189 = 0;
  v279 = 0;
  v289 = v298 - v169;
  v309 = 0u;
  v310 = 0u;
  v270 = a11 + 416;
  v190 = v122 + 52;
  __dsta = 0u;
  v191 = 6992;
  v192 = 6796;
  v193 = 4424;
  v194 = 4446;
  v195 = 4428;
  v299 = v190;
  while (2)
  {
    v196 = v321[v189];
    if (v196)
    {
      v197 = 8;
      goto LABEL_334;
    }

    v198 = v321[v189];
    v197 = GM_Gen_SV_Meas_QI(&v176[v187]);
    v199 = v297;
    if (v197 < 0xB)
    {
      v199 = 1;
    }

    if (v199)
    {
LABEL_323:
      v176 = __dst;
      v190 = v299;
      v196 = v198;
      goto LABEL_334;
    }

    v190 = v299;
    v196 = v198;
    if (*(a6 + 52) > 4u)
    {
      v176 = __dst;
      goto LABEL_334;
    }

    v176 = __dst;
    if (__dst[v195] == 1 && ((v277 & 1) != 0 || *a6 == 1))
    {
      v200 = *&__dst[v188 + 1740] / 256;
      v201 = *&__dst[v194 - 4];
      v202 = 3 * v201;
      if (v201 < 0xB8)
      {
        v202 = 550;
      }

      if (*(a6 + 1132) == 1 && (v203 = *&__dst[v188 + 1744]) != 0)
      {
        v204 = *&__dst[v188 + 1744] / 256;
        v205 = v200 - v204;
      }

      else
      {
        v204 = 0;
        v205 = 0;
      }

      v215 = v205 >= 0 ? v205 : -v205;
      if (v215 > v202 || (v217 = *&__dst[v194], v200 > (v202 + v217)) || v200 < (v217 - v202))
      {
        v284 = v205;
        v287 = v204;
        v216 = v202;
        v294 = *&__dst[v188 + 1740] / 256;
        if (Is_Legal(*&__dst[v187]))
        {
          *(a11 + v189 + 365) |= 1u;
          *(v270 + 4 * v189) = *(__dst + 1692);
          EvCrt_v("ChanReset %d : SVGM %d %d   Dopp %d %d %d AA %d %d", v189, __dst[v187 + 2], __dst[v187], v294, v287, v284, *&__dst[v194], v216);
        }

        v197 = 4;
        goto LABEL_323;
      }
    }

LABEL_334:
    if (v197 >= 4 && v176[v187] == 6)
    {
      ++*(a6 + 47);
    }

    v206 = &v176[v187];
    v207 = *&v176[v187 + 8] & 0x308;
    v208 = v207 == 776;
    *(&__dsta + v189) = v207 == 776;
    v320[0] = 0.0;
    v209 = &v176[v191];
    *(v209 + 48) = vcvtd_n_f64_s32(*&v176[v188 + 1740], 8uLL);
    *(v209 + 96) = vcvtd_n_f64_s32(*&v176[v188 + 1744], 8uLL);
    v210 = v176[v187];
    v211 = 0.0;
    if (v210 <= 6 && v176[v187] && v210 != 6)
    {
      if (v197 < 0xB)
      {
        goto LABEL_410;
      }

      v286 = &v176[v187];
      v293 = v196;
      v212 = &v176[v188 + 1728];
      v213 = *(v176 + 842);
      if (v207 == 776)
      {
        v283 = 1;
      }

      else
      {
        v274 = &v176[v188 + 1728];
        if (GM_Aid_NSSS_Meas(&v176[v193], 3u, v212) & 1) != 0 || (v271 & 0x80000000) == 0 && a1[3] >= 1 && (GM_Aid_NSSS_Meas(&__dst[v193], 0, v274))
        {
          v283 = 1;
          v176 = __dst;
        }

        else
        {
          v206 = v286;
          v176 = __dst;
          if ((*(v286 + 4) & 0x308) != 0x208)
          {
            v208 = 0;
            LOWORD(v214) = *&__dst[v188 + 1736];
            v229 = (1023 * (*&__dst[v188 + 1732] / 1023) - *&__dst[v188 + 1732] + 1023) + v214 * -0.0000152587891;
            v171 = 293.052256;
            v211 = v229 * 293.052256;
            v320[0] = v229 * 293.052256;
            *(&__dsta + v189) = 0;
            v190 = v299;
            v196 = v293;
            goto LABEL_410;
          }

          v283 = 0;
        }

        v212 = v274;
      }

      v218 = Comp_Sig_TOT(*v212, *&v176[v188 + 1732], *&v176[v188 + 1736], v213, 604800.0);
      v208 = v283;
      *(&__dsta + v189) = v283;
      v171 = -1.0;
      if (v218 < -1.0)
      {
        v176 = __dst;
        v190 = v299;
        v196 = v293;
        v206 = v286;
        goto LABEL_410;
      }

      v176 = __dst;
      v171 = *(__dst + 842);
      v211 = (v171 - v218) * 299792458.0;
      v320[0] = v211;
      if (fabs(v211) >= 2130706430.0)
      {
        v219 = 2130706432;
      }

      else
      {
        v219 = v211;
      }

      v220 = __dst[v187];
      v190 = v299;
      v196 = v293;
      if (v220 == 5)
      {
        v221 = 60000000;
        v206 = v286;
        if (!v283)
        {
          goto LABEL_390;
        }
      }

      else
      {
        v206 = v286;
        if (v220 != 4 || (v221 = 50000000, __dst[v187 + 2] >= 0xBu))
        {
          v221 = 40000000;
        }

        if (!v283)
        {
          goto LABEL_390;
        }
      }

      if (v276 && (v290[2636] & 1) != 0 && (v219 < 5000000 || v219 > v221))
      {
        ++v279;
        v320[0] = 0.0;
        v223 = v307;
        v211 = 0.0;
        if ((v307 & 0x80000000) != 0 || *(v281 + 48 * v307 + 4) != 1)
        {
          v197 = 6;
        }

        else
        {
          v275 = v219;
          if (Is_Legal(*&__dst[v187]))
          {
            *(a11 + v189 + 365) |= 1u;
            *(v270 + 4 * v189) = *(__dst + 1692);
            v269 = v223;
            v197 = 6;
            EvCrt_v("ChanReset %d : SVGM %d %d   PR %d %d %d %d  iBest %d %d %d", v189, __dst[v187 + 2], __dst[v187], 6, v283, v276, v275, HIDWORD(v307), v269, v271);
            v219 = v275;
            v208 = v283;
            v206 = v286;
            v176 = __dst;
            v190 = v299;
            v196 = v293;
          }

          else
          {
            v197 = 6;
            v176 = __dst;
            v190 = v299;
            v196 = v293;
            v208 = v283;
            v206 = v286;
            v219 = v275;
          }
        }

        goto LABEL_395;
      }

LABEL_390:
      if (v219 < 5000000 || v219 > v221)
      {
        ++v279;
        v320[0] = 0.0;
        v197 = 7;
        v211 = 0.0;
      }

LABEL_395:
      v225 = v176[v187];
      if (v225 == 5)
      {
        v226 = 20000000;
      }

      else
      {
        if (v225 != 4 || v176[v187 + 2] >= 0xBu)
        {
          v227 = 27000000;
          v226 = 18000000;
          goto LABEL_402;
        }

        v226 = 30000000;
      }

      v227 = 50000000;
LABEL_402:
      if (v290[2636] == 1 && *(v176 + 1682) >= 9 && (v219 < v226 || v219 > v227))
      {
        *(a1 + 4) = 1;
      }

LABEL_410:
      if (v289 > *&v176[v187 + 14])
      {
        *(v190 + v189) = 0;
      }

      if (v197 < 0xF)
      {
        if (v197 < 0xB)
        {
          goto LABEL_340;
        }

        if (!v208)
        {
          goto LABEL_424;
        }
      }

      else
      {
        LOWORD(v171) = *&v176[v188 + 1748];
        v230 = *&v176[v188 + 1752] + *&v171 * 0.0000152587891;
        v231 = &a1[v189];
        if (*(v190 + v189) == 1)
        {
          v232 = v231[4];
        }

        else
        {
          v236 = v211 + 8993773.74;
          if (v211 > 329771.704)
          {
            v236 = v211;
          }

          v232 = -(v230 - v236 * 5.25503547);
          v231[4] = v232;
          *(v190 + v189) = 1;
        }

        v171 = v232;
        *&v176[v191 + 1152] = v230 + v232;
        if (!v208)
        {
LABEL_424:
          v235 = 10;
          goto LABEL_425;
        }
      }

      v303 = 0.0;
      v295 = v196;
      v233 = v206;
      v234 = R8_EQ(v320, &v303);
      v206 = v233;
      v196 = v295;
      v190 = v299;
      v176 = __dst;
      if (v234)
      {
        v235 = 8;
      }

      else
      {
        v235 = v197;
      }

LABEL_425:
      *&v176[v192] = v235;
      *&v176[v191] = v211;
      if (v196)
      {
        goto LABEL_343;
      }

      goto LABEL_344;
    }

LABEL_340:
    *&v176[v192] = v197;
    *&v176[v191] = v211;
    if (v197 <= 1)
    {
      *(v209 + 48) = 0;
      *(v209 + 96) = 0;
    }

    if (v196)
    {
LABEL_343:
      *(v206 + 4) |= 8u;
    }

LABEL_344:
    ++v189;
    v191 += 8;
    v192 += 4;
    v193 += 48;
    v194 += 48;
    v195 += 48;
    v188 += 56;
    v187 += 36;
    if (v189 != 48)
    {
      continue;
    }

    break;
  }

  GM_Reject_Rep_SV(v176, 0x30u, v273);
  GM_Conv_Lock_Units(48, __dst, v280);
  GM_Cross_Check_Meas_Aiding(__dst);
  v237 = __dst;
  v238 = 1746;
  v239 = 51;
  v240 = v272;
  do
  {
    if (*&__dst[4 * v238] > 14)
    {
      if ((*(&__dsta + v238 - 1699) & 1) == 0)
      {
        a1[v239] = 0;
        *(a1 + v238 - 1491) = 0;
        *&__dst[4 * v238] = 15;
      }
    }

    else
    {
      a1[v239] = 0;
      *(a1 + v238 - 1491) = 0;
    }

    --v238;
    --v239;
  }

  while (v238 != 1698);
  v241 = *(__dst + 1682);
  if (v279 >= 3)
  {
    if (v241 >= 4)
    {
      v241 = 3;
      *(__dst + 1682) = 3;
      v240 = 1;
    }

    a1[3] = 0;
    *(a1 + 4) = 1;
  }

  v242 = *(__dst + 846);
  *(a9 + 8) = v242;
  v243 = *(__dst + 3367);
  *(a9 + 16) = v243;
  v244 = *(__dst + 842);
  *(a9 + 24) = v244;
  v245 = *(__dst + 848);
  *(a9 + 32) = v245;
  *a9 = v241;
  v246 = v290[2680];
  *(a9 + 4) = v246;
  v247 = v290[2636];
  *(a9 + 5) = v247;
  *(a9 + 60) = *(__dst + 1686);
  *(a9 + 64) = v290[2654];
  *(a9 + 66) = *(__dst + 3374);
  *(a9 + 68) = *(__dst + 3376);
  *(a9 + 72) = *(__dst + 845);
  if (v240 && v241 >= 7)
  {
    Core_Save_ApxTime(v247, v241, v243, SHIDWORD(v242), v244);
    v237 = __dst;
    v242 = *(__dst + 846);
    v241 = *(__dst + 1682);
    LOBYTE(v247) = v290[2636];
    v243 = *(__dst + 3367);
    v246 = v290[2680];
    v244 = *(__dst + 842);
    v245 = *(__dst + 848);
  }

  *a10 = v242;
  *(a10 + 8) = v241;
  *(a10 + 14) = v247;
  *(a10 + 16) = v243;
  *(a10 + 12) = v246;
  *(a10 + 24) = v244;
  *(a10 + 32) = v245;
  if (v306)
  {
    *(a10 + 40) += v306;
  }

  if (*(a1 + 5) == 1)
  {
    *(a10 + 44) = *(a1 + 3);
  }

  v248 = 0;
  *(a10 + 13) = v276;
  *(a10 + 48) = *(v237 + 1686);
  *(a10 + 52) = v290[2654];
  *(a10 + 54) = *(v237 + 3374);
  *(a10 + 56) = *(v237 + 3376);
  *(a10 + 64) = *(v237 + 845);
  *(a10 + 72) = *(v237 + 1104);
  v249 = v237 + 10;
  v250 = (v237 + 1769);
  v251 = 3008;
  do
  {
    *(a10 + 4 * v248 + 76) = *(v249 - 10);
    v252 = (a10 + v248);
    v252[604] = *(v249 - 6);
    v252[652] = v249[8];
    v252[700] = *(v249 - 5);
    v252[748] = v249[9];
    v253 = (a10 + 2 * v248);
    v253[518] = *(v249 + 2);
    v253[422] = *v249;
    v253[470] = *(v249 + 1);
    v252[2864] = *(v249 - 3);
    v252[268] = *(v249 - 4);
    v253[158] = *(v249 - 1);
    v252[796] = *(v250 - 3);
    v253[566] = *(v250 - 7);
    v252[2912] = *(v250 - 2);
    v252[2960] = *(v250 - 1);
    *(a10 + v251) = *v250;
    if (*(v250 - 5))
    {
      *(a10 + v251 - 240) = *(v250 - 5);
    }

    v249 += 36;
    v250 += 56;
    ++v248;
    v251 += 2;
  }

  while (v248 != 48);
  v254 = *v273;
  v255 = *(v273 + 1);
  v256 = *(v273 + 3);
  *(a10 + 444) = *(v273 + 2);
  *(a10 + 460) = v256;
  *(a10 + 412) = v254;
  *(a10 + 428) = v255;
  v257 = *(v273 + 4);
  v258 = *(v273 + 5);
  v259 = *(v273 + 7);
  *(a10 + 508) = *(v273 + 6);
  *(a10 + 524) = v259;
  *(a10 + 476) = v257;
  *(a10 + 492) = v258;
  v260 = *(v273 + 8);
  v261 = *(v273 + 9);
  v262 = *(v273 + 11);
  *(a10 + 572) = *(v273 + 10);
  *(a10 + 588) = v262;
  *(a10 + 540) = v260;
  *(a10 + 556) = v261;
  v263 = v237;
  memcpy((a10 + 1232), v237 + 6992, 0x180uLL);
  memcpy((a10 + 1616), v263 + 7376, 0x180uLL);
  memcpy((a10 + 2000), v263 + 7760, 0x180uLL);
  result = memcpy((a10 + 2384), v263 + 8144, 0x180uLL);
  *a1 = *(v263 + 1692);
  return result;
}

uint64_t GM_CrossCorr_Protection(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 0;
  if (a1 > 3)
  {
    if (a1 == 6)
    {
      v7 = 39;
    }

    else
    {
      if (a1 == 5)
      {
        return result;
      }

      v7 = 5;
    }

    v8 = (Num_Prn[a1 - 1] + a5 + 3996);
    while (1)
    {
      v10 = *v8++;
      v9 = v10;
      if ((v10 & 0x8000000000000000) == 0)
      {
        v11 = (*(a5 + 60 + 48 * v9 + 22) - *(a4 + 12) / 256) % 1000;
        v12 = v11 + 1000;
        if (v11 >= -500)
        {
          v12 = v11;
        }

        v13 = v11 <= 499 ? v12 : v11 - 1000;
        if (v13 < 0)
        {
          v13 = -v13;
        }

        if (v13 < 0xF || v13 <= 0x18 && *(a3 + 4) < a2)
        {
          break;
        }
      }

      if (!--v7)
      {
        return 0;
      }
    }

    *(a3 + 8) &= ~8u;
    return 1;
  }

  return result;
}

uint64_t Gnm34_00PrintTaTraceCfg(const char *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v17 = 0;
  v16 = 0x332E352E322E76;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TA TRACECFG:%s Version,%s\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm34_00PrintTaTraceCfg", a1, &v16);
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TA TRACECFG:CpCpuSys Sev,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm34_00PrintTaTraceCfg", dword_2A1920C34);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TA TRACECFG:CpCpuHostIf Sev,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm34_00PrintTaTraceCfg", BYTE1(dword_2A1920C34));
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TA TRACECFG:CpCpuDspi Sev,%hhu\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm34_00PrintTaTraceCfg", BYTE2(dword_2A1920C34));
    LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TA TRACECFG:MEExDLog Sev,%hhu\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm34_00PrintTaTraceCfg", HIBYTE(dword_2A1920C34));
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TA TRACECFG:MECpuInfra Sev,%hhu\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 73, "Gnm34_00PrintTaTraceCfg", qword_2A1920C38);
    return LbsOsaTrace_WriteLog(0xBu, __str, v14, 4, 1);
  }

  return result;
}

uint64_t Gnm34_12UpdateTaTraceCfg(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_SET_TA_TRACE_CONFIG\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm34_12UpdateTaTraceCfg");
      LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
    }

    v4 = *(a1 + 12);
    qword_2A1920C38 = *(a1 + 28);
    g_TaLogConfig = v4;
    Gnm34_00PrintTaTraceCfg("UPDATED");
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm34_12UpdateTaTraceCfg", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v6, 0, 1);
  }

  return 0;
}

uint64_t Gnm34_15GetTaTraceCfg(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      return dword_2A1920C34;
    }

    if (a1 == 2)
    {
      return BYTE1(dword_2A1920C34);
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        return BYTE2(dword_2A1920C34);
      case 4:
        return HIBYTE(dword_2A1920C34);
      case 5:
        return qword_2A1920C38;
    }
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Module,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm34_15GetTaTraceCfg", 770, a1);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 2, 1);
    return 0;
  }

  return result;
}

uint64_t GnssDbgMgr_DebugClassInd(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2 || *(v2 + 5) > 0x7F7u)
  {
    return 0;
  }

  if ((g_CurrentPlatform - 1) >= 4)
  {
    if (!g_CurrentPlatform)
    {
      v9 = *(a1 + 24);
      *(v2 + v9 - 1) = 0;
      v10 = *(v2 + 3) - 66;
      if (v10 <= 0x18)
      {
        if (((1 << v10) & 0x1004042) != 0)
        {
          if ((v9 - 9) >= 0x11 && *(v2 + 8) == 228)
          {
            v11 = *(v2 + 9);
            *(v2 + 8 + (*(v2 + 11) + 2) + 3) = 0;
            v12 = v11 > 3 ? 4 : dword_299728D40[v11];
            if (LbsOsaTrace_IsLoggingAllowed(5u, v12, 1, 0))
            {
              bzero(__str, 0x410uLL);
              v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v14 = (v2 + 13);
              if (v11 > 3)
              {
                v15 = 4;
              }

              else
              {
                v15 = dword_299728D40[v11];
              }

              SeverityString = LbsOsaTrace_GetSeverityString(v15);
              v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s\n", v13, "GZR", SeverityString, v14);
              LbsOsaTrace_WriteLog(5u, __str, v17, v15, 1);
            }
          }

          goto LABEL_23;
        }

        if (*(v2 + 3) == 66)
        {
          v6 = v2 + 8;
          v7 = (v9 - 9);
          v5 = 4;
          v8 = 227;
          goto LABEL_7;
        }
      }
    }
  }

  else
  {
    v3 = *(a1 + 24);
    *(v2 + v3 - 1) = 0;
    v4 = *(v2 + 3) - 65;
    if (v4 <= 3u)
    {
      v5 = dword_299728D50[(*(v2 + 3) - 65)];
      v6 = v2 + 8;
      v7 = (v3 + (0xFFF9FFFBFFF9FFFBLL >> (16 * (v4 & 0xFu))));
      v8 = (0xE4E4E3E3 >> (8 * (v4 & 0x1F)));
LABEL_7:
      GnssDbgMgr_HandleBinaryLogs(v6, v7, v5, v8);
    }
  }

LABEL_23:
  v18 = *(a1 + 16);
  if (v18)
  {
    free(v18);
  }

  *(a1 + 16) = 0;
  return 0;
}

uint64_t GnssDbgMgr_SetPlatformHandler(uint64_t a1)
{
  if (a1)
  {
    g_CurrentPlatform = *(a1 + 12);
  }

  return 0;
}

uint64_t GnssDbgMgr_HandleBinaryLogs(uint64_t result, unsigned int a2, uint64_t a3, int a4)
{
  v53 = *MEMORY[0x29EDCA608];
  v42 = result;
  if (result)
  {
    v4 = a2;
    if (a2 >= 8)
    {
      v7 = 0;
      v39 = *(MEMORY[0x29EDC9528] + 64);
      v40 = *MEMORY[0x29EDC9528];
      v38 = *(MEMORY[0x29EDC9528] + 72);
      while (1)
      {
        v8 = (v42 + v7);
        if (*v8 != a4)
        {
          goto LABEL_9;
        }

        v9 = v8[3];
        LODWORD(v10) = v4;
        if (v9 + 6 <= v4)
        {
          break;
        }

LABEL_10:
        v4 -= v10;
        v7 += v10;
        if (v4 <= 7u)
        {
          return result;
        }
      }

      if (v8[v9 + 5] - 48 <= 0x4A)
      {
        v11 = *(v8 + 1);
        if (a4 == 227)
        {
          v12 = dword_299728D60[gnssdbg_GetLogSeverityME(v11, g_CurrentPlatform) - 1];
        }

        else
        {
          v12 = 2 * gnssdbg_GetLogSeverityCP(v11, g_CurrentPlatform);
        }

        v41 = v12;
        v10 = (v9 + 7);
        if (LbsOsaTrace_IsLoggingAllowed(a3, v12, 0, 0))
        {
          result = LbsOsaTrace_PrintBinaryBuf(a3, v41, 0, v8, (v9 + 7));
        }

        else
        {
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v45);
          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "DisAllow Severity TAGID ", 24);
          v14 = *v13;
          *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 8;
          *(v13 + *(v14 - 24) + 8) |= 0x4000u;
          __str[0] = 48;
          v15 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, __str);
          v16 = a3;
          *(v15 + *(*v15 - 24) + 24) = 4;
          v17 = MEMORY[0x29C29EA10]();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " ", 1);
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = *&g_MacClockTicksToMsRelation;
          v20 = LbsOsaTrace_ModuleString(a3);
          std::stringbuf::str();
          v21 = (v19 * v18);
          SeverityString = LbsOsaTrace_GetSeverityString(v41);
          v23 = __p;
          if (v44 < 0)
          {
            v23 = __p[0];
          }

          v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s\n", v21, v20, SeverityString, v23);
          if (v44 < 0)
          {
            operator delete(__p[0]);
          }

          LbsOsaTrace_WriteLog(v16, __str, v24, v41, 1);
          v45[0] = v40;
          *(v45 + *(v40 - 24)) = v39;
          v46 = v38;
          v47 = MEMORY[0x29EDC9570] + 16;
          if (v50 < 0)
          {
            operator delete(v49);
          }

          v47 = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(v48);
          std::iostream::~basic_iostream();
          result = MEMORY[0x29C29EAA0](v51);
          a3 = v16;
        }

        if ((v41 & 5) == 0)
        {
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v45);
          v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "TAGID ", 6);
          v26 = *v25;
          *(v25 + *(*v25 - 24) + 8) = *(v25 + *(*v25 - 24) + 8) & 0xFFFFFFB5 | 8;
          *(v25 + *(v26 - 24) + 8) |= 0x4000u;
          __str[0] = 48;
          v27 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, __str);
          *(v27 + *(*v27 - 24) + 24) = 4;
          v28 = MEMORY[0x29C29EA10]();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " ", 1);
          if (v10)
          {
            v29 = v10;
            do
            {
              *(&v48[1].__locale_ + *(v46 - 24)) = 2;
              v30 = *v8++;
              MEMORY[0x29C29E9F0](&v46, v30);
              --v29;
            }

            while (v29);
          }

          if (LbsOsaTrace_IsLoggingAllowed(a3, v41, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v31 = mach_continuous_time();
            v32 = *&g_MacClockTicksToMsRelation;
            v33 = LbsOsaTrace_ModuleString(a3);
            std::stringbuf::str();
            v34 = (v32 * v31);
            v35 = LbsOsaTrace_GetSeverityString(v41);
            v36 = __p;
            if (v44 < 0)
            {
              v36 = __p[0];
            }

            v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s\n", v34, v33, v35, v36);
            if (v44 < 0)
            {
              operator delete(__p[0]);
            }

            LbsOsaTrace_WriteLog(a3, __str, v37, v41, 1);
          }

          v45[0] = v40;
          *(v45 + *(v40 - 24)) = v39;
          v46 = v38;
          v47 = MEMORY[0x29EDC9570] + 16;
          if (v50 < 0)
          {
            operator delete(v49);
          }

          v47 = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(v48);
          std::iostream::~basic_iostream();
          result = MEMORY[0x29C29EAA0](v51);
        }

        goto LABEL_10;
      }

LABEL_9:
      LODWORD(v10) = 1;
      goto LABEL_10;
    }
  }

  return result;
}

void sub_29951FC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void GnssDbgMgr_DestMissingHandler(uint64_t a1)
{
  if (*(a1 + 4) == 8650752)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      free(v2);
    }

    *(a1 + 16) = 0;
  }
}

void GnssDbgMgr_SetPlatform(int a1)
{
  v2 = gnssOsa_Calloc("GnssDbgMgr_SetPlatform", 402, 1, 0x10uLL);
  if (v2)
  {
    v2[3] = a1;

    AgpsSendFsmMsg(132, 132, 8651008, v2);
  }
}

void GnssDbgMgr_WriteLog(size_t a1, unsigned __int8 *a2)
{
  if (a2)
  {
    if (a1 >= 0xA)
    {
      v4 = gnssOsa_Calloc("GnssDbgMgr_WriteLog", 440, 1, 0x20uLL);
      if (v4)
      {
        v5 = v4;
        v6 = gnssOsa_Calloc("GnssDbgMgr_WriteLog", 447, 1, a1);
        v5[2] = v6;
        if (v6)
        {
          *(v5 + 12) = a1;
          memcpy_s("GnssDbgMgr_WriteLog", 457, v6, a1, a2, a1);

          AgpsSendFsmMsg(132, 132, 8650752, v5);
        }

        else
        {

          free(v5);
        }
      }
    }
  }
}

void *gnss::GnssAdaptDevice::getHalExtensions(gnss::GnssAdaptDevice *this)
{
  v1 = *(this + 5);
  {
    gnssOsa_FlushLog();
    __assert_rtn("getHalExtensions", "gaGnssAdaptDevice.h", 341, "false && Failed to dynamic cast HalExtensions");
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDeviceC2ENSt3__110unique_ptrIN7GnssHal4GpioENS1_14default_deleteIS4_EEEENS2_INS3_4CommENS5_IS8_EEEENS2_INS3_6LoggerENS5_ISB_EEEENS2_INS3_9NvStorageENS5_ISE_EEEENS2_INS3_10ExtensionsENS5_ISH_EEEENS2_INS_9Emergency4Supl17ConnectionManagerENS5_ISM_EEEENS1_8functionIFvNS_6ResultEEEE_block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  std::function<void ()(gnss::Result)>::operator=(v1 + 7, a1 + 40);
  v8 = 0;
  gnss::GnssAdaptDevice::Ga05_04GetPlatformType(v1, &v8);
  v2 = *(v1 + 1);
  if (v8 - 4 <= 0xFFFFFFFC && v2 == 0)
  {
    gnssOsa_FlushLog();
    __assert_rtn("GnssAdaptDevice_block_invoke_2", "ga00GnssDevice.cpp", 92, "false && Invalid GPIO pointer");
  }

  gp_Comm = gnss::GnssAdaptDevice::getComm(*(v1 + 2));
  gp_Gpio = v2;
  g_GpioNotifCB = 0;
  v4 = *(v1 + 3);
  gnss::GnssAdaptDevice::getLogger(v4);
  v9 = 0;
  gnss::GnssAdaptDevice::Ga05_04GetPlatformType(v1, &v9);
  v5 = v9 == 0;
  gp_Logger = v4;
  v6 = (*(*v4 + 56))(v4);
  gnssOsaSetConfigLogLevel(v6, v5);
  gp_NvStorage = gnss::GnssAdaptDevice::getNvStore(*(v1 + 4));

  return gnss::GnssAdaptDevice::Ga00_04HandleDeviceInit(v1, 0);
}

uint64_t gnss::GnssAdaptDevice::getComm(uint64_t this)
{
  if (!this)
  {
    gnssOsa_FlushLog();
    __assert_rtn("getComm", "gaGnssAdaptDevice.h", 335, "false && Comm null");
  }

  return this;
}

uint64_t gnss::GnssAdaptDevice::getLogger(uint64_t this)
{
  if (!this)
  {
    gnssOsa_FlushLog();
    __assert_rtn("getLogger", "gaGnssAdaptDevice.h", 336, "false && Logger null");
  }

  return this;
}

uint64_t gnss::GnssAdaptDevice::getNvStore(uint64_t this)
{
  if (!this)
  {
    gnssOsa_FlushLog();
    __assert_rtn("getNvStore", "gaGnssAdaptDevice.h", 337, "false && NvStorage null");
  }

  return this;
}

uint64_t gnss::GnssAdaptDevice::Ga00_04HandleDeviceInit(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  *(a1 + 88) = 0;
  if (!a2)
  {
    result = gnss::GnssAdaptDevice::Ga00_01GnssInit(a1);
    if (result)
    {
      return result;
    }

    goto LABEL_12;
  }

  *(a1 + 90) = 1;
  if ((gnss::GnssAdaptDevice::Ga00_02GnssDeInit(a1) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "Ga00_03GnssReset", 1296);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    goto LABEL_12;
  }

  v3 = *(a1 + 24);
  gnss::GnssAdaptDevice::getLogger(v3);
  __str[0] = 0;
  gnss::GnssAdaptDevice::Ga05_04GetPlatformType(a1, __str);
  v4 = __str[0] == 0;
  gp_Logger = v3;
  v5 = (*(*v3 + 56))(v3);
  gnssOsaSetConfigLogLevel(v5, v4);
  __str[0] = 0;
  gnss::GnssAdaptDevice::Ga05_04GetPlatformType(a1, __str);
  v6 = *(a1 + 8);
  if (__str[0] - 4 <= 0xFFFFFFFC && !v6)
  {
    gnssOsa_FlushLog();
    __assert_rtn("Ga00_03GnssReset", "ga00GnssDevice.cpp", 619, "false && Invalid GPIO pointer");
  }

  gp_Comm = gnss::GnssAdaptDevice::getComm(*(a1 + 16));
  gp_Gpio = v6;
  g_GpioNotifCB = 0;
  gp_NvStorage = gnss::GnssAdaptDevice::getNvStore(*(a1 + 32));
  result = gnss::GnssAdaptDevice::Ga00_01GnssInit(a1);
  if ((result & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "Ga00_03GnssReset", 1293);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }

LABEL_12:
    gnss::GnssAdaptDevice::Ga07_06SetDefaultState(a1, 0);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](__str, a1 + 56);
    v12 = *(a1 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice23Ga00_04HandleDeviceInitENS_17e_Ga_GnssInitTypeE_block_invoke;
    block[3] = &__block_descriptor_tmp_75;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, __str);
    dispatch_async(v12, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](__str);
  }

  return result;
}

void sub_2995206C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::~GnssAdaptDevice(gnss::GnssAdaptDevice *this)
{
  v18 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1F87F40;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 1u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Destructor\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 65, "~GnssAdaptDevice");
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 1, 1);
  }

  v4 = *(this + 36);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN4gnss15GnssAdaptDeviceD2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_5;
  block[4] = this;
  dispatch_sync(v4, block);
  dispatch_sync(g_GnssGlobalStaticQueue, &__block_literal_global);
  v5 = *(this + 37);
  if (v5)
  {
    dispatch_release(v5);
    *(this + 37) = 0;
  }

  if (g_GnssGlobalStaticQueue)
  {
    dispatch_release(g_GnssGlobalStaticQueue);
    g_GnssGlobalStaticQueue = 0;
  }

  v6 = *(this + 36);
  if (v6)
  {
    dispatch_release(v6);
    *(this + 36) = 0;
  }

  v7 = *(this + 38);
  if (v7)
  {
    dispatch_release(v7);
    *(this + 38) = 0;
  }

  std::__function::__value_func<void ()(gnss::Emergency::Supl::SessionStatus const&)>::~__value_func[abi:ne200100](this + 984);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>::~__value_func[abi:ne200100](this + 952);
  std::__function::__value_func<gnss::Result ()(void)>::~__value_func[abi:ne200100](this + 920);
  std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::~__value_func[abi:ne200100](this + 888);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](this + 856);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](this + 824);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](this + 792);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](this + 760);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](this + 728);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](this + 696);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](this + 664);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](this + 632);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](this + 600);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](this + 568);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](this + 536);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](this + 504);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](this + 472);
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](this + 440);
  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](this + 408);
  std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](this + 376);
  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](this + 344);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](this + 312);
  std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::destroy(this + 256, *(this + 33));
  std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::destroy(this + 232, *(this + 30));
  std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::destroy(this + 208, *(this + 27));
  std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::destroy(this + 184, *(this + 24));
  v8 = *(this + 19);
  if (v8)
  {
    *(this + 20) = v8;
    operator delete(v8);
  }

  v9 = *(this + 16);
  if (v9)
  {
    *(this + 17) = v9;
    operator delete(v9);
  }

  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](this + 56);
  v10 = *(this + 6);
  *(this + 6) = 0;
  if (v10)
  {
    (*(*v10 + 48))(v10);
  }

  v11 = *(this + 5);
  *(this + 5) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 4);
  *(this + 4) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 3);
  *(this + 3) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 2);
  *(this + 2) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 1);
  *(this + 1) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }
}

{

  gnss::GnssAdaptDevice::~GnssAdaptDevice(this);
}

{
  gnss::GnssAdaptDevice::~GnssAdaptDevice(this);

  JUMPOUT(0x29C29EB20);
}

void sub_299520AB0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDeviceD2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);

  return gnss::GnssAdaptDevice::Ga00_02GnssDeInit(v1);
}

uint64_t gnss::GnssAdaptDevice::Ga00_02GnssDeInit(dispatch_semaphore_s **this)
{
  v9 = *MEMORY[0x29EDCA608];
  gnss::GnssAdaptDevice::Ga01_06GnssReportPower(this, 0);
  gnss::GnssAdaptDevice::Ga00_08GnssStopPositioning(this, 1);
  GNS_EaInitialize(0);
  GNS_SenInitialize(0);
  GNS_EeInitialize(0);
  Gnm_RegisterApiStatusCb(0);
  Gnm_RegisterPowerReportCb(0);
  GNS_XOSetCallback(0);
  if (!gnssOsa_DeinitCountingSem(this + 129) && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StopSem\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 69, "Ga00_02GnssDeInit", 1540);
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 0, 1);
  }

  if (g_GnsInit == 1 && (g_GnsInit = 0, (AgpsShutdownAllFsm() & 1) != 0))
  {
    *__str = this + 35;
    v8 = 0;
    std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,8ul>>(__str, 8uLL);
    return 1;
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "Ga00_02GnssDeInit", 1296);
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
      return 0;
    }
  }

  return result;
}

void sub_299520D14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::reset(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a2 + 24))
  {
    v2 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice5resetENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_12;
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
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "reset", 513);
      return LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
    }
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice5resetENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v8[4] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  if (*(v1 + 90) == 1)
  {
    v2 = *(v1 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice5resetENSt3__18functionIFvNS_6ResultEEEE_block_invoke_2;
    block[3] = &__block_descriptor_tmp_8;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, a1 + 40);
    dispatch_async(v2, block);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
  }

  else
  {
    std::function<void ()(gnss::Result)>::operator=((v1 + 56), a1 + 40);
    gnss::GnssAdaptDevice::Ga00_04HandleDeviceInit(v1, 1);
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 1u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Reset Triggered\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 65, "reset_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v5, 1, 1);
    }
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice5resetENSt3__18functionIFvNS_6ResultEEEE_block_invoke_2(uint64_t a1)
{
  v1 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v1, 0);
}

uint64_t gnss::GnssAdaptDevice::clear(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a2 + 24))
  {
    v2 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice5clearENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_21;
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
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "clear", 513);
      return LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
    }
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice5clearENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "clear_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (*(v2 + 89) == 1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v25, "clear_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "clear_block_invoke", 2056);
        LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "clear_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
      }

      return result;
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, a1 + 40);
    v24[3] = 0;
    gnss::GnssAdaptDevice::Ga07_10AddRespHndlToGnmLUT(v2, 0x10u, v23);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v24);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
    v14 = Gnm_ClearGNSSCache(0x10000);
    if (v14)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ClearCache,%u\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 69, "clear_block_invoke", 257, v14);
        LbsOsaTrace_WriteLog(0x18u, __str, v16, 0, 1);
      }

      gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(v2, v14, 0x10u);
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
LABEL_26:
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "clear_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v22, 5, 1);
      }
    }

    else if (gnssOsa_SemWaitTimeOut(*(v2 + 1032), 0x1F4u))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ClearCache\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "clear_block_invoke", 257);
        LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
      }

      gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(v2, 11, 0x10u);
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: COLD\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 73, "clear_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v20, 4, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v26, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v26, "clear_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "clear_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "clear_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  return result;
}

void sub_2995219BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15 + 32);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::start(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x29EDCA608];
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
    v5 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice5startEyNSt3__18functionIFvNS_6ResultEEEES5__block_invoke;
    block[3] = &__block_descriptor_tmp_25_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a4);
    dispatch_async(v5, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
  if (result)
  {
LABEL_7:
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "start", 513);
    return LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice5startEyNSt3__18functionIFvNS_6ResultEEEES5__block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "start_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (*(v2 + 89) == 1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v30, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v30, "start_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v30);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "start_block_invoke", 2056);
        LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "start_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
      }

      return result;
    }

    v14 = *(v2 + 280);
    if ((v14 & 0x40) == 0)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v29, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 8, v29, "start_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v29);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid PVTM Config\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 87, "start_block_invoke", 258);
        LbsOsaTrace_WriteLog(0x18u, __str, v16, 2, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "start_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
      }

      return result;
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v27, a1 + 40);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v28, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_10AddRespHndlToGnmLUT(v2, 2u, v27);
    v19 = (2 * (v14 & 1)) | (4 * ((v14 & 0x3A) != 0));
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v28);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v27);
    *__str = 0;
    v33 = 1000;
    v35 = 0;
    v34 = 0;
    v20 = Gnm_RegisterPeriodicFix(0, 0, gnss::GnssAdaptDevice::Ga06_00GnssPeriodicFixCB, v19, __str);
    if (v20)
    {
      gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(v2, v20, 2u);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RegPeriodicFix,%u\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 69, "start_block_invoke", 257, v20);
        LbsOsaTrace_WriteLog(0x18u, __str, v22, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
LABEL_26:
        bzero(__str, 0x410uLL);
        v25 = mach_continuous_time();
        v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 68, "start_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v26, 5, 1);
      }
    }

    else
    {
      *(v2 + 89) = 1;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        snprintf(getVersionString::a_Version, 0x200uLL, "host,%s,FW,%s", "1e996c9bd release/1942", ga_HwVersion);
        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GNSS Version,%s ReportType,%u,Resp,%u\n", v23, "ADP", 77, "start_block_invoke", getVersionString::a_Version, v19, 0);
        LbsOsaTrace_WriteLog(0x18u, __str, v24, 3, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v31, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v31, "start_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v31);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "start_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "start_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  return result;
}

void sub_2995223CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15 + 32);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 72);

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

uint64_t gnss::GnssAdaptDevice::stop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!*(a2 + 24))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (!result)
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
    block[2] = ___ZN4gnss15GnssAdaptDevice4stopENSt3__18functionIFvNS_6ResultEEEES5__block_invoke;
    block[3] = &__block_descriptor_tmp_30_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a2);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
  if (result)
  {
LABEL_7:
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "stop", 513);
    return LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice4stopENSt3__18functionIFvNS_6ResultEEEES5__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "stop_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (*(v2 + 89))
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v19, a1 + 40);
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v20, a1 + 72);
      gnss::GnssAdaptDevice::Ga07_10AddRespHndlToGnmLUT(v2, 1u, v19);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v20);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v19);
      v5 = gnss::GnssAdaptDevice::Ga00_08GnssStopPositioning(v2, 0);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: StopResp,%u\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 77, "stop_block_invoke", v5);
        LbsOsaTrace_WriteLog(0x18u, __str, v7, 3, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "stop_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v22, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v22, "stop_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v22);
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v21, a1 + 72);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v21, "stop_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v21);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Stop Rcvd,session inactive\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 73, "stop_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v16, 4, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "stop_block_invoke");
        return LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v23, "stop_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "stop_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "stop_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
    }
  }

  return result;
}

void sub_299522C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::Ga00_08GnssStopPositioning(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(a1 + 89) != 1)
  {
    return 14;
  }

  if (a2 == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Internal Stop Request\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga00_08GnssStopPositioning");
      LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
    }

    atomic_store(1u, (a1 + 91));
  }

  v5 = Gnm_StopPosnReq(0);
  if (v5)
  {
    v6 = v5;
    gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(a1, v5, 1u);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StopPosReq,%u\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "Ga00_08GnssStopPositioning", 257, v6);
      LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Processed\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 73, "Ga00_08GnssStopPositioning");
      LbsOsaTrace_WriteLog(0x18u, __str, v10, 4, 1);
    }

    if (gnssOsa_SemWaitTimeOut(*(a1 + 1032), 0x1F4u))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StopReq\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "Ga00_08GnssStopPositioning", 257);
        LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
      }

      v6 = 11;
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 89) = 0;
  }

  return v6;
}

uint64_t gnss::GnssAdaptDevice::deleteGnssData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice14deleteGnssDataEyNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_50;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a3);
    v9[4] = a2;
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
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "deleteGnssData", 513);
      return LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice14deleteGnssDataEyNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "deleteGnssData_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if ((*(v2 + 88) & 1) == 0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v58, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v58, "deleteGnssData_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v58);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "deleteGnssData_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "deleteGnssData_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }

    return result;
  }

  v5 = *(a1 + 72);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Flags,%llu\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 77, "deleteGnssData_block_invoke", v5);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 3, 1);
  }

  if ((v5 & 1) == 0)
  {
    v8 = 0;
    if ((v5 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Eph\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 73, "deleteGnssData_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v15, 4, 1);
  }

  v8 = 1;
  if ((v5 & 2) != 0)
  {
LABEL_16:
    v8 |= 2u;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Alm\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 73, "deleteGnssData_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v17, 4, 1);
    }
  }

LABEL_18:
  if ((v5 & 4) != 0)
  {
    v8 |= 4u;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Pos\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 73, "deleteGnssData_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v19, 4, 1);
    }
  }

  if ((v5 & 8) != 0)
  {
    v8 |= 8u;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Time\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 73, "deleteGnssData_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v21, 4, 1);
    }
  }

  if ((v5 & 0x10) != 0)
  {
    v8 |= 0x10u;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Iono\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 73, "deleteGnssData_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v23, 4, 1);
    }
  }

  if ((v5 & 0x20) != 0)
  {
    v8 |= 0x20u;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v24 = mach_continuous_time();
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: UTC\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 73, "deleteGnssData_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v25, 4, 1);
    }
  }

  if ((v5 & 0x40) != 0)
  {
    v8 |= 0x40u;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v26 = mach_continuous_time();
      v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SvHealth\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 73, "deleteGnssData_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v27, 4, 1);
    }
  }

  if ((v5 & 0x80) != 0)
  {
    v8 |= 0x100u;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v28 = mach_continuous_time();
      v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TsxCurve\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 73, "deleteGnssData_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v29, 4, 1);
    }
  }

  if ((v5 & 0x400) != 0)
  {
    v8 |= 0x10000u;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Cold\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 73, "deleteGnssData_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v31, 4, 1);
    }
  }

  if ((v5 & 0x800) != 0)
  {
    v8 |= 0x20000u;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v32 = mach_continuous_time();
      v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Warm\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 73, "deleteGnssData_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v33, 4, 1);
    }
  }

  if ((v5 & 0x1000) != 0)
  {
    v8 |= 0x40000u;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v34 = mach_continuous_time();
      v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Factory\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 73, "deleteGnssData_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v35, 4, 1);
    }
  }

  if ((v5 & 0x100) != 0)
  {
    v8 |= 0x200u;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v36 = mach_continuous_time();
      v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RTI\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 73, "deleteGnssData_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v37, 4, 1);
    }
  }

  if ((v5 & 0x200) != 0)
  {
    v8 |= 0x400u;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v38 = mach_continuous_time();
      v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ORB\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 73, "deleteGnssData_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v39, 4, 1);
    }
  }

  if ((v5 & 0x2000) != 0)
  {
    v8 |= 0x800u;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v44 = mach_continuous_time();
      v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ME_TTICK\n", (*&g_MacClockTicksToMsRelation * v44), "ADP", 73, "deleteGnssData_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v45, 4, 1);
    }
  }

  else if (!v8)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v57, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v57, "deleteGnssData_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v57);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v40 = mach_continuous_time();
      v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx field 0\n", (*&g_MacClockTicksToMsRelation * v40), "ADP", 87, "deleteGnssData_block_invoke", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v41, 2, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v42 = mach_continuous_time();
      v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v42), "ADP", 68, "deleteGnssData_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v43, 5, 1);
    }

    return result;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v46 = mach_continuous_time();
    v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Fields,%u\n", (*&g_MacClockTicksToMsRelation * v46), "ADP", 73, "deleteGnssData_block_invoke", v8);
    LbsOsaTrace_WriteLog(0x18u, __str, v47, 4, 1);
  }

  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v55, a1 + 40);
  v56[3] = 0;
  gnss::GnssAdaptDevice::Ga07_10AddRespHndlToGnmLUT(v2, 0x10u, v55);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v56);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v55);
  v48 = Gnm_ClearGNSSCache(v8);
  if (v48)
  {
    gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(v2, v48, 0x10u);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v49 = mach_continuous_time();
      v50 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ClearCache,%u\n", (*&g_MacClockTicksToMsRelation * v49), "ADP", 69, "deleteGnssData_block_invoke", 257, v48);
      LbsOsaTrace_WriteLog(0x18u, __str, v50, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (!gnssOsa_SemWaitTimeOut(*(v2 + 1032), 0x1F4u))
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
      if (!result)
      {
        return result;
      }

      goto LABEL_72;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v51 = mach_continuous_time();
      v52 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ClearCache\n", (*&g_MacClockTicksToMsRelation * v51), "ADP", 69, "deleteGnssData_block_invoke", 257);
      LbsOsaTrace_WriteLog(0x18u, __str, v52, 0, 1);
    }

    gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(v2, 11, 0x10u);
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
    if (result)
    {
LABEL_72:
      bzero(__str, 0x410uLL);
      v53 = mach_continuous_time();
      v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v53), "ADP", 68, "deleteGnssData_block_invoke");
      return LbsOsaTrace_WriteLog(0x18u, __str, v54, 5, 1);
    }
  }

  return result;
}