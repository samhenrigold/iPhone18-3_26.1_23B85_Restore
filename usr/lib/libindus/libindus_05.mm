void GNSS_HL_System_Re_Start(uint64_t a1)
{
  v64[12] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 48);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  *(v6 + 1780) = 0;
  *(v6 + 1784) = 0;
  *v3 = *v2;
  *(v3 + 4) = *(v2 + 16);
  *(v3 + 8) = *(v2 + 24);
  v8 = -4608;
  do
  {
    v9 = v3 + v8 + 11816;
    *(v9 + 32) = 0;
    *v9 = 0uLL;
    *(v9 + 16) = 0uLL;
    v8 += 36;
  }

  while (v8);
  bzero(v4, 0x3E00uLL);
  v10 = *(v6 + 1676);
  if (v10)
  {
    v10 += **(a1 + 8);
  }

  v11 = 60000000;
  *(v6 + 1728) = v10;
  *(v7 + 19) = 0;
  if (*v5)
  {
    v12 = *(v6 + 248);
    if (v12)
    {
      v13 = *v2 - v12;
      if ((v13 - 1) > 0x5265BFE)
      {
        v12 = 0;
        *(v6 + 248) = 0;
        *(v6 + 256) = 0;
      }

      else
      {
        v11 = 3 * v13 / 0x3E8u + 5;
      }

      EvCrt_v("GNSS_HL_System_Re_Start:   d_TTick  %d    Sleep_Sub_us_Time_TTick  %u", v13, v12);
    }
  }

  else
  {
    *(v6 + 248) = 0;
    *(v6 + 256) = 0;
  }

  EvCrt_v("GNSS_HL_System_Re_Start:   Max_Exp_Time_Error_us  %d", v11);
  v14 = *a1;
  if (*a1 == 9)
  {
    if (*(v2 + 12) || (v15 = *v2 - v5[6], v16 = *(v2 + 16) - v5[7], v15 <= 255000) && v16 <= 255000 || (*a1 = 6, EvCrt_v("GNSS_HL_System_Re_Start: Deprecate SLEEP_RESTART to COMA_RESTART since Idle interval longer than %d s, Idle TTicks %d ms, Idle OS_Time %d ms", 255, v15, v16), v14 = *a1, *a1 == 9))
    {
      if (*v5 > 10 || (*a1 = 6, EvCrt_v("GNSS_HL_System_Re_Start: Deprecate SLEEP_RESTART to COMA_RESTART since SUB_MS Time not achieved by the end of the previous session"), v14 = *a1, *a1 == 9))
      {
        v17 = *(v6 + 244);
        if (v17 < 0x191 || (*a1 = 6, EvCrt_v("GNSS_HL_System_Re_Start: Deprecate SLEEP_RESTART to COMA_RESTART since ME Wakeup TTick Unc = %d > 400 us", v17), v14 = *a1, *a1 == 9))
        {
          v18 = *(v6 + 240);
          if (*(v6 + 240) && ((v19 = *(v7 + 184) * 1000000000.0, v19 >= 0) ? (v20 = v19) : (v20 = -v19), v20 > v18))
          {
            *a1 = 6;
            EvCrt_v("GNSS_HL_System_Re_Start: Deprecate SLEEP_RESTART to COMA_RESTART since Est Clock Drift %d ppb > %d ppb ME TSX Offset Unc", v19, v18);
            v14 = *a1;
          }

          else
          {
            v14 = 9;
          }

          if (v11 >= 0x322 && v14 == 9)
          {
            *a1 = 6;
            EvCrt_v("GNSS_HL_System_Re_Start: Deprecate SLEEP_RESTART to COMA_RESTART since Max_Exp_Time_Error_us/2 = %d/2 > 400 us", v11);
            v14 = *a1;
          }
        }
      }
    }
  }

  if (v11 <= 0x1F4)
  {
    v21 = 500;
  }

  else
  {
    v21 = v11;
  }

  v22 = 0.0;
  if (v14 == 6)
  {
    v23 = v21;
  }

  else
  {
    v23 = v11;
  }

  if (v14 == 6)
  {
    v24 = *(v6 + 240);
    if (*(v6 + 240))
    {
      *(v6 + 1712) = 0;
      v25 = v24 * 0.000000001;
      *(v6 + 1720) = v25;
      *(v7 + 920) = 0x4163125300000000;
      *(v7 + 184) = 0;
      *(p_NA + 6) = 0;
      v22 = v25 * 299792458.0 / 3.0 * (v25 * 299792458.0 / 3.0);
      goto LABEL_47;
    }

    v26 = *(v2 + 12);
    if (v26 < 0x493E1)
    {
      goto LABEL_47;
    }

    v27 = *(v6 + 1720);
    if (v27 < 0.000000175)
    {
      v28 = 0x3E877CF447651960;
LABEL_46:
      *(v6 + 1720) = v28;
      goto LABEL_47;
    }

    if (v26 >= 0xDBBA1 && v27 < 0.0000005)
    {
      v28 = 0x3EA0C6F7A0B5ED8ELL;
      goto LABEL_46;
    }
  }

LABEL_47:
  if (g_Test_Mode_Cfg == 1 && *v5 >= 10 && v5[19] >= 10)
  {
    v29 = **(a1 + 8) % 0x29u - 20;
    Inc_GPS_TOW(v29 * 0.001, v5 + 5, v5 + 16);
    Inc_Glon_TOD(v29 * 0.001, v5 + 11, v5 + 42, v5 + 41);
    *(v7 + 48) = *(v5 + 5);
    *(v7 + 62) = *(v5 + 16);
    *(v7 + 216) = *(v5 + 11);
    *(v7 + 210) = *(v5 + 82);
    EvLog_v("TestMode 1:  Error added to Time on WakeUp of %d ms", v29);
    DbgLog_v(1, "TestMode 1:  Error added to Time on WakeUp of %d ms", v29);
    v14 = *a1;
  }

  if (v14 == 6)
  {
    v64[0] = 0.0;
    v63 = 0;
    v62 = 0;
    v30 = *(v7 + 872);
    if (v30 >= 9999000.0)
    {
      v31 = TOW_stat_ms[*v5];
    }

    else
    {
      v31 = v30 * 0.0000100069229 + 1.0;
    }

    v32 = *(v6 + 244);
    if (v32)
    {
      v33 = 0.001;
    }

    else
    {
      v32 = *(v2 + 12);
      v33 = 0.000003;
    }

    v34 = v33 * v32;
    v35 = v31 + v34;
    if ((v31 + v34) * 1000.0 > v23)
    {
      EvCrt_v("GNSS_HL_System_Re_Start: Replacing time_acc %f ms with Max_Exp_Time_Error_us %d", v35, v23);
      v35 = v23 * 0.001;
    }

    if (v35 <= 600000.0)
    {
      for (i = 10; i != -1; --i)
      {
        if (TOW_stat_ms[i] >= v35)
        {
          break;
        }
      }
    }

    else
    {
      i = 0;
    }

    v37 = v5[19];
    j = i;
    if (v37 != *v5)
    {
      v39 = v34 + (TOW_stat_ms[v37] + 1);
      if (v39 <= 600000.0)
      {
        for (j = 10; j != -1; --j)
        {
          if (TOW_stat_ms[j] >= v39)
          {
            break;
          }
        }
      }

      else
      {
        j = 0;
      }
    }

    *(v7 + 56) = i;
    *(v7 + 204) = j;
    *(v5 + 4) = 0;
    *v5 = i;
    v5[19] = j;
    if (!Core_Load_ApxTime(*(v3 + 4), &v63, v64, &v62))
    {
      goto LABEL_78;
    }

    v40 = v63;
    if (v63 < 1025)
    {
      goto LABEL_78;
    }

    if (v62 <= i)
    {
      if (v5[4])
      {
        goto LABEL_78;
      }

      *(v5 + 16) = 1;
      *(v5 + 16) = v40;
    }

    else
    {
      *v5 = v62;
      *(v5 + 4) = 0;
      *(v5 + 16) = 1;
      *(v5 + 3) = *v3;
      *(v5 + 1) = *(v3 + 8);
      *(v5 + 16) = v40;
      *(v5 + 5) = v64[0];
      *(v5 + 6) = 0;
    }

    *v60 = 0;
    *v61 = 0;
    API_Get_UTC_Cor(1, v60);
    GPS_To_Glon_Time(0, *(v5 + 16), *(v5 + 5), *v60, v61, &v61[1], v5 + 11);
    v41 = v61[0];
    *(v5 + 42) = v61[1];
    *(v5 + 41) = v41;
    *(v5 + 80) = 1;
    v5[19] = *v5;
LABEL_78:
    v42 = *(a1 + 128);
    if (*v5 < 10 || *(v42 + 12) < 4)
    {
      *(v42 + 12) = 0;
    }

    else
    {
      *(v42 + 12) = 3;
    }

    *(v42 + 4) = 0;
  }

  SV_Gen_Meas_Update_Wrapper(a1);
  SV_Data_Decode_Update_Wrapper(a1);
  SV_State_Update_Wrapper(a1);
  v43 = *(a1 + 136);
  v60[0] = 0;
  *(v43 + 30) = 0;
  *(v43 + 15592) = 0u;
  ++*(v43 + 27120);
  ++*(v43 + 27132);
  v44 = *(v7 + 36);
  v45 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v44;
  if (v45 >= 1)
  {
    v46 = v45 / *(v6 + 1668);
    *(v43 + 27120) += v46;
    *(v43 + 27132) += v46;
  }

  if (*a1 == 9 && (*(v43 + 20) - 4) <= 4 && *(v43 + 27116) && *(v43 + 27128))
  {
    v47 = *(v43 + 18);
  }

  else
  {
    v47 = 0;
  }

  v48 = *(v6 + 1668);
  if (v48 * *(v43 + 27120) > (1000 * v47) && *(v7 + 360) > 0.0)
  {
    NK_Decay_Speed(v47, v48, v7 + 32, v43);
    *(v43 + 27344) = 0;
    *(v43 + 27352) = 0;
    *(v43 + 27328) = 0;
    *(v43 + 27336) = 0;
  }

  *(v43 + 27112) = 0;
  *(v43 + 27120) = 0;
  *(v43 + 152) = 0;
  *(v43 + 27128) = 0u;
  *(v43 + 160) = -1;
  *(v43 + 276) = 0;
  *(v43 + 68176) = 0;
  *(v43 + 68180) = 0;
  *(v43 + 20120) = 0;
  *(v43 + 20136) = 0;
  *(v43 + 25792) = 0u;
  *(v43 + 25808) = 0u;
  *(v43 + 25824) = 0u;
  *(v43 + 25840) = 0u;
  *(v43 + 25856) = 0u;
  *(v43 + 25872) = 0u;
  *(v43 + 25888) = 0u;
  *(v43 + 25904) = 0u;
  *(v43 + 16104) = 0u;
  *(v43 + 16120) = 0u;
  *(v43 + 16072) = 0u;
  *(v43 + 16088) = 0u;
  *(v43 + 16040) = 0u;
  *(v43 + 16056) = 0u;
  *(v43 + 16008) = 0u;
  *(v43 + 16024) = 0u;
  *(v43 + 15976) = 0u;
  *(v43 + 15992) = 0u;
  *(v43 + 15944) = 0u;
  *(v43 + 15960) = 0u;
  *(v43 + 15912) = 0u;
  *(v43 + 15928) = 0u;
  *(v43 + 15880) = 0u;
  *(v43 + 15896) = 0u;
  *(v43 + 15848) = 0u;
  *(v43 + 15864) = 0u;
  *(v43 + 15816) = 0u;
  *(v43 + 15832) = 0u;
  *(v43 + 15784) = 0u;
  *(v43 + 15800) = 0u;
  *(v43 + 15752) = 0u;
  *(v43 + 15768) = 0u;
  *(v43 + 15720) = 0u;
  *(v43 + 15736) = 0u;
  *(v43 + 15688) = 0u;
  *(v43 + 15704) = 0u;
  *(v43 + 15656) = 0u;
  *(v43 + 15672) = 0u;
  *(v43 + 15624) = 0u;
  *(v43 + 15640) = 0u;
  *(v43 + 17000) = 0u;
  *(v43 + 17016) = 0u;
  *(v43 + 16968) = 0u;
  *(v43 + 16984) = 0u;
  *(v43 + 16936) = 0u;
  *(v43 + 16952) = 0u;
  *(v43 + 16904) = 0u;
  *(v43 + 16920) = 0u;
  bzero((v43 + 18056), 0x803uLL);
  if (*a1 != 6)
  {
    LODWORD(v49) = *(v6 + 244);
    v55 = v49 * 99.9308193 * (v49 * 99.9308193) + 900.0;
    Apply_Q_Boost(v55, 0, 1u, (v43 + 352), v60, v64);
    Apply_Q_Boost(v55, 1u, 1u, (v43 + 352), v60, v64);
    Apply_Q_Boost(v55, 2u, 1u, (v43 + 352), v60, v64);
    v52 = 8.98755179;
    if (*(v6 + 240))
    {
      v52 = v22;
    }

    v53 = (v43 + 352);
    v54 = 4;
    goto LABEL_103;
  }

  *(v7 + 864) = 0x4163125300000000;
  *(v7 + 200) = 0;
  *(v7 + 202) = 0;
  *(v7 + 160) = 0;
  *(v7 + 168) = 0;
  *(v7 + 152) = 0;
  v50 = *(v2 + 12);
  if (v50 <= 0x2BF1F && *v5 >= 10)
  {
    Apply_Q_Boost(4.40390038e10, 0, 1u, (v43 + 352), v60, v64);
    Apply_Q_Boost(4.40390038e10, 1u, 1u, (v43 + 352), v60, v64);
    Apply_Q_Boost(4.40390038e10, 2u, 1u, (v43 + 352), v60, v64);
    Apply_Q_Boost(1.0, 3u, 1u, (v43 + 352), v60, v64);
    v51 = 224.688795;
    if (*(v6 + 240))
    {
      v51 = v22;
    }

    Apply_Q_Boost(v51, 4u, 1u, (v43 + 352), v60, v64);
    v52 = 1.0;
    v53 = (v43 + 352);
    v54 = 5;
LABEL_103:
    Apply_Q_Boost(v52, v54, 1u, v53, v60, v64);
    goto LABEL_104;
  }

  *(v43 + 136) = 1;
  *(v43 + 140) = 3;
  *(v43 + 240) = 256;
  *(v43 + 242) = 2;
  *(v43 + 27176) = 0;
  *(v43 + 27232) = 0u;
  *(v43 + 68160) = xmmword_299050630;
  v59 = *(v7 + 12);
  if (v59 != 2)
  {
    if (v59 != 3)
    {
      goto LABEL_104;
    }

    *(v7 + 12) = 2;
  }

  if (v50 >= 0x36EE81)
  {
    *(v7 + 12) = 1;
  }

LABEL_104:
  *v6 = 0;
  Nav_Kalman_Update_Wrapper(a1);
  Pre_Positioning_Update_Wrapper(a1);
  v56 = *(a1 + 104);
  *(v56 + 248) = *(v56 + 240);
  *(v56 + 308) = 0;
  v57 = *(a1 + 104);
  *(v57 + 320) = *(v57 + 312);
  *(v57 + 380) = 0;
  v58 = *(a1 + 104);
  *(v58 + 392) = *(v58 + 384);
  *(v58 + 452) = 0;
  *a1 = 11;
}

uint64_t Ga05_GetPlatformType(unsigned __int8 *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = gp_HalExtensionIndusInstance == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (v2)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Null Pltfm\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga05_GetPlatformType", 770);
      v5 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    if (!(*(*gp_HalExtensionIndusInstance + 136))())
    {
      *a1 = 0;
    }

    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Platform Type,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "Ga05_GetPlatformType", *a1);
      v5 = 4;
LABEL_14:
      gnssOsa_PrintLog(__str, v5, 1, 0);
    }
  }

  return v3;
}

void Ga05_HandleResetBbResetReq(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 68, "Ga05_HandleResetBbResetReq");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v3 = gp_HalExtensionIndusInstance;
  if (gp_HalExtensionIndusInstance)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, off_29EF063D8[a1]);
    (*(*v3 + 144))(v3, a1, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga05_HandleResetBbResetReq");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx null object HalExtIndus\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "Ga05_HandleResetBbResetReq", 770);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void sub_298F5F924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ga05_GetPlatformCalibrationGlonassGroupDelayMeters(void)
{
  v3 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "ADP", 68, "Ga05_GetPlatformCalibrationGlonassGroupDelayMeters");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  return (*(*gp_HalExtensionIndusInstance + 80))(gp_HalExtensionIndusInstance);
}

double Ga05_GetPlatformCalibrationL5GroupDelayMeters(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "ADP", 68, "Ga05_GetPlatformCalibrationL5GroupDelayMeters");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (gp_HalExtensionIndusInstance)
  {
    return (*(*gp_HalExtensionIndusInstance + 72))(gp_HalExtensionIndusInstance);
  }

  v1 = 0.0;
  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx null object HalExtIndus\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 69, "Ga05_GetPlatformCalibrationL5GroupDelayMeters", 770);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return v1;
}

uint64_t Ga05_GetDebugFeaturesBitmask(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (gp_HalExtensionIndusInstance)
  {
    v0 = *(*gp_HalExtensionIndusInstance + 104);

    return v0();
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx null object HalExtIndus\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 69, "Ga05_GetDebugFeaturesBitmask", 770);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    return 0;
  }
}

uint64_t Ga05_GetIsStandaloneBeiDouSupportRequired(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (gp_HalExtensionIndusInstance)
  {
    v0 = *(*gp_HalExtensionIndusInstance + 96);

    return v0();
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx null object HalExtIndus\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 69, "Ga05_GetIsStandaloneBeiDouSupportRequired", 770);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    return 0;
  }
}

uint64_t Ga05_GetIsBeiDouConsistencyRequired(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (gp_HalExtensionIndusInstance)
  {
    v0 = *(*gp_HalExtensionIndusInstance + 88);

    return v0();
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx null object HalExtIndus\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 69, "Ga05_GetIsBeiDouConsistencyRequired", 770);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    return 0;
  }
}

uint64_t Ga05_IsReceivingFTAEnabled(void)
{
  v3 = *MEMORY[0x29EDCA608];
  if (gp_HalExtensionIndusInstance)
  {
    return (*(*gp_HalExtensionIndusInstance + 112))(gp_HalExtensionIndusInstance) & 1;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v1 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx null object HalExtIndus\n", (*&g_MacClockTicksToMsRelation * v1), "ADP", 69, "Ga05_IsReceivingFTAEnabled", 770);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

void Ga05_UpdateBDSConsistencyStats(uint64_t result, int a2, int a3, int a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (gp_HalExtensionIndusInstance)
  {
    v7 = result;
    __str[0] = Ga05_GetIsBeiDouConsistencyRequired();
    v10 = v7 * 0.001;
    v11 = a2 * 0.001;
    v13 = a4;
    v12 = a3 * 0.001;
    (*(*gp_HalExtensionIndusInstance + 56))(gp_HalExtensionIndusInstance, __str);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx null object HalExtIndus\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "Ga05_UpdateBDSConsistencyStats", 770);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
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

uint64_t GncP23_30HandleEaDataInd(uint64_t a1)
{
  v55 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND EAType,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP23_30HandleEaDataInd", *(a1 + 16));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v3 = *(a1 + 16);
    if (v3 <= 5)
    {
      if (v3 > 2)
      {
        if (v3 == 3)
        {
          memset_s(&__s, 0xCuLL, 0, 0xCuLL);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v30 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:UAC,OsTime,%u,Context,%u,Reliab,%u\n", (*&g_MacClockTicksToMsRelation * v30), "GNC", 68, "GncP23_13SetUsrActCtxt", *(a1 + 24), *(a1 + 28), *(a1 + 32));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          v31 = *(a1 + 28);
          LODWORD(__s) = *(a1 + 24);
          if (v31 >= 0xC)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v32 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Context,%u\n", (*&g_MacClockTicksToMsRelation * v32), "GNC", 87, "GncP23_13SetUsrActCtxt", 770, *(a1 + 28));
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            v31 = 0;
          }

          HIDWORD(__s) = v31;
          v33 = *(a1 + 32);
          if (v33 >= 4)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v34 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Reliability,%u\n", (*&g_MacClockTicksToMsRelation * v34), "GNC", 87, "GncP23_13SetUsrActCtxt", 770, *(a1 + 32));
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            v33 = 0;
          }

          LODWORD(v48) = v33;
          if ((GN_ExtA_Set_User_Activity_Context(&__s) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:UAC\n");
              goto LABEL_126;
            }

            goto LABEL_127;
          }
        }

        else if (v3 == 4)
        {
          memset_s(&__s, 0xCuLL, 0, 0xCuLL);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v23 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:FIV,OsTime,%u,Fiv,%u,Reliab,%u\n", (*&g_MacClockTicksToMsRelation * v23), "GNC", 68, "GncP23_14SetFixedInVehicle", *(a1 + 24), *(a1 + 28), *(a1 + 32));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          v24 = *(a1 + 28);
          LODWORD(__s) = *(a1 + 24);
          if (v24 >= 4)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v25 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Indication,%u\n", (*&g_MacClockTicksToMsRelation * v25), "GNC", 87, "GncP23_14SetFixedInVehicle", 770, *(a1 + 28));
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            v24 = 0;
          }

          HIDWORD(__s) = v24;
          v26 = *(a1 + 32);
          if (v26 >= 4)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v27 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Reliability,%u\n", (*&g_MacClockTicksToMsRelation * v27), "GNC", 87, "GncP23_14SetFixedInVehicle", 770, *(a1 + 32));
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            v26 = 0;
          }

          LODWORD(v48) = v26;
          if ((GN_ExtA_Set_Fixed_In_Vehicle(&__s) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:FIV\n");
              goto LABEL_126;
            }

            goto LABEL_127;
          }
        }

        else
        {
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v7 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:SES,Severity,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 68, "GncP23_15SetSigEnvSev", *(a1 + 24));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          v8 = *(a1 + 24);
          if (v8 >= 8)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v9 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SigEnv,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncP23_15SetSigEnvSev", 770, *(a1 + 24));
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            v8 = 0;
          }

          if ((GN_ExtA_Set_Sig_Env_Sev(v8) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:SES\n");
              goto LABEL_126;
            }

LABEL_127:
            v42 = *(a1 + 12);
            v43 = *(a1 + 16);
            v44 = 0;
            goto LABEL_128;
          }
        }

LABEL_121:
        v42 = *(a1 + 12);
        v43 = *(a1 + 16);
        v44 = 1;
LABEL_128:
        GncP23_01SendApiStatus(v42, v43, v44);
        return 0;
      }

      if (v3 == 1)
      {
        v16 = *(a1 + 104);
        if (v16 >= 2)
        {
          if (v16 != 2)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v46 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EaPos Type,%u\n", v46);
              goto LABEL_126;
            }

            goto LABEL_127;
          }

          if ((GncP23_22SetTunnelEndPt(a1 + 24) & 1) == 0)
          {
            goto LABEL_127;
          }
        }

        else
        {
          memset_s(&__s, 0x50uLL, 0, 0x50uLL);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v17 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:RPOS,OsTime,%u,Lat,%f,Long,%f,RmsSMaj,%f,RmsSMin,%f,RmsSMajB,%hd,HeightAvl,%u,Height,%f,RmsH,%f,T,%u,Src,%u,SrcHash,0x%llX\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 68, "GncP23_11SetWgs84RefPos", *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 66), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 92), *(a1 + 96));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          v18 = *(a1 + 48);
          v48 = *(a1 + 32);
          LODWORD(__s) = *(a1 + 24);
          v49 = v18;
          *v50 = *(a1 + 64);
          v50[2] = *(a1 + 66);
          *&v50[8] = *(a1 + 72);
          v53 = *(a1 + 96);
          v19 = *(a1 + 88);
          if (v19 >= 5)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v20 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Trust,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 87, "GncP23_11SetWgs84RefPos", 770, *(a1 + 88));
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            v19 = 0;
          }

          v51 = v19;
          v21 = *(a1 + 92);
          if (v21 < 9 && ((0x1F9u >> v21) & 1) != 0)
          {
            v22 = dword_299050B04[v21];
          }

          else
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v41 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Source,%u\n", (*&g_MacClockTicksToMsRelation * v41), "GNC", 87, "GncP23_11SetWgs84RefPos", 770, *(a1 + 92));
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            v22 = 0;
          }

          v52 = v22;
          if ((GN_AGPS_Set_Ref_Pos(&__s) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:RefPos\n");
              goto LABEL_126;
            }

            goto LABEL_127;
          }
        }

        goto LABEL_121;
      }

      if (v3 == 2)
      {
        memset_s(&__s, 0xCuLL, 0, 0xCuLL);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v11 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:DMS,OsTime,%u,State,%u,Reliab,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 68, "GncP23_12SetDevMotionState", *(a1 + 24), *(a1 + 28), *(a1 + 32));
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }

        v12 = *(a1 + 28);
        LODWORD(__s) = *(a1 + 24);
        if (v12 >= 4)
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v13 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "GncP23_12SetDevMotionState", 770, *(a1 + 28));
            gnssOsa_PrintLog(__str, 2, 1, 0);
          }

          v12 = 0;
        }

        HIDWORD(__s) = v12;
        v14 = *(a1 + 32);
        if (v14 >= 4)
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v15 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Reliability,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 87, "GncP23_12SetDevMotionState", 770, *(a1 + 32));
            gnssOsa_PrintLog(__str, 2, 1, 0);
          }

          v14 = 0;
        }

        LODWORD(v48) = v14;
        if ((GN_ExtA_Set_Device_Motion_State(&__s) & 1) == 0)
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Dms\n");
            goto LABEL_126;
          }

          goto LABEL_127;
        }

        goto LABEL_121;
      }
    }

    else
    {
      if (v3 <= 8)
      {
        if (v3 == 6)
        {
          memset_s(&__s, 0x20uLL, 0, 0x20uLL);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v35 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:ALT,OsTime,%u,Alt,%f,RmsAlt,%f,Trust,%u\n", (*&g_MacClockTicksToMsRelation * v35), "GNC", 68, "GncP23_16SetAltitudeAid", *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          LODWORD(__s) = *(a1 + 24);
          v48 = *(a1 + 32);
          v36 = *(a1 + 48);
          if (v36 >= 5)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v40 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Trust,%u\n", (*&g_MacClockTicksToMsRelation * v40), "GNC", 87, "GncP23_16SetAltitudeAid", 770, *(a1 + 48));
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            v37 = 0;
          }

          else
          {
            v37 = dword_299050B28[v36];
          }

          LODWORD(v49) = v37;
          if ((GN_ExtA_Set_Altitude(&__s) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Alt\n");
              goto LABEL_126;
            }

            goto LABEL_127;
          }
        }

        else if (v3 == 7)
        {
          memset_s(&__s, 0x48uLL, 0, 0x48uLL);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v28 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:RPOS,OsTime,%u,Lat,%f,Long,%f,HeightAvl,%u,Height,%.2f,Dir,%.2f,Length,%.2f,Width,%.2f,Tunnel,%u,Freeway,%u,Railway,%u,OneWay,%u\n", (*&g_MacClockTicksToMsRelation * v28), "GNC", 68, "GncP23_17SetMapVectorSeg", *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 56), *(a1 + 48), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 89), *(a1 + 90), *(a1 + 91));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          LODWORD(__s) = *(a1 + 24);
          v48 = *(a1 + 32);
          *&v49 = *(a1 + 48);
          BYTE8(v49) = *(a1 + 56);
          *v50 = *(a1 + 64);
          *&v50[16] = *(a1 + 80);
          v51 = *(a1 + 88);
          LOBYTE(v52) = *(a1 + 92);
          if ((GN_ExtA_Set_Map_Vector_Seg(&__s) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Mapv\n");
              goto LABEL_126;
            }

            goto LABEL_127;
          }
        }

        else
        {
          memset_s(&__s, 0x18uLL, 0, 0x18uLL);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v4 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:SPDC,OsTime,%u,Dur,%u,SpdL,%.2f,SpdU,%.2f\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GncP23_18SetSpeedC", *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 40));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          __s = *(a1 + 24);
          v48 = *(a1 + 32);
          if ((GN_ExtA_Set_Speed_Constraint(&__s) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:SpeedC\n");
LABEL_126:
              gnssOsa_PrintLog(__str, 2, 1, 0);
              goto LABEL_127;
            }

            goto LABEL_127;
          }
        }

        goto LABEL_121;
      }

      switch(v3)
      {
        case 9:
          memset_s(&__s, 0x18uLL, 0, 0x18uLL);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v38 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:VEL,OsTime,%u,Vel,%.2f,RmsVel,%.2f\n", (*&g_MacClockTicksToMsRelation * v38), "GNC", 68, "GncP23_19SetAtVel", *(a1 + 24), *(a1 + 32), *(a1 + 40));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          LODWORD(__s) = *(a1 + 24);
          v48 = *(a1 + 32);
          if ((GN_ExtA_Set_Along_Track_Vel(&__s) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Vel\n");
              goto LABEL_126;
            }

            goto LABEL_127;
          }

          goto LABEL_121;
        case 10:
          memset_s(&__s, 0x18uLL, 0, 0x18uLL);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v29 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:HDNG,OsTime,%u,Heading,%.2f,RmsHeading,%.2f\n", (*&g_MacClockTicksToMsRelation * v29), "GNC", 68, "GncP23_20SetHeading", *(a1 + 24), *(a1 + 32), *(a1 + 40));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          LODWORD(__s) = *(a1 + 24);
          v48 = *(a1 + 32);
          if ((GN_ExtA_Set_User_Heading(&__s) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Heading\n");
              goto LABEL_126;
            }

            goto LABEL_127;
          }

          goto LABEL_121;
        case 11:
          memset_s(&__s, 0x18uLL, 0, 0x18uLL);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v10 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:VEL,OsTime,%u,Vel,%.2f,RmsVel,%.2f\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 68, "GncP23_21SetVertVel", *(a1 + 24), *(a1 + 32), *(a1 + 40));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          LODWORD(__s) = *(a1 + 24);
          v48 = *(a1 + 32);
          if ((GN_ExtA_Set_Vertical_Vel(&__s) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:VertVel\n");
              goto LABEL_126;
            }

            goto LABEL_127;
          }

          goto LABEL_121;
      }
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v39 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EaData Type,%u\n", (*&g_MacClockTicksToMsRelation * v39), "GNC", 87, "GncP23_30HandleEaDataInd", 770, *(a1 + 16));
      v6 = 2;
      goto LABEL_15;
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 69, "GncP23_30HandleEaDataInd", 517);
    v6 = 1;
LABEL_15:
    gnssOsa_PrintLog(__str, v6, 1, 0);
  }

  return 0;
}

uint64_t GncP23_22SetTunnelEndPt(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  memset(v6, 0, 48);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:POS_TYPE,OsTime,%u,Lat,%f,Long,%f,RmsSMaj,%f,RmsSMin,%f,RmsSMajB,%d,HeightAvl,%d,Height,%f,RmsH,%f,PosType,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "GncP23_22SetTunnelEndPt", *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 42), *(a1 + 48), *(a1 + 56), *(a1 + 80));
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  LODWORD(v6[0]) = *a1;
  *(v6 + 8) = *(a1 + 8);
  *(&v6[1] + 8) = *(a1 + 24);
  WORD4(v6[2]) = *(a1 + 40);
  BYTE10(v6[2]) = *(a1 + 42);
  v6[3] = *(a1 + 48);
  v3 = GN_ExtA_Set_Tunnel_End_Point(v6);
  if ((v3 & 1) == 0 && g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA TunnelEP\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP23_22SetTunnelEndPt", 257);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  return v3;
}

uint64_t GncP23_01SendApiStatus(int a1, int a2, int a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v8[1] = a2;
  v8[2] = a3;
  v8[0] = a1;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:API_STATUS =>EaCB,Api,%u,Id,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP23_01SendApiStatus", a2, a1, a3);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  return g_GnsEaCallback(0, 12, v8);
}

uint64_t GncP23_31HandleEaCbInit(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP23_31HandleEaCbInit", 517);
    v5 = 1;
LABEL_8:
    gnssOsa_PrintLog(__str, v5, 1, 0);
    return 0;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EA_CB_INIT_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP23_31HandleEaCbInit");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    goto LABEL_5;
  }

  if (!g_GnsEaCallback)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:CbPtr\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GncP23_31HandleEaCbInit", 513);
    v5 = 2;
    goto LABEL_8;
  }

  if (g_LbsOsaTrace_Config < 4)
  {
    v3 = 0;
  }

  else
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:DeRegistering\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GncP23_31HandleEaCbInit", 513);
    gnssOsa_PrintLog(__str, 4, 1, 0);
    v3 = *(a1 + 16);
  }

LABEL_5:
  g_GnsEaCallback = v3;
  return 0;
}

uint64_t GNS_EaInitialize(uint64_t a1)
{
  v2 = gnssOsa_Calloc("GNS_EaInitialize", 618, 1, 0x18uLL);
  if (!v2)
  {
    return 6;
  }

  v2[2] = a1;
  AgpsSendFsmMsg(132, 132, 8658435, v2);
  return 1;
}

uint64_t GNS_EaWgs84RefPos(int a1, __int128 *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GNS_EaWgs84RefPos");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Wgs84RefPos\n");
LABEL_15:
    v5 = 2;
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "GNS_EaWgs84RefPos");
LABEL_17:
      gnssOsa_PrintLog(__str, 5, 1, 0);
      return v5;
    }

    return v5;
  }

  if ((*(a2 + 17) - 3) >= 3)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Source,%u\n", v17);
    goto LABEL_15;
  }

  if (*(a2 + 16) >= 5u)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Trust,%u\n", v18);
    goto LABEL_15;
  }

  if (fabs(*(a2 + 1)) > 90.0)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Latitude,%f\n");
      goto LABEL_15;
    }

    return 2;
  }

  if (fabs(*(a2 + 2)) > 180.0)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Longitude,%f\n");
    goto LABEL_15;
  }

  if (*(a2 + 42) == 1 && fabs(*(a2 + 6)) > 100000.0)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Height,%f\n");
    goto LABEL_15;
  }

  if (*(a2 + 20) - 181 <= 0xFE96)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:RmsSemiMajBrg,%d\n", v19);
    goto LABEL_15;
  }

  v8 = gnssOsa_Calloc("GNS_EaWgs84RefPos", 744, 1, 0x70uLL);
  if (v8)
  {
    v9 = v8;
    *(v8 + 3) = a1;
    *(v8 + 4) = 1;
    v10 = *a2;
    *(v8 + 40) = a2[1];
    *(v8 + 24) = v10;
    v11 = a2[2];
    v12 = a2[3];
    v13 = a2[4];
    *(v8 + 26) = *(a2 + 20);
    *(v8 + 88) = v13;
    *(v8 + 72) = v12;
    *(v8 + 56) = v11;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v14 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 73, "GNS_EaWgs84RefPos", *(v9 + 4), *(v9 + 3));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8650755, v9);
    if (g_LbsOsaTrace_Config < 5)
    {
      return 1;
    }

    bzero(__str, 0x3C6uLL);
    v15 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 68, "GNS_EaWgs84RefPos");
    v5 = 1;
    goto LABEL_17;
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v16 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 68, "GNS_EaWgs84RefPos");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  return 6;
}

uint64_t GNS_EaDevMovState(int a1, uint64_t *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GNS_EaDevMovState");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:DMS\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GNS_EaDevMovState", 513);
      v10 = 2;
      gnssOsa_PrintLog(__str, 2, 1, 0);
      if (g_LbsOsaTrace_Config < 5)
      {
        return v10;
      }

LABEL_19:
      bzero(__str, 0x3C6uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", v12, "GNC", 68, "GNS_EaDevMovState");
LABEL_20:
      gnssOsa_PrintLog(__str, 5, 1, 0);
      return v10;
    }

    return 2;
  }

  if (*(a2 + 1) >= 4u)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:MovState,%u\n", v15);
      goto LABEL_18;
    }

    return 2;
  }

  if (*(a2 + 2) >= 4u)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:MovReliab,%u\n", v16);
LABEL_18:
      v10 = 2;
      gnssOsa_PrintLog(__str, 2, 1, 0);
      if (g_LbsOsaTrace_Config < 5)
      {
        return v10;
      }

      goto LABEL_19;
    }

    return 2;
  }

  v5 = gnssOsa_Calloc("GNS_EaDevMovState", 834, 1, 0x70uLL);
  if (v5)
  {
    v6 = v5;
    v5[3] = a1;
    v5[4] = 2;
    v7 = *a2;
    v5[8] = *(a2 + 2);
    *(v5 + 3) = v7;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GNS_EaDevMovState", v6[4], v6[3]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8650755, v6);
    if (g_LbsOsaTrace_Config < 5)
    {
      return 1;
    }

    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 68, "GNS_EaDevMovState");
    v10 = 1;
    goto LABEL_20;
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v14 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 68, "GNS_EaDevMovState");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  return 6;
}

uint64_t GNS_EaSpeedConstraint(int a1, __int128 *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GNS_EaSpeedConstraint");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (a2)
  {
    v5 = gnssOsa_Calloc("GNS_EaSpeedConstraint", 891, 1, 0x70uLL);
    if (v5)
    {
      v6 = v5;
      *(v5 + 3) = a1;
      *(v5 + 4) = 8;
      v7 = *a2;
      *(v5 + 5) = *(a2 + 2);
      *(v5 + 24) = v7;
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GNS_EaSpeedConstraint", *(v6 + 4), *(v6 + 3));
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      AgpsSendFsmMsg(132, 132, 8650755, v6);
      if (g_LbsOsaTrace_Config < 5)
      {
        return 1;
      }

      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 68, "GNS_EaSpeedConstraint");
      v10 = 1;
      goto LABEL_12;
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v13 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 68, "GNS_EaSpeedConstraint");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    return 6;
  }

  else
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    v11 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:SpdC\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GNS_EaSpeedConstraint", 513);
    v10 = 2;
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 68, "GNS_EaSpeedConstraint");
LABEL_12:
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  return v10;
}

uint64_t GNS_EaAlongTrackVel(int a1, __int128 *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GNS_EaAlongTrackVel");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    v12 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:AlongTrackVel\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "GNS_EaAlongTrackVel", 513);
    v10 = 2;
    v11 = 2;
LABEL_11:
    gnssOsa_PrintLog(__str, v11, 1, 0);
    return v10;
  }

  v5 = gnssOsa_Calloc("GNS_EaAlongTrackVel", 947, 1, 0x70uLL);
  if (v5)
  {
    v6 = v5;
    *(v5 + 3) = a1;
    *(v5 + 4) = 9;
    v7 = *a2;
    *(v5 + 5) = *(a2 + 2);
    *(v5 + 24) = v7;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GNS_EaAlongTrackVel", *(v6 + 4), *(v6 + 3));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8650755, v6);
    if (g_LbsOsaTrace_Config < 5)
    {
      return 1;
    }

    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 68, "GNS_EaAlongTrackVel");
    v10 = 1;
    v11 = 5;
    goto LABEL_11;
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v13 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 68, "GNS_EaAlongTrackVel");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  return 6;
}

uint64_t GNS_EaUsrActCtxt(int a1, uint64_t *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GNS_EaUsrActCtxt");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:UAC\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GNS_EaUsrActCtxt", 513);
      v10 = 2;
      gnssOsa_PrintLog(__str, 2, 1, 0);
      if (g_LbsOsaTrace_Config < 5)
      {
        return v10;
      }

LABEL_19:
      bzero(__str, 0x3C6uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", v12, "GNC", 68, "GNS_EaUsrActCtxt");
LABEL_20:
      gnssOsa_PrintLog(__str, 5, 1, 0);
      return v10;
    }

    return 2;
  }

  if (*(a2 + 1) >= 0xCu)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Ctxt,%u\n", v15);
      goto LABEL_18;
    }

    return 2;
  }

  if (*(a2 + 2) >= 4u)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Reliab,%u\n", v16);
LABEL_18:
      v10 = 2;
      gnssOsa_PrintLog(__str, 2, 1, 0);
      if (g_LbsOsaTrace_Config < 5)
      {
        return v10;
      }

      goto LABEL_19;
    }

    return 2;
  }

  v5 = gnssOsa_Calloc("GNS_EaUsrActCtxt", 1170, 1, 0x70uLL);
  if (v5)
  {
    v6 = v5;
    v5[3] = a1;
    v5[4] = 3;
    v7 = *a2;
    v5[8] = *(a2 + 2);
    *(v5 + 3) = v7;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GNS_EaUsrActCtxt", v6[4], v6[3]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8650755, v6);
    if (g_LbsOsaTrace_Config < 5)
    {
      return 1;
    }

    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 68, "GNS_EaUsrActCtxt");
    v10 = 1;
    goto LABEL_20;
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v14 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 68, "GNS_EaUsrActCtxt");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  return 6;
}

uint64_t GNS_EaFixedInVehicle(int a1, uint64_t *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GNS_EaFixedInVehicle");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:FIV\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GNS_EaFixedInVehicle", 513);
      v10 = 2;
      gnssOsa_PrintLog(__str, 2, 1, 0);
      if (g_LbsOsaTrace_Config < 5)
      {
        return v10;
      }

LABEL_19:
      bzero(__str, 0x3C6uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", v12, "GNC", 68, "GNS_EaFixedInVehicle");
LABEL_20:
      gnssOsa_PrintLog(__str, 5, 1, 0);
      return v10;
    }

    return 2;
  }

  if (*(a2 + 1) >= 4u)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:FivInd,%u\n", v15);
      goto LABEL_18;
    }

    return 2;
  }

  if (*(a2 + 2) >= 4u)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:FIVReliab,%u\n", v16);
LABEL_18:
      v10 = 2;
      gnssOsa_PrintLog(__str, 2, 1, 0);
      if (g_LbsOsaTrace_Config < 5)
      {
        return v10;
      }

      goto LABEL_19;
    }

    return 2;
  }

  v5 = gnssOsa_Calloc("GNS_EaFixedInVehicle", 1259, 1, 0x70uLL);
  if (v5)
  {
    v6 = v5;
    v5[3] = a1;
    v5[4] = 4;
    v7 = *a2;
    v5[8] = *(a2 + 2);
    *(v5 + 3) = v7;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GNS_EaFixedInVehicle", v6[4], v6[3]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8650755, v6);
    if (g_LbsOsaTrace_Config < 5)
    {
      return 1;
    }

    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 68, "GNS_EaFixedInVehicle");
    v10 = 1;
    goto LABEL_20;
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v14 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 68, "GNS_EaFixedInVehicle");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  return 6;
}

uint64_t GNS_EaSigEnvSev(int a1, unsigned int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GNS_EaSigEnvSev");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (a2 >= 8)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    v10 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:SES,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "GNS_EaSigEnvSev", 515, a2);
    v9 = 2;
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 68, "GNS_EaSigEnvSev");
LABEL_12:
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  else
  {
    v5 = gnssOsa_Calloc("GNS_EaSigEnvSev", 1329, 1, 0x70uLL);
    if (v5)
    {
      v6 = v5;
      v5[3] = a1;
      v5[4] = 5;
      v5[6] = a2;
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GNS_EaSigEnvSev", v6[4], v6[3]);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      AgpsSendFsmMsg(132, 132, 8650755, v6);
      if (g_LbsOsaTrace_Config < 5)
      {
        return 1;
      }

      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "GNS_EaSigEnvSev");
      v9 = 1;
      goto LABEL_12;
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 68, "GNS_EaSigEnvSev");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    return 6;
  }

  return v9;
}

uint64_t GNS_EaAltitude(int a1, __int128 *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GNS_EaAltitude");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Alt\n");
LABEL_20:
    v10 = 2;
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 68, "GNS_EaAltitude");
LABEL_22:
      gnssOsa_PrintLog(__str, 5, 1, 0);
      return v10;
    }

    return v10;
  }

  if (fabs(*(a2 + 1)) > 100000.0)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Altitude,%f\n");
      goto LABEL_20;
    }

    return 2;
  }

  if (*(a2 + 2) > 100000.0)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:RMSAltitude,%f\n");
    goto LABEL_20;
  }

  if (*(a2 + 6) >= 5u)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Trust,%u\n", v14);
    goto LABEL_20;
  }

  v5 = gnssOsa_Calloc("GNS_EaAltitude", 1425, 1, 0x70uLL);
  if (v5)
  {
    v6 = v5;
    *(v5 + 3) = a1;
    *(v5 + 4) = 6;
    v7 = *a2;
    *(v5 + 36) = *(a2 + 12);
    *(v5 + 24) = v7;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GNS_EaAltitude", *(v6 + 4), *(v6 + 3));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8650755, v6);
    if (g_LbsOsaTrace_Config < 5)
    {
      return 1;
    }

    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 68, "GNS_EaAltitude");
    v10 = 1;
    goto LABEL_22;
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v13 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 68, "GNS_EaAltitude");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  return 6;
}

uint64_t GNS_EaMapVectorSeg(int a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GNS_EaMapVectorSeg");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:MapVecSeg\n");
LABEL_25:
    v5 = 2;
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "GNS_EaMapVectorSeg");
LABEL_27:
      gnssOsa_PrintLog(__str, 5, 1, 0);
      return v5;
    }

    return v5;
  }

  if (fabs(*(a2 + 8)) > 90.0)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Latitude,%f\n");
      goto LABEL_25;
    }

    return 2;
  }

  if (fabs(*(a2 + 16)) > 180.0)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Longitude,%f\n");
    goto LABEL_25;
  }

  if (*(a2 + 32) == 1 && fabs(*(a2 + 24)) > 100000.0)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Altitude,%f\n");
    goto LABEL_25;
  }

  if (*(a2 + 40) > 360.0)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Direction,%f\n");
    goto LABEL_25;
  }

  if (*(a2 + 48) > 100000.0)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Length,%f\n");
    goto LABEL_25;
  }

  if (*(a2 + 56) > 100000.0)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Width,%f\n");
    goto LABEL_25;
  }

  v8 = gnssOsa_Calloc("GNS_EaMapVectorSeg", 1543, 1, 0x70uLL);
  if (v8)
  {
    v9 = v8;
    *(v8 + 3) = a1;
    *(v8 + 4) = 7;
    *(v8 + 24) = *a2;
    v10 = *(a2 + 16);
    v11 = *(a2 + 32);
    v12 = *(a2 + 48);
    *(v8 + 85) = *(a2 + 61);
    *(v8 + 72) = v12;
    *(v8 + 56) = v11;
    *(v8 + 40) = v10;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v13 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 73, "GNS_EaMapVectorSeg", *(v9 + 4), *(v9 + 3));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8650755, v9);
    if (g_LbsOsaTrace_Config < 5)
    {
      return 1;
    }

    bzero(__str, 0x3C6uLL);
    v14 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 68, "GNS_EaMapVectorSeg");
    v5 = 1;
    goto LABEL_27;
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v15 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 68, "GNS_EaMapVectorSeg");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  return 6;
}

uint64_t GNS_EaIonosphereModel(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v5 = v4;
  v25[777] = *MEMORY[0x29EDCA608];
  if (v4 >= 4)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: IONO layers out of range,%u,max,%d\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GNS_EaIonosphereModel", v5, 3);
      v7 = 2;
      v8 = __str;
LABEL_17:
      gnssOsa_PrintLog(v8, 2, 1, 0);
      return v7;
    }

    return 2;
  }

  v9 = v3;
  v10 = v2;
  v11 = v1;
  bzero(v25, 0x1848uLL);
  *__str = v11;
  v23 = v10;
  v24 = v5;
  if (v5)
  {
    v12 = 0;
    v13 = 2072 * v5;
    while (1)
    {
      v14 = *(v9 + 8);
      if (v14 > 0x88)
      {
        break;
      }

      v15 = *(v9 + 10);
      if (v15 >= 0x79)
      {
        break;
      }

      v16 = &__str[v12];
      v17 = &__str[v12];
      *(v17 + 1) = *v9;
      *(v17 + 259) = *(v9 + 2192);
      if (v14)
      {
        memcpy(v16 + 24, (v9 + 16), 8 * v14);
      }

      *(v17 + 8) = v14;
      if (v15)
      {
        memcpy(v16 + 1112, (v9 + 1104), 8 * v15);
      }

      WORD1(v25[v12 / 8 + 1]) = v15;
      v12 += 2072;
      v9 += 2200;
      if (v13 == v12)
      {
        goto LABEL_13;
      }
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__s, 0x3C6uLL);
      v18 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: Num of Coeffs out of range,CosCoeffs,%u,MaxCosCoeffs,%d,SinCoeffs,%u,MaxSizCoeffs,%d\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 87, "GNS_EaIonosphereModel", *(v9 + 8), 136, *(v9 + 10), 120);
      v7 = 2;
      v8 = __s;
      goto LABEL_17;
    }

    return 2;
  }

LABEL_13:
  if (GN_AGNSS_Set_SH_Iono_Model(__str))
  {
    return 1;
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__s, 0x3C6uLL);
    v19 = mach_continuous_time();
    snprintf(__s, 0x3C5uLL, "%10u %s%c %s: Inject GN_AGNSS_Set_SH_Iono_Model failed\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 87, "GNS_EaIonosphereModel");
    gnssOsa_PrintLog(__s, 2, 1, 0);
  }

  return 0;
}

void NK_Get_Ext_Meas(unsigned int a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v150 = *MEMORY[0x29EDCA608];
  v8 = (a5 + 15411);
  v9 = a4 + 59948;
  v142 = 0;
  if ((*(a5 + 20) - 5) < 4)
  {
    EvLog("NK_Get_Ext_Meas: Ext Ref Pos and Alt Assist skipped in Airborne mode");
    goto LABEL_230;
  }

  v141 = 0.0;
  v10 = (a5 + 27120);
  v140 = 0;
  v138 = 0;
  v139 = 0;
  if (Core_Get_Pos_LLH(a1, 150000, 0, &v142, &v148, &v145, &v141, &v140 + 1, &v140, &v139, &v138))
  {
    v11 = v142;
    v12 = a1 - v142;
    *(v9 + 2224) = a1 - v142;
    if (v139 == 7)
    {
      *(v9 + 2424) = 1;
      *(v9 + 2436) = v12;
      if (HIBYTE(v140) == 1)
      {
        *(v9 + 2440) = 1;
        *(v9 + 2452) = v12;
      }
    }

    v13 = v138 - 3;
    v135 = (v138 - 3) < 2;
    if (*(a4 + 1864) != 1)
    {
      v16 = 1;
      goto LABEL_20;
    }

    v14 = v145;
    if (v145 <= 4.0e10 && v13 <= 1)
    {
      v134 = (a5 + 27120);
      v15 = (a5 + 27136);
      v135 = 1;
      v16 = 1;
LABEL_40:
      v133 = 1;
      goto LABEL_41;
    }

    v22 = *(a4 + 1704);
    v23 = __sincos_stret(v22);
    v24 = 1.0 / sqrt(v23.__sinval * v23.__sinval * -0.00669437999 + 1.0);
    v25 = *(a4 + 1720);
    v26 = v23.__cosval * (v25 + v24 * 6378137.0);
    if (v26 < 1.0)
    {
      v26 = 1.0;
    }

    v27 = (v22 - *&v148) * (v25 + v24 * (v24 * v24) * 6335439.33);
    v28 = (*(a4 + 1712) - *(&v148 + 1)) * v26 * ((*(a4 + 1712) - *(&v148 + 1)) * v26) + v27 * v27;
    if (v14 <= 4.0e10 || v28 >= fmax(v14 * 9.0, 4.0e10))
    {
      v16 = 1;
      if (*(a4 + 1872) != 1 || v13 < 2)
      {
        goto LABEL_20;
      }

      if (v28 >= 22500.0)
      {
        if (v28 >= 9000000.0)
        {
          v135 = 0;
          goto LABEL_20;
        }

        v29 = 3;
      }

      else
      {
        v29 = 4;
      }

      v138 = v29;
      if (v14 > v28)
      {
        v28 = v14;
      }

      v145 = v28;
      v134 = (a5 + 27120);
      v15 = (a5 + 27136);
      v135 = 1;
      goto LABEL_40;
    }

    *(v9 + 2428) = 24;
  }

  else
  {
    v135 = (v138 - 3) < 2;
  }

  if (*(a5 + 20) <= 4u)
  {
    v11 = *(a5 + 27144);
    if (v11)
    {
      v142 = *(a5 + 27144);
      v148 = *(a5 + 27152);
      v149 = *(a5 + 27168);
      v17 = *a4 - v11;
      if (v17 >= -999)
      {
        if (v17 > 3599999)
        {
          v19 = 200000.0;
          v20 = 4000.0;
        }

        else
        {
          v18 = (v17 / 1000) * 0.000277777778;
          v19 = v18 * 30000.0 + 400.0;
          v20 = v18 * 400.0 + 400.0;
          v142 = a1;
          v11 = a1;
        }

        v145 = v19 * v19;
        v146 = v19 * v19;
        v147 = 0;
        v141 = v20 * v20;
        v138 = 3;
        v133 = 2;
        v140 = 258;
        v135 = 1;
        v134 = (a5 + 27120);
        v15 = (a5 + 27136);
        v16 = 1;
        goto LABEL_41;
      }
    }
  }

  v16 = 0;
  v21 = 0;
  if ((v140 & 0x100) != 0)
  {
LABEL_20:
    v134 = (a5 + 27120);
    v15 = (a5 + 27136);
    if (*(a5 + 27136) && !v135)
    {
      v135 = 0;
      v21 = v16;
LABEL_152:
      v10 = v134;
      goto LABEL_153;
    }

    v11 = v142;
    v133 = v16;
LABEL_41:
    if ((a1 - v11) >= 0)
    {
      v30 = a1 - v11;
    }

    else
    {
      v30 = v11 - a1;
    }

    if (v30 < 0x3E8 || v11 - *(a5 + 15484) - 1000 <= 0xFFFFF830)
    {
      *(a5 + 15464) = 0u;
      *(a5 + 15480) = a1;
      *(a5 + 15484) = v11;
      v31 = 0.0;
      v32 = 0.0;
      if (v30 < 0x3E8)
      {
        goto LABEL_78;
      }
    }

    if (*(a4 + 1868) == 3)
    {
      v33 = *(v9 + 2108);
      if (v33 <= 3.0)
      {
        v57 = *(a4 + 1848);
        v40 = v57 + v33 * 3.0;
        v42 = 5.0;
        if (*(v9 + 2124) <= 3.0)
        {
          v58 = *(v9 + 2116);
          if (v58 <= 3.0)
          {
            v59 = *(a4 + 1840) * *(a4 + 1840) - v57 * v57;
            v60 = sqrt(v59) + v58 * 3.0;
            v61 = v59 < 0.0;
            v42 = 5.0;
            if (!v61)
            {
              v42 = v60;
            }
          }
        }

        goto LABEL_72;
      }
    }

    ExtA_UAC = Core_Get_ExtA_UAC(120000, v143);
    v35 = *(p_NA + 381);
    if (v35 == 1)
    {
      v36 = *(p_NA + 26780);
      if ((*(v9 + 2480) & 1) == 0)
      {
        *(v9 + 2472) = 1;
        *(v9 + 2480) = 1;
      }

      if (DWORD2(v143[0]) == 3)
      {
        v37 = ExtA_UAC;
      }

      else
      {
        v37 = 0;
      }

      if ((v37 & 1) == 0)
      {
        v38 = v36 - 2;
        if ((v36 - 2) < 6)
        {
          v39 = &unk_299050C28;
          goto LABEL_58;
        }

LABEL_70:
        v40 = 45.0;
        goto LABEL_71;
      }
    }

    else
    {
      if (DWORD2(v143[0]) == 3)
      {
        v41 = ExtA_UAC;
      }

      else
      {
        v41 = 0;
      }

      if (v41 != 1)
      {
        goto LABEL_70;
      }

      v36 = 0;
    }

    v40 = 45.0;
    if (SDWORD1(v143[0]) <= 5)
    {
      if (SDWORD1(v143[0]) > 3)
      {
        if (DWORD1(v143[0]) == 4)
        {
          v40 = 4.6;
          goto LABEL_71;
        }
      }

      else
      {
        if (DWORD1(v143[0]) == 2)
        {
          v40 = 2.4;
          goto LABEL_71;
        }

        if (DWORD1(v143[0]) != 3)
        {
          goto LABEL_71;
        }
      }

      v40 = 10.0;
      if (!v35)
      {
        goto LABEL_71;
      }

      v38 = v36 - 5;
      if ((v36 - 5) >= 3)
      {
        goto LABEL_71;
      }

      v39 = &unk_299050BF8;
    }

    else if (SDWORD1(v143[0]) <= 7)
    {
      if (DWORD1(v143[0]) == 6)
      {
        v40 = 16.9;
        if (!v35)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v40 = 30.0;
        if (!v35)
        {
          goto LABEL_71;
        }
      }

      v38 = v36 - 5;
      if ((v36 - 5) >= 3)
      {
        goto LABEL_71;
      }

      v39 = &unk_299050C10;
    }

    else
    {
      if (DWORD1(v143[0]) != 8)
      {
        if (DWORD1(v143[0]) == 10 || DWORD1(v143[0]) == 11)
        {
          v40 = 54.0;
        }

        goto LABEL_71;
      }

      if (!v35 || (v38 = v36 - 5, (v36 - 5) >= 3))
      {
LABEL_71:
        v42 = 5.0;
LABEL_72:
        v43 = *(a5 + 15480);
        if (v43)
        {
          v44 = a1 - v43;
          if (v44 < 0)
          {
            v44 = -v44;
          }

          v45 = v44 * 0.001;
        }

        else
        {
          v45 = 0.0;
        }

        v32 = *(a5 + 15464) + v40 * v45;
        *(a5 + 15464) = v32;
        v31 = *(a5 + 15472) + v42 * v45;
        *(a5 + 15472) = v31;
        *(a5 + 15480) = a1;
LABEL_78:
        v46 = *(a4 + 1872);
        v47 = dbl_299050BD0[v139 == 7];
        if (!v46)
        {
          v47 = 5400.0;
        }

        v48 = v32 <= v47;
        if (v32 > v47)
        {
          HIBYTE(v140) = 0;
          v21 = v133;
          if (v133 == 1)
          {
            v50 = 25;
            *(v9 + 2428) = 25;
            v51 = 0.0;
            v52 = 62392;
LABEL_133:
            *(a4 + v52) = v50;
            goto LABEL_134;
          }

          v48 = 0;
          v51 = 0.0;
          goto LABEL_134;
        }

        if (v139 == 7)
        {
          v49 = v32 * v32;
          if (v46)
          {
            v21 = v133;
          }

          else
          {
            v21 = v133;
            if (v138 != 4 && (v138 != 3 || *(a4 + 20) <= 7))
            {
              v49 = fmax(v49, 4356.0);
            }
          }

          v51 = v31 * v31;
          if (*(a5 + 20) < 5u)
          {
            v51 = v51 * 0.444444444;
          }

          if (v16)
          {
            v54 = v146;
            goto LABEL_127;
          }

          v48 = 0;
LABEL_134:
          v66 = v142;
          if (HIBYTE(v140) == 1)
          {
            v67 = v51 + v141;
            v141 = v67;
            *(v9 + 396) = HIBYTE(v140);
            *(v9 + 404) = v138;
            *(v9 + 416) = v66;
            *(v9 + 400) = v21;
            *(v9 + 420) = v149;
            *(v9 + 428) = v67;
            *(v9 + 452) = 0x4039000000000000;
            *(v9 + 408) = v140;
          }

          if (!v66)
          {
            v48 = 0;
          }

          if (v48 && (!*v15 || (*(a4 + 1864) & 1) == 0))
          {
            v68 = fmax(v145 * 9.0, 4.0e10);
            v69 = Horiz_Diff_Sqd((a4 + 1704), (a4 + 60240));
            if (v69 <= v68)
            {
              v70 = *(a4 + 1864) == 0;
            }

            else
            {
              *(a4 + 1864) = 0;
              v70 = 1;
            }

            if (v69 > 40000.0 && v70)
            {
              *(a4 + 1704) = *(a4 + 60240);
              if (HIBYTE(v140) == 1)
              {
                *(a4 + 1720) = *(v9 + 420);
              }

              Geo2ECEF(a4 + 1704, &WGS84_Datum, (a4 + 1560));
              NK_Transform_State(a4 + 1512);
              if (*(a5 + 148) && (*(a5 + 136) & 1) == 0)
              {
                *(a5 + 136) = 1;
                *(a5 + 140) = 94;
              }

              *(a5 + 244) = 5;
            }
          }

          goto LABEL_152;
        }

        v53 = fmin((v30 / 0x3E8 * (v30 / 0x3E8)) * 225.0, 4.0e10);
        v54 = v146;
        if (v146 < v53)
        {
          v54 = v145;
          v146 = v145;
          if (v145 < v53)
          {
            v145 = v53;
            v146 = v53;
            v54 = v53;
          }

          v147 = 0;
        }

        if (v140 > 1u)
        {
          v51 = 0.0;
          if (v16)
          {
            v49 = 0.0;
LABEL_126:
            v21 = v133;
LABEL_127:
            v62 = v147;
            v63 = v49 + v145;
            v64 = v54 + v49;
            *(a4 + 60240) = v148;
            v145 = v63;
            v146 = v64;
            *(v9 + 268) = 1;
            *(v9 + 276) = v138;
            *(v9 + 288) = v142;
            *(v9 + 272) = v21;
            *(v9 + 316) = v63;
            *(v9 + 324) = v64;
            *(v9 + 332) = v62;
            if (v46 || (v65 = 4.0, v135) && *v134 <= 0x18u)
            {
              v65 = 25.0;
            }

            *(v9 + 372) = v65;
            v50 = v140;
            v52 = 60228;
            goto LABEL_133;
          }
        }

        else
        {
          v55 = *(a5 + 20);
          if (v55 > 8)
          {
            v56 = 100.0;
          }

          else
          {
            v56 = dbl_299050C58[v55];
          }

          v51 = v56 * ((a1 - v11) * (a1 - v11));
          if (v140 == 1)
          {
            v51 = v51 * 0.5;
          }

          if (v16)
          {
            v49 = v51;
            goto LABEL_126;
          }
        }

        v48 = 0;
        v21 = v133;
        goto LABEL_134;
      }

      v39 = &unk_299050BE0;
    }

LABEL_58:
    v40 = v39[v38];
    goto LABEL_71;
  }

LABEL_153:
  if (*(a5 + 20) <= 4u)
  {
    v136 = 0u;
    v137 = 0u;
    if (Core_Get_ExtA_Alt(6000, &v136))
    {
      *(v9 + 2408) = 1;
      *(v9 + 2416) = 1;
      v71 = v136;
      v72 = *(p_api + 8);
      if (*v72)
      {
        v73 = v72[4] - (*v72 + v136);
      }

      else
      {
        v73 = 0;
      }

      *(v9 + 2420) = v73 + a1;
      v144 = 0;
      memset(v143, 0, sizeof(v143));
      if (Core_Get_ExtA_MapV(30000, v143))
      {
        if (v144 == 1)
        {
          *(v9 + 2416) = 0;
          *(v9 + 2412) = 8;
          EvCrt_v("NK_Get_Ext_Meas:  ERROR:  DEM Altitude provided when Map Vector indicates Tunnel");
        }

        if (BYTE4(v144) == 1)
        {
          *(v9 + 2416) = 0;
          *(v9 + 2412) = 9;
          EvCrt_v("NK_Get_Ext_Meas:  ERROR:  DEM Altitude provided when Map Vector indicates Bridge");
        }
      }

      if (HIBYTE(v140) == 1 && *(v9 + 396) == 1 && (*(v9 + 404) - 3) <= 1)
      {
        v74 = *&v137;
        v75 = v74 * v74;
        v76 = *(v9 + 428);
        if (v76 >= v74 * v74)
        {
          v77 = *(&v136 + 1);
          v78 = *(&v136 + 1) - *(v9 + 420);
          if (v78 * v78 > (v75 + v76) * 9.0)
          {
            *(v9 + 2416) = 0;
            *(v9 + 2412) = 11;
            EvCrt_v("NK_Get_Ext_Meas:  ERROR:  DEM Altitude rejected - Incompatible with Ref Pos, diff %f  Sigma %f %f", fabs(v78), v74, sqrt(v76));
            if ((a3[15] - 8) >= 0xFFFFFFFD && (*(v10 + 130) & 1) == 0 && (*(a5 + 136) & 1) == 0)
            {
              if (*(a5 + 148))
              {
                v79 = *(a4 + 1720) - v77;
                if (v79 * v79 < v75 * 16.0)
                {
                  *(a5 + 136) = 1;
                  *(a5 + 140) = 98;
                  EvLog_v("NK_Get_Ext_Meas:  KF Reset Type %d:  DEM Edit & KF Height near edited DEM Altitude,  diff %f  Sigma %f", 98, fabs(v79), sqrt(*(v9 + 428)));
                }
              }
            }
          }
        }

        else
        {
          *(v9 + 2416) = 0;
          *(v9 + 2412) = 10;
          EvCrt_v("NK_Get_Ext_Meas:  WARNING:  DEM Altitude rejected - Worse Sigma Unc than Ref Pos, %f > %f", v74, sqrt(v76));
        }
      }

      if (*(v9 + 2416) == 1)
      {
        *(v9 + 396) = 1;
        *(v9 + 400) = 1;
        v80 = *(p_api + 8);
        if (*v80)
        {
          v81 = *v80 + v71 - v80[4];
        }

        else
        {
          v81 = 0;
        }

        *(v9 + 416) = v81;
        v82 = *(&v136 + 1);
        *(v9 + 420) = *(&v136 + 1);
        v83 = 1;
        if (SDWORD2(v137) > 1)
        {
          if (DWORD2(v137) == 2)
          {
            v83 = 3;
          }

          else if (DWORD2(v137) == 3)
          {
            v83 = 4;
          }
        }

        else if (DWORD2(v137))
        {
          if (DWORD2(v137) == 1)
          {
            v83 = 2;
          }
        }

        else if (*&v137 >= 25.0)
        {
          v83 = 3;
        }

        else
        {
          v83 = 4;
        }

        *(v9 + 404) = v83;
        v84 = *(v9 + 2420);
        if (v84 < 0)
        {
          v84 = -v84;
        }

        v85 = v84 * 0.001;
        if (*(v10 + 129))
        {
          v85 = v85 * 0.1;
        }

        v86 = v85 * v85 + *&v137 * *&v137;
        *(v9 + 428) = v86;
        v87 = *(v10 + 130);
        if (v87 == 1)
        {
          v88 = a3[15];
          v89 = 25.0;
          if ((v88 - 5) < 3)
          {
            v89 = dbl_299050CA0[v88 - 5];
          }
        }

        else
        {
          v89 = 25.0;
          if (!*a3)
          {
            v89 = 9.0;
          }

          v88 = a3[15];
        }

        *(v9 + 452) = v89;
        *(v9 + 408) = 0;
        HIBYTE(v140) = 1;
        if ((v88 - 5) <= 2)
        {
          if (v87)
          {
            if ((*(a5 + 136) & 1) == 0)
            {
              if (*(a5 + 148))
              {
                v90 = *(a4 + 1720) - v82;
                v91 = *(v9 + 2060);
                if (v90 * v90 > (v86 + v91 * v91) * 16.0)
                {
                  *(a5 + 136) = 1;
                  *(a5 + 140) = 95;
                  EvLog_v("NK_Get_Ext_Meas:  KF Reset Type %d:  DEM Altitude Incompatible with current Height, diff %f  Sigma %f %f", 95, fabs(v90), sqrt(v86), v91);
                }
              }
            }
          }
        }
      }
    }
  }

  if ((!v10[4] || *(a5 + 241) == 1) && *(v9 + 2068) > 200.0 && *(a5 + 20) <= 4u)
  {
    v92 = HIBYTE(v140);
    if (!HIBYTE(v140) || *(v9 + 2060) < 100000.0 && *(v9 + 428) > 40000.0)
    {
      *(v9 + 396) = 1;
      *(v9 + 416) = a1;
      *(v9 + 400) = 0x300000002;
      *(v9 + 428) = 0x414E848000000000;
      if (v21 && v92 && v149 > -500.0 && v149 < 6000.0)
      {
        *(v9 + 420) = v149;
        if (v135)
        {
          *(v9 + 428) = v141;
        }
      }

      else
      {
        v93 = (a4 + 1720);
        *&v143[0] = 0;
        if (R8_EQ((a4 + 1720), v143) || (v94 = *v93, *v93 <= -500.0) || v94 >= 6000.0)
        {
          *(v9 + 420) = 0x407F400000000000;
        }

        else
        {
          *(v9 + 420) = v94;
        }
      }

      *(v9 + 452) = 0x4039000000000000;
      *(v9 + 408) = 2;
    }
  }

  if ((*(a4 + 1864) & 1) == 0 && *(v9 + 268) == 1 && *(v9 + 272) == 1 && *(v9 + 396) == 1)
  {
    *(a4 + 1864) = 1;
  }

LABEL_230:
  if (*(v9 + 268) == 1)
  {
    *v8 = 1;
    *(a5 + 15432) = *(v9 + 288);
    *(a5 + 15440) = *(v9 + 316);
  }

  else if (*v8 == 1 && (a1 - *(a5 + 15432)) > 120000)
  {
    *v8 = 0;
  }

  if (*(v9 + 396) == 1)
  {
    v8[1] = 1;
    *(a5 + 15448) = *(v9 + 416);
    *(a5 + 15456) = *(v9 + 428);
  }

  else if (v8[1] == 1 && (a1 - *(a5 + 15448)) > 120000)
  {
    v8[1] = 0;
  }

  *(v9 + 196) = 0;
  *&v143[0] = 0;
  *&v136 = 0;
  LOBYTE(v148) = 0;
  if (Core_Get_Clk_Drift(a1, 300, &v142, v143, &v136, &v148))
  {
    *(v9 + 196) = 1;
    *(v9 + 200) = 1;
    *(v9 + 216) = v142;
    v95 = *v143;
    *(v9 + 220) = *v143 * 299792458.0;
    v96 = *&v136 * 8.98755179e16;
    *(v9 + 228) = *&v136 * 8.98755179e16;
    *(v9 + 252) = 0x4030000000000000;
    *(v9 + 208) = v148;
    if (v96 < *(v9 + 2140) * *(v9 + 2140))
    {
      v97 = *(p_api + 48);
      if (*(v97 + 16) == 1 && *v97 >= 3)
      {
        v98 = *(v97 + 40) + 604800 * *(v97 + 32);
        if (v98 <= 0)
        {
          v99 = v98;
        }

        else
        {
          v99 = v98 - 1800;
        }
      }

      else
      {
        v99 = 0;
      }

      Core_Save_Clk_Drift(1, v99, v95);
      EvLog_v("NK_Get_Ext_Meas: Core_Save_Clk_Drift %g, Sigma(m/s) %g < %g", v95 * 1000000000.0, sqrt(*(v9 + 228)), *(v9 + 2140));
    }
  }

  *&v143[0] = 0;
  *&v148 = 0;
  *(v9 + 596) = 0;
  if (Core_Get_Speed(a1, &v142, v143, &v148, &v136))
  {
    v100 = v142;
    v101 = a1 - v142;
    if ((a1 - v142) < 0)
    {
      v101 = v142 - a1;
    }

    if (v101 <= 0x1F4)
    {
      *(v9 + 596) = 1;
      *(v9 + 600) = 1;
      *(v9 + 612) = v100;
      *(v9 + 620) = *&v143[0];
      *(v9 + 628) = v148;
      *(v9 + 652) = 0x4030000000000000;
    }
  }

  *&v148 = 0;
  v141 = 0.0;
  *(v9 + 668) = 0;
  if (Core_Get_GSpeed(a1, &v142, &v148, &v141, &v145))
  {
    v102 = v142;
    v103 = a1 - v142;
    if ((a1 - v142) < 0)
    {
      v103 = v142 - a1;
    }

    if (v103 <= 0x1F4)
    {
      *(v9 + 668) = 1;
      *(v9 + 672) = 1;
      *(v9 + 684) = v102;
      *(v9 + 692) = v148;
      *(v9 + 700) = v141;
      *(v9 + 724) = 0x4030000000000000;
    }
  }

  if (*(a5 + 20) < 5u)
  {
    memset(v143, 0, 24);
    if (Core_Get_ExtA_AT_Vel(1000, v143))
    {
      *(v9 + 2488) = 1;
      *(v9 + 2496) = 1;
      *(v9 + 2492) = 0;
      v104 = *(p_api + 8);
      if (*v104)
      {
        v105 = LODWORD(v143[0]) + *v104 - v104[4];
      }

      else
      {
        v105 = 0;
      }

      *(v9 + 2500) = a1 - v105;
      v106 = *&v143[1] * *&v143[1];
      if (*(v9 + 668) == 1 && *(v9 + 700) < v106)
      {
        *(v9 + 2496) = 0;
        if (*(v9 + 672) == 1)
        {
          *(v9 + 2492) = 30;
          EvCrt_v("Set_ExtA_VA_Horz_Spd: EXTA VA Along-Track Speed rejected - Worse Sigma Unc than Existing EXT Ground Speed Aiding [%d], %f > %f");
        }

        else
        {
          *(v9 + 2492) = 31;
          EvCrt_v("Set_ExtA_VA_Horz_Spd: EXTA VA Along-Track Speed rejected - Worse Sigma Unc than Existing INT Ground Speed Aiding [%d], %f > %f");
        }
      }

      else if (*v9 == 1 && *(v9 + 32) == 1 && (*(v143 + 1) >= 3.0 || *(v143 + 1) >= *&v143[1] * 3.0))
      {
        *(v9 + 2496) = 0;
        *(v9 + 2492) = 28;
        EvCrt_v("Set_ExtA_VA_Horz_Spd: VA Along-Track Speed rejected - Discrepancy with CTXT Static Status, AT Spd %f  Sigma %f");
      }

      else
      {
        v136 = 0uLL;
        *&v137 = 0;
        if (Core_Get_ExtA_SpdC(120000, &v136) && ((v107 = *(p_api + 8), !*v107) ? (v108 = 0) : (v108 = v107[4] - (v136 + *v107)), (v108 + a1) <= SDWORD1(v136) && (*(v143 + 1) > *&v137 || *(v143 + 1) < *(&v136 + 1))))
        {
          *(v9 + 2496) = 0;
          *(v9 + 2492) = 27;
          EvCrt_v("Set_ExtA_VA_Horz_Spd: VA Along-Track Speed rejected - Out of Speed constrains, AT Spd %f  SpdC %f %f");
        }

        else
        {
          *(v9 + 668) = 1;
          *(v9 + 684) = v105;
          *(v9 + 692) = *(&v143[0] + 1);
          *(v9 + 700) = v106;
          *(v9 + 672) = 0x400000001;
          *(v9 + 724) = 0x4030000000000000;
        }
      }
    }

    if (*(a5 + 20) <= 4u)
    {
      memset(v143, 0, 24);
      if (Core_Get_ExtA_V_Vel(1000, v143))
      {
        *(v9 + 2504) = 1;
        *(v9 + 2512) = 1;
        *(v9 + 2508) = 0;
        v109 = *(p_api + 8);
        if (*v109)
        {
          v110 = LODWORD(v143[0]) + *v109 - v109[4];
        }

        else
        {
          v110 = 0;
        }

        *(v9 + 2516) = a1 - v110;
        v111 = *&v143[1];
        if (*v9 == 1 && *(v9 + 32) == 1 && ((v112 = *(v143 + 1), v113 = fabs(*(v143 + 1)), v113 >= 3.0) || v113 >= *&v143[1] * 3.0))
        {
          *(v9 + 2512) = 0;
          *(v9 + 2508) = 32;
          EvCrt_v("Set_ExtA_VA_Vert_Vel: VA Vert Velocity rejected - Discrepancy with CTXT Static Status, Vert vel %f  Sigma %f", v112, v111);
        }

        else
        {
          *(v9 + 468) = 1;
          *(v9 + 488) = v110;
          *(v9 + 492) = *(&v143[0] + 1);
          *(v9 + 500) = v111 * v111;
          *(v9 + 472) = 0x400000001;
          *(v9 + 524) = 0x4030000000000000;
        }
      }
    }
  }

  *&v136 = 0;
  v145 = 0.0;
  v141 = 0.0;
  *(v9 + 740) = 0;
  if (Core_Get_Track(a1, &v142, &v136, &v141, &v145, &v148))
  {
    v114 = v142;
    v115 = a1 - v142;
    if ((a1 - v142) < 0)
    {
      v115 = v142 - a1;
    }

    if (v115 <= 0x1F4)
    {
      *(v9 + 740) = 1;
      *(v9 + 744) = 1;
      *(v9 + 756) = v114;
      *(v9 + 764) = v136;
      *(v9 + 772) = v145;
      *(v9 + 796) = 0x4030000000000000;
      *(v9 + 812) = v141;
    }
  }

  if (*(a5 + 20) < 5u)
  {
    memset(v143, 0, 24);
    if (Core_Get_ExtA_Heading(1000, v143))
    {
      *(v9 + 2520) = 1;
      *(v9 + 2528) = 1;
      *(v9 + 2524) = 0;
      v116 = *(p_api + 8);
      if (*v116)
      {
        v117 = LODWORD(v143[0]) + *v116 - v116[4];
      }

      else
      {
        v117 = 0;
      }

      *(v9 + 2532) = a1 - v117;
      v118 = *&v143[1] * *&v143[1];
      if (*(v9 + 740) == 1 && *(v9 + 772) < v118)
      {
        *(v9 + 2528) = 0;
        if (*(v9 + 744) == 1)
        {
          *(v9 + 2524) = 36;
          EvCrt_v("Set_ExtA_VA_Heading: EXTA VA Heading rejected - Worse Sigma Unc than Existing EXT Track Aiding [%d], %f > %f");
        }

        else
        {
          *(v9 + 2524) = 37;
          EvCrt_v("Set_ExtA_VA_Heading: EXTA VA Heading rejected - Worse Sigma Unc than Existing INT Track Aiding [%d], %f > %f");
        }
      }

      else
      {
        *(v9 + 740) = 1;
        *(v9 + 756) = v117;
        *(v9 + 764) = *(&v143[0] + 1);
        *(v9 + 772) = v118;
        *(v9 + 780) = *(a4 + 1856);
        *(v9 + 744) = 0x400000001;
        *(v9 + 796) = 0x4030000000000000;
        *(v9 + 812) = 0x3FF0000000000000;
      }
    }

    if (*(a5 + 20) <= 4u)
    {
      memset(v143, 0, 24);
      if (Core_Get_ExtA_SpdC(120000, v143))
      {
        v119 = v143[0];
        v120 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v119;
        if (v120 >= SDWORD1(v143[0]))
        {
          v121 = 2;
          v122 = 62488;
        }

        else
        {
          v121 = 1;
          *(v9 + 1444) = 1;
          v122 = 61396;
        }

        *(a4 + v122) = v121;
        v126 = *(p_api + 8);
        if (*v126)
        {
          v127 = *v126 + v119 - v126[4];
        }

        else
        {
          v127 = 0;
        }

        *(v9 + 1452) = v127;
        *(a4 + 61408) = *(v143 + 8);
      }

      else
      {
        if (*(v9 + 668) != 1 || *(v9 + 672) != 1 || *(v9 + 676) != 4)
        {
LABEL_323:
          if (*(v9 + 1444) == 1)
          {
            v128 = *(v9 + 1460);
            v129 = *(a4 + 1848);
            if (v128 <= v129 + 0.3 || (*(v9 + 1444) = 0, *(v9 + 2540) = 41, EvCrt_v("NK_Get_Ext_Meas:  Speed Constraint Rejected:  Lower Limit > 2D_Speed+0.3 m/s, %f > %f", v128, v129), (*(v9 + 1444) & 1) != 0))
            {
              v130 = *(v9 + 1468);
              v131 = *(a4 + 1840);
              if (v130 < v131 + -0.3)
              {
                *(v9 + 1444) = 0;
                *(v9 + 2540) = 42;
                EvCrt_v("NK_Get_Ext_Meas:  Speed Constraint Rejected:  Upper Limit < 3D_Speed-0.3 m/s, %f < %f", v130, v131);
              }
            }
          }

          return;
        }

        *(v9 + 1444) = 1;
        *(v9 + 1448) = 2;
        v123 = *(v9 + 684);
        *(v9 + 1452) = v123;
        v124 = sqrt(*(v9 + 700)) * 3.0;
        v125 = *(v9 + 692);
        *(v9 + 1460) = fmax(v125 - v124, 0.0);
        *(v9 + 1468) = fmin(v125 + v124, 12.0);
        v120 = a1 - v123;
      }

      *(v9 + 2536) = 1;
      *(v9 + 2548) = v120;
      goto LABEL_323;
    }
  }
}

uint64_t XofConstellationHeader::XofConstellationHeader(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = result + 8;
  v4 = 336;
  do
  {
    *(v3 - 4) = 0;
    *(v3 - 8) = 0;
    *v3 = 0uLL;
    *(v3 + 16) = 0uLL;
    *(v3 + 32) = 0;
    v3 += 48;
    v4 -= 48;
  }

  while (v4);
  v5 = 0;
  v6 = *a2;
  do
  {
    v7 = v6 + v5;
    *v2 = *(v6 + v5 + 3);
    *(v2 + 1) = *(v6 + v5 + 35);
    *(v2 + 2) = *(v6 + v5 + 67);
    *(v2 + 3) = *(v6 + v5 + 99);
    *(v2 + 4) = *(v6 + v5 + 131);
    v8 = *(v6 + v5 + 304);
    *(v2 + 8) = *(v6 + v5 + 248);
    *(v2 + 16) = v8;
    v9 = *(v6 + v5 + 416);
    *(v2 + 24) = *(v6 + v5 + 360);
    *(v2 + 32) = v9;
    v5 += 504;
    *(v2 + 40) = *(v7 + 472);
    v2 += 48;
  }

  while (v5 != 3528);
  return result;
}

uint64_t XofConstellationHeaderCodec::DecodeFromHexData(uint64_t *a1, void *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    return 1;
  }

  while (XofIntegralType<unsigned char>::DecodeFromHexData(v3, a2, a3) == 1)
  {
    if (XofIntegralType<unsigned char>::DecodeFromHexData((v3 + 32), a2, a3) != 1)
    {
      break;
    }

    if (XofIntegralType<unsigned char>::DecodeFromHexData((v3 + 64), a2, a3) != 1)
    {
      break;
    }

    if (XofIntegralType<unsigned char>::DecodeFromHexData((v3 + 96), a2, a3) != 1)
    {
      break;
    }

    if (XofIntegralType<unsigned char>::DecodeFromHexData((v3 + 128), a2, a3) != 1)
    {
      break;
    }

    if (XofIntegralType<unsigned char>::DecodeFromHexData((v3 + 160), a2, a3) != 1)
    {
      break;
    }

    if (XofIntegralType<unsigned short>::DecodeFromHexData((v3 + 192), a2, a3) != 1)
    {
      break;
    }

    if (XofIntegralType<unsigned long long>::DecodeFromHexData((v3 + 224), a2, a3) != 1)
    {
      break;
    }

    if (XofIntegralType<unsigned long long>::DecodeFromHexData((v3 + 280), a2, a3) != 1)
    {
      break;
    }

    if (XofIntegralType<unsigned long long>::DecodeFromHexData((v3 + 336), a2, a3) != 1)
    {
      break;
    }

    if (XofIntegralType<unsigned long long>::DecodeFromHexData((v3 + 392), a2, a3) != 1)
    {
      break;
    }

    v7 = v3 + 448;
    if (XofIntegralType<unsigned long long>::DecodeFromHexData((v3 + 448), a2, a3) != 1)
    {
      break;
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      v9 = *(v3 + 3);
      v10 = "   ";
      if (v9 <= 7)
      {
        v10 = off_29EF06418[v9];
      }

      v11 = (*&g_MacClockTicksToMsRelation * v8);
      std::string::basic_string[abi:ne200100]<0>(__p, v10);
      if (v15 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Decoded XOF Header constellation data for [%s]\n", v11, "GNC", 68, "DecodeFromHexData", v12);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    v3 = v7 + 56;
    if (v7 + 56 == v4)
    {
      return 1;
    }
  }

  return 5;
}

uint64_t XofHeader::XofHeader(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v8 = *MEMORY[0x29EDCA608];
  *(a1 + 8) = 0;
  *a1 = 0;
  do
  {
    v5 = a1 + v4;
    *(v5 + 20) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0uLL;
    *(v5 + 40) = 0uLL;
    v4 += 48;
    *(v5 + 56) = 0;
  }

  while (v4 != 336);
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *a1 = *(a2 + 6);
  *(a1 + 2) = *(a2 + 38);
  *(a1 + 4) = *(a2 + 76);
  *(a1 + 8) = *(a2 + 142);
  *(a1 + 12) = *(a2 + 180);
  XofConstellationHeader::XofConstellationHeader(__src, (a2 + 208));
  memcpy((a1 + 16), __src, 0x150uLL);
  *(a1 + 352) = *(a2 + 300);
  *(a1 + 356) = *(a2 + 340);
  *(a1 + 360) = *(a2 + 420);
  return a1;
}

BOOL XofHeaderCodec::Decode(uint64_t a1, void *a2, _DWORD *a3)
{
  if (XofIntegralType<unsigned short>::DecodeFromHexData(a1, a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 32), a2, a3) != 1 || XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 64), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 104), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 136), a2, a3) != 1 || XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 168), a2, a3) != 1)
  {
    return 0;
  }

  return XofGenericCodec::Decode<6ul,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofConstellationHeaderCodec,XofIntegralType<unsigned long long>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>>(a1, a2, a3);
}

uint64_t XofHeaderCodec::DecodeXofFormatVersion(uint64_t a1, void *a2, _WORD *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&__p, "formatVersion");
  XofIntegralType<unsigned short>::XofIntegralType(v10, &__p, 1, 3, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v8 = 0;
  if (XofIntegralType<unsigned short>::DecodeFromHexData(v10, a2, &v8) == 1)
  {
    *a3 = v10[3];
    v5 = 1;
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Could not decode XOF format version!\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 69, "DecodeXofFormatVersion");
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    v5 = 5;
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  return v5;
}

void sub_298F669F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XofIntegralType<unsigned short>::DecodeFromHexData(unsigned __int16 *a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  if ((a2[1] - (*a2 + v5)) <= 1)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = (a1 + 4);
      if (*(a1 + 31) < 0)
      {
        v7 = *v7;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Insufficient data to decode, in the buffer! Field decoding is %s\n", v6, "GNC", 87, "DecodeFromHexData", v7);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    return 5;
  }

  *__str = 0;
  if (!XofBaseType::CopyDataFromBuffer(a1, a2, v5, 2uLL, __str))
  {
    return 5;
  }

  v8 = *__str;
  a1[3] = *__str;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(a1 + 1), *(a1 + 2));
  }

  else
  {
    v14 = *(a1 + 4);
  }

  v13 = XofBaseType::ValidateUnsignedRange(a1, v8, v9, v10, v11, &v14);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  *a3 += 2;
  if (v13)
  {
    return 1;
  }

  else
  {
    return 5;
  }
}

void sub_298F66BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<XofConstellationHeaderCodec::Payload>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<XofConstellationHeaderCodec::Payload>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_298F66C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<XofConstellationHeaderCodec::Payload>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<XofConstellationHeaderCodec::Payload>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x82082082082083)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<XofConstellationHeaderCodec::Payload>>(a1, a2);
  }

  std::vector<XofConstellationHeaderCodec::Payload>::__throw_length_error[abi:ne200100]();
}

XofConstellationHeaderCodec::Payload *std::vector<XofConstellationHeaderCodec::Payload>::__construct_at_end(XofConstellationHeaderCodec::Payload *result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 1);
  if (a2)
  {
    v4 = v3 + 504 * a2;
    v5 = 504 * a2;
    do
    {
      *(v3 + 496) = 0;
      *(v3 + 464) = 0u;
      *(v3 + 480) = 0u;
      *(v3 + 432) = 0u;
      *(v3 + 448) = 0u;
      *(v3 + 400) = 0u;
      *(v3 + 416) = 0u;
      *(v3 + 368) = 0u;
      *(v3 + 384) = 0u;
      *(v3 + 336) = 0u;
      *(v3 + 352) = 0u;
      *(v3 + 304) = 0u;
      *(v3 + 320) = 0u;
      *(v3 + 272) = 0u;
      *(v3 + 288) = 0u;
      *(v3 + 240) = 0u;
      *(v3 + 256) = 0u;
      *(v3 + 208) = 0u;
      *(v3 + 224) = 0u;
      *(v3 + 176) = 0u;
      *(v3 + 192) = 0u;
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
      result = XofConstellationHeaderCodec::Payload::Payload(v3);
      v3 += 504;
      v5 -= 504;
    }

    while (v5);
    v3 = v4;
  }

  *(v2 + 1) = v3;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<XofConstellationHeaderCodec::Payload>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x82082082082083)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

XofConstellationHeaderCodec::Payload *XofConstellationHeaderCodec::Payload::Payload(XofConstellationHeaderCodec::Payload *this)
{
  v68 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v64, "constId");
  XofIntegralType<unsigned char>::XofIntegralType(&v65, &v64, 0, 6, 0);
  std::string::basic_string[abi:ne200100]<0>(&v60, "brdcstAlmNumSats");
  XofIntegralType<unsigned char>::XofIntegralType(&v61, &v60, 0, 197, 0);
  std::string::basic_string[abi:ne200100]<0>(&v56, "brdcstEphNumSats");
  XofIntegralType<unsigned char>::XofIntegralType(&v57, &v56, 0, 197, 0);
  std::string::basic_string[abi:ne200100]<0>(&v52, "extEphNumSats");
  XofIntegralType<unsigned char>::XofIntegralType(&v53, &v52, 0, 197, 0);
  std::string::basic_string[abi:ne200100]<0>(&v48, "extEphNumBlocks");
  XofIntegralType<unsigned char>::XofIntegralType(&v49, &v48, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v44, "reserved1");
  XofIntegralType<unsigned char>::XofIntegralType(&v45, &v44, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v40, "reserved2");
  XofIntegralType<unsigned short>::XofIntegralType(&v41, &v40, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v36, "extEphprnBitmask");
  XofIntegralType<unsigned long long>::XofIntegralType(v37, &v36, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v32, "l1CABrdcstingSats");
  XofIntegralType<unsigned long long>::XofIntegralType(v33, &v32, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v28, "l5BrdcstingSats");
  XofIntegralType<unsigned long long>::XofIntegralType(v29, &v28, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v24, "l1CADoNotUseSats");
  XofIntegralType<unsigned long long>::XofIntegralType(v25, &v24, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "l5DoNotUseSats");
  XofIntegralType<unsigned long long>::XofIntegralType(v21, &__p, 0, -1, 0);
  *this = v65;
  *(this + 8) = v66;
  *(this + 3) = v67;
  v66 = 0uLL;
  v67 = 0;
  *(this + 8) = v61;
  *(this + 40) = v62;
  *(this + 7) = v63;
  v63 = 0;
  v62 = 0uLL;
  *(this + 16) = v57;
  v2 = v58;
  *(this + 11) = v59;
  *(this + 72) = v2;
  v58 = 0uLL;
  v59 = 0;
  *(this + 24) = v53;
  v3 = v54;
  *(this + 15) = v55;
  *(this + 104) = v3;
  v54 = 0uLL;
  v55 = 0;
  *(this + 32) = v49;
  v4 = v50;
  *(this + 19) = v51;
  *(this + 136) = v4;
  v50 = 0uLL;
  v51 = 0;
  *(this + 40) = v45;
  v5 = v47;
  *(this + 168) = v46;
  v46 = 0uLL;
  v47 = 0;
  v6 = v41;
  v7 = v43;
  *(this + 23) = v5;
  *(this + 24) = v6;
  v8 = v42;
  *(this + 27) = v7;
  *(this + 200) = v8;
  v42 = 0uLL;
  v43 = 0;
  v9 = v37[1];
  *(this + 14) = v37[0];
  *(this + 15) = v9;
  v10 = v38;
  *(this + 34) = v39;
  *(this + 16) = v10;
  v38 = 0uLL;
  v39 = 0;
  v11 = v33[1];
  *(this + 280) = v33[0];
  *(this + 296) = v11;
  v12 = v34;
  *(this + 41) = v35;
  *(this + 312) = v12;
  v34 = 0uLL;
  v35 = 0;
  v13 = v29[1];
  *(this + 21) = v29[0];
  *(this + 22) = v13;
  v14 = v30;
  *(this + 48) = v31;
  *(this + 23) = v14;
  v30 = 0uLL;
  v31 = 0;
  v15 = v25[1];
  *(this + 392) = v25[0];
  *(this + 408) = v15;
  v16 = v26;
  *(this + 55) = v27;
  *(this + 424) = v16;
  v26 = 0uLL;
  v27 = 0;
  v17 = v21[1];
  *(this + 28) = v21[0];
  *(this + 29) = v17;
  v18 = v22;
  *(this + 62) = v23;
  *(this + 30) = v18;
  v22 = 0uLL;
  v23 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
    }
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_298F67414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a65 < 0)
  {
    operator delete(a64);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a69 < 0)
  {
    operator delete(a68);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a71 < 0)
  {
    operator delete(a70);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (*(v77 - 193) < 0)
  {
    operator delete(*(v77 - 216));
  }

  if (*(v77 - 225) < 0)
  {
    operator delete(*(v77 - 248));
  }

  if (*(v77 - 137) < 0)
  {
    operator delete(*(v77 - 160));
  }

  if (*(v77 - 169) < 0)
  {
    operator delete(*(v77 - 192));
  }

  if (*(v77 - 81) < 0)
  {
    operator delete(*(v77 - 104));
  }

  if (*(v77 - 113) < 0)
  {
    operator delete(*(v77 - 136));
  }

  if (*(v77 - 25) < 0)
  {
    operator delete(*(v77 - 48));
  }

  if (*(v77 - 57) < 0)
  {
    operator delete(*(v77 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t XofIntegralType<unsigned char>::XofIntegralType(uint64_t a1, const std::string *a2, char a3, char a4, char a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::string::operator=((a1 + 8), a2);
  *a1 = a4;
  *(a1 + 1) = a3;
  *(a1 + 2) = a5;
  *(a1 + 3) = a5;
  return a1;
}

void sub_298F676E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XofIntegralType<unsigned long long>::XofIntegralType(uint64_t a1, const std::string *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::string::operator=((a1 + 32), a2);
  *a1 = a4;
  *(a1 + 8) = a3;
  *(a1 + 16) = a5;
  *(a1 + 24) = a5;
  return a1;
}

void sub_298F6778C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<XofConstellationHeaderCodec::Payload>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned long long>,XofIntegralType<unsigned long long>,XofIntegralType<unsigned long long>,XofIntegralType<unsigned long long>,XofIntegralType<unsigned long long>>::~__tuple_impl(v4 - 504);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned long long>,XofIntegralType<unsigned long long>,XofIntegralType<unsigned long long>,XofIntegralType<unsigned long long>,XofIntegralType<unsigned long long>>::~__tuple_impl(uint64_t a1)
{
  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  if (*(a1 + 447) < 0)
  {
    operator delete(*(a1 + 424));
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t XofIntegralType<unsigned char>::DecodeFromHexData(unsigned __int8 *a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  if (a2[1] - *a2 == v5)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = (a1 + 8);
      if (a1[31] < 0)
      {
        v7 = *v7;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Insufficient data to decode, in the buffer! Field decoding is %s\n", v6, "GNC", 87, "DecodeFromHexData", v7);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    return 5;
  }

  *__str = 0;
  if (!XofBaseType::CopyDataFromBuffer(a1, a2, v5, 1uLL, __str))
  {
    return 5;
  }

  v8 = __str[0];
  a1[3] = __str[0];
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  if (a1[31] < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(a1 + 1), *(a1 + 2));
  }

  else
  {
    v14 = *(a1 + 8);
  }

  v13 = XofBaseType::ValidateUnsignedRange(a1, v8, v9, v10, v11, &v14);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  ++*a3;
  if (v13)
  {
    return 1;
  }

  else
  {
    return 5;
  }
}

void sub_298F67B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
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

uint64_t XofIntegralType<unsigned long long>::DecodeFromHexData(uint64_t *a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  if ((a2[1] - (*a2 + v5)) <= 7)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = (a1 + 4);
      if (*(a1 + 55) < 0)
      {
        v7 = *v7;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Insufficient data to decode, in the buffer! Field decoding is %s\n", v6, "GNC", 87, "DecodeFromHexData", v7);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    return 5;
  }

  *__str = 0;
  if (!XofBaseType::CopyDataFromBuffer(a1, a2, v5, 8uLL, __str))
  {
    return 5;
  }

  v8 = *__str;
  a1[3] = *__str;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, a1[4], a1[5]);
  }

  else
  {
    v14 = *(a1 + 4);
  }

  v13 = XofBaseType::ValidateUnsignedRange(a1, v8, v9, v10, v11, &v14);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  *a3 += 8;
  if (v13)
  {
    return 1;
  }

  else
  {
    return 5;
  }
}

void sub_298F67DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XofIntegralType<unsigned int>::DecodeFromHexData(unsigned int *a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  if ((a2[1] - (*a2 + v5)) <= 3)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = (a1 + 4);
      if (*(a1 + 39) < 0)
      {
        v7 = *v7;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Insufficient data to decode, in the buffer! Field decoding is %s\n", v6, "GNC", 87, "DecodeFromHexData", v7);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    return 5;
  }

  *__str = 0;
  if (!XofBaseType::CopyDataFromBuffer(a1, a2, v5, 4uLL, __str))
  {
    return 5;
  }

  v8 = *__str;
  a1[3] = *__str;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(a1 + 2), *(a1 + 3));
  }

  else
  {
    v14 = *(a1 + 4);
  }

  v13 = XofBaseType::ValidateUnsignedRange(a1, v8, v9, v10, v11, &v14);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  *a3 += 4;
  if (v13)
  {
    return 1;
  }

  else
  {
    return 5;
  }
}

void sub_298F67FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XofIntegralType<unsigned short>::XofIntegralType(uint64_t a1, const std::string *a2, __int16 a3, __int16 a4, __int16 a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::string::operator=((a1 + 8), a2);
  *a1 = a4;
  *(a1 + 2) = a3;
  *(a1 + 4) = a5;
  *(a1 + 6) = a5;
  return a1;
}

void sub_298F68180(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

float64x2_t BDS_BGTOInt2Real(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = v2 * 2.91038305e-11 + *(a1 + 24) * 2.91038305e-11;
  v3.f64[0] = *(a1 + 20);
  v3.f64[1] = *(a1 + 22);
  result = vmulq_f64(v3, xmmword_299050CC0);
  *(a2 + 24) = result;
  return result;
}

BOOL AzEl_SinCos(double *a1, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x29EDCA608];
  v5 = a1[2];
  *(a3 + 8) = -v5;
  if (v5 <= -1.0)
  {
    v7 = 0x3FF0000000000000;
LABEL_6:
    *(a3 + 8) = v7;
    v6 = 0.0;
    goto LABEL_7;
  }

  if (v5 >= 1.0)
  {
    v7 = 0xBFF0000000000000;
    goto LABEL_6;
  }

  v6 = sqrt(v5 * -v5 + 1.0);
LABEL_7:
  *(a3 + 16) = v6;
  v12[0] = 0.0;
  result = R8_EQ((a3 + 16), v12);
  if (result)
  {
    goto LABEL_8;
  }

  v10 = a1[1] / v6;
  *(a2 + 8) = v10;
  v11 = *a1 / v6;
  *(a2 + 16) = v11;
  if (v10 >= 1.0)
  {
    v9 = xmmword_299050CD0;
    goto LABEL_16;
  }

  if (v10 <= -1.0)
  {
    v9 = xmmword_299050CE0;
    goto LABEL_16;
  }

  if (v11 >= 1.0)
  {
LABEL_8:
    v9 = xmmword_299050CF0;
  }

  else
  {
    if (v11 > -1.0)
    {
      return result;
    }

    v9 = xmmword_299050D00;
  }

LABEL_16:
  *(a2 + 8) = v9;
  return result;
}

void NK_Obs_Equ_SV(int a1, int a2, __int16 a3, double *a4, uint64_t a5, double a6)
{
  v7 = a4;
  *(a5 + 96) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  if (a2)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (a1 != 2)
  {
    v8 = a1;
  }

  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v16 = 0;
      *(a5 + 32) = a6;
      *(a5 + 48) = a4[3];
      *(a5 + 56) = a4[4];
      *(a5 + 64) = a4[5];
      do
      {
        *(a5 + 72 + v16 * 8) = -(a4[v16] * a6);
        ++v16;
      }

      while (v16 != 3);
    }

    else if (v8 == 4)
    {
      *(a5 + 32) = 0x3FF0000000000000;
      for (i = 9; i != 12; ++i)
      {
        *(a5 + 8 * i) = -(*v7 + v7[3] * 0.5);
        ++v7;
      }
    }

    return;
  }

  if (v8 == 1)
  {
    v15 = HIBYTE(a3);
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    if (a3 <= 7u)
    {
      if (((1 << a3) & 0xEA) != 0)
      {
        *a5 = 0x3FF0000000000000;
        goto LABEL_18;
      }

      if (a3 == 2)
      {
        *(a5 + 8) = 0x3FF0000000000000;
LABEL_18:
        if (v15 > 0xFu || ((1 << v15) & 0xDD77) == 0)
        {
          *(a5 + 24) = 0x3FF0000000000000;
        }

        v9 = v7[6];
        v10 = 64;
        v11 = 56;
        v12 = 48;
        v13 = 40;
        goto LABEL_21;
      }

      if (a3 == 4)
      {
        *(a5 + 16) = 0x3FF0000000000000;
        goto LABEL_18;
      }
    }

    if (!a3)
    {
      EvCrt_Illegal_switch_case("NK_Obs_Equ_SV", 109);
    }

    goto LABEL_18;
  }

  if (v8 == 2)
  {
    v9 = 1.0;
    v10 = 88;
    v11 = 80;
    v12 = 72;
    v13 = 32;
LABEL_21:
    *(a5 + v13) = v9;
    *(a5 + v12) = -*v7;
    *(a5 + v11) = -v7[1];
    *(a5 + v10) = -v7[2];
  }
}

uint64_t GN_AGPS_Set_Alm_El(unsigned __int8 *a1)
{
  v39 = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed("GN_AGPS_Set_Alm_El");
  if (result)
  {
    v3 = a1[1];
    if (g_Logging_Cfg < 5)
    {
      EvLog_d("GN_AGPS_Set_Alm_El: ", a1[1]);
    }

    else
    {
      EvLog_v("GN_AGPS_Set_Alm_El: %3d %2d %3d %3d %5d %5d %5d %5d %5d %8d %8d %8d %8d %d", *a1, v3, a1[2], a1[3], *(a1 + 2), *(a1 + 3), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 7), a1[32]);
    }

    if ((v3 - 203) >= 0xFFFFFFF6)
    {
      v4 = 5;
    }

    else
    {
      v4 = (v3 - 1) < 0x20;
    }

    if (!v4)
    {
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: Sat_ID = %d, Out of range!");
      return 0;
    }

    v5 = *(a1 + 2);
    if (((*(a1 + 2) - 1024) >> 11) <= 0x1Eu)
    {
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: af0 = %d <-2^10 or >=2^10, Out of range!");
      return 0;
    }

    v6 = *(a1 + 3);
    if (((*(a1 + 3) - 1024) >> 11) <= 0x1Eu)
    {
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: af1 = %d <-2^10 or >=2^10, Out of range!");
      return 0;
    }

    if (v4 == 5)
    {
      v7 = 0.1;
    }

    else
    {
      v7 = 0.03;
    }

    v8 = *(a1 + 4);
    if (vcvtd_n_f64_u32(v8, 0x15uLL) > v7)
    {
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: e = %g > %g, Unrealistic value!");
      return 0;
    }

    v9 = 0.0;
    if ((v3 - 203) >= 0xFFFFFFF6)
    {
      v9 = 0.000000314159265;
    }

    v10 = *(a1 + 6);
    v11 = v10 * 1.14290475e-11;
    if (v11 < -0.00000198862815)
    {
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: OmegaDot = %e < %e rad/s, Unrealistic value!");
      return 0;
    }

    if (v11 > v9)
    {
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: OmegaDot = %e > %e rad/s, Unrealistic value!");
      return 0;
    }

    v12 = *(a1 + 4);
    if (HIBYTE(v12))
    {
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: APowerHalf = %u >=2^24,  Out of range !");
      return 0;
    }

    if (v4 == 5)
    {
      v13 = 7000.0;
    }

    else
    {
      v13 = 5800.0;
    }

    v14 = vcvtd_n_f64_u32(v12, 0xBuLL);
    if (v14 < 4800.0)
    {
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: APowerHalf = %g < %g, Unrealistic value!");
      return 0;
    }

    if (v14 > v13)
    {
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: APowerHalf = %g > %g, Unrealistic value!");
      return 0;
    }

    v15 = *(a1 + 5);
    if ((v15 - 0x800000) >> 24 != 255)
    {
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: Omega0 = %d <-2^23 or >=2^23, Out of range!");
      return 0;
    }

    v16 = *(a1 + 6);
    if ((v16 - 0x800000) >> 24 != 255)
    {
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: w = %d <-2^23 or >=2^23, Out of range!");
      return 0;
    }

    v17 = *(a1 + 7);
    if ((v17 - 0x800000) >> 24 != 255)
    {
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: M0 = %d <-2^23 or >=2^23, Out of range!");
      return 0;
    }

    v38 = 0;
    v18 = a1[1];
    v19 = v18 & 0x3F;
    if (v18 == 32)
    {
      v19 = 0;
    }

    v23 = v8;
    v24 = v19;
    v20 = a1[3];
    v25 = *(a1 + 5);
    v26 = v20;
    v27 = a1[2];
    v28 = v10;
    v29 = v12;
    v30 = BYTE2(v12);
    v31 = v15;
    v32 = BYTE2(v15);
    v33 = v16;
    v34 = BYTE2(v16);
    v35 = v17;
    v36 = BYTE2(v17);
    v37 = (32 * v6) | (4 * (v5 & 7));
    LOBYTE(v38) = v6 >> 3;
    BYTE1(v38) = v5 >> 3;
    v22 = *a1;
    v21 = 0;
    BYTE2(v38) = a1[32];
    return GN_AGPS_Set_Alm(v18, &v21);
  }

  return result;
}

void Kep_Calc_SV_Ref_State(int a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  if (*(a4 + 22))
  {
    v10 = *(a4 + 28);
    v11 = a3 + 604800 * (a2 - *(a4 + 22)) - v10;
  }

  else
  {
    v10 = *(a4 + 28);
    v12 = a3 - v10;
    v13 = a3 - v10 - 604800;
    if (a3 - v10 <= 302399)
    {
      v13 = a3 - v10;
    }

    if (v12 < -302400)
    {
      v11 = v12 + 604800;
    }

    else
    {
      v11 = v13;
    }
  }

  v14 = *(a4 + 8);
  v15 = *(a4 + 184);
  v16 = v15 * v15;
  v17 = *(a4 + 192);
  v110 = *(a4 + 104) + sqrt(dbl_299050D10[v14 - 3 < 2]) / (v15 * (v15 * v15)) + *(a4 + 112) * v11 * 0.5;
  v18 = *(a4 + 176) + v110 * v11;
  v19 = sin(v18);
  v20 = 0;
  v21 = *(a4 + 224);
  v22 = v18 + v21 * v19;
  do
  {
    v23 = v22;
    v22 = v18 + v21 * sin(v22);
  }

  while (vabdd_f64(v22, v23) > 1.0e-11 && v20++ < 0x13);
  v25 = 1.0 - v21 * v21;
  v26 = v16 + v17 * v11;
  v27 = tan(v22 * 0.5);
  v28 = atan(sqrt((v21 + 1.0) / (1.0 - v21)) * v27);
  v29 = v28 + v28;
  if (v29 < 0.0)
  {
    v29 = v29 + 6.28318531;
  }

  v30 = __sincos_stret(v29);
  v31 = __sincos_stret(*(a4 + 216));
  v32 = v30.__cosval * v31.__sinval + v30.__sinval * v31.__cosval;
  v33 = v30.__cosval * v31.__cosval - v30.__sinval * v31.__sinval;
  v34 = v33 * (v32 + v32);
  if (a1 == 1)
  {
    v35 = v33 * v33 - v32 * v32;
    v36 = v35 * *(a4 + 136) + *(a4 + 144) * v34;
    v37 = v36 * v36 * -0.5 + 1.0;
    v38 = v33 * v36;
    v106 = v36;
    v39 = -(v32 * v36);
    v32 = v38 + v32 * v37;
    v33 = v39 + v33 * v37;
    v40 = v35 * *(a4 + 120) + *(a4 + 128) * v34;
  }

  else
  {
    v40 = 0.0;
    v35 = 0.0;
    v106 = 0.0;
  }

  v109 = 1.0 - v21 * v21;
  v108 = v26;
  v111 = v21 * v30.__cosval + 1.0;
  v112 = sqrt(v25);
  v104 = v34;
  v105 = v40;
  v41 = v26 * v25 / v111 + v40;
  v42 = v41 * v33;
  v43 = v41 * v32;
  v44 = *(a4 + 208);
  v103 = v35;
  if (a1 == 1)
  {
    v107 = v35 * *(a4 + 152) + *(a4 + 160) * v34;
    v45 = v11;
    v44 = v44 + v107 + *(a4 + 168) * v11;
  }

  else
  {
    v107 = 0.0;
    v45 = v11;
  }

  v46 = __sincos_stret(v44);
  v47 = dbl_299050D20[v14 == 4];
  v48 = *(a4 + 232) - v47;
  v49 = __sincos_stret(*(a4 + 200) + v48 * v45 - v47 * v10);
  *a5 = v42 * v49.__cosval - v43 * v46.__cosval * v49.__sinval;
  *(a5 + 8) = v43 * v46.__cosval * v49.__cosval + v42 * v49.__sinval;
  v50 = v43 * v46.__sinval;
  *(a5 + 16) = v43 * v46.__sinval;
  v51 = v110;
  v52 = v110 * (v111 * v111) / (v109 * v112) + *(a4 + 112) * v45 * 0.5;
  v53 = v52 + v52;
  v54 = v110 * (v108 * *(a4 + 224) / v112);
  v55 = *(a4 + 192) + v54 * v30.__sinval;
  v56 = 0.0;
  if (a1 == 1)
  {
    v57 = *(a4 + 144) * v103 - *(a4 + 136) * v104;
    v58 = *(a4 + 128) * v103 - *(a4 + 120) * v104;
    v59 = v52 + v53 * v57;
    v55 = v55 + v53 * v58;
    v60 = *(a4 + 160) * v103 - *(a4 + 152) * v104;
    v61 = *(a4 + 168) + v53 * v60;
  }

  else
  {
    v61 = 0.0;
    v58 = 0.0;
    v60 = 0.0;
    v59 = v110 * (v111 * v111) / (v109 * v112) + *(a4 + 112) * v45 * 0.5;
    v57 = 0.0;
  }

  v62 = v55 * v33 - v43 * v59;
  v63 = v42 * v59 + v55 * v32;
  v64 = v62 + -(v43 * v48) * v46.__cosval;
  v65 = v63 * v46.__cosval - v50 * v61 + v42 * v48;
  v66 = v64 * v49.__cosval - v65 * v49.__sinval;
  v67 = v49.__cosval * v65 + v64 * v49.__sinval;
  *(a5 + 24) = v66;
  *(a5 + 32) = v67;
  v68 = v46.__cosval * (v43 * v61) + v63 * v46.__sinval;
  *(a5 + 40) = v68;
  v69 = v111 * (v30.__sinval * (-(v53 * v110) * *(a4 + 224)) / (v109 * v112));
  v70 = v30.__cosval * (v54 * v52);
  if (a1 == 1)
  {
    v71 = v69 + v69;
    v72 = v53 * -v53;
    v70 = v70 + (v69 + v69) * v58 + v72 * v105;
    v69 = v69 + (v69 + v69) * v57 + v72 * v106;
    v56 = v107 * v72 + v71 * v60;
  }

  v73 = v55 * v59;
  v74 = v33 * v73 + v70 * v32 + v62 * v59 + v69 * v42;
  v75 = v70 * v33 - v73 * v32 - v63 * v59 - v69 * v43 + -(v63 * v48) * v46.__cosval + v48 * (v43 * v61) * v46.__sinval;
  v76 = v46.__sinval * -(v63 * v61) + v74 * v46.__cosval - v68 * v61 + -v50 * v56 + v62 * v48;
  v77 = v49.__cosval * v75 - v48 * v67 - v76 * v49.__sinval;
  v78 = v49.__sinval * v75 + v48 * v66 + v76 * v49.__cosval;
  *(a5 + 48) = v77;
  *(a5 + 56) = v78;
  v79 = v46.__cosval * (v61 * (v63 + v63)) + v74 * v46.__sinval + v43 * v56 * v46.__cosval;
  v80 = -(v61 * v61);
  v81 = dbl_299050D30[v14 == 4];
  v82 = v79 + v80 * v50;
  v83 = dbl_299050D40[v14 == 4];
  *(a5 + 64) = v82;
  *(a5 + 72) = v81 * v78 + v83 * -3.0 * v66;
  *(a5 + 80) = v83 * -3.0 * v67 - v81 * v77;
  *(a5 + 88) = (v83 * -3.0 - v83) * v68;
  if (a1 != 1)
  {
    if (v11 >= 0)
    {
      v87 = 302400;
    }

    else
    {
      v87 = -302400;
    }

    v88 = v87 + v11;
    if (v88 < 0)
    {
      v88 = -v88;
    }

    v85 = v11;
    if (v88 > 0x1E1337F)
    {
      v89 = 65500;
    }

    else
    {
      v89 = v88 / 0x3E8u + 1200;
    }

    v91 = (v89 * v89);
    goto LABEL_59;
  }

  v84 = *(a4 + 19);
  v85 = v11;
  if (v84 <= 0xF)
  {
    v86 = (&GPS_Legacy_URA_Table + 8 * v84);
LABEL_39:
    v90 = *v86;
    goto LABEL_43;
  }

  if ((v84 + 16) <= 0x10u)
  {
    v86 = (&GPS_Modern_URA_Table + 8 * -v84);
    goto LABEL_39;
  }

  v90 = 99980001.0;
LABEL_43:
  *(a5 + 112) = v90;
  if (v11 >= 0)
  {
    v92 = v11;
  }

  else
  {
    v92 = -v11;
  }

  v93 = -30 * *(a4 + 18) + v92 / 0x3C;
  if ((*(a4 + 4) & 0xFFFFFFFE) == 4 && v14 <= 6 && ((1 << v14) & 0x58) != 0)
  {
    v93 -= 30 * *(a4 + 18);
  }

  if (v93 < 1)
  {
    if (v11 >= 10800 && (v93 == 0 || v93 >= 0xFFFFFFC5))
    {
      v95 = ((v93 + 60) * (v93 + 60)) * 0.00138888889;
      v91 = v90 + v95 * v95;
LABEL_59:
      *(a5 + 112) = v91;
      goto LABEL_60;
    }
  }

  else
  {
    v94 = Is_Eph_Kep_Real(a4);
    v51 = v110;
    if (v94)
    {
      *(a5 + 112) = *(a5 + 112) + (v93 * v93) * 0.025 * ((v93 * v93) * 0.025);
    }
  }

  if (v11 >= 14400 && (v93 & 0x80000000) == 0)
  {
    v91 = *(a5 + 112) + 25.0;
    goto LABEL_59;
  }

LABEL_60:
  v96 = v85 + (*(a4 + 28) - *(a4 + 24));
  v97 = *(a4 + 224);
  v98 = v97 * -4.44280763e-10 * *(a4 + 184) / (v97 * v30.__cosval + 1.0);
  v99 = *(a4 + 48);
  v100 = v96 * *(a4 + 56);
  *(a5 + 96) = *(a4 + 40) + v96 * (v100 + v99) + v112 * v98 * v30.__sinval;
  *(a5 + 104) = v99 + v100 * 2.0 + v51 * v98 * (v30.__cosval + v97);
  *(a5 + 120) = *(a4 + 64);
  *(a5 + 136) = *(a4 + 80);
  *(a5 + 152) = *(a4 + 96);
  *(a5 + 160) = a3;
  *(a5 + 164) = v8;
  *(a5 + 166) = *(a4 + 20);
  v101 = *(a4 + 4);
  v102 = *(a4 + 8);
  *(a5 + 176) = a1;
  *(a5 + 180) = v101;
  *(a5 + 188) = *(a4 + 12);
  *(a5 + 184) = v102;
  *(a5 + 189) = *(a4 + 16);
  *(a5 + 190) = *(a4 + 17);
}

void GM_Inc_Local_Time(int a1, uint64_t a2)
{
  v3 = a2 + 0x4000;
  v4 = a1 - *(a2 + 17976);
  *(a2 + 17976) = a1;
  Inc_Local_Time(v4, 604800, (a2 + 17944), (a2 + 17942));
  Inc_Local_Time(v4, 86400, (a2 + 17968), (v3 + 1576));
  v5 = *(v3 + 1576);
  if (v5 >= 1462)
  {
    v6 = *(v3 + 1572);
    v7 = v5 - 2922;
    if (*(v3 + 1576) < 0xB6Au)
    {
      v7 = 0;
    }

    *(v3 + 1576) = v5 - 1461 * ((v7 + 1460) / 0x5B5u) - 1461;
    *(v3 + 1572) = v6 + (v7 + 1460) / 0x5B5u + 1;
  }
}

void DD_Assist_QZSS_Data(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = 0;
  v76 = *MEMORY[0x29EDCA608];
  v59 = result + 3718;
  v60 = result + 3648;
  v58 = result + 3708;
  v62 = a3 + 1144;
  v57 = a2 - 241;
  v61 = a3 + 1434;
  do
  {
    if (*(a3[1137] + v6) != 1 || (v7 = v62 + 29 * v6, v7[1] < 6) || (v57 - *v7) <= 0xFFFFF806)
    {
      v74 = 0u;
      memset(v75, 0, 19);
      v72 = 0u;
      v73 = 0u;
      memset(v71, 0, sizeof(v71));
      v70 = 0u;
      if (Core_Get_QZSS_Eph((v6 - 63), a2, &v70))
      {
        v8 = a3[1137];
        if (*(v8 + v6) == 1)
        {
          v9 = v62 + 29 * v6;
          v10 = *v9;
          v11 = v9[1];
          if (SDWORD1(v70) <= v11)
          {
            v27 = v70 > v10 && DWORD1(v70) == v11;
            if (!v27 && a2 - v10 > -1801)
            {
              goto LABEL_23;
            }
          }

          if (v70 - v10 <= 10799 && Is_GPS_BinEph_Real(v62 + 116 * v6) && !Is_GPS_BinEph_Real(&v70))
          {
            *v9 = a2;
            goto LABEL_23;
          }
        }

        v12 = a3[1129];
        if ((*(v12 + v6) & 1) == 0)
        {
          v13 = a3[1139];
          if (*(v13 + v6) == 1 && *(v61 + 11 * v6) + 100 < a2)
          {
            *(a3[1134] + v6) = 0;
            *(v13 + v6) = 0;
            *(v58 + v6) = -1;
            v8 = a3[1137];
            v12 = a3[1129];
          }
        }

        v14 = v74;
        v15 = v62 + 116 * v6;
        *(v15 + 4) = v73;
        *(v15 + 5) = v14;
        *(v15 + 6) = *v75;
        *(v15 + 28) = *&v75[16];
        v16 = v71[0];
        *v15 = v70;
        *(v15 + 1) = v16;
        v17 = v72;
        *(v15 + 2) = v71[1];
        *(v15 + 3) = v17;
        *(a3[1133] + v6) = 1;
        *(v8 + v6) = 1;
        *(v12 + v6) = 1;
        v18 = a3[1131];
        if (*(v15 + 1) == 5)
        {
          *(v18 + 20 * v6 + 8) = 1;
          *(a3[1130] + v6) = 1;
          v19 = (a3[1132] + 20 * v6 + 8);
        }

        else
        {
          v19 = (v18 + 20 * v6 + 12);
        }

        *v19 = 1;
        if (a2 >= 1)
        {
          *(a3[1140] + v6) = 1;
          Core_Save_QZSS_Eph((v6 - 63), 0, v15);
          v12 = a3[1129];
        }

        v20 = 0;
        LODWORD(v21) = 0;
        v22 = p_NV;
        v23 = *(v12 + 8);
        *(p_NV + 6092) = *v12;
        *(v22 + 6100) = v23;
        v24 = 55665;
        do
        {
          v25 = *(v22 + 6088 + v20) ^ BYTE1(v24);
          v24 = 52845 * (v24 + v25) + 22719;
          v21 = (v21 + v25);
          ++v20;
        }

        while (v20 != 40);
        *(v22 + 6080) = v21;
        v26 = v60 + 6 * v6;
        *v26 = 16777472;
        *(v26 + 4) = 256;
        *(v59 + 2 * v6) = 256;
      }
    }

LABEL_23:
    ++v6;
  }

  while (v6 != 10);
  v28 = a4;
  if (a2 >= 1)
  {
    v29 = 0;
    v30 = a3 + 1289;
    do
    {
      if (*(a3[1129] + v29) == 1 && (*(*(v28 + 1624) + v29) & 1) == 0 && (*(a3[1138] + v29) != 1 || a2 - *(v30 + 29 * v29) >= 241))
      {
        v74 = 0u;
        memset(v75, 0, 19);
        v72 = 0u;
        v73 = 0u;
        memset(v71, 0, sizeof(v71));
        v70 = 0u;
        GPS_BinEph = EE_Get_GPS_BinEph((v29 - 63), a2, &v70);
        v32 = a3[1138];
        if (!GPS_BinEph || (v33 = v70, *(v32 + v29) == 1) && v70 <= *(v30 + 29 * v29))
        {
          *(v32 + v29) = 0;
        }

        else
        {
          v34 = v71[0];
          v35 = v30 + 116 * v29;
          *v35 = v70;
          *(v35 + 1) = v34;
          v36 = v72;
          *(v35 + 2) = v71[1];
          *(v35 + 3) = v36;
          *(v35 + 28) = *&v75[16];
          v37 = *v75;
          *(v35 + 5) = v74;
          *(v35 + 6) = v37;
          *(v35 + 4) = v73;
          *(a3[1133] + v29) = 1;
          *(v32 + v29) = 1;
          v38 = v60 + 6 * v29;
          *v38 = 16777472;
          *(v38 + 4) = 256;
          *(v59 + 2 * v29) = 256;
          *v67 = 0u;
          v66 = 0u;
          v65 = 0u;
          v64 = 0u;
          v63[0] = v33;
          v63[1] = DWORD1(v70);
          LOBYTE(v64) = BYTE8(v70);
          v39 = 21;
          v40 = 11;
          v41 = v71 + 8;
          *(&v64 + 1) = *(&v70 + 9);
          do
          {
            v42 = v63 + v40;
            *v42 = *v41;
            *(v42 + 1) = *(v41 + 1);
            v41 += 4;
            --v39;
            v40 += 3;
          }

          while (v39 > 1);
          *&v67[15] = *&v75[12];
          v68 = *&v75[14];
          v69 = v75[18];
          Debug_Log_GPS_Eph(2, (v29 + 193), v63);
        }

        v28 = a4;
      }

      ++v29;
    }

    while (v29 != 10);
  }

  v43 = 0;
  v70 = 0u;
  memset(v71, 0, 28);
  do
  {
    if (*(a3[1139] + v43) != 1 || a2 - *(v61 + 11 * v43) >= 1801)
    {
      *(&v70 | 0xC) = 0u;
      *((&v70 | 0xC) + 0x10) = 0u;
      if (Core_Get_QZSS_Alm((v43 - 63), a2, &v70))
      {
        v44 = a3[1139];
        if (*(v44 + v43) != 1 || v70 > *(v61 + 11 * v43))
        {
          v45 = a3[1129];
          if ((*(v45 + v43) & 1) == 0)
          {
            v46 = a3[1137];
            if (*(v46 + v43) == 1 && *(v62 + 29 * v43) + 100 < a2)
            {
              *(a3[1133] + v43) = 0;
              *(v46 + v43) = 0;
              v47 = v60 + 6 * v43;
              *v47 = 16777472;
              *(v47 + 4) = 256;
              *(v59 + 2 * v43) = 256;
            }
          }

          v48 = (v61 + 44 * v43);
          v49 = v71[0];
          *v48 = v70;
          v48[1] = v49;
          *(v48 + 28) = *(v71 + 12);
          *(a3[1134] + v43) = 1;
          *(v44 + v43) = 1;
          *(v45 + v43) = 1;
          if (a2 >= 1)
          {
            Core_Save_QZSS_Alm((v43 - 63), 0, v48);
            v45 = a3[1129];
          }

          v50 = 0;
          LODWORD(v51) = 0;
          v52 = p_NV;
          v53 = *(v45 + 8);
          *(p_NV + 6092) = *v45;
          *(v52 + 6100) = v53;
          v54 = 55665;
          do
          {
            v55 = *(v52 + 6088 + v50) ^ BYTE1(v54);
            v54 = 52845 * (v54 + v55) + 22719;
            v51 = (v51 + v55);
            ++v50;
          }

          while (v50 != 40);
          *(v52 + 6080) = v51;
          *(v58 + v43) = -1;
        }
      }
    }

    ++v43;
  }

  while (v43 != 10);
}

uint64_t Hal34_InitPciGnssDevice(_DWORD *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = 4;
  do
  {
    result = Hal29_GetGNSSProxyStatus();
    if (!result)
    {
      g_HalState = 0;
      return result;
    }

    --v2;
  }

  while (v2);
  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Proxy status failure\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 69, "Hal34_InitPciGnssDevice");
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  *a1 = 6;
  return 4294967290;
}

void gnss::GnssAdaptDevice::setPVTMReport(uint64_t result, char a2, char a3, char a4, char a5, char a6, char a7, uint64_t a8, uint64_t a9)
{
  v22 = *MEMORY[0x29EDCA608];
  if (*(a9 + 24))
  {
    v16 = *(result + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice13setPVTMReportEbbbbbbNSt3__18functionIFvNS1_10unique_ptrINS_3FixENS1_14default_deleteIS4_EEEENS3_INS_17MeasurementReportENS5_IS8_EEEEONS1_6vectorINS_6SvInfoENS1_9allocatorISC_EEEEONSB_INS_23ReceiverBandCorrectionsENSD_ISH_EEEENS3_INS_18TimeConversionInfoENS5_ISL_EEEENS3_INS_24KlobucharModelParametersENS5_ISO_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_4;
    block[4] = result;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v19, a9);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v20, a8);
    v20[32] = a2;
    v20[33] = a3;
    v20[34] = a4;
    v20[35] = a5;
    v20[36] = a6;
    v20[37] = a7;
    dispatch_async(v16, block);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v20);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v19);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v17 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "setPVTMReport", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void ___ZN4gnss15GnssAdaptDevice13setPVTMReportEbbbbbbNSt3__18functionIFvNS1_10unique_ptrINS_3FixENS1_14default_deleteIS4_EEEENS3_INS_17MeasurementReportENS5_IS8_EEEEONS1_6vectorINS_6SvInfoENS1_9allocatorISC_EEEEONSB_INS_23ReceiverBandCorrectionsENSD_ISH_EEEENS3_INS_18TimeConversionInfoENS5_ISL_EEEENS3_INS_24KlobucharModelParametersENS5_ISO_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v43[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setPVTMReport_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (*(a1 + 96))
    {
      if (*(v2 + 89) == 1)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v37, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v37, "setPVTMReport_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v37);
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v4 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setPVTMReport_block_invoke", 2056);
          gnssOsa_PrintLog(__str, 1, 1, 0);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v5 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "setPVTMReport_block_invoke");
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }
        }
      }

      else
      {
        v10 = *(a1 + 105);
        if ((*(a1 + 104) | *(a1 + 107) | *(a1 + 108) | *(a1 + 109) | v10 | *(a1 + 106)))
        {
          if ((v10 & 1) != 0 || !*(a1 + 106))
          {
            std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](__str, a1 + 72);
            v15 = v2 + 168;
            if (__str != (v2 + 168))
            {
              v16 = v42;
              v17 = *(v2 + 192);
              if (v42 == __str)
              {
                if (v17 == v15)
                {
                  (*(*v42 + 24))();
                  (*(*v42 + 32))(v42);
                  v42 = 0;
                  (*(**(v2 + 192) + 24))(*(v2 + 192), __str);
                  (*(**(v2 + 192) + 32))(*(v2 + 192));
                  *(v2 + 192) = 0;
                  v42 = __str;
                  (*(v43[0] + 24))(v43, v2 + 168);
                  (*(v43[0] + 32))(v43);
                }

                else
                {
                  (*(*v42 + 24))();
                  (*(*v42 + 32))(v42);
                  v42 = *(v2 + 192);
                }

                *(v2 + 192) = v15;
              }

              else if (v17 == v15)
              {
                (*(*v17 + 24))(*(v2 + 192), __str);
                (*(**(v2 + 192) + 32))(*(v2 + 192));
                *(v2 + 192) = v42;
                v42 = __str;
              }

              else
              {
                v42 = *(v2 + 192);
                *(v2 + 192) = v16;
              }
            }

            std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](__str);
            *__str = v2 + 144;
            v41 = 0;
            std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,8ul>>(__str, 8uLL);
            v18 = 2;
            if (!*(a1 + 105))
            {
              v18 = 0;
            }

            v19 = v18 | *(a1 + 104);
            v20 = 4;
            if (!*(a1 + 106))
            {
              v20 = 0;
            }

            v21 = v19 | v20;
            v22 = 8;
            if (!*(a1 + 107))
            {
              v22 = 0;
            }

            v23 = 16;
            if (!*(a1 + 108))
            {
              v23 = 0;
            }

            v24 = v21 | v22 | *(v2 + 144) & 0xFFFFFFFFFFFFFF80;
            v25 = 64;
            if (*(a1 + 109))
            {
              v25 = 96;
            }

            *(v2 + 144) = v25 | v23 | v24;
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v34, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v34, "setPVTMReport_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v34);
            if (g_LbsOsaTrace_Config > 3)
            {
              bzero(__str, 0x3C6uLL);
              v26 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
              v27 = *(a1 + 109) ? 84 : 70;
              v28 = *(a1 + 108) ? 84 : 70;
              v29 = *(a1 + 107) ? 84 : 70;
              v30 = *(a1 + 106) ? 84 : 70;
              v31 = *(a1 + 105) ? 84 : 70;
              v32 = *(a1 + 104) ? 84 : 70;
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Pvt,%c,Meas,%c,ExtMeas,%c,SvInfo,%c,BandCor,%c,TimeCon,%c\n", v26, "ADP", 73, "setPVTMReport_block_invoke", v32, v31, v30, v29, v28, v27);
              gnssOsa_PrintLog(__str, 4, 1, 0);
              if (g_LbsOsaTrace_Config >= 5)
              {
                bzero(__str, 0x3C6uLL);
                v33 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 68, "setPVTMReport_block_invoke");
                gnssOsa_PrintLog(__str, 5, 1, 0);
              }
            }
          }

          else
          {
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v35, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v35, "setPVTMReport_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v35);
            if (g_LbsOsaTrace_Config)
            {
              bzero(__str, 0x3C6uLL);
              v11 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx PVTM Invalid measReq\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "setPVTMReport_block_invoke", 515);
              gnssOsa_PrintLog(__str, 1, 1, 0);
              if (g_LbsOsaTrace_Config >= 5)
              {
                bzero(__str, 0x3C6uLL);
                v12 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setPVTMReport_block_invoke");
                gnssOsa_PrintLog(__str, 5, 1, 0);
              }
            }
          }
        }

        else
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v36, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v36, "setPVTMReport_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v36);
          if (g_LbsOsaTrace_Config)
          {
            bzero(__str, 0x3C6uLL);
            v13 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx PVTM No valid flags\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "setPVTMReport_block_invoke", 515);
            gnssOsa_PrintLog(__str, 1, 1, 0);
            if (g_LbsOsaTrace_Config >= 5)
            {
              bzero(__str, 0x3C6uLL);
              v14 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "setPVTMReport_block_invoke");
              gnssOsa_PrintLog(__str, 5, 1, 0);
            }
          }
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v38, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v38, "setPVTMReport_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v38);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx PVTM CB\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setPVTMReport_block_invoke", 513);
        gnssOsa_PrintLog(__str, 1, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v9 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "setPVTMReport_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v39, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v39, "setPVTMReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v39);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setPVTMReport_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 68, "setPVTMReport_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }
}

void sub_298F6A618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](a1 + 72);

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnss::GnssAdaptDevice::setNmeaHandler(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    v6 = *(result + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice14setNmeaHandlerEyNSt3__18functionIFvONS1_6vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS7_IS9_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_14;
    block[4] = result;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a4);
    v9[4] = a2;
    std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](v10, a3);
    dispatch_async(v6, block);
    std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](v10);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setNmeaHandler", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void ___ZN4gnss15GnssAdaptDevice14setNmeaHandlerEyNSt3__18functionIFvONS1_6vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS7_IS9_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke(void *a1)
{
  v29[3] = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setNmeaHandler_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (*(v2 + 89) == 1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, (a1 + 5));
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v25, "setNmeaHandler_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setNmeaHandler_block_invoke", 2056);
        gnssOsa_PrintLog(__str, 1, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v5 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "setNmeaHandler_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NmeaMask,%llu\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 73, "setNmeaHandler_block_invoke", a1[9]);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      if (a1[9] < 0x400uLL)
      {
        std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](__str, (a1 + 10));
        v11 = v2 + 264;
        if (__str != (v2 + 264))
        {
          v12 = v28;
          v13 = *(v2 + 288);
          if (v28 == __str)
          {
            if (v13 == v11)
            {
              (*(*v28 + 24))();
              (*(*v28 + 32))(v28);
              v28 = 0;
              (*(**(v2 + 288) + 24))(*(v2 + 288), __str);
              (*(**(v2 + 288) + 32))(*(v2 + 288));
              *(v2 + 288) = 0;
              v28 = __str;
              (*(v29[0] + 24))(v29, v2 + 264);
              (*(v29[0] + 32))(v29);
            }

            else
            {
              (*(*v28 + 24))();
              (*(*v28 + 32))(v28);
              v28 = *(v2 + 288);
            }

            *(v2 + 288) = v11;
          }

          else if (v13 == v11)
          {
            (*(*v13 + 24))(*(v2 + 288), __str);
            (*(**(v2 + 288) + 32))(*(v2 + 288));
            *(v2 + 288) = v28;
            v28 = __str;
          }

          else
          {
            v28 = *(v2 + 288);
            *(v2 + 288) = v12;
          }
        }

        std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](__str);
        if (a1[13] && (v14 = a1[9]) != 0)
        {
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v15 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Request NMEA\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 73, "setNmeaHandler_block_invoke");
            gnssOsa_PrintLog(__str, 4, 1, 0);
            v14 = a1[9];
          }

          v16 = Gnm_RegisterNmeaUpdates(v14, gnss::GnssAdaptDevice::Ga06_15GnssRegisterNmeaCB);
        }

        else
        {
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v17 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NMEA CB null kGaNmeaNone\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 73, "setNmeaHandler_block_invoke");
            gnssOsa_PrintLog(__str, 4, 1, 0);
          }

          v16 = Gnm_RegisterNmeaUpdates(0, 0);
        }

        v18 = v16;
        if (v16)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, (a1 + 5));
          gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, v18, v23, "setNmeaHandler_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
          if (g_LbsOsaTrace_Config)
          {
            bzero(__str, 0x3C6uLL);
            v19 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SetNmea,%u\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "setNmeaHandler_block_invoke", 257, v18);
            gnssOsa_PrintLog(__str, 1, 1, 0);
            if (g_LbsOsaTrace_Config >= 5)
            {
              bzero(__str, 0x3C6uLL);
              v20 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "setNmeaHandler_block_invoke");
              gnssOsa_PrintLog(__str, 5, 1, 0);
            }
          }
        }

        else
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v22, (a1 + 5));
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v22, "setNmeaHandler_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v22);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v21 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "setNmeaHandler_block_invoke");
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v24, (a1 + 5));
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v24, "setNmeaHandler_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v24);
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v9 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Mask,%llu\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "setNmeaHandler_block_invoke", 515, a1[9]);
          gnssOsa_PrintLog(__str, 1, 1, 0);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v10 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "setNmeaHandler_block_invoke");
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v26, (a1 + 5));
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v26, "setNmeaHandler_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setNmeaHandler_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 68, "setNmeaHandler_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }
}

void sub_298F6B290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE80c108_ZTSNSt3__18functionIFvONS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](a1 + 80);

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnss::GnssAdaptDevice::setThermalRiskState(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a4);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(result, 7, v6, "setThermalRiskState");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setThermalRiskState", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void sub_298F6B4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setPowerReport(uint64_t result, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(result + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice14setPowerReportENSt3__18functionIFvNS1_10unique_ptrINS_14PwrMeasurementENS1_14default_deleteIS4_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_19;
    block[4] = result;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](v8, a2);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v8);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setPowerReport", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void ___ZN4gnss15GnssAdaptDevice14setPowerReportENSt3__18functionIFvNS1_10unique_ptrINS_14PwrMeasurementENS1_14default_deleteIS4_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v19[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setPowerReport_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (*(a1 + 96))
    {
      std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](__str, a1 + 72);
      v4 = v2 + 328;
      if (__str != (v2 + 328))
      {
        v5 = v18;
        v6 = *(v2 + 352);
        if (v18 == __str)
        {
          if (v6 == v4)
          {
            (*(*v18 + 24))();
            (*(*v18 + 32))(v18);
            v18 = 0;
            (*(**(v2 + 352) + 24))(*(v2 + 352), __str);
            (*(**(v2 + 352) + 32))(*(v2 + 352));
            *(v2 + 352) = 0;
            v18 = __str;
            (*(v19[0] + 24))(v19, v2 + 328);
            (*(v19[0] + 32))(v19);
          }

          else
          {
            (*(*v18 + 24))();
            (*(*v18 + 32))(v18);
            v18 = *(v2 + 352);
          }

          *(v2 + 352) = v4;
        }

        else if (v6 == v4)
        {
          (*(*v6 + 24))(*(v2 + 352), __str);
          (*(**(v2 + 352) + 32))(*(v2 + 352));
          *(v2 + 352) = v18;
          v18 = __str;
        }

        else
        {
          v18 = *(v2 + 352);
          *(v2 + 352) = v5;
        }
      }

      std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](__str);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ENABLE\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 73, "setPowerReport_block_invoke");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      v10 = gnss::GnssAdaptDevice::Ga01_06GnssReportPower(v2, 1);
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: DISABLE\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 73, "setPowerReport_block_invoke");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      v10 = gnss::GnssAdaptDevice::Ga01_06GnssReportPower(v2, 0);
    }

    if (v10)
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v12 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SetPwrReport success\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 73, "setPowerReport_block_invoke");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      v13 = 1;
    }

    else
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v14 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SetPwrReport error\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "setPowerReport_block_invoke", 257);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      v13 = 7;
    }

    std::function<void ()(gnss::Result)>::operator()(a1 + 40, v13);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v15 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "setPowerReport_block_invoke");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v16, "setPowerReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setPowerReport_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setPowerReport_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }
}

void sub_298F6BD24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnss::GnssAdaptDevice::Ga01_06GnssReportPower(dispatch_semaphore_s **this, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (gnss::GnssAdaptDevice::Ga01_06GnssReportPower(BOOL)::v_PowerReportState == a2)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v3 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (a2)
      {
        v4 = "ENABLE";
      }

      else
      {
        v4 = "DISABLE";
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Ignoring %s PwrRep request\n", v3, "ADP", 73, "Ga01_06GnssReportPower", v4);
      v5 = 4;
LABEL_12:
      gnssOsa_PrintLog(__str, v5, 1, 0);
      return 0;
    }

    return 0;
  }

  Hal_SetPowerReportStatus(a2, gnss::GnssAdaptDevice::Ga01_SetPowerReportStatusCb, gnss::GnssAdaptDevice::Ga01_03HandlePowerReportCB);
  if (gnssOsa_SemWaitTimeOut(this[45], 0x1F4u))
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v7 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v8 = "DISABLE";
      if (a2)
      {
        v8 = "ENABLE";
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SetPwrRep %s timeout\n", v7, "ADP", 69, "Ga01_06GnssReportPower", 257, v8);
      v5 = 1;
      goto LABEL_12;
    }

    return 0;
  }

  gnss::GnssAdaptDevice::Ga01_06GnssReportPower(BOOL)::v_PowerReportState = a2;
  if (g_LbsOsaTrace_Config < 4)
  {
    return 1;
  }

  bzero(__str, 0x3C6uLL);
  v11 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  if (a2)
  {
    v12 = "ENABLED";
  }

  else
  {
    v12 = "DISABLED";
  }

  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Power reporting,%s\n", v11, "ADP", 73, "Ga01_06GnssReportPower", v12);
  v9 = 1;
  gnssOsa_PrintLog(__str, 4, 1, 0);
  return v9;
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c92_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss14PwrMeasurementENS_14default_deleteIS3_EEEEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](a1 + 72);

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnss::GnssAdaptDevice::setConfigCoexistence(uint64_t result, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v3 = *(result + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice20setConfigCoexistenceEyNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_21_1;
    block[4] = result;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a3);
    dispatch_async(v3, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setConfigCoexistence", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void ___ZN4gnss15GnssAdaptDevice20setConfigCoexistenceEyNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setConfigCoexistence_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a1 + 40);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v6, "setConfigCoexistence_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
  if (g_LbsOsaTrace_Config > 1)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Not Supported\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 87, "setConfigCoexistence_block_invoke", 264);
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "setConfigCoexistence_block_invoke");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }
}

void sub_298F6C3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setConfigDutyCycling(uint64_t result, char a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v3 = *(result + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice20setConfigDutyCyclingEbNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_25_0;
    block[4] = result;
    v6[32] = a2;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a3);
    dispatch_async(v3, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setConfigDutyCycling", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void ___ZN4gnss15GnssAdaptDevice20setConfigDutyCyclingEbNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = g_LbsOsaTrace_Config;
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "setConfigDutyCycling_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
    v3 = g_LbsOsaTrace_Config;
  }

  if (v3 >= 3)
  {
    bzero(__str, 0x3C6uLL);
    v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v6 = 78;
    if (*(a1 + 72))
    {
      v6 = 89;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: DutyCycling,%c\n", v5, "ADP", 77, "setConfigDutyCycling_block_invoke", v6);
    gnssOsa_PrintLog(__str, 3, 1, 0);
  }

  byte_2A13C3B3C = *(a1 + 72);
  HSW_InternalSetRFDutyCyclingCfg();
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, a1 + 40);
  gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, 0, v8, "setConfigDutyCycling_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 68, "setConfigDutyCycling_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }
}

void sub_298F6C768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setConfigSimulatorMode(uint64_t result, char a2, int a3, char a4, uint64_t a5)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(a5 + 24))
  {
    v8 = *(result + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice22setConfigSimulatorModeEbibNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_30_1;
    block[4] = result;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a5);
    v12 = a2;
    v11[8] = a3;
    v13 = a4;
    dispatch_async(v8, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "setConfigSimulatorMode", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void ___ZN4gnss15GnssAdaptDevice22setConfigSimulatorModeEbibNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setConfigSimulatorMode_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (g_LbsOsaTrace_Config >= 3)
    {
      bzero(__str, 0x3C6uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v5 = 70;
      if (*(a1 + 76))
      {
        v5 = 84;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SimulatorEn,%c,Week,%d\n", v4, "ADP", 77, "setConfigSimulatorMode_block_invoke", v5, *(a1 + 72));
      gnssOsa_PrintLog(__str, 3, 1, 0);
    }

    if (HSW_SetSimulatorModeCfg(*(a1 + 76), *(a1 + 72), *(a1 + 77)))
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a1 + 40);
      v6 = v12;
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, 0, v12, "setConfigSimulatorMode_block_invoke");
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a1 + 40);
      v6 = v11;
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, 11, v11, "setConfigSimulatorMode_block_invoke");
    }

    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
    if (*(a1 + 76) == 1)
    {
      HSW_SetEarliestGPSWKNum(*(a1 + 72));
      if (g_LbsOsaTrace_Config < 5)
      {
        return;
      }

      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Simulation mode ON\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "setConfigSimulatorMode_block_invoke");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "setConfigSimulatorMode_block_invoke");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v13, "setConfigSimulatorMode_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setConfigSimulatorMode_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setConfigSimulatorMode_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }
}

void sub_298F6CCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setConfigEnableGnssConstellations(uint64_t result, int a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(result + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice33setConfigEnableGnssConstellationsEjNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_34;
    block[4] = result;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
    v7[8] = a2;
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setConfigEnableGnssConstellations", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void ___ZN4gnss15GnssAdaptDevice33setConfigEnableGnssConstellationsEjNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setConfigEnableGnssConstellations_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (g_LbsOsaTrace_Config >= 3)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Constellation,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 77, "setConfigEnableGnssConstellations_block_invoke", *(a1 + 72));
      gnssOsa_PrintLog(__str, 3, 1, 0);
    }

    if (HSW_SetConstellationCfg(*(a1 + 72)))
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a1 + 40);
      v5 = v10;
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, 0, v10, "setConfigEnableGnssConstellations_block_invoke");
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a1 + 40);
      v5 = v9;
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, 11, v9, "setConfigEnableGnssConstellations_block_invoke");
    }

    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v5);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setConfigEnableGnssConstellations_block_invoke");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v11, "setConfigEnableGnssConstellations_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setConfigEnableGnssConstellations_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 68, "setConfigEnableGnssConstellations_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }
}

void sub_298F6D1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setConfigRfBandEnable(uint64_t result, char a2, char a3, uint64_t a4)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    v6 = *(result + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice21setConfigRfBandEnableEbbNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_40;
    block[4] = result;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a4);
    v9[32] = a2;
    v9[33] = a3;
    dispatch_async(v6, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setConfigRfBandEnable", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void ___ZN4gnss15GnssAdaptDevice21setConfigRfBandEnableEbbNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setConfigRfBandEnable_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (g_LbsOsaTrace_Config >= 3)
    {
      bzero(__str, 0x3C6uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v5 = "DIS";
      if (*(a1 + 72))
      {
        v6 = "EN";
      }

      else
      {
        v6 = "DIS";
      }

      if (*(a1 + 73))
      {
        v5 = "EN";
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RFBandFamily,L1:%s,L5:%s\n", v4, "ADP", 77, "setConfigRfBandEnable_block_invoke", v6, v5);
      gnssOsa_PrintLog(__str, 3, 1, 0);
    }

    if (HSW_SetRfBandCfg(*(a1 + 72), *(a1 + 73)))
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a1 + 40);
      v7 = v12;
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, 0, v12, "setConfigRfBandEnable_block_invoke");
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a1 + 40);
      v7 = v11;
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, 11, v11, "setConfigRfBandEnable_block_invoke");
    }

    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "setConfigRfBandEnable_block_invoke");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v13, "setConfigRfBandEnable_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setConfigRfBandEnable_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "setConfigRfBandEnable_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }
}

void sub_298F6D6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setConfigNetworkFreqAssistance(uint64_t result, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v3 = *(result + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice30setConfigNetworkFreqAssistanceEbNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_44;
    block[4] = result;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a3);
    dispatch_async(v3, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setConfigNetworkFreqAssistance", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void ___ZN4gnss15GnssAdaptDevice30setConfigNetworkFreqAssistanceEbNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = g_LbsOsaTrace_Config;
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "setConfigNetworkFreqAssistance_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
    v3 = g_LbsOsaTrace_Config;
  }

  if (v3 >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Not supported\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 73, "setConfigNetworkFreqAssistance_block_invoke");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a1 + 40);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v7, "setConfigNetworkFreqAssistance_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "setConfigNetworkFreqAssistance_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }
}

void sub_298F6DA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::Ga01_SetPowerReportStatusCb(gnss::GnssAdaptDevice *this)
{
  v6 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(this);
  if (!DeviceInstance)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Invalid Device Instance\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga01_SetPowerReportStatusCb", 513);
    v3 = 1;
    goto LABEL_7;
  }

  if (!gnssOsa_SemRelease(*(DeviceInstance + 360)) && g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx CtrlReqSem\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 87, "Ga01_SetPowerReportStatusCb", 257);
    v3 = 2;
LABEL_7:
    gnssOsa_PrintLog(__str, v3, 1, 0);
  }
}

void gnss::GnssAdaptDevice::Ga01_03HandlePowerReportCB(gnss::GnssAdaptDevice *this, double a2, double a3, double a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ActiveInt_Sec,%f,AvgPwr_milliwatts,%f,LocalTime,%f,MeasInt_Seconds,%f\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 73, "Ga01_03HandlePowerReportCB", a2, a3, a4, a5);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(this);
  v11 = *(DeviceInstance + 152);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN4gnss15GnssAdaptDevice26Ga01_03HandlePowerReportCBEdddd_block_invoke;
  block[3] = &__block_descriptor_tmp_62;
  block[4] = DeviceInstance;
  *&block[5] = a2;
  *&block[6] = a3;
  *&block[7] = a4;
  *&block[8] = a5;
  dispatch_async(v11, block);
}

uint64_t ___ZN4gnss15GnssAdaptDevice26Ga01_03HandlePowerReportCBEdddd_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](v15, *(a1 + 32) + 328);
  if (v16)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x3002000000;
    v9[3] = __Block_byref_object_copy_;
    v9[4] = __Block_byref_object_dispose_;
    v2 = operator new(0x28uLL, MEMORY[0x29EDC9418]);
    if (!v2)
    {
      v10 = 0;
      snprintf(v13, 0x3B6uLL, "ASSERT,%s,%d,%s", "Ga01_03HandlePowerReportCB_block_invoke", 471, "Memory allocation failed for PwrMeas");
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "Ga01_03HandlePowerReportCB_block_invoke", v13);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga01_03HandlePowerReportCB_block_invoke", "ga01GnssDeviceConfig.cpp", 471, "false && Memory allocation failed for PwrMeas");
    }

    v2[8] = 0;
    v3 = *(a1 + 40);
    *v2 = *(a1 + 56);
    *(v2 + 1) = v3;
    v4 = *(*(a1 + 32) + 160);
    v10 = v2;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice26Ga01_03HandlePowerReportCBEdddd_block_invoke_2;
    block[3] = &unk_2A1F2A098;
    std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](v12, v15);
    block[4] = v9;
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v12);
    _Block_object_dispose(v9, 8);
    v5 = v10;
    v10 = 0;
    if (v5)
    {
      MEMORY[0x29C296280](v5, 0x1000C407A37F5ACLL);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx OnPowerReportCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga01_03HandlePowerReportCB_block_invoke", 770);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v15);
}

void sub_298F6DFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  _Block_object_dispose(&a15, 8);
  v22 = a20;
  a20 = 0;
  if (v22)
  {
    MEMORY[0x29C296280](v22, 0x1000C407A37F5ACLL);
  }

  std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v20 - 72);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose_(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {

    JUMPOUT(0x29C296280);
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice26Ga01_03HandlePowerReportCBEdddd_block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x29EDCA608];
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
  v5[0] = v2;
  v3 = *(a1 + 64);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, v5);
  result = v5[0];
  v5[0] = 0;
  if (result)
  {
    return MEMORY[0x29C296280](result, 0x1000C407A37F5ACLL);
  }

  return result;
}

void sub_298F6E1C0(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C296280](a9, 0x1000C407A37F5ACLL, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c92_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss14PwrMeasurementENS_14default_deleteIS3_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 40;
  v3 = a2 + 40;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_40c92_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss14PwrMeasurementENS_14default_deleteIS3_EEEEEEE(uint64_t a1)
{
  v1 = a1 + 40;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v1);
}

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void GncP02_10DataIndFromMECB(size_t a1, unsigned __int8 *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a1 > 8)
  {
    v5 = gnssOsa_Calloc("GncP02_10DataIndFromMECB", 93, 1, 0x20uLL);
    if (v5)
    {
      v6 = v5;
      v7 = gnssOsa_Calloc("GncP02_10DataIndFromMECB", 99, 1, a1);
      v6[2] = v7;
      if (v7)
      {
        memcpy_s("GncP02_10DataIndFromMECB", 106, v7, a1, a2, a1);
        *(v6 + 12) = a1;
        if (a2[2] == 77)
        {
          v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        }

        else
        {
          LODWORD(v8) = 0;
        }

        *(v6 + 7) = v8;
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v9 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ME_BUF_RX_IND =>GNCP Len,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 68, "GncP02_10DataIndFromMECB", *(v6 + 12));
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }

        AgpsSendFsmMsg(132, 132, 8655363, v6);
      }

      else
      {

        free(v6);
      }
    }
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MsgLen,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GncP02_10DataIndFromMECB", 783, a1);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }
}

void GncP02_11StrtMEDataDelayTimr(unsigned int a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (g_GncPMeData == 1)
  {
    if (AgpsFsmStopTimer(8656134) && g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncP02_11StrtMEDataDelayTimr", 1545);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    g_GncPMeData = 0;
  }

  if (AgpsFsmStartTimer(8656134, a1))
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GncP02_11StrtMEDataDelayTimr", 1544, a1);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }
  }

  else
  {
    g_GncPMeData = 1;
    mach_continuous_time();
  }
}

void GncP02_13ClearMEBuf(void)
{
  v2 = *MEMORY[0x29EDCA608];
  while (g_GncPMeData)
  {
    GncP02_14ClearCurrMEBufElem();
  }

  g_GncPMeData = 0;
  if (g_GncPMeData)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v0 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MEDataPack,%u\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncP02_13ClearMEBuf", 770, g_GncPMeData);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    g_GncPMeData = 0;
  }
}

void GncP02_14ClearCurrMEBufElem(void)
{
  v3 = *MEMORY[0x29EDCA608];
  if (g_GncPMeData)
  {
    v0 = *(g_GncPMeData + 4104);
    free(g_GncPMeData);
    if (g_GncPMeData)
    {
      --g_GncPMeData;
    }

    else if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 87, "GncP02_14ClearCurrMEBufElem", 770);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    g_GncPMeData = v0;
  }
}

BOOL GncP02_15AddMEDataElem(unsigned __int8 *a1, size_t a2, int a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = gnssOsa_Calloc("GncP02_15AddMEDataElem", 259, 1, 0x1010uLL);
  if (v6)
  {
    if (g_GncPMeData == 255)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MEData Overflow\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncP02_15AddMEDataElem");
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      GncP02_13ClearMEBuf();
    }

    v6[1025] = a3;
    *(v6 + 2048) = a2;
    *(v6 + 513) = 0;
    memcpy_s("GncP02_15AddMEDataElem", 278, v6, 0x1000u, a1 + 8, a2);
    v8 = &g_GncPMeData;
    v9 = g_GncPMeData;
    if (g_GncPMeData)
    {
      do
      {
        v10 = v9;
        v9 = *(v9 + 4104);
      }

      while (v9);
      v8 = (v10 + 4104);
    }

    *v8 = v6;
    ++g_GncPMeData;
  }

  return v6 != 0;
}

uint64_t GncP02_16GetMEDataFrmBuf(unsigned int a1, char *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = g_GncPMeData;
  if (g_GncPMeData)
  {
    v5 = 0;
    while (1)
    {
      v6 = *(v3 + 4096);
      if (!v5 && v6 > a1)
      {
        break;
      }

      if (v6 + v5 <= a1)
      {
        g_GncPMeData = *(v3 + 4100);
        memcpy_s("GncP02_16GetMEDataFrmBuf", 352, &a2[v5], a1 - v5, v3, v6);
        v5 += *(g_GncPMeData + 4096);
        GncP02_14ClearCurrMEBufElem();
        v3 = g_GncPMeData;
        if (g_GncPMeData)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    if (g_LbsOsaTrace_Config < 2)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MaxBytes less than MeData in node, MaxBytes:%u, NodeDataLen:%u, PktTS:%u, PktCount:%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncP02_16GetMEDataFrmBuf", a1, *(g_GncPMeData + 4096), *(g_GncPMeData + 4100), g_GncPMeData);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  v5 = 0;
LABEL_11:
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MaxBytes:%u, ReadBytes:%u, LatestReadTS:%u, NumPacketsLeft:%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncP02_16GetMEDataFrmBuf", a1, v5, g_GncPMeData, g_GncPMeData);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  return v5;
}

uint64_t GncP02_22HandleDataFromME(uint64_t a1, unsigned __int16 a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ME_BUF_RX_IND Len,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 68, "GncP02_22HandleDataFromME", *(a1 + 24));
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    if (!*(a1 + 24))
    {
      goto LABEL_23;
    }

    if ((*(a1 + 24) - 4097) <= 0xF007u)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MsgLen,%u,Max,%u\n", v4);
LABEL_22:
        gnssOsa_PrintLog(__str, 2, 1, 0);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    v6 = *(a1 + 16);
    if (*v6 != 122 || *(v6 + 1) != 120)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ME Data nonZX MC,%u,MID,%u\n", v11);
        goto LABEL_22;
      }

LABEL_23:
      v12 = *(a1 + 16);
      if (v12)
      {
        free(v12);
      }

      *(a1 + 16) = 0;
      return 0;
    }

    v7 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v7 == 66)
    {
      if (v8 == 83)
      {
        GncP02_25HandleDeRegGnssResp(*(v6 + 8));
        goto LABEL_41;
      }

      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_41;
      }

      bzero(__str, 0x3C6uLL);
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v24 = v8;
      v16 = 66;
    }

    else
    {
      if (v7 != 79)
      {
        if (v7 == 77)
        {
          if (v8 != 77)
          {
            goto LABEL_41;
          }

          v9 = *(v6 + 5);
          if (GncP02_15AddMEDataElem(*(a1 + 16), v9, *(a1 + 28)))
          {
            if ((g_GncPMeData & 1) == 0)
            {
              if (word_2A13C3B64 && word_2A13C3B66 >= 0x3E8u)
              {
                GncP02_11StrtMEDataDelayTimr(word_2A13C3B64);
              }

              if (g_LbsOsaTrace_Config < 4)
              {
                goto LABEL_41;
              }

              bzero(__str, 0x3C6uLL);
              v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FixInt,%u,Timer,%u,Started,%u,Len,%u,TS,%u,NumPks,%u\n", v19, "GNC", 73);
              goto LABEL_51;
            }

            if (g_LbsOsaTrace_Config >= 4)
            {
              bzero(__str, 0x3C6uLL);
              v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Len,%u,TS,%u,NumPks,%u\n", v10);
LABEL_51:
              v17 = 4;
              goto LABEL_40;
            }

LABEL_41:
            if (*(*(a1 + 16) + 2) == 77)
            {
              GncP16_26UpdateStateMEDataRcvd();
              if ((g_GncPMeData & 1) == 0)
              {
                GncP01_32ExecutePE(v18);
              }
            }

            goto LABEL_23;
          }

          if (g_LbsOsaTrace_Config < 2)
          {
            goto LABEL_41;
          }

          bzero(__str, 0x3C6uLL);
          v21 = "GncP02_18ProcessMClassMsg";
          v22 = v9;
          v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v14 = "%10u %s%c %s: MEData Lost Len,%u\n";
        }

        else
        {
          if (g_LbsOsaTrace_Config < 2)
          {
            goto LABEL_41;
          }

          bzero(__str, 0x3C6uLL);
          v22 = 777;
          v23 = v7;
          v21 = "GncP02_ZX_HandleData";
          v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v14 = "%10u %s%c %s: #%04hx MC,%u\n";
        }

LABEL_39:
        snprintf(__str, 0x3C5uLL, v14, v20, "GNC", 87, v21, v22, v23, v24);
        v17 = 2;
LABEL_40:
        gnssOsa_PrintLog(__str, v17, 1, 0);
        goto LABEL_41;
      }

      if (v8 == 84 || v8 == 66)
      {
        GncP25_04HandleTimeMarkEvent(*(a1 + 16));
        goto LABEL_41;
      }

      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_41;
      }

      bzero(__str, 0x3C6uLL);
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v24 = v8;
      v16 = 79;
    }

    v22 = 778;
    v23 = v16;
    v14 = "%10u %s%c %s: #%04hx MC,%u,MID,%u\n";
    v21 = "GncP02_ZX_HandleData";
    v20 = v15;
    goto LABEL_39;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 69, "GncP02_22HandleDataFromME", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

void GncP02_25HandleDeRegGnssResp(uint64_t result)
{
  v1 = result;
  v10 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config <= 3)
  {
    v3 = result;
  }

  else
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    v3 = v1;
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Status,%c\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP02_25HandleDeRegGnssResp", v1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (v1 <= 0x4Cu)
  {
    if (v1 != 32)
    {
      if (v1 == 67 || v1 == 71)
      {
        SleepTimeout = HSW_GetSleepTimeout();
        GncP03_SendGNSSSleepRequest(SleepTimeout, 0);
        return;
      }

      goto LABEL_15;
    }

LABEL_12:
    if (g_LbsOsaTrace_Config < 5)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Success response\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "GncP02_25HandleDeRegGnssResp");
    v6 = 5;
    goto LABEL_19;
  }

  if (v1 == 77)
  {
    GncP16_31UpdateStateMEPowerState(7u);
    return;
  }

  if (v1 != 119)
  {
    if (v1 != 109)
    {
LABEL_15:
      if (g_LbsOsaTrace_Config < 2)
      {
        return;
      }

      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Status,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncP02_25HandleDeRegGnssResp", 770, v3);
      v6 = 2;
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (g_LbsOsaTrace_Config < 4)
  {
    return;
  }

  bzero(__str, 0x3C6uLL);
  v8 = mach_continuous_time();
  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ME Wake-up in progress\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncP02_25HandleDeRegGnssResp");
  v6 = 4;
LABEL_19:
  gnssOsa_PrintLog(__str, v6, 1, 0);
}

uint64_t GncP02_31MEDataDelayTimExp(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_MEDATA_DELAY_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncP02_31MEDataDelayTimExp");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    v2 = g_GncPStateInfo;
    g_GncPMeData = 0;
    if (g_GncPStateInfo > 0x10u)
    {
      goto LABEL_20;
    }

    if (((1 << g_GncPStateInfo) & 0x10A3E) != 0)
    {
LABEL_6:
      GncP02_13ClearMEBuf();
      return 0;
    }

    if (((1 << g_GncPStateInfo) & 0xC5C1) == 0)
    {
LABEL_20:
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GncP02_12MEDataTimerExpiry", 262, v2);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }
    }

    v4 = g_GncPMeData;
    if (!g_GncPMeData)
    {
      return 0;
    }

    v5 = g_GncPMeData;
    v6 = g_GncPMeData;
    while ((v6 & 1) == 0)
    {
      v7 = *(v4 + 4096);
      a1 = GncP01_32ExecutePE(a1);
      v6 = g_GncPMeData;
      v8 = g_GncPMeData;
      v4 = g_GncPMeData;
      if (g_GncPMeData == v5)
      {
        if (*(g_GncPMeData + 4096) == v7)
        {
          break;
        }

        v8 = v5;
      }

      v5 = v8;
      if (!g_GncPMeData)
      {
        return 0;
      }
    }

    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: State,%hhu,NumPks,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 69, "GncP02_12MEDataTimerExpiry", v2, v5);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    goto LABEL_6;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncP02_31MEDataDelayTimExp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t GncP02_32StateHndlTimExp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_STATE_HNDL_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 68, "GncP02_32StateHndlTimExp");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    GncP16_25UpdateStateTimerExpiry(a1, a2, a3);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP02_32StateHndlTimExp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t GncP02_33BBResetTimExp(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_GNSSBBRESET_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncP02_33BBResetTimExp");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    GncP19_04MEResetTimerExpiry();
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 69, "GncP02_33BBResetTimExp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t GncP02_34TimemarkSessTimExp(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_TIMEMARK_SESS_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncP02_34TimemarkSessTimExp");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    GncP25_10TimemarkSessTimerExpiry();
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 69, "GncP02_34TimemarkSessTimExp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

void *DD_Delete_Bad_NVIC_Data(void *result)
{
  v1 = 0;
  v2 = result + 5962;
  v3 = result + 6228;
  v4 = p_NV + 27040;
  v5 = (p_NV + 27936);
  do
  {
    v6 = result[5953];
    if (*(v6 + v1) == 1)
    {
      *(v6 + v1) = 0;
      *(result[5951] + v1) = 0;
      *(result[5955] + v1) = 0;
      *(v2 + 60) = 0uLL;
      v2[2] = 0uLL;
      v2[3] = 0uLL;
      *v2 = 0uLL;
      v2[1] = 0uLL;
      *(result[5961] + v1) = 0;
      *(result[5958] + v1) = 1;
      *(v5 - 1) = 0xFFFFFFFFLL;
      *v5 = 0uLL;
      v5[1] = 0uLL;
      v5[2] = 0uLL;
      v5[3] = 0uLL;
      *(v5 + 60) = 0uLL;
    }

    v7 = result[5954];
    if (*(v7 + v1) == 1)
    {
      *(v7 + v1) = 0;
      *(result[5952] + v1) = 0;
      *(result[5957] + v1) = 0;
      *(v3 + 48) = 0;
      *(v3 + 1) = 0uLL;
      *(v3 + 2) = 0uLL;
      *v3 = 0uLL;
      *(result[5961] + v1) = 0;
      *(v4 - 8) = 0xFFFFFFFFLL;
      *v4 = 0uLL;
      *(v4 + 16) = 0uLL;
      *(v4 + 32) = 0uLL;
      *(v4 + 48) = 0;
    }

    ++v1;
    v4 += 64;
    v5 = (v5 + 88);
    v3 = (v3 + 52);
    v2 = (v2 + 76);
  }

  while (v1 != 14);
  return result;
}

uint64_t DD_Delete_Inhib_NVIC_Data(uint64_t result, void *a2)
{
  v2 = 0;
  v3 = a2 + 5962;
  v4 = a2 + 6228;
  v5 = p_NV + 27040;
  v6 = (p_NV + 27936);
  do
  {
    if (*(result + v2) == 1)
    {
      *(a2[5953] + v2) = 0;
      *(a2[5951] + v2) = 0;
      *(a2[5955] + v2) = 0;
      *(v3 + 60) = 0uLL;
      v3[2] = 0uLL;
      v3[3] = 0uLL;
      *v3 = 0uLL;
      v3[1] = 0uLL;
      *(a2[5956] + v2) = 0;
      *(v3 + 1124) = 0uLL;
      *(v3 + 1096) = 0uLL;
      *(v3 + 1112) = 0uLL;
      *(v3 + 1064) = 0uLL;
      *(v3 + 1080) = 0uLL;
      *(a2[5961] + v2) = 0;
      *(a2[5958] + v2) = 1;
      *(v6 - 1) = 0xFFFFFFFFLL;
      *v6 = 0uLL;
      v6[1] = 0uLL;
      v6[2] = 0uLL;
      v6[3] = 0uLL;
      *(v6 + 60) = 0uLL;
      *(a2[5954] + v2) = 0;
      *(a2[5952] + v2) = 0;
      *(a2[5957] + v2) = 0;
      *(v4 + 48) = 0;
      *(v4 + 1) = 0uLL;
      *(v4 + 2) = 0uLL;
      *v4 = 0uLL;
      *(v5 - 8) = 0xFFFFFFFFLL;
      *v5 = 0uLL;
      *(v5 + 16) = 0uLL;
      *(v5 + 32) = 0uLL;
      *(v5 + 48) = 0;
    }

    ++v2;
    v5 += 64;
    v6 = (v6 + 88);
    v4 = (v4 + 52);
    v3 = (v3 + 76);
  }

  while (v2 != 14);
  return result;
}

void DD_Check_Age_NVIC_Data(unsigned int a1, uint64_t a2)
{
  if (a1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = a2 + 47624;
  v8 = a1 + 900;
  if (a1 <= 0x384)
  {
    v9 = 900;
  }

  else
  {
    v9 = a1;
  }

  v10 = v9 - 900;
  if (a1 <= 0x15180)
  {
    v11 = 86400;
  }

  else
  {
    v11 = a1;
  }

  v12 = v11 - 86400;
  v13 = *(a2 + 47640);
  v14 = 47696;
  do
  {
    if (*(v13 + v4) != 1)
    {
      goto LABEL_19;
    }

    v15 = *(a2 + v14);
    if (v15 >= 1 && v15 < v12)
    {
LABEL_17:
      v5 = 1;
      *(*v7 + v4) = 1;
      goto LABEL_19;
    }

    if (v15)
    {
      if (v15 > v8)
      {
        ++v6;
        if ((*(a2 + 62170) & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      *(a2 + v14) = v10;
    }

LABEL_19:
    ++v4;
    v14 += 76;
  }

  while (v4 != 14);
  if (v6 > 0)
  {
    if (*(a2 + 62170))
    {
      v17 = "(Skipped)";
    }

    else
    {
      v17 = &unk_299066A3A;
    }

    EvLog_v("DD_Check_Age_NVIC_Data:  Deleting Future EPH, %d SVs  %s", v6, v17);
  }

  v18 = 0;
  if (a1 <= 15724800)
  {
    v19 = 15724800;
  }

  else
  {
    v19 = a1;
  }

  v20 = v19 - 15724800;
  v31 = 0;
  v32 = (a1 - (v19 - 15724800)) / 604800;
  v21 = 49824;
  do
  {
    if (*(*(v7 + 32) + v18) == 1)
    {
      v22 = *(a2 + v21);
      if (v22 >= 1 && v22 < v20)
      {
        v5 = 1;
        *(*(v7 + 8) + v18) = 1;
        EvLog_v("DD_Check_Age_NVIC_Data:  Deleting Old ALM, SV %d age %d thresh %d", v18 + 1, (a1 - v22) / 604800, v32);
      }

      else if (v22)
      {
        if (v22 > v8)
        {
          ++v31;
          v24 = (a1 - v22) / 604800;
          v25 = &unk_299066A3A;
          if (*(a2 + 62170))
          {
            v25 = "(Skipped)";
          }

          EvLog_v("DD_Check_Age_NVIC_Data:  Deleting Future ALM, SV %d age %d thresh %d  %s", v18 + 1, v24, 0, v25);
          if ((*(a2 + 62170) & 1) == 0)
          {
            v5 = 1;
            *(*(v7 + 8) + v18) = 1;
          }
        }
      }

      else
      {
        *(a2 + v21) = v10;
      }
    }

    ++v18;
    v21 += 52;
  }

  while (v18 != 14);
  if (v31 > 0)
  {
    if (*(a2 + 62170))
    {
      v26 = "(Skipped)";
    }

    else
    {
      v26 = &unk_299066A3A;
    }

    EvLog_v("DD_Check_Age_NVIC_Data:  Deleting Future ALM, %d SVs  %s", v31, v26);
  }

  if (!*(v7 + 2932))
  {
    goto LABEL_63;
  }

  v27 = (v7 + 2928);
  if (a1 <= 2419200)
  {
    v28 = 2419200;
  }

  else
  {
    v28 = a1;
  }

  v29 = *v27;
  if (*v27 < 1 || v29 >= (v28 - 2419200))
  {
    if (!v29)
    {
      *v27 = v10;
      if ((v5 & 1) == 0)
      {
        return;
      }

      goto LABEL_64;
    }

    if (v29 > v8)
    {
      v30 = *(a2 + 62170) ? "(Skipped)" : &unk_299066A3A;
      EvLog_v("DD_Check_Age_NVIC_Data:  Deleting Future NGTO, %d  %d  %s", v29, v8, v30);
      if ((*(a2 + 62170) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_63:
    if ((v5 & 1) == 0)
    {
      return;
    }

    goto LABEL_64;
  }

LABEL_55:
  *v27 = 0;
  *(v7 + 2936) = 0;
  *(v7 + 2944) = 0;
  *(a2 + 50576) = 0u;
  *(a2 + 50592) = 0u;
  *(a2 + 50606) = 0;
  if ((v5 & 1) == 0)
  {
    return;
  }

LABEL_64:

  DD_Delete_Bad_NVIC_Data(a2);
}

void DD_Proc_NVIC_Data(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, float64x2_t *a5)
{
  v96 = *MEMORY[0x29EDCA608];
  v10 = a5 + 2974;
  v11 = *(a2 + 8);
  v12 = *(a2 + 12);
  if ((v12 - 3) < 2)
  {
    v14 = *(a2 + 13);
    v15 = v14 == 26 || v14 == 9;
    if (v15)
    {
      HIDWORD(v16) = *(a2 + 20);
      LODWORD(v16) = *(a2 + 24);
      v17 = (v16 >> 28) & 0x3F;
      if (v17 == 26 || v17 == 9)
      {
        *(v95 + 14) = 0;
        DWORD2(v95[0]) = 0;
        BYTE12(v95[0]) = 0;
        if (!NVIC_L5_NGTOBin2Int((a2 + 20), v95))
        {
          v19 = *a4;
          LODWORD(v95[0]) = *a4;
          DWORD1(v95[0]) = 4;
          v20 = &v10[185].f64[1];
          if (SHIDWORD(v10[185].f64[1]) < 4 || v19 > *v20)
          {
            LODWORD(v10[186].f64[1]) = v95[1];
            *v20 = v95[0];
            v21 = SLOWORD(v10[186].f64[0]);
            v10[187].f64[0] = v10[185].f64[1];
            v22.f64[0] = SWORD1(v10[186].f64[0]);
            v22.f64[1] = SBYTE4(v10[186].f64[0]);
            v10[187].f64[1] = v21 * 2.91038305e-11;
            a5[3162] = vmulq_f64(v22, xmmword_299050CC0);
            LODWORD(v10[189].f64[0]) = 16 * HIWORD(v10[186].f64[0]);
            WORD2(v10[189].f64[0]) = LOWORD(v10[186].f64[1]);
            if (*a4 >= 1)
            {
              v23 = 0;
              LODWORD(v24) = 0;
              v25 = p_NV;
              v26 = p_NV + 27008;
              *(p_NV + 27008) = v95[0];
              *(v26 + 16) = v95[1];
              v27 = 55665;
              do
              {
                v28 = *(v26 + v23) ^ BYTE1(v27);
                v27 = 52845 * (v27 + v28) + 22719;
                v24 = (v24 + v28);
                ++v23;
              }

              while (v23 != 24);
              *(v25 + 27000) = v24;
            }
          }
        }
      }
    }

    else
    {
      if (v14 != 7)
      {
        return;
      }

      HIDWORD(v31) = *(a2 + 20);
      LODWORD(v31) = *(a2 + 24);
      if (((v31 >> 28) & 0x3F) == 7)
      {
        HIDWORD(v95[0]) = 0;
        LOWORD(v95[1]) = 0;
        DWORD1(v95[1]) = 0;
        WORD4(v95[1]) = 0;
        *&v95[0] = 0;
        *(v95 + 7) = 0;
        memset(&v95[1] + 12, 0, 21);
        NVIC_L5_AlmBin2Int((a2 + 20), v95);
        LODWORD(v95[0]) = *a4;
        DWORD1(v95[0]) = 4;
        v32 = BYTE8(v95[0]);
        v33 = BYTE8(v95[0]) < 0xFu;
        if (BYTE8(v95[0]) >= 0xFu)
        {
          EvCrt_v("DD_BDS_IntAlm_Valid:  FAILED:  SVid = %d > %d, Out of range !", BYTE8(v95[0]), 14);
        }

        if (WORD6(v95[0]) - 8193 <= 0xFFFFDFFF)
        {
          EvCrt_v("DD_NVIC_IntAlm_Valid:  FAILED:  SV %d  WeekNo = %d > %d, Out of range !", BYTE8(v95[0]), WORD6(v95[0]), 0x2000);
          v33 = 0;
        }

        v34 = HIWORD(v95[0]);
        if (HIWORD(v95[0]) <= 0x93A8u)
        {
          v35 = WORD4(v95[1]);
          if (SWORD4(v95[1]) <= 27488)
          {
            if (v33)
            {
              v62 = v10[4].f64[1];
              v63 = (v32 - 1);
              if ((!*(*&v62 + v63) || *(a5[3114].f64 + 13 * (v32 - 1)) < SLODWORD(v95[0]) || *(&a5[3114].f64[1] + 26 * (v32 - 1) + 3) != HIWORD(v95[0]) || HIWORD(v95[0]) != *(a1 + 2 * v63 + 53066)) && *(*&v10[3].f64[1] + v63) == 1 && *(*&v10->f64[0] + v63) == 1)
              {
                v64 = v95[1];
                v65 = &a5[3114] + 52 * (v32 - 1);
                *v65 = v95[0];
                *(v65 + 12) = v95[3];
                v66 = v95[2];
                *(v65 + 1) = v64;
                *(v65 + 2) = v66;
                *(*&v10[2].f64[0] + v63) = 1;
                *(*&v62 + v63) = 1;
                *(a1 + 2 * v63 + 53066) = v34;
                EvVrb_v("EvVrb_NVIC_IntAlm: %d %d %d %d  %d %d %d %d  %d %d %d %d  %d", *(&a5[3114].f64[1] + 26 * (v32 - 1) + 2), *(&a5[3114].f64[1] + 52 * (v32 - 1)), *(&a5[3114].f64[1] + 26 * (v32 - 1) + 3), *(&a5[3115].f64[1] + 13 * (v32 - 1) + 1), *(a5[3115].f64 + 26 * (v32 - 1)), *(a5[3116].f64 + 13 * (v32 - 1) + 1), *(&a5[3116].f64[1] + 13 * (v32 - 1)), *(a5[3116].f64 + 13 * (v32 - 1)), *(&a5[3115].f64[1] + 26 * (v32 - 1)), *(a5[3115].f64 + 13 * (v32 - 1) + 1), *(&a5[3116].f64[1] + 26 * (v32 - 1) + 2), *(&a5[3116].f64[1] + 26 * (v32 - 1) + 3), *(&a5[3114].f64[1] + 52 * (v32 - 1) + 1));
                if (*a4 >= 1)
                {
                  Core_Save_NVIC_Alm(v32, 0, v65);
                }
              }
            }

            goto LABEL_45;
          }
        }

        else
        {
          EvCrt_v("DD_NVIC_IntAlm_Valid:  FAILED:  SV %d  toa = %d > 604800 s, Out of range !", BYTE8(v95[0]), 16 * HIWORD(v95[0]));
          v35 = WORD4(v95[1]);
          if (SWORD4(v95[1]) < 27489)
          {
            goto LABEL_45;
          }
        }

        EvCrt_v("DD_NVIC_IntAlm_Valid:  FAILED:  SV %d  Omega_dot = %g > %g, Out of range !", BYTE8(v95[0]), v35 * 1.14290475e-11, 0.000000314161658);
      }
    }
  }

  else if (v12 == 2)
  {
    if (NVIC_Is_Idle_Pattern_SF2((a2 + 20)))
    {
      v13 = v11 + 1;
      EvLog_v("DD_Proc_NVIC_Data: Idle pattern detected in SF2, SV %d");
LABEL_25:
      *(*&v10->f64[0] + v11) = 0;
      *(*&v10[4].f64[1] + v11) = 0;
      v29 = v13 - 1;
      if (v29 <= 0xD)
      {
        v30 = p_NV + (v29 << 6);
        *(v30 + 27032) = 0xFFFFFFFFLL;
        *(v30 + 27040) = 0u;
        *(v30 + 27056) = 0u;
        *(v30 + 27072) = 0u;
        *(v30 + 27088) = 0;
      }

      return;
    }

    HIDWORD(v43) = *(a2 + 24);
    LODWORD(v43) = *(a2 + 28);
    v36 = v43 >> 18;
    v38 = a1 + 2 * v11;
    if (*(*&v10->f64[0] + v11) != 1 || *(*&v10[3].f64[1] + v11) != 1 || *(v38 + 53038) != v36)
    {
      v44 = a1 + 80 * v11 + 53124;
      v45 = *(a2 + 20);
      v46 = *(a2 + 36);
      *(v44 + 72) = *(a2 + 52);
      *(v44 + 56) = v46;
      *(v44 + 40) = v45;
      v42 = 53038;
      goto LABEL_44;
    }
  }

  else
  {
    if (v12 != 1)
    {
      return;
    }

    if (NVIC_Is_Idle_Pattern_SF1((a2 + 20)))
    {
      v13 = v11 + 1;
      EvLog_v("DD_Proc_NVIC_Data: Idle pattern detected in SF1, SV %d");
      goto LABEL_25;
    }

    HIDWORD(v37) = *(a2 + 28);
    LODWORD(v37) = *(a2 + 32);
    v36 = v37 >> 22;
    v38 = a1 + 2 * v11;
    if (*(*&v10->f64[0] + v11) != 1 || *(*&v10[3].f64[1] + v11) != 1 || *(v38 + 53010) != v36)
    {
      v39 = a1 + 80 * v11 + 53124;
      v40 = *(a2 + 20);
      v41 = *(a2 + 36);
      *(v39 + 32) = *(a2 + 52);
      *v39 = v40;
      *(v39 + 16) = v41;
      v42 = 53010;
LABEL_44:
      *(v38 + v42) = v36;
    }
  }

LABEL_45:
  if (*(a2 + 12) - 1 > 1)
  {
    return;
  }

  v47 = a1 + 53010;
  v48 = *(a1 + 53010 + 2 * v11);
  if (v48 == 0xFFFF || v48 != *(a1 + 2 * v11 + 53038) || v48 == *(a1 + 53094 + 2 * v11) && *(*&v10->f64[0] + v11) == 1 && (*(*&v10[3].f64[1] + v11) & 1) != 0)
  {
    return;
  }

  v49 = *(a2 + 8);
  memset(v95, 0, 76);
  NVIC_L5_EphBin2Int((a1 + 80 * v49 + 53124), v95);
  BYTE8(v95[0]) = v49 + 1;
  DWORD1(v95[0]) = 4;
  v50 = HIWORD(v95[0]) <= 0x2000u;
  if (HIWORD(v95[0]) > 0x2000u)
  {
    EvCrt_v("DD_NVIC_IntEph_Valid:  FAILED:  SV %d  WeekNo = %d > %d, Out of range !", (v49 + 1), HIWORD(v95[0]), 0x2000);
  }

  if (WORD1(v95[1]) >= 0x93A9u)
  {
    EvCrt_v("DD_NVIC_IntEph_Valid:  FAILED:  SV %d  toe = %d > 604800 s, Out of range !", BYTE8(v95[0]), 16 * WORD1(v95[1]));
    v50 = 0;
  }

  v51 = LOWORD(v95[1]);
  if (LOWORD(v95[1]) >= 0x93A9u)
  {
    EvCrt_v("DD_NVIC_IntEph_Valid:  FAILED:  SV %d  toc = %d > 604800 s, Out of range !", BYTE8(v95[0]), 16 * LOWORD(v95[1]));
    v50 = 0;
    v51 = LOWORD(v95[1]);
  }

  if (v51 != WORD1(v95[1]))
  {
    EvCrt_v("DD_NVIC_IntEph_Valid:  FAILED:  SV %d  toc = %d != toe = %d", BYTE8(v95[0]), 16 * v51, 16 * WORD1(v95[1]));
    v50 = 0;
  }

  if (DWORD1(v95[2]) >= 0x33333334)
  {
    EvCrt_v("DD_NVIC_IntEph_Valid:  FAILED:  SV %d  e = %g > %g, Too big for IGSO !", BYTE8(v95[0]), DWORD1(v95[2]) * 1.16415322e-10, 0.1);
    v50 = 0;
  }

  if (SHIDWORD(v95[3]) > 879609)
  {
    EvCrt_v("DD_NVIC_IntEph_Valid:  FAILED:  SV %d  Omega_dot = %d > %d, Too big for IGSO !", BYTE8(v95[0]), HIDWORD(v95[3]), 879609);
    v50 = 0;
  }

  v52 = v95[2];
  if (LODWORD(v95[2]) >> 25 < 0x4B)
  {
    EvCrt_v("DD_NVIC_IntEph_Valid:  FAILED:  SV %d  Sqrt_A = %g < %g, Too small for MEO !", BYTE8(v95[0]), vcvtd_n_f64_u32(v95[2], 0x13uLL), 4800.0);
    v52 = v95[2];
    if (LODWORD(v95[2]) <= 0xDAC00000)
    {
      return;
    }

    goto LABEL_67;
  }

  if (LODWORD(v95[2]) > 0xDAC00000)
  {
LABEL_67:
    EvCrt_v("DD_NVIC_IntEph_Valid:  FAILED:  SV %d  Sqrt_A = %g > %g, Too big for IGSO !", BYTE8(v95[0]), vcvtd_n_f64_u32(v52, 0x13uLL), 7000.0);
    return;
  }

  if (!v50)
  {
    return;
  }

  if (BYTE10(v95[0]))
  {
    goto LABEL_111;
  }

  v53 = Complete_NVIC_WeekNo(HIWORD(v95[0]));
  if (v53 >= 0x2000)
  {
    goto LABEL_111;
  }

  v54 = v53 + 1024;
  if (*(a3 + 16))
  {
    v55 = v54;
    if (*(a3 + 32) == v54)
    {
      v56 = (a3 + 70);
      v57 = 3;
      do
      {
        v58 = *v56;
        v59 = __OFSUB__(v58, 1);
        v60 = v58 - 1;
        if (v60 < 0 == v59)
        {
          *v56 = v60;
          if (!v60)
          {
            *(v56 - 3) = -1;
          }
        }

        ++v56;
        --v57;
      }

      while (v57);
      v61 = (v49 + 1);
    }

    else
    {
      v94 = v54;
      v69 = 0;
      v70 = (a3 + 70);
      while (*(v70 - 3) != v54)
      {
        ++v69;
        ++v70;
        if (v69 == 3)
        {
          goto LABEL_100;
        }
      }

      if (v69 >= 3)
      {
LABEL_100:
        v71 = 0;
        v72 = (a3 + 64);
        while (*v72 != -1)
        {
          --v71;
          ++v72;
          if (v71 == -3)
          {
            v73 = 3;
            goto LABEL_109;
          }
        }

        v74 = -v71;
        if (v74 < 3)
        {
          *v72 = v54;
          v72[3] = 1;
          v61 = (v49 + 1);
          v55 = v54;
          EvLog_v("DD_NVIC_Proc_Submit_GPS_WeekNo:  %d  SV %d", v54, v61);
          goto LABEL_110;
        }

        v73 = v74;
LABEL_109:
        v55 = v54;
        *(a3 + 68) = -1;
        *(a3 + 64) = -1;
        *(a3 + 70) = 0;
        *(a3 + 74) = 0;
        v61 = (v49 + 1);
        EvCrt_v("DD_NVIC_Proc_Submit_GPS_WeekNo: WeekNoCandidates array overflow! %d SV %d", v73, v61);
        goto LABEL_110;
      }

      v75 = *v70 + 1;
      *v70 = v75;
      EvLog_v("DD_NVIC_Proc_Submit_GPS_WeekNo: Cand %d  (%d)  SV %d", v54, v75, (v49 + 1));
      if (*v70 >= 3)
      {
        v67 = (v49 + 1);
        EvLog_v("DD_NVIC_Proc_Submit_GPS_WeekNo: Cand %d  (%d) OK  SV %d");
        goto LABEL_92;
      }

      v61 = (v49 + 1);
      v55 = v54;
    }

LABEL_110:
    EvLog_v("DD_NVIC_Proc_Submit_GPS_WeekNo: %d %d SV %d", 0, v55, v61);
LABEL_111:
    v68 = *a4;
    goto LABEL_112;
  }

  v94 = v54;
  v67 = (v49 + 1);
  EvLog_v("DD_NVIC_Proc_Submit_GPS_WeekNo: %d  SV %d");
LABEL_92:
  EvLog_v("DD_NVIC_Proc_Submit_GPS_WeekNo: %d %d SV %d", 1, v94, v67);
  *(a3 + 32) = v54;
  *(a3 + 16) = 1;
  *(a3 + 20) = *(a3 + 24);
  *(a3 + 64) = -1;
  *(a3 + 68) = -1;
  *(a3 + 70) = 0;
  *(a3 + 74) = 0;
  if (*a3 < 3)
  {
    *a4 = 0;
    goto LABEL_114;
  }

  v68 = *(a3 + 40) + 604800 * v54;
  *a4 = v68;
LABEL_112:
  if (v68 >= 1)
  {
    v76 = 0;
    LODWORD(v95[0]) = v68;
    goto LABEL_115;
  }

LABEL_114:
  v76 = 1;
LABEL_115:
  v77 = *(v47 + 2 * v49);
  v78 = LOWORD(v95[1]);
  if (v77 != LOWORD(v95[1]))
  {
    *(a1 + 53094 + 2 * v49) = v77;
    *(v47 + 2 * v49) = v78;
  }

  v79 = &a5[2981] + 76 * v49;
  v80 = v10[3].f64[1];
  if (*(v79 + 1) < 4)
  {
    if (!*(*&v80 + v49))
    {
      goto LABEL_130;
    }

    goto LABEL_125;
  }

  if (!*(*&v80 + v49))
  {
    goto LABEL_130;
  }

  if (*(v79 + 8) != v78)
  {
    goto LABEL_125;
  }

  if (*v79)
  {
    v76 = 1;
  }

  if ((v76 & 1) == 0)
  {
LABEL_125:
    if (Is_NVIC_IntEph_Same(v95, v79))
    {
      v81 = *v79;
      v82 = v95[0];
      *v79 = *&v95[0];
      if (!v81 && v82 >= 1)
      {
        Core_Save_NVIC_Eph((v49 + 1), 0, v79);
      }

      return;
    }

    v80 = v10[3].f64[1];
LABEL_130:
    v15 = BYTE10(v95[0]) == 0;
    v83 = v10->f64[0];
    *(*&v10->f64[0] + v49) = BYTE10(v95[0]) == 0;
    if (v15)
    {
      v84 = 1;
    }

    else
    {
      v84 = 2;
    }

    *(*&v10[1].f64[0] + 20 * v49) = v84;
    *(v79 + 60) = *(&v95[3] + 12);
    v85 = v95[3];
    *(v79 + 2) = v95[2];
    *(v79 + 3) = v85;
    v86 = v95[1];
    *v79 = v95[0];
    *(v79 + 1) = v86;
    *(*&v10[1].f64[1] + v49) = 1;
    *(*&v80 + v49) = 1;
    if (*a4 >= 1)
    {
      *(*&v10[5].f64[0] + v49) = 1;
      Core_Save_NVIC_Eph((v49 + 1), 0, v79);
      v83 = v10->f64[0];
    }

    v87 = 0;
    LODWORD(v88) = 0;
    v89 = p_NV;
    v90 = p_NV + 26980;
    v91 = *(*&v83 + 6);
    *(p_NV + 26980) = **&v83;
    *(v90 + 6) = v91;
    v92 = 55665;
    do
    {
      v93 = *(v89 + 26976 + v87) ^ BYTE1(v92);
      v92 = 52845 * (v92 + v93) + 22719;
      v88 = (v88 + v93);
      ++v87;
    }

    while (v87 != 24);
    *(v89 + 26968) = v88;
    EvVrb_v("EvVrb_NVIC_IntEph: %u %u %d %d %d  %u %u %d %d %u %u %u %d  %d %d %d %d %d %d %d %u %u %u %d %d %d %d", v79[8], *(v79 + 7), *(v79 + 5), *(v79 + 12), v79[26], v79[13], *(v79 + 8), *(v79 + 14), *(v79 + 14), v79[12], v79[10], v79[11], *(v79 + 33), *(v79 + 32), *(v79 + 35), *(v79 + 34), *(v79 + 37), *(v79 + 36), *(v79 + 15), *(v79 + 13), *(v79 + 9), *(v79 + 9), *(v79 + 8), *(v79 + 11), *(v79 + 12), *(v79 + 15), *(v79 + 10));
  }
}

uint64_t Decode_BDS_Alm_Health_Sts(int a1)
{
  if ((a1 & 0x100) != 0)
  {
    if (a1)
    {
      if ((a1 & 0xE0) != 0)
      {
        v5 = 4;
      }

      else
      {
        v5 = 7;
      }

      v6 = (a1 << 26 >> 31) & 6;
      if ((a1 & 0x40) != 0)
      {
        v6 = 5;
      }

      if ((a1 & 0x80) != 0)
      {
        v7 = v5;
      }

      else
      {
        v7 = v6;
      }

      if ((a1 & 0xE0) == 0)
      {
        v7 = v5;
      }

      if ((a1 & 2) != 0)
      {
        v8 = 3;
      }

      else
      {
        v8 = v7;
      }

      if (a1 == 255)
      {
        return 2;
      }

      else
      {
        return v8;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if ((a1 & 0xE0) != 0)
    {
      v1 = 8;
    }

    else
    {
      v1 = 11;
    }

    v2 = (a1 << 26 >> 31) & 0xA;
    if ((a1 & 0x40) != 0)
    {
      v2 = 9;
    }

    if ((a1 & 0x80) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = v2;
    }

    if ((a1 & 0xE0) == 0)
    {
      v3 = v1;
    }

    if ((a1 & 2) != 0)
    {
      return 3;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t Comp_AcqAid(int a1, __int16 a2, unsigned int a3, double *a4, uint64_t a5, double a6)
{
  result = *a4;
  *(a5 + 4) = result;
  if (result != 1)
  {
    return result;
  }

  *a5 = a1;
  v8 = a4[5] * 65.536;
  v9 = -0.5;
  if (v8 <= 0.0)
  {
    v10 = -0.5;
  }

  else
  {
    v10 = 0.5;
  }

  v11 = v8 + v10;
  if (v11 <= 2147483650.0)
  {
    if (v11 >= -2147483650.0)
    {
      v12 = v11;
    }

    else
    {
      LOWORD(v12) = 0;
    }
  }

  else
  {
    LOWORD(v12) = -1;
  }

  *(a5 + 20) = v12;
  v13 = a4[3];
  if (v13 > 0.0)
  {
    v9 = 0.5;
  }

  v14 = v13 + v9;
  if (v14 <= 2147483650.0)
  {
    if (v14 >= -2147483650.0)
    {
      v15 = v14;
    }

    else
    {
      LOWORD(v15) = 0;
    }
  }

  else
  {
    LOWORD(v15) = -1;
  }

  *(a5 + 22) = v15;
  v16 = *(a4 + 8);
  if (v16 >= a3)
  {
    *(a5 + 22) = -a2;
    LOWORD(v16) = a3;
  }

  *(a5 + 18) = v16;
  v17 = a4[6] * 4.0;
  v18 = -0.5;
  if (v17 > 0.0)
  {
    v18 = 0.5;
  }

  v19 = v17 + v18;
  if (v19 <= 2147483650.0)
  {
    v20 = v19;
    if (v19 < -2147483650.0)
    {
      LOWORD(v20) = 0;
    }
  }

  else
  {
    LOWORD(v20) = -1;
  }

  *(a5 + 38) = v20;
  v21 = *(a4 + 14);
  if (v21 >= 0xFF)
  {
    LOBYTE(v21) = -1;
  }

  *(a5 + 40) = v21;
  v22 = *(a4 + 1);
  *(a5 + 15) = v22 >> 6 < 0x753;
  v23 = *(a4 + 3);
  if (v23 >= 0x24988)
  {
    if (v23 > 0xDB930)
    {
      *(a5 + 14) = 0;
      goto LABEL_33;
    }

    v24 = 2;
  }

  else
  {
    v24 = 3;
  }

  *(a5 + 14) = v24;
LABEL_33:
  LODWORD(v19) = *(a4 + 2);
  v25 = *&v19 / 299792458.0;
  v26 = (v25 * 2000.0 + 0.5);
  v27 = a6 - v25;
  v28 = v27 / 1.5;
  if (v27 / 1.5 <= 0.0)
  {
    v28 = v27 / 1.5 + -1.0;
  }

  *(a5 + 16) = v26;
  v29 = (v27 + v28 * -1.5) * 1023000.0;
  *(a5 + 28) = v28;
  *(a5 + 32) = v29;
  *(a5 + 36) = vcvtd_n_s64_f64(v29 - v29, 0x10uLL);
  if (v28 < 0)
  {
    *(a5 + 28) = v28 + 403200;
  }

  v30 = *(a4 + 4);
  if (v30 >= 0x1E)
  {
    if (v30 <= 0x24988)
    {
      v31 = ((v30 + 29.3052256) / 29.3052256);
    }

    else
    {
      LOWORD(v31) = 5115;
    }
  }

  else
  {
    LOWORD(v31) = 1;
  }

  *(a5 + 26) = v31;
  if (v22 >= 0x4B1)
  {
    if (v22 <= 0x493DF)
    {
      v32 = (v22 + 600) / 0x4B0;
    }

    else
    {
      LOBYTE(v32) = -1;
    }
  }

  else
  {
    LOBYTE(v32) = 1;
  }

  *(a5 + 24) = v32;
  *(a5 + 43) = *(a4 + 60);
  v33 = a4[8] * 8.0;
  v34 = -0.5;
  if (v33 > 0.0)
  {
    v34 = 0.5;
  }

  v35 = v33 + v34;
  if (v35 <= 2147483650.0)
  {
    if (v35 >= -2147483650.0)
    {
      v36 = v35;
    }

    else
    {
      LOWORD(v36) = 0;
    }
  }

  else
  {
    LOWORD(v36) = -1;
  }

  *(a5 + 44) = v36;
  return result;
}

uint64_t Gnm28_01HandlePeNvBackup(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_PE_NV_BACKUP_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm28_01HandlePeNvBackup");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (!*(a1 + 12))
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v9 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NVSize,0\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm28_01HandlePeNvBackup", 515);
          gnssOsa_PrintLog(__str, 2, 1, 0);
          v3 = *(a1 + 16);
          if (!v3)
          {
            goto LABEL_22;
          }
        }

        v10 = v3;
        goto LABEL_21;
      }

      if (gnssOsa_storeBufferToNv(0, v3, *(a1 + 12)))
      {
        if (g_LbsOsaTrace_Config < 4)
        {
          goto LABEL_20;
        }

        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Success NvSize,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm28_01HandlePeNvBackup", *(a1 + 12));
        v5 = 4;
      }

      else
      {
        if (g_LbsOsaTrace_Config < 2)
        {
          goto LABEL_20;
        }

        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ReqWrite,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm28_01HandlePeNvBackup", 1570, *(a1 + 12));
        v5 = 2;
      }

      gnssOsa_PrintLog(__str, v5, 1, 0);
LABEL_20:
      v10 = *(a1 + 16);
      if (!v10)
      {
LABEL_22:
        *(a1 + 16) = 0;
        return 0;
      }

LABEL_21:
      free(v10);
      goto LABEL_22;
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Data\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm28_01HandlePeNvBackup", 513);
      v7 = 2;
      goto LABEL_13;
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm28_01HandlePeNvBackup", 517);
    v7 = 1;
LABEL_13:
    gnssOsa_PrintLog(__str, v7, 1, 0);
  }

  return 0;
}

uint64_t Gnm28_11RestorePeNv(int a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Restore PE NV initiated\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm28_11RestorePeNv");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = gnssOsa_Calloc("Gnm28_11RestorePeNv", 97, 1, 0x20uLL);
  if (!v3)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm28_11RestorePeNv", 1537);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    return 0;
  }

  v4 = v3;
  size = 0;
  if ((gnssOsa_getNvSize(0, &size) & 1) == 0)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v8 = 1572;
LABEL_14:
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", v7, "GNM", 87, "Gnm28_11RestorePeNv", v8);
      v9 = 2;
LABEL_17:
      gnssOsa_PrintLog(__str, v9, 1, 0);
    }

LABEL_18:
    free(v4);
    return 0;
  }

  if (!size)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Empty file\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm28_11RestorePeNv");
      v9 = 4;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (size >= 0x10000)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm28_11RestorePeNv", 770);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    gnssOsa_clearNV(0);
    goto LABEL_18;
  }

  v12 = gnssOsa_Calloc("Gnm28_11RestorePeNv", 132, 1, size);
  *(v4 + 2) = v12;
  if (!v12)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_18;
    }

    bzero(__str, 0x3C6uLL);
    v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v8 = 1537;
    goto LABEL_14;
  }

  Nv = gnssOsa_readNv(0, v12, size);
  v4[6] = Nv;
  if (size != Nv)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v15 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ReqRead,%zu,Read,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 87, "Gnm28_11RestorePeNv", 1571, size, v4[6]);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    v16 = *(v4 + 2);
    if (v16)
    {
      free(v16);
    }

    goto LABEL_18;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v14 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_PE_NV_RESTORE_REQ =>GNCP NvSize,%u,SeqNum,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 73, "Gnm28_11RestorePeNv", v4[6], a1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  *(v4 + 24) = a1;
  AgpsSendFsmMsg(128, 132, 8654080, v4);
  return 1;
}

uint64_t Gnm28_12HandlePeNvRestoreNoAck(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_VAR_PE_NV_RESTORE_TIMER\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm28_12HandlePeNvRestoreNoAck");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm28_12HandlePeNvRestoreNoAck", 517);
    v8 = 1;
LABEL_16:
    gnssOsa_PrintLog(__str, v8, 1, 0);
    return 0;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v3 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v4 = 78;
    if (g_Gnm_NVStoreCntxt)
    {
      v4 = 89;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TimerStart,%u,TimerStatus,%c\n", v3, "GNM", 73, "Gnm28_12HandlePeNvRestoreNoAck", HIDWORD(g_Gnm_NVStoreCntxt), v4);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (g_Gnm_NVStoreCntxt == 1)
  {
    v5 = HIDWORD(g_Gnm_NVStoreCntxt);
    if ((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v5 >= 0xFA)
    {
      LOBYTE(g_Gnm_NVStoreCntxt) = 0;
      HIDWORD(g_Gnm_NVStoreCntxt) = 0;
      if (qword_2A13EC608)
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v6 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Max PENvRestore attempts\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm28_12HandlePeNvRestoreNoAck");
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        LOBYTE(qword_2A13EC608) = 0;
        return 0;
      }

      LOBYTE(qword_2A13EC608) = 1;
      if (Gnm28_11RestorePeNv(1))
      {
        if (!AgpsFsmStartTimer(8400646, 0xFAu))
        {
          HIDWORD(g_Gnm_NVStoreCntxt) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          LOBYTE(g_Gnm_NVStoreCntxt) = 1;
          return 0;
        }

        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v10 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm28_12HandlePeNvRestoreNoAck", 1544);
          v8 = 2;
          goto LABEL_16;
        }
      }
    }
  }

  return 0;
}

uint64_t Gnm28_13HandlePeNvRestoreAck(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_PE_NV_RESTORE_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm28_13HandlePeNvRestoreAck");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v8 = 517;
LABEL_17:
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", v7, "GNM", 69, "Gnm28_13HandlePeNvRestoreAck", v8);
    v9 = 1;
LABEL_18:
    gnssOsa_PrintLog(__str, v9, 1, 0);
    return 0;
  }

  if (qword_2A13EC608 != *(a1 + 13))
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v8 = 1028;
    goto LABEL_17;
  }

  if (AgpsFsmStopTimer(8400646) && g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 87, "Gnm28_13HandlePeNvRestoreAck", 1545);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  LOBYTE(g_Gnm_NVStoreCntxt) = 0;
  HIDWORD(g_Gnm_NVStoreCntxt) = 0;
  v4 = *(a1 + 12);
  if ((v4 - 2) >= 2)
  {
    if (v4 != 1)
    {
      if (!*(a1 + 12))
      {
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v5 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Success Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm28_13HandlePeNvRestoreAck", *(a1 + 12));
          v6 = 4;
LABEL_39:
          gnssOsa_PrintLog(__str, v6, 1, 0);
        }

LABEL_40:
        LOBYTE(qword_2A13EC608) = 0;
        return 0;
      }

      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ErrCode,%hhu\n", v13);
LABEL_31:
        v9 = 2;
        goto LABEL_18;
      }

      return 0;
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Fail Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm28_13HandlePeNvRestoreAck", *(a1 + 12));
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    if (gnssOsa_clearNV(0))
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_40;
      }

      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: PeNv Deleted\n");
    }

    else
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_40;
      }

      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
    }

LABEL_38:
    v6 = 2;
    goto LABEL_39;
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v10 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Fail Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm28_13HandlePeNvRestoreAck", *(a1 + 12));
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  if (qword_2A13EC608)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_40;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Max PENvRestore attempts\n");
    goto LABEL_38;
  }

  LOBYTE(qword_2A13EC608) = 1;
  if (Gnm28_11RestorePeNv(1))
  {
    if (!AgpsFsmStartTimer(8400646, 0xFAu))
    {
      HIDWORD(g_Gnm_NVStoreCntxt) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      LOBYTE(g_Gnm_NVStoreCntxt) = 1;
      return 0;
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_31;
    }
  }

  return 0;
}