void sub_2995EE694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8gnssTest19GnssAdaptDeviceTest27Ga24_03DeviceStatusRspHndlrE12e_HAL_CbTypeP11u_HAL_CBRsp_block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  gnssTest::GnssAdaptDeviceTest::Ga22_01TriggerProdIndReq(v1);
  gnssTest::GnssAdaptDeviceTest::Ga22_03TriggerCpMeRomCsReq(v1);
  if (gnssTest::GnssAdaptDeviceTest::Ga22_08InjectLtlTable(v1) != 1 && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LTL Inject Failed\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 87, "Ga24_03DeviceStatusRspHndlr_block_invoke_2", 257);
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 2, 1);
  }

  StatusCode = gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(v1);
  v5 = *(v1 + 72);
  *__str = MEMORY[0x29EDCA5F8];
  v9 = 0x40000000;
  v10 = ___ZN8gnssTest19GnssAdaptDeviceTest30Ga21_08UpdateGnssTestDevStatusEb_block_invoke;
  v11 = &__block_descriptor_tmp_62;
  v12 = v1;
  v13 = StatusCode == 1;
  dispatch_sync(v5, __str);
  std::string::basic_string[abi:ne200100]<0>(__p, "Ga24_03DeviceStatusRspHndlr_block_invoke_2");
  gnssTest::GnssAdaptDeviceTest::Ga22_09ReportInitStatus(v1, __p, StatusCode);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2995EE85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double gnssTest::GnssAdaptDeviceTest::Ga24_04ReceiveProdData(gnssTest::GnssAdaptDeviceTest *this, const void *a2, unsigned __int8 *a3)
{
  v4 = this;
  v20 = *MEMORY[0x29EDCA608];
  GnssAdaptDeviceTestInstance = gnssTest::GnssAdaptDeviceTest::Ga21_06GetGnssAdaptDeviceTestInstance(this);
  if (v4 && a2)
  {
    v6 = GnssAdaptDeviceTestInstance;
    *__str = 0;
    v13 = __str;
    v14 = 0x4002000000;
    v15 = __Block_byref_object_copy__1;
    v16 = __Block_byref_object_dispose__1;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v17, a2, a2 + v4, v4);
    v7 = *(v6 + 56);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest21Ga24_05HandleZxPacketEPht_block_invoke;
    block[3] = &unk_29EF51C98;
    block[4] = __str;
    block[5] = v6;
    dispatch_async(v7, block);
    _Block_object_dispose(__str, 8);
    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx rawData or len\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "Ga24_05HandleZxPacket", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
  }

  return result;
}

__n128 __Block_byref_object_copy__1(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;

    operator delete(v2);
  }
}

void ___ZN8gnssTest19GnssAdaptDeviceTest21Ga24_05HandleZxPacketEPht_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  __p = 0;
  v30 = 0;
  v31 = 0;
  memset(&v32, 0, sizeof(v32));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(v3 + 40), *(v3 + 48), *(v3 + 48) - *(v3 + 40));
  gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(v2 + 140, &__p, &v32);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    v6 = &v32;
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v32.__r_.__value_.__r.__words[0];
    }

    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ZxSize,%lu,ZxRsp,%s\n", v4, "ADP", 73, "Ga24_05HandleZxPacket_block_invoke", size, v6);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 4, 1);
  }

  ZxTestType = gnssTest::ZxFactoryHandler::Ga23_01GetZxTestType(v2 + 140, (*(*(a1 + 32) + 8) + 40), &v28);
  if (ZxTestType > 1)
  {
    if (ZxTestType != 2)
    {
      if (ZxTestType == 3 && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Unknown Zx Msg\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "Ga24_05HandleZxPacket_block_invoke", 770);
        LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
      }

      goto LABEL_59;
    }

    if (v28 <= 1u)
    {
      if (!v28)
      {
        gnssTest::GnssAdaptDeviceTest::Ga22_02HandleProdIndicationRsp(v2, *(*(a1 + 32) + 8) + 40);
        goto LABEL_59;
      }

      if (v28 == 1)
      {
        gnssTest::GnssAdaptDeviceTest::Ga22_17HandleCommPingRsp(v2, (*(*(a1 + 32) + 8) + 40));
        goto LABEL_59;
      }
    }

    else
    {
      switch(v28)
      {
        case 2u:
          gnssTest::GnssAdaptDeviceTest::Ga22_22HandleApSignalGpioRsp(v2, *(*(a1 + 32) + 8) + 40);
          goto LABEL_59;
        case 3u:
          if (!gnssOsa_SemRelease(*(v2 + 80)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v19 = mach_continuous_time();
            v20 = *&g_MacClockTicksToMsRelation;
            v21 = __error();
            v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v20 * v19), "ADP", 87, "Ga24_05HandleZxPacket_block_invoke", 1542, *v21);
            LbsOsaTrace_WriteLog(0x18u, __str, v22, 2, 1);
          }

          goto LABEL_59;
        case 0xFFu:
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v13 = mach_continuous_time();
            v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Zx mesg resp\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "Ga24_05HandleZxPacket_block_invoke", 770);
            LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
          }

          goto LABEL_59;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GenMsgType,%uuh\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 69, "Ga24_05HandleZxPacket_block_invoke", 770, v28);
      LbsOsaTrace_WriteLog(0x18u, __str, v24, 0, 1);
    }

    goto LABEL_59;
  }

  if (ZxTestType)
  {
    if (ZxTestType != 1)
    {
      goto LABEL_59;
    }

    v9 = (v28 - 1);
    if (v9 <= 0x3F)
    {
      if (((1 << (v28 - 1)) & 0x8000000080008089) != 0)
      {
        goto LABEL_59;
      }

      if (v9 == 1)
      {
        v10 = 0;
LABEL_25:
        gnssTest::GnssAdaptDeviceTest::Ga22_04HandleCpMeRomCsRsp(v2, *(*(a1 + 32) + 8) + 40, v10);
        goto LABEL_59;
      }
    }

    if (v28 != 128 && v28 != 1024 && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpTestType,%d\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 69, "Ga24_05HandleZxPacket_block_invoke", 257, 1);
      LbsOsaTrace_WriteLog(0x18u, __str, v16, 0, 1);
    }
  }

  else if (v28 > 4u)
  {
    if (v28 > 0x15u)
    {
      if (v28 == 22)
      {
        gnssTest::GnssAdaptDeviceTest::Ga22_26HandleTimeMarkRsp(v2, *(*(a1 + 32) + 8) + 40);
        goto LABEL_59;
      }

      if (v28 == 255)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v28 == 5)
      {
        gnssTest::GnssAdaptDeviceTest::Ga22_13HandleLtlRsp(v2, *(*(a1 + 32) + 8) + 40);
        goto LABEL_59;
      }

      if (v28 == 21)
      {
        gnssTest::GnssAdaptDeviceTest::Ga22_20HandleMePowerModeRsp(v2, *(*(a1 + 32) + 8) + 40);
        goto LABEL_59;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MeTestType,%d\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "Ga24_05HandleZxPacket_block_invoke", 515, 0);
      LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
    }
  }

  else
  {
    if (v28 > 2u || !v28)
    {
      goto LABEL_59;
    }

    if (v28 != 1)
    {
      v10 = 1;
      goto LABEL_25;
    }

    *__str = 0;
    v34 = __str;
    v35 = 0x2000000000;
    v36 = 0;
    v25 = *(v2 + 72);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest21Ga24_05HandleZxPacketEPht_block_invoke_2;
    block[3] = &unk_29EF51C70;
    block[4] = __str;
    block[5] = v2;
    dispatch_sync(v25, block);
    v26 = v34[24];
    if (v26 < 2)
    {
      gnssTest::GnssAdaptDeviceTest::Ga22_15HandleCwModulatedRsp(v2, *(*(a1 + 32) + 8) + 40, v26);
    }

    _Block_object_dispose(__str, 8);
  }

LABEL_59:
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_2995EF2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t GncP03_03EncSendGMH(unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 a3, uint64_t a4)
{
  v32 = *MEMORY[0x29EDCA608];
  v17 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  memset_s(&g_GncPTxStream, 0x800uLL, 0, 0x800uLL);
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
  PlcHwType = GncP05_62GetPlcHwType();
  plc00_05EncodeMsg(0, v18, a4, &g_GncPTxStream, 2048, &v17, &v21, PlcHwType);
  if (v21)
  {
    if (IsLoggingAllowed == 1)
    {
      if (!plc00_15GetExtErrAsString(&v21, __s, 0x104uLL) || !LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        return 0;
      }

      bzero(__str, 0x410uLL);
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%c,MID,%c,MIDE,%u,Err,%s\n", v9, "GNC", 87, "GncP03_03EncSendGMH");
      goto LABEL_11;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%c,MID,%c,MIDE,%u\n", v13, "GNC", 87);
      goto LABEL_11;
    }
  }

  else
  {
    v11 = v17;
    if (v17 > 8u)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GNCP=>ME %x,%x,%x,%x,%x,%x,%x,%x\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 68, "GncP03_03EncSendGMH", g_GncPTxStream, byte_2A196F6B5, byte_2A196F6B6, byte_2A196F6B7, byte_2A196F6B8, byte_2A196F6B9, byte_2A196F6BA, byte_2A196F6BB);
        LbsOsaTrace_WriteLog(8u, __str, v16, 5, 1);
      }

      if (off_2A1939588)
      {
        off_2A1939588(v11, &g_GncPTxStream);
        return v11;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Encoded,%u,Min,%u\n", v12);
LABEL_11:
      LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
    }
  }

  return 0;
}

void GncP03_10SndNewUpdtSM(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("GncP03_10SndNewUpdtSM", 140, 1, 0x10uLL);
  if (v0)
  {
    v1 = v0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_UPDT_POS_AVAL_IND =>GNCS\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP03_10SndNewUpdtSM");
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    AgpsSendFsmMsg(134, 130, 8790787, v1);
  }
}

void GncP03_12SendUpdtCfg(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("GncP03_12SendUpdtCfg", 162, 1, 0x14uLL);
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      *(v4 + 7) = *a1;
      v4[12] |= 1u;
    }

    if (a2)
    {
      *(v4 + 8) = *a2;
      v4[12] |= 2u;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_CFG_UPDT_IND =>GNCS ValidMask,%u,NmeaMask,%u,UpdtInt,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP03_12SendUpdtCfg", v5[12], *(v5 + 7), *(v5 + 8));
      LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
    }

    AgpsSendFsmMsg(134, 130, 8791043, v5);
  }
}

void GncP03_13SendStopFWActResp(char a1, char a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("GncP03_13SendStopFWActResp", 195, 1, 0x10uLL);
  if (v4)
  {
    v5 = v4;
    v4[12] = a2;
    v4[13] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_STOP_FW_ACTIVE_RSP =>GNM Activity,%hhu,Status,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP03_13SendStopFWActResp", v5[12], v5[13]);
      LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
    }

    AgpsSendFsmMsg(134, 128, 8785668, v5);
  }
}

double GncP03_14SendDeRegGnssReq(int a1, int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (g_DeRegGnssCount >= 4u)
  {
    snprintf(__str, 0x400uLL, "ASSERT: %s %d Max Attempts De-Register GNSS", "GncP03_14SendDeRegGnssReq", 221);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__s, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__s, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "GncP03_14SendDeRegGnssReq", __str);
      LbsOsaTrace_WriteLog(0xEu, __s, v8, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("GncP03_14SendDeRegGnssReq", "gncpe03Tx.cpp", 222, "false && De-Register GNSS Failed");
  }

  memset_s(__s, 0x7FCuLL, 0, 0x7FCuLL);
  __s[0] = a1;
  __s[1] = a2;
  if (GncP03_03EncSendGMH(0x42u, 0x73u, 0x50u, __s))
  {
    ++g_DeRegGnssCount;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SleepTO,%u,ExpSleepDur,%u,Attempt,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncP03_14SendDeRegGnssReq", a1, a2, g_DeRegGnssCount);
      LbsOsaTrace_WriteLog(8u, __str, v6, 4, 1);
    }
  }

  return result;
}

uint64_t Encode_SVid_STE(uint64_t result, uint64_t a2, char *a3)
{
  if (result <= 2)
  {
    if (!result)
    {
      goto LABEL_15;
    }

    if (result != 1)
    {
      if (result == 2)
      {
        result = (a2 + 8);
        v4 = 4;
        if (a3)
        {
          goto LABEL_22;
        }

        return result;
      }

LABEL_14:
      EvCrt_Illegal_Default("Encode_SVid_STE", 96);
      result = 0;
LABEL_15:
      v4 = 0;
      if (a3)
      {
        goto LABEL_22;
      }

      return result;
    }

    v4 = 1;
LABEL_21:
    result = a2;
    if (!a3)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (result > 4)
  {
    if (result != 5)
    {
      if (result == 6)
      {
        v4 = 2;
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    v4 = 3;
    goto LABEL_21;
  }

  if (result != 3)
  {
    result = (a2 + 128);
    v4 = 6;
    if (!a3)
    {
      return result;
    }

LABEL_22:
    *a3 = v4;
    return result;
  }

  result = (a2 + 64);
  v4 = 5;
  if (a3)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t Decode_SVid_STE(uint64_t a1, int a2, int *a3)
{
  *a3 = 0;
  if (a2 == 1 && (a1 - 1) <= 0x1Fu)
  {
    v3 = 1;
LABEL_10:
    *a3 = v3;
    return a1;
  }

  if (a2 == 2 && (a1 - 120) <= 0x26u)
  {
    v3 = 6;
    goto LABEL_10;
  }

  if (a2 == 3 && (a1 + 63) <= 9u)
  {
    v3 = 5;
    goto LABEL_10;
  }

  if (a2 == 4 && (a1 - 1) <= 0xDu)
  {
    *a3 = 2;
    return (a1 - 8);
  }

  else if (a2 == 5 && (a1 - 65) <= 0x23u)
  {
    *a3 = 3;
    return (a1 - 64);
  }

  else
  {
    v4 = 0;
    if (a2 == 6 && (a1 + 127) <= 0x24u)
    {
      *a3 = 4;
      return (a1 - 128);
    }
  }

  return v4;
}

uint64_t FN_GNSS_To_Nav_Soln(uint64_t a1, uint64_t a2)
{
  v22[2] = *MEMORY[0x29EDCA608];
  memset(__src, 0, sizeof(__src));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  memset(v22, 0, 14);
  *a2 = 0u;
  *(a2 + 14) = *(v22 + 6);
  *(a2 + 22) = 0;
  *(a2 + 24) = 0;
  memcpy((a2 + 25), __src, 0x120uLL);
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
  *(a2 + 553) = 0;
  memcpy((a2 + 554), v19, 0x198uLL);
  *(a2 + 962) = 0u;
  *(a2 + 978) = 0;
  *(a2 + 986) = 0u;
  *(a2 + 1002) = 0;
  *(a2 + 1010) = 0;
  *(a2 + 1014) = 0;
  v4 = *(a1 + 40);
  *a2 = vrev64_s32(*(a1 + 32));
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 48);
  *(a2 + 20) = *(a1 + 52);
  *(a2 + 22) = *(a1 + 54);
  *(a2 + 24) = *(a1 + 1);
  v5 = *(a1 + 208);
  *(a2 + 208) = *(a1 + 224);
  *(a2 + 192) = v5;
  v6 = *(a1 + 320);
  *(a2 + 232) = *(a1 + 336);
  *(a2 + 216) = v6;
  *(a2 + 240) = *(a1 + 344);
  *(a2 + 256) = *(a1 + 360);
  *(a2 + 28) = *(a1 + 4);
  *(a2 + 36) = *(a1 + 12);
  v7 = *(a1 + 912);
  v9 = *(a1 + 880);
  v8 = *(a1 + 896);
  *(a2 + 104) = *(a1 + 864);
  *(a2 + 120) = v9;
  *(a2 + 136) = v8;
  *(a2 + 152) = v7;
  v10 = *(a1 + 800);
  v11 = *(a1 + 816);
  v12 = *(a1 + 848);
  *(a2 + 72) = *(a1 + 832);
  *(a2 + 56) = v11;
  *(a2 + 40) = v10;
  *(a2 + 88) = v12;
  *(a2 + 160) = *(a1 + 144);
  *(a2 + 176) = *(a1 + 160);
  v13 = *(a1 + 1496);
  v14 = *(a1 + 1528);
  *(a2 + 280) = *(a1 + 1512);
  *(a2 + 296) = v14;
  *(a2 + 264) = v13;
  *(a2 + 552) = *(a1 + 462);
  *(a2 + 312) = *(a1 + 468);
  *(a2 + 328) = *(a1 + 484);
  *(a2 + 344) = *(a1 + 500);
  *(a2 + 360) = *(a1 + 516);
  *(a2 + 376) = *(a1 + 532);
  *(a2 + 392) = *(a1 + 548);
  *(a2 + 408) = *(a1 + 580);
  *(a2 + 424) = *(a1 + 596);
  *(a2 + 440) = *(a1 + 612);
  *(a2 + 456) = *(a1 + 628);
  *(a2 + 472) = *(a1 + 660);
  *(a2 + 488) = *(a1 + 676);
  *(a2 + 504) = *(a1 + 692);
  *(a2 + 520) = *(a1 + 708);
  *(a2 + 536) = *(a1 + 724);
  memcpy((a2 + 560), (a1 + 1592), 0x180uLL);
  v15 = *(a1 + 1976);
  *(a2 + 960) = *(a1 + 1992);
  *(a2 + 944) = v15;
  v16 = *(a1 + 2016);
  *(a2 + 968) = *(a1 + 2000);
  *(a2 + 984) = v16;
  v17 = *(a1 + 2040);
  *(a2 + 992) = *(a1 + 2024);
  *(a2 + 1008) = v17;
  return 1;
}

void GNSS_HL_Data_Bases_Clear(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v64 = *MEMORY[0x29EDCA608];
  v2 = *(v1 + 48);
  *(v2 + 96) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  bzero(*(v1 + 32), 0xD38uLL);
  bzero(__src, 0x18D8uLL);
  v3 = 0;
  *(&__src[3] + 4) = 0x500000002;
  do
  {
    v4 = &__src[v3];
    *(v4 + 15) = 0;
    *(v4 + 64) = 0;
    *(v4 + 68) = 0uLL;
    *(v4 + 84) = 0uLL;
    v3 += 3;
    *(v4 + 97) = 0;
  }

  while (v3 != 246);
  *(&__src[397] + 1) = 0;
  bzero(&__src[249] + 12, 0x85DuLL);
  *(&__src[387] + 5) = 0u;
  *(&__src[385] + 12) = 0u;
  *(&__src[386] + 12) = 0u;
  *(&__src[383] + 12) = 0u;
  *(&__src[384] + 12) = 0u;
  *(&__src[388] + 8) = 0u;
  *(&__src[389] + 8) = 0u;
  *(&__src[390] + 8) = 0u;
  *(&__src[391] + 8) = 0u;
  *(&__src[392] + 8) = 0u;
  *(&__src[393] + 8) = 0u;
  *(&__src[394] + 8) = 0u;
  *(&__src[395] + 8) = 0u;
  *(&__src[396] + 7) = 0u;
  v5 = *(v1 + 40);
  *v5 = __src[0];
  *(v5 + 48) = __src[3];
  *(v5 + 32) = __src[2];
  *(v5 + 16) = __src[1];
  *(v5 + 52) = *(&__src[3] + 4);
  memcpy((v5 + 60), &__src[3] + 12, 0x18A4uLL);
  bzero(*(v1 + 64), 0x260uLL);
  memset(__src, 0, 357);
  memset(v63, 0, sizeof(v63));
  memset(v62, 0, sizeof(v62));
  v6 = *(v1 + 72);
  *(v6 + 48) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  *(v6 + 52) = 0x500000002;
  *(v6 + 60) = 0;
  *(v6 + 66) = 0;
  memcpy((v6 + 74), __src, 0x165uLL);
  *(v6 + 431) = 0u;
  *(v6 + 447) = 0u;
  *(v6 + 463) = 0u;
  *(v6 + 479) = 0u;
  *(v6 + 495) = 0u;
  *(v6 + 511) = 0u;
  *(v6 + 527) = 0u;
  *(v6 + 543) = 0u;
  *(v6 + 559) = 0u;
  *(v6 + 575) = 0u;
  *(v6 + 591) = 0u;
  *(v6 + 607) = 0u;
  *(v6 + 623) = 0u;
  *(v6 + 639) = 0u;
  *(v6 + 654) = 0;
  v7 = *&v63[16];
  *(v6 + 658) = *v63;
  *(v6 + 674) = v7;
  v8 = *&v63[32];
  v9 = *&v63[48];
  v10 = *&v63[80];
  *(v6 + 722) = *&v63[64];
  *(v6 + 738) = v10;
  *(v6 + 690) = v8;
  *(v6 + 706) = v9;
  v11 = *&v63[96];
  v12 = *&v63[112];
  v13 = *&v63[144];
  *(v6 + 786) = *&v63[128];
  *(v6 + 802) = v13;
  *(v6 + 754) = v11;
  *(v6 + 770) = v12;
  v14 = *&v63[160];
  v15 = *&v63[176];
  v16 = *&v63[192];
  v17 = *&v63[208];
  *(v6 + 882) = *&v63[224];
  *(v6 + 850) = v16;
  *(v6 + 866) = v17;
  *(v6 + 818) = v14;
  *(v6 + 834) = v15;
  v18 = *&v62[112];
  *(v6 + 986) = *&v62[96];
  *(v6 + 1002) = v18;
  *(v6 + 1015) = *&v62[125];
  v19 = *&v62[48];
  *(v6 + 922) = *&v62[32];
  *(v6 + 938) = v19;
  v20 = *&v62[80];
  *(v6 + 954) = *&v62[64];
  *(v6 + 970) = v20;
  v21 = *&v62[16];
  *(v6 + 890) = *v62;
  *(v6 + 906) = v21;
  *(v6 + 1116) = 0u;
  *(v6 + 1087) = 0u;
  *(v6 + 1103) = 0u;
  *(v6 + 1055) = 0u;
  *(v6 + 1071) = 0u;
  *(v6 + 1023) = 0u;
  *(v6 + 1039) = 0u;
  *(v6 + 1132) = 1;
  *(v6 + 1134) = 1;
  *(v6 + 1135) = 0u;
  *(v6 + 1151) = 0u;
  *(v6 + 1167) = 0u;
  *(v6 + 1183) = 0u;
  *(v6 + 1199) = 0u;
  *(v6 + 1215) = 0u;
  *(v6 + 1231) = 0u;
  *(v6 + 1247) = 0u;
  *(v6 + 1263) = 0u;
  *(v6 + 1279) = 0u;
  *(v6 + 1295) = 0u;
  *(v6 + 1311) = 0u;
  *(v6 + 1327) = 0u;
  *(v6 + 1343) = 0u;
  *(v6 + 1359) = 0u;
  *(v6 + 1375) = 0u;
  *(v6 + 1391) = 0u;
  *(v6 + 1407) = 0u;
  *(v6 + 1423) = 0u;
  *(v6 + 1439) = 0u;
  *(v6 + 1455) = 0u;
  *(v6 + 1471) = 0u;
  *(v6 + 1487) = 0u;
  *(v6 + 1503) = 0u;
  *(v6 + 1519) = 0u;
  *(v6 + 1535) = 0u;
  *(v6 + 1551) = 0u;
  *(v6 + 1564) = 0u;
  v22 = 28608;
  v23 = __src;
  bzero(__src, 0x6FC0uLL);
  do
  {
    *(v23 + 46) = 0;
    *v23 = 0uLL;
    v23[1] = 0uLL;
    v23[2] = 0uLL;
    v23[3] = 0uLL;
    v23[4] = 0uLL;
    v23[5] = 0uLL;
    v23[6] = 0uLL;
    v23[7] = 0uLL;
    v23[8] = 0uLL;
    v23[9] = 0uLL;
    v23[10] = 0uLL;
    *(v23 + 173) = 0;
    v23 += 12;
    v22 -= 192;
  }

  while (v22);
  memset(&__src[1788], 0, 24);
  memcpy(*(v1 + 96), __src, 0x6FD8uLL);
  bzero(__src, 0x1D28uLL);
  for (i = 0; i != 2688; i += 56)
  {
    v25 = __src + i;
    *(v25 + 4) = 0;
    *(v25 + 20) = 0;
    *(v25 + 44) = 0;
    *(v25 + 26) = 0;
    *(v25 + 10) = 0;
    *(v25 + 7) = 0;
    *(v25 + 8) = 0;
    *(v25 + 36) = 0;
  }

  for (j = 2720; j != 4448; j += 36)
  {
    v27 = __src + j;
    v27[32] = 0;
    *v27 = 0uLL;
    *(v27 + 1) = 0uLL;
  }

  v28 = -960;
  do
  {
    v29 = __src + v28;
    *(v29 + 2712) = 0;
    *(v29 + 338) = 0uLL;
    v28 += 20;
  }

  while (v28);
  v30 = 0xFFFFFFFFFFFFF80;
  do
  {
    *&__src[v30 + 466] = 0;
    *(&__src[v30 + 466] + 6) = 0;
    ++v30;
  }

  while (v30 * 16);
  LOWORD(__src[466]) = 0;
  DWORD1(__src[466]) = 0;
  memcpy(*(v1 + 16), __src, 0x1D28uLL);
  bzero(__src, 0xA80uLL);
  for (k = 0; k != 2688; k += 56)
  {
    v32 = __src + k;
    *v32 = 0;
    v32[52] = 0;
  }

  memset(&__src[168], 0, 24);
  memcpy(*(v1 + 24), __src, 0xA98uLL);
  bzero(__src, 0x9A30uLL);
  v33 = 0xFFFFFFFFFFFFFA0;
  do
  {
    v34 = (&__src[v33 + 797] + 8);
    *(v34 + 46) = 0uLL;
    v34[1] = 0uLL;
    v34[2] = 0uLL;
    *v34 = 0uLL;
    v33 += 4;
  }

  while (v33 * 16);
  bzero(&__src[797] + 8, 0xA20uLL);
  v35 = (&__src[960] + 4);
  v36 = 864;
  do
  {
    *(v35 - 12) = 0;
    *(v35 - 2) = 0;
    v35[1] = 0;
    v35[2] = 0;
    *v35 = 0;
    v35 = (v35 + 36);
    v36 -= 36;
  }

  while (v36);
  *(&__src[1013] + 1) = 0;
  LOWORD(__src[1014]) = 0;
  DWORD1(__src[1014]) = 0;
  BYTE8(__src[1014]) = 0;
  HIDWORD(__src[1014]) = 0;
  LOBYTE(__src[1015]) = 0;
  *(&__src[1015] + 8) = 0u;
  *(&__src[1016] + 8) = 0u;
  *(&__src[1017] + 8) = 0u;
  BYTE8(__src[1018]) = 0;
  memset(&__src[1019], 0, 432);
  v37 = -3168;
  do
  {
    v38 = (__src + v37);
    v38[1248] = 0uLL;
    v38[1247] = 0uLL;
    v38[1246] = 0uLL;
    v38[1245] = 0uLL;
    v38[1244] = 0uLL;
    *(&__src[1248] + v37 + 15) = 0;
    v37 += 88;
  }

  while (v37);
  v39 = -3168;
  do
  {
    v40 = (__src + v39);
    v40[1446] = 0uLL;
    v40[1445] = 0uLL;
    v40[1444] = 0uLL;
    v40[1443] = 0uLL;
    v40[1442] = 0uLL;
    *(&__src[1446] + v39 + 15) = 0;
    v39 += 88;
  }

  while (v39);
  v41 = -1296;
  do
  {
    v42 = __src + v41;
    *(v42 + 1524) = 0uLL;
    *(v42 + 1523) = 0uLL;
    *(&__src[1524] + v41 + 15) = 0;
    v41 += 36;
  }

  while (v41);
  *(&__src[1523] + 6) = 0;
  *&__src[1523] = 0;
  memset(&__src[1524], 0, 30);
  memset(&__src[1526], 0, 104);
  v43 = &__src[1532] + 8;
  v44 = 3700;
  do
  {
    *(v43 + 24) = 0;
    *v43 = 0;
    *(v43 + 1) = 0;
    *(v43 + 15) = 0;
    *(v43 + 24) = 0uLL;
    *(v43 + 40) = 0uLL;
    *(v43 + 56) = 0uLL;
    *(v43 + 72) = 0uLL;
    *(v43 + 86) = 0;
    v43 += 100;
    v44 -= 100;
  }

  while (v44);
  v45 = &__src[1763] + 12;
  v46 = 3700;
  do
  {
    *(v45 + 24) = 0;
    *v45 = 0;
    *(v45 + 1) = 0;
    *(v45 + 15) = 0;
    *(v45 + 24) = 0uLL;
    *(v45 + 40) = 0uLL;
    *(v45 + 56) = 0uLL;
    *(v45 + 72) = 0uLL;
    *(v45 + 86) = 0;
    v45 += 100;
    v46 -= 100;
  }

  while (v46);
  *(&__src[2466] + 1) = 0;
  bzero(&__src[1995], 0x747uLL);
  bzero(&__src[2111] + 8, 0x1629uLL);
  memcpy(*(v1 + 56), __src, 0x9A30uLL);
  *v63 = 0;
  v63[25] = 0;
  memset(__src, 0, 51);
  memset(v62, 0, 24);
  *&v63[4] = 0;
  *&v63[17] = 0;
  *&v63[12] = 0;
  *(&__src[3] + 12) = 0u;
  *(&__src[3] + 3) = 0u;
  v47 = *(v1 + 80);
  *v47 = 0;
  *(v47 + 8) = 0;
  *(v47 + 16) = 0;
  *(v47 + 20) = 0x500000002;
  *(v47 + 32) = *&v63[4];
  *(v47 + 46) = *&v63[18];
  *(v47 + 70) = 0u;
  *(v47 + 86) = 0u;
  *(v47 + 102) = 0u;
  *(v47 + 118) = 0u;
  *(v47 + 134) = 0u;
  *(v47 + 150) = 0u;
  *(v47 + 166) = 0u;
  *(v47 + 182) = 0u;
  *(v47 + 198) = 0u;
  *(v47 + 214) = 0u;
  *(v47 + 230) = 0u;
  *(v47 + 246) = 0u;
  *(v47 + 54) = 0u;
  *(v47 + 262) = 0u;
  *(v47 + 278) = 0u;
  *(v47 + 294) = 0u;
  *(v47 + 310) = 0u;
  *(v47 + 326) = 0u;
  *(v47 + 342) = 0u;
  *(v47 + 358) = 0u;
  *(v47 + 373) = 0u;
  v48 = __src[3];
  *(v47 + 421) = __src[2];
  *(v47 + 437) = v48;
  *(v47 + 449) = *(&__src[3] + 12);
  v49 = __src[1];
  *(v47 + 389) = __src[0];
  *(v47 + 405) = v49;
  bzero((v47 + 465), 0x5F9uLL);
  *(v47 + 1994) = *v62;
  *(v47 + 2010) = *&v62[16];
  *(v47 + 2018) = 0u;
  *(v47 + 2034) = 0;
  *v63 = 0;
  v63[25] = 0;
  memset(__src, 0, 76);
  memset(v62, 0, 24);
  *&v63[4] = 0;
  *&v63[17] = 0;
  *&v63[12] = 0;
  v50 = *(v1 + 88);
  *v50 = 0;
  *(v50 + 8) = 0;
  *(v50 + 16) = 0;
  *(v50 + 20) = 0x500000002;
  *(v50 + 32) = *&v63[4];
  *(v50 + 46) = *&v63[18];
  *(v50 + 70) = 0u;
  *(v50 + 86) = 0u;
  *(v50 + 102) = 0u;
  *(v50 + 118) = 0u;
  *(v50 + 134) = 0u;
  *(v50 + 150) = 0u;
  *(v50 + 166) = 0u;
  *(v50 + 182) = 0u;
  *(v50 + 198) = 0u;
  *(v50 + 214) = 0u;
  *(v50 + 230) = 0u;
  *(v50 + 246) = 0u;
  *(v50 + 54) = 0u;
  *(v50 + 262) = 0u;
  *(v50 + 278) = 0u;
  *(v50 + 294) = 0u;
  *(v50 + 310) = 0u;
  *(v50 + 326) = 0u;
  *(v50 + 342) = 0u;
  *(v50 + 358) = 0u;
  *(v50 + 373) = 0u;
  v51 = __src[3];
  *(v50 + 421) = __src[2];
  *(v50 + 437) = v51;
  *(v50 + 449) = *(&__src[3] + 12);
  v52 = __src[1];
  *(v50 + 389) = __src[0];
  *(v50 + 405) = v52;
  bzero((v50 + 465), 0x5F9uLL);
  *(v50 + 1994) = *v62;
  *(v50 + 2010) = *&v62[16];
  *(v50 + 2018) = 0u;
  *(v50 + 2034) = 0;
  memset(v63, 0, 35);
  LODWORD(__src[0]) = 0;
  WORD2(__src[0]) = 0;
  bzero(__src + 6, 0x48CuLL);
  v53 = *(v1 + 104);
  *v53 = 0;
  *(v53 + 8) = 0;
  *(v53 + 16) = 0;
  v54 = *&v63[16];
  *(v53 + 18) = *v63;
  *(v53 + 34) = v54;
  *(v53 + 49) = *&v63[31];
  *(v53 + 53) = 0;
  *(v53 + 54) = 0;
  memcpy((v53 + 58), __src, 0x492uLL);
  bzero((v53 + 1228), 0x754uLL);
  bzero(*(v1 + 112), 0xD820uLL);
  if (gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v55))
  {
    v56 = *(v1 + 128);
    *(v56 + 288) = 0;
    *(v56 + 256) = 0u;
    *(v56 + 272) = 0u;
    *(v56 + 224) = 0u;
    *(v56 + 240) = 0u;
    *(v56 + 192) = 0u;
    *(v56 + 208) = 0u;
    *(v56 + 160) = 0u;
    *(v56 + 176) = 0u;
    *(v56 + 128) = 0u;
    *(v56 + 144) = 0u;
    *(v56 + 96) = 0u;
    *(v56 + 112) = 0u;
    *(v56 + 64) = 0u;
    *(v56 + 80) = 0u;
    *(v56 + 32) = 0u;
    *(v56 + 48) = 0u;
    *v56 = 0u;
    *(v56 + 16) = 0u;
    bzero(__src, 0x2068uLL);
    v57 = &__src[75] + 8;
    v58 = 6912;
    do
    {
      *v57 = 0;
      v57[4] = 0;
      *(v57 + 8) = 0uLL;
      *(v57 + 24) = 0uLL;
      *(v57 + 40) = 0uLL;
      *(v57 + 56) = 0uLL;
      *(v57 + 72) = 0uLL;
      *(v57 + 88) = 0uLL;
      *(v57 + 97) = 0uLL;
      *(v57 + 15) = 0;
      *(v57 + 16) = 0;
      *(v57 + 135) = 0;
      v57 += 144;
      v58 -= 144;
    }

    while (v58);
    *(&__src[517] + 4) = 0u;
    *(&__src[515] + 8) = 0u;
    *(&__src[516] + 8) = 0u;
    *(&__src[513] + 8) = 0u;
    *(&__src[514] + 8) = 0u;
    *(&__src[511] + 8) = 0u;
    *(&__src[512] + 8) = 0u;
    *(&__src[509] + 8) = 0u;
    *(&__src[510] + 8) = 0u;
    *(&__src[507] + 8) = 0u;
    *(&__src[508] + 8) = 0u;
    memcpy(*(v1 + 120), __src, 0x2064uLL);
    v59 = *(v1 + 136);
    *(v59 + 91) = 0u;
    v59[4] = 0u;
    v59[5] = 0u;
    v59[2] = 0u;
    v59[3] = 0u;
    *v59 = 0u;
    v59[1] = 0u;
    bzero(*(v1 + 144), 0x3F8uLL);
    bzero(*(v1 + 152), 0x2804uLL);
  }

  bzero(*(v1 + 304), 0x18C8uLL);
  v60 = *(v1 + 312);

  bzero(v60, 0x30A8uLL);
}

double GNSS_HL_Data_Bases_Init(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v17 = *MEMORY[0x29EDCA608];
  *(*(v1 + 8) + 16) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  Init_DB_SV_Nav_Mess(*(v1 + 56));
  v2 = *(v1 + 8);
  v3 = *(v1 + 48);
  v4 = *v2;
  LODWORD(v2) = v2[4];
  *v3 = 0;
  *(v3 + 4) = 0;
  *(v3 + 8) = v4;
  *(v3 + 12) = v2;
  *(v3 + 16) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = -1;
  *(v3 + 52) = -1;
  *(v3 + 66) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 92) = 0;
  *(v3 + 54) = 0;
  *(v3 + 61) = 0;
  *(v3 + 96) = 0;
  *(v3 + 100) = v4;
  v5 = *(v1 + 32);
  *(v5 + 176) = -25187;
  *&v6 = 0x9D9D9D9D9D9D9D9DLL;
  *(&v6 + 1) = 0x9D9D9D9D9D9D9D9DLL;
  *(v5 + 144) = v6;
  *(v5 + 160) = v6;
  *(v5 + 112) = v6;
  *(v5 + 128) = v6;
  *(v5 + 80) = v6;
  *(v5 + 96) = v6;
  *(v5 + 48) = v6;
  *(v5 + 64) = v6;
  *(v5 + 16) = v6;
  *(v5 + 32) = v6;
  *v5 = v6;
  memset_pattern16((v5 + 178), &memset_pattern, 0x164uLL);
  *(v5 + 534) = 0;
  Init_DB_Sys_Status(*(v1 + 72));
  Init_DB_Nav_Soln(*(v1 + 48), *(v1 + 72), *(v1 + 88));
  memcpy(*(v1 + 80), *(v1 + 88), 0x800uLL);
  Init_DB_Acq_Aid_Table(*(v1 + 88), *(v1 + 56), *(v1 + 40));
  inited = Init_DB_Sensor(*(v1 + 112));
  if (gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(inited))
  {
    v9 = *(v1 + 72);
    v10 = *(v1 + 136);
    *v10 = *(v9 + 948);
    *(v10 + 6) = *(v9 + 43);
    *(v10 + 4) = g_Enable_LCD_Debug;
    GN_GPS_Get_LibVersion((v10 + 7));
    v11 = *(v1 + 120);
    bzero(v15, 0x2068uLL);
    v12 = &v15[75] + 8;
    v13 = 6912;
    do
    {
      *v12 = 0;
      v12[4] = 0;
      *(v12 + 8) = 0uLL;
      *(v12 + 24) = 0uLL;
      *(v12 + 40) = 0uLL;
      *(v12 + 56) = 0uLL;
      *(v12 + 72) = 0uLL;
      *(v12 + 88) = 0uLL;
      *(v12 + 97) = 0uLL;
      *(v12 + 15) = 0;
      *(v12 + 16) = 0;
      *(v12 + 135) = 0;
      v12 += 144;
      v13 -= 144;
    }

    while (v13);
    *(&v15[517] + 4) = 0u;
    *(&v15[515] + 8) = 0u;
    *(&v15[516] + 8) = 0u;
    *(&v15[513] + 8) = 0u;
    *(&v15[514] + 8) = 0u;
    *(&v15[511] + 8) = 0u;
    *(&v15[512] + 8) = 0u;
    *(&v15[509] + 8) = 0u;
    *(&v15[510] + 8) = 0u;
    *(&v15[507] + 8) = 0u;
    *(&v15[508] + 8) = 0u;
    memcpy(v11, v15, 0x2064uLL);
    Init_DB_SA_Assistance(*(v1 + 328), *(v1 + 128));
    v14 = *(v1 + 144);
    memset(v16, 0, sizeof(v16));
    memset(v15, 0, 410);
    memset(&v15[519], 0, 48);
    memcpy(v14, v16, 0x138uLL);
    *(v14 + 312) = 0u;
    *(v14 + 328) = 0u;
    *(v14 + 344) = 0u;
    *(v14 + 360) = 0u;
    *(v14 + 376) = 0u;
    *(v14 + 392) = 0u;
    *(v14 + 408) = 0u;
    *(v14 + 424) = 0u;
    *(v14 + 440) = 0u;
    *(v14 + 456) = 0u;
    *(v14 + 472) = 0u;
    *(v14 + 488) = 0u;
    *(v14 + 504) = 0u;
    *(v14 + 520) = 0u;
    *(v14 + 536) = 0u;
    memcpy((v14 + 552), v15, 0x19AuLL);
    *(v14 + 962) = *(&v15[520] + 8);
    *(v14 + 978) = *(&v15[521] + 1);
    result = *&v15[519];
    *(v14 + 986) = v15[519];
    *(v14 + 1002) = *&v15[520];
    *(v14 + 1010) = 0;
    *(v14 + 1014) = 0;
  }

  return result;
}

double GNSS_HL_Data_Bases_Init_NV(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v14 = *MEMORY[0x29EDCA608];
  *(*(v1 + 8) + 16) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  Init_DB_SV_Nav_Mess_NV(*(v1 + 56));
  Init_DB_Time_Sync_NV(*(v1 + 8), *(v1 + 48), *(v1 + 16));
  v2 = *(v1 + 32);
  *(v2 + 176) = -25187;
  *&v3 = 0x9D9D9D9D9D9D9D9DLL;
  *(&v3 + 1) = 0x9D9D9D9D9D9D9D9DLL;
  *(v2 + 144) = v3;
  *(v2 + 160) = v3;
  *(v2 + 112) = v3;
  *(v2 + 128) = v3;
  *(v2 + 80) = v3;
  *(v2 + 96) = v3;
  *(v2 + 48) = v3;
  *(v2 + 64) = v3;
  *(v2 + 16) = v3;
  *(v2 + 32) = v3;
  *v2 = v3;
  memset_pattern16((v2 + 178), &memset_pattern, 0x164uLL);
  *(v2 + 534) = 0;
  Init_DB_Sys_Status_NV(*(v1 + 48), *(v1 + 72));
  Init_DB_Nav_Soln(*(v1 + 48), *(v1 + 72), *(v1 + 88));
  memcpy(*(v1 + 80), *(v1 + 88), 0x800uLL);
  Init_DB_Acq_Aid_Table(*(v1 + 88), *(v1 + 56), *(v1 + 40));
  inited = Init_DB_Sensor(*(v1 + 112));
  if (gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(inited))
  {
    v6 = *(v1 + 72);
    v7 = *(v1 + 136);
    *v7 = *(v6 + 948);
    *(v7 + 6) = *(v6 + 43);
    *(v7 + 4) = g_Enable_LCD_Debug;
    GN_GPS_Get_LibVersion((v7 + 7));
    v8 = *(v1 + 120);
    bzero(v12, 0x2068uLL);
    v9 = &v12[75] + 8;
    v10 = 6912;
    do
    {
      *v9 = 0;
      v9[4] = 0;
      *(v9 + 8) = 0uLL;
      *(v9 + 24) = 0uLL;
      *(v9 + 40) = 0uLL;
      *(v9 + 56) = 0uLL;
      *(v9 + 72) = 0uLL;
      *(v9 + 88) = 0uLL;
      *(v9 + 97) = 0uLL;
      *(v9 + 15) = 0;
      *(v9 + 16) = 0;
      *(v9 + 135) = 0;
      v9 += 144;
      v10 -= 144;
    }

    while (v10);
    *(&v12[517] + 4) = 0u;
    *(&v12[515] + 8) = 0u;
    *(&v12[516] + 8) = 0u;
    *(&v12[513] + 8) = 0u;
    *(&v12[514] + 8) = 0u;
    *(&v12[511] + 8) = 0u;
    *(&v12[512] + 8) = 0u;
    *(&v12[509] + 8) = 0u;
    *(&v12[510] + 8) = 0u;
    *(&v12[507] + 8) = 0u;
    *(&v12[508] + 8) = 0u;
    memcpy(v8, v12, 0x2064uLL);
    Init_DB_SA_Assistance(*(v1 + 328), *(v1 + 128));
    v11 = *(v1 + 144);
    memset(v13, 0, sizeof(v13));
    memset(v12, 0, 410);
    memset(&v12[519], 0, 48);
    memcpy(v11, v13, 0x138uLL);
    *(v11 + 312) = 0u;
    *(v11 + 328) = 0u;
    *(v11 + 344) = 0u;
    *(v11 + 360) = 0u;
    *(v11 + 376) = 0u;
    *(v11 + 392) = 0u;
    *(v11 + 408) = 0u;
    *(v11 + 424) = 0u;
    *(v11 + 440) = 0u;
    *(v11 + 456) = 0u;
    *(v11 + 472) = 0u;
    *(v11 + 488) = 0u;
    *(v11 + 504) = 0u;
    *(v11 + 520) = 0u;
    *(v11 + 536) = 0u;
    memcpy((v11 + 552), v12, 0x19AuLL);
    *(v11 + 962) = *(&v12[520] + 8);
    *(v11 + 978) = *(&v12[521] + 1);
    result = *&v12[519];
    *(v11 + 986) = v12[519];
    *(v11 + 1002) = *&v12[520];
    *(v11 + 1010) = 0;
    *(v11 + 1014) = 0;
  }

  return result;
}

double GNSS_HL_Data_Bases_TimeSynch(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[6];
  v4 = a1[1];
  v6 = a1[10];
  v5 = a1[11];
  if (*(v3 + 8))
  {
    gn_report_assertion_failure("GNSS_HL_Data_Bases_TimeSynch: DBts TTick not 0");
  }

  if (!*(v3 + 12))
  {
    gn_report_assertion_failure("GNSS_HL_Data_Bases_TimeSynch: DBts OS_Time_ms = 0");
  }

  if (!*v4)
  {
    gn_report_assertion_failure("GNSS_HL_Data_Bases_TimeSynch: DBtt TTick = 0");
  }

  v7 = v4[4];
  if (!v7)
  {
    gn_report_assertion_failure("GNSS_HL_Data_Bases_TimeSynch: DBtt OS_Time_ms = 0");
    v7 = v4[4];
  }

  v8 = *(v3 + 12);
  if (v7 < v8)
  {
    EvLog_nd("GNSS_HL_Data_Bases_TimeSynch: WARNING - DBtt behind DBts", 2, a3, v7, v8);
    LODWORD(v8) = *(v3 + 12);
  }

  v9 = *(v3 + 8);
  v10 = *v3;
  if (*v3 < 1)
  {
    v12 = *v4;
    v11 = v4[4];
    v13 = *v4;
  }

  else
  {
    v11 = v4[4];
    v12 = *v4;
    v13 = v8 - v11 + *v4;
  }

  *(v3 + 8) = v13;
  *(v3 + 12) = v11;
  EvLog_v("GNSS_HL_Data_Bases_TimeSynch: ts %d %g %u %u orig %u %u  ns %u %u tt %u %u %u", v10, *(v3 + 24), v13, v11, v9, v8, *(v6 + 32), *(v6 + 36), v12, v11, v4[3]);
  if (!*(v6 + 32))
  {
    result = *(v3 + 8);
    *(v6 + 32) = result;
  }

  if (!*(v5 + 32))
  {
    result = *(v3 + 8);
    *(v5 + 32) = result;
  }

  return result;
}

void GM_Set_MSec_TOW_NSSS(_OWORD *a1, uint64_t a2, double *a3, int *a4, double a5)
{
  v23 = *MEMORY[0x29EDCA608];
  if (*(a2 + 4) == 1)
  {
    v9 = a1[1];
    *v19 = *a1;
    v20 = v9;
    v21 = a1[2];
    v22 = *(a1 + 6);
    GM_Aid_NSSS_Meas(a2, 0, v19);
    v10 = *a3;
    v11 = vcvtd_n_f64_u32(*(a2 + 16), 1uLL) + Comp_Sig_TOT(*v19, *&v19[2], v19[4], *a3, a5) * 1000.0;
    v12 = -0.5;
    if (v11 <= 0.0)
    {
      v13 = -0.5;
    }

    else
    {
      v13 = 0.5;
    }

    v14 = v11 + v13;
    if (v14 <= 2147483650.0)
    {
      if (v14 >= -2147483650.0)
      {
        v15 = v14 * 0.001;
      }

      else
      {
        v15 = -2147483.65;
      }
    }

    else
    {
      v15 = 2147483.65;
    }

    v16 = (v15 - v10) * 1000.0;
    if (v16 > 0.0)
    {
      v12 = 0.5;
    }

    v17 = v16 + v12;
    if (v17 <= 2147483650.0)
    {
      if (v17 >= -2147483650.0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0x80000000;
      }
    }

    else
    {
      v18 = 0x7FFFFFFF;
    }

    *a4 = v18;
    *a3 = v15;
  }
}

char **SV_Data_Decode_Update_Wrapper(char **a1)
{
  GNSS_Validate_p_list(a1, "SV_Data_Decode_Update_Wrapper: Entry");
  SV_Data_Decode(a1[23], a1[30], a1[3], a1[9], a1[4], a1[6], a1[7]);

  return GNSS_Validate_p_list(a1, "SV_Data_Decode_Update_Wrapper:  Exit");
}

char **GM_Cross_Check_Meas_Aiding(char **result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = 1732;
  v5 = 6796;
  v6 = 4428;
  v7 = 4438;
  do
  {
    if (*(v1 + v6) == 1 && *(v1 + v5) >= 10)
    {
      v8 = *(v1 + v7);
      if (v8 >= 2)
      {
        if (v8 == 2)
        {
          v9 = 5;
        }

        else
        {
          v9 = 3;
        }

        if ((*(v1 + v2 + 8) & 0x300) != 0)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0x7FFFLL;
        }

        v11 = (*(v1 + v2 + 8) & 0x100) == 0 && (*(v1 + v2 + 8) & 0x300) != 0;
        v12 = &v1[v3];
        v13 = *(v1 + v4 - 4) - HIDWORD(v1[v3 + 556]);
        if (v13 < 28800)
        {
          if (v13 <= -28801)
          {
            v13 += 57600 * ((28800 - v13) / 0xE100u);
          }
        }

        else
        {
          v13 = (v13 + 28800) % 0xE100u - 28800;
        }

        v14 = *(v1 + v2 + 2);
        v15 = &v1[v3];
        result = *(v12 + 1114);
        v16 = *(v12 + 2225);
        v17 = *(v1 + v4);
        v18 = v17 - result + 1534500 * v13;
        if (v18 < 0)
        {
          v19 = -511;
        }

        else
        {
          v19 = 511;
        }

        v20 = (v19 + v18) / 1023;
        if (!v11)
        {
          v20 %= 20;
        }

        v21 = v18 % 1023;
        v22 = v21 + 1023;
        if (v21 >= -510)
        {
          v22 = v21;
        }

        if (v21 <= 511)
        {
          v23 = v22;
        }

        else
        {
          v23 = (v21 - 1023);
        }

        v24 = v20 + 20;
        if (v20 >= -9)
        {
          v24 = v20;
        }

        if (v20 <= 10)
        {
          v25 = v24;
        }

        else
        {
          v25 = (v20 - 20);
        }

        if (v23 >= 0)
        {
          v26 = v23;
        }

        else
        {
          v26 = -v23;
        }

        v27 = g_Enable_Event_Log;
        if (v26 > v16 && g_Enable_Event_Log >= 3u)
        {
          v31 = *(v1 + v4);
          v32 = result;
          v33 = v11;
          EvLog_nd("GMCCMA: PR MAX chips ", 6, v15, (*(v1 + 1692) - *(v15 + 4424)), v14, v17, result, v23, v16);
          v15 = &v1[v3];
          v17 = v31;
          result = v32;
          v11 = v33;
          v27 = g_Enable_Event_Log;
        }

        if (v25 >= 0)
        {
          v29 = v25;
        }

        else
        {
          v29 = -v25;
        }

        if (v29 > v10 && v27 >= 3)
        {
          result = EvLog_nd("GMCCMA: PR MAX ms ", 7, v15, (*(v1 + 1692) - *(v15 + 4424)), v14, v17, result, v25, v10, v11);
        }
      }
    }

    v3 += 6;
    v4 += 56;
    v5 += 4;
    v7 += 48;
    v6 += 48;
    v2 += 36;
  }

  while (v3 != 288);
  return result;
}

uint64_t GLON_Calc_State_Table_Eph(__int16 a1, __int16 a2, int a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v32 = *MEMORY[0x29EDCA608];
  v9 = *(a4 + 12) / 900;
  if (*(a5 + 184) == 1 && *(a5 + 166) == v9)
  {
    v10 = *(a5 + 168);
  }

  else
  {
    *(a5 + 172) = 0u;
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
    *a5 = *(a4 + 24);
    *(a5 + 8) = *(a4 + 48);
    *(a5 + 16) = *(a4 + 72);
    *(a5 + 24) = *(a4 + 32);
    *(a5 + 32) = *(a4 + 56);
    *(a5 + 40) = *(a4 + 80);
    *(a5 + 48) = *(a4 + 40);
    *(a5 + 56) = *(a4 + 64);
    *(a5 + 64) = *(a4 + 88);
    *(a5 + 80) = 0;
    *(a5 + 88) = 0;
    *(a5 + 72) = 0;
    v10 = *(a4 + 12);
    *(a5 + 168) = v10;
    *(a5 + 172) = *(a4 + 126);
    *(a5 + 166) = v9;
    *(a5 + 184) = 1;
    *(a5 + 176) = 2;
    *(a5 + 180) = *(a4 + 20);
    *(a5 + 112) = gloURA_table[*(a4 + 125)];
  }

  v11 = 0;
  *v27 = 0;
  v28 = 0.0;
  v29[0] = a5;
  v29[1] = (a5 + 24);
  v30 = (a5 + 48);
  v31 = v10;
  v26 = 0.0;
  do
  {
    v12 = a3 - v31 + 86400;
    if (a3 - v31 >= -43200)
    {
      v12 = a3 - v31;
    }

    if (a3 - v31 <= 43199)
    {
      v13 = v12;
    }

    else
    {
      v13 = a3 - v31 - 86400;
    }

    if (v13 <= -120)
    {
      v14 = -120;
    }

    else
    {
      v14 = v13;
    }

    if (v14 >= 120)
    {
      v15 = 120;
    }

    else
    {
      v15 = v14;
    }

    *(a5 + 48) = *(a4 + 40);
    *(a5 + 56) = *(a4 + 64);
    *(a5 + 64) = *(a4 + 88);
    if (v13)
    {
      GLON_RungeKutta4(v29, v15);
      ++v11;
    }

    else
    {
      GLON_RK_CalcAccel(v29, v30);
    }

    if (v15 >= 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = -v15;
    }
  }

  while (v16 > 0x3C);
  *a6 += v11;
  *(a5 + 168) = a3;
  *(a5 + 172) = a2;
  *(a5 + 174) = a1;
  API_Get_UTC_Cor(1, &v28);
  result = Glon_To_GPS_Time(*(a5 + 174), *(a5 + 172), *(a5 + 168), v28, &v27[1], v27, &v26);
  *(a5 + 160) = v26;
  *(a5 + 164) = LOWORD(v27[0]) + (LOWORD(v27[1]) << 10);
  v18 = a3 - *(a4 + 12);
  v19 = v18 + 86400;
  if (v18 >= -43200)
  {
    v19 = a3 - *(a4 + 12);
  }

  if (v18 <= 43199)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18 - 86400;
  }

  v21 = *(a4 + 104);
  *(a5 + 96) = -(*(a4 + 96) + v21 * v20);
  if ((v20 & 0x80000000) != 0)
  {
    v20 = -v20;
  }

  if (v20 >= 0x385)
  {
    v22 = v20 * 0.000277777778 * (v20 * 0.000277777778 * (v20 * 0.000277777778)) * 7.33333333 + v20 * 0.000277777778 * (v20 * 0.000277777778) * -2.0;
    *(a5 + 112) = gloURA_table[*(a4 + 125)] + v22 * v22;
  }

  *(a5 + 104) = v21;
  return result;
}

uint64_t NK_Set_TOW_Status(uint64_t result, uint64_t a2)
{
  if (*(a2 + 22776) != 1 || (v2 = *(a2 + 22816), v2 > 900.0) || *(result + 11048) || *(a2 + 2811) || *(result + 128) != 1)
  {
    v7 = *(a2 + 24224);
    if (v7 >= *(a2 + 24232))
    {
      v7 = *(a2 + 24232);
    }

    v8 = *(a2 + 24240);
    if (v7 < v8)
    {
      v8 = v7;
    }

    v9 = *(result + 11048);
    if (v9 || (v10 = 0.0, *(a2 + 12) >= 9))
    {
      v10 = v8 * 1.11265006e-17;
    }

    if ((*(a2 + 16) & 1) == 0)
    {
      v10 = v10 + *(a2 + 24256) * 0.000001;
    }

    v11 = sqrt(v10);
    if (v11 <= 200.0)
    {
      v14 = v11 * 1000000.0;
      v15 = -0.5;
      if (v14 > 0.0)
      {
        v15 = 0.5;
      }

      v16 = v14 + v15;
      if (v16 <= 2147483650.0)
      {
        if (v16 >= -2147483650.0)
        {
          v13 = v16;
        }

        else
        {
          v13 = 0x80000000;
        }
      }

      else
      {
        v13 = 0x7FFFFFFF;
      }

      v17 = 11;
      while (g_TOW_Stat_Upgrade_us_Sigma_Table[v17] < v13)
      {
        if (--v17 <= 1u)
        {
          v12 = 1;
          goto LABEL_33;
        }
      }

      v12 = v17;
    }

    else
    {
      v12 = 0;
      v13 = 0x7FFFFFFF;
    }

LABEL_33:
    v18 = *(a2 + 12);
    if (v18 < v12)
    {
      v19 = *(a2 + 22848) == 1 && *(a2 + 22888) < 900000000.0;
      if (v12 == 11)
      {
        if ((*(result + 128) & 1) != 0 || *(a2 + 24752) > 30000.0 && !v19)
        {
          v12 = 9;
        }

        else
        {
          v12 = 11;
        }
      }

      *(a2 + 12) = v12;
      v18 = v12;
    }

    if (v9 && (*(result + 128) & 1) == 0)
    {
      v20 = 1;
      while (g_TOW_Stat_Degrade_us_Sigma_Table[v20] >= v13)
      {
        if (++v20 == 12)
        {
          LODWORD(v20) = 0;
          break;
        }
      }

      if (v18 != 11 || v13 <= 1700)
      {
        v22 = 11;
      }

      else
      {
        v22 = 10;
      }

      if (v13 < 3001)
      {
        LODWORD(v20) = v22;
      }

      if (v18 > v20)
      {
        *(a2 + 12) = v20;
        v18 = v20;
      }
    }
  }

  else
  {
    *(a2 + 646) = *(a2 + 22758);
    v3 = *(a2 + 22760);
    v4 = -0.5;
    if (v3 * 1000.0 > 0.0)
    {
      v4 = 0.5;
    }

    v5 = v3 * 1000.0 + v4;
    if (v5 <= 2147483650.0)
    {
      if (v5 >= -2147483650.0)
      {
        v6 = v5 * 0.001;
      }

      else
      {
        v6 = -2147483.65;
      }
    }

    else
    {
      v6 = 2147483.65;
    }

    *(a2 + 632) = v6;
    if (*(a2 + 22848) == 1)
    {
      *(a2 + 736) = v6 - v3;
      *(a2 + 24696) = fmin(sqrt(*(a2 + 22888)), 9999000.0);
    }

    *(a2 + 24704) = fmin(sqrt(v2) * 299792.458, 9999000.0);
    if (v2 <= 0.0225)
    {
      v18 = 11;
    }

    else if (v2 <= 0.5625)
    {
      v18 = 10;
    }

    else if (v2 <= 9.0)
    {
      v18 = 9;
    }

    else if (v2 <= 100.0)
    {
      v18 = 8;
    }

    else
    {
      v18 = 7;
    }

    *(a2 + 12) = v18;
  }

  *(a2 + 640) = v18;
  return result;
}

BOOL SuplInitRecdVer2::GetRequestedGNSSList(SuplInitRecdVer2 *this)
{
  if (!*(*(*this + 16) + 246))
  {
    return 0;
  }

  SuplUtils::GetInstance(this);
  return *(*(*this + 16) + 552) != 0;
}

void NK_Bit_Sync_Check(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a2 + 233) & 1) == 0 && *(a3 + 12) == 11 && *(a3 + 24752) < 149896.229)
  {
    v6 = 0;
    v7 = a1 + 316;
    v8 = a2 + 6696;
    v9 = a4 + 416;
    v10 = (a1 + 78);
    do
    {
      if (*(a3 + v6 + 2960) == 1 && (~*(v7 + 2 * v6) & 0x300) == 0)
      {
        v11 = a3 + 2960 + 8 * v6;
        if (fabs(*(v11 + 1872)) > 149896.229 && *(a3 + v6 + 49) == 1)
        {
          *(a3 + v6 + 2960) = 0;
          *(a3 + 4 * v6 + 3056) = 12;
          --*(a3 + 2811);
          ++*(a3 + 2812);
          *(v8 + v6) = 0;
          *(a4 + v6 + 365) |= 1u;
          *(v9 + 4 * v6) = *a3;
          v12 = *(v11 + 1872);
          if (v12 <= 0.0)
          {
            v13 = -0.5;
          }

          else
          {
            v13 = 0.5;
          }

          v14 = v12 + v13;
          if (v14 <= 2147483650.0)
          {
            if (v14 >= -2147483650.0)
            {
              v15 = v14;
            }

            else
            {
              v15 = 0x80000000;
            }
          }

          else
          {
            v15 = 0x7FFFFFFF;
          }

          EvCrt_v("ChanReset %d : NKBSC %d %d   %d", v6, *v10, *(v10 - 2), v15);
        }
      }

      ++v6;
      v10 += 4;
    }

    while (v6 != 48);
  }
}

uint64_t Gnm26_03SendXRestoreFixedMeCalib(const void *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  memset_s(__s, 0x7FCuLL, 0, 0x7FCuLL);
  qmemcpy(v3, "XmM", sizeof(v3));
  memcpy(__s, a1, sizeof(__s));
  return Gnm07_06EncodeNSend(v3, __s, "Restore NV,m");
}

uint64_t Gnm26_04SendXRestoreVariableMeNv(const void *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  memset_s(__s, 0x7FCuLL, 0, 0x7FCuLL);
  qmemcpy(v3, "XvM", sizeof(v3));
  memcpy(__s, a1, sizeof(__s));
  return Gnm07_06EncodeNSend(v3, __s, "Restore NV,v");
}

uint64_t Gnm26_12SendXBkupMeAck(_DWORD *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  memset_s(__s, 0x7FCuLL, 0, 0x7FCuLL);
  qmemcpy(v3, "XeM", sizeof(v3));
  __s[0] = *a1;
  return Gnm07_06EncodeNSend(v3, __s, "Backup NV Ack,e");
}

void *Gnm26_21HandleXMessages(unsigned __int8 *a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 1);
  if (v4 <= 0x50)
  {
    if (v4 == 69)
    {
      if ((Gnm29_04BackupMeNv(a1) & 1) == 0)
      {
        *&__str[2] = 0;
        __str[0] = 71;
        __str[1] = *a1;
        Gnm26_12SendXBkupMeAck(__str);
      }

      return 0;
    }

    if (v4 == 77)
    {

      return Gnm27_22HandleFixedMeRestoreAck(a1);
    }

    goto LABEL_10;
  }

  if (v4 != 86)
  {
    if (v4 == 81)
    {
      Gnm25_15HandleReqRestoreNv(*a1);
      return 0;
    }

LABEL_10:
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MID,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm26_21HandleXMessages", 778, *(a2 + 1));
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
    }

    return 0;
  }

  return Gnm29_02HandleMeNvRestoreAck(a1);
}

uint64_t Gnm54_01HandleSetPowerRpt(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_SET_POWER_REPORT\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm54_01HandleSetPowerRpt");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (*(a1 + 12))
      {
        v5 = 89;
      }

      else
      {
        v5 = 78;
      }

      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status,%c\n", v4, "GNM", 73, "Gnm54_01HandleSetPowerRpt", v5);
      LbsOsaTrace_WriteLog(0xBu, __str, v6, 4, 1);
    }

    Hal_SetPowerReportStatus(*(a1 + 12), Gnm54_02PowerRpt);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm54_01HandleSetPowerRpt", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 0, 1);
  }

  return 0;
}

double Gnm54_02PowerRpt(int a1, char *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    if (a1 == 5)
    {
      v3 = *a2;
      v4 = gnssOsa_Calloc("Gnm54_02PowerRpt", 62, 1, 0x10uLL);
      if (v4)
      {
        if ((v3 & 2) != 0)
        {
          v6 = 0;
        }

        else
        {
          v6 = 11;
        }

        v4[12] = v6;
        v4[13] = v3 & 1;

        AgpsSendFsmMsg(128, 128, 8406784, v4);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CBType,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 87, "Gnm54_02PowerRpt", 1028, a1);
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
    }
  }

  return result;
}

uint64_t Gnm54_03HandleSetPowerRptRsp(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_SET_POWER_REPORT_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm54_03HandleSetPowerRptRsp");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    g_PowerRepEnbStatus = *(a1 + 13);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (g_PowerRepEnbStatus)
      {
        v5 = 89;
      }

      else
      {
        v5 = 78;
      }

      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PowerReportEnabled,%c\n", v4, "GNM", 73, "Gnm54_03HandleSetPowerRptRsp", v5);
      LbsOsaTrace_WriteLog(0xBu, __str, v6, 4, 1);
    }

    Gnm11_00ApiStatusCB(*(a1 + 12), 0, 0, 15);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm54_03HandleSetPowerRptRsp", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 0, 1);
  }

  return 0;
}

uint64_t Gnm54_04HandlePowRepData(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_POW_REP_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm54_04HandlePowRepData");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if ((g_PowerRepEnbStatus & 1) == 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PowerRep ReqDisabled\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm54_04HandlePowRepData", 1028);
    v10 = 2;
LABEL_15:
    LbsOsaTrace_WriteLog(0xBu, __str, v9, v10, 1);
    return 0;
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 69, "Gnm54_04HandlePowRepData", 517);
    v10 = 0;
    goto LABEL_15;
  }

  v4 = qword_2A19268D8;
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
  if (!v4)
  {
    if (!IsLoggingAllowed)
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PowerReport\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm54_04HandlePowRepData", 258);
    v10 = 4;
    goto LABEL_15;
  }

  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: BBtick,%u,MeasIntvl,%ums,ActiveIntvl,%ums,Power,%fmW\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm54_04HandlePowRepData", *(a1 + 12), *(a1 + 16), *(a1 + 20), *(a1 + 24));
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
  }

  *__str = *(a1 + 12);
  v15 = *(a1 + 20);
  v16 = *(a1 + 24);
  qword_2A19268D8(0, __str);
  return 0;
}

void pos_protocol_PpduCallback(unsigned int a1, size_t a2, const void *a3)
{
  v97 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx length,%d or msg\n", (*&g_MacClockTicksToMsRelation * v16), "PSP", 69, "pos_protocol_PpduCallback", 513, a2);
      LbsOsaTrace_WriteLog(0x13u, __str, v17, 0, 1);
    }

    return;
  }

  memset_s(&v86 + 8, 0x60uLL, 0, 0x60uLL);
  memset_s(&v86 + 8, 0x60uLL, 0, 0x60uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: msgType,%d\n", (*&g_MacClockTicksToMsRelation * v6), "PSP", 73, "pos_protocol_PpduCallback", a1);
    LbsOsaTrace_WriteLog(0x13u, __str, v7, 4, 1);
  }

  if (a1 > 4)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PPDU msg\n", (*&g_MacClockTicksToMsRelation * v18), "PSP", 69, "pos_protocol_PpduCallback", 770);
      LbsOsaTrace_WriteLog(0x13u, __str, v19, 0, 1);
    }

    return;
  }

  *&v86 = __PAIR64__(a2, a1);
  memcpy_s("pos_protocol_PpduCallback", 62, &v86 + 8, a2, a3, a2);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 68, "Process_PPDU_Request");
    LbsOsaTrace_WriteLog(0x13u, __str, v9, 5, 1);
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        if (v87)
        {
          v21 = 84;
        }

        else
        {
          v21 = 70;
        }

        if (BYTE1(v87))
        {
          v22 = 84;
        }

        else
        {
          v22 = 70;
        }

        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Active Session PDUSize,%u,TypeOfPayload,%u,Handle,%u,isEmergency,%c,isLogsDisabled,%c,sessionType,%u\n", v20, "PSP", 77, "TracePPDUContents", LOWORD(v91[0]), __src, DWORD2(v86), v22, v21, HIDWORD(v86));
        LbsOsaTrace_WriteLog(0x13u, __str, v23, 3, 1);
      }

      PPDU_TraceBuffer(v91[1], LOWORD(v91[0]));
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v32 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (BYTE9(v86))
      {
        v33 = 84;
      }

      else
      {
        v33 = 70;
      }

      if (BYTE8(v86))
      {
        v34 = 84;
      }

      else
      {
        v34 = 70;
      }

      if (BYTE10(v86))
      {
        v35 = 84;
      }

      else
      {
        v35 = 70;
      }

      v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GPS,Autonomous,%c,Assisted,%c,Based,%c\n", v32, "PSP", 77, "TracePPDUContents", v35, v34, v33);
      LbsOsaTrace_WriteLog(0x13u, __str, v36, 3, 1);
    }
  }

  else if (a1 == 2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v24 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (v87)
      {
        v25 = 84;
      }

      else
      {
        v25 = 70;
      }

      if (BYTE1(v87))
      {
        v26 = 84;
      }

      else
      {
        v26 = 70;
      }

      v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Request Capabilities payloadType,%u,Handle,%u,isEmergency,%c,isLogsDisabled,%c,sessionType,%u\n", v24, "PSP", 77, "TracePPDUContents", HIDWORD(v90), DWORD2(v86), v26, v25, HIDWORD(v86));
      LbsOsaTrace_WriteLog(0x13u, __str, v27, 3, 1);
    }
  }

  else if (a1 == 3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v28 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (v87)
      {
        v29 = 84;
      }

      else
      {
        v29 = 70;
      }

      if (BYTE1(v87))
      {
        v30 = 84;
      }

      else
      {
        v30 = 70;
      }

      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Assistance Data payloadType,%u,Handle,%u,isEmergency,%c,isLogsDisabled,%c,sessionType,%u\n", v28, "PSP", 77, "TracePPDUContents", HIDWORD(v90), DWORD2(v86), v30, v29, HIDWORD(v86));
      LbsOsaTrace_WriteLog(0x13u, __str, v31, 3, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (v87)
      {
        v11 = 84;
      }

      else
      {
        v11 = 70;
      }

      if (BYTE1(v87))
      {
        v12 = 84;
      }

      else
      {
        v12 = 70;
      }

      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Handle,%u,isEmergency,%c,isLoggingDisabled,%c,sessionType,%u,sessionCode,%u\n", v10, "PSP", 77, "TracePPDUContents", DWORD2(v86), v12, v11, HIDWORD(v86), DWORD1(v87));
      LbsOsaTrace_WriteLog(0x13u, __str, v13, 3, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%u,long,%d,Alt,%u,status,%u,fixType,%u,shape,%u\n", (*&g_MacClockTicksToMsRelation * v14), "PSP", 73, "TracePPDUContents", HIDWORD(v88), v89, WORD2(v89), HIDWORD(v87), v88, DWORD1(v88));
      LbsOsaTrace_WriteLog(0x13u, __str, v15, 4, 1);
    }
  }

  v95 = -1;
  v93 = 1793;
  v37 = operator new(0x68uLL, MEMORY[0x29EDC9418]);
  if (!v37)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v44 = mach_continuous_time();
      v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PPDU Msg\n", (*&g_MacClockTicksToMsRelation * v44), "PSP", 69, "Process_PPDU_Request", 1537);
      LbsOsaTrace_WriteLog(0x13u, __str, v45, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      goto LABEL_141;
    }

    return;
  }

  v38 = v37;
  *v37 = 4;
  v39 = (v37 + 1);
  memset_s(v37 + 1, 0x60uLL, 0, 0x60uLL);
  v40 = v89;
  v41 = *v91;
  *(v38 + 4) = v90;
  *(v38 + 5) = v41;
  v42 = v87;
  v43 = v88;
  *v38 = v86;
  *(v38 + 1) = v42;
  v94 = v38;
  v38[12] = __src;
  *(v38 + 2) = v43;
  *(v38 + 3) = v40;
  if (v86 <= 1)
  {
    if (!a1)
    {
      goto LABEL_87;
    }

    if (a1 == 1)
    {
      v95 = *(v38 + 2);
      v46 = *(v38 + 40);
      if (v46 < 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v63 = mach_continuous_time();
          v64 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PDU\n", (*&g_MacClockTicksToMsRelation * v63), "PSP", 69, "Process_PPDU_Request", 770);
          LbsOsaTrace_WriteLog(0x13u, __str, v64, 0, 1);
        }

        MEMORY[0x29C29EB20](v38, 0x1032C4083C19586);
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
        {
          goto LABEL_141;
        }

        return;
      }

      v47 = gnssOsa_Calloc("Process_PPDU_Request", 116, 1, *(v38 + 40));
      if (!v47)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v67 = mach_continuous_time();
          v68 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Active session PDU\n", (*&g_MacClockTicksToMsRelation * v67), "PSP", 69, "Process_PPDU_Request", 1537);
          LbsOsaTrace_WriteLog(0x13u, __str, v68, 0, 1);
        }

        MEMORY[0x29C29EB20](v38, 0x1032C4083C19586);
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
        {
          goto LABEL_141;
        }

        return;
      }

      memcpy_s("Process_PPDU_Request", 126, v47, v46, v38[11], v46);
      v38[11] = v47;
      goto LABEL_87;
    }

LABEL_102:
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v61 = mach_continuous_time();
      v62 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx msg type\n", (*&g_MacClockTicksToMsRelation * v61), "PSP", 69, "Process_PPDU_Request", 770);
      LbsOsaTrace_WriteLog(0x13u, __str, v62, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      goto LABEL_141;
    }

    return;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v95 = *v39;
      if (v91[0])
      {
        v48 = gnssOsa_Calloc("Process_PPDU_Request", 144, 1, 0x38uLL);
        v38[10] = v48;
        if (!v48)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v65 = mach_continuous_time();
            v66 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Gen Asst Data\n", (*&g_MacClockTicksToMsRelation * v65), "PSP", 69, "Process_PPDU_Request", 1537);
            LbsOsaTrace_WriteLog(0x13u, __str, v66, 0, 1);
          }

          MEMORY[0x29C29EB20](v38, 0x1032C4083C19586);
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
          {
            goto LABEL_141;
          }

          return;
        }

        *(v38[10] + 8) = gnssOsa_Calloc("Process_PPDU_Request", 149, 1, 8uLL);
        v49 = *(v91[0] + 1);
        if (!v49)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v69 = mach_continuous_time();
            v70 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Generic Asst Req\n", (*&g_MacClockTicksToMsRelation * v69), "PSP", 69, "Process_PPDU_Request", 1537);
            LbsOsaTrace_WriteLog(0x13u, __str, v70, 0, 1);
          }

          v71 = v38[10];
          if (v71)
          {
            free(v71);
          }

          v38[10] = 0;
          MEMORY[0x29C29EB20](v38, 0x1032C4083C19586);
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
          {
            goto LABEL_141;
          }

          return;
        }

        memcpy_s("Process_PPDU_Request", 154, *(v38[10] + 8), 8u, v49, 8uLL);
        if (*(v91[0] + 2))
        {
          if (*(*(v91[0] + 1) + 3) == 1)
          {
            *(v38[10] + 16) = gnssOsa_Calloc("Process_PPDU_Request", 168, 1, 0xD8uLL);
            v50 = *(v38[10] + 16);
            if (!v50)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v79 = mach_continuous_time();
                v80 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPS Asst Req\n", (*&g_MacClockTicksToMsRelation * v79), "PSP", 69, "Process_PPDU_Request", 1537);
                LbsOsaTrace_WriteLog(0x13u, __str, v80, 0, 1);
              }

              v81 = v38[10];
              v82 = *(v81 + 8);
              if (v82)
              {
                free(v82);
                v81 = v38[10];
              }

              *(v81 + 8) = 0;
              v83 = v38[10];
              if (v83)
              {
                free(v83);
              }

              v38[10] = 0;
              MEMORY[0x29C29EB20](v38, 0x1032C4083C19586);
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
              {
                goto LABEL_141;
              }

              return;
            }

            memcpy_s("Process_PPDU_Request", 173, v50, 0xD8u, *(v91[0] + 2), 0xD8uLL);
          }
        }
      }

      if (__src)
      {
        v51 = gnssOsa_Calloc("Process_PPDU_Request", 197, 1, 0x14uLL);
        v38[12] = v51;
        if (!v51)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v72 = mach_continuous_time();
            v73 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Location ID\n", (*&g_MacClockTicksToMsRelation * v72), "PSP", 69, "Process_PPDU_Request", 1537);
            LbsOsaTrace_WriteLog(0x13u, __str, v73, 0, 1);
          }

          v74 = v38[10];
          v75 = *(v74 + 16);
          if (v75)
          {
            free(v75);
            v74 = v38[10];
          }

          *(v74 + 16) = 0;
          v76 = v38[10];
          v77 = *(v76 + 8);
          if (v77)
          {
            free(v77);
            v76 = v38[10];
          }

          *(v76 + 8) = 0;
          v78 = v38[10];
          if (v78)
          {
            free(v78);
          }

          v38[10] = 0;
          MEMORY[0x29C29EB20](v38, 0x1032C4083C19586);
          return;
        }

        memcpy_s("Process_PPDU_Request", 202, v51, 0x14u, __src, 0x14uLL);
      }

      goto LABEL_87;
    }

    if (a1 != 4)
    {
      goto LABEL_102;
    }
  }

  v95 = *v39;
LABEL_87:
  if (SuplPospPostMessage(&v93) && v86 == 3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v52 = mach_continuous_time();
      v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Request Assistance Data\n", (*&g_MacClockTicksToMsRelation * v52), "PSP", 69, "Process_PPDU_Request", 1548);
      LbsOsaTrace_WriteLog(0x13u, __str, v53, 0, 1);
    }

    v54 = v94;
    v55 = v94[12];
    if (v55)
    {
      free(v55);
      v54 = v94;
    }

    v54[12] = 0;
    v56 = v54[10];
    v57 = *(v56 + 16);
    if (v57)
    {
      free(v57);
      v54 = v94;
      v56 = v94[10];
    }

    *(v56 + 16) = 0;
    v58 = v54[10];
    v59 = *(v58 + 8);
    if (v59)
    {
      free(v59);
      v54 = v94;
      v58 = v94[10];
    }

    *(v58 + 8) = 0;
    v60 = v54[10];
    if (v60)
    {
      free(v60);
      v54 = v94;
    }

    v54[10] = 0;
    MEMORY[0x29C29EB20](v38, 0x1032C4083C19586);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
LABEL_141:
    bzero(__str, 0x410uLL);
    v84 = mach_continuous_time();
    v85 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v84), "PSP", 68, "Process_PPDU_Request");
    LbsOsaTrace_WriteLog(0x13u, __str, v85, 5, 1);
  }
}

BOOL GNS_WlInitialize(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "GNS_WlInitialize");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  v12 = -1;
  v10 = 1027;
  v11 = a1;
  v4 = SuplPospPostMessage(&v10);
  if (v4 && LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Message posting failed,%u\n", (*&g_MacClockTicksToMsRelation * v5), "PSP", 69, "GNS_WlInitialize", 1548, v10);
    LbsOsaTrace_WriteLog(0x13u, __str, v6, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 68, "GNS_WlInitialize");
    LbsOsaTrace_WriteLog(0x13u, __str, v8, 5, 1);
  }

  return v4 == 0;
}

uint64_t GNS_WlCapabilities(uint64_t a1, char a2)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 68, "GNS_WlCapabilities");
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 5, 1);
  }

  v21 = -1;
  v19 = 1283;
  v6 = operator new(0xCuLL, MEMORY[0x29EDC9418]);
  if (!v6)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx WLAN Cap Msg\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 69, "GNS_WlCapabilities", 1537);
      LbsOsaTrace_WriteLog(0x13u, __str, v13, 0, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      return 14;
    }

    bzero(__str, 0x410uLL);
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v14, "PSP", 68, "GNS_WlCapabilities");
    goto LABEL_13;
  }

  v7 = v6;
  v20 = v6;
  *v6 = a1;
  v6[8] = a2 & 1;
  if (SuplPospPostMessage(&v19))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Message posting failed,%u\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 69, "GNS_WlCapabilities", 1548, v19);
      LbsOsaTrace_WriteLog(0x13u, __str, v9, 0, 1);
    }

    MEMORY[0x29C29EB20](v7, 0x1000C4005A209FELL);
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      return 14;
    }

    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v10, "PSP", 68, "GNS_WlCapabilities");
LABEL_13:
    LbsOsaTrace_WriteLog(0x13u, __str, v11, 5, 1);
    return 14;
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v17 = mach_continuous_time();
  v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "PSP", 68, "GNS_WlCapabilities");
  v15 = 1;
  LbsOsaTrace_WriteLog(0x13u, __str, v18, 5, 1);
  return v15;
}

void NK_Comp_ith_PR_Res(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, _BYTE *a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v45[1] = *MEMORY[0x29EDCA608];
  v21 = a1;
  v22 = *(a5 + 4 * a1 + 76);
  v23 = 736;
  if (v22 == 4)
  {
    v23 = 752;
  }

  v24 = v22 == 2;
  v25 = 744;
  if (!v24)
  {
    v25 = v23;
  }

  v26 = a7 + 19584;
  *&a7[8 * a1 + 19584] = a8 + (*&a7[v25] - *(a3 + 56)) * 299792458.0;
  v27 = a7 + 4448;
  *&a7[8 * a1 + 4448] = *(a3 + 72);
  v28 = 0.0;
  if (a7[2809])
  {
    v29 = 0.01;
  }

  else if (a6[187] <= 0.0)
  {
    v29 = Trop_Elev_MapF(a4) * 2.3;
  }

  else
  {
    v32 = a6[188];
    Trop_Niell_MappingFunc::Get_Dry_MappingFunc_OF((a6 + 203), *(a4 + 32), a9, a10, a2);
    v34 = v32 * v33;
    v35 = a6[189];
    Trop_Niell_MappingFunc::Get_Wet_MappingFunc_OF((a6 + 203), *(a4 + 32), a10, a2);
    v28 = v34 + v35 * v36;
    v45[0] = 0.0;
    if (R8_EQ((a4 + 16), v45))
    {
      v29 = 0.12;
    }

    else
    {
      v29 = 1.001 / sqrt(*(a4 + 8) * *(a4 + 8) + 0.002001) * 0.12;
    }

    *&v26[8 * v21] = v28 + *&v26[8 * v21];
  }

  v37 = *&v27[8 * v21] + v29 * v29;
  *&v27[8 * v21] = v37;
  a7[v21 + 2912] = 1;
  ++a7[2810];
  if (a7[v21 + 2864] == 1)
  {
    v38 = *&v26[8 * v21] - *(a5 + 8 * v21 + 1232);
    *&a7[8 * v21 + 4832] = v38;
    v39 = *&a7[24 * v21 + 3296] + *&a7[24 * v21 + 3304];
    v40 = &a7[8 * v21];
    if (a7[v21 + 1176] == 1)
    {
      v41 = v38 - v40[159];
      v42 = v39 + v40[207];
    }

    else
    {
      v43 = v37 + a12;
      *&v27[8 * v21] = v43;
      v42 = v43 + v39;
      v41 = v38 + a11;
    }

    *&a7[8 * v21 + 4832] = v41;
    *&a7[8 * v21 + 6848] = v42;
    if (*(a3 + 120) == 1)
    {
      a7[v21 + 26208] = 1;
      v44 = -(a11 - *(a3 + 56) * 299792458.0);
      v40[3768] = v44;
      if (a6[187] > 0.0)
      {
        v44 = v44 - v28;
      }

      v40[3768] = v44 + a13;
    }

    if (fabs(v41) < 600000000.0 && v42 < 600000000.0)
    {
      a7[v21 + 2960] = 1;
      ++a7[2811];
    }

    v40[700] = v41;
    v40[652] = v41;
  }
}

uint64_t Decode_GPS_AS_SV_Config_Subframe(uint64_t result, unsigned __int8 *a2)
{
  v2 = 0;
  *a2 = *(result + 8) >> 12;
  a2[1] = *(result + 9) & 0xF;
  a2[2] = *(result + 8) >> 4;
  a2[3] = *(result + 8) & 0xF;
  v3 = result + 12;
  v4 = a2 + 9;
  do
  {
    *(v4 - 5) = (*(v3 + v2) >> 20) & 0xF;
    *(v4 - 4) = *(v3 + v2 + 2) & 0xF;
    *(v4 - 3) = *(v3 + v2) >> 12;
    *(v4 - 2) = *(v3 + v2 + 1) & 0xF;
    *(v4 - 1) = *(v3 + v2) >> 4;
    *v4 = *(v3 + v2) & 0xF;
    v4 += 6;
    v2 += 4;
  }

  while (v2 != 16);
  a2[28] = (*(result + 28) >> 20) & 0xF;
  a2[29] = *(result + 30) & 0xF;
  a2[30] = *(result + 28) >> 12;
  a2[31] = *(result + 29) & 0xF;
  return result;
}

uint64_t LcsUtils::GetInstance(LcsUtils *this)
{
  v5 = *MEMORY[0x29EDCA608];
  if (LcsUtils::GetInstance(void)::pred_lcsUtils != -1)
  {
    dispatch_once(&LcsUtils::GetInstance(void)::pred_lcsUtils, &__block_literal_global_2);
  }

  result = LcsUtils::m_lcs_utils;
  if (!LcsUtils::m_lcs_utils)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "GetInstance", "GetInstance");
      LbsOsaTrace_WriteLog(0xEu, __str, v3, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("GetInstance", "LcsUtils.cpp", 63, "false && Memory allocation failure");
  }

  return result;
}

void *___ZN8LcsUtils11GetInstanceEv_block_invoke()
{
  result = operator new(1uLL, MEMORY[0x29EDC9418]);
  LcsUtils::m_lcs_utils = result;
  return result;
}

void LcsUtils::TraceBuffer(LcsUtils *this, const unsigned __int8 *a2, unsigned int a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a2 && a3)
  {
    v4 = 0;
    v5 = a3;
    do
    {
      v6 = v5 - v4;
      if (v5 - v4 > 0x13)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 3u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 77, "TraceBuffer", a2[v4], a2[v4 + 1], a2[v4 + 2], a2[v4 + 3], a2[v4 + 4], a2[v4 + 5], a2[v4 + 6], a2[v4 + 7], a2[v4 + 8], a2[v4 + 9], a2[v4 + 10], a2[v4 + 11], a2[v4 + 12], a2[v4 + 13], a2[v4 + 14], a2[v4 + 15], a2[v4 + 16], a2[v4 + 17], a2[v4 + 18], a2[v4 + 19]);
          LbsOsaTrace_WriteLog(0x12u, __str, v12, 3, 1);
        }

        v7 = v4;
      }

      else
      {
        v7 = v5;
        if (v5 > v4)
        {
          v8 = &a2[v4];
          do
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x12u, 3u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v9 = mach_continuous_time();
              v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ,0x%02X\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 77, "TraceBuffer", *v8);
              LbsOsaTrace_WriteLog(0x12u, __str, v10, 3, 1);
            }

            ++v8;
            --v6;
          }

          while (v6);
          v7 = v5;
        }
      }

      v4 = v7 + 20;
    }

    while (v7 + 20 < v5);
  }
}

uint64_t LcsUtils::IsItDuplicateSession(LcsUtils *this, char *a2, unsigned int a3)
{
  v14 = *MEMORY[0x29EDCA608];
  __p = 0;
  v11 = 0;
  v12 = 0;
  v3 = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, a2, &a2[a3], a3);
  Instance = SuplUtils::GetInstance(v3);
  IsItDuplicateSUPLINIT = SuplUtils::IsItDuplicateSUPLINIT(Instance, &__p);
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (IsItDuplicateSUPLINIT)
    {
      v7 = 84;
    }

    else
    {
      v7 = 70;
    }

    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Is the SUPL INIT duplicate result,%c\n", v6, "SPL", 73, "IsItDuplicateSession", v7);
    LbsOsaTrace_WriteLog(0x12u, __str, v8, 4, 1);
  }

  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  return IsItDuplicateSUPLINIT;
}

void sub_2995F56CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GN_AGLON_Set_Eph(uint64_t a1, uint64_t a2)
{
  if (!Is_GN_API_Set_Allowed("GN_AGLON_Set_Eph"))
  {
    return 0;
  }

  if ((a1 - 25) <= 0xFFFFFFE7)
  {
    EvCrt_v("GN_AGLON_Set_Eph: FAILED: SV = %d <%d or >%d, Out of range!", a1, 1, 24);
    return 0;
  }

  v6 = *(p_api + 48);
  if (*(v6 + 5) == 1 && *v6 >= 3)
  {
    v7 = *(v6 + 24) + 604800 * *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = p_NA;
  v9 = (a1 - 1);
  v10 = p_NA + (v9 << 6);
  *(v10 + 15212) = v7;
  if (*(a2 + 56))
  {
    v11 = 5;
  }

  else
  {
    v11 = 3;
  }

  *(v10 + 15216) = v11;
  v12 = *(a2 + 4);
  if ((*(a2 + 4) - 7) < 0xF2u)
  {
    v12 = 2139062143;
  }

  *(v10 + 15220) = v12;
  v13 = *(a2 + 40);
  v14 = *(a2 + 24);
  *(v10 + 15224) = *(a2 + 8);
  *(v10 + 15240) = v14;
  *(v10 + 15256) = v13;
  *(v10 + 15272) = 4095;
  if (*(a2 + 56))
  {
    v15 = 5;
  }

  else
  {
    v15 = 3;
  }

  *(v10 + 15216) = v15;
  v4 = 1;
  *(v8 + v9 + 99) = 1;
  Debug_Log_GLO_Eph(1, a1, (v10 + 15212));
  if (g_Enable_Event_Log >= 3u)
  {
    EvLog_nd("GN_AGLON_Set_Eph: ", 2, v16, a1, *(p_NA + (v9 << 6) + 15212));
  }

  return v4;
}

uint64_t GN_AGLON_Set_Alm(uint64_t a1, uint64_t a2)
{
  if (!Is_GN_API_Set_Allowed("GN_AGLON_Set_Alm"))
  {
    return 0;
  }

  if ((a1 - 25) <= 0xFFFFFFE7)
  {
    EvCrt_v("GN_AGLON_Set_Alm: FAILED: SV = %d <%d or >%d, Out of range!", a1, 1, 24);
    return 0;
  }

  v6 = *(p_api + 48);
  if (*(v6 + 5) == 1 && *v6 >= 3)
  {
    v7 = *(v6 + 24) + 604800 * *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = p_NA;
  v9 = (a1 - 1);
  v10 = p_NA + 36 * v9;
  v11 = (v10 + 16748);
  *(v10 + 16756) = *(a2 + 4);
  if (*(a2 + 32))
  {
    v12 = 5;
  }

  else
  {
    v12 = 3;
  }

  *v11 = v7;
  *(v10 + 16752) = v12;
  v13 = *(a2 + 24);
  *(v10 + 16760) = *(a2 + 8);
  *(v10 + 16776) = v13;
  v4 = 1;
  *(v8 + v9 + 123) = 1;
  Debug_Log_GLO_Alm(1, a1, v11);
  if (g_Enable_Event_Log >= 3u)
  {
    EvLog_nd("GN_AGLON_Set_Alm: ", 2, v14, a1, *(p_NA + 36 * v9 + 16748));
  }

  return v4;
}

uint64_t GN_AGLON_Set_Chan_Num(uint64_t a1, uint64_t a2)
{
  if (!Is_GN_API_Set_Allowed("GN_AGLON_Set_Chan_Num"))
  {
    return 0;
  }

  if ((a1 - 25) <= 0xE7u)
  {
    EvCrt_v("GN_AGLON_Set_Chan_Num: FAILED: SV = %d <%d or >%d, Out of range!");
    return 0;
  }

  if ((a2 - 7) <= 0xF1u)
  {
    EvCrt_v("GN_AGLON_Set_Chan_Num: FAILED: gloChanNum = %d <-7 or >+6, Out of range!");
    return 0;
  }

  *(*(p_api + 56) + 4 * (a1 - 1) + 16336) = a2;
  v6 = p_NA;
  v7 = (a1 - 1);
  *(p_NA + (v7 << 6) + 15220) = a2;
  if ((*(v6 + 148) & 1) == 0)
  {
    *(v6 + 17656) = 0x7F7F7F7F7F7F7F7FLL;
    *(v6 + 17648) = 0x7F7F7F7F7F7F7F7FLL;
    *(v6 + 17640) = 0x7F7F7F7F7F7F7F7FLL;
  }

  v4 = 1;
  *(v6 + 148) = 1;
  *(v6 + v7 + 17640) = a2;
  Debug_Log_AGLON_ChanNum(a1, a2);
  if (g_Enable_Event_Log >= 3u)
  {
    EvLog_nd("GN_AGLON_Set_Chan_Num: ", 2, v8, a1, a2);
  }

  return v4;
}

uint64_t GN_AGLON_Set_Clk1(unsigned __int16 *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_AGLON_Set_Clk1"))
  {
    return 0;
  }

  v3 = *a1;
  if ((v3 - 1462) <= 0xFFFFFA4A)
  {
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloNA = %d <1 or >%d, Out of range!");
    return 0;
  }

  v4 = *(a1 + 1);
  if ((v4 - 4296) <= 0xFFFFDE70)
  {
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloTauC = %d <-4295 or >4295, Unrealistic value!");
    return 0;
  }

  v5 = *(a1 + 8);
  if (v5 >= 0x20)
  {
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloN4 = %d >31, Out of range!");
    return 0;
  }

  v6 = *(a1 + 3);
  if ((v6 - 0x200000) >> 22 != 1023)
  {
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloTauGPS = %d <-2^21 or >2^21, Out of range!");
    return 0;
  }

  if ((v6 - 1075) <= 0xFFFFF79A)
  {
    EvCrt_v("GN_AGLON_Set_Clk1: FAILED: gloTauGPS = %d <-1074 or >1074, Unrealistic value!");
    return 0;
  }

  v9 = *(p_api + 48);
  if (*(v9 + 5) == 1 && *v9 >= 3)
  {
    v10 = *(v9 + 24) + 604800 * *(v9 + 16);
  }

  else
  {
    v10 = 0;
  }

  v11 = p_NA;
  v12 = p_NA + 0x4000;
  *(p_NA + 17612) = v10;
  *(v12 + 1236) = v3;
  *(v12 + 1240) = v4;
  *(v12 + 1244) = v5;
  *(v12 + 1248) = v6;
  v13 = *(a1 + 16);
  *(v12 + 1252) = v13;
  v14 = *(a1 + 17);
  if (*(a1 + 17))
  {
    v15 = 5;
  }

  else
  {
    v15 = 3;
  }

  *(v12 + 1232) = v15;
  v7 = 1;
  *(v11 + 147) = 1;
  EvLog_nd("GN_AGLON_Set_Clk1: ", 6, v2, v3, v4, v5, v6, v13, v14);
  return v7;
}

void NK_SV_Meas_IVar(int a1, uint64_t a2, uint64_t a3, double *a4, uint64_t a5, double a6)
{
  v26 = a3;
  v10 = 0;
  v27[12] = *MEMORY[0x29EDCA608];
  v11 = a5 + 152;
  v12 = a5 + 200;
  v13 = a5 + 4040;
  v14 = a5 + 4424;
  v15 = a4 - 1;
  do
  {
    if (*(v11 + v10) == 1)
    {
      NK_Obs_Equ_SV(a1, *(v12 + v10), *(a2 + 4 * v10), v26 + 56 * v10, v27, a6);
      v16 = *(v13 + 8 * v10) + *a4 * v27[0] * v27[0];
      v17 = 1;
      v18 = 2;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = v27[v19 - 1];
        v22 = v27;
        v23 = v18;
        v24 = v17;
        do
        {
          v25 = *v22++;
          v21 = v21 + v25 * v15[v23++];
          --v24;
        }

        while (v24);
        v20 += v19;
        v16 = v16 + v21 * v21 * v15[v20];
        v18 += v19;
        ++v17;
        ++v19;
      }

      while (v19 != 12);
      if (v16 < 0.0)
      {
        v16 = -v16;
      }

      *(v14 + 8 * v10) = v16;
    }

    ++v10;
  }

  while (v10 != 48);
}

char **sprintf_1u(char **a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) == 0)
  {
    return sprintf1da(a1, a2, v3, 0, 0);
  }

  return sprintf_10u(a1, a2);
}

char **sprintf_1X(char **a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  if (v4)
  {
    sprintf_1x(a1, v4);

    return sprintf_08x(a1, a2);
  }

  else
  {

    return sprintf_1x(a1, a2);
  }
}

char **sprintf_sp1d(char **a1, unsigned int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = (*a1)++;
  *v2 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if ((a2 & 0x80000000) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  return sprintf1da(a1, v3, v5, 0, a2 >> 31);
}

char **sprintf_sp1u(char **a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = (*a1)++;
  *v2 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if ((a2 & 0x80000000) == 0)
  {
    return sprintf1da(a1, a2, v4, 0, 0);
  }

  return sprintf_10u(a1, a2);
}

char **sprintf_cm1d(char **a1, unsigned int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = (*a1)++;
  *v2 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if ((a2 & 0x80000000) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  return sprintf1da(a1, v3, v5, 0, a2 >> 31);
}

uint64_t sprintf_11f9(char **a1, double a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (fabs(a2) >= 1.0)
  {
    v7 = dbl_29975C3B0[a2 < 0.0] + a2;
    v8 = v7;
    v9 = v7 - v7;
    if (v9 >= 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = -v9;
    }

    if (v8 >= 0)
    {
      v11 = v8;
    }

    else
    {
      v11 = -v8;
    }

    sprintf1da(a1, v11, v16, 0, v8 >> 31);
    v12 = (*a1)++;
    *v12 = 46;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    v13 = v10 * 1000000000.0;
    if (v10 * 1000000000.0 <= 2147483650.0)
    {
      if (v13 >= -2147483650.0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0x80000000;
      }
    }

    else
    {
      v14 = 0x7FFFFFFFLL;
    }

    return sprintf_09d(a1, v14);
  }

  else
  {
    v3 = a2 * 1000000000.0;
    v4 = -0.5;
    if (v3 > 0.0)
    {
      v4 = 0.5;
    }

    v5 = v3 + v4;
    if (v5 <= 2147483650.0)
    {
      if (v5 >= -2147483650.0)
      {
        v6 = v5;
      }

      else
      {
        v6 = 0x80000000;
      }
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }

    return sprintf_10f9(a1, v6);
  }
}

uint64_t sprintf_12f3(char **a1, double a2)
{
  if (fabs(a2) >= 100000.0)
  {
    v10 = dbl_29975C3C0[a2 < 0.0] + a2;
    v11 = v10;
    v12 = v10 - v11;
    if (v12 >= 0.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }

    sprintf_8d(a1, v11);
    v14 = (*a1)++;
    *v14 = 46;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    v15 = v13 * 1000.0;
    if (v13 * 1000.0 <= 2147483650.0)
    {
      if (v15 >= -2147483650.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0x80000000;
      }
    }

    else
    {
      v16 = 0x7FFFFFFFLL;
    }

    return sprintf_03d(a1, v16);
  }

  else
  {
    v3 = 0;
    v4 = *a1;
    v5 = 32;
    do
    {
      *a1 = v4 + 1;
      *v4 = v5;
      v4 = *a1;
      if (*a1 >= a1[3])
      {
        v4 = a1[2];
        *a1 = v4;
      }

      v5 = str_55[++v3];
    }

    while (v3 != 2);
    v6 = a2 * 1000.0;
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
      v9 = 0x7FFFFFFFLL;
    }

    return sprintf_9f(a1, v9, 4);
  }
}

uint64_t sprintf_13f3(char **a1, double a2)
{
  if (fabs(a2) >= 100000.0)
  {
    v10 = dbl_29975C3C0[a2 < 0.0] + a2;
    v11 = v10;
    v12 = v10 - v11;
    if (v12 >= 0.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }

    sprintf_9d(a1, v11);
    v14 = (*a1)++;
    *v14 = 46;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    v15 = v13 * 1000.0;
    if (v13 * 1000.0 <= 2147483650.0)
    {
      if (v15 >= -2147483650.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0x80000000;
      }
    }

    else
    {
      v16 = 0x7FFFFFFFLL;
    }

    return sprintf_03d(a1, v16);
  }

  else
  {
    v3 = *a1;
    v4 = 32;
    v5 = 1u;
    do
    {
      *a1 = v3 + 1;
      *v3 = v4;
      v3 = *a1;
      if (*a1 >= a1[3])
      {
        v3 = a1[2];
        *a1 = v3;
      }

      v4 = str_1_46[v5++];
    }

    while (v5 != 4);
    v6 = a2 * 1000.0;
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
      v9 = 0x7FFFFFFFLL;
    }

    return sprintf_9f(a1, v9, 4);
  }
}

uint64_t sprintf_14f3(char **a1, double a2)
{
  if (fabs(a2) >= 100000.0)
  {
    v10 = dbl_29975C3C0[a2 < 0.0] + a2;
    v11 = v10;
    v12 = v10 - v11;
    if (v12 >= 0.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }

    sprintf_10d(a1, v11);
    v14 = (*a1)++;
    *v14 = 46;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    v15 = v13 * 1000.0;
    if (v13 * 1000.0 <= 2147483650.0)
    {
      if (v15 >= -2147483650.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0x80000000;
      }
    }

    else
    {
      v16 = 0x7FFFFFFFLL;
    }

    return sprintf_03d(a1, v16);
  }

  else
  {
    v3 = 0;
    v4 = *a1;
    v5 = 32;
    do
    {
      *a1 = v4 + 1;
      *v4 = v5;
      v4 = *a1;
      if (*a1 >= a1[3])
      {
        v4 = a1[2];
        *a1 = v4;
      }

      v5 = str_2_30[++v3];
    }

    while (v3 != 4);
    v6 = a2 * 1000.0;
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
      v9 = 0x7FFFFFFFLL;
    }

    return sprintf_9f(a1, v9, 4);
  }
}

uint64_t sprintf_p(uint64_t result, unint64_t a2)
{
  v2 = 0;
  v11 = *MEMORY[0x29EDCA608];
  v3 = *result;
  v4 = 48;
  do
  {
    *result = v3 + 1;
    *v3 = v4;
    v3 = *result;
    if (*result >= *(result + 24))
    {
      v3 = *(result + 16);
      *result = v3;
    }

    v4 = str_6_21[++v2];
  }

  while (v2 != 2);
  for (i = 15; i != -1; --i)
  {
    v10[i - 1] = __const__Z9sprintf_pP10Cyc_bufferPKv_dec2HexChar[a2 & 0xF];
    a2 >>= 4;
  }

  v10[15] = 0;
  v6 = v9;
  if (v9)
  {
    v7 = v10;
    do
    {
      *result = v3 + 1;
      *v3 = v6;
      v3 = *result;
      if (*result >= *(result + 24))
      {
        v3 = *(result + 16);
        *result = v3;
      }

      v8 = *v7++;
      v6 = v8;
    }

    while (v8);
  }

  return result;
}

double Horiz_Diff_Sqd(double *a1, const double *a2)
{
  v4 = *a1;
  v5 = __sincos_stret(*a1);
  v6 = 1.0 / sqrt(v5.__sinval * v5.__sinval * -0.00669437999 + 1.0);
  v7 = a1[2];
  v8 = v5.__cosval * (v7 + v6 * 6378137.0);
  if (v8 < 1.0)
  {
    v8 = 1.0;
  }

  v9 = (v4 - *a2) * (v7 + v6 * (v6 * v6) * 6335439.33);
  return (a1[1] - a2[1]) * v8 * ((a1[1] - a2[1]) * v8) + v9 * v9;
}

void SuplEndRecd::SuplEndRecd(SuplEndRecd *this)
{
  SuplState::SuplState(this);
  *v2 = &unk_2A1F88858;
  *(v2 + 376) = 0;
  *(v2 + 384) = 0;
  *(v2 + 392) = 0;
  *(v2 + 360) = -1;
  *(v2 + 364) = 0;
  *(v2 + 370) = 0;
  *(v2 + 378) = -1;
  *(v2 + 387) = 0;
  *(v2 + 384) = 0;
  *(v2 + 16) = 7;
  *(v2 + 32) = 6;
  v3 = operator new(0x1D0uLL, MEMORY[0x29EDC9418]);
  if (v3)
  {
    *v3 = 0;
    v3[2] = 0;
    *(v3 + 3) = 0;
    *(v3 + 4) = 0;
    *(v3 + 2) = 0;
    *(v3 + 44) = 0;
    *(v3 + 13) = 0;
    v3[56] = -1;
    *(v3 + 29) = 0;
    v3[60] = 0;
    *(v3 + 10) = -16777216;
    *(v3 + 8) = 255;
    v3[8] = 0;
    *(v3 + 55) = 0;
    *(v3 + 56) = 0;
    *(v3 + 57) = 0;
    *(v3 + 88) = 0u;
    *(v3 + 104) = 0u;
    *(v3 + 120) = 0u;
    *(v3 + 136) = 0u;
    *(v3 + 152) = 0u;
    *(v3 + 168) = 0u;
    *(v3 + 184) = 0u;
    *(v3 + 200) = 0u;
    *(v3 + 216) = 0u;
    *(v3 + 232) = 0u;
    *(v3 + 248) = 0u;
    *(v3 + 72) = 0u;
    *(v3 + 264) = 0u;
    *(v3 + 280) = 0u;
    *(v3 + 296) = 0u;
    *(v3 + 312) = 0u;
    *(v3 + 328) = 0u;
    *(v3 + 344) = 0u;
    *(v3 + 360) = 0u;
    *(v3 + 376) = 0u;
    *(v3 + 392) = 0u;
    *(v3 + 408) = 0u;
    *(v3 + 417) = 0u;
  }

  *(this + 5) = v3;
}

void SuplEndRecd::~SuplEndRecd(SuplEndRecd *this)
{
  *this = &unk_2A1F88858;
  if (*(this + 16) == 6)
  {
    v2 = *(this + 5);
    if (v2)
    {
      v3 = v2[55];
      if (v3)
      {
        v2[56] = v3;
        operator delete(v3);
      }

      ASN1T_Velocity::U::~U((v2 + 9));
      v4 = v2[2];
      if (v4)
      {
        v2[3] = v4;
        operator delete(v4);
      }

      MEMORY[0x29C29EB20](v2, 0x1010C402AA3C6D1);
    }

    *(this + 5) = 0;
  }

  SuplState::~SuplState(this);
}

{

  SuplEndRecd::~SuplEndRecd(this);
}

{
  SuplEndRecd::~SuplEndRecd(this);

  JUMPOUT(0x29C29EB20);
}

void SuplEndRecd::SetHash(SuplEndRecd *this)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *(this + 1);
  if (v2 && (SuplInitRecd = SuplSession::GetSuplInitRecd(v2)) != 0 && SuplInitRecd::FillHash(SuplInitRecd, *(this + 5) + 440, *(*(this + 1) + 376), *(*(this + 1) + 532)))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 69, "SetHash", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v5, 0, 1);
    }
  }

  else
  {
    *(*(this + 5) + 2) = 1;
  }
}

uint64_t SuplEndRecd::ProcessSuplMessage(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x29EDCA608];
  if (*(a1 + 8))
  {
    v3 = SuplState::ProcessSuplMessage(a1, a2);
    v24 = 0;
    v4 = *(a1 + 40);
    if (*(v4 + 1))
    {
      Instance = SuplUtils::GetInstance(v3);
      v4 = *(a1 + 40);
      SuplUtils::ConvertSuplEndStatusToGNSupl(Instance, *(v4 + 432), &v24);
    }

    if (!*v4)
    {
      v17 = LcsSuplGlueLayer::GetInstance(v3);
      LcsSuplGlueLayer::SendSuplMsgStatus(v17, *(*(a1 + 8) + 376), 6, 0, v24, 0);
      *(a1 + 361) = -1;
LABEL_31:
      SuplEndRecd::TerminateSession(a1, 0, 4);
      return 0;
    }

    if (*(v4 + 41))
    {
      if (*(v4 + 42))
      {
        *(a1 + 360) = 1;
        v6 = *(v4 + 44);
        *(a1 + 368) = v6;
        v7 = *(v4 + 43) == 1;
        *(a1 + 362) = v7;
        v8 = *(v4 + 48);
        *(a1 + 372) = v8;
        v9 = *(v4 + 58);
        *(a1 + 376) = v9;
        v10 = *(v4 + 56) == 1;
        *(a1 + 363) = v10;
        v11 = *(v4 + 60);
        *(a1 + 381) = v11;
        *(a1 + 382) = *(v4 + 55);
        if (!*(v4 + 40))
        {
          v12 = *(a1 + 378);
          v13 = *(a1 + 379);
LABEL_23:
          *__str = 0x100000000;
          v26 = 0;
          v33 = 0;
          v35 = -1;
          v36 = 0;
          if (v7)
          {
            v19 = 2;
          }

          else
          {
            v19 = 1;
          }

          v27 = v19;
          v28 = v6;
          v29 = v8;
          v30 = v9;
          if (v10)
          {
            v20 = 2;
          }

          else
          {
            v20 = 1;
          }

          v34 = v20;
          v31 = v12;
          v32 = v13;
          LOBYTE(v35) = v11;
          v21 = LcsSuplGlueLayer::GetInstance(v3);
          LcsSuplGlueLayer::SendSuplMsgStatus(v21, *(*(a1 + 8) + 376), 6, 0, v24, __str);
          v22 = *(*(a1 + 40) + 16);
          if (*(*(a1 + 40) + 24) - v22 == 13)
          {
            *(a1 + 384) = v22[1] + 10 * *v22 + 1472;
            *(a1 + 386) = v22[3] + 10 * v22[2] - 16;
            *(a1 + 387) = v22[5] + 10 * v22[4] - 16;
            *(a1 + 388) = v22[7] + 10 * v22[6] - 16;
            *(a1 + 389) = v22[9] + 10 * v22[8] - 16;
            *(a1 + 390) = v22[11] + 10 * v22[10] - 16;
          }

          goto LABEL_31;
        }

LABEL_21:
        v12 = *(v4 + 52);
        *(a1 + 378) = v12;
        v13 = *(v4 + 53);
        *(a1 + 379) = v13;
        *(a1 + 380) = *(v4 + 54);
        goto LABEL_23;
      }

      if (*(v4 + 40))
      {
        v11 = 0;
        v10 = 0;
        v9 = 0;
        *(a1 + 360) = 1;
        v6 = *(v4 + 44);
        *(a1 + 368) = v6;
        v7 = *(v4 + 43) == 1;
        *(a1 + 362) = v7;
        v8 = *(v4 + 48);
        *(a1 + 372) = v8;
        *(a1 + 376) = 0;
        *(a1 + 363) = 0;
        *(a1 + 381) = 0;
        *(a1 + 382) = *(v4 + 55);
        goto LABEL_21;
      }
    }

    else if (*(v4 + 42))
    {
      v11 = *(v4 + 40);
      if (!v11)
      {
        v13 = 0;
        v12 = 0;
        *(a1 + 360) = 1;
        v6 = *(v4 + 44);
        *(a1 + 368) = v6;
        v7 = *(v4 + 43) == 1;
        *(a1 + 362) = v7;
        v8 = *(v4 + 48);
        *(a1 + 372) = v8;
        v9 = *(v4 + 58);
        *(a1 + 376) = v9;
        v18 = *(v4 + 56) == 1;
        *(a1 + 378) = 0;
        v10 = v18;
        *(a1 + 363) = v10;
        *(a1 + 382) = 0;
        goto LABEL_23;
      }
    }

    v13 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    *(a1 + 360) = 1;
    v6 = *(v4 + 44);
    *(a1 + 368) = v6;
    v7 = *(v4 + 43) == 1;
    *(a1 + 362) = v7;
    v8 = *(v4 + 48);
    *(a1 + 376) = 0;
    *(a1 + 379) = 0;
    *(a1 + 372) = v8;
    *(a1 + 363) = 0;
    goto LABEL_23;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "SPL", 69, "ProcessSuplMessage", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v15, 0, 1);
  }

  return -1;
}

uint64_t SuplEndRecd::TerminateSession(uint64_t result, __int16 a2, uint64_t a3)
{
  v4 = result;
  v21 = *MEMORY[0x29EDCA608];
  v5 = *(result + 8);
  if (v5)
  {
    v6 = *(v5 + 380) == 1;
  }

  else
  {
    v6 = 1;
  }

  v20 = -1;
  v19 = a2;
  v7 = *(result + 40);
  if (v7[1])
  {
    v8 = v7[432];
    if (v8 != 24)
    {
      v19 = -16;
      if ((v8 - 20) <= 0xFFFFFFFD)
      {
        v20 = v8;
      }
    }
  }

  if (*v7)
  {
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    *(result + 361) = -1;
    if (!v5)
    {
      return result;
    }
  }

  v9 = *(v5 + 376);
  if (v6)
  {
    v19 = -16;
    v20 = 15;
  }

  Instance = SuplProvider::GetInstance(result);
  v11 = LcsSuplGlueLayer::GetInstance(Instance);
  v12 = (**v11)(v11, &v19, v4 + 360, v9);
  *(Instance + 6) = *(Instance + 5);
  if (a3 == 4)
  {
    v13 = *(v4 + 40);
    if (*(v13 + 1) && (*(v13 + 1) != 1 || *(v13 + 432)))
    {
      a3 = 4;
    }

    else
    {
      a3 = 2;
    }
  }

  v14 = SuplPosPayloadHandler::GetInstance(v12);
  v15 = *(*(v4 + 8) + 376);
  v16 = LcsSuplGlueLayer::GetInstance(v14);
  (*(*v16 + 8))(v16, v15, a3, v4 + 360);
  v17 = SuplPosPayloadHandler::ResetLppParams(v14);
  v18 = SuplProvider::GetInstance(v17);
  return SuplProvider::Disconnect(v18, *(*(v4 + 8) + 376));
}

uint64_t SuplEndRecd::SendSuplMessage(SuplProvider *a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if (v4)
  {
    ASN1T_SessionID::operator=(a1 + 48, v4 + 64);
  }

  v13[0] = a2;
  v13[1] = a1 + 24;
  v5 = SuplMessage::Encode(v13);
  if (v5)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "SendSuplMessage", 770);
      LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
      return 0;
    }
  }

  else
  {
    *__str = 0;
    if (*(*(a1 + 5) + 1))
    {
      Instance = SuplUtils::GetInstance(v5);
      SuplUtils::ConvertSuplEndStatusToGNSupl(Instance, *(*(a1 + 5) + 432), __str);
      v11 = *__str;
    }

    else
    {
      v11 = 0;
    }

    v12 = LcsSuplGlueLayer::GetInstance(v5);
    LcsSuplGlueLayer::SendSuplMsgStatus(v12, *(*(a1 + 1) + 376), 7, 0, v11, 0);
    SuplState::SendSuplMessage(a1);
    return 1;
  }

  return result;
}

uint64_t ASN1T_SessionID::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  ASN1T_SETId::U::operator=(a1 + 24, a2 + 24);
  if (a1 == a2)
  {
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 200), *(a2 + 200), *(a2 + 208), *(a2 + 208) - *(a2 + 200));
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 240), *(a2 + 240), *(a2 + 248), *(a2 + 248) - *(a2 + 240));
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 264), *(a2 + 264), *(a2 + 272), *(a2 + 272) - *(a2 + 264));
    std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>((a1 + 288), *(a2 + 288), *(a2 + 296), *(a2 + 296) - *(a2 + 288));
  }

  return a1;
}

void SuplEndRecd::SetSessionIdPresent(uint64_t this)
{
  if (*(this + 48) != 1)
  {
    *(this + 48) = 1;
    v2 = *(this + 8);
    if (v2)
    {
      *(this + 56) = *(v2 + 376);
      v3 = *(v2 + 532);
      Instance = SuplUtils::GetInstance(this);

      SuplUtils::FillSetId(Instance, this + 64, v3);
    }
  }
}

void ASN1T_Velocity::U::~U(ASN1T_Velocity::U *this)
{
  v2 = *(this + 42);
  if (v2)
  {
    *(this + 43) = v2;
    operator delete(v2);
  }

  v3 = *(this + 39);
  if (v3)
  {
    *(this + 40) = v3;
    operator delete(v3);
  }

  v4 = *(this + 36);
  if (v4)
  {
    *(this + 37) = v4;
    operator delete(v4);
  }

  v5 = *(this + 33);
  if (v5)
  {
    *(this + 34) = v5;
    operator delete(v5);
  }

  v6 = *(this + 30);
  if (v6)
  {
    *(this + 31) = v6;
    operator delete(v6);
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

  v9 = *(this + 21);
  if (v9)
  {
    *(this + 22) = v9;
    operator delete(v9);
  }

  v10 = *(this + 18);
  if (v10)
  {
    *(this + 19) = v10;
    operator delete(v10);
  }

  v11 = *(this + 15);
  if (v11)
  {
    *(this + 16) = v11;
    operator delete(v11);
  }

  v12 = *(this + 12);
  if (v12)
  {
    *(this + 13) = v12;
    operator delete(v12);
  }

  v13 = *(this + 9);
  if (v13)
  {
    *(this + 10) = v13;
    operator delete(v13);
  }

  v14 = *(this + 6);
  if (v14)
  {
    *(this + 7) = v14;
    operator delete(v14);
  }

  v15 = *(this + 3);
  if (v15)
  {
    *(this + 4) = v15;
    operator delete(v15);
  }

  v16 = *this;
  if (*this)
  {
    *(this + 1) = v16;
    operator delete(v16);
  }
}

uint64_t ASN1T_SETId::U::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    *(a1 + 120) = *(a2 + 120);
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 24), *(a2 + 24), *(a2 + 32), *(a2 + 32) - *(a2 + 24));
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 48), *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 72), *(a2 + 72), *(a2 + 80), *(a2 + 80) - *(a2 + 72));
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 96), *(a2 + 96), *(a2 + 104), *(a2 + 104) - *(a2 + 96));
    *(a1 + 120) = *(a2 + 120);
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 128), *(a2 + 128), *(a2 + 136), *(a2 + 136) - *(a2 + 128));
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 152), *(a2 + 152), *(a2 + 160), *(a2 + 160) - *(a2 + 152));
  }

  return a1;
}

void SuplPosRecd::SuplPosRecd(SuplPosRecd *this)
{
  v7 = *MEMORY[0x29EDCA608];
  SuplState::SuplState(this);
  *v2 = &unk_2A1F888B0;
  *(v2 + 360) = 1;
  *(v2 + 16) = 5;
  *(v2 + 32) = 5;
  v3 = operator new(0x200uLL, MEMORY[0x29EDC9418]);
  if (v3)
  {
    *(v3 + 136) = 0u;
    *(v3 + 120) = 0u;
    *(v3 + 104) = 0u;
    *(v3 + 88) = 0u;
    *(v3 + 72) = 0u;
    *(v3 + 56) = 0u;
    *(v3 + 40) = 0u;
    *(v3 + 24) = 0u;
    *(v3 + 8) = 0u;
    v3[144] = -1;
    *(v3 + 168) = 0u;
    *(v3 + 184) = 0u;
    *(v3 + 200) = 0u;
    *(v3 + 216) = 0u;
    *(v3 + 232) = 0u;
    *(v3 + 248) = 0u;
    *(v3 + 63) = 0;
    *(v3 + 152) = 0u;
    *(v3 + 264) = 0u;
    *(v3 + 280) = 0u;
    *(v3 + 296) = 0u;
    *(v3 + 312) = 0u;
    *(v3 + 328) = 0u;
    *(v3 + 344) = 0u;
    *(v3 + 360) = 0u;
    *(v3 + 376) = 0u;
    *(v3 + 392) = 0u;
    *(v3 + 408) = 0u;
    *(v3 + 424) = 0u;
    *(v3 + 440) = 0u;
    *(v3 + 456) = 0u;
    *(v3 + 472) = 0u;
    *(v3 + 488) = 0u;
    *v3 = 0;
    *(this + 5) = v3;
    *(this + 17) = 0;
    *(this + 361) = 0;
  }

  else
  {
    *(this + 5) = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 69, "SuplPosRecd", 1537);
      LbsOsaTrace_WriteLog(0x12u, __str, v5, 0, 1);
    }
  }
}

void SuplPosRecd::~SuplPosRecd(SuplPosRecd *this)
{
  v6[1] = *MEMORY[0x29EDCA608];
  *this = &unk_2A1F888B0;
  if (*(this + 16) == 5)
  {
    v2 = *(this + 5);
    if (v2)
    {
      ASN1T_Velocity::U::~U((v2 + 152));
      v6[0] = (v2 + 120);
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v6);
      v6[0] = (v2 + 96);
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v6);
      v3 = *(v2 + 64);
      if (v3)
      {
        *(v2 + 72) = v3;
        operator delete(v3);
      }

      v4 = *(v2 + 40);
      if (v4)
      {
        *(v2 + 48) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 16);
      if (v5)
      {
        *(v2 + 24) = v5;
        operator delete(v5);
      }

      MEMORY[0x29C29EB20](v2, 0x1030C40C2B5F699);
    }

    *(this + 5) = 0;
  }

  SuplState::~SuplState(this);
}

{

  SuplPosRecd::~SuplPosRecd(this);
}

{
  SuplPosRecd::~SuplPosRecd(this);

  JUMPOUT(0x29C29EB20);
}

void SuplPosRecd::SendSuplEnd(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  *(a1 + 17) = 1;
  (*(*a1 + 16))(a1);
  SuplStateObject = SuplSession::GetSuplStateObject(*(a1 + 8));
  *(SuplStateObject[5] + 432) = a2;
  *(SuplStateObject[5] + 1) = 1;
  std::vector<unsigned char>::vector[abi:ne200100](__p, 3000);
  v7[0] = __p;
  v7[1] = 0;
  v8 = 0;
  (*(*SuplStateObject + 32))(SuplStateObject, v7);
  if (a2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  SuplEndRecd::TerminateSession(SuplStateObject, -1, v5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_2995F8028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SuplPosRecd::UpdateState(SuplPosRecd *this)
{
  if (*(this + 361))
  {
    v1 = 6;
  }

  else
  {
    if (!*(this + 17))
    {
      return;
    }

    v1 = 7;
  }

  v2 = *(this + 1);

  SuplState::UpdateState(this, v1, v2);
}

void SuplPosRecd::PrepareSuplMessage(void *a1, int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  *(a1 + 360) = 0;
  if (a2)
  {
    if (*(a1[1] + 408) == 1)
    {

      SuplPosRecd::SendSuplEnd(a1, 4);
    }
  }

  else
  {
    std::vector<unsigned char>::vector[abi:ne200100](__p, 3000);
    v12[0] = __p;
    v12[1] = 0;
    v13 = 0;
    v3 = a1[1];
    if (v3)
    {
      ASN1T_SessionID::operator=((a1 + 6), v3 + 64);
      v10[0] = v12;
      v10[1] = a1 + 3;
      v4 = SuplMessage::Encode(v10);
      if (v4)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v5 = mach_continuous_time();
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "PrepareSuplMessage", 770);
          LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
        }
      }

      else
      {
        Instance = LcsSuplGlueLayer::GetInstance(v4);
        LcsSuplGlueLayer::SendSuplMsgStatus(Instance, *(a1[1] + 376), 5, 0, 0, 0);
        if (SuplState::SendSuplMessage(a1) == 1 && *(a1[1] + 408) == 1)
        {
          *(a1 + 361) = 1;
          (*(*a1 + 16))(a1);
        }
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "PrepareSuplMessage", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_2995F8388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SuplPosRecd::ProcessSuplMessage(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = SuplState::ProcessSuplMessage(a1, a2);
  Instance = SuplUtils::GetInstance(v4);
  IsLoggingAllowed = SuplUtils::ValidateSetSessionId(Instance, *(*(a1 + 8) + 72), *(a1 + 56));
  v7 = IsLoggingAllowed;
  if (!IsLoggingAllowed)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "ProcessSuplPos", 515);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
    }
  }

  v10 = *(a1 + 8);
  v11 = SuplUtils::GetInstance(IsLoggingAllowed);
  v12 = SuplUtils::ValidateSlpSessionId(v11, a1 + 248, v10 + 264);
  if (!v12)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "SPL", 69, "ProcessSuplPos", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v16, 0, 1);
    }

    goto LABEL_11;
  }

  if (!v7)
  {
LABEL_11:
    ASN1T_SessionID::operator=(*(a1 + 8) + 64, a1 + 48);
    v17 = a1;
    v18 = 12;
LABEL_12:
    SuplPosRecd::SendSuplEnd(v17, v18);
    return 0;
  }

  v13 = *(a1 + 32);
  if (v13 == 5)
  {
    v20 = LcsSuplGlueLayer::GetInstance(v12);
    v21 = LcsSuplGlueLayer::SendSuplMsgStatus(v20, *(*(a1 + 8) + 376), 4, 0, 0, 0);
    v22 = SuplPosPayloadHandler::GetInstance(v21);
    v23 = SuplPosPayloadHandler::ProcessPosPayload(v22, *(a1 + 40), *(a1 + 8));
    if (!v23)
    {
      return 0;
    }

    v24 = v23;
    v17 = a1;
    if (v24 == 65529)
    {
      v18 = 8;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_12;
  }

  if (v13 != 6)
  {
    v17 = a1;
    v18 = 2;
    goto LABEL_12;
  }

  *(a1 + 17) = 1;
  (*(*a1 + 16))(a1);
  SuplStateObject = SuplSession::GetSuplStateObject(*(a1 + 8));
  (*(*SuplStateObject + 40))(SuplStateObject, a2);
  return 0;
}

double SuplPosRecd::SetPayLoadPosResponses(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      *(v2 + 8) = 4;
      *(*(a1 + 40) + 88) = 1;
      v3 = (*(a1 + 40) + 96);
      if (v3 != (a2 + 8))
      {
        v4 = *(a2 + 16);
        v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *(a2 + 8)) >> 3);
        v6 = *(a2 + 8);

        std::vector<ASN1T_PosPayLoad_lpppayload>::__assign_with_size[abi:ne200100]<ASN1T_PosPayLoad_lpppayload*,ASN1T_PosPayLoad_lpppayload*>(v3, v6, v4, v5);
      }
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "SetPayLoadPosResponses", 515);
    LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
  }

  return result;
}

void std::vector<ASN1T_PosPayLoad_lpppayload>::__assign_with_size[abi:ne200100]<ASN1T_PosPayLoad_lpppayload*,ASN1T_PosPayLoad_lpppayload*>(uint64_t **a1, char **a2, char **a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::clear[abi:ne200100](a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0xAAAAAAAAAAAAAAALL)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_PosPayLoad_lpppayload>>(a1, v12);
      }
    }

    std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
  }

  v13 = a1[1] - v9;
  if (0xAAAAAAAAAAAAAAABLL * (v13 >> 3) >= a4)
  {
    v14 = std::__copy_impl::operator()[abi:ne200100]<ASN1T_PosPayLoad_lpppayload *,ASN1T_PosPayLoad_lpppayload *,ASN1T_PosPayLoad_lpppayload *>(a2, a3, v9);
    v15 = a1[1];
    if (v15 != v14)
    {
      v16 = a1[1];
      do
      {
        v18 = *(v16 - 24);
        v16 -= 24;
        v17 = v18;
        if (v18)
        {
          *(v15 - 16) = v17;
          operator delete(v17);
        }

        v15 = v16;
      }

      while (v16 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<ASN1T_PosPayLoad_lpppayload *,ASN1T_PosPayLoad_lpppayload *,ASN1T_PosPayLoad_lpppayload *>(a2, (a2 + v13), v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*,ASN1T_PosPayLoad_lpppayload*,ASN1T_PosPayLoad_lpppayload*>(a1, a2 + v13, a3, a1[1]);
  }
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*,ASN1T_PosPayLoad_lpppayload*,ASN1T_PosPayLoad_lpppayload*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v12 = *MEMORY[0x29EDCA608];
  v8 = a4;
  v9 = a4;
  v10[0] = a1;
  v10[1] = &v8;
  v10[2] = &v9;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v4, *v6, *(v6 + 8), *(v6 + 8) - *v6);
      v6 += 24;
      v4 = v9 + 3;
      v9 += 3;
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

void sub_2995F8AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<ASN1T_PosPayLoad_lpppayload *,ASN1T_PosPayLoad_lpppayload *,ASN1T_PosPayLoad_lpppayload *>(char **a1, char **a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, *v5, v5[1], v5[1] - *v5);
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

void NK_Comp_Sol_Acc(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x29EDCA608];
  ECEF2FSD_RotM((a2 + 832), *(a1 + 11192) * 0.0174532925, v78);
  v72 = 0;
  v4 = (a2 + 24312);
  memset_pattern16((a2 + 24136), &unk_29975C410, 0x58uLL);
  memset_pattern16((a2 + 24224), &unk_29975C410, 0x58uLL);
  memset_pattern16((a2 + 24312), &unk_29975C400, 0x58uLL);
  *(a2 + 24400) = 0;
  if ((*(a1 + 128) & 1) == 0)
  {
    if (*(a2 + 20016) <= 1.05)
    {
      v5 = *(a2 + 20024);
      if (v5 <= 1.05)
      {
        goto LABEL_8;
      }

      *(a1 + 144) = 0;
    }

    else
    {
      *(a1 + 144) = 0;
      *(a1 + 172) = 1;
      v5 = *(a2 + 20024);
    }

    if (v5 > 1.05)
    {
      *(a1 + 173) = 1;
    }

LABEL_8:
    ud2var(a1 + 872, 0xBu, 1, 1u, (a2 + 24136));
    *&v79 = 0;
    if (R8_EQ((a2 + 736), &v79) && *(a2 + 24136) > 1.0e18)
    {
      *(a2 + 24136) = 0x43ABC16D674EC800;
    }

    v6 = *(a2 + 20016);
    if (v6 > 1.05)
    {
      *&v79 = 0;
      if (!R8_EQ((a2 + 736), &v79) && *(a2 + 968) != 1)
      {
        v7 = (v6 + -1.0) * 0.25 * *(a2 + 24136);
        Apply_Q_Boost(v7, 0, 1u, (a1 + 872), &v72, &v79);
        *(a2 + 24136) = v7 + *(a2 + 24136);
        *(a1 + 208) = v7;
        EvLog_v("Q-Boost 3 ClkBias %g  post_QB[0] %g", sqrt(v7), *(a2 + 20016));
      }
    }

    *(a2 + 24224) = *(a2 + 24136) + *(a1 + 7248);
    ud2var(a1 + 872, 0xBu, 2, 1u, (a2 + 24144));
    *v76 = 0;
    if (R8_EQ((a2 + 744), v76) && *(a2 + 24144) > 1.0e18)
    {
      *(a2 + 24144) = 0x43ABC16D674EC800;
    }

    v8 = *(a2 + 20016);
    if (v8 > 1.05)
    {
      *v76 = 0;
      if (!R8_EQ((a2 + 744), v76) && *(a2 + 968) != 1)
      {
        v9 = (v8 + -1.0) * 0.25 * *(a2 + 24144);
        Apply_Q_Boost(v9, 1u, 1u, (a1 + 872), &v72, &v79);
        *(a2 + 24144) = v9 + *(a2 + 24144);
        if (*(a1 + 208) < v9)
        {
          *(a1 + 208) = v9;
        }

        EvLog_v("Q-Boost 3 ClkGLON %g  post_QB[0] %g", sqrt(v9), *(a2 + 20016));
      }
    }

    *(a2 + 24232) = *(a2 + 24144) + *(a1 + 7248);
    ud2var(a1 + 872, 0xBu, 3, 1u, (a2 + 24152));
    *v76 = 0;
    if (R8_EQ((a2 + 752), v76) && *(a2 + 24152) > 1.0e18)
    {
      *(a2 + 24152) = 0x43ABC16D674EC800;
    }

    v10 = *(a2 + 20016);
    if (v10 > 1.05)
    {
      *v76 = 0;
      if (!R8_EQ((a2 + 752), v76) && *(a2 + 968) != 1)
      {
        v11 = (v10 + -1.0) * 0.25 * *(a2 + 24152);
        Apply_Q_Boost(v11, 2u, 1u, (a1 + 872), &v72, &v79);
        *(a2 + 24152) = v11 + *(a2 + 24152);
        if (*(a1 + 208) < v11)
        {
          *(a1 + 208) = v11;
        }

        EvLog_v("Q-Boost 3 ClkBDS %g  post_QB[0] %g", sqrt(v11), *(a2 + 20016));
      }
    }

    *(a2 + 24240) = *(a2 + 24152) + *(a1 + 7248);
    ud2var(a1 + 872, 0xBu, 4, 1u, (a2 + 24160));
    v12 = *(a2 + 20024);
    if (v12 > 1.05 && *(a2 + 968) != 1)
    {
      v13 = (v12 + -1.0) * 0.25 * *(a2 + 24160);
      Apply_Q_Boost(v13, 3u, 1u, (a1 + 872), &v72, &v79);
      *(a2 + 24160) = v13 + *(a2 + 24160);
      *(a1 + 216) = v13;
      EvLog_v("Q-Boost 4 ClkD %g  post_QB[1] %g", sqrt(v13), *(a2 + 20024));
    }

    v14 = 0.01;
    *(a2 + 24248) = *(a2 + 24160) + *(a2 + 656) * 0.01;
    ud2var(a1 + 872, 0xBu, 5, 1u, (a2 + 24168));
    v15 = *(a2 + 24168);
    *(a2 + 24256) = v15;
    v16 = *(a2 + 20016);
    if (v16 > 1.05 && *(a2 + 12) <= 10 && *(a2 + 968) != 1)
    {
      v17 = v15 * (v16 + -1.0 + v16 + -1.0);
      Apply_Q_Boost(v17, 4u, 1u, (a1 + 872), &v72, &v79);
      *(a2 + 24168) = v17 + *(a2 + 24168);
      *(a1 + 208) = v17 + *(a1 + 208);
      EvLog_v("Q-Boost 3 dT_Sync %g  post_QB[0] %g", sqrt(v17), *(a2 + 20016));
      v16 = *(a2 + 20016);
    }

    if (v16 > 1.05 && *(a2 + 968) != 1)
    {
      Comp_NEDvar_UDU(a1 + 872, 0xBu, 5, (a2 + 832), (a2 + 24176));
      v18 = 0;
      v19 = 3022;
      v20 = v72;
      do
      {
        v21 = (*(a2 + 20016) + -1.0) * *(a2 + 8 * v19);
        if (v18 == 48)
        {
          v21 = v21 * *(a1 + 120);
        }

        v81[0] = 0;
        v80 = 0u;
        v79 = 0u;
        *&v81[1] = *(a2 + v18 + 832);
        v81[3] = *(a2 + v18 + 848);
        v76[0] = 0;
        if (v21 > 0.0)
        {
          rnk1_core((a1 + 872), 8u, v21, &v79, v76);
          if (v76[0])
          {
            ++v20;
          }
        }

        *(a1 + 208) = v21 + *(a1 + 208);
        EvLog_v("Q-Boost 3 Pos%d %g  post_QB[0] %g", v19 - 3022, sqrt(v21), *(a2 + 20016));
        v18 += 24;
        ++v19;
      }

      while (v18 != 72);
      v72 = v20;
    }

    v22 = (a2 + 22848);
    if ((*(a1 + 29) & 1) == 0)
    {
      if (*(a2 + 22992) == 1 && *(a2 + 23064) <= 400000000.0 || *(a2 + 24778) >= 3u)
      {
        *(a1 + 29) = 1;
      }

      else
      {
        v23 = *(a2 + 24136);
        if (v23 < 40000.0 && (*v22 & 1) == 0)
        {
          v24 = 40000.0 - v23;
          Apply_Q_Boost(40000.0 - v23, 0, 1u, (a1 + 872), &v72, &v79);
          *(a2 + 24136) = v24;
          *(a2 + 24224) = v24 + *(a1 + 7248);
          DbgLog_v(1, "NK_Comp_Sol_Acc: GPS Clock Bias var boosted %g", v24);
        }

        v25 = *(a2 + 24144);
        if (v25 < 40000.0 && (*v22 & 1) == 0)
        {
          v26 = 40000.0 - v25;
          Apply_Q_Boost(40000.0 - v25, 1u, 1u, (a1 + 872), &v72, &v79);
          *(a2 + 24144) = v26;
          *(a2 + 24232) = v26 + *(a1 + 7248);
          DbgLog_v(1, "NK_Comp_Sol_Acc: Glonass Clock Bias var boosted %g", v26);
        }

        v27 = *(a2 + 24152);
        if (v27 < 40000.0 && (*v22 & 1) == 0)
        {
          v28 = 40000.0 - v27;
          Apply_Q_Boost(40000.0 - v27, 2u, 1u, (a1 + 872), &v72, &v79);
          *(a2 + 24152) = v28;
          *(a2 + 24240) = v28 + *(a1 + 7248);
          DbgLog_v(1, "NK_Comp_Sol_Acc: Beidou Clock Bias var boosted %g", v28);
        }

        for (i = 0; i != 3; ++i)
        {
          *v76 = 0;
          ud2var(a1 + 872, 0xBu, i + 6, 1u, v76);
          if (*v76 < 40000.0)
          {
            v30 = 40000.0 - *v76;
            Apply_Q_Boost(40000.0 - *v76, i + 5, 1u, (a1 + 872), &v72, &v79);
            DbgLog_v(1, "NK_Comp_Sol_Acc: Pos var boosted %d %g", i, v30);
          }
        }
      }
    }

    Comp_NEDvar_UDU(a1 + 872, 0xBu, 5, (a2 + 832), (a2 + 24176));
    *(a2 + 24400) = v31;
    Comp_NEDvar_UDU(a1 + 872, 0xBu, 5, v78, (a2 + 24448));
    *(a2 + 24448) = vsqrtq_f64(*(a2 + 24448));
    *(a2 + 24464) = sqrt(*(a2 + 24464));
    Comp_NEDvar_UDU(a1 + 872, 0xBu, 8, v78, (a2 + 24472));
    *(a2 + 24472) = vsqrtq_f64(*(a2 + 24472));
    *(a2 + 24488) = sqrt(*(a2 + 24488));
    *(a2 + 24400) = *(a2 + 24400) + *(a1 + 7280);
    v32 = (a1 + 7256);
    v33 = (a2 + 24264);
    v34 = 3;
    do
    {
      v35 = *v32++;
      *v33 = *(v33 - 11) + v35;
      ++v33;
      --v34;
    }

    while (v34);
    if (*(a2 + 20024) > 1.05 && *(a2 + 968) != 1)
    {
      Comp_NEDvar_UDU(a1 + 872, 0xBu, 8, (a2 + 832), (a2 + 24200));
      v36 = 0;
      v37 = 3025;
      v38 = v72;
      do
      {
        v39 = (*(a2 + 20024) + -1.0) * *(a2 + 8 * v37);
        if (v36 == 48)
        {
          v39 = v39 * *(a1 + 120);
        }

        v80 = 0u;
        memset(v81, 0, sizeof(v81));
        v79 = 0u;
        v82 = *(a2 + v36 + 832);
        v83 = *(a2 + v36 + 848);
        v76[0] = 0;
        if (v39 > 0.0)
        {
          rnk1_core((a1 + 872), 0xBu, v39, &v79, v76);
          if (v76[0])
          {
            ++v38;
          }
        }

        *(a1 + 216) = v39 + *(a1 + 216);
        EvLog_v("Q-Boost 4 Vel%d %g  post_QB[1] %g", v37 - 3025, sqrt(v39), *(a2 + 20024));
        v36 += 24;
        ++v37;
      }

      while (v36 != 72);
      v72 = v38;
    }

    Comp_NEDvar_UDU(a1 + 872, 0xBu, 8, (a2 + 832), (a2 + 24200));
    memset(v76, 0, sizeof(v76));
    v77 = 0.0;
    if (*(a1 + 11028) >= 4u)
    {
      v40 = *(a2 + 656);
      if (v40 > 0.0)
      {
        v41 = 0;
        v73 = 0.0;
        v74 = 0.0;
        v75 = 0.0;
        do
        {
          *(&v73 + v41) = -*(a2 + 25248 + v41) / v40;
          v41 += 8;
        }

        while (v41 != 24);
        v42 = 0;
        v43 = v73;
        v44 = v74;
        v45 = (a2 + 848);
        v46 = v75;
        do
        {
          v47 = *(v45 - 1) * v44 + *(v45 - 2) * v43;
          v48 = *v45;
          v45 += 3;
          *&v76[v42] = v47 + v48 * v46;
          v42 += 2;
        }

        while (v42 != 6);
LABEL_109:
        for (j = 0; j != 6; j += 2)
        {
          v64 = a2 + j * 4;
          v65 = *(a2 + j * 4 + 24200) + v40 * (*&v76[j] * 0.5) * (v40 * (*&v76[j] * 0.5));
          *(v64 + 24200) = v65;
          *(v64 + 24288) = v65 + v40 * 0.0001;
        }

        if (v72)
        {
          *(a1 + 128) = 1;
          *(a1 + 132) = 23;
          memset_pattern16((a2 + 24136), &unk_29975C410, 0x58uLL);
          memset_pattern16((a2 + 24224), &unk_29975C410, 0x58uLL);
          *(a2 + 24400) = 0;
        }

        goto LABEL_113;
      }
    }

    v49 = *(a1 + 20);
    if (v49 <= 4)
    {
      if (v49 > 2)
      {
        if (v49 == 3)
        {
          __asm { FMOV            V0.2D, #2.0 }

          *v76 = _Q0;
          v56 = 4.0;
        }

        else
        {
          __asm { FMOV            V0.2D, #3.0 }

          *v76 = _Q0;
          v56 = 9.0;
          v14 = 0.00694444444;
        }

        goto LABEL_108;
      }

      v50 = 0.0;
      if (v49 < 2)
      {
LABEL_105:
        *v76 = sqrt(v50);
        *&v76[2] = *v76;
        v56 = 1000000.0;
        if (v49 < 2)
        {
          v56 = 0.0;
        }

        v14 = 1.0;
        goto LABEL_108;
      }

      if (v49 == 2)
      {
        __asm { FMOV            V0.2D, #0.5 }

        *v76 = _Q0;
        v56 = 0.25;
        v14 = 0.0204081633;
LABEL_108:
        v77 = sqrt(v56 * v14);
        v40 = *(a2 + 656);
        goto LABEL_109;
      }

LABEL_104:
      v50 = 1000000.0;
      goto LABEL_105;
    }

    if (v49 > 6)
    {
      if (v49 != 7)
      {
        if (v49 == 8)
        {
          *v76 = vdupq_n_s64(0x408F400000000000uLL);
          v14 = 1.0;
          v56 = 1000000.0;
          goto LABEL_108;
        }

        goto LABEL_104;
      }

      __asm { FMOV            V0.2D, #20.0 }

      *v76 = _Q0;
      v14 = 1.0;
      *&v58 = 400.0;
    }

    else
    {
      if (v49 == 5)
      {
        __asm { FMOV            V0.2D, #5.0 }

        *v76 = _Q0;
        v56 = 25.0;
        v14 = 0.0625;
        goto LABEL_108;
      }

      __asm { FMOV            V0.2D, #10.0 }

      *v76 = _Q0;
      v14 = 0.25;
      *&v58 = 100.0;
    }

    v56 = *&v58;
    goto LABEL_108;
  }

LABEL_113:
  v66 = 11;
  while (*(v4 - 22) > 0.0)
  {
    *v4 = sqrt(*(v4 - 11));
    ++v4;
    if (!--v66)
    {
      return;
    }
  }

  *(a1 + 128) = 1;
  *(a1 + 132) = 91;
  memset_pattern16((a2 + 24136), &unk_29975C410, 0x58uLL);
  memset_pattern16((a2 + 24224), &unk_29975C410, 0x58uLL);
  v67 = (a2 + 24320);
  v68 = xmmword_299728F20;
  v69 = 12;
  v70 = vdupq_n_s64(0xBuLL);
  v71 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v70, v68)).u8[0])
    {
      *(v67 - 1) = 0x41634325C0000000;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), *&v68)).i32[1])
    {
      *v67 = 0x41634325C0000000;
    }

    v68 = vaddq_s64(v68, v71);
    v67 += 2;
    v69 -= 2;
  }

  while (v69);
  *(a2 + 24400) = 0;
}

uint64_t SuplLppProvider::GetInstance(SuplLppProvider *this)
{
  v5 = *MEMORY[0x29EDCA608];
  if (SuplLppProvider::GetInstance(void)::pred_suplLppProvider != -1)
  {
    dispatch_once(&SuplLppProvider::GetInstance(void)::pred_suplLppProvider, &__block_literal_global_3);
  }

  result = SuplLppProvider::m_supl_lpp_provider;
  if (!SuplLppProvider::m_supl_lpp_provider)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "GetInstance", "GetInstance");
      LbsOsaTrace_WriteLog(0xEu, __str, v3, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("GetInstance", "SuplLppProvider.cpp", 42, "false && Memory allocation failure");
  }

  return result;
}

void *___ZN15SuplLppProvider11GetInstanceEv_block_invoke()
{
  result = operator new(0x18uLL, MEMORY[0x29EDC9418]);
  if (result)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  SuplLppProvider::m_supl_lpp_provider = result;
  return result;
}

void SuplLppProvider::SetLppAdPayload(SuplProvider *a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    goto LABEL_6;
  }

  v2 = a2;
  v3 = *(SuplProvider::GetInstance(a1) + 32);
  if (!v3)
  {
LABEL_5:
    LODWORD(a2) = 0;
LABEL_6:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, a2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 69, "SetLppAdPayload", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v5, 0, 1);
    }

    return;
  }

  while (*v3 != *v2)
  {
    v3 = *(v3 + 8);
    if (!v3)
    {
      goto LABEL_5;
    }
  }

  if ((*(v2 + 32) || *(v2 + 8) == *(v2 + 16)) && LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "SetLppAdPayload", 515);
    LbsOsaTrace_WriteLog(0x12u, __str, v7, 0, 1);
  }

  SuplSessionVer2::SetLPPAdPayLoad((v3 + 16), v2);
  v8 = *(v3 + 520);
  if (v8)
  {
    SuplSession::ConnectInd((v3 - 8), v8);
  }
}

void SuplLppProvider::SetLppCapPayload(uint64_t *a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    goto LABEL_4;
  }

  v2 = a2;
  if (*(a2 + 4) || (v5 = *(a2 + 8), v6 = *(v2 + 16), v7 = (v2 + 8), v5 == v6))
  {
    LODWORD(a2) = 0;
LABEL_4:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, a2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 69, "SetLppCapPayload", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v4, 0, 1);
    }

    return;
  }

  if (v7 != a1)
  {

    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, v5, v6, v6 - v5);
  }
}

void NK_Add_Nominal_PN(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double *a5, uint64_t a6, double *a7)
{
  v90 = *MEMORY[0x29EDCA608];
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  ECEF2FSD_RotM((a2 + 208), *(a1 + 11192) * 0.0174532925, v80);
  __asm { FMOV            V0.2D, #1.0 }

  v82 = _Q0;
  v18 = *(a2 + 32);
  if (v18 < 0.0)
  {
    return;
  }

  v75 = a7;
  v19 = v18 * v18;
  *&v83 = 0x3FF0000000000000;
  v20 = *(a4 + 24);
  v21 = v18 * (CP_Noise_dT_Sync[*(a2 + 16)] + *(a4 + 32) + v18 * v18 * v20 * 0.0833333333);
  v22 = v21;
  if (a3)
  {
    v22 = v21 + *(a4 + 16);
  }

  v23 = 0;
  v79 = 0;
  v78 = v18;
  if (v22 > 0.0)
  {
    rnk1_core(a5, 1u, v22, &v83, &v79);
    v18 = v78;
    v20 = *(a4 + 24);
    v21 = v78 * (CP_Noise_dT_Sync[*(a2 + 16)] + *(a4 + 32) + v19 * v20 * 0.0833333333);
    v23 = v79 != 0;
  }

  *&v83 = 0;
  *(&v83 + 1) = 0x3FF0000000000000;
  v24 = v21;
  if (a3)
  {
    v24 = v21 + *(a4 + 16);
  }

  v79 = 0;
  if (v24 > 0.0)
  {
    rnk1_core(a5, 2u, v24, &v83, &v79);
    v18 = v78;
    v20 = *(a4 + 24);
    v21 = v78 * (CP_Noise_dT_Sync[*(a2 + 16)] + *(a4 + 32) + v19 * v20 * 0.0833333333);
    v25 = v23 ? 2 : 1;
    if (v79)
    {
      v23 = v25;
    }
  }

  v83 = 0uLL;
  *&v84 = 0x3FF0000000000000;
  if (a3)
  {
    v21 = v21 + *(a4 + 16);
  }

  v26 = 0;
  v79 = 0;
  v27 = sqrt(v18);
  if (v21 > 0.0)
  {
    rnk1_core(a5, 3u, v21, &v83, &v79);
    v18 = v78;
    v20 = *(a4 + 24);
    v26 = v79 != 0;
  }

  v28 = 0;
  *&v83 = v18 * v27 * 0.5;
  *(&v83 + 1) = *&v83;
  *&v84 = *&v83;
  *(&v84 + 1) = v27;
  v79 = 0;
  if (v20 > 0.0)
  {
    rnk1_core(a5, 4u, v20, &v83, &v79);
    v18 = v78;
    v28 = v79 != 0;
  }

  v77 = v19 * 0.5;
  v29 = (a2 + 104);
  v30 = 0.0;
  for (i = 4; i > 1; --i)
  {
    v32 = *v29--;
    v30 = v30 + v32 * v32;
  }

  v33 = sqrt(v30);
  *a4 = v33;
  v34 = *(a4 + 72);
  if (v33 > v34)
  {
    _NF = 1;
  }

  else
  {
    v34 = v33;
    _NF = v33 < 1.0;
  }

  if (_NF)
  {
    if (v34 >= 1.0)
    {
      v33 = v34;
    }

    else
    {
      v33 = 1.0;
    }

    *a4 = v33;
  }

  v36 = 0;
  v37 = v23 + v26 + v28;
  v38 = v33 * *(a4 + 8);
  *&v83 = v19 * 0.5;
  *(&v83 + 1) = v19 * 0.5;
  *&v84 = v19 * 0.5;
  *(&v84 + 1) = v18;
  v79 = 0;
  if (v38 > 0.0)
  {
    rnk1_core(a5, 4u, v38, &v83, &v79);
    v18 = v78;
    v36 = v79 != 0;
  }

  v39 = v37 + v36;
  v40 = *(a1 + 20);
  v41 = *(a1 + 24);
  if (v40 != v41)
  {
    if (v40 <= 2)
    {
      if (v40)
      {
        if (v40 == 1)
        {
          if (!v41)
          {
            goto LABEL_65;
          }
        }

        else if (v40 != 2 || v41 <= 1)
        {
          goto LABEL_65;
        }
      }
    }

    else if (v40 > 4)
    {
      if (v40 == 5)
      {
        if ((v41 & 0xFFFFFFFE) != 6)
        {
          goto LABEL_65;
        }
      }

      else if (v40 != 6 || v41 != 7)
      {
        goto LABEL_65;
      }
    }

    else if (v40 == 3)
    {
      if (v41 <= 2)
      {
        goto LABEL_65;
      }
    }

    else if (v41 - 5 >= 3)
    {
      goto LABEL_65;
    }

    if (*(a1 + 11632))
    {
      v42 = *(a1 + 140);
      if (v42 >= *(a1 + 144))
      {
        v42 = *(a1 + 144);
      }

      if (v42)
      {
        if (v40 < 2)
        {
          goto LABEL_65;
        }

        v43 = *(a1 + 11032);
        if (v43 <= 0x78 && ((v40 - 3) > 5 || v43 <= 0x1E && ((v40 - 4) > 4 || v43 < 0xB)))
        {
          goto LABEL_65;
        }
      }

      v44 = 0;
    }

    else
    {
      v45 = *(a1 + 140);
      if (v45 >= *(a1 + 144))
      {
        v45 = *(a1 + 144);
      }

      if (*(a1 + 11480) > (5 * v45))
      {
        goto LABEL_65;
      }

      v44 = 1;
    }

    *(a1 + 11632) = v44;
  }

LABEL_65:
  if (*(a1 + 11632) != 1 || (v46 = *(a2 + 320), v46 > 4.0) || *(a1 + 11161) == 1)
  {
    v47 = *(a4 + 40);
    if (*(a1 + 11161) == 1)
    {
      v47 = vaddq_f64(v47, *(a4 + 56));
    }

    v48 = 0;
    v49 = v47.f64[1];
    v50 = &v82;
    v51 = 0uLL;
    v76 = v47.f64[0];
    do
    {
      v85 = 0;
      v83 = v51;
      v84 = v51;
      v86 = *(a2 + v48 + 208);
      v87 = *(a2 + v48 + 224);
      v52 = v49;
      if (v48 != 48)
      {
        v52 = v47.f64[0] * *v50;
      }

      v53 = 0;
      v54 = v18 * (v52 + CP_Noise_dT_Sync[*(a2 + 16)]);
      v79 = 0;
      if (v54 > 0.0)
      {
        rnk1_core(a5, 8u, v54, &v83, &v79);
        v51 = 0uLL;
        v47.f64[0] = v76;
        v18 = v78;
        v53 = v79 != 0;
      }

      v39 += v53;
      ++v50;
      v48 += 24;
    }

    while (v48 != 72);
    v46 = *(a2 + 320);
  }

  if (v46 > 16.0)
  {
    v55 = fabs(*(a1 + 11200));
    if (v55 > 2.0)
    {
      v56 = v18 * v46;
      v57 = __sincos_stret(v55 * 0.0174532925);
      v58 = v56 * v57.__sinval;
      v59 = 1.0;
      if (v46 < 23.0)
      {
        v59 = (v46 + -16.0) / 7.0;
      }

      v18 = v78;
      v60 = v56 * (1.0 - v57.__cosval) * v59 * (v56 * (1.0 - v57.__cosval) * v59);
      v61 = v58 * v59 * (v58 * v59);
      v62 = v80;
      v63 = 1;
      v64 = 0uLL;
      do
      {
        v65 = 0;
        v66 = v63;
        v85 = 0;
        v83 = v64;
        v84 = v64;
        v86 = *v62;
        v87 = v62[2];
        if (v63)
        {
          v67 = v60;
        }

        else
        {
          v67 = v61;
        }

        v79 = 0;
        if (v67 > 0.0)
        {
          rnk1_core((a1 + 344), 8u, v67, &v83, &v79);
          v64 = 0uLL;
          v18 = v78;
          v65 = v79 != 0;
        }

        v63 = 0;
        v39 += v65;
        v62 = &v80[1] + 1;
      }

      while ((v66 & 1) != 0);
    }
  }

  v68 = 0;
  v69 = &v82;
  v70 = 0uLL;
  do
  {
    v85 = 0;
    v83 = v70;
    v84 = v70;
    v71 = *(a2 + v68 + 208);
    v86 = vmulq_n_f64(v71, v77);
    v72 = *(a2 + v68 + 224);
    v87 = v77 * v72;
    v88 = vmulq_n_f64(v71, v18);
    v89 = v18 * v72;
    if (v68 == 48)
    {
      v73 = *(a4 + 80);
    }

    else
    {
      v73 = *(a4 + 72) * *v69;
    }

    v74 = 0;
    v79 = 0;
    if (v73 > 0.0)
    {
      rnk1_core(a5, 0xBu, v73, &v83, &v79);
      v70 = 0uLL;
      v18 = v78;
      v74 = v79 != 0;
    }

    v39 += v74;
    ++v69;
    v68 += 24;
  }

  while (v68 != 72);
  if (v39)
  {
    gn_report_assertion_failure("Rank 1 update fail");
    *(a6 + 4) = 21;
    *a6 = 1;
  }

  else
  {
    ud2var(a5, 0xBu, 1, 0xBu, v75);
    Comp_NEDvar_UDU(a5, 0xBu, 5, (a2 + 208), v75 + 5);

    Comp_NEDvar_UDU(a5, 0xBu, 8, (a2 + 208), v75 + 8);
  }
}

void CUCFCheckINTEGERConstraint(uint64_t result, uint64_t a2, int *a3)
{
  if ((*(a2 + 24) & 0x20) != 0 && *(a2 + 32) > *a3 || (*(a2 + 24) & 8) != 0 && *(a2 + 40) < *a3)
  {

    EPErrorHandler(result, 18);
  }
}

void CUCFCheckStringConstraint(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 32) > a3 || *(a2 + 24) < 0 && *(a2 + 40) < a3)
  {
    EPErrorHandler(result, 19);
  }
}

void CUCFCheckCHARACTER_STRINGConstraint(uint64_t result, uint64_t a2, void *a3)
{
  v7 = a3 + 1;
  v6 = a3[1];
  if (v6 < *(a2 + 48) || *(a2 + 40) < 0 && *(a2 + 56) < v6)
  {
    EPErrorHandler(result, 19);
  }

  v8 = *(a2 + 32);
  if (v8 && *v7)
  {
    v9 = 0;
    v10 = *(a2 + 24);
    while (1)
    {
      if (v8)
      {
        v11 = *(*a3 + v9);
        if (v11 != *v10)
        {
          break;
        }
      }

      v12 = 0;
LABEL_11:
      if (v12 == v8)
      {
        goto LABEL_18;
      }

      if (++v9 == *v7)
      {
        return;
      }
    }

    v12 = 0;
    while (v8 - 1 != v12)
    {
      v13 = v10[++v12];
      if (v11 == v13)
      {
        goto LABEL_11;
      }
    }

LABEL_18:
    EPErrorHandler(result, 20);
  }
}

void CUCFCheckStructOfConstraint(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 40) > a3 || *(a2 + 32) < 0 && *(a2 + 48) < a3)
  {
    EPErrorHandler(result, 19);
  }
}

uint64_t NK_Init_Cov_Mat(int a1, unsigned int *a2, int a3, _BYTE *a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8, double a9, int64x2_t *a10, uint64_t a11)
{
  v12 = a1 ^ 1 | *a6;
  if (v12 == 1)
  {
    if (*a6)
    {
      v19 = vdupq_n_s64(0x4163125300000000uLL);
      *a10 = v19;
      a10[1] = v19;
      a10[2] = v19;
      a10[3].i64[0] = 0x4163125300000000;
    }

    *a7 = -1;
    v20 = vdupq_n_s64(0x416312D000000000uLL);
    *(a7 + 40) = v20;
    *(a7 + 56) = v20;
    *(a7 + 88) = -1;
    *a8 = -1;
    *(a8 + 40) = v20;
    *(a8 + 56) = v20;
    *(a8 + 88) = -1;
    bzero((a5 + 8), 0x208uLL);
    v21 = ClkBiasOrigVar[a3];
    *a11 = v21;
    *a5 = v21;
    *(a11 + 8) = *a11;
    *(a5 + 16) = *a5;
    *(a11 + 16) = *a11;
    *(a5 + 40) = *a5;
    v22 = DT_SyncOrigVar[a3];
    *(a11 + 32) = v22;
    *(a5 + 112) = v22;
    v23 = a9 * 99930819.3 * (a9 * 99930819.3);
    *(a11 + 24) = v23;
    *(a5 + 72) = v23;
    if (a1)
    {
      v24 = 0x4222A05F20000000;
      if (*a4)
      {
        v24 = 0x4341C37937E08000;
      }
    }

    else
    {
      v24 = 0x4341C37937E08000;
    }

    *(a11 + 48) = v24;
    *(a11 + 56) = v24;
    *(a11 + 40) = v24;
    *(a5 + 280) = v24;
    *(a5 + 216) = v24;
    *(a5 + 160) = v24;
    v25 = *a2;
    if (v25 > 8)
    {
      v26 = 0x4197D78400000000;
    }

    else
    {
      v26 = qword_29975C550[v25];
    }

    *(a11 + 72) = v26;
    *(a11 + 80) = v26;
    *(a11 + 64) = v26;
    *(a5 + 520) = v26;
    *(a5 + 432) = v26;
    *(a5 + 352) = v26;
    *a6 = 0;
    v27 = *(a6 + 2) + 1;
    *(a6 + 3) = 0;
    *(a6 + 4) = 0;
    *(a6 + 2) = v27;
    *(a6 + 6) = -1;
  }

  else
  {
    ++*(a6 + 3);
  }

  return v12;
}

void SV_Data_Decode(unsigned __int8 *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = *MEMORY[0x29EDCA608];
  v13 = *(a6 + 8);
  if (*(a6 + 5) == 1 && *a6 >= 3)
  {
    v14 = *(a6 + 24) + 604800 * *(a6 + 16);
    v49 = v14;
    v15 = a3[672] - v13;
    if (v15 > 0 || (v15 = a3[673] - v13, v15 > 0) || (v15 = a3[674] - v13, v15 > 0) || (v15 = a3[675] - v13, v15 >= 1))
    {
      v14 += v15 / 0x3E8u;
      v49 = v14;
    }
  }

  else
  {
    v14 = 0;
    v49 = 0;
  }

  if (*(a6 + 60) < 1)
  {
    v20 = 0;
  }

  else
  {
    v16 = a3[673] - v13;
    if (v16 < 1)
    {
      v16 = 1000;
    }

    v17 = *(a6 + 72) + v16 * 0.001;
    v18 = -0.5;
    if (v17 > 0.0)
    {
      v18 = 0.5;
    }

    v19 = v17 + v18;
    if (v19 <= 2147483650.0)
    {
      if (v19 >= -2147483650.0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0x80000000;
      }
    }

    else
    {
      v20 = 0x7FFFFFFF;
    }
  }

  *(a2 + 60) = v20;
  DD_Delete_Bad_GPS_Data(a1, (a1 + 224), (a1 + 192), a7);
  DD_Delete_Inhib_GPS_Data(*(a4 + 432), a1, (a1 + 224), (a1 + 192), a7);
  DD_Delete_Bad_QZSS_Data((a1 + 3584), (a1 + 3654), (a1 + 3644), a7);
  DD_Delete_Inhib_QZSS_Data(*(a4 + 448), (a1 + 3584), (a1 + 3654), (a1 + 3644), a7);
  DD_Delete_Bad_GLON_Data(a1, a7);
  DD_Delete_Inhib_GLON_Data(*(a4 + 440), a1, a7);
  DD_Delete_Bad_BDS_Data((a1 + 6508), (a1 + 6456), a7);
  DD_Delete_Inhib_BDS_Data(*(a4 + 464), (a1 + 6508), (a1 + 6456), a7);
  DD_Delete_Bad_GAL_Data(a1, a7);
  DD_Delete_Inhib_GAL_Data(*(a4 + 472), a1, a7);
  if (*(a4 + 1133) == 1 && v14 >= 1)
  {
    v21 = *(a4 + 1040);
    if (v21 >= 1 && v14 - v21 <= 604799)
    {
      for (i = 13; i != 685; i += 14)
      {
        LOBYTE(a3[i]) = 0;
      }
    }
  }

  v23 = 0;
  *(a2 + 9) = 0;
  do
  {
    v24 = v23;
    v25 = &a3[14 * v23];
    if (*(v25 + 52) != 1)
    {
      goto LABEL_64;
    }

    v26 = *v25;
    *(a2 + 4) = *v25;
    if (v26 > 3u)
    {
      switch(v26)
      {
        case 4u:
          v35 = &a3[14 * v24];
          v36 = *(v35 + 4);
          v30 = v35 + 1;
          if (v36 != 1)
          {
            goto LABEL_64;
          }

          if ((*(*(a4 + 464) + BYTE2(v26) - 1) & 1) == 0 && *(v30 + 2) <= 5u && *(v30 + 2))
          {
            *(a2 + 48) = 0;
            *(a2 + 16) = 0u;
            *(a2 + 32) = 0u;
            v37 = *(v30 + 2);
            v38 = *(v30 + 6);
            *(a2 + 48) = *(v30 + 5);
            *(a2 + 16) = v37;
            *(a2 + 32) = v38;
            *(a2 + 56) = *(v30 + 2);
            *(a2 + 8) = BYTE2(v26) - 1;
            DD_Proc_BDS_Data(a1, a2, a6, &v49, a7);
          }

          break;
        case 6u:
          EvLog("SV_Data_Decode: SBAS Data decoding is NOT Supported.");
          goto LABEL_64;
        case 5u:
LABEL_40:
          v29 = &a3[14 * v24];
          v31 = *(v29 + 4);
          v30 = v29 + 1;
          if (v31 != 1)
          {
            goto LABEL_64;
          }

          if (*(v30 + 2) <= 5u && *(v30 + 2))
          {
            v32 = *(v30 + 2);
            v33 = *(v30 + 6);
            *(a2 + 48) = *(v30 + 5);
            *(a2 + 16) = v32;
            *(a2 + 32) = v33;
            *(a2 + 56) = *(v30 + 2);
            if (v26 == 5)
            {
              v44 = BYTE2(v26) - 193;
              if ((*(*(a4 + 448) + v44) & 1) == 0)
              {
                *(a2 + 8) = v44;
                DD_Proc_QZSS_Data(a1, a2, a4, a6, &v49, a7);
              }
            }

            else if (v26 == 1)
            {
              v34 = BYTE2(v26) - 1;
              if ((*(*(a4 + 432) + v34) & 1) == 0)
              {
                *(a2 + 8) = v34;
                DD_Proc_GPS_Data(a1, a2, a4, a6, &v49, a7);
              }
            }
          }

          break;
        default:
          goto LABEL_64;
      }

LABEL_63:
      *v30 = 0;
      goto LABEL_64;
    }

    switch(v26)
    {
      case 1u:
        goto LABEL_40;
      case 2u:
        v39 = &a3[14 * v24];
        v40 = *(v39 + 4);
        v30 = v39 + 1;
        if (v40 != 1)
        {
          break;
        }

        if (*(v30 + 2) == 1 && ((v41 = *(v30 + 1), v42 = *(a7 + 16432 + 4 * (v41 + 7)), v42 == 2139062143) || (*(*(a4 + 440) + v42 - 1) & 1) == 0))
        {
          *(a2 + 58) = v41;
          *(a2 + 16) = 0u;
          *(a2 + 32) = 0u;
          *(a2 + 48) = 0;
          v43 = *(v30 + 1);
          *(a2 + 24) = v30[3];
          *(a2 + 16) = v43;
          *(a2 + 15) = *(v30 + 3);
          if ((v41 + 7) <= 0xDu)
          {
            DD_Proc_GLON_Data(a1, a2, a4, a6, &v49, a7);
          }
        }

        else if (g_Enable_Event_Log >= 2u)
        {
          EvLog_v("SV_Data_Decode:  Glonass String Parity Fail %d  %x %x %x", v24, *(a2 + 16), *(a2 + 20), *(a2 + 24));
        }

        goto LABEL_63;
      case 3u:
        v27 = *(v25 + 1);
        v28 = BYTE2(v26) - 1;
        *(a2 + 8) = BYTE2(v26) - 1;
        if (*(v25 + 4) == 1)
        {
          if ((*(*(a4 + 472) + BYTE2(v26) - 1) & 1) == 0 && *(v25 + 6) == 1)
          {
            if (*(v25 + 7))
            {
              EvLog("SV_Data_Decode: Galileo I/NAV Alert Page decoding is not supported yet.");
            }

            else
            {
              v45 = *(v25 + 22);
              *(a2 + 70) = *(v25 + 7);
              *(a2 + 64) = v45;
              *(a2 + 78) = *(v25 + 4);
              DD_Proc_GAL_INAV_Data((a2 + 64), v28, v27, &v49, a1, a6, a7);
            }
          }

          *(v25 + 4) = 0;
        }

        break;
    }

LABEL_64:
    v23 = *(a2 + 9) + 1;
    *(a2 + 9) = v23;
  }

  while (v23 < 0x30u);
  DD_Save_New_GPS_Eph(v49, (a1 + 288), (a1 + 3552), (a1 + 192), a7);
  DD_Save_New_QZSS_Eph(v49, (a1 + 3676), (a1 + 4696), (a1 + 3644), a7);
  DD_Save_New_GLON_Eph(v49, *(a6 + 60), *(a2 + 60), a7, a1);
  DD_Save_New_GLON_Alm(v49, a7, a1);
  DD_Save_New_BDS_D1_Eph(v49, a7, a1);
  DD_Save_New_GAL_INAV_Eph(v49, a1, a7);
  if (!*(a7 + 39452))
  {
    v48 = 0;
    API_Get_Next_Leap_Second((a7 + 39452), (a7 + 39456), &v48);
    if ((v48 - 1) <= 0x7FFFFFFD)
    {
      API_Get_UTC_Cor(0, (a7 + 39464));
    }
  }

  DD_Check_Age_GPS_Data(v49, v13, a1, (a1 + 224), (a1 + 192), a7);
  DD_Check_Age_QZSS_Data(v49, v13, (a1 + 3584), (a1 + 3654), (a1 + 3644), a7);
  DD_Check_Age_GLON_Data(a6, a7, v46);
  DD_Check_GLON_Strings(*(a6 + 60), *(a2 + 60), a1, a7);
  DD_LS_Delete_EphAlm_Str(*(a7 + 39452), a6, a1);
  DD_Check_Age_BDS_Data(v49, v13, (a1 + 6508), (a1 + 6456), a7);
  if (DD_Check_Age_GAL_Data(v49, v13, a7))
  {
    DD_Delete_Bad_GAL_Data(a1, a7);
  }

  if (*(a4 + 31) == 1)
  {
    DD_Assist_GPS_Data(a1, v49, a5, a7, a4);
  }

  if (*(a4 + 33) == 1)
  {
    DD_Assist_QZSS_Data(a1, v49, a5, a7, a4);
  }

  if (*(a4 + 32) == 1)
  {
    DD_Assist_GLON_Data(v49, a5, a7, a4);
  }

  if (*(a4 + 35) == 1)
  {
    DD_Assist_BDS_Data(a1, v49, a5, a7, a4);
  }

  if (*(a4 + 36) == 1)
  {
    DD_Assist_GAL_Data(a1, v49, a5, a7, a4);
  }
}

void GncP16_01StopStateHndlrTimer(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (qword_2A1939E78 == 1)
  {
    if (AgpsFsmStopTimer(8789766))
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v0 = mach_continuous_time();
        v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncP16_01StopStateHndlrTimer", 1545);
        v2 = 2;
LABEL_7:
        LbsOsaTrace_WriteLog(8u, __str, v1, v2, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: State,%hhu,TimerStarted,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 68, "GncP16_01StopStateHndlrTimer", g_GncPStateInfo, HIDWORD(qword_2A1939E78));
      v2 = 5;
      goto LABEL_7;
    }

    LOBYTE(qword_2A1939E78) = 0;
    HIDWORD(qword_2A1939E78) = 0;
  }
}

double GncP16_02StartStateHndlrTimer(unsigned int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  GncP16_01StopStateHndlrTimer();
  if (AgpsFsmStartTimer(8789766, a1))
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GncP16_02StartStateHndlrTimer", 1544, a1);
      LbsOsaTrace_WriteLog(8u, __str, v4, 2, 1);
    }

    LOBYTE(qword_2A1939E78) = 0;
  }

  else
  {
    LOBYTE(qword_2A1939E78) = 1;
    HIDWORD(qword_2A1939E78) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: State,%hhu,DueTime,%ums\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "GncP16_02StartStateHndlrTimer", g_GncPStateInfo, a1);
      LbsOsaTrace_WriteLog(8u, __str, v6, 5, 1);
    }
  }

  return result;
}

void GncP16_11StartME(int a1)
{
  v13 = *MEMORY[0x29EDCA608];
  GncP02_13ClearMEBuf();
  LOBYTE(g_GncPStateInfo) = 6;
  v2 = gnssOsa_Calloc("GncP16_09SendWakeMEReqtoGnm", 245, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    v2[12] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ME_WAKE_REQ =>GNM LtlTable,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP16_09SendWakeMEReqtoGnm", a1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(134, 128, 8785920, v3);
  }

  v6 = 0;
  v7 = 0;
  v8 = -1;
  v9 = 1;
  do
  {
    while (1)
    {
      v10 = v9;
      v11 = &g_GncPCntxtInfo + 36 * v6;
      if (v11[8] != 1 || v11[4] != 1)
      {
        break;
      }

      v9 = 0;
      if (*(v11 + 6) < v8)
      {
        v8 = *(v11 + 6);
      }

      v6 = 1;
      v7 = 1;
      if ((v10 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v9 = 0;
    v6 = 1;
  }

  while ((v10 & 1) != 0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (v8 <= 0x3E7)
  {
    GncP05_23SetFixInterval(v8);
    goto LABEL_18;
  }

LABEL_17:
  GncP05_23SetFixInterval(0x1F4u);
  BYTE5(g_GncPStateInfo) = 1;
LABEL_18:
  GN_GPS_WakeUp();
  dword_2A1939E74 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  byte_2A1939E70 = 1;
  byte_2A1939E68 = 0;
  GncP16_01StopStateHndlrTimer();
}

void GncP16_13CheckStopME(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = mach_continuous_time();
  if (BYTE2(g_GncPStateInfo) && (BYTE3(g_GncPStateInfo) & 1) == 0)
  {
    LOBYTE(g_GncPStateInfo) = 9;
  }

  v3 = byte_2A1939E68 | BYTE1(g_GncPStateInfo);
  if (BYTE6(g_GncPStateInfo) == 1)
  {
    v3 |= ((*&g_MacClockTicksToMsRelation * v2) - HIDWORD(g_GncPStateInfo)) >> 3 < 0x271;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FG,%u,BG,%u,FA,%u,FW,%u,LastAsstTick,%u,LastSleepTick,%u,MEOn,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP16_13CheckStopME", BYTE3(g_GncPStateInfo), BYTE4(g_GncPStateInfo), BYTE1(g_GncPStateInfo), BYTE2(g_GncPStateInfo), HIDWORD(g_GncPStateInfo), dword_2A1939E6C, v3 & 1);
    LbsOsaTrace_WriteLog(8u, __str, v5, 4, 1);
  }

  if ((v3 & 1) == 0)
  {
    GncP16_10StopME(0, a1);
  }
}

void GncP16_10StopME(int a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  __p = 0;
  __n = 0;
  v24 = 0;
  if (a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = word_2A1920800;
  }

  if (BYTE2(g_GncPCntxtInfo))
  {
    v4 = 0;
  }

  else
  {
    v4 = byte_2A1920802;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: StartMode,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP16_05GetResetType", v4);
    LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
  }

  if (v4 <= 2u)
  {
    switch(v4)
    {
      case 0u:
        goto LABEL_35;
      case 1u:
        v8 = "FACT";
        goto LABEL_27;
      case 2u:
        v8 = "COLD";
        goto LABEL_27;
    }

    goto LABEL_21;
  }

  if (v4 > 4u)
  {
    if (v4 == 5)
    {
      v8 = "VHOT";
      goto LABEL_27;
    }

    if (v4 == 6)
    {
      MEMORY[0x29C29E950](&__p, "VHOT");
LABEL_23:
      v11 = 0;
      goto LABEL_28;
    }

LABEL_21:
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StartMode,%hhu\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncP16_05GetResetType", 770, v4);
      LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
    }

    goto LABEL_23;
  }

  if (v4 == 3)
  {
    v8 = "WARM";
    goto LABEL_27;
  }

  if (v4 != 4)
  {
    goto LABEL_21;
  }

  v8 = "HOST";
LABEL_27:
  MEMORY[0x29C29E950](&__p, v8);
  v11 = 1;
LABEL_28:
  if (!LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    if (!v11)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  bzero(__str, 0x410uLL);
  v12 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  p_p = &__p;
  if (v24 < 0)
  {
    p_p = __p;
  }

  v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ClearReq DeleteReq,%s,MERstReq,%u\n", v12, "GNC", 73, "GncP16_05GetResetType", p_p, v11);
  LbsOsaTrace_WriteLog(8u, __str, v14, 4, 1);
  if (v11)
  {
LABEL_34:
    v3 = 0;
  }

LABEL_35:
  GN_GPS_Sleep(v3, a2, v5);
  if (g_GncPStateInfo == 9)
  {
    GncP16_01StopStateHndlrTimer();
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: State,%hhu,PE Sleep not ME\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 73, "GncP16_10StopME", g_GncPStateInfo);
      LbsOsaTrace_WriteLog(8u, __str, v16, 4, 1);
    }
  }

  else
  {
    if (GncP05_25ChkDeRegGnssServReqd())
    {
      GncP03_14SendDeRegGnssReq(v3, a2);
    }

    if (v3)
    {
      v17 = 1;
    }

    else
    {
      v17 = 3;
    }

    LOBYTE(g_GncPStateInfo) = v17;
    GncP16_02StartStateHndlrTimer(0x258u);
    if (LbsOsaTrace_IsLoggingAllowed(8u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ME to Sleep,%u,%u\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 77, "GncP16_10StopME", v3, a2);
      LbsOsaTrace_WriteLog(8u, __str, v19, 3, 1);
    }

    dword_2A1939E6C = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    byte_2A1939E68 = 1;
    byte_2A1939E70 = 0;
  }

  v20 = SHIBYTE(v24);
  if ((SHIBYTE(v24) & 0x8000000000000000) == 0)
  {
    if (!HIBYTE(v24))
    {
      return;
    }

    v21 = &__p;
LABEL_51:
    GncP16_06ClearNVStore(v21, v20);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_52;
  }

  v20 = __n;
  if (__n)
  {
    v21 = __p;
    goto LABEL_51;
  }

LABEL_52:
  operator delete(__p);
}

void sub_2995FBDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GncP16_15CheckStopMEClearReq(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FG,%u,FA,%u,SA,%u\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 73, "GncP16_15CheckStopMEClearReq", BYTE3(g_GncPStateInfo), BYTE1(g_GncPStateInfo), BYTE2(g_GncPStateInfo));
    LbsOsaTrace_WriteLog(8u, __str, v1, 4, 1);
  }

  v2 = 0;
  if ((BYTE1(g_GncPStateInfo) & 1) == 0 && !BYTE2(g_GncPStateInfo))
  {
    if (BYTE3(g_GncPStateInfo))
    {
      return 0;
    }

    else
    {
      v2 = 1;
      GncP16_10StopME(1, 0);
      LOBYTE(g_GncPStateInfo) = 11;
    }
  }

  return v2;
}

void GncP16_16NewSessUpdtMEFixInt(void)
{
  v0 = 0;
  v1 = 0;
  v2 = -1;
  v3 = 1;
  do
  {
    while (1)
    {
      v4 = v3;
      v5 = &g_GncPCntxtInfo + 36 * v0;
      if (v5[8] != 1 || v5[4] != 1)
      {
        break;
      }

      v3 = 0;
      if (*(v5 + 6) < v2)
      {
        v2 = *(v5 + 6);
      }

      v0 = 1;
      v1 = 1;
      if ((v4 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v3 = 0;
    v0 = 1;
  }

  while ((v4 & 1) != 0);
  if ((v1 & 1) == 0)
  {
    return;
  }

LABEL_11:
  if (v2 <= 0x3E7)
  {
    if (BYTE5(g_GncPStateInfo) == 1)
    {
      if (v2 < g_GncPConfig[0])
      {
        GncP05_23SetFixInterval(v2);
        BYTE5(g_GncPStateInfo) = 0;
      }
    }

    else
    {

      GncP05_23SetFixInterval(v2);
    }
  }
}

void GncP16_17HandleInvalidState(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu,FA,%u,SA,%u,FG,%u,BG,%u,QFI,%u\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 69, "GncP16_17HandleInvalidState", 260, g_GncPStateInfo, BYTE1(g_GncPStateInfo), BYTE2(g_GncPStateInfo), BYTE3(g_GncPStateInfo), BYTE4(g_GncPStateInfo), BYTE5(g_GncPStateInfo));
    LbsOsaTrace_WriteLog(8u, __str, v1, 0, 1);
  }

  snprintf(v4, 0x64uLL, "ASSERT: GNCState %d", g_GncPStateInfo);
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "GncP16_17HandleInvalidState", v4);
    LbsOsaTrace_WriteLog(0xEu, __str, v3, 0, 1);
  }

  gnssOsa_FlushLog();
  __assert_rtn("GncP16_17HandleInvalidState", "gncpe16StateHndlr.cpp", 527, "false && Invalid State");
}

void GncP16_19ChkQualUpdtMEFixInt(void)
{
  if (BYTE5(g_GncPStateInfo) == 1 && GncP04_18ChkAnyFGSessQualMet())
  {
    BYTE5(g_GncPStateInfo) = 0;
    GncP16_18ReConfigMEFixInt();

    GncP16_04RestartMEWdt(1);
  }
}

void GncP16_18ReConfigMEFixInt(void)
{
  v0 = 0;
  v1 = 0;
  v2 = -1;
  v3 = 1;
  do
  {
    while (1)
    {
      v4 = v3;
      v5 = &g_GncPCntxtInfo + 36 * v0;
      if (v5[8] != 1 || v5[4] != 1)
      {
        break;
      }

      v3 = 0;
      if (*(v5 + 6) < v2)
      {
        v2 = *(v5 + 6);
      }

      v0 = 1;
      v1 = 1;
      if ((v4 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v3 = 0;
    v0 = 1;
  }

  while ((v4 & 1) != 0);
  if ((v1 & 1) == 0)
  {
    v6 = 1000;
    goto LABEL_15;
  }

LABEL_11:
  if (v2 >= 0x3E8)
  {
    v6 = 1000;
  }

  else
  {
    v6 = v2;
  }

LABEL_15:

  GncP05_23SetFixInterval(v6);
}

double GncP16_04RestartMEWdt(char a1)
{
  GncP16_01StopStateHndlrTimer();
  if ((qword_2A1939E78 & 1) == 0)
  {
    v3 = (g_GncPConfig[0] << a1);

    return GncP16_02StartStateHndlrTimer(v3);
  }

  return result;
}

void GncP16_21ChkFWActRspPend(_BYTE *result)
{
  v1 = result;
  if (BYTE7(g_GncPStateInfo) == 1)
  {
    GncP03_13SendStopFWActResp(result, 1);
    BYTE7(g_GncPStateInfo) = 0;
  }

  if (BYTE8(g_GncPStateInfo) == 1)
  {
    GncP03_13SendStopFWActResp(v1, 3);
    BYTE8(g_GncPStateInfo) = 0;
  }
}

double GncP16_22UpdateStateAssistDataRcvd(unsigned int *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = g_GncPStateInfo;
  if (a1 && (BYTE3(g_GncPStateInfo) & 1) == 0)
  {
    HIDWORD(g_GncPStateInfo) = *a1;
    BYTE6(g_GncPStateInfo) = 1;
  }

  if (g_GncPStateInfo > 0x10u)
  {
    goto LABEL_19;
  }

  if (((1 << g_GncPStateInfo) & 0x1CFE0) != 0)
  {
    return result;
  }

  if (((1 << g_GncPStateInfo) & 0x15) != 0)
  {
    GncP16_11StartME(0);
    if (v1 == g_GncPStateInfo)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (((1 << g_GncPStateInfo) & 0xA) == 0)
  {
LABEL_19:
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GncP16_22UpdateStateAssistDataRcvd", 262, g_GncPStateInfo);
      LbsOsaTrace_WriteLog(8u, __str, v6, 2, 1);
    }

    GncP16_17HandleInvalidState();
  }

  LOBYTE(g_GncPStateInfo) = 5;
LABEL_12:
  if (LbsOsaTrace_IsLoggingAllowed(8u, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,AssistDataRcvd,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 77, "GncP16_22UpdateStateAssistDataRcvd", 261, v1, g_GncPStateInfo, HIDWORD(g_GncPStateInfo));
    LbsOsaTrace_WriteLog(8u, __str, v4, 3, 1);
  }

  return result;
}

double GncP16_23UpdateStateFGSession(int a1, double result)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = g_GncPStateInfo;
  BYTE3(g_GncPStateInfo) = a1;
  if (a1)
  {
    BYTE6(g_GncPStateInfo) = 0;
  }

  if (g_GncPStateInfo <= 6u)
  {
    if (g_GncPStateInfo <= 2u)
    {
      if (g_GncPStateInfo != 1)
      {
LABEL_17:
        if (a1)
        {
          GncP16_11StartME(0);
        }

        goto LABEL_24;
      }

      goto LABEL_19;
    }

    if (g_GncPStateInfo - 5 < 2)
    {
      goto LABEL_24;
    }

    if (g_GncPStateInfo == 3)
    {
LABEL_19:
      if (a1)
      {
        LOBYTE(g_GncPStateInfo) = 5;
      }

      goto LABEL_24;
    }

    if (g_GncPStateInfo == 4)
    {
      goto LABEL_17;
    }

LABEL_30:
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GncP16_23UpdateStateFGSession", 262, g_GncPStateInfo);
      LbsOsaTrace_WriteLog(8u, __str, v7, 2, 1);
    }

    GncP16_17HandleInvalidState();
  }

  if (g_GncPStateInfo > 0x10u)
  {
LABEL_11:
    if (g_GncPStateInfo == 7)
    {
      if (GncP16_12IsAwakeFGStateReq())
      {
        GncP16_16NewSessUpdtMEFixInt();
      }

      else
      {
        GncP16_13CheckStopME(0);
      }

      goto LABEL_24;
    }

    goto LABEL_30;
  }

  if (((1 << g_GncPStateInfo) & 0x1CC00) != 0)
  {
    goto LABEL_24;
  }

  if (g_GncPStateInfo != 8)
  {
    if (g_GncPStateInfo == 9)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (a1)
  {
    LOBYTE(g_GncPStateInfo) = 7;
    GncP16_16NewSessUpdtMEFixInt();
    result = GncP16_04RestartMEWdt(0);
  }

LABEL_24:
  if (v2 != g_GncPStateInfo && LbsOsaTrace_IsLoggingAllowed(8u, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v4 = 78;
    if (BYTE3(g_GncPStateInfo))
    {
      v4 = 89;
    }

    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,FGSessActive,%c\n", v3, "GNC", 77, "GncP16_23UpdateStateFGSession", 261, v2, g_GncPStateInfo, v4);
    LbsOsaTrace_WriteLog(8u, __str, v5, 3, 1);
  }

  return result;
}

BOOL GncP16_12IsAwakeFGStateReq(void)
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = 1;
  if ((BYTE3(g_GncPStateInfo) & 1) == 0 && (BYTE1(g_GncPStateInfo) & 1) == 0)
  {
    if (BYTE6(g_GncPStateInfo) != 1 || (v4 = HIDWORD(g_GncPStateInfo), (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v4 > 0x1388))
    {
      v0 = 0;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FG,%u,BG,%u,FA,%u,FW,%u,LastAsstTick,%u,LastSleepTick,%u,Ret,%u\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncP16_12IsAwakeFGStateReq", BYTE3(g_GncPStateInfo), BYTE4(g_GncPStateInfo), BYTE1(g_GncPStateInfo), BYTE2(g_GncPStateInfo), HIDWORD(g_GncPStateInfo), dword_2A1939E6C, v0);
    LbsOsaTrace_WriteLog(8u, __str, v2, 5, 1);
  }

  return v0;
}

double GncP16_25UpdateStateTimerExpiry(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v1 = g_GncPStateInfo;
  LOBYTE(qword_2A1939E78) = 0;
  switch(g_GncPStateInfo)
  {
    case 0:
      GncP16_13CheckStopME(0);
      break;
    case 1:
    case 3:
    case 5:
    case 11:
    case 16:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v2 = mach_continuous_time();
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NoAck State,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncP16_25UpdateStateTimerExpiry", 1298, g_GncPStateInfo);
        LbsOsaTrace_WriteLog(8u, __str, v3, 2, 1);
      }

      GncP04_21SendClearGnssAck(0);
      GncP04_19SendPosEvntResp(4);
      GncP16_21ChkFWActRspPend(0);
      dword_2A1939E6C = 0;
      byte_2A1939E68 = 0;
      GncP08_03HandleHardReset(v4);
      break;
    case 2:
      LOBYTE(g_GncPStateInfo) = 4;
      dword_2A1939E6C = 0;
      byte_2A1939E68 = 0;
      break;
    case 4:
    case 6:
    case 9:
    case 10:
    case 15:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerExp NotHandled in State,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP16_25UpdateStateTimerExpiry", g_GncPStateInfo);
        LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
      }

      break;
    case 7:
    case 8:
    case 14:
      GncP01_32ExecutePE(a1);
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NO ME data WdtStrt,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GncP16_25UpdateStateTimerExpiry", 1301, HIDWORD(qword_2A1939E78));
        LbsOsaTrace_WriteLog(8u, __str, v9, 2, 1);
      }

      result = GncP16_04RestartMEWdt(0);
      break;
    default:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "GncP16_25UpdateStateTimerExpiry", 262, g_GncPStateInfo);
        LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
      }

      GncP16_17HandleInvalidState();
  }

  if (v1 != g_GncPStateInfo)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 77, "GncP16_25UpdateStateTimerExpiry", 261, v1, g_GncPStateInfo);
      LbsOsaTrace_WriteLog(8u, __str, v11, 3, 1);
    }
  }

  return result;
}

double GncP16_26UpdateStateMEDataRcvd(void)
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = g_GncPStateInfo;
  v1 = g_GncPStateInfo;
  if (BYTE5(g_GncPStateInfo) == 1)
  {
    if (byte_2A1939E70 == 1)
    {
      v2 = dword_2A1939E74;
      result = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (result - v2 >= 0xBB9)
      {
        BYTE5(g_GncPStateInfo) = 0;
        GncP16_18ReConfigMEFixInt();
      }
    }

    v1 = g_GncPStateInfo;
  }

  if (v1 <= 7)
  {
    if (v1 <= 3)
    {
      if (v1 != 2)
      {
        goto LABEL_16;
      }

      goto LABEL_40;
    }

    if (v1 <= 5)
    {
      if (v1 != 4)
      {
LABEL_16:
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v5 = mach_continuous_time();
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MEData NotHandled in State,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GncP16_26UpdateStateMEDataRcvd", g_GncPStateInfo);
          LbsOsaTrace_WriteLog(8u, __str, v6, 2, 1);
        }

        goto LABEL_41;
      }

LABEL_40:
      GncP16_13CheckStopME(0);
      goto LABEL_41;
    }

    if (v1 == 6)
    {
      LOBYTE(g_GncPStateInfo) = 7;
      GncP04_19SendPosEvntResp(8);
    }

    else if (!GncP16_12IsAwakeFGStateReq())
    {
      GncP16_13CheckStopME(0);
    }

LABEL_38:
    result = GncP16_04RestartMEWdt(1);
    goto LABEL_41;
  }

  if (v1 > 10)
  {
    if ((v1 - 14) >= 3 && v1 != 11)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "GncP16_26UpdateStateMEDataRcvd", 262, g_GncPStateInfo);
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

      GncP16_17HandleInvalidState();
    }

    goto LABEL_16;
  }

  if (v1 == 8)
  {
    GncP05_23SetFixInterval(0x3E8u);
    if (GncP16_12IsAwakeFGStateReq())
    {
      LOBYTE(g_GncPStateInfo) = 7;
    }

    else if ((BYTE4(g_GncPStateInfo) & 1) == 0)
    {
      GncP16_01StopStateHndlrTimer();
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (v1 == 9)
  {
    if (BYTE2(g_GncPStateInfo))
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (xmmword_2A1926A30)
  {
    if (*xmmword_2A1926A30)
    {
      if (byte_2A1939E68 != 1 || (v7 = dword_2A1939E6C, result = *&g_MacClockTicksToMsRelation * mach_continuous_time(), result - v7 >= 0xC9))
      {
        GncP16_01StopStateHndlrTimer();
        GncP16_10StopME(1, 0);
        if ((BYTE3(g_GncPStateInfo) & 1) != 0 || (BYTE4(g_GncPStateInfo) & 1) != 0 || BYTE2(g_GncPStateInfo))
        {
          LOBYTE(g_GncPStateInfo) = 11;
        }
      }
    }
  }

LABEL_41:
  if (v0 != g_GncPStateInfo)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 77, "GncP16_26UpdateStateMEDataRcvd", 261, v0, g_GncPStateInfo);
      LbsOsaTrace_WriteLog(8u, __str, v9, 3, 1);
    }
  }

  return result;
}

double GncP16_27UpdateStateClearNVReqRcvd(const char *a1, size_t a2, int a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = g_GncPStateInfo;
  if (g_GncPStateInfo <= 2u)
  {
    if (g_GncPStateInfo)
    {
      if (g_GncPStateInfo == 1)
      {
        goto LABEL_5;
      }

      if (g_GncPStateInfo == 2)
      {
        GncP16_06ClearNVStore(a1, a2);
        if (a3)
        {
          GncP16_11StartME(0);
          LOBYTE(g_GncPStateInfo) = 10;
        }

        goto LABEL_14;
      }

LABEL_22:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GncP16_27UpdateStateClearNVReqRcvd", 262, g_GncPStateInfo);
        LbsOsaTrace_WriteLog(8u, __str, v12, 2, 1);
      }

      GncP16_17HandleInvalidState();
    }

LABEL_11:
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      goto LABEL_14;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ClearNV NotHandled in State,%hhu\n");
    goto LABEL_13;
  }

  if (g_GncPStateInfo > 0x10u)
  {
    goto LABEL_22;
  }

  if (((1 << g_GncPStateInfo) & 0xC640) != 0)
  {
    goto LABEL_11;
  }

  if (((1 << g_GncPStateInfo) & 0x10838) != 0)
  {
LABEL_5:
    GncP16_06ClearNVStore(a1, a2);
    goto LABEL_14;
  }

  if (((1 << g_GncPStateInfo) & 0x180) == 0)
  {
    goto LABEL_22;
  }

  if (GncP16_15CheckStopMEClearReq())
  {
    goto LABEL_5;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ClearNV NotHandled GPS running State,%hhu\n");
LABEL_13:
    LbsOsaTrace_WriteLog(8u, __str, v8, 4, 1);
  }

LABEL_14:
  if (v5 != g_GncPStateInfo)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,Reset,%s\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 77, "GncP16_27UpdateStateClearNVReqRcvd", 261, v5, g_GncPStateInfo, a1);
      LbsOsaTrace_WriteLog(8u, __str, v10, 3, 1);
    }
  }

  return result;
}

const char *GncP16_06ClearNVStore(const char *__src, size_t __n)
{
  v6 = *MEMORY[0x29EDCA608];
  if (__n <= 0xF)
  {
    v2 = xmmword_2A1926A40;
    if (xmmword_2A1926A40)
    {
      *v4 = 0;
      v5 = 0;
      strncpy_s(v4, 0x10u, __src, __n);
      v3 = GN_GPS_Clear_NV_Data(v2, v4);
      return GncP01_05ClearGncPosData(v3);
    }
  }

  return __src;
}

double GncP16_28UpdateStateResetStatus(int a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = g_GncPStateInfo;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: State,%hhu,Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP16_28UpdateStateResetStatus", g_GncPStateInfo, a1);
    LbsOsaTrace_WriteLog(8u, __str, v5, 4, 1);
  }

  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        if (g_GncPStateInfo != 15 || !LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          goto LABEL_28;
        }

        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HW Error\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "GncP16_28UpdateStateResetStatus", 1308);
        v11 = 0;
LABEL_26:
        LbsOsaTrace_WriteLog(8u, __str, v10, v11, 1);
        goto LABEL_28;
      }

      if (a1 != 5)
      {
LABEL_19:
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          goto LABEL_28;
        }

        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncP16_28UpdateStateResetStatus", 770, a1);
        v11 = 2;
        goto LABEL_26;
      }

      if (!g_GncPStateInfo)
      {
        result = GncP16_02StartStateHndlrTimer(0x3E8u);
        goto LABEL_28;
      }

      if (g_GncPStateInfo != 15)
      {
        goto LABEL_28;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HW Ready\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP16_28UpdateStateResetStatus", 1307);
        LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
      }

LABEL_22:
      GncP16_11StartME(0);
      goto LABEL_28;
    }

    v8 = 15;
LABEL_18:
    LOBYTE(g_GncPStateInfo) = v8;
    GncP04_19SendPosEvntResp(5);
    goto LABEL_28;
  }

  if (!a1)
  {
    v8 = 14;
    goto LABEL_18;
  }

  if (a1 == 1)
  {
    if (g_GncPStateInfo != 14)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (a1 != 2)
  {
    goto LABEL_19;
  }

  if (g_GncPStateInfo == 14)
  {
    LOBYTE(g_GncPStateInfo) = 15;
  }

LABEL_28:
  if (v2 != g_GncPStateInfo)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 77, "GncP16_28UpdateStateResetStatus", 261, v2, g_GncPStateInfo, a1);
      LbsOsaTrace_WriteLog(8u, __str, v14, 3, 1);
    }
  }

  return result;
}

double GncP16_31UpdateStateMEPowerState(unsigned int a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = g_GncPStateInfo;
  g_DeRegGnssCount = 0;
  if (g_GncPStateInfo <= 2u)
  {
    if (!g_GncPStateInfo)
    {
      goto LABEL_4;
    }

    if (g_GncPStateInfo == 1)
    {
      if ((a1 & 0xFFFFFFFB) == 3)
      {
        LOBYTE(g_GncPStateInfo) = 2;
        dword_2A1939E6C = 0;
        byte_2A1939E68 = 0;
        GncP16_01StopStateHndlrTimer();
        if (word_2A1920800)
        {
          result = GncP16_02StartStateHndlrTimer(1000 * word_2A1920800);
        }

        goto LABEL_34;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        goto LABEL_34;
      }

      bzero(__str, 0x410uLL);
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Expected,SLEEP,MEResp,%hhu\n", v13);
LABEL_33:
      v5 = v8;
      v6 = 2;
LABEL_6:
      LbsOsaTrace_WriteLog(8u, __str, v5, v6, 1);
      goto LABEL_34;
    }

    if (g_GncPStateInfo == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_41;
  }

  if (g_GncPStateInfo > 0x10u)
  {
LABEL_23:
    if (g_GncPStateInfo == 3)
    {
      if (a1 <= 7 && ((1 << a1) & 0xB0) != 0)
      {
        LOBYTE(g_GncPStateInfo) = 4;
        dword_2A1939E6C = 0;
        byte_2A1939E68 = 0;
        GncP16_01StopStateHndlrTimer();
        goto LABEL_34;
      }

      goto LABEL_29;
    }

LABEL_41:
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GncP16_31UpdateStateMEPowerState", 262, g_GncPStateInfo);
      LbsOsaTrace_WriteLog(8u, __str, v12, 2, 1);
    }

    GncP16_17HandleInvalidState();
  }

  if (((1 << g_GncPStateInfo) & 0xC7D0) != 0)
  {
LABEL_4:
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      goto LABEL_34;
    }

    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MEPowerState,%hhu NotHandled in State,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP16_31UpdateStateMEPowerState", a1, g_GncPStateInfo);
    v6 = 4;
    goto LABEL_6;
  }

  if (((1 << g_GncPStateInfo) & 0x820) == 0)
  {
    if (g_GncPStateInfo == 16)
    {
      if (a1 <= 7 && ((1 << a1) & 0xB8) != 0)
      {
        GncP04_19SendPosEvntResp(3);
        GncP16_21ChkFWActRspPend(1);
        GncP04_21SendClearGnssAck(1);
        dword_2A1939E6C = 0;
        byte_2A1939E68 = 0;
        v7 = 1;
        goto LABEL_22;
      }

LABEL_29:
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        goto LABEL_34;
      }

      bzero(__str, 0x410uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Expected,COMA,MEResp,%hhu\n", v14);
      goto LABEL_33;
    }

    goto LABEL_23;
  }

  if (a1 <= 7 && ((1 << a1) & 0xB8) != 0)
  {
    GncP04_19SendPosEvntResp(3);
    GncP16_21ChkFWActRspPend(1);
    GncP04_21SendClearGnssAck(1);
    dword_2A1939E6C = 0;
    byte_2A1939E68 = 0;
    v7 = 0;
LABEL_22:
    GncP16_11StartME(v7);
    goto LABEL_34;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Expected,SLEEP COMA,MEResp,%hhu\n", v15);
    goto LABEL_33;
  }

LABEL_34:
  if (v2 != g_GncPStateInfo)
  {
    if (g_GncPStateInfo == 4 || g_GncPStateInfo == 2)
    {
      GncP04_21SendClearGnssAck(1);
      GncP16_21ChkFWActRspPend(1);
      GncP19_10SndMEInActiveInd();
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,MEPowerState,%hhu\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 77, "GncP16_31UpdateStateMEPowerState", 261, v2, g_GncPStateInfo, a1);
      LbsOsaTrace_WriteLog(8u, __str, v10, 3, 1);
    }
  }

  return result;
}

void GncP16_33HandleFwActiveReq(int a1, int a2)
{
  v3 = a1;
  v14 = *MEMORY[0x29EDCA608];
  v4 = g_GncPStateInfo;
  switch(a2)
  {
    case 3:
      if (a1)
      {
        v5 = BYTE2(g_GncPStateInfo) | 4;
      }

      else
      {
        v5 = BYTE2(g_GncPStateInfo) & 0xFB;
      }

      goto LABEL_15;
    case 2:
      if (a1)
      {
        v5 = BYTE2(g_GncPStateInfo) | 2;
      }

      else
      {
        v5 = BYTE2(g_GncPStateInfo) & 0xFD;
      }

      goto LABEL_15;
    case 1:
      if (a1)
      {
        v5 = BYTE2(g_GncPStateInfo) | 1;
      }

      else
      {
        v5 = BYTE2(g_GncPStateInfo) & 0xFE;
      }

LABEL_15:
      BYTE2(g_GncPStateInfo) = v5;
      goto LABEL_16;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GncP16_33HandleFwActiveReq", 770);
    LbsOsaTrace_WriteLog(8u, __str, v7, 2, 1);
  }

LABEL_16:
  if (g_GncPStateInfo > 6u)
  {
    if (g_GncPStateInfo > 0x10u)
    {
      goto LABEL_39;
    }

    if (((1 << g_GncPStateInfo) & 0x1CC00) != 0)
    {
      goto LABEL_45;
    }

    if (g_GncPStateInfo == 8)
    {
      if (BYTE2(g_GncPStateInfo))
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    if (g_GncPStateInfo == 9)
    {
      if (BYTE2(g_GncPStateInfo))
      {
        goto LABEL_45;
      }

      if ((a2 & 0xFFFFFFFD) == 1)
      {
        LOBYTE(g_GncPStateInfo) = 7;
      }
    }

    else
    {
LABEL_39:
      if (g_GncPStateInfo != 7)
      {
        goto LABEL_56;
      }

      if (BYTE2(g_GncPStateInfo) || GncP16_12IsAwakeFGStateReq())
      {
        goto LABEL_45;
      }
    }

LABEL_44:
    GncP16_13CheckStopME(0);
    goto LABEL_45;
  }

  if (g_GncPStateInfo > 2u)
  {
    if (g_GncPStateInfo - 5 < 2)
    {
      goto LABEL_45;
    }

    if (g_GncPStateInfo == 3)
    {
      goto LABEL_33;
    }

    if (g_GncPStateInfo == 4)
    {
LABEL_31:
      if (!BYTE2(g_GncPStateInfo))
      {
        goto LABEL_45;
      }

      v8 = 9;
LABEL_35:
      LOBYTE(g_GncPStateInfo) = v8;
      goto LABEL_45;
    }

LABEL_56:
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GncP16_33HandleFwActiveReq", 262, g_GncPStateInfo);
      LbsOsaTrace_WriteLog(8u, __str, v12, 2, 1);
    }

    GncP16_17HandleInvalidState();
  }

  if (g_GncPStateInfo)
  {
    if (g_GncPStateInfo != 1)
    {
      goto LABEL_31;
    }

LABEL_33:
    if (!BYTE2(g_GncPStateInfo))
    {
      goto LABEL_45;
    }

    v8 = 5;
    goto LABEL_35;
  }

  if (BYTE2(g_GncPStateInfo))
  {
    LOBYTE(g_GncPStateInfo) = 9;
    if (a2 == 2)
    {
      goto LABEL_44;
    }
  }

LABEL_45:
  if (v4 != g_GncPStateInfo)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu,FWAct,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 77, "GncP16_33HandleFwActiveReq", 261, v4, g_GncPStateInfo, BYTE2(g_GncPStateInfo));
      LbsOsaTrace_WriteLog(8u, __str, v10, 3, 1);
    }
  }

  if ((v3 & 1) == 0)
  {
    if ((g_GncPStateInfo & 0xFD) == 1)
    {
      if (a2 == 3)
      {
        BYTE8(g_GncPStateInfo) = 1;
        return;
      }

      if (a2 == 1)
      {
        BYTE7(g_GncPStateInfo) = 1;
        return;
      }
    }

    GncP03_13SendStopFWActResp(1, a2);
  }
}

BOOL GncP16_34HandleRestartAcq(void)
{
  v10 = *MEMORY[0x29EDCA608];
  v0 = g_GncPStateInfo;
  if (g_GncPStateInfo > 0x10u)
  {
    goto LABEL_15;
  }

  if (((1 << g_GncPStateInfo) & 0xCE7F) == 0)
  {
    if (((1 << g_GncPStateInfo) & 0x180) != 0)
    {
      GncP16_10StopME(1, 0);
      LOBYTE(g_GncPStateInfo) = 16;
      goto LABEL_8;
    }

    if (g_GncPStateInfo == 16)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        goto LABEL_8;
      }

      bzero(__str, 0x410uLL);
      v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", v8);
      goto LABEL_5;
    }

LABEL_15:
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GncP16_34HandleRestartAcq", 262, g_GncPStateInfo);
      LbsOsaTrace_WriteLog(8u, __str, v7, 2, 1);
    }

    GncP16_17HandleInvalidState();
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NotHandled State,%hhu\n");
LABEL_5:
    LbsOsaTrace_WriteLog(8u, __str, v1, 4, 1);
  }

LABEL_8:
  v2 = g_GncPStateInfo;
  if (v0 != g_GncPStateInfo && LbsOsaTrace_IsLoggingAllowed(8u, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 77, "GncP16_34HandleRestartAcq", 261, v0, g_GncPStateInfo);
    LbsOsaTrace_WriteLog(8u, __str, v4, 3, 1);
  }

  return v0 != v2;
}

void GncP16_51MEPowerStateInd(char a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("GncP16_51MEPowerStateInd", 1463, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    v2[12] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ME_POWER_STATE_IND =>GNCP Stat,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP16_51MEPowerStateInd", v3[12]);
      LbsOsaTrace_WriteLog(8u, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(134, 134, 8788483, v3);
  }
}

uint64_t GncP16_52HandleMEPowerStateInd(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ME_POWER_STATE_IND Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP16_52HandleMEPowerStateInd", *(a1 + 12));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    GncP16_31UpdateStateMEPowerState(*(a1 + 12));
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP16_52HandleMEPowerStateInd", 517);
    LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
  }

  return 0;
}

uint64_t GncP16_54HandleMEWakeResp(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ME_WAKE_RSP Resp,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP16_54HandleMEWakeResp", *(a1 + 12));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    if (*(a1 + 12))
    {
      if (g_GncPStateInfo == 6)
      {
        LOBYTE(g_GncPStateInfo) = 7;
        GncP04_19SendPosEvntResp(8);
        if (LbsOsaTrace_IsLoggingAllowed(8u, 3u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v4 = mach_continuous_time();
          v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEState,%hhu->%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 77, "GncP16_54HandleMEWakeResp", 261, 6, g_GncPStateInfo);
          LbsOsaTrace_WriteLog(8u, __str, v5, 3, 1);
        }

        GncP16_04RestartMEWdt(1);
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MEWake Error,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GncP16_54HandleMEWakeResp", *(a1 + 12));
        LbsOsaTrace_WriteLog(8u, __str, v9, 2, 1);
      }

      GncP04_19SendPosEvntResp(9);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 69, "GncP16_54HandleMEWakeResp", 517);
    LbsOsaTrace_WriteLog(8u, __str, v7, 0, 1);
  }

  return 0;
}

uint64_t GncP16_55HandleStartFwActiveInd(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_START_FW_ACTIVE_IND Activity,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP16_55HandleStartFwActiveInd", *(a1 + 12));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    GncP16_33HandleFwActiveReq(1, *(a1 + 12));
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP16_55HandleStartFwActiveInd", 517);
    LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
  }

  return 0;
}

uint64_t GncP16_56HandleStopFwActiveReq(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_STOP_FW_ACTIVE_REQ Activity,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP16_56HandleStopFwActiveReq", *(a1 + 12));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    GncP16_33HandleFwActiveReq(0, *(a1 + 12));
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP16_56HandleStopFwActiveReq", 517);
    LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
  }

  return 0;
}

void GncP16_99DeInitStateHndlr(void)
{
  if (g_GncPStateInfo - 7 <= 1)
  {
    GncP16_10StopME(1, 0);
  }

  if (qword_2A1939E78 == 1)
  {

    AgpsFsmStopTimer(8789766);
  }
}

uint64_t NK_Tunnel_Assist(uint64_t a1, double *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = 0u;
  *v21 = 0u;
  v4 = a2 + 2874;
  v18 = 0u;
  v19 = 0u;
  if ((Core_Get_ExtA_TunnelEP(30000, &v18) & 1) == 0)
  {
    result = 0;
    *(v4 + 2060) = 0;
    return result;
  }

  *(v4 + 2060) = 1;
  v5 = v18;
  *(v4 + 518) = *(a2 + 1) - v18;
  if ((*(a1 + 11162) & 1) == 0)
  {
    result = 0;
    v7 = 37;
    goto LABEL_7;
  }

  if (v5 == *(a1 + 11112))
  {
    result = 0;
    v7 = 38;
LABEL_7:
    *(v4 + 516) = v7;
    return result;
  }

  if (*(a2 + 2811) < 3u)
  {
    result = 0;
    v7 = 39;
    goto LABEL_7;
  }

  LOWORD(v8) = WORD4(v20);
  v10 = *(&v19 + 1);
  v9 = *&v20;
  if (!WORD4(v20))
  {
    if (vabdd_f64(*(&v19 + 1), *&v20) >= 1.0)
    {
      LOWORD(v8) = 0;
    }

    else
    {
      v10 = *(&v19 + 1) + *(&v19 + 1);
      v9 = *&v20 * 0.5;
      v8 = *(a1 + 11240);
      if (v8 > 179)
      {
        LOWORD(v8) = v8 - 180;
      }
    }
  }

  v11 = *(&v18 + 1);
  v12 = *&v19;
  v13 = v8;
  v14 = BYTE10(v20);
  v15 = v21[0];
  v16 = v21[1];
  EvLog_v("NK_Tunnel_Assist: Applying %d LL %g %g %d %d %d H %d %f %d", v5, *(&v18 + 1), *&v19, v10, v9, v8, BYTE10(v20), v21[0], v21[1]);
  *v4 = 1;
  *(v4 + 4) = 0x300000001;
  *(v4 + 3) = 0;
  *(v4 + 16) = 0;
  v17 = *a2;
  *(v4 + 5) = *a2;
  a2[2877] = v11 * 0.0174532925;
  a2[2878] = v12 * 0.0174532925;
  a2[2880] = v10 * v10;
  a2[2881] = v9 * v9;
  a2[2882] = v13 * 0.0174532925;
  a2[2883] = v10 * v10;
  a2[2884] = v9 * v9;
  a2[2887] = 25.0;
  if (v14 == 1)
  {
    *(v4 + 128) = 1;
    *(v4 + 132) = 0x200000001;
    *(v4 + 35) = 0;
    *(v4 + 144) = 0;
    *(v4 + 37) = v17;
    a2[2893] = v15;
    a2[2894] = v16 * v16;
    a2[2895] = v16 * v16;
    a2[2897] = 25.0;
  }

  *(a1 + 11112) = v5;
  return 1;
}

_BYTE *plc02_01EncHeader(_BYTE *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5)
{
  v9 = *MEMORY[0x29EDCA608];
  __src = a2;
  if (a2 < 0x7F8)
  {
    *a3 = 30842;
    *(a3 + 2) = *result;
    *(a3 + 3) = result[1];
    *(a3 + 4) = result[2];
    v6 = 2;
    result = memcpy_s("plc02_01EncHeader", 84, (a3 + 5), a4 - 5, &__src, 2uLL);
    v7 = 0;
    do
    {
      v7 += *(a3 + v6++);
    }

    while (v6 != 7);
    *(a3 + 7) = v7;
  }

  else
  {
    *a5 = 7;
    if (*(a5 + 144) == 1)
    {
      return snprintf((a5 + 16), 0x80uLL, "E HDR PL %d > %d", a2, 2039);
    }
  }

  return result;
}

void *plc02_02GetUInt32(uint64_t *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  *a4 = 0;
  v8 = *(a1 + 4);
  *(a4 + 6) = v8;
  v9 = *a1;
  __dst = 0;
  result = memcpy_s("plc02_02GetUInt32", 124, &__dst, 4u, (v9 + v8), 4uLL);
  *(a1 + 4) += 4;
  v11 = __dst;
  v12 = *a2;
  if (__dst >= *a2 && __dst <= a2[1])
  {
    *a4 = 0;
    if (!a3)
    {
      return result;
    }

    goto LABEL_6;
  }

  *a4 = 24;
  if (*(a4 + 144) == 1)
  {
    result = snprintf((a4 + 16), 0x80uLL, "G INT B 4 [%d %d] V %d", v12, a2[1], v11);
  }

  if (a3)
  {
LABEL_6:
    *a3 = __dst;
  }

  return result;
}

double GLON_RK_CalcAccel(double **a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = **a1;
  v5 = (*a1)[2] * (*a1)[2];
  v6 = 1.0 / sqrt(v4 * v4 + (*a1)[1] * (*a1)[1] + v5);
  v7 = v6 * v6;
  v8 = v6 * (v6 * v6) * -3.9860044e14;
  v9 = v7 * 6.60628282e10;
  v10 = 1.0 - (v7 + v7 * 4.0) * v5;
  v11 = v10 + 2.0;
  v12 = v8 * (v9 * v10 + 1.0) + 0.00000000531749412;
  v13 = a1[2];
  *a2 = *v13 + v3[1] * 0.0001458423 + v4 * v12;
  a2[1] = v13[1] + *v3 * -0.0001458423 + v2[1] * v12;
  result = v13[2] + v2[2] * (v8 * (v9 * v11 + 1.0));
  a2[2] = result;
  return result;
}

void GLON_RungeKutta4(double **a1, unsigned int a2)
{
  v57 = *MEMORY[0x29EDCA608];
  memset(v55, 0, sizeof(v55));
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0;
  *&v37[16] = 0u;
  v38 = 0u;
  v36 = 0u;
  *v37 = 0u;
  v5 = *a1;
  v4 = a1[1];
  v6 = **a1;
  *v37 = (*a1)[2];
  v36 = v6;
  v7 = *(v4 + 2);
  *&v37[8] = *v4;
  *&v37[24] = v7;
  v8 = a1[2];
  v9 = *v8;
  v39 = *(v8 + 2);
  v38 = v9;
  v10 = *(v8 + 2);
  v53 = *v8;
  v48 = v9;
  v56 = 0;
  v30[0] = &v50;
  v30[1] = &v51 + 1;
  v30[2] = &v53;
  v28[0] = &v45;
  v28[1] = &v46 + 1;
  v31 = 0;
  v29 = 0;
  v27 = 0;
  v25 = 0;
  v28[2] = &v48;
  v26[0] = &v40;
  v26[1] = &v41 + 1;
  v26[2] = &v43;
  v24[0] = &v36;
  v24[1] = &v37[8];
  v24[2] = &v38;
  v54 = v10;
  v49 = v39;
  v43 = v9;
  v44 = v39;
  *(a1 + 6) += a2;
  GLON_RK_CalcAccel(v24, v35);
  *(&v55[1] + 8) = *&v37[8];
  *(&v55[2] + 1) = *&v37[24];
  v11 = a2;
  v12 = vcvtd_n_f64_s32(a2, 1uLL);
  for (i = 5; i != 2; --i)
  {
    v14 = (&v50 + i * 8);
    *(v14 - 3) = v35[i] + v12 * *(v55 + i * 8);
    *v14 = *&v37[i * 8 - 16] + v12 * v34[i];
  }

  GLON_RK_CalcAccel(v30, v34);
  for (j = 5; j != 2; --j)
  {
    v16 = (&v45 + j * 8);
    *(v16 - 3) = v35[j] + v12 * *(&v50 + j * 8);
    *v16 = *&v37[j * 8 - 16] + v12 * v33[j];
  }

  GLON_RK_CalcAccel(v28, v33);
  for (k = 5; k != 2; --k)
  {
    v18 = (&v40 + k * 8);
    *(v18 - 3) = v35[k] + v11 * *(&v45 + k * 8);
    *v18 = *&v37[k * 8 - 16] + v11 * v32[k];
  }

  GLON_RK_CalcAccel(v26, v32);
  v19 = *&v55[2];
  *v5 = *&v36 + v11 * 0.166666667 * (*(&v41 + 1) + *(&v55[1] + 1) + (*(&v51 + 1) + *(&v46 + 1)) * 2.0);
  v5[1] = *(&v36 + 1) + v11 * 0.166666667 * (*&v42 + v19 + (*&v52 + *&v47) * 2.0);
  v5[2] = *v37 + v11 * 0.166666667 * (*(&v42 + 1) + *(&v55[2] + 1) + (*(&v52 + 1) + *(&v47 + 1)) * 2.0);
  v20 = v34[1];
  v21 = v33[1];
  v22 = v35[1];
  v23 = v32[1];
  *v4 = *&v37[8] + v11 * 0.166666667 * (v32[0] + v35[0] + (v34[0] + v33[0]) * 2.0);
  v4[1] = *&v37[16] + v11 * 0.166666667 * (v23 + v22 + (v20 + v21) * 2.0);
  v4[2] = *&v37[24] + v11 * 0.166666667 * (v32[2] + v35[2] + (v34[2] + v33[2]) * 2.0);
  GLON_RK_CalcAccel(a1, v8);
}

uint64_t LCD_SA_Debug_Ctl(uint64_t result)
{
  if (g_Enable_LCD_Debug)
  {
    v1 = result;
    v3 = *result;
    v2 = *(result + 8);
    v4 = *result;
    if (v2 > *result)
    {
      v4 = *(result + 24);
    }

    v5 = v4 - v2;
    if (v4 == v2)
    {
      if (v2 >= *(result + 24))
      {
        v2 = *(result + 16);
        *(result + 8) = v2;
LABEL_10:
        v6 = v3 - v2;
        if (v6)
        {
          result = GN_GPS_Write_LCD_Debug(v6, v2);
          v2 = &v1[1][result];
          v1[1] = v2;
        }
      }
    }

    else
    {
      result = GN_GPS_Write_LCD_Debug((v4 - v2), v2);
      v2 = &v1[1][result];
      v1[1] = v2;
      if (v2 >= v1[3])
      {
        v2 = v1[2];
        v1[1] = v2;
        if (result == v5)
        {
          v3 = *v1;
          goto LABEL_10;
        }
      }
    }

    if (v2 == *v1)
    {
      v7 = v1[2];
      *v1 = v7;
      v1[1] = v7;
    }
  }

  return result;
}

uint64_t LCD_SA_Debug_Flush_Check(uint64_t result)
{
  v1 = *(result + 8) - *result;
  if (v1 <= 0)
  {
    v1 += *(result + 24) - *(result + 16);
  }

  if (v1 <= 0x2FF)
  {

    return LCD_SA_Debug_Ctl(result);
  }

  return result;
}

void SuplIdle::~SuplIdle(SuplIdle *this)
{

  SuplState::~SuplState(this);
}

{
  SuplState::~SuplState(this);

  JUMPOUT(0x29C29EB20);
}

uint64_t SuplIdle::Init(SuplIdle *this)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(this + 1))
  {
    Instance = SuplProvider::GetInstance(this);
    v3 = *(*(this + 1) + 376);

    return SuplProvider::Connect(Instance, v3);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "Init", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }

    return 0;
  }
}

double SuplIdle::UpdateState(SuplIdle *this)
{
  v17 = *MEMORY[0x29EDCA608];
  v1 = *(this + 1);
  if (v1)
  {
    *(v1 + 64) = 1;
    *(v1 + 72) = *(v1 + 376);
    Instance = SuplUtils::GetInstance(this);
    SuplUtils::FillSetId(Instance, *(this + 1) + 80, *(*(this + 1) + 532));
    SuplInitRecd = SuplSession::GetSuplInitRecd(*(this + 1));
    v5 = *(this + 1);
    if (SuplInitRecd && ((v6 = SuplInitRecd, v5 + 264 == SuplInitRecd + 384) ? (*(v5 + 288) = *(SuplInitRecd + 408), *(v5 + 296) = *(SuplInitRecd + 416)) : (std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v5 + 264), *(SuplInitRecd + 384), *(SuplInitRecd + 392), *(SuplInitRecd + 392) - *(SuplInitRecd + 384)), *(v5 + 288) = *(v6 + 408), *(v5 + 296) = *(v6 + 416), std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v5 + 304), *(v6 + 424), *(v6 + 432), *(v6 + 432) - *(v6 + 424)), std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v5 + 328), *(v6 + 448), *(v6 + 456), *(v6 + 456) - *(v6 + 448)), std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>((v5 + 352), *(v6 + 472), *(v6 + 480), *(v6 + 480) - *(v6 + 472)), v5 = *(this + 1)), *(v5 + 65) = 1, *(v6 + 17) == 1))
    {
      v7 = *(v6 + 18);
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "UpdateState", 770);
        LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
      }

      if (v7 == 12)
      {
        ASN1T_SessionID::operator=(*(this + 1) + 64, v6 + 48);
      }

      SuplState::UpdateState(this, 7, *(this + 1));
      SuplStateObject = SuplSession::GetSuplStateObject(*(this + 1));
      v12 = SuplStateObject;
      if (SuplStateObject)
      {
        *(*(SuplStateObject + 5) + 432) = v7;
        *(*(SuplStateObject + 5) + 1) = 1;
        SuplEndRecd::SetHash(SuplStateObject);
        std::vector<unsigned char>::vector[abi:ne200100](__str, 3000);
        v13[0] = __str;
        v13[1] = 0;
        v14 = 0;
        SuplEndRecd::SetSessionIdPresent(v12);
        (*(*v12 + 32))(v12, v13);
        SuplEndRecd::TerminateSession(v12, -1, 3);
        if (*__str)
        {
          v16 = *__str;
          operator delete(*__str);
        }
      }
    }

    else
    {

      return SuplState::UpdateState(this, 2, v5);
    }
  }

  return result;
}

void sub_2995FFF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NK_Heading(uint64_t a1, int *a2, unsigned int a3)
{
  v4 = a1 + 0x2000;
  v5 = *(a1 + 11162);
  if (*(a1 + 11162))
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.5;
  }

  v7 = *(a2 + 119);
  *(a2 + 3927) = v7;
  if (*(a1 + 11032) <= *(a1 + 16) && a2[242] == 1)
  {
    v9 = *(a1 + 140);
    if (v9 >= *(a1 + 144))
    {
      v9 = *(a1 + 144);
    }

    if (v9 >= *(a1 + 148))
    {
      v9 = *(a1 + 148);
    }

    if (v9 >= 0xB)
    {
      *(a1 + 11200) = 0;
      if (*(a1 + 11116) == 3)
      {
        a2[7858] = 2;
        v10 = *(a1 + 11188);
        *(a1 + 11216) = *(a2 + 100);
        *(a1 + 11224) = *(a2 + 101);
        *(a1 + 11232) = 1;
        if (!v10)
        {
          *(a1 + 11188) = 1;
        }

        goto LABEL_57;
      }

      v15 = a2 + 6195;
      v16 = *(a2 + 115) * *(a2 + 115);
      v17 = *(a2 + 114) * *(a2 + 114);
      if (v16 < 0.000001 && v17 < 0.000001)
      {
        v17 = 0.000001;
        v16 = 0.000001;
      }

      v18 = fmin(sqrt(57.2957795 / (v17 + v16) * ((*(a2 + 3036) * v16 + *(a2 + 3037) * v17) * (57.2957795 / (v17 + v16)))), 180.0);
      *(a2 + 3926) = v18;
      Comp_Track8(a2 + 114);
      v20 = v19;
      *(a2 + 3925) = v19;
      v21 = 4.0;
      if (v5 && v18 < 30.0)
      {
        if (a3 >= 8)
        {
          EvCrt_Illegal_Default("NK_Heading", 155);
        }

        else
        {
          v21 = dbl_29975C5E0[a3];
        }
      }

      v22 = v20 - v7;
      if (v20 - v7 >= 180.0)
      {
        v23 = -360.0;
      }

      else
      {
        if (v22 >= -180.0)
        {
          goto LABEL_29;
        }

        v23 = 360.0;
      }

      v22 = v22 + v23;
LABEL_29:
      v24 = *(a2 + 118);
      if (*(a2 + 24996) == 1)
      {
        v25 = *(a2 + 2977);
        v26 = v20 - v25;
        if (v20 - v25 >= 180.0)
        {
          v27 = -360.0;
        }

        else
        {
          if (v26 >= -180.0)
          {
LABEL_43:
            if (v24 >= v21)
            {
              v30 = fabs(v26);
              v37 = v30 <= 45.0;
              v29 = 15.0 / v30;
              if (v37)
              {
                v29 = 0.0;
              }
            }

            else
            {
              v29 = v24 * 0.1;
            }

            v20 = v25 + v29 * v26;
            *(a1 + 11192) = v20;
            *(a2 + 3928) = v29;
            v28 = 7;
LABEL_48:
            a2[7858] = v28;
            *(a1 + 11188) = 3;
            v31 = *a2;
            *(a1 + 11208) = *a2;
            if (v18 < 10.0 && *(a2 + 24781) >= 6u)
            {
              *(a1 + 11240) = v20;
              *(a1 + 11248) = v31;
            }

            v32 = v20 - v7;
            *(a1 + 11200) = v20 - v7;
            if (v20 - v7 >= 180.0)
            {
              v33 = -360.0;
            }

            else
            {
              if (v32 >= -180.0)
              {
LABEL_56:
                *(a1 + 11216) = *(a2 + 100);
                *(a1 + 11224) = *(a2 + 101);
                *(v4 + 3040) = 1;
LABEL_57:
                *(a2 + 119) = *(a1 + 11192);
                return;
              }

              v33 = 360.0;
            }

            *(a1 + 11200) = v32 + v33;
            goto LABEL_56;
          }

          v27 = 360.0;
        }

        v26 = v26 + v27;
        goto LABEL_43;
      }

      if (v24 > v21 && v18 < 60.0)
      {
        *(a1 + 11192) = v20;
        v28 = 3;
        goto LABEL_48;
      }

      if (*(v4 + 2970) == 1 && *(a1 + 11116) == 2 && fabs(v22) > 90.0 && v18 > 45.0)
      {
        *(a1 + 11192) = v7;
        *(a2 + 3928) = 0;
        v28 = 6;
        v20 = v7;
        goto LABEL_48;
      }

      if (v24 > 4.0 && v18 >= 60.0)
      {
        v34 = 1.0 / (v18 / 60.0 * (v18 / 60.0));
        *(a2 + 3928) = v34;
        v20 = v7 + v34 * v22;
        *(a1 + 11192) = v20;
        v35 = 360.0;
        if (v20 >= 360.0)
        {
          v35 = -360.0;
        }

        else if (v20 >= 0.0)
        {
          goto LABEL_76;
        }

        v20 = v20 + v35;
        *(a1 + 11192) = v20;
LABEL_76:
        v28 = 4;
        goto LABEL_48;
      }

      if (v24 > v6)
      {
        v36 = 1.0;
        if (v18 > 10.0)
        {
          v37 = v18 > 40.0 || v24 <= 1.0;
          if (v37)
          {
            v36 = fmin(0.93 / fmax(fabs(v22), 2.22044605e-16) + 0.07, 0.25);
          }

          else
          {
            v36 = 0.25 / (v18 / 40.0);
          }
        }

        *(a2 + 3928) = v36;
        v20 = v7 + v36 * v22;
        *(a1 + 11192) = v20;
        v41 = 360.0;
        if (v20 >= 360.0)
        {
          v41 = -360.0;
        }

        else if (v20 >= 0.0)
        {
          goto LABEL_94;
        }

        v20 = v20 + v41;
        *(a1 + 11192) = v20;
LABEL_94:
        v28 = 5;
        goto LABEL_48;
      }

      v38 = v20 - *(a2 + 3227);
      if (v38 >= 180.0)
      {
        v39 = -360.0;
      }

      else
      {
        if (v38 >= -180.0)
        {
          goto LABEL_79;
        }

        v39 = 360.0;
      }

      v38 = v38 + v39;
LABEL_79:
      if (a3 >= 5)
      {
        if (a3 - 5 < 3)
        {
          goto LABEL_87;
        }

        EvCrt_Illegal_Default("NK_Heading", 252);
      }

      if (*v15 >= 8u && v18 < 10.0 && *(a2 + 26104) == 1 && fabs(v38) < 10.0 && *(a2 + 3205) < 0.1)
      {
        v28 = 3;
        v40 = 1.0;
LABEL_88:
        *(a1 + 11192) = v20;
        *(a2 + 3928) = v40;
        goto LABEL_48;
      }

LABEL_87:
      v28 = 6;
      v40 = 0.0;
      v20 = v7;
      goto LABEL_88;
    }
  }

  Comp_Track8(a2 + 114);
  *(a2 + 119) = v11;
  *(a2 + 3925) = v11;
  v12 = *(a2 + 115) * *(a2 + 115);
  v13 = *(a2 + 114) * *(a2 + 114);
  if (v12 < 0.000001 && v13 < 0.000001)
  {
    v13 = 0.000001;
    v12 = 0.000001;
  }

  *(a2 + 3926) = fmin(sqrt(57.2957795 / (v13 + v12) * ((*(a2 + 3036) * v12 + *(a2 + 3037) * v13) * (57.2957795 / (v13 + v12)))), 180.0);
  a2[7858] = 1;
}

uint64_t Kep_Check_Almanac(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (a1 - 255 > v2)
  {
    do
    {
      v2 += 256;
    }

    while (a1 - 255 > v2);
    *(a2 + 16) = v2;
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  if (v3 != 6 && (v3 == 4 ? (v5 = v4 > 5) : (v5 = 1), v5))
  {
    v6 = 4800.0;
  }

  else
  {
    v6 = 6300.0;
  }

  v7 = *(a2 + 20);
  if (v3 == 5)
  {
    v8 = *(a2 + 72);
    v9 = *(a2 + 40);
    v10 = 0.000000314159265;
    v11 = 7000.0;
    v12 = 0.1;
    goto LABEL_42;
  }

  v13 = v3 == 4;
  v14 = v4 > 5 && v3 == 4;
  if (v14)
  {
    v8 = *(a2 + 72);
    v12 = 0.1;
    v11 = 7000.0;
  }

  else
  {
    v16 = v4 < 6 && v3 == 4 || v3 == 6;
    v11 = 6700.0;
    if (!v16)
    {
      v11 = 5800.0;
    }

    v8 = *(a2 + 72);
    if (v3 == 3)
    {
      v13 = 0;
      v12 = 0.03;
      if (((v4 - 14) & 0xFB) == 0)
      {
        v12 = 0.25;
      }

      v9 = *(a2 + 40);
      goto LABEL_34;
    }

    v12 = 0.03;
  }

  v9 = *(a2 + 40);
  if (v14)
  {
    v10 = 0.000000314159265;
    goto LABEL_42;
  }

LABEL_34:
  v17 = v4 < 6 && v13;
  v18 = v3 == 6 || v17;
  v10 = 0.000000314159265;
  if (!v18)
  {
    v10 = 0.0;
  }

LABEL_42:
  if (v7 <= 604799)
  {
    v19 = v7 >> 31;
  }

  else
  {
    v19 = 2;
  }

  if (v8 < v6)
  {
    v19 |= 4u;
  }

  if (v8 > v11)
  {
    v19 |= 8u;
  }

  if (v9 < 0.0)
  {
    v19 |= 0x10u;
  }

  if (v9 > v12)
  {
    v19 |= 0x20u;
  }

  v20 = *(a2 + 56);
  if (v20 < -0.00000198862815)
  {
    v19 |= 0x40u;
  }

  if (v20 <= v10)
  {
    return v19;
  }

  else
  {
    return v19 | 0x80;
  }
}

void GLON_Alm_Calc_Corrns(uint64_t a1, double *a2, double a3, double a4, double a5)
{
  v9 = a2[5] + 43200.0;
  v10 = a2[7];
  v11 = __sincos_stret(a2[8]);
  v30 = v10 * v11.__sinval;
  v28 = v10 * v11.__cosval;
  v12 = a2[4] + 1.09955743;
  v13 = __sincos_stret(a4);
  v14 = __sincos_stret(a4 + a4);
  v15 = __sincos_stret(a4 * 3.0);
  v16 = __sincos_stret(a4 * 4.0);
  v17 = __sincos_stret(v12);
  v18 = v17.__sinval * v17.__sinval * -1.5 + 1.0;
  v19.f64[0] = 6378.136 / a3 * (6378.136 / a3);
  v20 = v19.f64[0] * 0.00162393863 * v18;
  v21 = v19.f64[0] * -0.000405984656 * (v17.__sinval * v17.__sinval);
  v22.f64[0] = v13.__sinval * (v28 * 3.5) + 6.28318531 / v9 * a5 + v30 * -2.5 * v13.__cosval + v14.__sinval * -0.5;
  v22.f64[1] = v14.__cosval + v13.__sinval * v30 - v28 * v13.__cosval;
  v23 = vmlaq_f64(vmlaq_f64(v22, v15, vmulq_n_f64(xmmword_29975C680, v28)), vextq_s8(v15, v15, 8uLL), vmulq_n_f64(xmmword_29975C690, v30));
  v24 = v19.f64[0] * 0.00324787725 * v18;
  v25 = v19.f64[0] * 0.00162393863 * (v17.__cosval * v17.__cosval);
  *a1 = (v19.f64[0] * 0.00162393863 * (v17.__sinval * v17.__sinval) * (v14.__cosval + v13.__cosval * (v28 * -0.5) + v30 * 0.5 * v13.__sinval + v28 * 3.5 * v15.__cosval + v30 * 3.5 * v15.__sinval) + v24 * (v13.__sinval * v30 + v28 * v13.__cosval)) * a3;
  *(a1 + 8) = v21 * (v13.__sinval + v15.__sinval * -2.33333333 + v28 * 5.0 * v14.__sinval + v28 * -8.5 * v16.__sinval + v30 * 8.5 * v16.__cosval + v30 * v14.__cosval) + v20 * (v13.__sinval + 6.28318531 / v9 * v28 * a5 + v28 * 1.5 * v14.__sinval - v30 * 1.5 * v14.__cosval) + v25 * (v14.__sinval * (v28 * -0.5) + 6.28318531 / v9 * v28 * a5);
  v19.f64[1] = v19.f64[0] * 0.000811969313;
  v26 = &unk_29975C658;
  *&v27.f64[0] = *&vld1q_dup_f64(v26);
  *(a1 + 16) = v21 * (v30 * -5.0 * v14.__sinval - (v13.__cosval - v15.__cosval * -2.33333333) + v28 * -8.5 * v16.__cosval - v30 * 8.5 * v16.__sinval + v28 * v14.__cosval) + v20 * (v13.__cosval + -(v30 * (6.28318531 / v9)) * a5 + v28 * 1.5 * v14.__cosval + v30 * 1.5 * v14.__sinval) + v25 * (v14.__sinval * (v30 * 0.5) + -(v30 * (6.28318531 / v9)) * a5);
  v27.f64[1] = v17.__sinval;
  *(a1 + 24) = vmulq_f64(vmulq_n_f64(vmulq_f64(v19, v27), v17.__cosval), v23);
  *(a1 + 40) = v19.f64[0] * 0.00487181588 * (v17.__sinval * v17.__sinval) * (v13.__sinval * (v28 * -0.291666667) + v30 * -0.291666667 * v13.__cosval + v30 * -0.680555556 * v15.__cosval + v28 * 0.680555556 * v15.__sinval + v14.__sinval * 0.25) + v24 * (v13.__sinval * (v28 * 1.75) + 6.28318531 / v9 * a5 + v30 * -1.75 * v13.__cosval) + v25 * v23.f64[0];
}