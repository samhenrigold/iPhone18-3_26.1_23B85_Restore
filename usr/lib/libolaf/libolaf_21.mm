uint64_t Fused_Nav_Update_Wrapper(char **a1)
{
  GNSS_Validate_p_list(a1, "Fused_Nav_Update_Wrapper: Entry");
  Fused_Nav_Update(a1[27], a1[34], a1[9], a1[18], a1[16], a1[10], a1[11], a1[49]);
  GNSS_Validate_p_list(a1, "Fused_Nav_Update_Wrapper:  Exit");
  return 1;
}

uint64_t GncP12_41HandleClearPosData(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    memset(&v18, 0, sizeof(v18));
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_CLEAR_GNSS_REQ,Mask,0x%X\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_41HandleClearPosData", *(a1 + 12));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    v4 = *(a1 + 12);
    g_GnssDataClrMask = v4;
    if ((v4 & 0x40000) != 0)
    {
      v9 = "FACT";
    }

    else if ((v4 & 0x10000) != 0)
    {
      v9 = "COLD";
    }

    else if ((v4 & 0x20000) != 0)
    {
      v9 = "WARM";
    }

    else if ((v4 & 0x100000) != 0)
    {
      v9 = "HOST";
    }

    else
    {
      if ((v4 & 0x80000) == 0)
      {
        if ((v4 & 0x200000) != 0)
        {
          MEMORY[0x29C29E950](&v18, "VHOT");
          v6 = 0;
        }

        else
        {
          if ((v4 & 4) != 0)
          {
            std::string::push_back(&v18, 80);
            v4 = *(a1 + 12);
          }

          LOWORD(v5) = v4;
          if ((v4 & 8) != 0)
          {
            std::string::push_back(&v18, 84);
            v5 = *(a1 + 12);
          }

          if ((v5 & 0x80) != 0)
          {
            std::string::push_back(&v18, 70);
            v5 = *(a1 + 12);
          }

          if ((v5 & 0x10) != 0)
          {
            std::string::push_back(&v18, 73);
            v5 = *(a1 + 12);
          }

          if ((v5 & 0x20) != 0)
          {
            std::string::push_back(&v18, 85);
            v5 = *(a1 + 12);
          }

          if (v5)
          {
            std::string::push_back(&v18, 69);
            v5 = *(a1 + 12);
          }

          if ((v5 & 2) != 0)
          {
            std::string::push_back(&v18, 65);
            v5 = *(a1 + 12);
          }

          if ((v5 & 0x40) != 0)
          {
            std::string::push_back(&v18, 72);
            v5 = *(a1 + 12);
          }

          if ((v5 & 0x800) != 0)
          {
            std::string::push_back(&v18, 67);
            v5 = *(a1 + 12);
          }

          if ((v5 & 0x200) != 0)
          {
            xofSvcs_ClrRtiData();
            v5 = *(a1 + 12);
          }

          v6 = (v4 >> 3) & 1;
          if ((v5 & 0x400) != 0)
          {
            xofSvcs_ClrOrbData();
            xofSvcs_ClrBceOrbData();
            g_OrbitDataAvailable = 0;
            g_BceOrbitDataInjected = 0;
          }
        }

LABEL_40:
        size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v18.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v11 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
            v12 = &v18;
            if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v12 = v18.__r_.__value_.__r.__words[0];
            }

            v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ValidClearReq DeleteReq,%s,MERstReq,%u\n", v11, "GNC", 73, "GncP12_41HandleClearPosData", v12, v6);
            LbsOsaTrace_WriteLog(8u, __str, v13, 4, 1);
          }

          if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v14 = &v18;
          }

          else
          {
            v14 = v18.__r_.__value_.__r.__words[0];
          }

          if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v15 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v15 = v18.__r_.__value_.__l.__size_;
          }

          GncP16_27UpdateStateClearNVReqRcvd(v14, v15, v6);
          if (g_GncPStateInfo > 0x10u)
          {
            goto LABEL_56;
          }

          v16 = 1;
          if (((1 << g_GncPStateInfo) & 0x10C08) != 0)
          {
            goto LABEL_59;
          }

          if (g_GncPStateInfo != 4)
          {
LABEL_56:
            v16 = 0;
          }

          GncP04_21SendClearGnssAck(v16);
        }

        else
        {
          GncP04_21SendClearGnssAck(1);
        }

LABEL_59:
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v18.__r_.__value_.__l.__data_);
        }

        return 0;
      }

      v9 = "VHOT";
    }

    MEMORY[0x29C29E950](&v18, v9);
    v6 = 1;
    goto LABEL_40;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "GncP12_41HandleClearPosData", 517);
    LbsOsaTrace_WriteLog(8u, __str, v8, 0, 1);
  }

  return 0;
}

void sub_2996584C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GncP12_42HandleAssistStatus(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASSIST_STATUS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_42HandleAssistStatus");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    GncP16_22UpdateStateAssistDataRcvd(0);
    if (GN_AGNSS_Get_Assist_Req(&v11, v24, v23, v22, v21, v20, v19))
    {
      v4 = gnssOsa_Calloc("GncP12_42HandleAssistStatus", 355, 1, 0x588uLL);
      if (v4)
      {
        v5 = v4;
        v4[3] = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        *(v5 + 16) = v11;
        *(v5 + 17) = v12;
        *(v5 + 19) = v15;
        if (v14 == 1)
        {
          GncP11_15PopulateGnssAssist((v5 + 6), v24, v13, v17, v18, v16);
        }

        else
        {
          *(v5 + 24) = 0;
        }

        *(v5 + 488) = 0;
        *(v5 + 256) = 0;
        *(v5 + 720) = 0;
        *(v5 + 952) = 0;
        *(v5 + 1184) = 0;
        if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASSIST_STATUS_RSP =>GNM\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncP12_42HandleAssistStatus");
          LbsOsaTrace_WriteLog(8u, __str, v9, 4, 1);
        }

        AgpsSendFsmMsg(134, 128, 8786948, v5);
      }
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 69, "GncP12_42HandleAssistStatus", 517);
    LbsOsaTrace_WriteLog(8u, __str, v7, 0, 1);
  }

  return 0;
}

uint64_t GncP12_32HandleGADRefPos(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_RPOS_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_32HandleGADRefPos");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    GncP12_09InjectGadRefPos(a1 + 12, *(a1 + 64));
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP12_32HandleGADRefPos", 517);
    LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
  }

  return 0;
}

double GncP12_09InjectGadRefPos(uint64_t a1, int a2)
{
  v37 = *MEMORY[0x29EDCA608];
  memset_s(&__s, 0x24uLL, 0, 0x24uLL);
  __s = *a1;
  v4 = *(a1 + 16);
  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    if (v4 != 2)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LatSign,%u\n", v25);
      goto LABEL_28;
    }

    v5 = 1;
  }

  v27 = v5;
  v28 = *(a1 + 20);
  v6 = *(a1 + 36);
  if (v6)
  {
    v7 = v6 != 1;
    v30 = *(a1 + 28);
    v8 = *(a1 + 40);
  }

  else
  {
    v7 = -1;
    v8 = -1;
  }

  v29 = v7;
  v33 = v8;
  v31 = *(a1 + 30);
  v11 = *(a1 + 32);
  v12 = vcvts_n_f32_u32(v11, 1uLL);
  if (v11 >= 0xB4)
  {
    v13 = -1;
  }

  else
  {
    v13 = v12;
  }

  v32 = v13;
  v34 = *(a1 + 41);
  v35 = -1;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G GADPOS LatSign,%d,Lat,%d,Long,%d,UncSemiMajor,%d,UncSemiMinor,%d,OrienMajorAxis,%d,UncAlt,%d,Confi,%d,AltDir,%d,Alt,%d\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 73, "GncP12_09InjectGadRefPos", v27, v28, HIDWORD(v28), v31, HIBYTE(v31), v32, v33, v34, v29, v30);
    LbsOsaTrace_WriteLog(8u, __str, v15, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G GADPOS Verdirect,%d,Bearing,%d,HorSpeed,%d,VerSpeed,%d,HorUncSpeed,%d,VerUncSpeed,%d\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 73, "GncP12_09InjectGadRefPos", v35, *(&v35 + 1), *(&v35 + 3), SBYTE5(v35), BYTE6(v35), HIBYTE(v35));
    LbsOsaTrace_WriteLog(8u, __str, v17, 4, 1);
  }

  v18 = *(a1 + 48);
  if (v18 >= 5)
  {
    v18 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Trust,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 87, "GncP12_09InjectGadRefPos", 770, *(a1 + 48));
      LbsOsaTrace_WriteLog(8u, __str, v20, 2, 1);
      v18 = 0;
    }
  }

  v21 = a2 - 1;
  if (a2 - 1) < 0xA && ((0x36Fu >> v21))
  {
    v22 = dword_29975FC10[v21];
  }

  else
  {
    v22 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Source,%u\n", (*&g_MacClockTicksToMsRelation * v23), "GNC", 87, "GncP12_09InjectGadRefPos", 770, a2);
      LbsOsaTrace_WriteLog(8u, __str, v24, 2, 1);
      v22 = 0;
    }
  }

  *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  GncP16_22UpdateStateAssistDataRcvd(__str);
  if ((GN_AGPS_Set_GAD_Ref_Pos(&__s, v18, v22) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GadPos\n");
LABEL_28:
    LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
  }

  return result;
}

uint64_t GncP12_04HandleGpsRefTime(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_RTIME_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_04HandleGpsRefTime");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    memset_s(&__s, 0xCuLL, 0, 0xCuLL);
    v4 = *(a1 + 12);
    v5 = *(a1 + 136);
    __s = *(a1 + 132);
    v30 = v4;
    v31 = *(a1 + 24);
    if (v5 > 0xB)
    {
      goto LABEL_39;
    }

    v6 = 1 << v5;
    if ((v6 & 0x9E0) != 0)
    {
      v7 = *(a1 + 16);
      goto LABEL_11;
    }

    if ((v6 & 0x1E) != 0)
    {
      v7 = 999;
    }

    else
    {
LABEL_39:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v27 = mach_continuous_time();
        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Src\n", (*&g_MacClockTicksToMsRelation * v27), "GNC", 87, "GncP12_04HandleGpsRefTime", 770);
        LbsOsaTrace_WriteLog(8u, __str, v28, 2, 1);
      }

      v7 = -1;
    }

LABEL_11:
    v32 = v7;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G RefTime OSTime,%u,TOW,%d,WeekNo,%d,RMS,%d\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 73, "GncP12_04HandleGpsRefTime", __s, v30, v31, v32);
      LbsOsaTrace_WriteLog(8u, __str, v12, 4, 1);
    }

    *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    GncP16_22UpdateStateAssistDataRcvd(__str);
    if ((GN_AGPS_Set_Ref_Time(&__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:G Time\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "GncP12_04HandleGpsRefTime", 257);
      LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
    }

    if (*(a1 + 32))
    {
      memset_s(&v33, 0x98uLL, 0, 0x98uLL);
      v15 = *(a1 + 32);
      if (v15 >= 0x18)
      {
        LOBYTE(v15) = 24;
      }

      v34 = v15;
      v33 = *(a1 + 12);
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G TOWAssist NumTOWA,%d,TOWms,%d\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 73, "GncP12_04HandleGpsRefTime", v34, v33);
        LbsOsaTrace_WriteLog(8u, __str, v17, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G TOWAssist SV,AntiSF,AlertF,TLMResrvd,TLMWord\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 73, "GncP12_04HandleGpsRefTime");
        LbsOsaTrace_WriteLog(8u, __str, v19, 4, 1);
      }

      if (v34)
      {
        v20 = 0;
        v21 = (a1 + 38);
        v22 = v35;
        do
        {
          *(v22 - 5) = *(v21 - 4) + 1;
          *(v22 - 4) = *(v21 - 1);
          *(v22 - 3) = *v21;
          *(v22 - 1) = *(v21 - 3);
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v23 = mach_continuous_time();
            v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G TOWAssist %2d,%7d,%7d,%10d,%8d\n", (*&g_MacClockTicksToMsRelation * v23), "GNC", 73, "GncP12_04HandleGpsRefTime", *(v22 - 5), *(v22 - 1), *v22, *(v22 - 4), *(v22 - 3));
            LbsOsaTrace_WriteLog(8u, __str, v24, 4, 1);
          }

          if (v20 > 0xE)
          {
            break;
          }

          v21 += 3;
          ++v20;
          v22 += 6;
        }

        while (v20 < v34);
      }

      if ((GN_AGPS_Set_TOW_Assist(&v33) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v25 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:G TOW\n", (*&g_MacClockTicksToMsRelation * v25), "GNC", 87, "GncP12_04HandleGpsRefTime", 257);
        v10 = 2;
        goto LABEL_32;
      }
    }

    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 69, "GncP12_04HandleGpsRefTime", 517);
    v10 = 0;
LABEL_32:
    LbsOsaTrace_WriteLog(8u, __str, v9, v10, 1);
  }

  return 0;
}

uint64_t GncP12_02HandleGpsNavModel(uint64_t a1)
{
  v47 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_NAVM_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_02HandleGpsNavModel");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 69, "GncP12_02HandleGpsNavModel", 517);
    v19 = 0;
LABEL_24:
    LbsOsaTrace_WriteLog(8u, __str, v18, v19, 1);
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 87, "GncP12_02HandleGpsNavModel", 513);
    v19 = 2;
    goto LABEL_24;
  }

  *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  GncP16_22UpdateStateAssistDataRcvd(__str);
  if (*(a1 + 24))
  {
    v5 = 0;
    v6 = (v4 + 38);
    do
    {
      memset_s(&__s, 0x48uLL, 0, 0x48uLL);
      __s = *(v6 - 38) + 1;
      v23 = *(v6 - 37);
      v24 = *(v6 - 18);
      v25 = v6[10];
      v26 = *(v6 - 34);
      v27 = *(v6 - 5);
      v28 = 0;
      v29 = *(v6 - 15);
      v30 = v6[9];
      v31 = *(v6 - 16);
      v32 = *(v6 - 4);
      v33 = *v6;
      v34 = v6[17];
      v35 = *(v6 - 1);
      v36 = v6[18];
      v37 = v6[4];
      v38 = v6[3];
      v39 = v6[12];
      v40 = v6[11];
      v41 = *(v6 - 3);
      v42 = *(v6 + 1);
      *&v7 = *(v6 + 5);
      *(&v7 + 1) = *(v6 + 13);
      v43 = v7;
      v44 = *(v6 + 19);
      v45 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G Eph SvId,%d,CodeOnL2,%d,URA,%d,SVHealth,%d,FitIntFlag,%d,AODA,%d,L2PFlag,%d,TGD,%d,AF2,%d,Week,%d\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncP12_02HandleGpsNavModel", __s, v23, v24, HIBYTE(v24), v25, HIBYTE(v25), v26, v27, SHIBYTE(v27), v28);
        LbsOsaTrace_WriteLog(8u, __str, v9, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G Eph TOC,%d,TOE,%d,IODC,%d,Af1,%d,dn,%d,IDot,%d,Crs,%d,Crc,%d,Cus,%d,Cuc,%d\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 73, "GncP12_02HandleGpsNavModel", v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
        LbsOsaTrace_WriteLog(8u, __str, v11, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G Eph Cis,%d,Cic,%d,af0,%d,M0,%d,e,%d,APowHalf,%d,Omega0,%d,I0,%d,W,%d,OmegaDot,%d\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 73, "GncP12_02HandleGpsNavModel", v39, v40, v41, v42, v43, DWORD1(v43), DWORD2(v43), HIDWORD(v43), v44, HIDWORD(v44));
        LbsOsaTrace_WriteLog(8u, __str, v13, 4, 1);
      }

      if ((GN_AGPS_Set_Eph_El(&__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:G EPH SatID,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 87, "GncP12_02HandleGpsNavModel", 257, __s);
        LbsOsaTrace_WriteLog(8u, __str, v15, 2, 1);
      }

      ++v5;
      v6 += 42;
    }

    while (v5 < *(a1 + 24));
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    free(v16);
  }

  *(a1 + 16) = 0;
  return 0;
}

uint64_t GncP12_01HandleGpsAlmanac(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_ALMANAC_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_01HandleGpsAlmanac");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (*(a1 + 16))
    {
      *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      GncP16_22UpdateStateAssistDataRcvd(__str);
      v4 = *(a1 + 16);
      if (*(a1 + 32))
      {
        v5 = 0;
        do
        {
          memset_s(&__s, 0x24uLL, 0, 0x24uLL);
          v19 = *v4 + 1;
          __s = v4[2];
          v20 = v4[7];
          v21 = v4[6];
          v22 = *(v4 + 30);
          v23 = *(v4 + 2);
          v24 = *(v4 + 4);
          v25 = *(v4 + 14);
          v26 = *(v4 + 12);
          v27 = 0;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v6 = mach_continuous_time();
            v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G ALM SvId,%d,Wna,%d,SVHealth,%d,toa,%d,Af0,%d,Af1,%d,e,%d\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP12_01HandleGpsAlmanac", v19, __s, v20, v21, v22, SHIWORD(v22), v23);
            LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v8 = mach_continuous_time();
            v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G ALM delta_I,%d,OmegaDot,%d,APowHalf,%d,Omega0,%d,w,%d,M0,%d\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncP12_01HandleGpsAlmanac", v24, v25, v26, DWORD1(v26), DWORD2(v26), HIDWORD(v26));
            LbsOsaTrace_WriteLog(8u, __str, v9, 4, 1);
          }

          if ((GN_AGPS_Set_Alm_El(&__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v10 = mach_continuous_time();
            v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:G ALM SatID,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "GncP12_01HandleGpsAlmanac", 257, v19);
            LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
          }

          ++v5;
          v4 += 36;
        }

        while (v5 < *(a1 + 32));
        v4 = *(a1 + 16);
      }

      if (v4)
      {
        free(v4);
      }

      *(a1 + 16) = 0;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 87, "GncP12_01HandleGpsAlmanac", 513);
      LbsOsaTrace_WriteLog(8u, __str, v15, 2, 1);
    }

    v16 = *(a1 + 24);
    if (v16)
    {
      free(v16);
    }

    *(a1 + 24) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "GncP12_01HandleGpsAlmanac", 517);
    LbsOsaTrace_WriteLog(8u, __str, v13, 0, 1);
  }

  return 0;
}

uint64_t GncP12_07HandleGpsRti(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_RTI_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_07HandleGpsRti");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    v17[0] = 0;
    v17[1] = 0;
    *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    GncP16_22UpdateStateAssistDataRcvd(__str);
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    LOBYTE(v4) = *(a1 + 12);
    if (v4)
    {
      v5 = 0;
      do
      {
        if (v4 <= (v5 + 1))
        {
          v6 = v5 + 1;
        }

        else
        {
          v6 = v4;
        }

        v7 = (v6 + ~v5);
        if (v7 >= 0xF)
        {
          v7 = 15;
        }

        memset_pattern16(__s, &unk_299729150, 4 * v7 + 4);
        v8 = 0;
        v9 = v5;
        do
        {
          v10 = v8;
          *(v17 + v8) = *(a1 + 13 + v5 + v8) + 1;
          ++v8;
        }

        while (v10 <= 0xE && v8 + v5 < v4);
        if ((GN_AGNSS_Set_Bad_SV_List(v8, __s, v17) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:RTI,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GncP12_07HandleGpsRti", 257, v8);
          LbsOsaTrace_WriteLog(8u, __str, v12, 2, 1);
        }

        v5 += v8;
        v4 = *(a1 + 12);
      }

      while (v4 > (v9 + v8));
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 69, "GncP12_07HandleGpsRti", 517);
    LbsOsaTrace_WriteLog(8u, __str, v14, 0, 1);
  }

  return 0;
}

uint64_t GncP12_13HandleNwGpsPos(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_NETWORK_POS_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_13HandleNwGpsPos");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    GncP12_09InjectGadRefPos(a1 + 12, 10);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP12_13HandleNwGpsPos", 517);
    LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
  }

  return 0;
}

uint64_t GncP12_33HandleIonoData(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_IONO_MODEL_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_33HandleIonoData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    memset_s(&__s, 0x10uLL, 0, 0x10uLL);
    if (*(a1 + 12) == 1)
    {
      __s = 0;
      v13 = *(a1 + 16);
      v14 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G Iono ZCount,%d,A0,%d,A1,%d,A2,%d,A3,%d,B0,%d,B1,%d,B2,%d,B3,%d\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP12_33HandleIonoData", __s, v13, SBYTE1(v13), SBYTE2(v13), SBYTE3(v13), SBYTE4(v13), SBYTE5(v13), SBYTE6(v13), SHIBYTE(v13));
        LbsOsaTrace_WriteLog(8u, __str, v5, 4, 1);
      }

      *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      GncP16_22UpdateStateAssistDataRcvd(__str);
      if ((GN_AGPS_Set_Ion(&__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:G IONO\n");
LABEL_14:
        v8 = v6;
        v9 = 2;
        goto LABEL_15;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:Iono Type,%u\n", v11);
      goto LABEL_14;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "GncP12_33HandleIonoData", 517);
    v9 = 0;
LABEL_15:
    LbsOsaTrace_WriteLog(8u, __str, v8, v9, 1);
  }

  return 0;
}

uint64_t GncP12_37HandleUtcModel(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_UTC_MODEL_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_37HandleUtcModel");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (*(a1 + 12) == 1)
    {
      memset_s(&__s, 0x14uLL, 0, 0x14uLL);
      __s = 0;
      v13 = *(a1 + 16);
      v14 = *(a1 + 24);
      v15 = *(a1 + 28);
      v16 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:UTC ZCount,%d,A1,%d,A0,%d,Tot,%d,Wnt,%d,dtLs,%d,WNLSF,%d,DN,%d,dtLSF,%d\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP12_37HandleUtcModel", __s, v13, HIDWORD(v13), v14, BYTE1(v14), SBYTE2(v14), HIBYTE(v14), v15, SHIBYTE(v15));
        LbsOsaTrace_WriteLog(8u, __str, v5, 4, 1);
      }

      *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      GncP16_22UpdateStateAssistDataRcvd(__str);
      if ((GN_AGPS_Set_UTC(&__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:G UTC\n");
LABEL_14:
        v8 = v6;
        v9 = 2;
        goto LABEL_15;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:UTC Type,%u\n", v11);
      goto LABEL_14;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "GncP12_37HandleUtcModel", 517);
    v9 = 0;
LABEL_15:
    LbsOsaTrace_WriteLog(8u, __str, v8, v9, 1);
  }

  return 0;
}

uint64_t GncP12_35HandleGnssRefTime(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_RTIME_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_35HandleGnssRefTime");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "GncP12_35HandleGnssRefTime", 517);
      v9 = 0;
LABEL_20:
      LbsOsaTrace_WriteLog(8u, __str, v8, v9, 1);
      return 0;
    }

    return 0;
  }

  memset_s(&__s, 0x14uLL, 0, 0x14uLL);
  v18 = GncP11_03ConvertGnssIDToGn(*(a1 + 424));
  *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  GncP16_22UpdateStateAssistDataRcvd(__str);
  if (v18)
  {
    v19 = *(a1 + 12);
    v20 = *(a1 + 20) + 1000 * *(a1 + 16);
    __s = *(a1 + 32);
    v4 = *(a1 + 428);
    if (v4 > 0xB)
    {
      goto LABEL_27;
    }

    v5 = 1 << v4;
    if ((v5 & 0x9E0) != 0)
    {
      v6 = *(a1 + 24);
      goto LABEL_14;
    }

    if ((v5 & 0x1E) != 0)
    {
      v6 = 999;
    }

    else
    {
LABEL_27:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Src\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 87, "GncP12_35HandleGnssRefTime", 770);
        LbsOsaTrace_WriteLog(8u, __str, v15, 2, 1);
      }

      v6 = -1;
    }

LABEL_14:
    v21 = v6;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSS RefTime OSTime,%u,Type,%d,Day,%d,TOD,%d,RMS,%d\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 73, "GncP12_35HandleGnssRefTime", __s, v18, v19, v20, v21);
      LbsOsaTrace_WriteLog(8u, __str, v12, 4, 1);
    }

    if ((GN_AGNSS_Set_Ref_Time(&__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GNSS Time\n");
      goto LABEL_19;
    }

    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNSSId,%u\n", v16);
LABEL_19:
    v8 = v10;
    v9 = 2;
    goto LABEL_20;
  }

  return 0;
}

uint64_t GncP12_40HandleGnssRti(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_RTI_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_40HandleGnssRti");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    GncP16_22UpdateStateAssistDataRcvd(__str);
    if (*(a1 + 12))
    {
      v4 = 0;
      v5 = a1 + 272;
      do
      {
        memset(v16, 0, sizeof(v16));
        memset_s(__s, 0x100uLL, 0, 0x100uLL);
        v6 = 0;
        while (v4 < *(a1 + 12))
        {
          v7 = GncP11_03ConvertGnssIDToGn(*(v5 + 4 * v4 - 256));
          __s[v6] = v7;
          if (v7)
          {
            *(v16 + v6++) = *(v5 + v4) + 1;
          }

          else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v8 = mach_continuous_time();
            v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GncP12_40HandleGnssRti", 515);
            LbsOsaTrace_WriteLog(8u, __str, v9, 2, 1);
          }

          ++v4;
          if (v6 >= 0x40u)
          {
            v4 = v4;
            goto LABEL_15;
          }
        }

        v4 = v4;
        if (!v6)
        {
          continue;
        }

LABEL_15:
        if ((GN_AGNSS_Set_Bad_SV_List(v6, __s, v16) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v10 = mach_continuous_time();
          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:RTI,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "GncP12_40HandleGnssRti", 257, v6);
          LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
        }
      }

      while (v4 < *(a1 + 12));
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "GncP12_40HandleGnssRti", 517);
    LbsOsaTrace_WriteLog(8u, __str, v13, 0, 1);
  }

  return 0;
}

uint64_t GncP12_39HandleTimeModel(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_TIME_MODEL_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_39HandleTimeModel");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "GncP12_39HandleTimeModel", 517);
    v14 = 0;
LABEL_26:
    LbsOsaTrace_WriteLog(8u, __str, v13, v14, 1);
    return 0;
  }

  memset_s(&__s, 0x20uLL, 0, 0x20uLL);
  __s = GncP11_03ConvertGnssIDToGn(*(a1 + 12));
  if (!__s)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNSSIDFrom\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 87, "GncP12_39HandleTimeModel", 515);
    v14 = 2;
    goto LABEL_26;
  }

  *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  GncP16_22UpdateStateAssistDataRcvd(__str);
  if (*(a1 + 16))
  {
    v4 = 0;
    for (i = (a1 + 42); ; i += 12)
    {
      v23 = GncP11_03ConvertGnssIDToGn(*(i - 3));
      if (v23)
      {
        break;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNSSIDTo\n");
LABEL_19:
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

LABEL_20:
      if (++v4 >= *(a1 + 16))
      {
        return 0;
      }
    }

    v24 = 0;
    v18 = *(i - 11);
    v20 = *(i - 9);
    v21 = *(i - 10);
    v6 = *i;
    if (((*i + 64) & 0xFF80) != 0)
    {
      LOBYTE(v6) = 127;
    }

    v22 = v6;
    v7 = *(i - 1);
    if (v7 == 0xFFFF)
    {
      LOWORD(v7) = 0x7FFF;
    }

    v19 = v7;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G TIMEMDL TypeFrm,%d,TOW,%d,Week,%d,tA0,%d,tA1,%d,tA2,%d,deltaT,%d,TypeTo,%d\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncP12_39HandleTimeModel", __s, v18, v19, v20, HIDWORD(v20), v21, v22, v23);
      LbsOsaTrace_WriteLog(8u, __str, v9, 4, 1);
    }

    if ((GN_AGNSS_Set_Time_Model(&__s) & 1) != 0 || !LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GNSS TimeModel GNSSID,%u\n", v10);
    goto LABEL_19;
  }

  return 0;
}

uint64_t GncP12_03HandleGpsAcqAssist(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_ACQ_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_03HandleGpsAcqAssist");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    GncP16_22UpdateStateAssistDataRcvd(__str);
    if (*(a1 + 28))
    {
      v4 = 0;
      do
      {
        memset_s(&__s, 0xE8uLL, 0, 0xE8uLL);
        v5 = 0;
        v6 = 0;
        __s = *(a1 + 12);
        v7 = v4;
        v4 += 16;
        v8 = (a1 + 41 + 12 * v7);
        while (v7 < *(a1 + 28))
        {
          v9 = &__s + v5;
          v9[6] = *(v8 - 11) + 1;
          *(v9 + 4) = *(v8 - 9);
          v9[10] = *(v8 - 10);
          v9[11] = *(v8 - 7);
          *(v9 + 6) = *(v8 - 5);
          v9[14] = *(v8 - 6);
          *(v9 + 15) = *(v8 - 3);
          v10 = *(v8 - 1);
          if (v10 == 255)
          {
            LOBYTE(v10) = 0;
          }

          v9[17] = v10;
          v11 = *v8;
          if (v11 == 255)
          {
            LOBYTE(v11) = 0;
          }

          v9[18] = v11;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 1))
          {
            bzero(__str, 0x410uLL);
            v12 = mach_continuous_time();
            v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G ACQ SvId,%d,D0,%d,D1,%d,DoppUnc,%d,CodePhase,%d,IntCodePh,%d,GPSBitNo,%d,CodeWind,%d,Azi,%d,Elev,%d\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 73, "GncP12_03HandleGpsAcqAssist", v9[6], *(v9 + 4), v9[10], v9[11], *(v9 + 6), v9[14], v9[15], v9[16], v9[17], v9[18]);
            LbsOsaTrace_WriteLog(8u, __str, v13, 4, 1);
          }

          ++v7;
          --v6;
          v5 += 14;
          v8 += 12;
          if (v5 == 224)
          {
            LOBYTE(v14) = 16;
            goto LABEL_17;
          }
        }

        v14 = -v6;
        v4 = v7;
LABEL_17:
        v23 = v14;
        if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 1))
        {
          bzero(__str, 0x410uLL);
          v15 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G ACQ RefGPSTOW,%d,NumAA,%d\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 73, "GncP12_03HandleGpsAcqAssist", __s, v23);
          LbsOsaTrace_WriteLog(8u, __str, v16, 4, 1);
        }

        if ((GN_AGPS_Set_Acq_Ass(&__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:G ACQ\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 87, "GncP12_03HandleGpsAcqAssist", 257);
          LbsOsaTrace_WriteLog(8u, __str, v18, 2, 1);
        }
      }

      while (*(a1 + 28) > v4);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 69, "GncP12_03HandleGpsAcqAssist", 517);
    LbsOsaTrace_WriteLog(8u, __str, v20, 0, 1);
  }

  return 0;
}

uint64_t GncP12_34HandleGnssAcqAssist(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_ACQ_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_34HandleGnssAcqAssist");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v22), "GNC", 69, "GncP12_34HandleGnssAcqAssist", 517);
    v24 = 0;
    goto LABEL_37;
  }

  *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  GncP16_22UpdateStateAssistDataRcvd(__str);
  if (!*(a1 + 25))
  {
    return 0;
  }

  v4 = 0;
  do
  {
    memset_s(&__s, 0x3D0uLL, 0, 0x3D0uLL);
    v30 = *(a1 + 24);
    v29 = GncP11_03ConvertGnssIDToGn(*(a1 + 20));
    if (!v29)
    {
      v5 = *(a1 + 16);
      if (v5 != -1)
      {
        v6 = 0;
        goto LABEL_10;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        return 0;
      }

      bzero(__str, 0x410uLL);
      v25 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnssTimeID and GpsTow\n", (*&g_MacClockTicksToMsRelation * v25), "GNC", 87, "GncP12_34HandleGnssAcqAssist", 515);
      v24 = 2;
LABEL_37:
      LbsOsaTrace_WriteLog(8u, __str, v23, v24, 1);
      return 0;
    }

    v5 = 0;
    v6 = *(a1 + 12);
LABEL_10:
    v7 = 0;
    __s = v6;
    v28 = v5;
    v8 = (a1 + 48 + 24 * v4);
    while (v4 < *(a1 + 25))
    {
      v9 = &v32[5 * v7];
      v10 = GncP11_03ConvertGnssIDToGn(*(v8 - 4));
      *v9 = v10;
      if (v10)
      {
        *(v9 + 4) = *(v8 - 20) + 1;
        *(v9 + 6) = *(v8 - 10);
        v11 = *(v8 - 1);
        *(v9 + 10) = *(v8 - 6);
        v12 = (v11 * 0.703125);
        if (v11 > 0x1FF)
        {
          LOWORD(v12) = 0;
        }

        *(v9 + 7) = v12;
        if ((*v8 & 0x80u) == 0)
        {
          v13 = (*v8 * 0.703125);
        }

        else
        {
          v13 = 0;
        }

        *(v9 + 16) = v13;
        ++v7;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 1))
        {
          goto LABEL_23;
        }

        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSS ACQ Type,%d,SvId,%d,D0,%d,D1,%d,DoppUnc,%d,CodePhase,%d,IntCodePh,%d,CodeWin,%d,Azi,%d,Elev,%d\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 73, "GncP12_34HandleGnssAcqAssist", *v9, *(v9 + 4), *(v9 + 3), *(v9 + 8), *(v9 + 9), *(v9 + 5), *(v9 + 12), *(v9 + 13), *(v9 + 7), *(v9 + 16));
        v16 = 4;
        goto LABEL_22;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNSSID,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 87, "GncP12_34HandleGnssAcqAssist", 515, *(v8 - 4));
        v16 = 2;
LABEL_22:
        LbsOsaTrace_WriteLog(8u, __str, v15, v16, 1);
      }

LABEL_23:
      ++v4;
      v8 += 24;
      if (v7 >= 0x30)
      {
        v4 = v4;
        goto LABEL_26;
      }
    }

    v4 = v4;
    if (!v7)
    {
      continue;
    }

LABEL_26:
    v31 = v7;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSS ACQ Ref_GNSSTOD,%d,RefGPSTOW,%d,GNSSType,%d,Conf,%d,Num_AA,%d\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 73, "GncP12_34HandleGnssAcqAssist", __s, v28, v29, v30, v31);
      LbsOsaTrace_WriteLog(8u, __str, v19, 4, 1);
    }

    if ((GN_AGNSS_Set_Acq_Ass(&__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GNSS ACQ\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 87, "GncP12_34HandleGnssAcqAssist", 257);
      LbsOsaTrace_WriteLog(8u, __str, v21, 2, 1);
    }
  }

  while (v4 < *(a1 + 25));
  return 0;
}

double GncP12_10ClearPeRtiInfo(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((GN_GPS_Set_RTI_Bad_SV_List(0, 0, 0) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:ClearRTI\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 87, "GncP12_10ClearPeRtiInfo", 257);
      LbsOsaTrace_WriteLog(8u, __str, v2, 2, 1);
    }
  }

  return result;
}

uint64_t GncP12_06HandleGpsFta(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_FTA_PULSE_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_06HandleGpsFta");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = g_GncPStateInfo;
    if ((g_GncPStateInfo - 9) > 0xFDu)
    {
      memset_s(&__s, 0x20uLL, 0, 0x20uLL);
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:FTA,Wk,%u,TowSec,%u,TowFracNs,%u,UncUs,%u, OsTimeMs,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 73, "GncP12_06HandleGpsFta", *(a1 + 12), *(a1 + 16), *(a1 + 20), *(a1 + 24), *(a1 + 32));
        LbsOsaTrace_WriteLog(8u, __str, v12, 4, 1);
      }

      LODWORD(v9) = *(a1 + 16);
      LODWORD(v10) = *(a1 + 20);
      __s = v9 + v10 * 0.000000001;
      v24 = *(a1 + 12);
      v25 = *(a1 + 24);
      v26 = -1;
      v27 = *(a1 + 32);
      v28 = 1;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:FTA G,TOW,%f,WeekNo,%d,AbsRMSus,%d,RelRMSns,%d,OS_Time_ms,%u,MultPulses,%d\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 73, "GncP12_06HandleGpsFta", __s, v24, v25, v26, v27, v28);
        LbsOsaTrace_WriteLog(8u, __str, v14, 4, 1);
      }

      if (GN_AGPS_Set_EFSP_Time(&__s))
      {
        v15 = 1;
      }

      else
      {
        v15 = 0;
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:FTA G\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 87, "GncP12_06HandleGpsFta", 257);
          LbsOsaTrace_WriteLog(8u, __str, v17, 2, 1);
          v15 = 0;
        }
      }

      v18 = gnssOsa_Calloc("GncP12_06HandleGpsFta", 1281, 1, 0x14uLL);
      if (v18)
      {
        v19 = v18;
        *(v18 + 3) = *(a1 + 36);
        *(v18 + 4) = v15;
        if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v20 = mach_continuous_time();
          v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_FTA_STATUS_IND =>LSIM\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 73, "GncP12_06HandleGpsFta");
          LbsOsaTrace_WriteLog(8u, __str, v21, 4, 1);
        }

        AgpsSendFsmMsg(134, 131, 8595204, v19);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Ignored in State,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncP12_06HandleGpsFta", 262, v4);
      v7 = 4;
LABEL_9:
      LbsOsaTrace_WriteLog(8u, __str, v6, v7, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 69, "GncP12_06HandleGpsFta", 517);
    v7 = 0;
    goto LABEL_9;
  }

  return 0;
}

BOOL G5K_ME_Poll_New_Meas(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, _DWORD *a5, _BYTE *a6)
{
  result = 0;
  v203[1] = *MEMORY[0x29EDCA608];
  v203[0] = 0.0;
  *a6 = 0;
  if (*(a1 + 402) == 1)
  {
    v192 = a1;
    API_Get_UTC_Cor(1, v203);
    v11 = -0.5;
    if (v203[0] > 0.0)
    {
      v11 = 0.5;
    }

    v12 = v203[0] + v11;
    if (v203[0] + v11 <= 2147483650.0)
    {
      if (v12 < -2147483650.0)
      {
        v193 = 0;
        goto LABEL_10;
      }

      v13 = v12;
    }

    else
    {
      LOBYTE(v13) = -1;
    }

    v193 = v13;
LABEL_10:
    v14 = a4;
    v15 = (v192 + 10848);
    v16 = v192;
    if (*a3 && *(v192 + 448) - *a3 < 0 || *(v192 + 403) == 1 && *a4 && *(v192 + 512) - *a4 < 0 || *(v192 + 408) == 1 && (v17 = a5[672]) != 0 && *(v192 + 10816) - v17 < 0 || *(v192 + 412) == 1 && (v18 = a5[673]) != 0 && *(v192 + 10820) - v18 < 0 || *(v192 + 416) == 1 && (v19 = a5[674]) != 0 && *(v192 + 10824) - v19 < 0 || *(v192 + 420) == 1 && (v20 = a5[675]) != 0 && *(v192 + 10828) - v20 < 0)
    {
      *(v192 + 403) = 0;
      *(v192 + 408) = 0;
      *(v192 + 412) = 0;
      *(v192 + 416) = 0;
      *(v192 + 420) = 0;
      *(v192 + 465) = 0;
      *(a4 + 7460) = 0;
      *a6 = 1;
    }

    v21 = *(v192 + 508);
    if (v21 && v21 == *(v192 + 448) && *(v192 + 460) > *(a2 + 948))
    {
      EvCrt_d("ME_Poll_New: Invalid TTick", v21);
LABEL_73:
      v51 = 0;
      *(v16 + 424) = 0;
      *(v16 + 412) = 0;
      *(v16 + 416) = 0;
      *(v16 + 420) = 0;
      *(v16 + 413) = 0;
      *(v16 + 417) = 0;
      *(v16 + 421) = 0;
      *(v192 + 402) = 0;
      *(v192 + 410) = 0;
      do
      {
        v52 = v16 + 540 + v51;
        *v52 = 0;
        *(v52 + 8) = 0;
        *(v52 + 15) = 0;
        v51 += 20;
      }

      while (v51 != 160);
      v53 = 0;
      v54 = v16;
      do
      {
        *(v54 + 752) = 0;
        *(v54 + 720) = 0uLL;
        *(v54 + 736) = 0uLL;
        *(v54 + 704) = 0uLL;
        v55 = v16 + 3392 + v53;
        *(v55 + 32) = 0;
        *v55 = 0uLL;
        *(v55 + 16) = 0uLL;
        *(v54 + 8173) = 0;
        *(v54 + 8160) = 0uLL;
        v53 += 36;
        *(v54 + 8144) = 0uLL;
        *(v54 + 8128) = 0uLL;
        v54 += 56;
      }

      while (v53 != 1728);
      *(v16 + 11172) = 0;
      *(v16 + 11176) = 0;
      *(v16 + 11180) = 0u;
      *(v16 + 11196) = 0u;
      *(v16 + 11212) = 0u;
      *(v16 + 11228) = 0u;
      *(v16 + 11241) = 0;
      *(v15 + 312) = 0;
      *(v16 + 11380) = 0;
      *(v16 + 11252) = 0u;
      *(v16 + 11268) = 0u;
      *(v16 + 11284) = 0u;
      *(v16 + 11300) = 0u;
      *(v16 + 11316) = 0u;
      *(v16 + 11332) = 0u;
      *(v16 + 11348) = 0u;
      *(v16 + 11364) = 0u;
      *(v15 + 313) = v193;
      result = *(v16 + 508) == 0;
      *(v16 + 10816) = 0u;
      return result;
    }

    v22 = a4 + 4096;
    *(v192 + 508) = 0;
    v23 = *(v192 + 512);
    if (*(v192 + 403) != 1 || v23 != *(v192 + 448))
    {
      if (v23)
      {
        v28 = *(v192 + 398) + 1;
        *(v192 + 398) = v28;
        EvLog_nd("ME_Poll_New: Missed {H", 5, v10, v28, *(v192 + 406), *(v192 + 400), v23, *(v192 + 448));
        v22 = a4 + 4096;
        v14 = a4;
      }

      v29 = 0;
      v30 = *(v192 + 468);
      *v14 = *(v192 + 448);
      *(v14 + 4) = v30;
      *(v14 + 21) = 0;
      *(v14 + 24) = 0;
      do
      {
        v31 = v14 + 2720 + v29;
        *(v31 + 32) = 0;
        *v31 = 0uLL;
        *(v31 + 16) = 0uLL;
        v29 += 36;
      }

      while (v29 != 1728);
      *(v22 + 3360) = 0;
      *(v22 + 3361) = v193;
      goto LABEL_48;
    }

    v24 = v23 - *a4;
    if (v24 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v23 - *a4;
    }

    v26 = v25;
    *(a4 + 24) = 0;
    *(a4 + 21) = 0;
    v197 = (v192 + 10832);
    if (*(v192 + 11158) == 1)
    {
      for (i = 0; i != 160; i += 20)
      {
        if (*(v192 + 558 + i) == 1)
        {
          *v197 = v23;
          goto LABEL_80;
        }
      }

      if (v23 - *(v192 + 10832) >= 12001)
      {
        *(v192 + 11120) = 0u;
        *(v192 + 11136) = 0u;
        *(v192 + 11088) = 0u;
        *(v192 + 11104) = 0u;
        *(v192 + 11056) = 0u;
        *(v192 + 11072) = 0u;
        *(v192 + 11024) = 0u;
        *(v192 + 11040) = 0u;
        *(v192 + 10992) = 0u;
        *(v192 + 11008) = 0u;
        *(v192 + 10960) = 0u;
        *(v192 + 10976) = 0u;
        *(v192 + 10928) = 0u;
        *(v192 + 10944) = 0u;
        *(v192 + 10896) = 0u;
        *(v192 + 10912) = 0u;
        *(v192 + 10864) = 0u;
        *(v192 + 10880) = 0u;
        *v197 = 0u;
        *(v192 + 10848) = 0u;
        *(v192 + 11151) = 0;
      }

LABEL_80:
      v56 = 20;
      v57 = (v192 + 10848);
      do
      {
        if (*v57)
        {
          if (v23 - *(v57 - 2) < 150000)
          {
            v58 = *(v57 - 1) + v24;
            *(v57 - 1) = v58;
            if (*(v57 - 12) == 2)
            {
              if (v58 >= 86400000)
              {
                v59 = v58 - 86400000;
LABEL_89:
                *(v57 - 1) = v59;
              }
            }

            else if (v58 >= 604800000)
            {
              v59 = v58 - 604800000;
              goto LABEL_89;
            }
          }

          else
          {
            *(v57 - 6) = 0;
            *(v57 - 2) = 0;
          }
        }

        v57 += 8;
        --v56;
      }

      while (v56);
    }

    v60 = 0;
    v191 = a2 + 1394;
    v61 = v192 + 540;
    v62 = v192 + 10836;
    v63 = 100.0 / v26;
    v200 = v23;
    v194 = a2;
    do
    {
      v64 = v61 + 20 * v60;
      if (*(v64 + 18) == 1)
      {
        *v197 = v23;
        *(v15 + 310) = 1;
        v65 = *(v64 + 16);
        if (v65 <= 0xF)
        {
          v65 = 0;
          *(v64 + 16) = 0;
        }

        v66 = *(v64 + 17);
        if (v66 <= 0xF)
        {
          v66 = 0;
          *(v64 + 17) = 0;
        }

        if (v66 == v65)
        {
          LOBYTE(v65) = v65 + 1;
          *(v64 + 16) = v65;
        }

        if (*(v15 + 308) != v65 || v66 != *(v15 + 309))
        {
          v67 = 0;
          v199 = v60;
          v68 = 1;
          do
          {
            v69 = v67;
            if (v68)
            {
              v70 = *(v64 + 16);
              if (*(v64 + 16))
              {
                v71 = *(v64 + 17);
                v72 = (255 * (v70 - v71)) / v70;
              }

              else
              {
                v72 = 0;
                v71 = *(v64 + 17);
              }

              v74 = (v64 + 8);
              if (!v71)
              {
                v72 = v70 >> 1;
                v74 = (v64 + 8);
              }
            }

            else
            {
              v73 = *(v64 + 17);
              if (!v73)
              {
                goto LABEL_139;
              }

              v72 = 1;
              v74 = (v64 + 12);
            }

            v75 = 0;
            v76 = (v192 + 10851);
            do
            {
              v77 = *(v76 - 3);
              if (*(v76 - 3))
              {
                v78 = *(v76 - 15);
                if (Is_Legal(v78))
                {
                  v79 = *(v64 + 4);
                  if (Is_Legal(v79) && v79 == v78)
                  {
                    v80 = *(v76 - 7);
                    v81 = *v74 - v80 >= 0 ? *v74 - v80 : v80 - *v74;
                    if (v81 <= 0x14)
                    {
                      if (*v74 != v80)
                      {
                        *(v76 - 7) = (*v74 - v80) * v72 / (v72 + v77) + v80;
                      }

                      *(v76 - 3) = v72 + v77 + 24;
                      ++*(v76 - 1);
                      *v76 = *v64;
                      v90 = v200;
                      v62 = v192 + 10836;
                      goto LABEL_133;
                    }
                  }
                }
              }

              ++v75;
              v76 += 16;
            }

            while (v75 != 20);
            v82 = 0;
            v83 = 0xFFFFFFF;
            v84 = (v192 + 10848);
            v75 = 0xFFFFFFFFLL;
            v62 = v192 + 10836;
            do
            {
              v86 = *v84;
              v84 += 8;
              v85 = v86;
              if (!v86)
              {
                v75 = v82;
                goto LABEL_130;
              }

              v87 = v83 <= v85;
              if (v83 >= v85)
              {
                v83 = v85;
              }

              if (!v87)
              {
                v75 = v82;
              }

              ++v82;
            }

            while (v82 != 20);
            if ((v75 & 0x80000000) != 0)
            {
              goto LABEL_134;
            }

LABEL_130:
            v88 = v192 + 10836 + 16 * v75;
            v89 = 12;
            if (v68)
            {
              v89 = 8;
            }

            *(v88 + 8) = *(v64 + v89);
            *(v88 + 12) = v72;
            *(v88 + 14) = 0;
            *(v88 + 15) = *v64;
            *v88 = *(v64 + 4);
            v90 = v200;
LABEL_133:
            *(v62 + 16 * v75 + 4) = v90;
LABEL_134:
            v68 = 0;
            v67 = 1;
          }

          while ((v69 & 1) == 0);
          v73 = *(v64 + 17);
LABEL_139:
          LODWORD(v23) = v200;
          v15 = (v192 + 10848);
          *(v192 + 11156) = *(v64 + 16);
          *(v192 + 11157) = v73;
          v61 = v192 + 540;
          a2 = v194;
          v60 = v199;
        }
      }

      ++v60;
    }

    while (v60 != 8);
    v16 = v192;
    if (*(v15 + 310) == 1)
    {
      v91 = 0;
      v92 = 0;
      v93 = -1;
      v94 = v15;
      do
      {
        v96 = *v94;
        v94 += 8;
        v95 = v96;
        v97 = v92 <= v96;
        if (v92 < v96)
        {
          v93 = v91;
        }

        if (v97)
        {
          v92 = v95;
        }

        ++v91;
      }

      while (v91 != 20);
      if ((v93 & 0x80000000) == 0 && v92)
      {
        v98 = v62 + 16 * v93;
        v99 = *(v98 + 12);
        if (v99 >= 0xFF)
        {
          LOBYTE(v99) = -1;
        }

        *(a4 + 24) = *(v98 + 8);
        *(a4 + 22) = v99;
        *(a4 + 21) = *(v98 + 15);
        *(a4 + 28) = *v98;
      }
    }

    if (!*(v192 + 529) && !*(v192 + 530) && !*(v192 + 531))
    {
      v100 = (v192 + 3397);
      v101 = 48;
      do
      {
        v102 = *(v100 - 1);
        v103 = v102 >= 2;
        v104 = v102 - 2;
        if (v103)
        {
          *(v100 - 1) = v104;
          *(v192 + 529) = 514;
          *(v192 + 531) = 2;
        }

        v105 = *v100;
        v103 = v105 >= 2;
        v106 = v105 - 2;
        if (v103)
        {
          *v100 = v106;
        }

        v100 += 36;
        --v101;
      }

      while (v101);
    }

    memcpy((a4 + 2720), (v192 + 3392), 0x6C0uLL);
    v107 = a4 + 32;
    memcpy((a4 + 32), (v192 + 704), 0xA80uLL);
    memcpy((a4 + 4448), (v192 + 5120), 0x3C0uLL);
    memcpy((a4 + 5408), (v192 + 6080), 0x800uLL);
    *a4 = *(v192 + 512);
    *(a4 + 8) = *(v192 + 520);
    *(a4 + 10) = *(v192 + 522);
    *(a4 + 14) = *(v192 + 526);
    *(a4 + 18) = *(v192 + 530);
    *(a4 + 19) = *(v192 + 531);
    *(a4 + 7456) = v15[156];
    if (*(v192 + 460))
    {
      ++*(a4 + 7460);
    }

    v108 = *(v192 + 405);
    v109 = *(v192 + 406);
    v110 = (v108 - v109);
    if (v110 < 1)
    {
      if ((v110 & 0x80000000) != 0)
      {
        v112 = (v110 + 48);
        v113 = *(v192 + 400) + v112;
        *(v192 + 400) = v113;
        v114 = *(v192 + 396) + 1;
        *(v192 + 396) = v114;
        EvLog_nd("ME_Poll_New: Missed {M & {T", 3, v10, v112, v113, v114);
        for (j = 0; j != 1728; j += 36)
        {
          v116 = a4 + 2720 + j;
          *(v116 + 32) = 0;
          *v116 = 0uLL;
          *(v116 + 16) = 0uLL;
          *(v107 + 48) = 0;
          *(v107 + 16) = 0uLL;
          *(v107 + 32) = 0uLL;
          *v107 = 0uLL;
          v107 += 56;
        }

        EvLog("ME_Poll_New: Flushing due to missed {T");
      }
    }

    else
    {
      v111 = *(v192 + 400) + v108 - v109;
      *(v192 + 400) = v111;
      EvLog_nd("ME_Poll_New: Missed {M", 4, v10, v110, v111, v108, v109);
    }

    *(a2 + 1548) = 0u;
    *(a2 + 1564) = 0u;
    *(a2 + 1516) = 0u;
    *(a2 + 1532) = 0u;
    *(a2 + 1484) = 0u;
    *(a2 + 1500) = 0u;
    *(a2 + 1452) = 0u;
    *(a2 + 1468) = 0u;
    *(a2 + 1420) = 0u;
    *(a2 + 1436) = 0u;
    *(a2 + 1388) = 0u;
    *(a2 + 1404) = 0u;
    if (*(v15 + 415) == 1)
    {
      *(a2 + 1457) = 1;
      *(a2 + 1446) = v15[202];
      v117 = v15[203];
      if (v117 >= 0x64)
      {
        v118 = v63 * v117;
        v119 = -0.5;
        if (v118 > 0.0)
        {
          v119 = 0.5;
        }

        v120 = v118 + v119;
        if (v120 <= 2147483650.0)
        {
          if (v120 >= -2147483650.0)
          {
            v117 = v120;
          }

          else
          {
            LOBYTE(v117) = 0;
          }
        }

        else
        {
          LOBYTE(v117) = -1;
        }
      }

      *(a2 + 1448) = v117;
      *(a2 + 1450) = v15[204];
      *(a2 + 1452) = *(v15 + 410);
      *(a2 + 1454) = v15[206];
      *(a2 + 1456) = *(v15 + 414);
    }

    if (*(v15 + 329) == 1)
    {
      *(a2 + 1390) = 256;
      *(a2 + 1388) = v15[162];
      v121 = *(v15 + 328);
      if (v121 < 0x64)
      {
LABEL_193:
        *(a2 + 1390) = v121;
        goto LABEL_194;
      }

      if (v15[163])
      {
        v122 = v63 * v15[163];
        v123 = -0.5;
        if (v122 > 0.0)
        {
          v123 = 0.5;
        }

        v124 = v122 + v123;
        if (v124 <= 2147483650.0)
        {
          if (v124 >= -2147483650.0)
          {
            v121 = v124;
          }

          else
          {
            LOBYTE(v121) = 0;
          }
        }

        else
        {
          LOBYTE(v121) = -1;
        }

        goto LABEL_193;
      }
    }

LABEL_194:
    if (*(v15 + 400) == 1)
    {
      *(a2 + 1444) = 1;
      *(a2 + 1392) = v15[166];
      *&v125 = *(v15 + 167);
      WORD4(v125) = v15[171];
      WORD5(v125) = v15[177];
      HIDWORD(v125) = *(v192 + 11204);
      *v191 = v125;
      *(a2 + 1410) = *(v15 + 90);
      *&v125 = *(v15 + 187);
      *(v191 + 20) = v125;
      *(a2 + 1422) = v15[191];
      LOWORD(v125) = v15[172];
      v126 = v63 * v125;
      v127 = -0.5;
      if (v126 <= 0.0)
      {
        v128 = -0.5;
      }

      else
      {
        v128 = 0.5;
      }

      v129 = v126 + v128;
      if (v129 <= 2147483650.0)
      {
        if (v129 >= -2147483650.0)
        {
          v130 = v129;
        }

        else
        {
          LOBYTE(v130) = 0;
        }
      }

      else
      {
        LOBYTE(v130) = -1;
      }

      *(a2 + 1424) = v130;
      LOWORD(v129) = v15[173];
      v131 = v63 * *&v129;
      if (v131 > 0.0)
      {
        v127 = 0.5;
      }

      v132 = v131 + v127;
      if (v132 <= 2147483650.0)
      {
        if (v132 >= -2147483650.0)
        {
          v133 = v132;
        }

        else
        {
          LOBYTE(v133) = 0;
        }
      }

      else
      {
        LOBYTE(v133) = -1;
      }

      *(a2 + 1425) = v133;
      LOWORD(v132) = v15[174];
      v134 = v63 * *&v132;
      v135 = -0.5;
      if (v134 <= 0.0)
      {
        v136 = -0.5;
      }

      else
      {
        v136 = 0.5;
      }

      v137 = v134 + v136;
      if (v137 <= 2147483650.0)
      {
        if (v137 >= -2147483650.0)
        {
          v138 = v137;
        }

        else
        {
          LOBYTE(v138) = 0;
        }
      }

      else
      {
        LOBYTE(v138) = -1;
      }

      *(a2 + 1426) = v138;
      LOWORD(v137) = v15[175];
      v139 = v63 * *&v137;
      if (v139 > 0.0)
      {
        v135 = 0.5;
      }

      v140 = v139 + v135;
      if (v140 <= 2147483650.0)
      {
        if (v140 >= -2147483650.0)
        {
          v141 = v140;
        }

        else
        {
          LOBYTE(v141) = 0;
        }
      }

      else
      {
        LOBYTE(v141) = -1;
      }

      *(a2 + 1427) = v141;
      LOWORD(v140) = v15[176];
      v142 = v63 * *&v140;
      v143 = -0.5;
      if (v142 <= 0.0)
      {
        v144 = -0.5;
      }

      else
      {
        v144 = 0.5;
      }

      v145 = v142 + v144;
      if (v145 <= 2147483650.0)
      {
        if (v145 >= -2147483650.0)
        {
          v146 = v145;
        }

        else
        {
          LOBYTE(v146) = 0;
        }
      }

      else
      {
        LOBYTE(v146) = -1;
      }

      *(a2 + 1428) = v146;
      LOWORD(v145) = v15[182];
      v147 = v63 * *&v145;
      if (v147 > 0.0)
      {
        v143 = 0.5;
      }

      v148 = v147 + v143;
      if (v148 <= 2147483650.0)
      {
        if (v148 >= -2147483650.0)
        {
          v149 = v148;
        }

        else
        {
          LOBYTE(v149) = 0;
        }
      }

      else
      {
        LOBYTE(v149) = -1;
      }

      *(a2 + 1429) = v149;
      LOWORD(v148) = v15[183];
      v150 = v63 * *&v148;
      v151 = -0.5;
      if (v150 <= 0.0)
      {
        v152 = -0.5;
      }

      else
      {
        v152 = 0.5;
      }

      v153 = v150 + v152;
      if (v153 <= 2147483650.0)
      {
        if (v153 >= -2147483650.0)
        {
          v154 = v153;
        }

        else
        {
          LOBYTE(v154) = 0;
        }
      }

      else
      {
        LOBYTE(v154) = -1;
      }

      *(a2 + 1430) = v154;
      LOWORD(v153) = v15[184];
      v155 = v63 * *&v153;
      if (v155 > 0.0)
      {
        v151 = 0.5;
      }

      v156 = v155 + v151;
      if (v156 <= 2147483650.0)
      {
        if (v156 >= -2147483650.0)
        {
          v157 = v156;
        }

        else
        {
          LOBYTE(v157) = 0;
        }
      }

      else
      {
        LOBYTE(v157) = -1;
      }

      *(a2 + 1431) = v157;
      LOWORD(v156) = v15[185];
      v158 = v63 * *&v156;
      v159 = -0.5;
      if (v158 <= 0.0)
      {
        v160 = -0.5;
      }

      else
      {
        v160 = 0.5;
      }

      v161 = v158 + v160;
      if (v161 <= 2147483650.0)
      {
        if (v161 >= -2147483650.0)
        {
          v162 = v161;
        }

        else
        {
          LOBYTE(v162) = 0;
        }
      }

      else
      {
        LOBYTE(v162) = -1;
      }

      *(a2 + 1432) = v162;
      LOWORD(v161) = v15[186];
      v163 = v63 * *&v161;
      if (v163 > 0.0)
      {
        v159 = 0.5;
      }

      v164 = v163 + v159;
      if (v164 <= 2147483650.0)
      {
        if (v164 >= -2147483650.0)
        {
          v165 = v164;
        }

        else
        {
          LOBYTE(v165) = 0;
        }
      }

      else
      {
        LOBYTE(v165) = -1;
      }

      *(a2 + 1433) = v165;
      LOWORD(v164) = v15[192];
      v166 = v63 * *&v164;
      v167 = -0.5;
      if (v166 <= 0.0)
      {
        v168 = -0.5;
      }

      else
      {
        v168 = 0.5;
      }

      v169 = v166 + v168;
      if (v169 <= 2147483650.0)
      {
        if (v169 >= -2147483650.0)
        {
          v170 = v169;
        }

        else
        {
          LOBYTE(v170) = 0;
        }
      }

      else
      {
        LOBYTE(v170) = -1;
      }

      *(a2 + 1434) = v170;
      LOWORD(v169) = v15[193];
      v171 = v63 * *&v169;
      if (v171 > 0.0)
      {
        v167 = 0.5;
      }

      v172 = v171 + v167;
      if (v172 <= 2147483650.0)
      {
        if (v172 >= -2147483650.0)
        {
          v173 = v172;
        }

        else
        {
          LOBYTE(v173) = 0;
        }
      }

      else
      {
        LOBYTE(v173) = -1;
      }

      *(a2 + 1435) = v173;
      LOWORD(v172) = v15[194];
      v174 = v63 * *&v172;
      v175 = -0.5;
      if (v174 <= 0.0)
      {
        v176 = -0.5;
      }

      else
      {
        v176 = 0.5;
      }

      v177 = v174 + v176;
      if (v177 <= 2147483650.0)
      {
        if (v177 >= -2147483650.0)
        {
          v178 = v177;
        }

        else
        {
          LOBYTE(v178) = 0;
        }
      }

      else
      {
        LOBYTE(v178) = -1;
      }

      *(a2 + 1436) = v178;
      LOWORD(v177) = v15[195];
      v179 = v63 * *&v177;
      if (v179 > 0.0)
      {
        v175 = 0.5;
      }

      v180 = v179 + v175;
      if (v180 <= 2147483650.0)
      {
        if (v180 >= -2147483650.0)
        {
          v181 = v180;
        }

        else
        {
          LOBYTE(v181) = 0;
        }
      }

      else
      {
        LOBYTE(v181) = -1;
      }

      *(a2 + 1437) = v181;
      LOWORD(v180) = v15[196];
      v182 = v63 * *&v180;
      v183 = -0.5;
      if (v182 > 0.0)
      {
        v183 = 0.5;
      }

      v184 = v182 + v183;
      if (v184 <= 2147483650.0)
      {
        if (v184 >= -2147483650.0)
        {
          v185 = v184;
        }

        else
        {
          LOBYTE(v185) = 0;
        }
      }

      else
      {
        LOBYTE(v185) = -1;
      }

      *(a2 + 1438) = v185;
      *(a2 + 1440) = *(v192 + 11244);
    }

    if (*(v15 + 532) == 1)
    {
      v186 = *(v192 + 11280);
      v187 = *(v192 + 11312);
      *(a2 + 1492) = *(v192 + 11296);
      *(a2 + 1508) = v187;
      *(a2 + 1476) = v186;
      v188 = *(v192 + 11328);
      v189 = *(v192 + 11344);
      v190 = *(v192 + 11360);
      *(a2 + 1572) = *(v192 + 11376);
      *(a2 + 1540) = v189;
      *(a2 + 1556) = v190;
      *(a2 + 1524) = v188;
    }

    if (*(v15 + 430) == 1)
    {
      *(a2 + 1460) = *(v192 + 11264);
    }

LABEL_48:
    if (*(v16 + 408) == 1 && *(v16 + 10816) == *(v16 + 448) || *(v16 + 412) == 1 && *(v16 + 10820) == *(v16 + 448) || *(v16 + 416) == 1 && *(v16 + 10824) == *(v16 + 448) || *(v16 + 420) == 1 && *(v16 + 10828) == *(v16 + 448))
    {
      memcpy(a5, (v16 + 8128), 0xA80uLL);
      if (*(v16 + 408) == 1)
      {
        a5[672] = *(v16 + 10816);
        v32 = *(v16 + 409);
        v33 = *(v16 + 410);
        v34 = (v32 - v33);
        if (v34 >= 1)
        {
          v35 = *(v16 + 411) + v32 - v33;
          *(v16 + 411) = v35;
          EvLog_nd("ME_Poll_New: Missed {G", 4, v10, v34, v35, v32, v33);
        }
      }

      if (*(v16 + 412) == 1)
      {
        a5[673] = *(v16 + 10820);
        v36 = *(v16 + 413);
        v37 = *(v16 + 414);
        v38 = (v36 - v37);
        if (v38 >= 1)
        {
          v39 = *(v16 + 415) + v36 - v37;
          *(v16 + 415) = v39;
          EvLog_nd("ME_Poll_New: Missed {F", 4, v10, v38, v39, v36, v37);
        }
      }

      if (*(v16 + 416) == 1)
      {
        a5[674] = *(v16 + 10824);
        v40 = *(v16 + 417);
        v41 = *(v16 + 418);
        v42 = (v40 - v41);
        if (v42 >= 1)
        {
          v43 = *(v16 + 419) + v40 - v41;
          *(v16 + 419) = v43;
          EvLog_nd("ME_Poll_New: Missed {A I", 4, v10, v42, v43, v40, v41);
        }
      }

      if (*(v16 + 420) == 1)
      {
        a5[675] = *(v16 + 10828);
        v44 = *(v16 + 421);
        v45 = *(v16 + 422);
        v46 = (v44 - v45);
        if (v46 >= 1)
        {
          v47 = *(v16 + 423) + v44 - v45;
          *(v16 + 423) = v47;
          EvLog_nd("ME_Poll_New: Missed {C", 4, v10, v46, v47, v44, v45);
        }
      }
    }

    *a3 = *(v16 + 448);
    v48 = *(v16 + 468);
    a3[4] = v48;
    *(a2 + 20) = *(v16 + 491) == *(a2 + 16);
    if (*(v16 + 424) == 1)
    {
      v49 = *(v16 + 432);
      if (v49)
      {
        v202 = 0;
        *&v201[0] = v48;
        v201[1] = *(v16 + 428) * 0.001;
        v50 = v49 / 0x3E8;
        if (v49 < 0x3E8)
        {
          v50 = 1;
        }

        LODWORD(v202) = v50;
        Core_Set_Clk_Drift("ME {O eFA:", v201, v10);
      }
    }

    goto LABEL_73;
  }

  return result;
}

void *G5K_ME_Flush_Data(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v2 = v1;
  v25 = *MEMORY[0x29EDCA608];
  *(v1 + 412) = 0;
  *(v1 + 416) = 0;
  *(v1 + 420) = 0;
  *(v1 + 424) = 0;
  *(v1 + 500) = 0;
  *(v1 + 414) = 0;
  *(v1 + 417) = 0;
  *(v1 + 421) = 0;
  *(v1 + 496) = 0;
  *(v1 + 465) = 0;
  *(v1 + 402) = 0;
  v3 = 540;
  *(v1 + 410) = 0;
  do
  {
    v4 = v1 + v3;
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 15) = 0;
    v3 += 20;
  }

  while (v3 != 700);
  *(v1 + 11151) = 0;
  *(v1 + 11136) = 0u;
  *(v1 + 11120) = 0u;
  *(v1 + 11104) = 0u;
  *(v1 + 11088) = 0u;
  *(v1 + 11072) = 0u;
  *(v1 + 11056) = 0u;
  *(v1 + 11040) = 0u;
  *(v1 + 11024) = 0u;
  *(v1 + 11008) = 0u;
  *(v1 + 10992) = 0u;
  *(v1 + 10976) = 0u;
  *(v1 + 10960) = 0u;
  *(v1 + 10944) = 0u;
  *(v1 + 10928) = 0u;
  *(v1 + 10912) = 0u;
  *(v1 + 10896) = 0u;
  *(v1 + 10880) = 0u;
  *(v1 + 10864) = 0u;
  *(v1 + 10848) = 0u;
  *(v1 + 10832) = 0u;
  v5 = *(v1 + 504);
  v6 = *(v1 + 394);
  v7 = *(v1 + 411);
  v8 = *(v1 + 415);
  v9 = *(v1 + 419);
  v10 = *(v1 + 423);
  bzero(v24, 0x2C78uLL);
  for (i = 0; i != 160; i += 20)
  {
    v12 = &v24[i];
    v12[540] = 0;
    *(v12 + 68) = 0;
    *&v24[i + 551] = 0;
  }

  for (j = 0; j != 2688; j += 56)
  {
    v14 = &v24[j];
    *(v14 + 88) = 0;
    *(v14 + 356) = 0;
    *&v24[j + 716] = 0;
    *(v14 + 362) = 0;
    v15 = &v24[j + 728];
    *(v14 + 94) = 0;
    *(v14 + 372) = 0;
    *v15 = 0uLL;
  }

  for (k = 3392; k != 5120; k += 36)
  {
    v17 = &v24[k];
    v17[32] = 0;
    *v17 = 0uLL;
    *(v17 + 1) = 0uLL;
  }

  v18 = -960;
  do
  {
    v19 = &v24[v18];
    *(v19 + 3048) = 0;
    *(v19 + 380) = 0uLL;
    v18 += 20;
  }

  while (v18);
  v20 = -2048;
  do
  {
    *&v24[v20 + 8128] = 0;
    *&v24[v20 + 8134] = 0;
    v20 += 16;
  }

  while (v20);
  v21 = 2688;
  v22 = &v24[8180];
  do
  {
    *(v22 - 13) = 0;
    *v22 = 0;
    v22 += 56;
    v21 -= 56;
  }

  while (v21);
  *&v24[11160] = 0;
  *&v24[11244] = 0;
  v24[11248] = 0;
  memset(&v24[11180], 0, 62);
  *&v24[11260] = 0;
  *&v24[11255] = 0;
  *&v24[11252] = 0;
  memset(&v24[10816], 0, 343);
  *&v24[11170] = 0;
  *&v24[11164] = 0;
  result = memcpy(v2, v24, 0x2C78uLL);
  *(v2 + 384) = v2;
  *(v2 + 504) = v5;
  *(v2 + 394) = v6;
  *(v2 + 411) = v7;
  *(v2 + 415) = v8;
  *(v2 + 419) = v9;
  *(v2 + 423) = v10;
  return result;
}

void Gnm35_11SendV1FwDbgCfg(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v23 = *MEMORY[0x29EDCA608];
  memset_s(__s, 0x7FCuLL, 0, 0x7FCuLL);
  memset_s(v20, 0x7FCuLL, 0, 0x7FCuLL);
  *&v18[3] = 0;
  v18[7] = 0;
  strcpy(v18, "Dd");
  strcpy(v17, "Di");
  __s[0] = 83;
  v20[0] = 83;
  LbsOsaTrace_GetModuleConfig(&v18[3], 5u);
  if ((v18[7] & 8) != 0)
  {
    v1 = 4;
  }

  else
  {
    if ((v18[7] & 2) != 0)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }

    if ((v18[7] & 4) != 0)
    {
      v1 = 3;
    }
  }

  v20[4] = v1;
  v20[10] = v1;
  v20[11] = v1;
  if (*&v18[3])
  {
    v2 = v18[7] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3088;
  }

  *&v18[3] = 0;
  v18[7] = 0;
  LbsOsaTrace_GetModuleConfig(&v18[3], 6u);
  if ((v18[7] & 8) != 0)
  {
    v4 = 4;
  }

  else if ((v18[7] & 4) != 0)
  {
    v4 = 3;
  }

  else if ((v18[7] & 2) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v20[9] = v4;
  if (*&v18[3])
  {
    v5 = v18[7] == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v3 |= 0x200u;
  }

  *&v18[3] = 0;
  v18[7] = 0;
  LbsOsaTrace_GetModuleConfig(&v18[3], 7u);
  if ((v18[7] & 8) != 0)
  {
    v6 = 4;
  }

  else if ((v18[7] & 4) != 0)
  {
    v6 = 3;
  }

  else if ((v18[7] & 2) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v20[6] = v6;
  if (*&v18[3])
  {
    v7 = v18[7] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 |= 0x40u;
  }

  *&v18[3] = 0;
  v18[7] = 0;
  v8 = 4;
  LbsOsaTrace_GetModuleConfig(&v18[3], 4u);
  if ((v18[7] & 8) == 0)
  {
    if ((v18[7] & 4) != 0)
    {
      v8 = 3;
    }

    else if ((v18[7] & 2) != 0)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  v20[7] = v8;
  if (*&v18[3])
  {
    v9 = v18[7] == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v3 |= 0x80u;
  }

  *&v18[3] = 0;
  v18[7] = 0;
  LbsOsaTrace_GetModuleConfig(&v18[3], 0x14u);
  if ((v18[7] & 8) != 0)
  {
    v10 = 4;
  }

  else if ((v18[7] & 4) != 0)
  {
    v10 = 3;
  }

  else if ((v18[7] & 2) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v20[8] = v10;
  if (*&v18[3])
  {
    v11 = v18[7] == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v3 | 0x100;
  if (v11)
  {
    v12 = v3;
  }

  if (v12 <= 1)
  {
    LOWORD(v12) = 1;
  }

  v22 = v12;
  Gnm07_06EncodeNSend(v18, __s, "EXT DEBUG CFG");
  Gnm07_06EncodeNSend(v17, v20, "INT DEBUG CFG");
  v13 = gnssOsa_Calloc("Gnm35_11SendV1FwDbgCfg", 136, 1, 0x50uLL);
  if (v13)
  {
    v14 = v13;
    v13[3] = 64;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_CFG_UPDATE_IND =>GNCP CfgMask,0x%X\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 73, "Gnm35_11SendV1FwDbgCfg", v14[3]);
      LbsOsaTrace_WriteLog(0xBu, __str, v16, 4, 1);
    }

    AgpsSendFsmMsg(128, 134, 8394499, v14);
  }
}

uint64_t Gnm35_32MapV1TaDebugConfig(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  TaTraceCfg = Gnm34_15GetTaTraceCfg(a1);
  v2 = TaTraceCfg;
  if (TaTraceCfg >= 7)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
    LOBYTE(v3) = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TaLogSeverity,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm35_32MapV1TaDebugConfig", 770, v2);
      LbsOsaTrace_WriteLog(0xBu, __str, v6, 2, 1);
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    return (0x4030403020100uLL >> (8 * (TaTraceCfg & 0x1F)));
  }

  return v3;
}

uint64_t Gnm35_15SendV2DbgCfg(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v11 = *MEMORY[0x29EDCA608];
  memset_s(&__s, 0x7FCuLL, 0, 0x7FCuLL);
  memset_s(&v4, 0x7FCuLL, 0, 0x7FCuLL);
  qmemcpy(v3, "DfP", sizeof(v3));
  __s = 339;
  DebugElCfgV2 = Gnm35_51GetDebugElCfgV2(5);
  v9 = Gnm35_51GetDebugElCfgV2(5);
  v10 = Gnm35_51GetDebugElCfgV2(5);
  Gnm07_06EncodeNSend(v3, &__s, "GCPU DEBUG CFG");
  qmemcpy(v2, "DmM", sizeof(v2));
  v4 = 339;
  v5 = Gnm35_51GetDebugElCfgV2(20);
  v6 = Gnm35_51GetDebugElCfgV2(4);
  return Gnm07_06EncodeNSend(v2, &v4, "MCPU DEBUG CFG");
}

uint64_t Gnm35_51GetDebugElCfgV2(uint64_t a1)
{
  v1 = a1;
  v14 = *MEMORY[0x29EDCA608];
  v11 = 0;
  v12 = 0;
  if (LbsOsaTrace_GetModuleConfig(&v11, a1))
  {
    if ((v12 & 2) != 0)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    if ((v12 & 4) != 0)
    {
      v3 = 3;
    }

    else
    {
      v3 = v2;
    }

    if ((v12 & 8) != 0)
    {
      v4 = 4;
    }

    else
    {
      v4 = v3;
    }

    if (v11)
    {
      v5 = v12 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
    v6 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Module,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm35_51GetDebugElCfgV2", 770, v1);
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 2, 1);
      return 0;
    }
  }

  return v6;
}

uint64_t Gnm35_15SendV1TaDbgCfg(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v11 = *MEMORY[0x29EDCA608];
  memset_s(&__s, 0x7FCuLL, 0, 0x7FCuLL);
  memset_s(&v4, 0x7FCuLL, 0, 0x7FCuLL);
  qmemcpy(v3, "DfP", sizeof(v3));
  __s = 595;
  v8 = Gnm35_32MapV1TaDebugConfig(1);
  v9 = Gnm35_32MapV1TaDebugConfig(2);
  v10 = Gnm35_32MapV1TaDebugConfig(3);
  Gnm07_06EncodeNSend(v3, &__s, "GCPU TA DEBUG CFG");
  qmemcpy(v2, "DmM", sizeof(v2));
  v4 = 595;
  v5 = Gnm35_32MapV1TaDebugConfig(5);
  v6 = Gnm35_32MapV1TaDebugConfig(4);
  return Gnm07_06EncodeNSend(v2, &v4, "MCPU TA DEBUG CFG");
}

void Gnm35_12SendDbgCfg(_DWORD *result)
{
  if (g_HWStatus[0] == 1)
  {
    v1 = dword_2A1920A8C;
    if (dword_2A1920A8C != 3431 || qword_2A1920A90 != 2 || HIDWORD(qword_2A1920A90) != 1)
    {
      if (dword_2A1920A8C != 1107 && dword_2A1920A8C != 2472)
      {
        if (dword_2A1920A8C != 2473)
        {
          v4 = g_GnssHw;
          goto LABEL_24;
        }

LABEL_19:
        v5 = Gnm35_15SendV2DbgCfg(result);

        Gnm35_15SendV1TaDbgCfg(v5);
        return;
      }

      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v4 = g_GnssHw;
  switch(g_GnssHw)
  {
    case 2:
      goto LABEL_19;
    case 1:
LABEL_28:

      Gnm35_15SendV2DbgCfg(result);
      return;
    case 0:
LABEL_16:

      Gnm35_11SendV1FwDbgCfg(result);
      return;
    case 3:
      goto LABEL_28;
  }

  v1 = dword_2A1920A8C;
LABEL_24:
  v6 = v1 == 848;
  v7 = v4 == 4;
  if (g_HWStatus[0])
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    goto LABEL_28;
  }
}

uint64_t Gnm35_31HandleDMessages(unsigned __int8 *a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 1);
  if (v3 > 0x48)
  {
    if (v3 == 73)
    {
      v4 = *a1;
      v5 = "IntDbgCfg";
      goto LABEL_12;
    }

    if (v3 == 77)
    {
      v4 = *a1;
      v5 = "McpuDbgCfg";
      goto LABEL_12;
    }
  }

  else
  {
    if (v3 == 68)
    {
      v4 = *a1;
      v5 = "ExtDbgCfg";
      goto LABEL_12;
    }

    if (v3 == 70)
    {
      v4 = *a1;
      v5 = "GcpuDbgCfg";
LABEL_12:
      Gnm35_21HandleDRspStatus(v4, v5);
      return 0;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MID,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm35_31HandleDMessages", 778, *(a2 + 1));
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
  }

  return 0;
}

double Gnm35_21HandleDRspStatus(int a1, const char *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1 == 32)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s Success\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm35_21HandleDRspStatus", a2);
    v6 = 4;
  }

  else
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx %s Status,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm35_21HandleDRspStatus", 257, a2, a1);
    v6 = 2;
  }

  LbsOsaTrace_WriteLog(0xBu, __str, v5, v6, 1);
  return result;
}

uint64_t GncP01_00InitPeUpdate(uint64_t a1)
{
  GN_GPS_Initialise(a1);
  result = gnssOsa_InitCriticalSection("GncP01_00InitPeUpdate", 92, &g_PosUpdateCritic);
  g_GncP_PEUpdate[6360] = 0;
  g_GncP_PEUpdate[0] = 0;
  word_2A191F6D4 = 0;
  g_GncP_PEUpdate[6494] = 0;
  g_GncP_PEUpdate[8080] = 0;
  qword_2A191FD10 = 0;
  return result;
}

void gncP01_01DeInitPeUpdate(void)
{
  GN_GPS_Shutdown();
  gnssOsa_MacDeinitCriticalSection("gncP01_01DeInitPeUpdate", 109, &g_PosUpdateCritic);
  if (qword_2A191FD10)
  {
    free(qword_2A191FD10);
  }

  qword_2A191FD10 = 0;
}

void *GncP01_05ClearGncPosData(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  __src[1012] = *MEMORY[0x29EDCA608];
  bzero(__src, 0x1FA0uLL);
  WORD2(__src[797]) = -1;
  WORD2(__src[798]) = -1;
  v1 = &__src[807] + 1;
  v2 = 56;
  do
  {
    *(v1 - 4) = 0;
    *(v1 - 6) = 0;
    *(v1 - 20) = 0;
    *(v1 - 12) = -1;
    *(v1 - 5) = -1;
    *(v1 - 2) = -1;
    *(v1 - 4) = -1;
    *v1 = -1;
    v1 += 7;
    v2 -= 28;
  }

  while (v2);
  *(&__src[811] + 4) = 0;
  v3 = &__src[1006] + 1;
  v4 = 56;
  do
  {
    *(v3 - 25) = 0;
    *(v3 - 17) = 127;
    *(v3 - 15) = 0;
    *(v3 - 13) = 0;
    *(v3 - 9) = 0;
    *(v3 - 5) = 0;
    *(v3 - 1) = 0;
    v3 += 28;
    v4 -= 28;
  }

  while (v4);
  LOBYTE(__src[1010]) = 0;
  __src[1011] = 0;
  return memcpy(g_GncP_PEUpdate, __src, 0x1FA0uLL);
}

void *GncP01_27PopulateGadData(uint64_t a1)
{
  if (g_GncP_PEUpdate[0] == 1 && xmmword_2A191F650 == 1 && DWORD1(xmmword_2A191F650) == dword_2A191DD7C && GncP11_30CheckUtcValidity(word_2A191DD8A, word_2A191DD8C, word_2A191DD8E, word_2A191DD90, word_2A191DD92, word_2A191DD94, word_2A191DD96))
  {
    v2 = dword_2A191DD80;
    v3 = DWORD2(xmmword_2A191F650);
    *a1 = DWORD2(xmmword_2A191F650);
    *(a1 + 4) = v2;
    *(a1 + 13) = *(&dword_2A191DD80 + 6388);
    v4 = dword_2A191DEB8 & 0x7707FFFF;
    *(a1 + 16) = dword_2A191DEA0 & 0x373F;
    *(a1 + 20) = v4;
    *(a1 + 24) = v3;
    *(a1 + 28) = 0x200000001;
    *(a1 + 44) = qword_2A191F680;
    v5 = *(&dword_2A191DD80 + 6412);
    *(a1 + 52) = word_2A191F68A;
    *(a1 + 54) = v5;
    *(a1 + 55) = *(&dword_2A191DD80 + 6413);
    v6 = *(&dword_2A191DD80 + 6416);
    *(a1 + 64) = *(&dword_2A191DD80 + 6415);
    *(a1 + 65) = v6;
    *(a1 + 66) = -1;
    *(a1 + 68) = 0xFFFFFFFFLL;
    if (*(&dword_2A191DD80 + 6396))
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    *(a1 + 36) = 16;
    *(a1 + 40) = v7;
    v8 = *(&dword_2A191DD80 + 6414);
    v9 = 2 * v8;
    if (v8 > 0x59)
    {
      v9 = -1;
    }

    v10 = *(&dword_2A191DD80 + 6408);
    *(a1 + 56) = v9;
    v11 = 2 * (v10 == 1);
    if (!v10)
    {
      v11 = 1;
    }

    *(a1 + 60) = v11;
    *(a1 + 76) = 8;
    *(a1 + 80) = *(&xmmword_2A191F690 + 2);
    *(a1 + 84) = *(&dword_2A191DD80 + 6417);
    *(a1 + 86) = *(&dword_2A191DD80 + 6422);
    v12 = *(&dword_2A191DD80 + 6423);
    if (v12 == 255)
    {
      LOWORD(v12) = -1;
    }

    *(a1 + 88) = v12;
    v13 = *(&dword_2A191DD80 + 6424);
    if (v13 == 255)
    {
      LOWORD(v13) = -1;
    }

    *(a1 + 90) = v13;
    v14 = 0x18E6u;
    v15 = *(&dword_2A191DD80 + v14);
    *(a1 + 100) = dword_2A191F660 % 0x36EE80u;
    *(a1 + 106) = v15;
    *(a1 + 107) = -1;
    *(a1 + 108) = xmmword_2A191F670;
    *(a1 + 112) = GncP11_02ConvertAGnssID(HIDWORD(xmmword_2A191F650));
    v16 = *(&dword_2A191DD80 + v14);
    *(a1 + 92) = dword_2A191F668;
    *(a1 + 96) = v16;
    if (word_2A191F664 >= 0)
    {
      v17 = (word_2A191F664 * 0.4);
    }

    else
    {
      v17 = 0;
    }

    *(a1 + 104) = v17;
    v18 = llround(*&qword_2A191DDC0);
    *(a1 + 118) = word_2A191DD98;
    v19 = dword_2A191DD80;
    *(a1 + 120) = v18;
    *(a1 + 124) = v19;
    *(a1 + 116) = byte_2A191DD89;
  }

  else
  {
    v20 = DWORD1(xmmword_2A191F650);
    *a1 = DWORD1(xmmword_2A191F650);
    *(a1 + 24) = v20;
    *(a1 + 28) = 7;
  }

  result = memcpy_s("GncP01_27PopulateGadData", 1173, (a1 + 128), 0x38u, &xmmword_2A191F690 + 12, 0x38uLL);
  *(a1 + 184) = BYTE1(xmmword_2A191F650);
  return result;
}

uint64_t GncP01_32ExecutePE(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v162 = *MEMORY[0x29EDCA608];
  GN_GPS_Update();
  memset_s(__s, 0x18C8uLL, 0, 0x18C8uLL);
  v1 = &unk_2A1926000;
  if (*xmmword_2A1926A30)
  {
    v2 = *xmmword_2A1926A30 == Last_Published_Nav_Data_TTag;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  memcpy(__s, xmmword_2A1926A30, sizeof(__s));
  Last_Published_Nav_Data_TTag = __s[0];
  v3 = byte_2A1939000;
  if (*(*(p_api + 88) + 32) != __s[0])
  {
    memcpy(__s, xmmword_2A1926A30, sizeof(__s));
    Last_Published_Nav_Data_TTag = __s[0];
  }

  if (gnssOsa_MacEnterCriticalSection("GncP01_31Update", 1216, &g_PosUpdateCritic))
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    if (result)
    {
      bzero(v160, 0x410uLL);
      v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v6 = 1550;
      goto LABEL_169;
    }

    return result;
  }

  v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  LOWORD(v160[0]) = 0;
  BYTE2(v160[0]) = 0;
  HIDWORD(v160[0]) = 0;
  v160[794] = 0;
  memset_s(v160, 0x18D8uLL, 0, 0x18D8uLL);
  HIDWORD(v160[0]) = v7;
  LOBYTE(v160[0]) = 0;
  if (xmmword_2A1926A30 && *xmmword_2A1926A30)
  {
    memcpy(&v160[1], xmmword_2A1926A30, 0x18C8uLL);
    LOBYTE(v160[0]) = WORD1(v160[2]) != 0;
    BYTE1(v160[0]) = GN_AGPS_Get_UTC(v161);
  }

  v8 = 0;
  v9 = BYTE5(v160[40]);
  v161[0] = 0;
  *&v161[2] = 0;
  memset(&v161[8], 0, 27);
  v10 = 1;
  while (1)
  {
    v11 = v10;
    if (!GncP04_08GetNextSessInstn(v8, v161, 1u))
    {
      break;
    }

    v10 = 0;
    v12 = &v160[794] + 4 * v8;
    v12[1] = v161[0];
    *(v12 + 1) = *&v161[2];
    *v12 = v9;
    v8 = 1;
    if ((v11 & 1) == 0)
    {
      LOBYTE(v8) = 2;
      break;
    }
  }

  BYTE2(v160[0]) = v8;
  if ((v160[0] & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
  {
    bzero(v161, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: No Valid Nav\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "GncP01_18UpdateNavData");
    LbsOsaTrace_WriteLog(8u, v161, v14, 2, 1);
  }

  memcpy(g_GncP_PEUpdate, v160, 0x18D8uLL);
  v15 = 0;
  v16 = 1;
  do
  {
    while (1)
    {
      v17 = v16;
      v18 = &g_GncPCntxtInfo + 36 * v15;
      if (v18[8] == 1)
      {
        break;
      }

      v16 = 0;
      v15 = 1;
      if ((v17 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v16 = 0;
    v19 = v18[9];
    v15 = 1;
  }

  while ((v17 & ((v19 & 2) == 0)) != 0);
  if ((v19 & 2) != 0)
  {
LABEL_35:
    v25 = 0;
    *v161 = 0;
    *&v161[8] = 0;
    *&v161[16] = 0;
    *&v161[20] = -1;
    v161[22] = 0;
    *&v161[24] = 0;
    *&v161[28] = -1;
    *&v161[32] = 0;
    v161[36] = 0;
    do
    {
      v26 = &v161[v25];
      *(v26 + 21) = 0;
      *(v26 + 19) = 0;
      v26[80] = 0;
      v26[88] = -1;
      *(v26 + 45) = -1;
      *(v26 + 23) = -1;
      v26[96] = -1;
      v25 += 28;
      *(v26 + 25) = -1;
    }

    while (v25 != 56);
    *&v161[4] = v7;
    GN_AGNSS_Get_GAD_Data(&v161[8], 255, &v161[12], &v161[16], &v161[20], &v161[22], &v161[24], &v161[28], &v161[32], &v161[36], &v161[40]);
    if (!v27)
    {
LABEL_71:
      v31 = 0;
      v145[0] = 0;
      v146 = 0;
      memset(v149, 0, sizeof(v149));
      v32 = 1;
      v147 = 0;
      v148 = 0;
      while (1)
      {
        v33 = v32;
        if (!GncP04_08GetNextSessInstn(v31, v145, 2u))
        {
          break;
        }

        v151 = 0;
        v152 = 0;
        v153 = -1;
        v154[0] = 0;
        v155 = 0;
        v156 = -1;
        v157 = 0;
        v158[0] = 0;
        if (v149[9] == 1)
        {
          v35 = v149[6] | 0x80;
        }

        else
        {
          v35 = v149[6];
        }

        LOWORD(v34) = *v149;
        *&v36 = rint(log(v34 / 10.0 + 1.0) / 0.0953101798);
        v37 = *&v36;
        v142 = *&v36;
        LOWORD(v36) = *&v149[2];
        v38 = rint(log(v36 / 45.0 + 1.0) / 0.0246926126);
        v143 = v38;
        if (!v37)
        {
          v142 = -1;
        }

        if (!v38)
        {
          v143 = -1;
        }

        v144 = HIDWORD(v147) + v147;
        v39 = &v161[28 * v31 + 76];
        v39[1] = v145[0];
        *(v39 + 1) = v146;
        *v39 = 0;
        GN_AGNSS_Get_GAD_Data(0, v35, &v151 + 1, &v152, &v153, v154, &v155, &v156, &v157, v158, &v159);
        if (v40)
        {
          *v39 = GN_AGPS_Qual_Pos(0, &v142);
          v39[4] = v158[0];
          *(v39 + 2) = GncP11_02ConvertAGnssID(HIDWORD(v151));
          v41 = v154[0];
          v39[12] = v154[0];
          *(v39 + 4) = v152 % 0x36EE80;
          *(v39 + 6) = v155;
          v39[20] = v41;
          v42 = (v153 * 0.4);
          if (v153 < 0)
          {
            LOWORD(v42) = -1;
          }

          *(v39 + 7) = v42;
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
        {
          bzero(v160, 0x410uLL);
          v43 = mach_continuous_time();
          v44 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: ID,%u,Qual,%u,GnssUsed,%u,TimeGnssId,%u,ToD,%u,TodUnc,%u,ToDSubMs,%u,ToW,%u,ToWUnc,%u,ReqConst,%u,HAcc,%u,VAcc,%u,Deadline,%u\n", (*&g_MacClockTicksToMsRelation * v43), "GNC", 68, "GncP01_19QualGadReqs", *(v39 + 1), *v39, v39[4], *(v39 + 2), *(v39 + 4), v39[12], *(v39 + 7), *(v39 + 6), v39[20], v35, v142, v143, v144);
          LbsOsaTrace_WriteLog(8u, v160, v44, 5, 1);
        }

        v32 = 0;
        v31 = 1;
        if ((v33 & 1) == 0)
        {
          LOBYTE(v31) = 2;
          break;
        }
      }

      v161[1] = v31;
      if ((v161[0] & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(v160, 0x410uLL);
        v45 = mach_continuous_time();
        v46 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: No Valid GAD\n", (*&g_MacClockTicksToMsRelation * v45), "GNC", 87, "GncP01_20UpdateGADData");
        LbsOsaTrace_WriteLog(8u, v160, v46, 2, 1);
      }

      xmmword_2A191F6B0 = *&v161[96];
      unk_2A191F6C0 = *&v161[112];
      dword_2A191F6D0 = *&v161[128];
      xmmword_2A191F670 = *&v161[32];
      *&qword_2A191F680 = *&v161[48];
      xmmword_2A191F690 = *&v161[64];
      unk_2A191F6A0 = *&v161[80];
      xmmword_2A191F650 = *v161;
      *&dword_2A191F660 = *&v161[16];
      v1 = &unk_2A1926000;
      v3 = byte_2A1939000;
      goto LABEL_92;
    }

    if (v161[44] >= 2u)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(v160, 0x410uLL);
        v119 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v28 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: #%04hx LatSgn,%u\n", v119);
LABEL_68:
        LbsOsaTrace_WriteLog(8u, v160, v28, 2, 1);
        goto LABEL_69;
      }

      goto LABEL_69;
    }

    if (*&v161[48] >= 0x800000u)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(v160, 0x410uLL);
        v120 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v28 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: #%04hx Lat,%u\n", v120);
        goto LABEL_68;
      }

LABEL_69:
      v30 = 0;
LABEL_70:
      v161[0] = v30;
      goto LABEL_71;
    }

    if ((*&v161[52] - 0x800000) >> 24 != 255)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(v160, 0x410uLL);
        v121 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v28 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: #%04hx Long,%d\n", v121);
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    if (v161[56] - 2 <= 0xFC)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(v160, 0x410uLL);
        v122 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v28 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: #%04hx AltDir,%d\n", v122);
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    if (v161[60] <= -2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(v160, 0x410uLL);
        v124 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v28 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: #%04hx UncSemiMj,%u\n", v124);
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    if (v161[61] <= -2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(v160, 0x410uLL);
        v125 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v28 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: #%04hx UncSemiMi,%u\n", v125);
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    if (v161[63] <= -2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(v160, 0x410uLL);
        v126 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v28 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: #%04hx UncAlt,%u\n", v126);
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    if (v161[62] - 255 >= 0xFFFFFF5B)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(v160, 0x410uLL);
        v127 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v28 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: #%04hx UncMjAx,%u\n", v127);
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    if (v161[64] - 255 >= 0xFFFFFF66)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(v160, 0x410uLL);
        v128 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v28 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: #%04hx Conf,%u\n", v128);
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    if (v161[65] - 2 > 0xFC)
    {
      if (*&v161[66] - 360 > 0xFE96)
      {
        if (*&v161[68] > -2)
        {
          if (v161[70] > -2)
          {
            if (*&v161[16] <= 0x5265BFFu)
            {
              if (*&v161[20] - 10000 > 0xD8EE)
              {
                if ((v161[22] & 0x80000000) != 0)
                {
                  if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
                  {
                    bzero(v160, 0x410uLL);
                    v140 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                    v29 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: #%04hx ToDUnc,%u\n", v140);
                    goto LABEL_294;
                  }
                }

                else if (*&v161[24] < 0x240C8400u)
                {
                  if (*&v161[28] - 10000 > 0xD8EE)
                  {
                    v30 = 1;
                    goto LABEL_70;
                  }

                  if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
                  {
                    bzero(v160, 0x410uLL);
                    v141 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                    v29 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: #%04hx ToWSubMS,%d\n", v141);
                    goto LABEL_294;
                  }
                }

                else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
                {
                  bzero(v160, 0x410uLL);
                  v139 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                  v29 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: #%04hx ToW,%u\n", v139);
                  goto LABEL_294;
                }
              }

              else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
              {
                bzero(v160, 0x410uLL);
                v138 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                v29 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: #%04hx ToDSubMS,%d\n", v138);
                goto LABEL_294;
              }
            }

            else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
            {
              bzero(v160, 0x410uLL);
              v137 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v29 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: #%04hx ToD,%u\n", v137);
              goto LABEL_294;
            }
          }

          else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
          {
            bzero(v160, 0x410uLL);
            v136 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v29 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: #%04hx VertSpd,%d\n", v136);
            goto LABEL_294;
          }
        }

        else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          bzero(v160, 0x410uLL);
          v135 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v29 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: #%04hx HorSpd,%d\n", v135);
          goto LABEL_294;
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(v160, 0x410uLL);
        v134 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v29 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: #%04hx Bearing,%d\n", v134);
        goto LABEL_294;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(v160, 0x410uLL);
      v123 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v29 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: #%04hx VertDir,%d\n", v123);
LABEL_294:
      LbsOsaTrace_WriteLog(8u, v160, v29, 2, 1);
      v30 = 0;
      goto LABEL_70;
    }

    v30 = 0;
    goto LABEL_70;
  }

LABEL_27:
  v20 = 0;
  v21 = 1;
  do
  {
    while (1)
    {
      v22 = v21;
      v23 = &g_GncPCntxtInfo + 36 * v20;
      if (v23[8] == 1)
      {
        break;
      }

      v21 = 0;
      v20 = 1;
      if ((v22 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v21 = 0;
    v24 = v23[9];
    v20 = 1;
  }

  while ((v22 & ((v24 & 4) == 0)) != 0);
  if ((v24 & 4) != 0)
  {
    goto LABEL_35;
  }

LABEL_34:
  LOBYTE(xmmword_2A191F650) = 0;
LABEL_92:
  v47 = 0;
  v48 = 1;
  do
  {
    while (1)
    {
      v49 = v48;
      v50 = &g_GncPCntxtInfo + 36 * v47;
      if (v50[8] == 1)
      {
        break;
      }

      v48 = 0;
      v47 = 1;
      if ((v49 & 1) == 0)
      {
        goto LABEL_99;
      }
    }

    v48 = 0;
    v51 = v50[9];
    v47 = 1;
  }

  while ((v49 & ((v51 & 4) == 0)) != 0);
  if ((v51 & 4) == 0)
  {
LABEL_99:
    word_2A191F6D4 = 0;
    byte_2A191F6D6 = 0;
    goto LABEL_145;
  }

  v52 = 0;
  v160[0] = 0;
  do
  {
    v53 = v160 + v52;
    *(&v160[191] + v52 + 4) = 0;
    v53[1540] = 127;
    *(v53 + 771) = 0;
    *(v53 + 386) = 0;
    v53[1548] = 0;
    *(v53 + 388) = 0;
    v52 += 28;
    *(v53 + 778) = 0;
  }

  while (v52 != 56);
  memset_s(v160, 0x634uLL, 0, 0x634uLL);
  if (g_GncP_PEUpdate[0])
  {
    v54 = dword_2A191DD84;
  }

  else
  {
    v54 = v7;
  }

  HIDWORD(v160[0]) = v54;
  if (!GN_AGNSS_Get_Meas(0, 255, &v160[45]))
  {
    LOBYTE(v160[0]) = 0;
    goto LABEL_123;
  }

  if (HIDWORD(v160[45]) > 0x5265BFF)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      goto LABEL_123;
    }

    bzero(v161, 0x410uLL);
    v129 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v55 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: #%04hx ToD,%u\n", v129);
LABEL_122:
    LbsOsaTrace_WriteLog(8u, v161, v55, 2, 1);
    goto LABEL_123;
  }

  if (LOWORD(v160[46]) - 10000 <= 0xD8EE)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      goto LABEL_123;
    }

    bzero(v161, 0x410uLL);
    v130 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v55 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: #%04hx ToDSubMS,%d\n", v130);
    goto LABEL_122;
  }

  if (SBYTE2(v160[46]) < 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      goto LABEL_123;
    }

    bzero(v161, 0x410uLL);
    v132 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v55 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: #%04hx ToDUnc,%u\n", v132);
    goto LABEL_122;
  }

  if (SBYTE3(v160[46]) <= -2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      goto LABEL_123;
    }

    bzero(v161, 0x410uLL);
    v131 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v55 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: #%04hx DeltaToD,%d\n", v131);
    goto LABEL_122;
  }

  if (LOBYTE(v160[47]) > 0x30u)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      goto LABEL_123;
    }

    bzero(v161, 0x410uLL);
    v133 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v55 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: #%04hx NumGnssMeas,%u\n", v133);
    goto LABEL_122;
  }

  if (!LOBYTE(v160[47]))
  {
    goto LABEL_240;
  }

  v87 = 0;
  v88 = 0;
  v89 = 1;
  while (1)
  {
    v90 = HIDWORD(v160[v87 + 47]);
    if (v90 > 15)
    {
      break;
    }

    if (v90 > 3)
    {
      if (v90 == 4)
      {
        if (LOBYTE(v160[v87 + 48]) - 160 <= 0xFFFFFFD7)
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
          {
            bzero(v161, 0x410uLL);
            v118 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v92 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,SSVId,%u\n", v118);
            goto LABEL_238;
          }

          goto LABEL_239;
        }
      }

      else if (v90 != 8)
      {
        goto LABEL_269;
      }
    }

    else if (v90 == 1)
    {
      if (LOBYTE(v160[v87 + 48]) >= 0x22u)
      {
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          bzero(v161, 0x410uLL);
          v117 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v92 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,GSVId,%u\n", v117);
          goto LABEL_238;
        }

        goto LABEL_239;
      }
    }

    else if (v90 != 2)
    {
      goto LABEL_269;
    }

LABEL_215:
    if (SBYTE1(v160[v87 + 48]) < 0)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        goto LABEL_239;
      }

      bzero(v161, 0x410uLL);
      v91 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v92 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,CPAmb,%u\n", v91);
      goto LABEL_238;
    }

    if (BYTE2(v160[v87 + 48]) >= 0x40u)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        goto LABEL_239;
      }

      bzero(v161, 0x410uLL);
      v93 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v92 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,SNR,%u\n", v93);
      goto LABEL_238;
    }

    if (BYTE3(v160[v87 + 48]) >= 4u)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        goto LABEL_239;
      }

      bzero(v161, 0x410uLL);
      v94 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v92 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,MPath,%u\n", v94);
      goto LABEL_238;
    }

    if (SBYTE4(v160[v87 + 48]) < 0)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        goto LABEL_239;
      }

      bzero(v161, 0x410uLL);
      v95 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v92 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,IntCP,%u\n", v95);
      goto LABEL_238;
    }

    if (BYTE5(v160[v87 + 48]) >= 0x40u)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        goto LABEL_239;
      }

      bzero(v161, 0x410uLL);
      v96 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v92 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,PhRMS,%u\n", v96);
      goto LABEL_238;
    }

    if (LODWORD(v160[v87 + 49]) > 0x200000)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        goto LABEL_239;
      }

      bzero(v161, 0x410uLL);
      v97 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v92 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,CP,%u\n", v97);
      goto LABEL_238;
    }

    if (HIWORD(v160[v87 + 49]) >= 0xFDE9u)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        goto LABEL_239;
      }

      bzero(v161, 0x410uLL);
      v98 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v92 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,CarrLk,%u\n", v98);
      goto LABEL_238;
    }

    v88 = v89++ >= LOBYTE(v160[47]);
    v87 += 3;
    if (3 * LOBYTE(v160[47]) == v87)
    {
      goto LABEL_240;
    }
  }

  if (v90 > 63)
  {
    if (v90 == 64 || v90 == 128)
    {
      goto LABEL_215;
    }

LABEL_269:
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      goto LABEL_239;
    }

    bzero(v161, 0x410uLL);
    v111 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v92 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,Type,%u\n", v111);
LABEL_238:
    LbsOsaTrace_WriteLog(8u, v161, v92, 2, 1);
    goto LABEL_239;
  }

  if (v90 == 16)
  {
    if (LOBYTE(v160[v87 + 48]) - 203 > 0xFFFFFFF5)
    {
      goto LABEL_215;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      goto LABEL_239;
    }

    bzero(v161, 0x410uLL);
    v113 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v92 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,QSVId,%u\n", v113);
    goto LABEL_238;
  }

  if (v90 != 32)
  {
    goto LABEL_269;
  }

  if (LOBYTE(v160[v87 + 48]) < 0x1Au)
  {
    goto LABEL_215;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
  {
    bzero(v161, 0x410uLL);
    v115 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v92 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,RSVId,%u\n", v115);
    goto LABEL_238;
  }

LABEL_239:
  if (v88)
  {
LABEL_240:
    v99 = 0;
    v100 = 1;
    LOBYTE(v160[0]) = 1;
    do
    {
      while (1)
      {
        v101 = v100;
        v102 = &g_GncPCntxtInfo + 36 * v99;
        if (v102[8] == 1 && (v102[9] & 4) != 0)
        {
          break;
        }

        v100 = 0;
        GPS_MS_Ass_Meas = 0;
        v99 = 1;
        if ((v101 & 1) == 0)
        {
          goto LABEL_250;
        }
      }

      v104 = v102[38];
      if ((v101 & 1) == 0)
      {
        break;
      }

      v100 = 0;
      v99 = 1;
    }

    while ((v104 & 1) == 0);
    if (v104)
    {
      GPS_MS_Ass_Meas = API_Get_GPS_MS_Ass_Meas(0, 1, &v160[23]);
    }

    else
    {
      GPS_MS_Ass_Meas = 0;
    }

LABEL_250:
    v105 = 0;
    BYTE2(v160[0]) = GPS_MS_Ass_Meas;
    v106 = 1;
    do
    {
      while (1)
      {
        v107 = v106;
        v108 = &g_GncPCntxtInfo + 36 * v105;
        if (v108[8] == 1 && (v108[9] & 4) != 0)
        {
          break;
        }

        v106 = 0;
        v109 = 0;
        v105 = 1;
        if ((v107 & 1) == 0)
        {
          goto LABEL_259;
        }
      }

      v106 = 0;
      v110 = v108[38];
      v105 = 1;
    }

    while ((v107 & v110 & 1) != 0);
    if (v110)
    {
      v109 = 0;
    }

    else
    {
      v109 = API_Get_GPS_MS_Ass_Meas(0, 0, &v160[1]);
    }

LABEL_259:
    BYTE1(v160[0]) = v109;
  }

LABEL_123:
  v56 = 0;
  v145[0] = 0;
  v146 = 0;
  memset(v149, 0, sizeof(v149));
  v147 = 0;
  v148 = 0;
  v57 = 1;
  while (1)
  {
    v58 = v57;
    if (!GncP04_08GetNextSessInstn(v56, v145, 4u))
    {
      break;
    }

    memset_s(v161, 0x494uLL, 0, 0x494uLL);
    v59 = &v160[191] + 28 * v56 + 4;
    v59[1] = v145[0];
    *(v59 + 1) = v146;
    *v59 = 0;
    v59[8] = 127;
    if (GN_AGNSS_Get_Meas(0, v149[6], v161))
    {
      *v59 = v161[17];
      *(v59 + 1) = GncP11_02ConvertAGnssID(*v161);
      *(v59 + 3) = *&v161[4] % 0x36EE80u;
      v59[8] = v161[10];
      if (*&v161[8] >> 4 > 0x270u)
      {
        v60 = -1;
      }

      else
      {
        v60 = (*&v161[8] * 0.4);
      }

      *(v59 + 5) = v60;
      if (v161[11] == 255)
      {
        v59[16] = -1;
        *(v59 + 5) = 0;
      }

      else
      {
        v59[16] = v161[11];
        *(v59 + 5) = GncP11_02ConvertAGnssID(*&v161[20]);
        v59[24] = 1;
        v59[25] = v161[24] - 1;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
      bzero(&v151, 0x410uLL);
      v61 = mach_continuous_time();
      v62 = snprintf(&v151, 0x40FuLL, "%10u %s%c %s: ID,%u,Qual,%u,TimeGnssId,%u,ToD,%u,TodUnc,%u,ReqConst,%u\n", (*&g_MacClockTicksToMsRelation * v61), "GNC", 68, "GncP01_21QualMeasReqs", *(v59 + 1), *v59, *(v59 + 1), *(v59 + 3), v59[8], v149[6]);
      LbsOsaTrace_WriteLog(8u, &v151, v62, 5, 1);
    }

    v57 = 0;
    v56 = 1;
    if ((v58 & 1) == 0)
    {
      LOBYTE(v56) = 2;
      break;
    }
  }

  BYTE3(v160[0]) = v56;
  if (v160[0])
  {
    v1 = &unk_2A1926000;
    v3 = byte_2A1939000;
    if ((v160[0] & 0x100) == 0 && (v160[0] & 0x10000) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(v161, 0x410uLL);
      mach_continuous_time();
      v63 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: No GPS Meas\n");
      goto LABEL_143;
    }
  }

  else
  {
    v1 = &unk_2A1926000;
    v3 = byte_2A1939000;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(v161, 0x410uLL);
      mach_continuous_time();
      v63 = snprintf(v161, 0x40FuLL, "%10u %s%c %s: No GNSS Meas\n");
LABEL_143:
      LbsOsaTrace_WriteLog(8u, v161, v63, 2, 1);
    }
  }

  memcpy(&word_2A191F6D4, v160, 0x634uLL);
LABEL_145:
  v64 = 0;
  v65 = 1;
  do
  {
    while (1)
    {
      v66 = v65;
      v67 = &g_GncPCntxtInfo + 36 * v64;
      if (v67[8] == 1)
      {
        break;
      }

      v65 = 0;
      v64 = 1;
      if ((v66 & 1) == 0)
      {
        v69 = qword_2A191FD10;
LABEL_152:
        if (v69)
        {
          free(v69);
        }

        qword_2A191FD10 = 0;
        goto LABEL_166;
      }
    }

    v65 = 0;
    v68 = v67[9];
    v64 = 1;
  }

  while ((v66 & ((v68 & 8) == 0)) != 0);
  v69 = qword_2A191FD10;
  if ((v68 & 8) == 0)
  {
    goto LABEL_152;
  }

  if (qword_2A191FD10 || (v69 = gnssOsa_Calloc("GncP01_28UpdateRawMeas", 1186, 1, 0x288F8uLL), (qword_2A191FD10 = v69) != 0))
  {
    v70 = *(*(*(v3 + 182) + 88) + 32);
    if (v70)
    {
      v71 = v70 == Last_Published_Raw_Meas_TTag;
    }

    else
    {
      v71 = 1;
    }

    v72 = !v71;
    if (!v71)
    {
      API_Get_Raw_Meas_Data(v69);
      Last_Published_Raw_Meas_TTag = v70;
    }

    byte_2A191FD08 = v72;
  }

LABEL_166:
  if (!gnssOsa_MacExitCriticalSection("GncP01_31Update", 1231, &g_PosUpdateCritic))
  {
    g_MEResetInfo = 0;
    GncP03_10SndNewUpdtSM();
    v74 = g_GncPCntxtInfo;
    if (g_GncPCntxtInfo)
    {
      v75 = v1[326];
      if (v75)
      {
        if (*v75)
        {
          memcpy(v161, v75, sizeof(v161));
          v76 = gnssOsa_Calloc("GncP01_51SndNmeaUpdt", 1425, 1, 0x18uLL);
          if (v76)
          {
            v77 = v76;
            v78 = gnssOsa_Calloc("GncP01_51SndNmeaUpdt", 1431, 20480, 1uLL);
            v77[2] = v78;
            if (v78)
            {
              v79 = v78;
              if ((v74 & 0x200) != 0 && *(&xmmword_2A1926A30 + 1) && **(&xmmword_2A1926A30 + 1))
              {
                v80 = v160;
                memcpy(v160, *(&xmmword_2A1926A30 + 1), sizeof(v160));
              }

              else
              {
                v80 = 0;
              }

              v81 = GN_GPS_Encode_NMEA(0x5000u, v79, v74, v161, v80);
              *(v77 + 6) = v81;
              if (v81)
              {
                if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
                {
                  bzero(&v151, 0x410uLL);
                  v82 = mach_continuous_time();
                  v83 = snprintf(&v151, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_NMEA_DATA_IND =>GNM Len,%u\n", (*&g_MacClockTicksToMsRelation * v82), "GNC", 73, "GncP01_51SndNmeaUpdt", *(v77 + 6));
                  LbsOsaTrace_WriteLog(8u, &v151, v83, 4, 1);
                }

                AgpsSendFsmMsg(134, 128, 8786691, v77);
                goto LABEL_191;
              }

              if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
              {
                bzero(&v151, 0x410uLL);
                v84 = mach_continuous_time();
                v85 = snprintf(&v151, 0x40FuLL, "%10u %s%c %s: Encode Failed\n", (*&g_MacClockTicksToMsRelation * v84), "GNC", 87, "GncP01_51SndNmeaUpdt");
                LbsOsaTrace_WriteLog(8u, &v151, v85, 2, 1);
              }

              v86 = v77[2];
              if (v86)
              {
                free(v86);
              }
            }

            free(v77);
          }
        }
      }
    }

LABEL_191:
    GncP16_19ChkQualUpdtMEFixInt();
    GncP24_55UpdateBceOrbitAssistance(0);
    return 1;
  }

  result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
  if (result)
  {
    bzero(v160, 0x410uLL);
    v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v6 = 1551;
LABEL_169:
    v73 = snprintf(v160, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v5, "GNC", 69, "GncP01_31Update", v6);
    LbsOsaTrace_WriteLog(8u, v160, v73, 0, 1);
    return 0;
  }

  return result;
}

uint64_t GncP01_33CheckSessionQualMet(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
LABEL_27:
    v8 = 0;
    return v8 & 1;
  }

  if (*(a1 + 5))
  {
    v4 = 0;
    v5 = 1;
    while (1)
    {
      v6 = v5;
      v7 = &g_GncP_PEUpdate[4 * v4 + 6352];
      if (g_GncP_PEUpdate[4 * v4 + 6353] == *a1 && *&g_GncP_PEUpdate[4 * v4 + 6354] == *(a1 + 2))
      {
        break;
      }

      v5 = 0;
      v8 = 0;
      v4 = 1;
      if ((v6 & 1) == 0)
      {
        return v8 & 1;
      }
    }

    goto LABEL_18;
  }

  if ((*(a1 + 5) & 2) != 0)
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = v10;
      v7 = &g_GncP_PEUpdate[28 * v9 + 6436];
      if (g_GncP_PEUpdate[28 * v9 + 6437] == *a1 && *&g_GncP_PEUpdate[28 * v9 + 6438] == *(a1 + 2))
      {
        break;
      }

      v10 = 0;
      v8 = 0;
      v9 = 1;
      if ((v11 & 1) == 0)
      {
        return v8 & 1;
      }
    }

LABEL_18:
    v8 = *v7;
    return v8 & 1;
  }

  if ((*(a1 + 5) & 8) == 0)
  {
    if ((*(a1 + 5) & 4) != 0)
    {
      v12 = 0;
      v13 = 1;
      while (1)
      {
        v14 = v13;
        if (g_GncP_PEUpdate[28 * v12 + 8025] == *a1 && *&g_GncP_PEUpdate[28 * v12 + 8026] == *(a1 + 2))
        {
          break;
        }

        v13 = 0;
        v8 = 0;
        v12 = 1;
        if ((v14 & 1) == 0)
        {
          return v8 & 1;
        }
      }

      if (g_GncP_PEUpdate[28 * v12 + 8032] <= 0x5Fu && g_GncP_PEUpdate[28 * v12 + 8024] == 255)
      {
        v8 = 1;
        return v8 & 1;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ID,%u,Output,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncP01_33CheckSessionQualMet", 770, *(a1 + 2), *(a1 + 5));
      LbsOsaTrace_WriteLog(8u, __str, v3, 2, 1);
    }

    goto LABEL_27;
  }

  v8 = byte_2A191FD08;
  return v8 & 1;
}

uint64_t GncP01_34HandleRespSentInd(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_SESSION_RESP_SENT_IND ID,%u,Type,%u,OSTtag,%u,BBTtag,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP01_34HandleRespSentInd", *(a1 + 14), *(a1 + 12), *(a1 + 16), *(a1 + 20));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    v4 = *(a1 + 12);
    if ((v4 | 2) == 3)
    {
      GN_AGPS_Mark_Response_Sent(*(a1 + 16), *(a1 + 20));
    }

    else
    {
      GN_GPS_Mark_Single_Pos_Used(v4 != 2, *(a1 + 14), *(a1 + 16), *(a1 + 20));
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 69, "GncP01_34HandleRespSentInd", 517);
    LbsOsaTrace_WriteLog(8u, __str, v6, 0, 1);
  }

  return 0;
}

void *GncP01_50GetNavData(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if (g_GncP_PEUpdate[0] != 1)
  {
    *a1 = dword_2A191DD7C;
    goto LABEL_9;
  }

  *a1 = dword_2A191DD84;
  if (GncP11_30CheckUtcValidity(word_2A191DD8A, word_2A191DD8C, word_2A191DD8E, word_2A191DD90, word_2A191DD92, word_2A191DD94, word_2A191DD96))
  {
    *(a1 + 8) = *&dword_2A191DD80;
    *(a1 + 16) = *&byte_2A191DD88;
    *(a1 + 18) = byte_2A191DD79;
    *(a1 + 20) = *&word_2A191DD8A;
    *(a1 + 28) = word_2A191DD92;
    *(a1 + 30) = *&word_2A191DD94;
    *(a1 + 36) = word_2A191DD98;
    *(a1 + 40) = qword_2A191DE18;
    *(a1 + 48) = *&qword_2A191DDA0;
    *(a1 + 64) = unk_2A191DDB0;
    *(a1 + 72) = vextq_s8(*&qword_2A191DDB8, *&qword_2A191DDB8, 8uLL);
    *(a1 + 88) = unk_2A191DDC8;
    *(a1 + 104) = unk_2A191DDD8;
    *(a1 + 120) = unk_2A191DDE8;
    *(a1 + 136) = unk_2A191DDF8;
    *(a1 + 152) = unk_2A191DE08;
    *(a1 + 168) = unk_2A191DE20;
    *(a1 + 184) = *algn_2A191DE30;
    *(a1 + 200) = *&algn_2A191DE30[16];
    *(a1 + 216) = *&algn_2A191DE30[32];
    *(a1 + 232) = *&algn_2A191DE30[48];
    *(a1 + 248) = *&algn_2A191DE30[64];
    *(a1 + 288) = qword_2A191DE80;
    *(a1 + 264) = xmmword_2A191DE88;
    *(a1 + 280) = qword_2A191DE98;
    *(a1 + 304) = dword_2A191DEA0 & 0x373F;
    v2 = dword_2A191DEA8;
    if (dword_2A191DEA8 > 3)
    {
      if ((dword_2A191DEA8 - 4) >= 2)
      {
        goto LABEL_25;
      }

      v2 = 3;
    }

    else if ((dword_2A191DEA8 - 2) < 2)
    {
      v2 = 2;
    }

    else
    {
      if (!dword_2A191DEA8)
      {
        *(a1 + 296) = 0;
LABEL_16:
        *(a1 + 297) = unk_2A191DEBD;
        *(a1 + 299) = byte_2A191DEBC;
        *(a1 + 300) = GncP11_23ConvertUsrState(dword_2A191DEA4);
        *(a1 + 301) = GncP11_24ConvertGnssContent(dword_2A191DEAC);
        *(a1 + 312) = GncP11_25ConvertReliab(dword_2A191DEB0);
        *(a1 + 313) = GncP11_32ConvertEstimatedTech(dword_2A191DEB4);
        *(a1 + 308) = dword_2A191DEB8 & 0x7707FFFF;
        v6 = byte_2A191DEBF;
        *(a1 + 314) = byte_2A191DEBF;
        *(a1 + 315) = byte_2A191DEC0;
        if (v6)
        {
          v7 = 0;
          v8 = 0x54Cu;
          v9 = 0xA40u;
          do
          {
            v10 = &g_GncP_PEUpdate[4 * v7];
            v11 = a1 + v7;
            *(a1 + v7 + 316) = GncP11_01ConvertGnssID(*(v10 + 83));
            v12 = GncP11_05ConvertGnssSignalID(*(v10 + 211));
            v13 = a1 + 4 * v7;
            *(v13 + 444) = v12;
            *(v11 + 1340) = g_GncP_PEUpdate[v7 + 1740];
            *(v11 + 1468) = g_GncP_PEUpdate[v7 + 1868];
            v14 = &g_GncP_PEUpdate[8 * v7];
            *(a1 + 8 * v7 + 1600) = *(v14 + 250);
            v15 = (a1 + v9);
            *v15 = *&g_GncP_PEUpdate[v9 + 400];
            v15[128] = *&g_GncP_PEUpdate[v9 + 1424];
            v15[256] = *&g_GncP_PEUpdate[v9 + 2448];
            v16 = a1 + 3648 + v7;
            *(v16 + 2048) = g_GncP_PEUpdate[v7 + 6096];
            *(v16 + 2176) = g_GncP_PEUpdate[v7 + 6224];
            LOBYTE(v16) = g_GncP_PEUpdate[v8 + 2];
            *(a1 + v8 - 400) = *&g_GncP_PEUpdate[v8];
            *(a1 + v8 - 398) = *(a1 + v8 - 398) & 0xE0 | v16 & 0x1F;
            if (!*(a1 + v7 + 316) || !*(v13 + 444))
            {
              if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v17 = mach_continuous_time();
                v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstID,%u,SVId,%u,SigID,%u,FreqCh,%u,SNR,%.2f,Used,%u,Conf,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 87, "GncP01_14PopulateNavDataContent", 770, *(v10 + 83), g_GncP_PEUpdate[v7 + 1740], *(v10 + 211), g_GncP_PEUpdate[v7 + 1868], *(v14 + 250), g_GncP_PEUpdate[v7 + 6096], g_GncP_PEUpdate[v7 + 6224]);
                LbsOsaTrace_WriteLog(8u, __str, v18, 2, 1);
              }
            }

            if ((++v7 & 0x80) != 0)
            {
              break;
            }

            v8 += 3;
            v9 += 8;
          }

          while (v7 < *(a1 + 314));
        }

        goto LABEL_9;
      }

      if (dword_2A191DEA8 != 1)
      {
LABEL_25:
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v19 = mach_continuous_time();
          v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FixType,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 87, "GncP01_14PopulateNavDataContent", 770, dword_2A191DEA8);
          LbsOsaTrace_WriteLog(8u, __str, v20, 2, 1);
        }

        goto LABEL_16;
      }
    }

    *(a1 + 296) = v2;
    goto LABEL_16;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid UTC Y,%u,M,%u,D,%u,H,%u,M,%u,S,%u,MS,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP01_14PopulateNavDataContent", 770, word_2A191DD8A, word_2A191DD8C, word_2A191DD8E, word_2A191DD90, word_2A191DD92, word_2A191DD94, word_2A191DD96);
    LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
  }

LABEL_9:
  result = memcpy_s("GncP01_50GetNavData", 1399, (a1 + 5952), 8u, &byte_2A191DD7A + 6350, 8uLL);
  *(a1 + 5960) = byte_2A191DD7A;
  return result;
}

double GncP_GetNavData(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("GncP_GetNavData", 1482, &g_PosUpdateCritic))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = 1550;
    goto LABEL_7;
  }

  GncP01_50GetNavData(a1);
  if (gnssOsa_MacExitCriticalSection("GncP_GetNavData", 1490, &g_PosUpdateCritic) && LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = 1551;
LABEL_7:
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v3, "GNC", 69, "GncP_GetNavData", v4);
    LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
  }

  return result;
}

double GncP_GetGADData(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("GncP_GetGADData", 1501, &g_PosUpdateCritic))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = 1550;
    goto LABEL_7;
  }

  GncP01_27PopulateGadData(a1);
  if (gnssOsa_MacExitCriticalSection("GncP_GetGADData", 1509, &g_PosUpdateCritic) && LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = 1551;
LABEL_7:
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v3, "GNC", 69, "GncP_GetGADData", v4);
    LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
  }

  return result;
}

uint64_t GncP_GetLatestUpdtOsTime(void)
{
  v8 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("GncP_GetLatestUpdtOsTime", 1522, &g_PosUpdateCritic))
  {
    v0 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 69, "GncP_GetLatestUpdtOsTime", 1550);
      LbsOsaTrace_WriteLog(8u, __str, v2, 0, 1);
      return 0;
    }
  }

  else
  {
    v3 = 4;
    if (g_GncP_PEUpdate[0])
    {
      v3 = 12;
    }

    v0 = *&g_GncP_PEUpdate[v3];
    if (gnssOsa_MacExitCriticalSection("GncP_GetLatestUpdtOsTime", 1537, &g_PosUpdateCritic) && LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP_GetLatestUpdtOsTime", 1551);
      LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
    }
  }

  return v0;
}

double GncP_GetMeasData(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a1;
  v29 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("GncP_GetMeasData", 1553, &g_PosUpdateCritic))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v7, "GNC", 69, "GncP_GetMeasData", 1550);
    goto LABEL_44;
  }

  *a2 = dword_2A191F6D8;
  *(a2 + 4) = dword_2A191DD80;
  if (*(&dword_2A191DD80 + 6484) == 1 && g_GncP_PEUpdate[0] == 1)
  {
    v27 = a3;
    *(a2 + 28) |= 2u;
    *(a2 + 8) = *(&dword_2A191DD80 + 6861);
    *(a2 + 24) = dword_2A191DEB8 & 0x7707FFFF;
    *(a2 + 20) = dword_2A191DEA0 & 0x373F;
    *(a2 + 704) = dword_2A191F840 % 0x36EE80u;
    *(a2 + 710) = *(&dword_2A191DD80 + 6854);
    *(a2 + 712) = dword_2A191F848;
    *(a2 + 716) = GncP11_02ConvertAGnssID(dword_2A191F83C);
    *(a2 + 696) = -1;
    *(a2 + 700) = -1;
    v9 = (word_2A191F844 * 0.4);
    if (word_2A191F844 >> 4 > 0x270u)
    {
      LOWORD(v9) = -1;
    }

    *(a2 + 708) = v9;
    *(a2 + 711) = *(&dword_2A191DD80 + 6855);
    *(a2 + 722) = word_2A191DD98;
    *(a2 + 724) = llround(*&qword_2A191DDC0);
    *(a2 + 728) = dword_2A191DD80;
    *(a2 + 720) = byte_2A191DD89;
    if (*(&dword_2A191DD80 + 6860))
    {
      v10 = 0;
      do
      {
        v11 = &g_GncP_PEUpdate[24 * v10 + 6872];
        v12 = GncP11_02ConvertAGnssID(*v11);
        if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Index,%u,GnssId,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 68, "GncP01_13PopulateGnssMeasData", v10, *v11);
          LbsOsaTrace_WriteLog(8u, __str, v14, 5, 1);
        }

        v15 = *(a2 + 732);
        if (*(a2 + 732))
        {
          v16 = a2 + 748;
          v17 = *(a2 + 732);
          do
          {
            if (v12 == *(v16 - 12))
            {
              if (*(v16 - 2) <= 0x3FuLL)
              {
                GncP01_12ConvertOneGnssSvMeas(v5, v12, v16 + 20 * *(v16 - 2), v11);
                ++*(v16 - 2);
              }

              goto LABEL_24;
            }

            v16 += 10280;
            --v17;
          }

          while (v17);
          if (v15 <= 0xF)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v15 = 0;
LABEL_19:
          v18 = a2 + 736 + 10280 * v15;
          *v18 = v12;
          *(v18 + 4) = 1;
          *(v18 + 8) = 1;
          v19 = g_GncP_PEUpdate[24 * v10 + 6877];
          if (v19 >= 0x7F)
          {
            LOBYTE(v19) = 127;
          }

          *(v18 + 9) = v19;
          GncP01_12ConvertOneGnssSvMeas(v5, v12, v18 + 12, v11);
          ++*(v18 + 10);
          ++*(a2 + 732);
        }

LABEL_24:
        if (v10 > 0x2E)
        {
          break;
        }

        ++v10;
      }

      while (v10 < byte_2A191F84C);
    }

    if (*(a2 + 732))
    {
      v20 = 1;
    }

    else
    {
      v20 = 7;
    }

    *(a2 + 692) = v20;
    if (v27)
    {
      if (byte_2A191F6D6 != 1)
      {
        goto LABEL_41;
      }

      *(a2 + 28) |= 1u;
      v21 = &dword_2A191F78C;
      *(a2 + 696) = dword_2A191F78C;
      *(a2 + 700) = byte_2A191F790;
    }

    else
    {
      if (HIBYTE(word_2A191F6D4) != 1)
      {
        goto LABEL_41;
      }

      *(a2 + 28) |= 1u;
      *(a2 + 696) = dword_2A191F6DC;
      *(a2 + 700) = *(&dword_2A191DD80 + 6496);
      *(a2 + 722) = word_2A191DD98;
      v21 = &dword_2A191DD80 + 1623;
      *(a2 + 724) = llround(*&qword_2A191DDC0);
      *(a2 + 728) = dword_2A191DD80;
      *(a2 + 720) = byte_2A191DD89;
    }

    v22 = *(v21 + 12);
    if (*(v21 + 12))
    {
      v23 = 0;
      *(a2 + 44) = 1;
      *(a2 + 32) = *v21;
      *(a2 + 40) = *(v21 + 4);
      *(a2 + 49) = v22;
      *(a2 + 36) = v21[2];
      *(a2 + 48) = *(v21 + 5);
      *(a2 + 41) = *(v21 + 6);
      if (v22 >= 0x10)
      {
        v22 = 16;
      }

      v24 = 10 * v22;
      do
      {
        v25 = a2 + v23;
        *(v25 + 50) = *(v21 + v23 + 14) - 1;
        *(v25 + 51) = *(v21 + v23 + 15);
        *(v25 + 52) = *(v21 + v23 + 16);
        *(v25 + 56) = *(v21 + v23 + 20);
        v23 += 10;
      }

      while (v24 != v23);
    }

    else
    {
      *(a2 + 44) = 7;
    }
  }

LABEL_41:
  memcpy_s("GncP_GetMeasData", 1614, (a2 + 165288), 0x38u, &unk_2A191FCD0, 0x38uLL);
  *(a2 + 165344) = byte_2A191F6D7;
  if (gnssOsa_MacExitCriticalSection("GncP_GetMeasData", 1617, &g_PosUpdateCritic) && LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v26, "GNC", 69, "GncP_GetMeasData", 1551);
LABEL_44:
    LbsOsaTrace_WriteLog(8u, __str, v8, 0, 1);
  }

  return result;
}

uint64_t GncP_GetDetailedMeasData(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("GncP_GetDetailedMeasData", 1630, &g_PosUpdateCritic))
  {
    v2 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncP_GetDetailedMeasData", 1550);
      LbsOsaTrace_WriteLog(8u, __str, v4, 0, 1);
      return 0;
    }
  }

  else
  {
    if (byte_2A191FD08 != 1 || qword_2A191FD10 == 0)
    {
      v2 = 0;
    }

    else
    {
      v2 = GncP27_30PopulateRawMeas(qword_2A191FD10, a1);
    }

    if (gnssOsa_MacExitCriticalSection("GncP_GetDetailedMeasData", 1642, &g_PosUpdateCritic) && LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 69, "GncP_GetDetailedMeasData", 1551);
      LbsOsaTrace_WriteLog(8u, __str, v7, 0, 1);
    }
  }

  return v2;
}

void GncP01_12ConvertOneGnssSvMeas(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a3 && a4)
  {
    if (a2 == 4)
    {
      v7 = -120;
    }

    else
    {
      v7 = -1;
    }

    if (a2 == 16)
    {
      v7 = 63;
    }

    *a3 = *(a4 + 4) + v7;
    *(a3 + 1) = *(a4 + 6);
    *(a3 + 4) = *(a4 + 8);
    *(a3 + 8) = *(a4 + 12);
    *(a3 + 12) = *(a4 + 16);
    v8 = *(a4 + 20);
    if ((v8 & 0x80000000) != 0)
    {
      *(a3 + 3) |= 1u;
      v9 = -floor(vcvtd_n_f64_s32(v8, 6uLL));
    }

    else
    {
      v9 = floor(vcvtd_n_f64_u32(v8, 6uLL));
    }

    *(a3 + 16) = v9;
    if (v9 >> 25)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AccDelta,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "GncP01_12ConvertOneGnssSvMeas", 772, *(a3 + 16));
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      *(a3 + 16) = 0x1FFFFFF;
    }

    if ((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - a1 < *(a4 + 18))
    {
      *(a3 + 3) |= 2u;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "GncP01_12ConvertOneGnssSvMeas", 513);
    LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
  }
}

uint64_t NK_Comp_ith_DO_Res(uint64_t result, double *a2, uint64_t a3, uint64_t a4, double *a5, double a6)
{
  v6 = a4 + 8 * result;
  *(v6 + 26304) = *(a3 + 40) * a2[1] + *(a3 + 32) * *a2 + *(a3 + 48) * a2[2] - *(a3 + 64) * 299792458.0;
  *a5 = (*(a3 + 40) - *(a4 + 696)) * a2[1] + (*(a3 + 32) - *(a4 + 688)) * *a2 + (*(a3 + 48) - *(a4 + 704)) * a2[2] + (*(a4 + 760) - *(a3 + 64)) * 299792458.0;
  v7 = *(a3 + 72) * dbl_29975FC40[*(a3 + 120) == 1];
  *(v6 + 10024) = v7;
  v8 = a4 + result;
  *(v8 + 8488) = 1;
  ++*(a4 + 8386);
  v9 = *(v8 + 8440);
  if ((v9 & 1) != 0 || *(a4 + result + 14016) == 1)
  {
    v10 = *a5 + a6 * 0.190293673;
    *(a4 + 10408 + 8 * result) = v10;
    v11 = *(a4 + 24 * result + 8872) + *(a4 + 24 * result + 8880);
    v12 = (a4 + 8 * result);
    if (*(a4 + result + 1224) == 1)
    {
      v10 = v10 - v12[255];
      *(a4 + 10408 + 8 * result) = v10;
      v7 = v12[303];
    }

    *(a4 + 12424 + 8 * result) = v11 + v7;
    v12[1397] = v10;
    if (v9)
    {
      if (fabs(v10) < 6000.0)
      {
        v13 = a4 + result;
        *(v13 + 8536) = 1;
        ++*(a4 + 8387);
        *(v13 + 26160) = 1;
      }
    }
  }

  return result;
}

void DD_Assist_BDS_Data(int *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = 0;
  v97 = *MEMORY[0x29EDCA608];
  v83 = a4 + 33548;
  v8 = a4 + 28220;
  v88 = result + 1627;
  v92 = result + 1614;
  v9 = a4 + 3065;
  v91 = a2 - 241;
  v94 = result + 1624;
  v84 = a4 + 3990;
  v87 = result + 1626;
  v89 = result + 1625;
  v90 = a4 + 3065;
  v10 = a3 + 92;
  v93 = a3 + 92;
  do
  {
    if (*(v10 + v7) > 0xA5u || *(a4[3058] + v7) == 1 && (v91 - *(v9 + 25 * v7)) > 0xFFFFF806)
    {
      goto LABEL_40;
    }

    v96 = 0;
    memset(v95, 0, 23);
    memset(&v95[24], 0, 70);
    if (!Core_Get_BDS_Eph((v7 + 1), a2, v95) || (v11 = a4[3058], *(v11 + v7) == 1) && (v12 = *(v9 + 25 * v7), *v95 <= v12) && a2 - v12 > -1801)
    {
      *(a4[3053] + 20 * v7 + 8) = 0;
      goto LABEL_40;
    }

    v13 = v95[22];
    v14 = v95[22] == 0;
    v15 = v94;
    if (v7 >= 0x13 && (v15 = v89, (v7 - 19) >= 0xB) && (v15 = v87, (v7 - 30) > 6))
    {
      v16 = 0;
      if (!*(v11 + v7))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v16 = *v15;
      if (!*(v11 + v7))
      {
        goto LABEL_19;
      }
    }

    v17 = v90 + 25 * v7;
    if (*v95 - *v17 <= 10799)
    {
      v86 = a4[3058];
      v85 = v95[22] == 0;
      v18 = Is_BDS_IntEph_Real(v90 + 100 * v7);
      v14 = v85;
      v11 = v86;
      if (v18)
      {
        v19 = Is_BDS_IntEph_Real(v95);
        v14 = v85;
        v11 = v86;
        if (!v19)
        {
          *v17 = a2;
          v9 = v90;
          v10 = v93;
          goto LABEL_40;
        }
      }
    }

LABEL_19:
    v20 = a4[3052];
    if (v16 < 1)
    {
      v9 = v90;
      v10 = v93;
    }

    else
    {
      v21 = *(v20 + v7) | v13;
      v9 = v90;
      v10 = v93;
      if (!v21)
      {
        v22 = a4[3060];
        if (*(v22 + v7) != 1)
        {
          goto LABEL_28;
        }

        if ((*(v84 + 44 * v7 + 42) & 1) != 0 || v16 + 3600 <= a2)
        {
          if (v16 + 100 < a2)
          {
            *(a4[3055] + v7) = 0;
            *(v22 + v7) = 0;
            *(v92 + v7) = -1;
            v20 = a4[3052];
            v11 = a4[3058];
          }

LABEL_28:
          v14 = 1;
          goto LABEL_29;
        }

        v14 = 0;
      }
    }

LABEL_29:
    v23 = v9 + 100 * v7;
    v24 = *&v95[80];
    *(v23 + 4) = *&v95[64];
    *(v23 + 5) = v24;
    *(v23 + 24) = v96;
    v25 = *&v95[16];
    *v23 = *v95;
    *(v23 + 1) = v25;
    v26 = *&v95[48];
    *(v23 + 2) = *&v95[32];
    *(v23 + 3) = v26;
    *(a4[3054] + v7) = 1;
    *(v11 + v7) = 1;
    *(v20 + v7) = v14;
    if (v14)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    v28 = a4[3053] + 20 * v7;
    v29 = (v28 + 12);
    v30 = (v28 + 8);
    if (*(v23 + 1) == 5)
    {
      v31 = v30;
    }

    else
    {
      v31 = v29;
    }

    *v31 = v27;
    if (a2 >= 1)
    {
      *(a4[3061] + v7) = 1;
      Core_Save_BDS_Eph((v7 + 1), 0, v23);
      v20 = a4[3052];
    }

    v32 = 0;
    LODWORD(v33) = 0;
    v34 = p_NV;
    v35 = p_NV + 12868;
    v36 = *(v20 + 29);
    v37 = *(v20 + 16);
    *(p_NV + 12868) = *v20;
    *(v35 + 16) = v37;
    *(v35 + 29) = v36;
    v38 = 55665;
    do
    {
      v39 = *(v34 + 12864 + v32) ^ BYTE1(v38);
      v38 = 52845 * (v38 + v39) + 22719;
      v33 = (v33 + v39);
      ++v32;
    }

    while (v32 != 48);
    *(v34 + 12856) = v33;
    *(v88 + v7) = 255;
LABEL_40:
    ++v7;
  }

  while (v7 != 37);
  if (a2 >= 1)
  {
    for (i = 0; i != 37; ++i)
    {
      if (*(a4[3052] + i) == 1 && (*(*(a5 + 928) + i) & 1) == 0 && *(v93 + i) <= 0xA5u && (*(a4[3059] + i) != 1 || a2 - *v8 >= 241))
      {
        v96 = 0;
        memset(v95, 0, 23);
        memset(&v95[24], 0, 70);
        BDS_IntEph = EE_Get_BDS_IntEph((i + 1), a2, v95);
        v42 = a4[3059];
        if (!BDS_IntEph || *(v42 + i) == 1 && *v95 <= *v8)
        {
          *(v42 + i) = 0;
        }

        else
        {
          v43 = *&v95[16];
          *v8 = *v95;
          *(v8 + 1) = v43;
          *(v8 + 24) = v96;
          v44 = *&v95[80];
          *(v8 + 4) = *&v95[64];
          *(v8 + 5) = v44;
          v45 = *&v95[48];
          *(v8 + 2) = *&v95[32];
          *(v8 + 3) = v45;
          *(a4[3054] + i) = 1;
          *(v42 + i) = 1;
          *(v88 + i) = 255;
          Debug_Log_BDS_Eph(2, v95);
        }
      }

      v8 += 100;
    }
  }

  v46 = 0;
  memset(v95, 0, 44);
  while (2)
  {
    if (*(a4[3060] + v46) == 1 && a2 - *(v84 + 11 * v46) <= 1800)
    {
      v47 = v46 + 1;
      goto LABEL_85;
    }

    v47 = v46 + 1;
    if (Core_Get_BDS_Alm((v46 + 1), a2, v95) && (*(a4[3060] + v46) != 1 || *v95 > *(v84 + 11 * v46)))
    {
      v48 = v94;
      if (v46 >= 0x13 && (v48 = v89, (v46 - 19) >= 0xB) && (v48 = v87, (v46 - 30) >= 7))
      {
        v50 = a4[3052];
      }

      else
      {
        v49 = *v48;
        v50 = a4[3052];
        if (v49 >= 1)
        {
          v51 = *(v50 + v46) & v95[42];
          if (*(v50 + v46) & 1) == 0 && (v95[42])
          {
            v52 = a4[3058];
            if (*(v52 + v46) == 1)
            {
              v53 = v90 + 100 * v46;
              v54 = v53[22];
              v55 = *v53;
              if (v54)
              {
                v56 = v55 + 3600 <= a2;
              }

              else
              {
                v56 = 1;
              }

              if (!v56)
              {
                v51 = 0;
                goto LABEL_78;
              }

              if (v55 + 100 < a2)
              {
                *(a4[3054] + v46) = 0;
                *(v52 + v46) = 0;
                *(v88 + v46) = 255;
              }
            }

            v51 = 1;
          }

LABEL_78:
          v57 = (v84 + 44 * v46);
          v58 = *&v95[16];
          *v57 = *v95;
          v57[1] = v58;
          *(v57 + 28) = *&v95[28];
          *(a4[3055] + v46) = 1;
          *(a4[3060] + v46) = 1;
          *(v50 + v46) = v51;
          if (a2 >= 1)
          {
            v59 = 0;
            LODWORD(v60) = 0;
            v61 = (p_NV + 56 * (v46 + 1));
            v62 = v61 + 1611;
            v63 = *(v57 + 28);
            v64 = *v57;
            v61[807] = v57[1];
            v61[806] = v64;
            *(v61 + 12924) = v63;
            v65 = v61 + 806;
            v66 = 55665;
            do
            {
              v67 = *(v65 + v59) ^ BYTE1(v66);
              v66 = 52845 * (v66 + v67) + 22719;
              v60 = (v60 + v67);
              ++v59;
            }

            while (v59 != 48);
            *v62 = v60;
            v50 = a4[3052];
          }

          v68 = 0;
          LODWORD(v69) = 0;
          v70 = p_NV;
          v71 = p_NV + 12868;
          v72 = *(v50 + 29);
          v73 = *(v50 + 16);
          *(p_NV + 12868) = *v50;
          *(v71 + 16) = v73;
          *(v71 + 29) = v72;
          v74 = 55665;
          do
          {
            v75 = *(v70 + 12864 + v68) ^ BYTE1(v74);
            v74 = 52845 * (v74 + v75) + 22719;
            v69 = (v69 + v75);
            ++v68;
          }

          while (v68 != 48);
          *(v70 + 12856) = v69;
          *(v92 + v46) = -1;
          goto LABEL_85;
        }
      }

      v51 = v95[42];
      goto LABEL_78;
    }

LABEL_85:
    v46 = v47;
    if (v47 != 37)
    {
      continue;
    }

    break;
  }

  memset(v95, 0, 20);
  if (((*(v83 + 1) - 4) > 2 || a2 - *v83 >= 1801) && Core_Get_BDS_BGTO(a2, v95) && ((*(v83 + 1) - 4) > 2 || *v95 > *v83))
  {
    *v83 = *v95;
    *(v83 + 4) = *&v95[16];
    if (a2 >= 1)
    {
      v76 = 0;
      LODWORD(v77) = 0;
      v78 = p_NV;
      v79 = (p_NV + 12920);
      *(p_NV + 12936) = *&v95[16];
      *v79 = *v95;
      v80 = 55665;
      do
      {
        v81 = *(v79 + v76) ^ BYTE1(v80);
        v80 = 52845 * (v80 + v81) + 22719;
        v77 = (v77 + v81);
        ++v76;
      }

      while (v76 != 24);
      *(v78 + 12912) = v77;
    }
  }
}

uint64_t Gnm27_04ComputeCS(unsigned __int8 *a1, unsigned int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    do
    {
      v4 = *a1++;
      v2 += v4;
      --v3;
    }

    while (v3);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CalcCS,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 68, "Gnm27_04ComputeCS", v2);
    LbsOsaTrace_WriteLog(0xBu, __str, v6, 5, 1);
  }

  return v2;
}

void *Gnm27_21HandleFixedMeRestoreNoAck(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_FIXED_ME_NV_RESTORE_TIMER\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm27_21HandleFixedMeRestoreNoAck");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm27_21HandleFixedMeRestoreNoAck", 517);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
    }

    return 0;
  }

  if (BYTE1(dword_2A19397C1) != 1)
  {
    return 0;
  }

  BYTE1(dword_2A19397C1) = 0;
  if (BYTE2(dword_2A19397C1) <= 2u)
  {
    Gnm27_23RestoreFixedMe(&dword_2A19397C1);
    return 0;
  }

  byte_2A19397C5 = 0;
  dword_2A19397C1 = 0;
  if (g_GnssHw - 1 >= 3)
  {
    snprintf(v9, 0x400uLL, "ASSERT: %s %d MWB : Beta table restore timeout after max attempts", "Gnm27_21HandleFixedMeRestoreNoAck", 145);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "Gnm27_21HandleFixedMeRestoreNoAck", v9);
      LbsOsaTrace_WriteLog(0xEu, __str, v8, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("Gnm27_21HandleFixedMeRestoreNoAck", "gnm27NvXOCalib.cpp", 146, "false && Beta table restore timeout after max attempts");
  }

  Gnm03_60BaseBandResetReq(4);
  return &a_GnmResetState;
}

void Gnm27_23RestoreFixedMe(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v30 = *MEMORY[0x29EDCA608];
  bzero(v24, 0x7FCuLL);
  v24[1] = -1;
  bzero(&v28[1], 0x7D2uLL);
  v23 = 0;
  if (!gnssOsa_getNvSize(4, &v23) || !v23)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(v29, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(v29, 0x40FuLL, "%10u %s%c %s: #%04hx ME Beta File\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm27_32ReadCalibData", 1572);
      LbsOsaTrace_WriteLog(0xBu, v29, v10, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(v29, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(v29, 0x40FuLL, "%10u %s%c %s: Populating default Beta Table\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm27_32ReadCalibData");
      LbsOsaTrace_WriteLog(0xBu, v29, v12, 2, 1);
    }

    v28[0] = 0;
    memcpy(&v28[1], &g_BetaC0, 0x1F4uLL);
    memcpy(&v28[501], &g_BetaC1, 0x1F4uLL);
    memcpy(&v28[1001], &g_BetaC2, 0x1F4uLL);
    memcpy(&v28[1501], &g_BetaC3, 0x1F4uLL);
    goto LABEL_15;
  }

  v28[0] = 0;
  Nv = gnssOsa_readNv(4, &v28[1], 0x7D2uLL);
  if (Nv == 2002)
  {
    if (!v28[0])
    {
      v3 = *&v28[2001];
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
      {
        bzero(v29, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(v29, 0x40FuLL, "%10u %s%c %s: ME RcvdPayloadCS,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 68, "Gnm27_05VerifyCS", v3);
        LbsOsaTrace_WriteLog(0xBu, v29, v5, 5, 1);
      }

      if (v3 != Gnm27_04ComputeCS(&v28[1], 0x7D0u))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
        {
          bzero(v29, 0x410uLL);
          v6 = mach_continuous_time();
          v7 = snprintf(v29, 0x40FuLL, "%10u %s%c %s: #%04hx ME ComputedPayloadCS\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm27_05VerifyCS", 771);
          v8 = 2;
LABEL_19:
          LbsOsaTrace_WriteLog(0xBu, v29, v7, v8, 1);
          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

LABEL_15:
    memcpy(__dst, v28, sizeof(__dst));
    v25 = 2000;
    memcpy(v26, &__dst[1], sizeof(v26));
    Gnm26_03SendXRestoreFixedMeCalib(v24);
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      goto LABEL_23;
    }

    bzero(v28, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(v28, 0x40FuLL, "%10u %s%c %s: Restoring ME Fixed data\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 73, "Gnm27_23RestoreFixedMe");
    v15 = 4;
    goto LABEL_22;
  }

  v16 = Nv;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(v29, 0x410uLL);
    v17 = mach_continuous_time();
    v7 = snprintf(v29, 0x40FuLL, "%10u %s%c %s: #%04hx ME Beta NV File ReqRead,%u,ActualRead,%zu\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 69, "Gnm27_32ReadCalibData", 1571, 2002, v16);
    v8 = 0;
    goto LABEL_19;
  }

LABEL_20:
  v25 = 0;
  Gnm26_03SendXRestoreFixedMeCalib(v24);
  if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
    goto LABEL_23;
  }

  bzero(v28, 0x410uLL);
  v18 = mach_continuous_time();
  v14 = snprintf(v28, 0x40FuLL, "%10u %s%c %s: Sending error\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 87, "Gnm27_23RestoreFixedMe");
  v15 = 2;
LABEL_22:
  LbsOsaTrace_WriteLog(0xBu, v28, v14, v15, 1);
LABEL_23:
  if (AgpsFsmStartTimer(8400134, 0xFAu))
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
    v20 = 0;
    if (IsLoggingAllowed)
    {
      bzero(v28, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(v28, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v21), "GNM", 87, "Gnm27_23RestoreFixedMe", 1544);
      LbsOsaTrace_WriteLog(0xBu, v28, v22, 2, 1);
      v20 = 0;
    }
  }

  else
  {
    v20 = 1;
  }

  v1[1] = v20;
  ++v1[2];
  *v1 = 0;
}

void *Gnm27_22HandleFixedMeRestoreAck(unsigned __int8 *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a1[1])
  {
    v2 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx WP Restore ACK SeqNum,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 87, "Gnm27_22HandleFixedMeRestoreAck", 770, a1[1]);
      LbsOsaTrace_WriteLog(0xBu, __str, v4, 2, 1);
      v2 = 0;
    }
  }

  else
  {
    v2 = Gnm25_18CheckRestoreStatus(*a1, "Fixed ME");
  }

  if (BYTE1(dword_2A19397C1) == 1)
  {
    if (AgpsFsmStopTimer(8400134) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm27_22HandleFixedMeRestoreAck", 1545);
      LbsOsaTrace_WriteLog(0xBu, __str, v6, 2, 1);
    }

    BYTE1(dword_2A19397C1) = 0;
  }

  if (v2)
  {
    byte_2A19397C5 = 0;
    dword_2A19397C1 = 0;
    Gnm10_29SendFwActivity(1, 1);
    HIWORD(dword_2A19397C6) = 0;
    LOBYTE(dword_2A19397C6) = 1;
    Gnm29_01RestoreVarMENv(0);
    return 0;
  }

  if (BYTE2(dword_2A19397C1) <= 2u)
  {
    Gnm27_23RestoreFixedMe(&dword_2A19397C1);
    return 0;
  }

  byte_2A19397C5 = 0;
  dword_2A19397C1 = 0;
  if (g_GnssHw - 1 >= 3)
  {
    snprintf(v10, 0x400uLL, "ASSERT: %s %d MWB : Beta table restore failed after max attempts", "Gnm27_22HandleFixedMeRestoreAck", 221);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "Gnm27_22HandleFixedMeRestoreAck", v10);
      LbsOsaTrace_WriteLog(0xEu, __str, v9, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("Gnm27_22HandleFixedMeRestoreAck", "gnm27NvXOCalib.cpp", 222, "false && Beta table restore failed after max attempts");
  }

  Gnm03_60BaseBandResetReq(5);
  return &a_GnmResetState;
}

uint64_t Gnm38_02HandleBMessages(unsigned __int8 *a1, unsigned __int8 *a2, uint8x8_t a3)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a2[1] != 66)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u\n", v11);
LABEL_37:
    LbsOsaTrace_WriteLog(0xBu, __str, v12, 2, 1);
    return 0;
  }

  memset(v21, 0, 13);
  v5 = g_HWStatus[0];
  if (g_HWStatus[0] == 1)
  {
    v6 = dword_2A1920A8C;
    v8 = HIDWORD(qword_2A1920A90) == 1 && qword_2A1920A90 == 2 && dword_2A1920A8C == 3431;
    if (!v8 && dword_2A1920A8C != 1107)
    {
      v9 = 0;
      v10 = 0;
LABEL_22:
      if (v6 == 2472)
      {
        goto LABEL_30;
      }

      v13 = g_GnssHw;
      goto LABEL_27;
    }
  }

  else
  {
    v13 = g_GnssHw;
    if (g_GnssHw != 3 && g_GnssHw != 0)
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_25;
    }
  }

  if (a2[2] != 80)
  {
LABEL_35:
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,MIDExtn,%u\n", v19, "GNM");
    goto LABEL_37;
  }

  Gnm37_27MapSbCfgPlcToGnmBright(v21, (a1 + 4));
  v9 = *a1;
  v10 = a1[1];
  if (v5)
  {
    v6 = dword_2A1920A8C;
    goto LABEL_22;
  }

  v13 = g_GnssHw;
LABEL_25:
  if (v13 == 1)
  {
    goto LABEL_30;
  }

  v6 = dword_2A1920A8C;
LABEL_27:
  v15 = v6 == 2473;
  v16 = v13 == 2;
  if (!v5)
  {
    v15 = v16;
  }

  if (!v15)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (a2[2] != 77)
  {
    goto LABEL_35;
  }

  Gnm37_28MapSbCfgPlcToGnmSunshine(v21, (a1 + 4), a3);
  v9 = *a1;
  v10 = a1[1];
LABEL_32:
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Rx zx%c%c%c,Status,%u,SeqNum,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 73, "Gnm38_02HandleBMessages", *a2, a2[1], a2[2], v9, v10);
    LbsOsaTrace_WriteLog(0xBu, __str, v18, 4, 1);
  }

  Gnm37_12HandleSbConfigRsp(v9, v10, v21);
  return 0;
}

double Gnm38_12SendSBCfg(int a1, uint64_t a2, uint64_t a3, double result)
{
  v26[255] = *MEMORY[0x29EDCA608];
  if (g_HWStatus[0] == 1)
  {
    v7 = qword_2A1920A8C;
    v9 = dword_2A1920A94 == 1 && HIDWORD(qword_2A1920A8C) == 2 && qword_2A1920A8C == 3431;
    if (!v9 && qword_2A1920A8C != 1107)
    {
      if (qword_2A1920A8C == 2472)
      {
        goto LABEL_28;
      }

      v10 = g_GnssHw;
      goto LABEL_24;
    }

LABEL_15:
    memset_s(&__s, 0x7FCuLL, 0, 0x7FCuLL);
    qmemcpy(v22, "BbP", sizeof(v22));
    __s = a2;
    v25 = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: zxBbP ReqType,%c,ReqId,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 73, "Gnm38_10SendSBCfgBright", a2, a1);
      LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
    }

    if (a2 != 71)
    {
      if (a2 == 83)
      {
        if (a3)
        {
          Gnm37_25MapSbCfgGnmToPlcBright(v26, a3);
LABEL_34:
          v19 = "SET SIDEBAND CFG REQ";
LABEL_36:
          Gnm07_06EncodeNSend(v22, &__s, v19);
          return result;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
        {
          goto LABEL_42;
        }

        return result;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        return result;
      }

LABEL_38:
      bzero(__str, 0x410uLL);
      v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RequestType:%u\n", v20);
LABEL_43:
      LbsOsaTrace_WriteLog(0xBu, __str, v21, 2, 1);
      return result;
    }

LABEL_35:
    v19 = "GET SIDEBAND CFG REQ";
    goto LABEL_36;
  }

  v10 = g_GnssHw;
  switch(g_GnssHw)
  {
    case 3:
      goto LABEL_15;
    case 1:
      goto LABEL_28;
    case 0:
      goto LABEL_15;
  }

  v7 = qword_2A1920A8C;
LABEL_24:
  v13 = v7 == 2473;
  v14 = v10 == 2;
  if (g_HWStatus[0])
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (!v15)
  {
    return result;
  }

LABEL_28:
  memset_s(&__s, 0x7FCuLL, 0, 0x7FCuLL);
  qmemcpy(v22, "BbM", sizeof(v22));
  __s = a2;
  v25 = a1;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: zxBbM ReqType,%c,ReqId,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 73, "Gnm38_11SendSBCfgSunshine", a2, a1);
    LbsOsaTrace_WriteLog(0xBu, __str, v18, 4, 1);
  }

  if (a2 == 71)
  {
    goto LABEL_35;
  }

  if (a2 != 83)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return result;
    }

    goto LABEL_38;
  }

  if (a3)
  {
    Gnm37_26MapSbCfgGnmToPlcSunshine(v26, a3, v16);
    goto LABEL_34;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
LABEL_42:
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SBConfig\n");
    goto LABEL_43;
  }

  return result;
}

uint64_t isMeasDataType(unsigned int a1)
{
  if (a1 >= 0xF)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Unknown e_FpeMeasType %d", "isMeasDataType", 86, v3, v4, a1);
    }

    LOBYTE(v2) = 0;
    g_FPE_AssertFlag = 1;
  }

  else
  {
    v2 = 0x47FFu >> a1;
  }

  return v2 & 1;
}

uint64_t ExtMeasExtract_Init(uint64_t a1)
{
  v2 = (a1 + 87720);
  v3 = a1 + 77672;
  v4 = a1 + 52688;
  bzero((a1 + 8), 0x15720uLL);
  v5 = 0;
  v6 = a1 + 25888;
  *(a1 + 56) = a1 + 288;
  *(a1 + 64) = a1 + 25888;
  *a1 = a1 + 288;
  *(a1 + 72) = 0x32000000020;
  *(a1 + 80) = 25600;
  do
  {
    *(a1 + 8 * v5 + 8) = a1 + 288;
    *(a1 + v5++ + 84) = 0;
  }

  while (v5 != 6);
  v7 = 0;
  *(a1 + 96) = v6;
  v8 = a1 + 51488;
  *(a1 + 152) = v6;
  *(a1 + 160) = a1 + 51488;
  *(a1 + 168) = 0x32000000020;
  *(a1 + 176) = 25600;
  do
  {
    *(a1 + 8 * v7 + 104) = v6;
    *(a1 + v7++ + 180) = 0;
  }

  while (v7 != 6);
  v9 = 0;
  *(a1 + 192) = v8;
  *(a1 + 248) = v8;
  *(a1 + 256) = v4;
  *(a1 + 264) = 0x3200000018;
  *(a1 + 272) = 1200;
  do
  {
    *(a1 + 8 * v9 + 200) = v8;
    *(a1 + v9++ + 276) = 0;
  }

  while (v9 != 6);
  v10 = 0;
  *(v4 + 56) = a1 + 52784;
  *(v4 + 64) = v3;
  *v4 = a1 + 52784;
  *(v4 + 72) = 0x300002068;
  *(v4 + 80) = 24888;
  v11 = a1 + 52772;
  do
  {
    *(v11 + 8 * v10 - 76) = a1 + 52784;
    *(v11 + v10++) = 0;
  }

  while (v10 != 6);
  v12 = 0;
  v13 = a1 + 78824;
  *(v3 + 56) = a1 + 78440;
  *(v3 + 64) = a1 + 78824;
  *v3 = a1 + 78440;
  *(v3 + 72) = 0x200000000CLL;
  *(v3 + 80) = 384;
  v14 = a1 + 77756;
  do
  {
    *(v14 + 8 * v12 - 76) = a1 + 78440;
    *(v14 + v12++) = 0;
  }

  while (v12 != 6);
  *(v3 + 96) = v13;
  v15 = a1 + 79208;
  *(v3 + 152) = v13;
  *(v3 + 160) = a1 + 79208;
  *(v3 + 168) = 0x200000000CLL;
  *(v3 + 176) = 384;
  v16 = 77852;
  for (i = 77776; i != 77824; i += 8)
  {
    *(a1 + i) = v13;
    *(a1 + v16++) = 0;
  }

  v18 = 0;
  *(v3 + 192) = v15;
  v19 = a1 + 79592;
  *(v3 + 248) = v15;
  *(v3 + 256) = a1 + 79592;
  *(v3 + 264) = 0x200000000CLL;
  *(v3 + 272) = 384;
  v20 = a1 + 77948;
  do
  {
    *(v20 + 8 * v18 - 76) = v15;
    *(v20 + v18++) = 0;
  }

  while (v18 != 6);
  v21 = 0;
  v22 = a1 + 85480;
  *(v3 + 632) = a1 + 85480;
  v23 = a1 + 85608;
  *(v3 + 640) = a1 + 85608;
  *(v3 + 576) = a1 + 85480;
  *(v3 + 648) = 0x2000000004;
  *(v3 + 656) = 128;
  v24 = a1 + 78332;
  do
  {
    *(v24 + 8 * v21 - 76) = v22;
    *(v24 + v21++) = 0;
  }

  while (v21 != 6);
  v25 = 0;
  v26 = a1 + 80616;
  *(v3 + 344) = v19;
  *(v3 + 352) = a1 + 80616;
  *(v3 + 288) = v19;
  *(v3 + 360) = 0x2000000020;
  *(v3 + 368) = 1024;
  v27 = a1 + 78044;
  do
  {
    *(v27 + 8 * v25 - 76) = v19;
    *(v27 + v25++) = 0;
  }

  while (v25 != 6);
  v28 = 0;
  v29 = a1 + 82920;
  *(v3 + 440) = v26;
  *(v3 + 448) = a1 + 82920;
  *(v3 + 384) = v26;
  *(v3 + 456) = 0x2000000048;
  *(v3 + 464) = 2304;
  v30 = a1 + 78140;
  do
  {
    *(v30 + 8 * v28 - 76) = v26;
    *(v30 + v28++) = 0;
  }

  while (v28 != 6);
  v31 = 0;
  *(v3 + 536) = v29;
  *(v3 + 544) = v22;
  *(v3 + 480) = v29;
  *(v3 + 552) = 0x2000000050;
  *(v3 + 560) = 2560;
  v32 = a1 + 78236;
  do
  {
    *(v32 + 8 * v31 - 76) = v29;
    *(v32 + v31++) = 0;
  }

  while (v31 != 6);
  v33 = 0;
  *(v3 + 728) = v23;
  *(v3 + 736) = a1 + 87656;
  *(v3 + 672) = v23;
  *(v3 + 744) = 0x2000000040;
  *(v3 + 752) = 2048;
  v34 = a1 + 78428;
  do
  {
    *(v34 + 8 * v33 - 76) = v23;
    *(v34 + v33++) = 0;
  }

  while (v33 != 6);
  *v2 = a1;
  v2[1] = a1 + 96;
  v2[2] = a1 + 192;
  v2[3] = v3;
  v2[4] = v3 + 192;
  v2[5] = v3 + 576;
  v2[6] = v3 + 96;
  v2[7] = v3 + 288;
  v2[8] = v3 + 384;
  v2[9] = v3 + 480;
  v2[14] = v3 + 672;
  v2[10] = v4;
  return 1;
}

void *ExtMeasExtract_extractData(uint64_t a1, unsigned int a2, const void *a3)
{
  if ((isMeasDataType(a2) & 1) == 0)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f meas type not in range", "ExtMeasExtract_extractData", 208, v6, v7);
    }

    g_FPE_AssertFlag = 1;
  }

  v8 = *(a1 + 8 * a2 + 87720);

  return Cyc_Record_Write(v8, a3);
}

uint64_t ExtMeasExtract_FlushMemory(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = isMeasDataType(a3);
  if ((result & 1) == 0)
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

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f meas type not in range", "ExtMeasExtract_FlushMemory", 247, v7, v8);
    }

    g_FPE_AssertFlag = 1;
  }

  v9 = *(a1 + 8 * a3 + 87720);
  v9[a2 + 1] = *v9;
  *(v9 + a2 + 84) = 0;
  return result;
}

void NK_Set_TTFF(uint64_t a1, int *a2)
{
  v4 = a2 + 5748;
  v5 = 0.0;
  for (i = 3033; i != 3036; ++i)
  {
    v5 = v5 + *&a2[2 * i];
  }

  if (*(a2 + 25171) == 1 && v5 < 40000.0 && a2[6341] <= 0x13 && *(a1 + 11028) >= 2u)
  {
    *(a2 + 960) = 1;
    if (!*(a1 + 11048))
    {
      *(a1 + 11048) = *a2 - *(a1 + 26996);
    }
  }

  if (!*(a1 + 11048))
  {
    *(a2 + 25165) = 0;
    if (*(a1 + 232) == 1 && *(a2 + 3044) < 30000.0 && *(a2 + 3045) < 30000.0 && *(a2 + 3046) < 30000.0)
    {
      *(a2 + 25165) = 1;
    }

    v7 = 100000;
    if (!*(a2 + 960))
    {
      *(a1 + 128) = 1;
      *(a1 + 132) = 93;
      *(a1 + 152) = -1;
      goto LABEL_39;
    }

    if (a2[6206] || a2[3] > 8 || *(a2 + 24778) >= 2u && v5 <= 3600000000.0)
    {
      v8 = *v4;
      if (v8 == 1 && *(a2 + 2883) > 900000000.0 && (*(a2 + 24778) < 2u || a2[6341] > 0x64))
      {
        *(a1 + 128) = 1;
        *(a1 + 132) = 93;
        *(a1 + 152) = -1;
LABEL_33:
        v9 = *(a2 + 2883);
        if (v9 >= 4.8e10 || v9 <= 900000000.0)
        {
          v7 = 100000;
        }

        else
        {
          v7 = 600000;
        }

        goto LABEL_39;
      }

      if (a2[6341] <= 0x186A0 && a2[3] >= 2 && (a2[242] || (*(a1 + 233) != 1 || *(a1 + 152) <= 2) && (*(a2 + 3087) >= 90000.0 || *(a2 + 24776) || a2[6201] == 1)))
      {
        if (*v4)
        {
          goto LABEL_33;
        }

LABEL_39:
        v11 = a2[6341];
        if (v11 > v7)
        {
          *(a2 + 960) = 0;
          *(a1 + 233) = 1;
          memset_pattern16(a2 + 6056, &unk_299760470, 0x58uLL);
          memset_pattern16(a2 + 6078, &unk_299760480, 0x58uLL);
          v5 = 1.00979801e14;
        }

        if (v11 >= 0x3E9 && (*(a1 + 128) & 1) == 0)
        {
          *(a1 + 7) = 1;
        }

        goto LABEL_44;
      }
    }

    else
    {
      LOBYTE(v8) = *v4;
    }

    *(a1 + 128) = 1;
    *(a1 + 132) = 93;
    *(a1 + 152) = -1;
    if (v8)
    {
      goto LABEL_33;
    }

    goto LABEL_39;
  }

LABEL_44:
  if (v5 <= 3600000000.0)
  {
    if (*(a1 + 11028) && *(v4 + 1786) >= 3u)
    {
      v12 = 0;
      v13 = *a2;
      do
      {
        if (v13 - *(a1 + 6120 + 4 * v12) >= 180001)
        {
          *(a1 + 6696 + v12) = 0;
        }

        ++v12;
      }

      while (v12 != 48);
    }
  }

  else
  {
    *(a1 + 6712) = 0u;
    *(a1 + 6728) = 0u;
    *(a1 + 6696) = 0u;
  }
}

uint64_t DD_Delete_Bad_GPS_Data(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 0;
  v5 = 0;
  v6 = a4 + 13;
  v7 = a4 + 877;
  v8 = (a1 + 4);
  v9 = 1984;
  result = 0xFFFFFFFFLL;
  do
  {
    v11 = a4[4];
    if (*(v11 + v5) == 1)
    {
      *(v8 - 1) = 16777472;
      *v8 = 256;
      *(a2 + 2 * v5) = 256;
      *(v11 + v5) = 0;
      *(a4[2] + v5) = 0;
      *(a4[6] + v5) = 0;
      *(v6 + 92) = 0uLL;
      v6[4] = 0uLL;
      v6[5] = 0uLL;
      v6[2] = 0uLL;
      v6[3] = 0uLL;
      *v6 = 0uLL;
      v6[1] = 0uLL;
      *(a4[12] + v5) = 0;
      *(a4[9] + v5) = 1;
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

    if (*(a4[5] + v5) == 1)
    {
      *(a3 + v5) = -1;
      *(a4[5] + v5) = 0;
      *(a4[3] + v5) = 0;
      *(a4[8] + v5) = 0;
      *(v7 + 28) = 0uLL;
      *v7 = 0uLL;
      v7[1] = 0uLL;
      *(a4[12] + v5) = 0;
      v13 = p_NV + v4;
      *(v13 + 184) = 0xFFFFFFFFLL;
      *(v13 + 192) = 0uLL;
      *(v13 + 208) = 0uLL;
      *(v13 + 220) = 0uLL;
    }

    ++v5;
    v4 += 56;
    v9 += 120;
    v7 = (v7 + 44);
    v6 = (v6 + 108);
    v8 += 3;
  }

  while (v5 != 32);
  return result;
}

uint64_t DD_Delete_Inhib_GPS_Data(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0;
  v6 = 0;
  v7 = a5 + 877;
  v8 = (a2 + 4);
  v9 = 1984;
  v10 = a5;
  do
  {
    if (*(result + v6) == 1)
    {
      *(v8 - 1) = 16777472;
      *v8 = 256;
      *(a3 + 2 * v6) = 256;
      *(a5[4] + v6) = 0;
      *(a5[2] + v6) = 0;
      *(a5[6] + v6) = 0;
      *(v10 + 196) = 0uLL;
      *(v10 + 23) = 0uLL;
      *(v10 + 21) = 0uLL;
      *(v10 + 19) = 0uLL;
      *(v10 + 17) = 0uLL;
      *(v10 + 15) = 0uLL;
      *(v10 + 13) = 0uLL;
      *(a5[7] + v6) = 0;
      *(v10 + 3652) = 0uLL;
      *(v10 + 453) = 0uLL;
      *(v10 + 455) = 0uLL;
      *(v10 + 449) = 0uLL;
      *(v10 + 451) = 0uLL;
      *(v10 + 445) = 0uLL;
      *(v10 + 447) = 0uLL;
      *(a5[12] + v6) = 0;
      *(a5[9] + v6) = 1;
      v11 = (p_NV + v9);
      *(v11 - 1) = 0xFFFFFFFFLL;
      *v11 = 0uLL;
      v11[1] = 0uLL;
      v11[2] = 0uLL;
      v11[3] = 0uLL;
      v11[4] = 0uLL;
      v11[5] = 0uLL;
      *(v11 + 92) = 0uLL;
      *(a4 + v6) = -1;
      *(a5[5] + v6) = 0;
      *(a5[3] + v6) = 0;
      *(a5[8] + v6) = 0;
      *(v7 + 28) = 0uLL;
      *v7 = 0uLL;
      v7[1] = 0uLL;
      v12 = p_NV + v5;
      *(v12 + 184) = 0xFFFFFFFFLL;
      *(v12 + 192) = 0uLL;
      *(v12 + 208) = 0uLL;
      *(v12 + 220) = 0uLL;
    }

    ++v6;
    v9 += 120;
    v5 += 56;
    v7 = (v7 + 44);
    v10 = (v10 + 108);
    v8 += 3;
  }

  while (v6 != 32);
  return result;
}

uint64_t DD_Check_Age_GPS_Data(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result < 1)
  {
    return result;
  }

  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v35 = (result + 900);
  if (result <= 0x15180)
  {
    v11 = 86400;
  }

  else
  {
    v11 = result;
  }

  v12 = v11 - 86400;
  v13 = *(a6 + 48);
  v14 = (a6 + 104);
  v34 = (result - a2 / 0x3E8) & ~((result - a2 / 0x3E8) >> 31);
  do
  {
    if (*(v13 + v8) != 1)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    if (*v14 < v12 && v15 >= 1)
    {
LABEL_15:
      v10 = 1;
      *(*(a6 + 32) + v8) = 1;
      goto LABEL_17;
    }

    if (v15)
    {
      if (v15 > v35)
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
      *v14 = v34;
    }

LABEL_17:
    ++v8;
    v14 += 27;
  }

  while (v8 != 32);
  if (v9 >= 1)
  {
    EvLog_nd("DD_Check_Age_GPS_Data: Deleting EPH since in the future", 1, a3, v9);
    if (*(a6 + 39302) == 1)
    {
      EvLog("DD_Check_Age_GPS_Data: Skipping since SkipFutureCheck set");
    }
  }

  v17 = 0;
  v18 = 0;
  if (v7 <= 15724800)
  {
    v19 = 15724800;
  }

  else
  {
    v19 = v7;
  }

  v20 = v19 - 15724800;
  v21 = 7016;
  do
  {
    if (*(*(a6 + 64) + v17) == 1)
    {
      v22 = *(a6 + v21);
      if (v22 >= v20 || v22 < 1)
      {
        if (v22)
        {
          if (v22 > v35)
          {
            v18 = (v18 + 1);
            EvLog_v("DD_Check_Age_GPS_Data: Future almanac deleted SV %d age %d thresh %d", v17 + 1, (v7 - v22) / 604800, 0);
            if ((*(a6 + 39302) & 1) == 0)
            {
              v10 = 1;
              *(*(a6 + 40) + v17) = 1;
            }
          }
        }

        else
        {
          *(a6 + v21) = v34;
        }
      }

      else
      {
        v10 = 1;
        *(*(a6 + 40) + v17) = 1;
        EvLog_v("DD_Check_Age_GPS_Data: Old almanac deleted SV %d age %d thresh %d", v17 + 1, (v7 - v22) / 604800, (v7 - v20) / 604800);
      }
    }

    ++v17;
    v21 += 44;
  }

  while (v17 != 32);
  if (v18 >= 1)
  {
    EvLog_nd("DD_Check_Age_GPS_Data: Deleting ALM since in the future", 1, a3, v18);
    if (*(a6 + 39302) == 1)
    {
      EvLog("DD_Check_Age_GPS_Data: Skipping since SkipFutureCheck set");
    }
  }

  if (v7 <= 2419200)
  {
    v24 = 2419200;
  }

  else
  {
    v24 = v7;
  }

  v25 = v24 - 2419200;
  if (*(a6 + 8428))
  {
    v26 = (a6 + 8424);
    v27 = *(a6 + 8424);
    if (v27 >= v25 || v27 < 1)
    {
      if (v27)
      {
        if (v27 > v35)
        {
          EvLog_nd("DD_Check_Age_GPS_Data: Deleting Iono Model since in the future", 2, a3, *(a6 + 8424), v35);
          if ((*(a6 + 39302) & 1) == 0)
          {
            goto LABEL_53;
          }

          EvLog("DD_Check_Age_GPS_Data: Skipping since SkipFutureCheck set");
        }
      }

      else
      {
        *v26 = v34;
      }
    }

    else
    {
LABEL_53:
      *v26 = 0;
      *(a6 + 8432) = 0;
    }
  }

  if (*(a6 + 8444))
  {
    v29 = (a6 + 8440);
    v30 = *(a6 + 8440);
    if (v30 >= v25 || v30 < 1)
    {
      if (v30)
      {
        if (v30 > v35)
        {
          EvLog_nd("DD_Check_Age_GPS_Data: Deleting UTC since in the future", 2, a3, *(a6 + 8440), v35);
          if ((*(a6 + 39302) & 1) == 0)
          {
            goto LABEL_58;
          }

          EvLog("DD_Check_Age_GPS_Data: Skipping since SkipFutureCheck set");
        }
      }

      else
      {
        *v29 = v34;
      }
    }

    else
    {
LABEL_58:
      *v29 = 0;
      *(a6 + 8448) = 0;
      *(a6 + 8456) = 0;
    }
  }

  result = a3;
  if (v10)
  {

    return DD_Delete_Bad_GPS_Data(a3, a4, a5, a6);
  }

  return result;
}

void DD_Proc_GPS_Data(unsigned __int8 *a1, uint64_t a2, _DWORD *a3, uint64_t a4, int *a5, uint64_t a6)
{
  v152 = *MEMORY[0x29EDCA608];
  v129 = 0;
  v10 = *(a2 + 8);
  v11 = *(a6 + 104 + 108 * v10 + 104);
  if (!v11)
  {
    *(*(a6 + 96) + v10) = 0;
  }

  v12 = *(a2 + 56);
  if ((v12 & 1) == 0 || *(a2 + 18) << 16 != 9109504)
  {
    return;
  }

  if ((v12 & 2) == 0)
  {
LABEL_6:
    *(a2 + 12) = 0;
    return;
  }

  v13 = *(a2 + 20);
  v14 = (v13 >> 2) & 7;
  *(a2 + 12) = (v13 >> 2) & 7;
  if ((v14 - 6) < 0xFFFFFFFB)
  {
    return;
  }

  v124 = (a2 + 16);
  v121 = a6 + 104;
  v128 = 0;
  if (!DD_Predict_Subframe_Number(a4, &v128) || v14 == v128 || *a3 || (*(*(a6 + 48) + v10) & 1) != 0)
  {
    if ((v13 & 0x18) == 0x10)
    {
      if ((~v12 & 0x3FE) != 0)
      {
        return;
      }

      if (*(a4 + 5) != 1)
      {
        return;
      }

      v15 = *(a4 + 16);
      if (v15 < 1025)
      {
        return;
      }

      v16 = *(a2 + 24);
      v17 = HIWORD(v16) & 0x3F;
      *(a2 + 13) = BYTE2(v16) & 0x3F;
      v18 = (v16 >> 22) & 3;
      *(a2 + 14) = v18;
      if (v18 == 1)
      {
        v19 = (v17 - 1);
        if (v19 > 0x1F)
        {
LABEL_100:
          v85 = v124;
          v84 = a1;
          if (v17 == 51)
          {
            DD_Proc_GPS_Health_Subframe(v124, *a5, a1, (a1 + 224), (a1 + 192), a6);
            v85 = v124;
            v84 = a1;
            *(a6 + 8464) = 0;
            *&v86 = 0x101010101010101;
            *(&v86 + 1) = 0x101010101010101;
            *(a6 + 8466) = v86;
            *(a6 + 8482) = v86;
            *(a1 + 1125) = 0u;
            *(a1 + 1124) = 0u;
            *&v87 = -1;
            *(&v87 + 1) = -1;
            *(a1 + 1126) = v87;
            *(a1 + 1127) = v87;
            v88 = *(a6 + 96);
            *v88 = 0u;
            v88[1] = 0u;
            v17 = *(a2 + 13);
          }

          if (v17 == 56)
          {
            DD_Proc_GPS_ION_UTC_Subframe(*(a2 + 8), v85, *a5, v15, *(a6 + 96), a6);
            v85 = v124;
            v84 = a1;
            v17 = *(a2 + 13);
          }

          if (v17 != 63)
          {
            return;
          }

          DD_Proc_GPS_AS_SV_Config_Subframe(v85, *a5, v84 + 17984, v84, (v84 + 224), (v84 + 192), a6);
          v89 = *a6;
          v90 = *(a2 + 8);
          if (*(*a6 + v90) != 1)
          {
            return;
          }

          v91 = (a6 + 37344);
          v92 = a1 + 18016;
          v93 = (a6 + 8466);
          v94 = 32;
          while (1)
          {
            v95 = *(v92 - 32);
            if ((v95 & 7u) - 5 >= 0xFFFFFFFC)
            {
              v96 = *v92;
              if (v96 >= 2)
              {
                if (*v89 == 1 && *v91 == 1)
                {
                  *v93 = (v95 & 8) != 0;
                }

                goto LABEL_112;
              }
            }

            else
            {
              *(*(a6 + 96) + v90) = 1;
              v96 = *v92;
              if (v96 > 1)
              {
                goto LABEL_112;
              }
            }

            *v93 = v96;
LABEL_112:
            ++v93;
            ++v91;
            v89 = (v89 + 1);
            ++v92;
            if (!--v94)
            {
              return;
            }
          }
        }

        if (Decode_GPS_Check_Alm_TOA(v124, *(*a6 + v19), v15, &a1[v19 + 192], (a2 + 10), &v129))
        {
          DD_Proc_GPS_Alm_Subframe(*(a2 + 13), *(a2 + 10), v124, *a5, a1, (a1 + 224), a6);
        }

        else if (v129)
        {
          v70 = *(a2 + 13);
          v71 = a6 + 44 * (v70 - 1);
          v72 = *(v71 + 7016);
          v73 = *a5;
          *(v71 + 7016) = *a5;
          if (!v72 && v73 >= 1)
          {
            v74 = 0;
            LODWORD(v75) = 0;
            v76 = (v71 + 7016);
            v77 = p_NV;
            v78 = p_NV + 56 * (v70 - 1);
            v79 = *v76;
            v80 = v76[1];
            *(v78 + 220) = *(v76 + 28);
            *(v78 + 192) = v79;
            *(v78 + 208) = v80;
            v81 = v77 + 56 * v70 + 136;
            v82 = 55665;
            do
            {
              v83 = *(v81 + v74) ^ BYTE1(v82);
              v82 = 52845 * (v82 + v83) + 22719;
              v75 = (v75 + v83);
              ++v74;
            }

            while (v74 != 48);
            *(v78 + 184) = v75;
          }
        }
      }

      v17 = *(a2 + 13);
      goto LABEL_100;
    }
  }

  else if ((v14 != 1 || v128 != 2) && (v14 != 2 || v128 != 3) && (v14 != 3 || v128 != 4))
  {
    EvCrt_v("DD_Proc_GPS_Data:  SV %2d Subframe Number Error - decoded %d  expected %d", v10 + 1, (v13 >> 2) & 7, v128);
    goto LABEL_6;
  }

  *(a2 + 13) = 0;
  v20 = *a6;
  v35 = v11 == 0xFFFFFF;
  v21 = v11 != 0xFFFFFF;
  v122 = a2;
  v116 = a5;
  v119 = a6;
  if (v35 || *(v20 + v10) == 1 && *(*(a6 + 48) + v10) == 1 && (DD_Proc_Eph_Bit_Validation(v10, (v13 >> 2) & 7, v124, v12, a6), v10 = *(a2 + 8), v20 = *a6, *(v121 + 108 * v10 + 104) == 0xFFFFFF))
  {
    v114 = v21;
    if (*(v20 + v10) == 1 && (*(a2 + 56) & 2) != 0)
    {
      a1[v10 + 18016] = (*(a2 + 20) & 0x20) != 0;
      LODWORD(v10) = *(a2 + 8);
      v20 = *a6;
    }
  }

  else
  {
    v114 = 0;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = *(v122 + 12);
  v28 = *(v122 + 56);
  v120 = v10;
  v115 = *(v20 + v10);
  v117 = a1 + 288;
  v29 = v27 - 1;
  v118 = a1 + 3360;
  v30 = &a1[6 * v10 + 3360];
  v126 = v10 + 1;
  v127 = v27;
  v31 = &a1[96 * v10 + 256 + 32 * v27];
  v32 = v122 + 24;
  do
  {
    v33 = 1 << (v22 + 2);
    v34 = (v33 & *&v30[2 * v29]);
    if (v34)
    {
      ++v23;
    }

    if ((v33 & v28) != 0)
    {
      ++v24;
      v35 = v34 == 0;
    }

    else
    {
      v35 = 1;
    }

    if (!v35)
    {
      ++v25;
      v36 = *&v31[4 * v22];
      if (*(v32 + 4 * v22) != v36)
      {
        v37 = v26 + 1;
        v38 = v29;
        v39 = v28;
        EvLog_v("DD_Proc_GPS_Eph_Subframe: SV %d SF %d Diff Wd %d 0x%x 0x%x", v126, v127, v22 + 2, *(v32 + 4 * v22), v36);
        v28 = v39;
        v26 = v37;
        v29 = v38;
      }
    }

    ++v22;
  }

  while (v22 != 8);
  LODWORD(v40) = v120;
  if (v26 >= 1)
  {
    if (v26 == 1 && v25 >= 4 && (v127 == 1 && (v28 & 0x3C4) != 0x3C4 || v127 >= 2 && (v28 & 0x3FC) != 0x3FC))
    {
      return;
    }

    v23 = 0;
    v41 = 2 * v127 - 2;
    *&v118[6 * v120 + v41] = 0;
    *&a1[6 * v120 + v41] = 256;
  }

  if (v25 - v26 <= 1)
  {
    if (v24 >= v23)
    {
      *&v118[6 * v120 + 2 * v29] = v28;
      v52 = *(v122 + 40);
      v53 = &v117[96 * v120 + 32 * v29];
      *v53 = *(v122 + 24);
      *(v53 + 1) = v52;
    }
  }

  else
  {
    v42 = 0;
    v43 = &v118[6 * v120 + 2 * v127];
    v46 = *(v43 - 2);
    v44 = (v43 - 2);
    v45 = v46;
    v47 = v122 + 24;
    v48 = &a1[96 * v120 + 256 + 32 * v127];
    do
    {
      v49 = 1 << (v42 + 2);
      v50 = v49 & v45;
      if ((v49 & v28) != 0 && v50 == 0)
      {
        *&v48[4 * v42] = *(v47 + 4 * v42);
        v45 |= (1 << (v42 + 2));
        *v44 = v45;
      }

      else if ((v49 & v28) == 0 && v50)
      {
        *(v47 + 4 * v42) = *&v48[4 * v42];
        LODWORD(v28) = v28 | (1 << (v42 + 2));
      }

      ++v42;
    }

    while (v42 != 8);
  }

  v54 = a1;
  if ((v127 - 1) <= 2)
  {
    v55 = 0x90207u >> (8 * ((v127 - 1) & 0x1F));
    if ((v28 >> (v55 & 0xF)))
    {
      v56 = BYTE2(v124[v55 & 0xF]);
      if ((v127 != 1 || (v28 & 0x3C4) == 0x3C4) && (v127 < 2 || (v28 & 0x3FC) == 0x3FC))
      {
        v57 = a1 + 224;
        v58 = &a1[6 * v120];
        v59 = *&v58[2 * v29];
        if (v56 != v59)
        {
          *&v58[2 * v29] = v56;
        }

        if (v56 != *&v57[2 * v120])
        {
          for (i = 0; i != 6; i += 2)
          {
            if (2 * v29 != i)
            {
              *&a1[6 * v120 + 3360 + i] = 0;
            }
          }

          *&v57[2 * v120] = v56;
          v54 = a1;
        }

        v61 = &v118[6 * v120];
        v62 = *v61;
        if ((~v62 & 0x3C4) != 0)
        {
          goto LABEL_122;
        }

        if ((~*(v61 + 1) & 0x3FC) != 0)
        {
          goto LABEL_121;
        }

        if ((~*(v61 + 2) & 0x3FC) != 0)
        {
          goto LABEL_121;
        }

        v63 = *v58;
        if (v63 != *(v58 + 1))
        {
          goto LABEL_121;
        }

        v54 = a1;
        if (v63 != *(v58 + 2))
        {
LABEL_122:
          if ((~v62 & 0x3C4) != 0)
          {
            return;
          }

          if ((~*(v61 + 1) & 0x3FC) != 0)
          {
            return;
          }

          if ((~*(v61 + 2) & 0x3FC) != 0)
          {
            return;
          }

          v97 = *v58;
          if (v97 != *(v58 + 1) || v97 != *(v58 + 2))
          {
            return;
          }

          v98 = v54 + 3552;
          v99 = *&v117[96 * v40];
          v100 = 0xE4FE7F3uLL >> ((v99 >> 2) & 0x1F);
          if (v56 == v59 && *(v121 + 108 * v120 + 104) == 0xFFFFFF && ((v115 & 1) != 0 || (v100 & 1) == 0))
          {
            v101 = v98[v120] == 0;
          }

          else
          {
            v101 = 0;
            v98[v120] = 1;
          }

          *v61 = 0;
          *(v61 + 2) = 0;
          if ((v100 & 1) == 0 || !v115)
          {
            goto LABEL_148;
          }

          v102 = (v99 >> 14) & 0x3FF;
          if (*(a4 + 5))
          {
            do
            {
              v103 = v102;
              v102 += 1024;
            }

            while (*(a4 + 16) - 512 > v103);
            if (*(a4 + 16) == v103)
            {
              goto LABEL_148;
            }

            if (*a4 < 3)
            {
              goto LABEL_148;
            }

            v104 = *(a4 + 24);
            if ((v104 - 32) >= 0x93A41)
            {
              goto LABEL_148;
            }
          }

          else
          {
            v105 = *(*(p_api + 72) + 1026);
            if (v102 > v105)
            {
              LOWORD(v105) = v102;
            }

            v103 = ((v102 ^ 0x3FF) + v105) & 0xFC00 | v102;
            v104 = *(a4 + 24);
          }

          v106 = v103;
          if (DD_Submit_WeekNum((v120 + 1), v103, v119, v117, a4))
          {
            v107 = v104 + 604800 * v106;
            if (*a4 <= 2)
            {
              v107 = 0;
            }

            v108 = v116;
            *v116 = v107;
            v110 = v121;
            v109 = v122;
            if (!v101)
            {
              return;
            }

LABEL_150:
            v111 = *(v109 + 8);
            v112 = v110 + 108 * v111;
            v113 = *v112 != 0;
            *v112 = v107;
            *(v112 + 4) = 4;
            if ((v113 & ~v114 & 1) == 0 && *v108 >= 1)
            {
              *(*(v119 + 72) + v111) = 1;
              Core_Save_GPS_Eph((v111 + 1), 0, v112);
            }

            return;
          }

LABEL_148:
          v110 = v121;
          v109 = v122;
          v108 = v116;
          if (!v101)
          {
            return;
          }

          v107 = *v116;
          goto LABEL_150;
        }

        v64 = &v117[96 * v120];
        v65 = *(v64 + 3);
        v147 = *(v64 + 2);
        v148 = v65;
        v66 = *(v64 + 5);
        v149 = *(v64 + 4);
        v150 = v66;
        v67 = *(v64 + 1);
        v145 = *v64;
        v151 = 0;
        v144[0] = *v116;
        v144[1] = 4;
        v146 = v67;
        memset(v130, 0, sizeof(v130));
        v131 = 0;
        v132 = 0u;
        v133 = 0u;
        v134 = 0u;
        v135 = 0u;
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        v141 = 0u;
        v142 = 0u;
        v143 = 0;
        Get_GPS_Kep_Ephemeris(1, v120 + 1, v144, v130);
        v68 = Kep_Check_Ephemeris(*v116 / 604800, *v116 % 604800, v130);
        v69 = v68;
        if (!ST_Check_Eph_Kep_Err("DD_Proc_GPS_Eph_Subframe:", v68, v130))
        {
          if ((v69 & 0xC) != 0)
          {
            *v61 = 0;
          }

          if ((v69 & 0x3F0) != 0)
          {
            *(v61 + 1) = 0;
          }

          if ((v69 & 0xC00) != 0)
          {
            *(v61 + 2) = 0;
            v40 = v120;
LABEL_119:
            *(*(v119 + 96) + v40) = 1;
            goto LABEL_120;
          }

          v40 = v120;
          if ((v69 & 0x3FC) != 0)
          {
            goto LABEL_119;
          }
        }

LABEL_120:
        v62 = *v61;
LABEL_121:
        v54 = a1;
        goto LABEL_122;
      }
    }
  }
}

BOOL DD_Predict_Subframe_Number(uint64_t a1, _BYTE *a2)
{
  if (*a1 < 4)
  {
    LOBYTE(v3) = -1;
  }

  else
  {
    v2 = ((*(a1 + 24) + 0.5) % 30) / 6.0 + 4.5;
    v3 = v2 - 5 * ((((103 * v2) >> 15) & 1) + ((103 * v2) >> 9)) + 1;
  }

  result = *a1 > 3;
  *a2 = v3;
  return result;
}

uint64_t DD_Proc_Eph_Bit_Validation(uint64_t result, int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = a5 + 108 * result;
    v7 = v6 + 104;
    v8 = v6 + 104 + 4 * (8 * a2 - 8) + 8;
    v9 = *(v6 + 208);
    do
    {
      v10 = 1 << (8 * a2 - 8 + v5);
      if ((v9 & v10) == 0 && ((a4 >> v5) & 1) != 0 && *(a3 + 8 + 4 * v5) == *(v8 + 4 * v5))
      {
        v9 |= v10;
        *(v7 + 104) = v9;
      }

      ++v5;
    }

    while (v5 != 8);
  }

  return result;
}

BOOL DD_Proc_GPS_Alm_Subframe(unsigned int a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v51 = *MEMORY[0x29EDCA608];
  v12 = ((*(a3 + 16) & 0xE0) == 0) & (0xE4FE7F3uLL >> *(a3 + 16));
  v13 = (a1 - 1);
  v14 = *(*a7 + v13);
  if (v14 == 1 && v12 == 0)
  {
    goto LABEL_9;
  }

  if (((v14 == 0) & v12) != 1)
  {
    goto LABEL_13;
  }

  v16 = a7[6];
  if (*(v16 + v13) == 1)
  {
    v17 = a7 + 108 * (a1 - 1);
    v18 = *(v17 + 26);
    if (((0xE4FE7F3uLL >> ((*(v17 + 28) >> 2) & 0x1F)) & 1) == 0 && v18 + 3600 > a4)
    {
LABEL_9:
      LOBYTE(v12) = 0;
      goto LABEL_13;
    }

    if (v18 + 100 < a4)
    {
      *(a7[2] + v13) = 0;
      *(v16 + v13) = 0;
      v19 = a5 + 6 * (a1 - 1);
      *v19 = 16777472;
      *(v19 + 4) = 256;
      *(a6 + 2 * v13) = 256;
    }
  }

  LOBYTE(v12) = 1;
LABEL_13:
  v48 = 0;
  v47 = a4;
  v49 = *(a3 + 8);
  v50 = *(a3 + 24);
  v42 = 0;
  memset(v41, 0, 15);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  Get_GPS_Kep_Almanac(&v47, v41);
  v20 = Kep_Check_Almanac(a4 / 604800, v41);
  if (v20)
  {
    *(a7[12] + v13) = 1;
  }

  result = ST_Check_Alm_Kep_Err("DD_Proc_GPS_Alm_Subframe:", v20, v41);
  if (result)
  {
    v22 = *a7;
    v23 = a7[1];
    *(v22 + v13) = v12;
    v24 = a7 + 44 * v13;
    *(v24 + 3513) = a2;
    v25 = (v24 + 7016);
    v26 = *(a3 + 8);
    *(v24 + 7044) = *(a3 + 24);
    *(v24 + 7028) = v26;
    *(v24 + 1754) = a4;
    *(v24 + 1755) = 4;
    *(a7[3] + v13) = 1;
    *(a7[8] + v13) = 1;
    if (*(v22 + v13))
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    *(v23 + 20 * v13 + 4) = v27;
    if (a4 >= 1)
    {
      v28 = 0;
      LODWORD(v29) = 0;
      v30 = p_NV + 56 * a1;
      v31 = *v25;
      v32 = v25[1];
      *(v30 + 164) = *(v25 + 28);
      *(v30 + 152) = v32;
      *(v30 + 136) = v31;
      v33 = 55665;
      do
      {
        v34 = *(v30 + 136 + v28) ^ BYTE1(v33);
        v33 = 52845 * (v33 + v34) + 22719;
        v29 = (v29 + v34);
        ++v28;
      }

      while (v28 != 48);
      *(v30 + 128) = v29;
      v22 = *a7;
    }

    v35 = 0;
    LODWORD(v36) = 0;
    v37 = p_NV;
    v38 = v22[1];
    *(p_NV + 92) = *v22;
    *(v37 + 108) = v38;
    v39 = 55665;
    do
    {
      v40 = *(v37 + 88 + v35) ^ BYTE1(v39);
      v39 = 52845 * (v39 + v40) + 22719;
      v36 = (v36 + v40);
      ++v35;
    }

    while (v35 != 40);
    *(v37 + 80) = v36;
  }

  return result;
}

uint64_t DD_Proc_GPS_Health_Subframe(const unsigned int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 **a6)
{
  v31 = *MEMORY[0x29EDCA608];
  result = Decode_GPS_Health_Subframe(a1, &v29);
  v12 = 0;
  v13 = (a3 + 4);
  v14 = 4;
  v15 = 7036;
  v16 = 112;
  do
  {
    if (*(*a6 + v12))
    {
      if (*(&v29 + v12))
      {
        goto LABEL_4;
      }
    }

    else if (*(&v29 + v12))
    {
      v18 = a6 + v16;
      v19 = a6[6];
      result = *(v19 + v12);
      if (result != 1 || ((0xE4FE7F3uLL >> ((*(a6 + v16) >> 2) & 0x1F)) & 1) != 0 || *(v18 - 2) + 3600 <= a2)
      {
        v20 = a6[8];
        if (*(v20 + v12) != 1)
        {
          goto LABEL_19;
        }

        v21 = *(a6 + v15 - 20);
        if (((0xE4FE7F3uLL >> (*(a6 + v15) & 0x1F)) & 1) != 0 || v21 + 3600 <= a2)
        {
          if (v21 + 100 >= a2)
          {
LABEL_19:
            if (*(v19 + v12))
            {
LABEL_20:
              if (*(v18 - 2) + 100 < a2)
              {
                *(a6[2] + v12) = 0;
                *(v19 + v12) = 0;
                *(v13 - 1) = 16777472;
                *v13 = 256;
                *(a4 + 2 * v12) = 256;
              }
            }
          }

          else
          {
            *(a6[3] + v12) = 0;
            *(v20 + v12) = 0;
            *(a5 + v12) = -1;
            v19 = a6[6];
            result = *(v19 + v12);
            if (result)
            {
              goto LABEL_20;
            }
          }

LABEL_4:
          v17 = 1;
          goto LABEL_14;
        }
      }

      *(&v29 + v12) = 0;
    }

    v17 = 2;
LABEL_14:
    *(a6[1] + v14) = v17;
    ++v12;
    v14 += 20;
    v13 += 3;
    v15 += 44;
    v16 += 108;
  }

  while (v12 != 24);
  v22 = 0;
  LODWORD(v23) = 0;
  v24 = *a6;
  *v24 = v29;
  *(v24 + 2) = v30;
  v25 = p_NV;
  v26 = **a6;
  *(p_NV + 108) = (*a6)[1];
  *(v25 + 92) = v26;
  v27 = 55665;
  do
  {
    v28 = *(v25 + 88 + v22) ^ BYTE1(v27);
    v27 = 52845 * (v27 + v28) + 22719;
    v23 = (v23 + v28);
    ++v22;
  }

  while (v22 != 40);
  *(v25 + 80) = v23;
  return result;
}

void DD_Proc_GPS_ION_UTC_Subframe(unsigned int a1, _DWORD *a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v48 = *MEMORY[0x29EDCA608];
  v9 = a2[7];
  v8 = a2[8];
  v10 = a2[9];
  v11 = HIWORD(v10);
  if (BYTE2(v8) >= 0x21u)
  {
    v12 = SBYTE2(v10);
LABEL_3:
    EvCrt_v("DD_Proc_GPS_ION_UTC_Subframe:  Rejected:  Invalid UTC Model  %d %d %d  %d %d %d", a2[7], BYTE1(a2[7]), SBYTE2(v8), v12, BYTE1(a2[8]), a2[8]);
    *(a5 + a1) = 1;
    return;
  }

  v12 = SBYTE2(v10);
  v13 = (HIWORD(v8) & 0x3F) - SBYTE2(v10);
  if (v13 < 0)
  {
    v13 = SBYTE2(v10) - (HIWORD(v8) & 0x3F);
  }

  v14 = (v8 - 8) < 0xF9u || v13 > 1;
  if (v14 || BYTE1(v9) >= 0x93u)
  {
    goto LABEL_3;
  }

  v42 = a2[2];
  v43 = a2[3];
  v17 = a2[5];
  v44 = a2[4];
  v18 = a2[6];
  if (BYTE2(v10) != BYTE2(v8))
  {
    v41 = a2[5];
    v19 = a3;
    v20 = Is_Future_Leap_Sec_Date_Not_Valid(a3 / 604800, 1, BYTE1(v8), v8);
    v17 = v41;
    a3 = v19;
    if (v20)
    {
      EvCrt_v("DD_Proc_GPS_ION_UTC_Subframe:  Rejected:  Invalid UTC Future Leap Second date  %d  %d %d %d");
      return;
    }
  }

  v40 = a4;
  v21 = a6 + 0x2000;
  v22 = v17 << 8 >> 8;
  v23 = (v18 << 8) | BYTE2(v9);
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v24 = a6;
  v25 = a3;
  if (!Core_Get_GPS_UTC(a3, &v45))
  {
    goto LABEL_26;
  }

  if (BYTE2(v47) != BYTE2(v8))
  {
    goto LABEL_20;
  }

  v26 = SBYTE5(v47) - v11;
  if (v26 < 0)
  {
    v26 = v11 - SBYTE5(v47);
  }

  if (v26 >= 2)
  {
LABEL_20:
    *(v21 + 272) = 1;
    EvCrt_v("DD_Proc_GPS_ION_UTC_Subframe:  Rejected:  OTA UTC Leap Seconds  %d  %d  incompatible with Assistance  %d  %d");
    return;
  }

  v27 = v40 - 1024 - BYTE1(v47);
  if (v27 >= 127)
  {
    v27 = 127;
  }

  v28 = v40 - 1024 - v9;
  if (v28 >= 127)
  {
    v28 = 127;
  }

  if (vabdd_f64(v22 * 8.8817842e-16 * (v25 - 619315200 - (BYTE1(v9) << 12) - 604800 * ((v40 - 769 - (v28 + v9)) & 0x1FFFF00 | v9)) + v23 * 9.31322575e-10, v46 * 8.8817842e-16 * (v25 - 619315200 - (v47 << 12) - 604800 * ((v40 - 769 - BYTE1(v47) - v27) & 0x1FFFF00 | BYTE1(v47))) + SHIDWORD(v46) * 9.31322575e-10) > 0.000001)
  {
    *(v21 + 273) = 1;
    EvCrt_v("DD_Proc_GPS_ION_UTC_Subframe:  Rejected:  OTA UTC Correction  %d ns incompatible with Assistance %d ns");
  }

  else
  {
LABEL_26:
    *(v24 + 8424) = v25;
    *(v21 + 240) = BYTE1(v42);
    *(v21 + 241) = v42;
    *(v21 + 242) = BYTE2(v43);
    *(v21 + 243) = BYTE1(v43);
    *(v21 + 244) = v43;
    *(v21 + 245) = BYTE2(v44);
    *(v21 + 246) = BYTE1(v44);
    *(v21 + 247) = v44;
    *(v24 + 8440) = v25;
    *(v24 + 8448) = v22;
    *(v24 + 8452) = v23;
    *(v21 + 264) = BYTE1(v9);
    *(v21 + 265) = v9;
    *(v21 + 266) = BYTE2(v8);
    *(v21 + 267) = BYTE1(v8);
    *(v21 + 268) = v8;
    *(v21 + 269) = v11;
    *(v21 + 270) = 0;
    *(v24 + 8428) = 4;
    *(v24 + 8444) = 4;
    if (v25 >= 1)
    {
      v29 = 0;
      LODWORD(v30) = 0;
      v31 = p_NV;
      v32 = p_NV + 136;
      *(p_NV + 136) = *(v24 + 8424);
      v33 = 55665;
      do
      {
        v34 = *(v32 + v29) ^ BYTE1(v33);
        v33 = 52845 * (v33 + v34) + 22719;
        v30 = (v30 + v34);
        ++v29;
      }

      while (v29 != 16);
      v35 = 0;
      LODWORD(v36) = 0;
      *(v31 + 128) = v30;
      v37 = *(v24 + 8440);
      *(v31 + 176) = *(v24 + 8456);
      *(v31 + 160) = v37;
      v38 = 55665;
      do
      {
        v39 = *(v31 + 160 + v35) ^ BYTE1(v38);
        v38 = 52845 * (v38 + v39) + 22719;
        v36 = (v36 + v39);
        ++v35;
      }

      while (v35 != 24);
      *(v31 + 152) = v36;
    }
  }
}

uint64_t DD_Proc_GPS_AS_SV_Config_Subframe(const unsigned int *a1, int a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD **a7)
{
  v30[1] = *MEMORY[0x29EDCA608];
  Decode_GPS_AS_SV_Config_Subframe(a1, a3);
  Decode_GPS_Health_From_AS_Subfr(a1, v30);
  v13 = (a4 + 148);
  v14 = 24;
  v15 = 484;
  v16 = 8092;
  v17 = 2704;
  do
  {
    result = v30 + v14;
    if (*(*a7 + v14))
    {
      if (v30[-3].i8[v14])
      {
        goto LABEL_4;
      }
    }

    else if (v30[-3].i8[v14])
    {
      v20 = a7 + v17;
      v21 = a7[6];
      if (*(v21 + v14) != 1 || ((0xE4FE7F3uLL >> ((*(a7 + v17) >> 2) & 0x1F)) & 1) != 0 || *(v20 - 2) + 3600 <= a2)
      {
        v22 = a7[8];
        if (*(v22 + v14) != 1)
        {
          goto LABEL_19;
        }

        v23 = *(a7 + v16 - 20);
        if (((0xE4FE7F3uLL >> (*(a7 + v16) & 0x1F)) & 1) != 0 || v23 + 3600 <= a2)
        {
          result = (v23 + 100);
          if (result >= a2)
          {
LABEL_19:
            if (*(v21 + v14))
            {
LABEL_20:
              if (*(v20 - 2) + 100 < a2)
              {
                *(a7[2] + v14) = 0;
                *(v21 + v14) = 0;
                *(v13 - 1) = 16777472;
                *v13 = 256;
                *(a5 + 2 * v14) = 256;
              }
            }
          }

          else
          {
            *(a7[3] + v14) = 0;
            *(v22 + v14) = 0;
            *(a6 + v14) = -1;
            v21 = a7[6];
            result = *(v21 + v14);
            if (result)
            {
              goto LABEL_20;
            }
          }

LABEL_4:
          v19 = 1;
          goto LABEL_14;
        }
      }

      *(result - 24) = 0;
    }

    v19 = 2;
LABEL_14:
    *(a7[1] + v15) = v19;
    ++v14;
    v15 += 20;
    v13 += 3;
    v16 += 44;
    v17 += 108;
  }

  while (v14 != 32);
  v24 = 0;
  LODWORD(v25) = 0;
  *(*a7 + 3) = v30[0];
  v26 = p_NV;
  v27 = (*a7)[1];
  *(p_NV + 92) = **a7;
  *(v26 + 108) = v27;
  v28 = 55665;
  do
  {
    v29 = *(v26 + 88 + v24) ^ BYTE1(v28);
    v28 = 52845 * (v28 + v29) + 22719;
    v25 = (v25 + v29);
    ++v24;
  }

  while (v24 != 40);
  *(v26 + 80) = v25;
  return result;
}

uint64_t DD_Save_New_GPS_Eph(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a5 + 13;
  v12 = 7036;
  do
  {
    if (*(a3 + v10) != 1)
    {
      goto LABEL_19;
    }

    v13 = (a2 + v8);
    v14 = *(a2 + v8);
    if (!DD_Check_New_GPS_Eph(v10, a2, a5))
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

    v15 = (*a5 + v10);
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
      v17 = a5[8];
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
          *(a5[3] + v10) = 0;
          *(v17 + v10) = 0;
          *(a4 + v10) = -1;
          v15 = (*a5 + v10);
        }
      }

      *v15 = 1;
    }

    v19 = 1;
LABEL_17:
    *(a5[1] + v9) = v19;
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
    *(a5[2] + v10) = 1;
    *(a5[6] + v10) = 1;
    *(v11 + 26) = 0;
    *(a5[11] + v10) = 0;
    *(a3 + v10) = 0;
    if (a1 >= 1)
    {
      *(a5[9] + v10) = 1;
      Core_Save_GPS_Eph((v10 + 1), 0, v11);
    }

LABEL_19:
    ++v10;
    v11 = (v11 + 108);
    v9 += 20;
    v12 += 44;
    v8 += 96;
  }

  while (v10 != 32);
  return 1;
}

BOOL DD_Check_New_GPS_Eph(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = *(*(a3 + 48) + a1);
  v4 = a3 + 108 * a1;
  v5 = *(v4 + 160);
  v16 = *(v4 + 144);
  v17 = v5;
  v6 = *(v4 + 192);
  v18 = *(v4 + 176);
  v19 = v6;
  v7 = *(v4 + 128);
  v14 = *(v4 + 112);
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
  v11 = *(v4 + 208);
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

uint64_t DD_Submit_WeekNum(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*(a3 + 48) + (a1 - 1)) == 1 && DD_Check_New_GPS_Eph((a1 - 1), a4, a3);
  if ((*(a5 + 5) & 1) == 0)
  {
    EvLog_v("Week Num initialised to %d from SV%d");
LABEL_13:
    *(a5 + 16) = a2;
    v10 = 1;
    *(a5 + 5) = 1;
    *(a5 + 48) = -1;
    *(a5 + 52) = -1;
    *(a5 + 54) = 0;
    *(a5 + 58) = 0;
    goto LABEL_27;
  }

  v9 = *(a5 + 16);
  if (v9 == a2 || v8)
  {
    v10 = 0;
    if (v9 != a2 && v8)
    {
      v11 = 0;
      v12 = (a5 + 54);
      while (*(v12 - 3) != a2)
      {
        ++v11;
        ++v12;
        if (v11 == 3)
        {
          goto LABEL_16;
        }
      }

      if (v11 >= 3)
      {
LABEL_16:
        v13 = 0;
        v14 = (a5 + 48);
        while (*v14 != -1)
        {
          --v13;
          ++v14;
          if (v13 == -3)
          {
            v15 = 3;
            goto LABEL_25;
          }
        }

        v16 = -v13;
        if (v16 < 3)
        {
          v10 = 0;
          *v14 = a2;
          v14[3] = 1;
          goto LABEL_27;
        }

        v15 = v16;
LABEL_25:
        *(a5 + 52) = -1;
        *(a5 + 48) = -1;
        *(a5 + 54) = 0;
        *(a5 + 58) = 0;
        EvLog_v("GPS DD_Submit_WeekNum: WeekNum Candidate overflow, %d >= %d", v15, 3);
        goto LABEL_26;
      }

      v17 = ++*v12;
      if (v17 < 3)
      {
        goto LABEL_26;
      }

      EvLog_v("Week Num Candidate %d accepted based on %d observations");
      goto LABEL_13;
    }
  }

  else
  {
    EvCrt_v("DD_Submit_WeekNum:  Week Num Candidate %d found on SV%d which fails bit validation check", a2, a1);
LABEL_26:
    v10 = 0;
  }

LABEL_27:
  EvLog_v("Week Num Submit %d %d SV %d", v10, a2, a1);
  return v10;
}

{
  v8 = *(*(a3 + 8552) + (a1 + 63)) == 1 && DD_Check_New_QZSS_Eph((a1 + 63), a4, a3);
  if ((*(a5 + 5) & 1) == 0)
  {
    EvLog_v("Week Num initialised to %d from SV%d");
LABEL_13:
    *(a5 + 16) = a2;
    v10 = 1;
    *(a5 + 5) = 1;
    *(a5 + 48) = -1;
    *(a5 + 52) = -1;
    *(a5 + 54) = 0;
    *(a5 + 58) = 0;
    goto LABEL_27;
  }

  v9 = *(a5 + 16);
  if (v9 == a2 || v8)
  {
    v10 = 0;
    if (v9 != a2 && v8)
    {
      v11 = 0;
      v12 = (a5 + 54);
      while (*(v12 - 3) != a2)
      {
        ++v11;
        ++v12;
        if (v11 == 3)
        {
          goto LABEL_16;
        }
      }

      if (v11 >= 3)
      {
LABEL_16:
        v13 = 0;
        v14 = (a5 + 48);
        while (*v14 != -1)
        {
          --v13;
          ++v14;
          if (v13 == -3)
          {
            v15 = 3;
            goto LABEL_25;
          }
        }

        v16 = -v13;
        if (v16 < 3)
        {
          v10 = 0;
          *v14 = a2;
          v14[3] = 1;
          goto LABEL_27;
        }

        v15 = v16;
LABEL_25:
        *(a5 + 52) = -1;
        *(a5 + 48) = -1;
        *(a5 + 54) = 0;
        *(a5 + 58) = 0;
        EvLog_v("QZSS DD_Submit_WeekNum: WeekNum Candidate overflow, %d >= %d", v15, 3);
        goto LABEL_26;
      }

      v17 = ++*v12;
      if (v17 < 3)
      {
        goto LABEL_26;
      }

      EvLog_v("Week Num Candidate %d accepted based on %d observations");
      goto LABEL_13;
    }
  }

  else
  {
    EvCrt_v("DD_Submit_WeekNum:  Week Num Candidate %d found on SV%d which fails bit validation check", a2, a1);
LABEL_26:
    v10 = 0;
  }

LABEL_27:
  EvLog_v("Week Num Submit %d %d SV %d", v10, a2, a1);
  return v10;
}

void Comp_Track8(long double *a1)
{
  if (fabs(*a1) > 0.0005 || fabs(a1[1]) > 0.0005)
  {
    atan2(a1[1], *a1);
  }
}

uint64_t ds_Config(char **a1, uint64_t a2, uint64_t a3, double *a4)
{
  v144 = *MEMORY[0x29EDCA608];
  v8 = *a1;
  v9 = 83;
  v10 = 1u;
  do
  {
    *a1 = v8 + 1;
    *v8 = v9;
    v8 = *a1;
    if (*a1 >= a1[3])
    {
      v8 = a1[2];
      *a1 = v8;
    }

    v9 = aSoftwareConfig[v10++];
  }

  while (v10 != 32);
  *a1 = v8 + 1;
  *v8 = 10;
  v11 = *a1;
  if (*a1 >= a1[3])
  {
    v11 = a1[2];
  }

  v12 = 83;
  v13 = 1u;
  do
  {
    *a1 = v11 + 1;
    *v11 = v12;
    v11 = *a1;
    if (*a1 >= a1[3])
    {
      v11 = a1[2];
      *a1 = v11;
    }

    v12 = aSystemStatus[v13++];
  }

  while (v13 != 16);
  v14 = 32;
  v15 = 1u;
  do
  {
    *a1 = v11 + 1;
    *v11 = v14;
    v11 = *a1;
    if (*a1 >= a1[3])
    {
      v11 = a1[2];
      *a1 = v11;
    }

    v14 = aFixInt[v15++];
  }

  while (v15 != 10);
  sprintf_4f(a1, *(a2 + 948), 4);
  v16 = 0;
  v17 = *a1;
  v18 = 32;
  do
  {
    *a1 = v17 + 1;
    *v17 = v18;
    v17 = *a1;
    if (*a1 >= a1[3])
    {
      v17 = a1[2];
      *a1 = v17;
    }

    v18 = aRunTimeout[++v16];
  }

  while (v16 != 16);
  sprintf_4f(a1, *(a2 + 956), 4);
  v19 = 0;
  v20 = *a1;
  v21 = 32;
  do
  {
    *a1 = v20 + 1;
    *v20 = v21;
    v20 = *a1;
    if (*a1 >= a1[3])
    {
      v20 = a1[2];
      *a1 = v20;
    }

    v21 = aBirthGpsWn[++v19];
  }

  while (v19 != 16);
  sprintf_5d(a1, *(a2 + 1028));
  v22 = *a1;
  v23 = 32;
  v24 = 1u;
  do
  {
    *a1 = v22 + 1;
    *v22 = v23;
    v22 = *a1;
    if (*a1 >= a1[3])
    {
      v22 = a1[2];
      *a1 = v22;
    }

    v23 = aAccMasks[v24++];
  }

  while (v24 != 14);
  sprintf_ACC(a1, *(a2 + 960));
  sprintf_ACC(a1, *(a2 + 976));
  sprintf_ACC(a1, *(a2 + 968));
  sprintf_ACC(a1, *(a2 + 984));
  v25 = (*a1)++;
  *v25 = 10;
  v26 = *a1;
  if (*a1 >= a1[3])
  {
    v26 = a1[2];
  }

  v27 = 32;
  v28 = 1u;
  do
  {
    *a1 = v26 + 1;
    *v26 = v27;
    v26 = *a1;
    if (*a1 >= a1[3])
    {
      v26 = a1[2];
      *a1 = v26;
    }

    v27 = aNomclkdriftNsS[v28++];
  }

  while (v28 != 36);
  v29 = *(a2 + 992) * 1000000000.0;
  v30 = -0.5;
  if (v29 > 0.0)
  {
    v30 = 0.5;
  }

  v31 = v29 + v30;
  if (v31 <= 2147483650.0)
  {
    if (v31 >= -2147483650.0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0x80000000;
    }
  }

  else
  {
    v32 = 0x7FFFFFFFLL;
  }

  sprintf_6d(a1, v32);
  v33 = *a1;
  v34 = 32;
  v35 = 1u;
  do
  {
    *a1 = v33 + 1;
    *v33 = v34;
    v33 = *a1;
    if (*a1 >= a1[3])
    {
      v33 = a1[2];
      *a1 = v33;
    }

    v34 = aNomclkdriftdev[v35++];
  }

  while (v35 != 25);
  v36 = *(a2 + 1000) * 1000000000.0;
  v37 = -0.5;
  if (v36 > 0.0)
  {
    v37 = 0.5;
  }

  v38 = v36 + v37;
  if (v38 <= 2147483650.0)
  {
    if (v38 >= -2147483650.0)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0x80000000;
    }
  }

  else
  {
    v39 = 0x7FFFFFFFLL;
  }

  sprintf_6d(a1, v39);
  v40 = *a1;
  v41 = 32;
  v42 = 1u;
  do
  {
    *a1 = v40 + 1;
    *v40 = v41;
    v40 = *a1;
    if (*a1 >= a1[3])
    {
      v40 = a1[2];
      *a1 = v40;
    }

    v41 = aDynamics[v42++];
  }

  while (v42 != 13);
  sprintf_2d(a1, *(a2 + 52));
  v43 = *a1;
  v44 = 32;
  v45 = 1u;
  do
  {
    *a1 = v43 + 1;
    *v43 = v44;
    v43 = *a1;
    if (*a1 >= a1[3])
    {
      v43 = a1[2];
      *a1 = v43;
    }

    v44 = aMpathEnv[v45++];
  }

  while (v45 != 14);
  sprintf_2d(a1, *(a2 + 65));
  v46 = (*a1)++;
  *v46 = 10;
  v47 = *a1;
  if (*a1 >= a1[3])
  {
    v47 = a1[2];
  }

  v48 = 80;
  v49 = 1u;
  do
  {
    *a1 = v47 + 1;
    *v47 = v48;
    v47 = *a1;
    if (*a1 >= a1[3])
    {
      v47 = a1[2];
      *a1 = v47;
    }

    v48 = aProcessNoiseBo[v49++];
  }

  while (v49 != 27);
  sprintf_sgR8(a1, a4[4]);
  v50 = *a1;
  v51 = 32;
  v52 = 1u;
  do
  {
    *a1 = v50 + 1;
    *v50 = v51;
    v50 = *a1;
    if (*a1 >= a1[3])
    {
      v50 = a1[2];
      *a1 = v50;
    }

    v51 = aClkGSens[v52++];
  }

  while (v52 != 14);
  sprintf_sgR8(a1, a4[5]);
  v53 = *a1;
  v54 = 32;
  v55 = 1u;
  do
  {
    *a1 = v53 + 1;
    *v53 = v54;
    v53 = *a1;
    if (*a1 >= a1[3])
    {
      v53 = a1[2];
      *a1 = v53;
    }

    v54 = aClkPhase[v55++];
  }

  while (v55 != 14);
  sprintf_sgR8(a1, a4[7]);
  v56 = *a1;
  v57 = 32;
  v58 = 1u;
  do
  {
    *a1 = v56 + 1;
    *v56 = v57;
    v56 = *a1;
    if (*a1 >= a1[3])
    {
      v56 = a1[2];
      *a1 = v56;
    }

    v57 = aClkFreq[v58++];
  }

  while (v58 != 14);
  sprintf_sgR8(a1, a4[8]);
  v59 = (*a1)++;
  *v59 = 10;
  v60 = *a1;
  if (*a1 >= a1[3])
  {
    v60 = a1[2];
  }

  v61 = 32;
  v62 = 1u;
  do
  {
    *a1 = v60 + 1;
    *v60 = v61;
    v60 = *a1;
    if (*a1 >= a1[3])
    {
      v60 = a1[2];
      *a1 = v60;
    }

    v61 = aHorzPos[v62++];
  }

  while (v62 != 27);
  sprintf_sgR8(a1, a4[9]);
  v63 = *a1;
  v64 = 32;
  v65 = 1u;
  do
  {
    *a1 = v63 + 1;
    *v63 = v64;
    v63 = *a1;
    if (*a1 >= a1[3])
    {
      v63 = a1[2];
      *a1 = v63;
    }

    v64 = aVertPos[v65++];
  }

  while (v65 != 14);
  sprintf_sgR8(a1, a4[10]);
  v66 = *a1;
  v67 = 32;
  v68 = 1u;
  do
  {
    *a1 = v66 + 1;
    *v66 = v67;
    v66 = *a1;
    if (*a1 >= a1[3])
    {
      v66 = a1[2];
      *a1 = v66;
    }

    v67 = aHorzAcc[v68++];
  }

  while (v68 != 14);
  sprintf_sgR8(a1, a4[13]);
  v69 = *a1;
  v70 = 32;
  v71 = 1u;
  do
  {
    *a1 = v69 + 1;
    *v69 = v70;
    v69 = *a1;
    if (*a1 >= a1[3])
    {
      v69 = a1[2];
      *a1 = v69;
    }

    v70 = aVertAcc[v71++];
  }

  while (v71 != 14);
  sprintf_sgR8(a1, a4[14]);
  v72 = (*a1)++;
  *v72 = 10;
  v73 = *a1;
  if (*a1 >= a1[3])
  {
    v73 = a1[2];
  }

  v74 = 82;
  v75 = 1u;
  do
  {
    *a1 = v73 + 1;
    *v73 = v74;
    v73 = *a1;
    if (*a1 >= a1[3])
    {
      v73 = a1[2];
      *a1 = v73;
    }

    v74 = aReferencePosit[v75++];
  }

  while (v75 != 24);
  v141 = a3;
  v76 = 0;
  v77 = a4 + 3379;
  v78 = 1;
  while (1)
  {
    v79 = v77[v76] * 57.2957795;
    v80 = -v79;
    if (v79 >= 0.0)
    {
      v80 = v77[v76] * 57.2957795;
    }

    v81 = v80;
    v82 = (v80 - v81) * 60.0;
    v83 = v82;
    v84 = (v82 - v83) * 60.0;
    sprintf_3d(a1, v81);
    sprintf_3d(a1, v83);
    v85 = v84 * 100000.0 <= 0.0 ? -0.5 : 0.5;
    v86 = v84 * 100000.0 + v85;
    if (v86 <= 2147483650.0)
    {
      v87 = v86 >= -2147483650.0 ? v86 : 0x80000000;
    }

    else
    {
      v87 = 0x7FFFFFFFLL;
    }

    sprintf_8f(a1, v87, 6);
    v88 = v77[v76];
    if ((v78 & 1) == 0)
    {
      break;
    }

    v78 = 0;
    if (v88 >= 0.0)
    {
      v89 = " N ";
    }

    else
    {
      v89 = " S ";
    }

    v90 = *v89;
    v76 = 1;
    if (*v89)
    {
      v91 = *a1;
      v92 = (v89 + 1);
      do
      {
        *a1 = v91 + 1;
        *v91 = v90;
        v91 = *a1;
        if (*a1 >= a1[3])
        {
          v91 = a1[2];
          *a1 = v91;
        }

        v93 = *v92++;
        v90 = v93;
      }

      while (v93);
      v78 = 0;
      v76 = 1;
    }
  }

  v94 = " E ";
  if (v88 < 0.0)
  {
    v94 = " W ";
  }

  v95 = *v94;
  if (*v94)
  {
    v96 = *a1;
    v97 = (v94 + 1);
    do
    {
      *a1 = v96 + 1;
      *v96 = v95;
      v96 = *a1;
      if (*a1 >= a1[3])
      {
        v96 = a1[2];
        *a1 = v96;
      }

      v98 = *v97++;
      v95 = v98;
    }

    while (v98);
  }

  sprintf_sgR8(a1, a4[3381]);
  v99 = (*a1)++;
  *v99 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  GNSS_Nav_Debug_Flush_Check(a1);
  v100 = *a1;
  v101 = 71;
  v102 = 1u;
  do
  {
    *a1 = v100 + 1;
    *v100 = v101;
    v100 = *a1;
    if (*a1 >= a1[3])
    {
      v100 = a1[2];
      *a1 = v100;
    }

    v101 = aGlonassL1ofInt[v102++];
  }

  while (v102 != 35);
  v103 = 9 * *(a2 + 1022);
  v104 = ICB_Model_Name[v103];
  if (v104)
  {
    v105 = &ICB_Model_Name[v103 + 1];
    do
    {
      *a1 = v100 + 1;
      *v100 = v104;
      v100 = *a1;
      if (*a1 >= a1[3])
      {
        v100 = a1[2];
        *a1 = v100;
      }

      v106 = *v105++;
      v104 = v106;
    }

    while (v106);
  }

  v107 = 32;
  v108 = 1u;
  do
  {
    *a1 = v100 + 1;
    *v100 = v107;
    v100 = *a1;
    if (*a1 >= a1[3])
    {
      v100 = a1[2];
      *a1 = v100;
    }

    v107 = asc_2997B516F[v108++];
  }

  while (v108 != 4);
  v143 = 55;
  LOBYTE(v109) = 45;
  v110 = 1;
  do
  {
    *a1 = v100 + 1;
    *v100 = v109;
    v100 = *a1;
    if (*a1 >= a1[3])
    {
      v100 = a1[2];
      *a1 = v100;
    }

    v109 = *(&v142 + v110++);
  }

  while (v109);
  v111 = 46;
  v112 = 1u;
  do
  {
    *a1 = v100 + 1;
    *v100 = v111;
    v100 = *a1;
    if (*a1 >= a1[3])
    {
      v100 = a1[2];
      *a1 = v100;
    }

    v111 = asc_2997B5173[v112++];
  }

  while (v112 != 4);
  LOBYTE(v143) = 0;
  LOBYTE(v113) = 54;
  v114 = 1;
  do
  {
    *a1 = v100 + 1;
    *v100 = v113;
    v100 = *a1;
    if (*a1 >= a1[3])
    {
      v100 = a1[2];
      *a1 = v100;
    }

    v113 = *(&v142 + v114++);
  }

  while (v113);
  *a1 = v100 + 1;
  *v100 = 93;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  for (i = 0; i != 112; i += 8)
  {
    v116 = *(a2 + 1152 + i) * 100.0;
    if (v116 <= 2147483650.0)
    {
      if (v116 >= -2147483650.0)
      {
        v117 = v116;
      }

      else
      {
        v117 = 0x80000000;
      }
    }

    else
    {
      v117 = 0x7FFFFFFFLL;
    }

    sprintf_9f(a1, v117, 3);
  }

  v118 = (*a1)++;
  *v118 = 10;
  v119 = *a1;
  if (*a1 >= a1[3])
  {
    v119 = a1[2];
  }

  v120 = 66;
  v121 = 1u;
  do
  {
    *a1 = v119 + 1;
    *v119 = v120;
    v119 = *a1;
    if (*a1 >= a1[3])
    {
      v119 = a1[2];
      *a1 = v119;
    }

    v120 = aBeidouB1InterC[v121++];
  }

  while (v121 != 32);
  v122 = 9 * *(a2 + 1022);
  v123 = ICB_Model_Name[v122];
  if (v123)
  {
    v124 = &ICB_Model_Name[v122 + 1];
    do
    {
      *a1 = v119 + 1;
      *v119 = v123;
      v119 = *a1;
      if (*a1 >= a1[3])
      {
        v119 = a1[2];
        *a1 = v119;
      }

      v125 = *v124++;
      v123 = v125;
    }

    while (v125);
  }

  v126 = *(a2 + 1264) * 100.0;
  if (v126 <= 2147483650.0)
  {
    if (v126 >= -2147483650.0)
    {
      v127 = v126;
    }

    else
    {
      v127 = 0x80000000;
    }
  }

  else
  {
    v127 = 0x7FFFFFFFLL;
  }

  sprintf_9f(a1, v127, 3);
  v128 = (*a1)++;
  *v128 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  GNSS_Nav_Debug_Flush_Check(a1);
  v129 = *a1;
  v130 = 73;
  v131 = 1u;
  do
  {
    *a1 = v129 + 1;
    *v129 = v130;
    v129 = *a1;
    if (*a1 >= a1[3])
    {
      v129 = a1[2];
      *a1 = v129;
    }

    v130 = aInitialData[v131++];
  }

  while (v131 != 16);
  for (j = 3; j > 1; --j)
  {
    *a1 = v129 + 1;
    *v129 = 32;
    v129 = *a1;
    if (*a1 >= a1[3])
    {
      v129 = a1[2];
      *a1 = v129;
    }
  }

  sprintf_6d(a1, *(a2 + 1288));
  sprintf_sgR8(a1, *(a2 + 1304));
  sprintf_sgR8(a1, *(a2 + 1296));
  v133 = *a1;
  for (k = 3; k > 1; --k)
  {
    *a1 = v133 + 1;
    *v133 = 32;
    v133 = *a1;
    if (*a1 >= a1[3])
    {
      v133 = a1[2];
      *a1 = v133;
    }
  }

  v135 = &g_TOW_Stat_As_String[10 * *(v141 + 88) + 1];
  v136 = 32;
  do
  {
    *a1 = v133 + 1;
    *v133 = v136;
    v133 = *a1;
    if (*a1 >= a1[3])
    {
      v133 = a1[2];
      *a1 = v133;
    }

    v137 = *v135++;
    v136 = v137;
  }

  while (v137);
  sprintf_10u(a1, *(v141 + 100));
  sprintf_6d(a1, *(v141 + 92));
  sprintf_10d(a1, *(v141 + 96));
  v138 = (*a1)++;
  *v138 = 10;
  v139 = *a1;
  if (*a1 >= a1[3])
  {
    v139 = a1[2];
  }

  *a1 = v139 + 1;
  *v139 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  return GNSS_Nav_Debug_Flush_Check(a1);
}