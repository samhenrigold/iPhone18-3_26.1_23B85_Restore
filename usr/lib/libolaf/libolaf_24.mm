uint64_t __copy_helper_block_e8_32c71_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency13SummaryReportEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 32;
  v3 = a2 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_32c71_ZTSNSt3__18functionIFN4gnss6ResultERKNS1_9Emergency13SummaryReportEEEE(uint64_t a1)
{
  v1 = a1 + 32;

  return std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice26Ga10_07FTAssistanceRequestEv_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::__value_func[abi:ne200100](v11, v1 + 888);
  if (v12)
  {
    v2 = *(v1 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice26Ga10_07FTAssistanceRequestEv_block_invoke_2;
    block[3] = &__block_descriptor_tmp_248;
    std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::__value_func[abi:ne200100](v9, v11);
    v9[8] = 4;
    dispatch_async(v2, block);
    std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::~__value_func[abi:ne200100](v9);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FtaReportCb\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 69, "Ga10_07FTAssistanceRequest_block_invoke", 258);
      LbsOsaTrace_WriteLog(0x18u, __str, v4, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "Ga10_07FTAssistanceRequest_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 5, 1);
    }
  }

  return std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::~__value_func[abi:ne200100](v11);
}

uint64_t ___ZN4gnss15GnssAdaptDevice26Ga10_07FTAssistanceRequestEv_block_invoke_2(uint64_t a1)
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

uint64_t __copy_helper_block_e8_32c77_ZTSNSt3__18functionIFvRKN4gnss9Emergency6Cplane23CellFTAssistanceRequestEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 32;
  v3 = a2 + 32;

  return std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_32c77_ZTSNSt3__18functionIFvRKN4gnss9Emergency6Cplane23CellFTAssistanceRequestEEEE(uint64_t a1)
{
  v1 = a1 + 32;

  return std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::~__value_func[abi:ne200100](v1);
}

double gnss::GnssAdaptDevice::Ga10_13RegisterGnsCpStatusResponse(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v53 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(v1);
  if (DeviceInstance)
  {
    v7 = DeviceInstance;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "Ga10_00HandleGnsCpStatusResponse");
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
    }

    if (v3)
    {
      if (v4 > 1)
      {
        if (v4 == 2)
        {
          *v43 = 0;
          v44 = v43;
          v45 = 0x2000000000;
          v46 = gnssOsa_Calloc("Ga10_00HandleGnsCpStatusResponse", 2428, 1, 0x38uLL);
          v20 = *(v44 + 3);
          if (v20)
          {
            *v20 = *v3;
            if (*(v3 + 8))
            {
              v21 = gnssOsa_Calloc("Ga10_00HandleGnsCpStatusResponse", 2437, 1, 8uLL);
              *(*(v44 + 3) + 8) = v21;
              v22 = *(*(v44 + 3) + 8);
              if (v22)
              {
                *v22 = **(v3 + 8);
              }
            }

            if (*(v3 + 16))
            {
              v23 = gnssOsa_Calloc("Ga10_00HandleGnsCpStatusResponse", 2445, 1, 0xD8uLL);
              v24 = v44;
              *(*(v44 + 3) + 16) = v23;
              v25 = *(*(v24 + 3) + 16);
              if (v25)
              {
                v26 = *(v3 + 16);
                v27 = *(v26 + 16);
                *v25 = *v26;
                *(v25 + 16) = v27;
                v28 = *(v26 + 32);
                v29 = *(v26 + 48);
                v30 = *(v26 + 80);
                *(v25 + 64) = *(v26 + 64);
                *(v25 + 80) = v30;
                *(v25 + 32) = v28;
                *(v25 + 48) = v29;
                v31 = *(v26 + 96);
                v32 = *(v26 + 112);
                v33 = *(v26 + 144);
                *(v25 + 128) = *(v26 + 128);
                *(v25 + 144) = v33;
                *(v25 + 96) = v31;
                *(v25 + 112) = v32;
                v34 = *(v26 + 160);
                v35 = *(v26 + 176);
                v36 = *(v26 + 192);
                *(v25 + 206) = *(v26 + 206);
                *(v25 + 176) = v35;
                *(v25 + 192) = v36;
                *(v25 + 160) = v34;
              }
            }
          }

          v37 = *(v7 + 288);
          *__str = MEMORY[0x29EDCA5F8];
          v48 = 0x40000000;
          v49 = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_3_203;
          v50 = &unk_29EF6B300;
          *&v52[0] = v7;
          v51 = v43;
          dispatch_async(v37, __str);
          _Block_object_dispose(v43, 8);
          goto LABEL_35;
        }

        if (v4 == 3)
        {
          *&v52[0] = *v3;
          DWORD2(v52[0]) = *(v3 + 8);
          v13 = *(v7 + 288);
          *__str = MEMORY[0x29EDCA5F8];
          v48 = 0x40000000;
          v14 = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_4;
          v15 = &__block_descriptor_tmp_210;
          goto LABEL_34;
        }
      }

      else
      {
        if (!v4)
        {
          memcpy(v52, v3, 0x2859CuLL);
          v13 = *(v7 + 288);
          *__str = MEMORY[0x29EDCA5F8];
          v48 = 0x40000000;
          v14 = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_199;
          v15 = &__block_descriptor_tmp_200;
          goto LABEL_34;
        }

        if (v4 == 1)
        {
          v10 = *(v3 + 80);
          v52[4] = *(v3 + 64);
          v52[5] = v10;
          v52[6] = *(v3 + 96);
          v11 = *(v3 + 16);
          v52[0] = *v3;
          v52[1] = v11;
          v12 = *(v3 + 48);
          v52[2] = *(v3 + 32);
          *&v52[7] = *(v3 + 112);
          v52[3] = v12;
          v13 = *(v7 + 288);
          *__str = MEMORY[0x29EDCA5F8];
          v48 = 0x40000000;
          v14 = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_2_201;
          v15 = &__block_descriptor_tmp_202;
LABEL_34:
          v49 = v14;
          v50 = v15;
          v51 = v7;
          dispatch_async(v13, __str);
          goto LABEL_35;
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CP Type,%u\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "Ga10_00HandleGnsCpStatusResponse", 515, v4);
        LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
      }

      goto LABEL_35;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](v43, v7 + 792);
        v42 = *(v7 + 288);
        *__str = MEMORY[0x29EDCA5F8];
        v48 = 1174405120;
        v49 = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_190;
        v50 = &__block_descriptor_tmp_196;
        v51 = v7;
        std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](v52, v43);
        dispatch_async(v42, __str);
        std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](v52);
        std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](v43);
LABEL_35:
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(v43, 0x410uLL);
          v40 = mach_continuous_time();
          v41 = snprintf(v43, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v40), "ADP", 68, "Ga10_00HandleGnsCpStatusResponse");
          LbsOsaTrace_WriteLog(0x18u, v43, v41, 5, 1);
        }

        return result;
      }

      if (v4 == 3)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNS API Status\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "Ga10_00HandleGnsCpStatusResponse", 770);
          LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (!v4)
      {
        v13 = *(v7 + 288);
        *__str = MEMORY[0x29EDCA5F8];
        v48 = 0x40000000;
        v14 = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke;
        v15 = &__block_descriptor_tmp_185;
        goto LABEL_34;
      }

      if (v4 == 1)
      {
        v13 = *(v7 + 288);
        *__str = MEMORY[0x29EDCA5F8];
        v48 = 0x40000000;
        v14 = ___ZN4gnss15GnssAdaptDevice32Ga10_00HandleGnsCpStatusResponseE15e_gnsCP_MsgTypeP15u_gnsCP_MsgData_block_invoke_2;
        v15 = &__block_descriptor_tmp_189;
        goto LABEL_34;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v38 = mach_continuous_time();
      v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CP Msg Type,%u\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 69, "Ga10_00HandleGnsCpStatusResponse", 515, v4);
      LbsOsaTrace_WriteLog(0x18u, __str, v39, 0, 1);
    }

    goto LABEL_35;
  }

  return result;
}

void sub_299698250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double gnss::GnssAdaptDevice::Ga10_14RegisterGnsFtaStatusResponse()
{
  v4 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FTA Req to Modem handled in posReq\n", (*&g_MacClockTicksToMsRelation * v1), "ADP", 73, "Ga10_14RegisterGnsFtaStatusResponse");
    LbsOsaTrace_WriteLog(0x18u, __str, v2, 4, 1);
  }

  return result;
}

double gnss::GnssAdaptDevice::setNwAssistanceGpsAcquisition(uint64_t a1, const void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    memcpy(__dst, a2, 0x178uLL);
    v5 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice29setNwAssistanceGpsAcquisitionERKNS_9Emergency6Cplane16GpsAcqAssistanceENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_280;
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
    v8 = snprintf(__dst, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setNwAssistanceGpsAcquisition", 513);
    LbsOsaTrace_WriteLog(0x18u, __dst, v8, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice29setNwAssistanceGpsAcquisitionERKNS_9Emergency6Cplane16GpsAcqAssistanceENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v107 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setNwAssistanceGpsAcquisition_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if ((*(v2 + 88) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v105, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v105, "setNwAssistanceGpsAcquisition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v105);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setNwAssistanceGpsAcquisition_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
    }

    return result;
  }

  v5 = *(a1 + 72);
  if (v5 >= 0x240C8400)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v104, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v104, "setNwAssistanceGpsAcquisition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v104);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPS Tow,%u\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *(a1 + 72));
      LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "setNwAssistanceGpsAcquisition_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
    }

    return result;
  }

  v15 = *(a1 + 76);
  if (v15 >= 0x11)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v103, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v103, "setNwAssistanceGpsAcquisition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v103);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sat Count,%u\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *(a1 + 76));
      LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "setNwAssistanceGpsAcquisition_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
    }

    return result;
  }

  if (*(a1 + 440) != 3)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v102, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v102, "setNwAssistanceGpsAcquisition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v102);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v84 = mach_continuous_time();
      v85 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PosProtocol,%u\n", (*&g_MacClockTicksToMsRelation * v84), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 515, *(a1 + 440));
      LbsOsaTrace_WriteLog(0x18u, __str, v85, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v86 = mach_continuous_time();
      v87 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v86), "ADP", 68, "setNwAssistanceGpsAcquisition_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v87, 5, 1);
    }

    return result;
  }

  v20 = 0;
  v101 = 0;
  memset(&v100[1], 0, 192);
  do
  {
    v21 = v100 + v20;
    v21[18] = -1;
    *(v21 + 19) = 0;
    v21[27] = 0;
    *(v21 + 14) = -1;
    v20 += 12;
  }

  while (v20 != 192);
  LODWORD(v100[0]) = v5;
  LOBYTE(v100[1]) = v15;
  *(v100 + 4) = -NAN;
  HIDWORD(v100[0]) = -1;
  if (!v15)
  {
    goto LABEL_118;
  }

  v22 = 0;
  v23 = 0;
  v24 = (a1 + 125);
  v25 = &v100[1] + 13;
  do
  {
    v26 = *v24;
    if (v26 > 0x3F)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v34 = mach_continuous_time();
        v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sat-ID Acq,%u\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
        LbsOsaTrace_WriteLog(0x18u, __str, v35, 0, 1);
      }

      goto LABEL_94;
    }

    *(v25 - 11) = v26;
    v27 = *(a1 + 440);
    if (v27 < 2 || v27 == 3)
    {
      v29 = *(v24 - 13);
      if (v29 > 0x3FE)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v37 = mach_continuous_time();
          v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId codePhase,%u\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
          LbsOsaTrace_WriteLog(0x18u, __str, v38, 0, 1);
        }

        goto LABEL_94;
      }

      *(v25 - 5) = v29;
      v30 = *(v24 - 7);
      if (v30 >= 0x14)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v39 = mach_continuous_time();
          v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId intCodePhase Acq,%u\n", (*&g_MacClockTicksToMsRelation * v39), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
          LbsOsaTrace_WriteLog(0x18u, __str, v40, 0, 1);
        }

        goto LABEL_94;
      }

      *(v25 - 6) = v30;
      v31 = *(v24 - 6);
      if (v31 >= 4)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v44 = mach_continuous_time();
          v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId gpsBitNumber Acq,%u\n", (*&g_MacClockTicksToMsRelation * v44), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
          LbsOsaTrace_WriteLog(0x18u, __str, v45, 0, 1);
        }

        goto LABEL_94;
      }

      *(v25 - 3) = v31;
      v32 = *(v24 - 11);
      if ((v32 + 2048) >= 0x1000u)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v55 = mach_continuous_time();
          v56 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId Dop0 Acq,%u\n", (*&g_MacClockTicksToMsRelation * v55), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
          LbsOsaTrace_WriteLog(0x18u, __str, v56, 0, 1);
        }

        goto LABEL_94;
      }

      *(v25 - 9) = v32;
      v33 = *(v24 - 9);
      if (v33 >= 0x40)
      {
        *(v25 - 10) = 0;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v61 = mach_continuous_time();
          v62 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Dop1 set to Zero\n", (*&g_MacClockTicksToMsRelation * v61), "ADP", 73, "setNwAssistanceGpsAcquisition_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v62, 4, 1);
        }
      }

      else
      {
        *(v25 - 10) = v33;
      }

      v63 = *(v24 - 8);
      if (v63 > 4)
      {
        *(v25 - 7) = 0;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v64 = mach_continuous_time();
          v65 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DopUnc set to Zero\n", (*&g_MacClockTicksToMsRelation * v64), "ADP", 73, "setNwAssistanceGpsAcquisition_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v65, 4, 1);
        }
      }

      else
      {
        *(v25 - 7) = v63;
      }

      if (*(a1 + 440) == 3)
      {
        LOBYTE(v26) = v26 - 1;
        *(v25 - 11) = v26;
        v66 = *(v24 - 5);
        if (v66 <= 0x1F)
        {
          LOBYTE(v67) = gnss::GnssAdaptDevice::Ga10_08MapCdmaCodePhaseSearchWindow(v66);
LABEL_78:
          *(v25 - 2) = v67;
          v68 = *(v24 - 3);
          if (v68 > 0x1F)
          {
            *(v25 - 1) = -1;
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v77 = mach_continuous_time();
              v78 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Azimuth Out of range\n", (*&g_MacClockTicksToMsRelation * v77), "ADP", 73, "setNwAssistanceGpsAcquisition_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, __str, v78, 4, 1);
            }
          }

          else
          {
            *(v25 - 1) = v68;
          }

          v79 = *(v24 - 1);
          if (v79 > 7)
          {
            *v25 = -1;
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v80 = mach_continuous_time();
              v81 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Elevation Out of Range\n", (*&g_MacClockTicksToMsRelation * v80), "ADP", 73, "setNwAssistanceGpsAcquisition_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, __str, v81, 4, 1);
            }
          }

          else
          {
            *v25 = v79;
          }

          goto LABEL_105;
        }

        if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v67 = *(v24 - 5);
        if (v67 < 0x10)
        {
          goto LABEL_78;
        }

        if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          goto LABEL_94;
        }
      }

      bzero(__str, 0x410uLL);
      v74 = mach_continuous_time();
      v75 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId codePhaseSearchWindow Acq,%u\n", (*&g_MacClockTicksToMsRelation * v74), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
      LbsOsaTrace_WriteLog(0x18u, __str, v75, 0, 1);
      goto LABEL_94;
    }

    if (v27 == 2)
    {
      v36 = *(v24 - 3);
      if (v36 > 0xFF)
      {
        *(v25 - 1) = -1;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v41 = mach_continuous_time();
          v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Azimuth set to UINT8_MAX\n", (*&g_MacClockTicksToMsRelation * v41), "ADP", 73, "setNwAssistanceGpsAcquisition_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v42, 4, 1);
        }
      }

      else
      {
        *(v25 - 1) = v36 >> 4;
      }

      v43 = *(v24 - 1);
      if (v43 < 0)
      {
        *v25 = -1;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v46 = mach_continuous_time();
          v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Elevation set to UINT8_MAX\n", (*&g_MacClockTicksToMsRelation * v46), "ADP", 73, "setNwAssistanceGpsAcquisition_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v47, 4, 1);
        }
      }

      else
      {
        *v25 = v43 >> 4;
      }

      v48 = *(v24 - 13);
      if (v48 >= 0x400)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v53 = mach_continuous_time();
          v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId CodePhase,%u\n", (*&g_MacClockTicksToMsRelation * v53), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
          LbsOsaTrace_WriteLog(0x18u, __str, v54, 0, 1);
        }
      }

      else
      {
        *(v25 - 5) = 1022 - ((1023 * v48) >> 10);
        v49 = *(v24 - 7);
        if ((v49 & 0x80) != 0)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v57 = mach_continuous_time();
            v58 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId intCodePhase,%u\n", (*&g_MacClockTicksToMsRelation * v57), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
            LbsOsaTrace_WriteLog(0x18u, __str, v58, 0, 1);
          }
        }

        else
        {
          if (v49 <= 0x50)
          {
            v50 = 80;
          }

          else
          {
            v50 = -96;
          }

          v51 = v50 - v49;
          *(v25 - 6) = v51 - 20 * ((((103 * v51) & 0x8000) != 0) + ((103 * v51) >> 11));
          *(v25 - 3) = (((103 * v51) & 0x8000) != 0) + ((103 * v51) >> 11) - (((((103 * v51) & 0x8000) != 0) + ((103 * v51) >> 11) + ((((((103 * v51) >> 15) & 1) + ((103 * v51) >> 11)) & 0xC0) >> 6)) & 0xFC);
          v52 = *(v24 - 5);
          if (v52 >= 0x20)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v59 = mach_continuous_time();
              v60 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId codePhaseSearchWindow,%u\n", (*&g_MacClockTicksToMsRelation * v59), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
              LbsOsaTrace_WriteLog(0x18u, __str, v60, 0, 1);
            }
          }

          else
          {
            if (v52 >= 3)
            {
              if (v52 >= 0xD)
              {
                LOBYTE(v52) = 0;
              }

              else
              {
                LOBYTE(v52) = v52 + 3;
              }
            }

            else
            {
              v52 = (0x4027Fu >> (8 * (v52 & 0x1F))) & 0x7F;
            }

            *(v25 - 2) = v52;
            v69 = *(v24 - 11);
            if ((v69 + 2048) <= 0xFFFu)
            {
              *(v25 - 9) = v69;
              v70 = *(v24 - 9);
              if (v70 >= 0x40)
              {
                LOBYTE(v70) = 0;
              }

              *(v25 - 10) = v70;
              v71 = *(v24 - 8);
              if (v71 >= 5)
              {
                *(v25 - 7) = 0;
              }

              else
              {
                *(v25 - 7) = v71;
              }

              goto LABEL_105;
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v72 = mach_continuous_time();
              v73 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatId Dop0,%u\n", (*&g_MacClockTicksToMsRelation * v72), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 772, *v24);
              LbsOsaTrace_WriteLog(0x18u, __str, v73, 0, 1);
            }
          }
        }
      }

LABEL_94:
      ++v22;
      goto LABEL_95;
    }

LABEL_105:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v82 = mach_continuous_time();
      v83 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SatId,%u,CodePh,%u,Dop0,%u,Dop1,%u,DopUnc,%u,IntCodePh,%u,GpsBitNum,%u,CodePhSrchWin,%u,Azm,%u,Elevation,%u\n", (*&g_MacClockTicksToMsRelation * v82), "ADP", 73, "setNwAssistanceGpsAcquisition_block_invoke", v26, *(v25 - 5), *(v25 - 9), *(v25 - 10), *(v25 - 7), *(v25 - 6), *(v25 - 3), *(v25 - 2), *(v25 - 1), *v25);
      LbsOsaTrace_WriteLog(0x18u, __str, v83, 4, 1);
    }

LABEL_95:
    v76 = *(a1 + 76);
    if (v23 > 0xE)
    {
      break;
    }

    ++v23;
    v24 += 20;
    v25 += 12;
  }

  while (v23 < v76);
  if (v22 < v76)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v88 = mach_continuous_time();
      v89 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No of Acq Inj,%u\n", (*&g_MacClockTicksToMsRelation * v88), "ADP", 73, "setNwAssistanceGpsAcquisition_block_invoke", *(a1 + 76) - v22);
      LbsOsaTrace_WriteLog(0x18u, __str, v89, 4, 1);
    }

    GNS_AsstGpsAcqAsst(*(a1 + 444), 1, v100, 0);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v90 = mach_continuous_time();
      v91 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AsstGpsAcqAsst invoked\n", (*&g_MacClockTicksToMsRelation * v90), "ADP", 73, "setNwAssistanceGpsAcquisition_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v91, 4, 1);
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v98, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v98, "setNwAssistanceGpsAcquisition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v98);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v92 = mach_continuous_time();
      v93 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v92), "ADP", 68, "setNwAssistanceGpsAcquisition_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v93, 5, 1);
    }

    return result;
  }

LABEL_118:
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v99, a1 + 40);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v99, "setNwAssistanceGpsAcquisition_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v99);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v94 = mach_continuous_time();
    v95 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Acquisition\n", (*&g_MacClockTicksToMsRelation * v94), "ADP", 69, "setNwAssistanceGpsAcquisition_block_invoke", 770);
    LbsOsaTrace_WriteLog(0x18u, __str, v95, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v96 = mach_continuous_time();
    v97 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v96), "ADP", 68, "setNwAssistanceGpsAcquisition_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v97, 5, 1);
  }

  return result;
}

void sub_2996999D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double gnss::GnssAdaptDevice::setFtAssistanceNeededReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice27setFtAssistanceNeededReportENSt3__18functionIFvRKNS_9Emergency6Cplane23CellFTAssistanceRequestEEEENS2_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_282;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::__value_func[abi:ne200100](v9, a2);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
    std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::~__value_func[abi:ne200100](v9);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setFtAssistanceNeededReport", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice27setFtAssistanceNeededReportENSt3__18functionIFvRKNS_9Emergency6Cplane23CellFTAssistanceRequestEEEENS2_IFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v19[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setFtAssistanceNeededReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(a1 + 64))
  {
    std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::__value_func[abi:ne200100](__str, a1 + 40);
    v5 = v2 + 888;
    if (__str != (v2 + 888))
    {
      v6 = v18;
      v7 = *(v2 + 912);
      if (v18 == __str)
      {
        if (v7 == v5)
        {
          (*(*v18 + 24))();
          (*(*v18 + 32))(v18);
          v18 = 0;
          (*(**(v2 + 912) + 24))(*(v2 + 912), __str);
          (*(**(v2 + 912) + 32))(*(v2 + 912));
          *(v2 + 912) = 0;
          v18 = __str;
          (*(v19[0] + 24))(v19, v2 + 888);
          (*(v19[0] + 32))(v19);
        }

        else
        {
          (*(*v18 + 24))();
          (*(*v18 + 32))(v18);
          v18 = *(v2 + 912);
        }

        *(v2 + 912) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(v2 + 912), __str);
        (*(**(v2 + 912) + 32))(*(v2 + 912));
        *(v2 + 912) = v18;
        v18 = __str;
      }

      else
      {
        v18 = *(v2 + 912);
        *(v2 + 912) = v6;
      }
    }

    std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::~__value_func[abi:ne200100](__str);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v15, "setFtAssistanceNeededReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setFtAssistanceNeededReport_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FTARep\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setFtAssistanceNeededReport_block_invoke", 258);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v16, "setFtAssistanceNeededReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "setFtAssistanceNeededReport_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    }
  }

  return result;
}

void sub_29969A0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __destroy_helper_block_e8_40c77_ZTSNSt3__18functionIFvRKN4gnss9Emergency6Cplane23CellFTAssistanceRequestEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 72);

  return std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::~__value_func[abi:ne200100](a1 + 40);
}

double gnss::GnssAdaptDevice::injectFTAssistance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v3 = *(a2 + 16);
    *__str = *a2;
    v12 = v3;
    v13 = *(a2 + 32);
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice18injectFTAssistanceERKNS_9Emergency6Cplane16CellFTAssistanceENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_292;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a3);
    v9[2] = *__str;
    v9[3] = v12;
    v10 = v13;
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "injectFTAssistance", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice18injectFTAssistanceERKNS_9Emergency6Cplane16CellFTAssistanceENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (*(v2 + 1024))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "injectFTAssistance_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
    }

    if (*(v2 + 88))
    {
      LOWORD(v39) = 0;
      v40 = xmmword_299760FB0;
      v41 = 0;
      if (*(a1 + 72) == 1)
      {
        v5 = *(a1 + 76);
        if (v5 < 4)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v43, a1 + 40);
          v6 = v43;
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v43, "injectFTAssistance_block_invoke");
LABEL_8:
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v8 = mach_continuous_time();
            v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "injectFTAssistance_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
          }

          return result;
        }

        if (v5 != 4)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v29 = mach_continuous_time();
            v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NetworkType,%u\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 69, "injectFTAssistance_block_invoke", 770, *(a1 + 76));
            LbsOsaTrace_WriteLog(0x18u, __str, v30, 0, 1);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v42, a1 + 40);
          v6 = v42;
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v42, "injectFTAssistance_block_invoke");
          goto LABEL_8;
        }

        if (*(a1 + 92) > 0x93A7Fu)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v46, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v46, "injectFTAssistance_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v46);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v31 = mach_continuous_time();
            v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Int CDMA Fine Time,%u\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 69, "injectFTAssistance_block_invoke", 772, *(a1 + 92));
            LbsOsaTrace_WriteLog(0x18u, __str, v32, 0, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v33 = mach_continuous_time();
            v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 68, "injectFTAssistance_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v34, 5, 1);
          }
        }

        else
        {
          LODWORD(v40) = *(a1 + 92);
          v22 = *(a1 + 96);
          if (v22 < 0x3B9ACA00)
          {
            LOWORD(v39) = *(a1 + 100);
            *(&v40 + 4) = v22 | 0xA00000000;
            v41 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            gnss::GnssAdaptDevice::Ga10_15AlterFTABasedOnGrouDelay(&v40, &v40 + 1, &v39, v23, *(v2 + 112));
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v24 = mach_continuous_time();
              v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IntPart,%u,fracPart,%u,wkNum,%u,pulseUnc,%u\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 73, "injectFTAssistance_block_invoke", v40, DWORD1(v40), v39, DWORD2(v40));
              LbsOsaTrace_WriteLog(0x18u, __str, v25, 4, 1);
            }

            GNS_FtaPulseInd(0, &v39);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v26 = mach_continuous_time();
              v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FtaPulseInd invoked\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 73, "injectFTAssistance_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, __str, v27, 4, 1);
            }

            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v44, a1 + 40);
            v6 = v44;
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v44, "injectFTAssistance_block_invoke");
            goto LABEL_8;
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v45, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v45, "injectFTAssistance_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v45);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v35 = mach_continuous_time();
            v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Frac CDMA Fine Time,%u\n", (*&g_MacClockTicksToMsRelation * v35), "ADP", 69, "injectFTAssistance_block_invoke", 772, *(a1 + 96));
            LbsOsaTrace_WriteLog(0x18u, __str, v36, 0, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v37 = mach_continuous_time();
            v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 68, "injectFTAssistance_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v38, 5, 1);
          }
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v47, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v47, "injectFTAssistance_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v47);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FineTime,%u\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "injectFTAssistance_block_invoke", 257, *(a1 + 72));
          LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v20 = mach_continuous_time();
          v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "injectFTAssistance_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v48, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v48, "injectFTAssistance_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v48);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "injectFTAssistance_block_invoke", 1302);
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "injectFTAssistance_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v50, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v50, "injectFTAssistance_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v50);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Fta Response ignored as there is no ongoing Session\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 73, "injectFTAssistance_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "injectFTAssistance_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  return result;
}

void gnss::GnssAdaptDevice::Ga10_15AlterFTABasedOnGrouDelay(gnss::GnssAdaptDevice *this, unsigned int *a2, unsigned int *a3, unsigned __int16 *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v8 = a5 * 1000000.0 / 1023.0;
  v9 = *a2 + 1000000000 * *this;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Total time NS,%llu,GroupDelay NS,%.7f\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 73, "Ga10_15AlterFTABasedOnGrouDelay", v9, v8);
    LbsOsaTrace_WriteLog(0x18u, __str, v11, 4, 1);
  }

  if (v8 >= 0.0)
  {
    v12 = v9 - v8;
    if (v9 < v8)
    {
      --*a3;
      v12 += 604800000000000;
    }
  }

  else
  {
    v12 = v9 + fabs(v8);
    if (v12 > 0x2260FF928FFFFLL)
    {
      ++*a3;
      v12 -= 604800000000000;
    }
  }

  *this = v12 / 0x3B9ACA00;
  *a2 = v12 % 0x3B9ACA00;
}

BOOL gnss::GnssAdaptDevice::Ga11_21FindSUPLSession(gnss::GnssAdaptDevice *this, int a2, unint64_t *a3)
{
  v3 = *(this + 16);
  v4 = *(this + 17) - v3;
  if (!v4)
  {
    return 0;
  }

  v5 = 0x7D6343EB1A1F58D1 * (v4 >> 2);
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (*(v3 + 56) == a2)
  {
    v7 = 0;
    result = 1;
LABEL_12:
    *a3 = v7;
  }

  else
  {
    v9 = (v3 + 252);
    v10 = 1;
    while (v6 != v10)
    {
      v11 = *v9;
      v9 += 49;
      ++v10;
      if (v11 == a2)
      {
        v7 = v10 - 1;
        result = v10 - 1 < v5;
        goto LABEL_12;
      }
    }

    return v10 < v5;
  }

  return result;
}

void sub_29969BA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char *a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  a35 = &a32;
  std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](&a35);
  if (v36)
  {
    MEMORY[0x29C29EB20](v36, v35);
  }

  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<gnss::TimeConversionInfo>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[4];
    v2[4] = 0;
    if (v3)
    {
      MEMORY[0x29C29EB20](v3, 0x1000C4095D96C66);
    }

    v4 = v2[3];
    v2[3] = 0;
    if (v4)
    {
      MEMORY[0x29C29EB20](v4, 0x1000C4095D96C66);
    }

    v5 = v2[2];
    v2[2] = 0;
    if (v5)
    {
      MEMORY[0x29C29EB20](v5, 0x1000C4095D96C66);
    }

    v6 = v2[1];
    v2[1] = 0;
    if (v6)
    {
      MEMORY[0x29C29EB20](v6, 0x1000C40D315E998);
    }

    v7 = *v2;
    *v2 = 0;
    if (v7)
    {
      MEMORY[0x29C29EB20](v7, 0x1000C4079AA8B5ELL);
    }

    MEMORY[0x29C29EB20](v2, 0x20C40769AC3DALL);
  }

  return a1;
}

uint64_t *std::unique_ptr<gnss::MeasurementReport>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4[0] = (v2 + 112);
    std::vector<gnss::Measurement>::__destroy_vector::operator()[abi:ne200100](v4);
    MEMORY[0x29C29EB20](v2, 0x1020C40B6788CC9);
  }

  return a1;
}

uint64_t __copy_helper_block_e8_40c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 40;
  v3 = a2 + 40;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_40c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1)
{
  v1 = a1 + 40;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v1);
}

uint64_t gnss::Emergency::Cplane::MeasurementReport::MeasurementReport(uint64_t this)
{
  v1 = 0;
  *this = 0;
  *(this + 4) = 0;
  *(this + 8) = -1;
  *(this + 16) = -1;
  *(this + 24) = -1;
  do
  {
    v2 = this + v1;
    *(v2 + 28) = 0x7FFF;
    *(v2 + 30) = -1;
    *(v2 + 33) = -1;
    *(v2 + 40) = 0xFFFFFFFF00000004;
    v1 += 24;
    *(v2 + 48) = -1;
  }

  while (v1 != 384);
  v3 = 0;
  *(this + 412) = 0;
  *(this + 416) = -1;
  *(this + 424) = 33619967;
  *(this + 428) = -1;
  *(this + 452) = -1;
  *(this + 464) = -1;
  *(this + 471) = -1;
  *(this + 480) = 4;
  *(this + 456) = -1;
  *(this + 432) = -1;
  *(this + 440) = -1;
  *(this + 448) = -1;
  *(this + 460) = -1;
  *(this + 484) = -1;
  *(this + 496) = 0;
  *(this + 524) = -1;
  *(this + 528) = -1;
  *(this + 520) = -1;
  *(this + 504) = -1;
  *(this + 512) = -1;
  *(this + 536) = -1;
  *(this + 548) = -1;
  *(this + 552) = -1;
  *(this + 538) = -1;
  *(this + 560) = -1;
  *(this + 564) = -1;
  *(this + 568) = -1;
  *(this + 592) = -1;
  *(this + 572) = -1;
  *(this + 580) = -1;
  *(this + 588) = -1;
  *(this + 596) = -129;
  *(this + 600) = -1;
  *(this + 608) = -1;
  *(this + 612) = 5;
  *(this + 616) = -1;
  *(this + 618) = -1;
  do
  {
    v4 = this + v3;
    *(v4 + 620) = -32769;
    *(v4 + 624) = -1;
    *(this + v3 + 628) = 0xFF00000004;
    *(v4 + 636) = -1;
    *(v4 + 640) = -1;
    v3 += 24;
  }

  while (v3 != 768);
  *(this + 1392) = -1;
  *(this + 1396) = 0;
  return this;
}

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

double *Inc_Glon_TOD(double a1, double *result, __int16 *a3, unsigned __int16 *a4)
{
  v4 = *result + a1;
  *result = v4;
  LOWORD(v5) = *a3;
  if (v4 >= 86400.0)
  {
    do
    {
      v4 = v4 + -86400.0;
      LOWORD(v5) = v5 + 1;
    }

    while (v4 >= 86400.0);
    *result = v4;
    *a3 = v5;
  }

  if (v4 < 0.0)
  {
    do
    {
      v4 = v4 + 86400.0;
      LOWORD(v5) = v5 - 1;
    }

    while (v4 < 0.0);
    *result = v4;
    *a3 = v5;
  }

  if (v5 >= 1462)
  {
    do
    {
      *a3 = v5 - 1461;
      ++*a4;
      v5 = *a3;
    }

    while (v5 > 1461);
  }

  if (v5 <= 0)
  {
    do
    {
      *a3 = v5 + 1461;
      v6 = *a4 - 1;
      *a4 = v6;
      v5 = *a3;
    }

    while (v5 < 1);
  }

  else
  {
    v6 = *a4;
  }

  if (v6 >= 0x10u)
  {
    *a4 = 0;
  }

  return result;
}

void MMSRelease(uint64_t a1)
{
  v1 = *(a1 + 720);
  if (v1)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
      do
      {
        v4 = v3;
        if (*v1)
        {
          free(*v1);
        }

        free(v1);
        v3 = *(v4 + 16);
        v1 = v4;
      }

      while (v3);
    }

    else
    {
      v4 = *(a1 + 720);
    }

    if (*v4)
    {
      free(*v4);
    }

    free(v4);
    *(a1 + 720) = 0;
  }
}

void *MMSAlloc(uint64_t a1, size_t a2)
{
  v4 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x18uLL);
  if (v4)
  {
    v5 = v4;
    v4[2] = *(a1 + 720);
    result = gnssOsa_Calloc("posp_alloc", 18, 1, a2);
    *v5 = result;
    v5[1] = a2;
    if (result)
    {
      *(a1 + 720) = v5;
      return result;
    }

    free(v5);
  }

  CUCFErrorHandler(a1, 1);
  return 0;
}

void MMSFree(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 720);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (*v4 == a2)
  {
    if (v4[1] != a3)
    {
      CUCFErrorHandler(a1, 15);
    }

    *(a1 + 720) = v4[2];
    if (a2)
    {
      free(a2);
    }

    v8 = v4;
    goto LABEL_21;
  }

  v6 = v4[2];
  if (!v6)
  {
LABEL_14:
    CUCFErrorHandler(a1, 15);
    return;
  }

  if (*v6 != a2)
  {
    while (1)
    {
      v7 = *(v6 + 2);
      if (!v7)
      {
        goto LABEL_14;
      }

      v4 = v6;
      v6 = *(v6 + 2);
      if (*v7 == a2)
      {
        goto LABEL_16;
      }
    }
  }

  v7 = v4[2];
LABEL_16:
  if (v7[1] != a3)
  {
    CUCFErrorHandler(a1, 15);
  }

  v4[2] = v7[2];
  if (a2)
  {
    free(a2);
  }

  v8 = v7;
LABEL_21:

  free(v8);
}

void GLON_RealAlm2ECEF(double *a1, double *a2, double *a3, uint64_t a4, int a5)
{
  v6 = a4;
  v29[1] = *MEMORY[0x29EDCA608];
  v28 = 0.0;
  v29[0] = 0.0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  memset(v21, 0, sizeof(v21));
  a1[1] = 0.0;
  a1[2] = 0.0;
  *a1 = 0.0;
  a2[1] = 0.0;
  a2[2] = 0.0;
  *a2 = 0.0;
  GLON_Alm_Calc_SemiMaj(a3);
  v11 = v10;
  GLON_Alm_Last_Asc_Pass(v29, &v28, a5, a3, v6, v10);
  v12 = a3[7];
  v13 = a3[8];
  v14 = tan(v13 * -0.5);
  v15 = atan(sqrt((1.0 - v12) / (v12 + 1.0)) * v14);
  v16 = v15 + v15 - v12 * sin(v15 + v15);
  GLON_Alm_Calc_Corrns(&v25, a3, v11, v13 + v16, 0.0);
  v17 = a3[8] + v16;
  v18 = v29[0];
  v19 = v6 - v29[0];
  v20 = v19 * 6.28318531 / (a3[5] + 43200.0) + v17;
  GLON_Alm_Calc_Corrns(&v22, a3, v11, v20, v19);
  v22 = vsubq_f64(v22, v25);
  v23 = vsubq_f64(v23, v26);
  v24 = vsubq_f64(v24, v27);
  GLON_Alm_Apply_Corrns(&v22, a3, v21, v11, v28 + (v18 + -10800.0) * 0.00007292115, v20);
  GLON_Alm_Calc_ECEF_PosVel(v21, a1, a2, v6);
}

uint64_t GncP09_21HandleSensDefnInd(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_SENS_DEFN_IND Id,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP09_21HandleSensDefnInd", *(a1 + 24));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    v4 = *(a1 + 24);
    v5 = *(a1 + 16);
    if (v5)
    {
      if (*v5 == 1)
      {
        v6 = __dst;
        memcpy_s("GncP09_08SetSensDefn", 168, __dst, 0x50u, v5 + 8, 0x50uLL);
      }

      else
      {
        v6 = 0;
      }

      if (v5[1] == 1)
      {
        v12 = v21;
        memcpy_s("GncP09_08SetSensDefn", 177, v21, 0x50u, v5 + 88, 0x50uLL);
      }

      else
      {
        v12 = 0;
      }

      if (v5[2] == 1)
      {
        v13 = v20;
        memcpy_s("GncP09_08SetSensDefn", 186, v20, 0x50u, v5 + 168, 0x50uLL);
      }

      else
      {
        v13 = 0;
      }

      if (GN_Sen_Set_Defin(v6, v12, v13))
      {
        v11 = 1;
      }

      else
      {
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
        v11 = 0;
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v15 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SensDefn\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 87, "GncP09_08SetSensDefn", 257);
          LbsOsaTrace_WriteLog(8u, __str, v16, 2, 1);
          v11 = 0;
        }
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SensDefn\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "GncP09_08SetSensDefn", 518);
        LbsOsaTrace_WriteLog(8u, __str, v10, 0, 1);
      }

      v11 = 2;
    }

    GncP09_01SendApiStatus(v4, 1, v11);
    v17 = *(a1 + 16);
    if (v17)
    {
      free(v17);
    }

    *(a1 + 16) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "GncP09_21HandleSensDefnInd", 517);
    LbsOsaTrace_WriteLog(8u, __str, v8, 0, 1);
  }

  return 0;
}

uint64_t GncP09_22HandleSensAcclInd(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_SENS_ACCL_IND Id,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP09_22HandleSensAcclInd", *(a1 + 24));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    v4 = *(a1 + 24);
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = gnssOsa_Calloc("GncP09_05SetAcclData", 58, *v5, 0x20uLL);
      if (v6)
      {
        v7 = v6;
        memcpy_s("GncP09_05SetAcclData", 67, v6, 32 * *v5, *(v5 + 1), 32 * *v5);
        if (GN_Sen_Set_Accl(*v5, v7))
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v8 = mach_continuous_time();
            v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Set NumSample,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "GncP09_05SetAcclData", *v5);
            v10 = 1;
            LbsOsaTrace_WriteLog(8u, __str, v9, 5, 1);
          }

          else
          {
            v10 = 1;
          }
        }

        else
        {
          v10 = 0;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v17 = mach_continuous_time();
            v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Accl\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 87, "GncP09_05SetAcclData", 257);
            LbsOsaTrace_WriteLog(8u, __str, v18, 2, 1);
            v10 = 0;
          }
        }

        GncP09_01SendApiStatus(v4, 2, v10);
        free(v7);
        goto LABEL_20;
      }

      v15 = v4;
      v16 = 6;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Accl\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 69, "GncP09_05SetAcclData", 518);
        LbsOsaTrace_WriteLog(8u, __str, v14, 0, 1);
      }

      v15 = v4;
      v16 = 2;
    }

    GncP09_01SendApiStatus(v15, 2, v16);
LABEL_20:
    v19 = *(a1 + 16);
    if (v19[1])
    {
      free(v19[1]);
      v19 = *(a1 + 16);
    }

    free(v19);
    *(a1 + 16) = 0;
    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 69, "GncP09_22HandleSensAcclInd", 517);
    LbsOsaTrace_WriteLog(8u, __str, v12, 0, 1);
  }

  return 0;
}

uint64_t GncP09_23HandleSensGyroInd(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_SENS_GYRO_IND Id,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP09_23HandleSensGyroInd", *(a1 + 24));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    v4 = *(a1 + 24);
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = gnssOsa_Calloc("GncP09_06SetGyroData", 91, *v5, 0x20uLL);
      if (v6)
      {
        v7 = v6;
        memcpy_s("GncP09_06SetGyroData", 100, v6, 32 * *v5, *(v5 + 1), 32 * *v5);
        if (GN_Sen_Set_Gyro(*v5, v7))
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v8 = mach_continuous_time();
            v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Set NumSample,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "GncP09_06SetGyroData", *v5);
            v10 = 1;
            LbsOsaTrace_WriteLog(8u, __str, v9, 5, 1);
          }

          else
          {
            v10 = 1;
          }
        }

        else
        {
          v10 = 0;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v17 = mach_continuous_time();
            v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Gyro\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 87, "GncP09_06SetGyroData", 257);
            LbsOsaTrace_WriteLog(8u, __str, v18, 2, 1);
            v10 = 0;
          }
        }

        GncP09_01SendApiStatus(v4, 3, v10);
        free(v7);
        goto LABEL_20;
      }

      v15 = v4;
      v16 = 6;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Gyro\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 69, "GncP09_06SetGyroData", 518);
        LbsOsaTrace_WriteLog(8u, __str, v14, 0, 1);
      }

      v15 = v4;
      v16 = 2;
    }

    GncP09_01SendApiStatus(v15, 3, v16);
LABEL_20:
    v19 = *(a1 + 16);
    if (v19[1])
    {
      free(v19[1]);
      v19 = *(a1 + 16);
    }

    free(v19);
    *(a1 + 16) = 0;
    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 69, "GncP09_23HandleSensGyroInd", 517);
    LbsOsaTrace_WriteLog(8u, __str, v12, 0, 1);
  }

  return 0;
}

uint64_t GncP09_24HandleSensBaroInd(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_SENS_BARO_IND Id,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP09_24HandleSensBaroInd", *(a1 + 24));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    v4 = *(a1 + 24);
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = gnssOsa_Calloc("GncP09_07SetBaroData", 125, *v5, 0x18uLL);
      if (v6)
      {
        v7 = v6;
        v8 = *v5;
        if (*v5)
        {
          v9 = (*(v5 + 1) + 8);
          v10 = v7 + 2;
          v11 = *v5;
          do
          {
            *(v10 - 1) = 0xC058F9999999999ALL;
            *(v10 - 2) = *(v9 - 1);
            v12 = *v9;
            v9 += 4;
            *v10 = v12;
            v10 += 6;
            --v11;
          }

          while (v11);
        }

        if (GN_Sen_Set_Baro(v8, v7))
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v13 = mach_continuous_time();
            v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Set NumSample,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 68, "GncP09_07SetBaroData", *v5);
            v15 = 1;
            LbsOsaTrace_WriteLog(8u, __str, v14, 5, 1);
          }

          else
          {
            v15 = 1;
          }
        }

        else
        {
          v15 = 0;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v22 = mach_continuous_time();
            v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Baro\n", (*&g_MacClockTicksToMsRelation * v22), "GNC", 87, "GncP09_07SetBaroData", 257);
            LbsOsaTrace_WriteLog(8u, __str, v23, 2, 1);
            v15 = 0;
          }
        }

        GncP09_01SendApiStatus(v4, 4, v15);
        free(v7);
        goto LABEL_23;
      }

      v20 = v4;
      v21 = 6;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Baro\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 69, "GncP09_07SetBaroData", 518);
        LbsOsaTrace_WriteLog(8u, __str, v19, 0, 1);
      }

      v20 = v4;
      v21 = 2;
    }

    GncP09_01SendApiStatus(v20, 4, v21);
LABEL_23:
    v24 = *(a1 + 16);
    if (v24[1])
    {
      free(v24[1]);
      v24 = *(a1 + 16);
    }

    free(v24);
    *(a1 + 16) = 0;
    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 69, "GncP09_24HandleSensBaroInd", 517);
    LbsOsaTrace_WriteLog(8u, __str, v17, 0, 1);
  }

  return 0;
}

void GncP09_01SendApiStatus(int a1, int a2, int a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v6 = gnssOsa_Calloc("GncP09_01SendApiStatus", 30, 1, 0x18uLL);
  if (v6)
  {
    v7 = v6;
    v6[3] = a2;
    v6[4] = a3;
    v6[5] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_SENSAPI_IND =>LSIM Type,%u,ID,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "GncP09_01SendApiStatus", a2, a1, a3);
      LbsOsaTrace_WriteLog(8u, __str, v9, 5, 1);
    }

    AgpsSendFsmMsg(134, 131, 8783363, v7);
  }
}

uint64_t FPE_InterfaceLogger(uint64_t result, unsigned __int8 *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v14 = result;
  if ((g_FPE_LogSeverity & 0x40) != 0)
  {
    LODWORD(v3) = __const__Z19FPE_InterfaceLogger13e_FpeMeasTypePv_measSizeTable[result];
    v13 = v3;
    v4 = g_p_CB_LCD_SA_Dbg;
    if (g_p_CB_LCD_SA_Dbg)
    {
      v5 = *g_p_CB_LCD_SA_Dbg;
      v6 = 36;
      v7 = 1u;
      do
      {
        *v4 = v5 + 1;
        *v5 = v6;
        v5 = *v4;
        if (*v4 >= v4[3])
        {
          v5 = v4[2];
          *v4 = v5;
        }

        v6 = str_84[v7++];
      }

      while (v7 != 11);
      LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
      v4 = g_p_CB_LCD_SA_Dbg;
      v8 = g_p_CB_LCD_SA_Dbg;
    }

    else
    {
      v8 = 0;
    }

    for (i = 0; i != 4; ++i)
    {
      if (v8)
      {
        sprintf_02x(v8, *(&v13 + i));
        LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
        v4 = g_p_CB_LCD_SA_Dbg;
        v8 = g_p_CB_LCD_SA_Dbg;
      }
    }

    v10 = 0;
    v11 = v4;
    do
    {
      if (v11)
      {
        sprintf_02x(v11, *(&v14 + v10));
        LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
        v4 = g_p_CB_LCD_SA_Dbg;
        v11 = g_p_CB_LCD_SA_Dbg;
      }

      ++v10;
    }

    while (v10 != 4);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v3;
    }

    result = v4;
    do
    {
      if (result)
      {
        sprintf_02x(result, *a2);
        LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
        v4 = g_p_CB_LCD_SA_Dbg;
        result = g_p_CB_LCD_SA_Dbg;
      }

      ++a2;
      --v3;
    }

    while (v3);
    if (v4)
    {
      v12 = (*v4)++;
      *v12 = 10;
      if (*v4 >= v4[3])
      {
        *v4 = v4[2];
      }
    }
  }

  return result;
}

uint64_t NK_Validate_Fix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2 + 24576;
  *(a2 + 24584) = 0;
  result = API_Qual_Pos("default", 1, 0, 0, 0);
  if (result)
  {
    *(v6 + 8) = 257;
LABEL_4:
    v8 = 1;
    goto LABEL_5;
  }

  if (*(v6 + 9))
  {
    goto LABEL_4;
  }

  if (*(a2 + 968) != 1)
  {
    goto LABEL_14;
  }

  result = API_Qual_Pos("default", 0, 0, 0, 0);
  if (result)
  {
    v8 = 1;
    *(v6 + 9) = 1;
  }

  else
  {
    v8 = *(v6 + 9);
  }

LABEL_5:
  if (*(v6 + 8) != 1)
  {
    if (v8)
    {
      v9 = 1;
      if (*(v6 + 12) > 3)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_14:
    v9 = 0;
LABEL_15:
    ++*(a1 + 11044);
    *(a1 + 11040) = 0;
    goto LABEL_16;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_14;
  }

  ++*(a1 + 11040);
  *(a1 + 11044) = 0;
  v9 = 1;
LABEL_16:
  if (v9 && !*(a2 + 968) && *(a1 + 11040) >= 0x1Eu && *(a2 + 964) >= 3 && *(v6 + 16) >= 4 && (*(a1 + 233) & 1) == 0 && *(a2 + 12) >= 8 && *(a2 + 24752) <= *(a3 + 968) && *(a2 + 24680) <= *(a3 + 984))
  {
    result = API_Get_Fix_Reliability();
    if ((result - 2) <= 2)
    {
      *a3 = 1;
    }
  }

  return result;
}

void NK_Dopp_Outlier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81[96] = *MEMORY[0x29EDCA608];
  v5 = a2 + 0x2000;
  memset_pattern16(__b, &unk_299761150, 0x180uLL);
  memset_pattern16(v81, &unk_29975C400, 0x180uLL);
  if (*(v5 + 2970) != 1)
  {
    return;
  }

  v6 = *a3 - *(a2 + 11248);
  v7 = v6 / 1000;
  if (*(a2 + 11152) <= 17.0)
  {
    v8 = 3;
  }

  else
  {
    v8 = 5;
  }

  if (*(v5 + 2896) == 1)
  {
    v9 = *(a2 + 11256);
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = 0x7D0u / v9 + v8;
    if (v10 >= 0x96)
    {
      v10 = 150;
    }

    if (v7 > v10)
    {
      return;
    }

    v74 = 1;
    v75 = *a3;
    v73 = *(a2 + 11096);
    v11 = (a2 + 11104);
  }

  else
  {
    if (v7 > v8)
    {
      return;
    }

    v74 = *(v5 + 2896);
    v75 = *a3;
    v73 = *(a3 + 760) * 299792458.0;
    v11 = (a3 + 944);
  }

  v12 = 0;
  v13 = v6 / -2000 + 85;
  v72 = *v11;
  v14 = a3 + 8536;
  v15 = a3 + 14112;
  v16 = (a2 + 2088);
  v17 = a2 + 2112;
  v77 = 0.0;
  v18 = 76;
  v19 = -0.5;
  v20 = 0.5;
  v76 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  do
  {
    v81[v12 + 48] = 0;
    v24 = *(v14 + v12);
    if ((v24 & 1) != 0 || *(v15 + v12) == 1)
    {
      v25 = *(a2 + 11240);
      v26 = *(v17 + 1928) - v25;
      if (v26 <= 0.0)
      {
        v27 = v19;
      }

      else
      {
        v27 = v20;
      }

      v28 = v26 + v27;
      if (v28 <= 2147483650.0)
      {
        if (v28 >= -2147483650.0)
        {
          v29 = v28;
        }

        else
        {
          v29 = 0x80000000;
        }
      }

      else
      {
        v29 = 0x7FFFFFFF;
      }

      if (v29 < 0)
      {
        v29 = -v29;
      }

      if (v29 > 0x168)
      {
        v29 -= 360;
      }

      if (v29 > 180)
      {
        v29 -= 180;
      }

      if (v29 > 90)
      {
        v29 = 180 - v29;
      }

      if (v29 <= v13)
      {
        v30 = *(v17 + 1920) + v25 * -0.0174532925;
        v31 = -6.28318531;
        if (v30 >= 3.14159265 || (v31 = 6.28318531, v30 < -3.14159265))
        {
          v30 = v30 + v31;
        }

        v32 = *v17;
        v33 = cos(v30);
        v34 = cos(v32);
        v35 = *(a3 + 26304 + 8 * v12);
        v36 = -(v35 - *(a1 + 8 * v12 + 1616) * -0.190293673);
        *&v81[v12] = v36;
        if (v24)
        {
          v37 = *(v15 + 8 * v12 - 1688);
          v20 = 0.5;
        }

        else
        {
          v20 = 0.5;
          if (*(v15 + v12) != 1)
          {
LABEL_42:
            v38 = -(v33 * v34);
            *&v81[v12 + 48] = v38;
            if (*(a1 + v18) != 6)
            {
              v39 = 1.0 / __b[v12];
              v23 = v23 + v39;
              v21 = v21 + v38 * v39;
              v22 = v22 + v38 * v39 * v38;
              v40 = v36 * v39;
              v76 = v76 + v40;
              v77 = v77 + v38 * v40;
            }

            v19 = -0.5;
            goto LABEL_45;
          }

          v36 = *(a3 + 8 * v12 + 120) / *(a3 + 656) - v35;
          *&v81[v12] = v36;
          v37 = 0.04;
        }

        __b[v12] = v37;
        goto LABEL_42;
      }
    }

LABEL_45:
    ++v12;
    v18 += 4;
    v17 += 40;
  }

  while (v12 != 48);
  if (*(a2 + 11116) == 3)
  {
    v41 = v23 * (v22 + 10000.0) - v21 * v21;
    if (v41 > 0.0001)
    {
      *&qword_2A1972018 = (v77 + 0.0) * (1.0 / v41 * -v21) + (v22 + 10000.0) * (1.0 / v41) * v76;
      _MergedGlobals_7 = v75;
    }

    return;
  }

  v42 = -v21;
  v43 = v23 * v22 - v21 * v21;
  v45 = v72;
  v44 = v73;
  if (v43 > 0.0001)
  {
    v46 = 1.0 / v43;
    v47 = v22 * v46;
    v48 = v23 * v46;
    v49 = v46 * v42;
    v44 = v77 * v49 + v47 * v76;
    v45 = v77 * v48 + v49 * v76;
  }

  if (v74)
  {
    v50 = v75 - *(a2 + 11092);
    if (v50 <= 90999)
    {
      v51 = (a2 + 11096);
LABEL_55:
      v52 = 1.0 / ((v50 / 1000 * (v50 / 1000)) * 0.0000308641975 + 0.0001);
      v53 = (v23 + v52) * v22 - v21 * v21;
      if (v53 > 0.0001)
      {
        v54 = v76 + v52 * *v51;
        v55 = 1.0 / v53;
        v56 = v55 * v42;
        v44 = v77 * v56 + v22 * v55 * v54;
        v45 = v77 * ((v23 + v52) * v55) + v56 * v54;
      }
    }
  }

  else
  {
    v51 = &qword_2A1972018;
    v50 = v75 - _MergedGlobals_7;
    if (v75 - _MergedGlobals_7 <= 179999)
    {
      goto LABEL_55;
    }
  }

  v57 = 0;
  v58 = 0;
  v59 = 0;
  memset(v79, 0, sizeof(v79));
  v60 = fmax(fabs(v45) * 0.25, 2.5);
  do
  {
    if ((*(v14 + v57) & 1) != 0 || *(v15 + v57) == 1)
    {
      v61 = *&v81[v57 + 48];
      if (fabs(v61) > 0.05)
      {
        v62 = (*&v81[v57] - v44) / v61;
        v63 = v62 < 0.0;
        if (v45 <= v60)
        {
          v63 = 0;
        }

        if (v62 >= -v60 && !v63)
        {
          if (v62 > 0.0)
          {
            ++v58;
          }
        }

        else
        {
          ++v59;
          *(v79 + v57) = 1;
        }
      }
    }

    ++v57;
  }

  while (v57 != 48);
  if (v74)
  {
    v65 = 70;
  }

  else
  {
    v65 = 50;
  }

  if (v74)
  {
    v66 = 40;
  }

  else
  {
    v66 = 36;
  }

  if (v59)
  {
    v67 = v59 < 4 ? v74 : 0;
    if (v58 >= v59 || v67)
    {
      v68 = 0;
      while (*(v79 + v68) != 1 || *v16 >= v65 || v66 <= *(a1 + 604 + v68) || *(v14 + 8 * v68 - 3704) >= 50.0)
      {
LABEL_95:
        ++v68;
        v16 += 10;
        if (v68 == 48)
        {
          return;
        }
      }

      v69 = (v14 + v68);
      if (*(v14 + v68))
      {
        v70 = 8632;
        v71 = (a3 + 8387);
        goto LABEL_92;
      }

      v69 = (v15 + v68);
      if (*(v15 + v68) == 1)
      {
        v70 = 14208;
        v71 = (a3 + 13963);
LABEL_92:
        *v69 = 0;
        *(a3 + v70 + 4 * v68) = 10;
        ++v71[1];
        --*v71;
      }

      if (*(a3 + v68 + 2960) == 1)
      {
        *(a3 + v68 + 2960) = 0;
        *(a3 + 4 * v68 + 3056) = 10;
        ++*(a3 + 2812);
        --*(a3 + 2811);
      }

      goto LABEL_95;
    }
  }
}

uint64_t Decode_GPS_Health_Subframe(uint64_t result, BOOL *a2)
{
  v2 = 0;
  v7 = *MEMORY[0x29EDCA608];
  do
  {
    v3 = *(result + 12 + v2);
    v4 = &v6[v2];
    *v4 = (v3 >> 18) & 0x1F;
    v4[1] = (v3 >> 12) & 0x1F;
    v4[2] = (v3 >> 6) & 0x1F;
    v2 += 4;
    v4[3] = v3 & 0x1F;
  }

  while (v2 != 24);
  for (i = 0; i != 24; ++i)
  {
    a2[i] = (0xE4FE7F3uLL >> v6[i]) & 1;
  }

  return result;
}

_DWORD *Decode_QZSS_Health_Subframe(_DWORD *result, BOOL *a2)
{
  v2 = 0;
  v7 = *MEMORY[0x29EDCA608];
  v3 = result[3];
  v4 = result[4];
  v6[0] = (v3 >> 18) & 0x1F;
  v6[1] = (v3 >> 12) & 0x1F;
  v6[2] = (v3 >> 6) & 0x1F;
  v6[3] = v3 & 0x1F;
  v6[4] = (v4 >> 18) & 0x1F;
  v6[5] = (v4 >> 12) & 0x1F;
  v6[6] = (v4 >> 6) & 0x1F;
  v6[7] = v4 & 0x1F;
  v5 = result[5];
  v6[8] = (v5 >> 18) & 0x1F;
  v6[9] = (v5 >> 12) & 0x1F;
  do
  {
    a2[v2] = (0xE4FE7F3uLL >> v6[v2]) & 1;
    ++v2;
  }

  while (v2 != 10);
  return result;
}

const char *Hal14_GetGnssHwStr(unsigned int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1 < 5)
  {
    return off_29EF6B3A0[a1];
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ProdType,%u\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 87, "Hal14_GetGnssHwStr", 770, a1);
    LbsOsaTrace_WriteLog(0xDu, __str, v4, 2, 1);
  }

  return "Unknown";
}

double Get_GPS_Kep_Ephemeris(int a1, char a2, uint64_t a3, uint64_t a4)
{
  *a4 = *a3;
  *(a4 + 8) = a1;
  *(a4 + 12) = a2;
  v4 = *(a3 + 8);
  *(a4 + 18) = (v4 >> 14) & 0x3FF;
  *(a4 + 15) = BYTE1(v4) & 0xF;
  *(a4 + 13) = (v4 >> 2) & 0x1F;
  *(a4 + 56) = vcvtd_n_f64_s32(*(a3 + 24), 0x1FuLL);
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  v5 = *(a3 + 28);
  *(a4 + 16) = BYTE2(v5);
  *(a4 + 20) = 16 * v5;
  v6 = (a3 + 32);
  v7 = vld1_dup_f32(v6);
  v8 = vshl_s32(vshl_u32(v7, 0x800000010), 0xFFFFFFE8FFFFFFF0);
  v9.i64[0] = v8.i32[0];
  v9.i64[1] = v8.i32[1];
  *(a4 + 40) = vmulq_f64(vcvtq_f64_s64(v9), xmmword_299761180);
  LODWORD(v6) = *(a3 + 44);
  *&v10 = (*(a3 + 48) & 0xFFFFFF | (v6 << 24));
  *(a4 + 32) = (((*(a3 + 36) << 8) >> 8) & 0xFFFFFFFC) * 1.16415322e-10;
  v11.i32[0] = *(a3 + 40);
  v11.i32[1] = *(a3 + 52);
  v12 = vshr_n_s32(vshl_u32(v11, 0x800000010), 0x10uLL);
  v9.i64[0] = v12.i32[0];
  v9.i64[1] = v12.i32[1];
  v13 = vmulq_f64(vcvtq_f64_s64(v9), xmmword_299761190);
  v14 = *(a3 + 60);
  v15 = vcvtd_n_f64_u32(*(a3 + 64) & 0xFFFFFF | (v14 << 24), 0x13uLL);
  v16 = (*(a3 + 56) & 0xFFFFFF | (*(a3 + 52) << 24)) * 1.16415322e-10;
  *(a4 + 160) = *&v10 * 0.00000000146291808;
  *(a4 + 168) = v15;
  *(a4 + 24) = 16 * *(a3 + 69);
  v10.i32[0] = v14;
  v10.i32[1] = *(a3 + 72);
  *&v17 = (*(a3 + 76) & 0xFFFFFF | (v10.u8[4] << 24));
  v18 = *(a3 + 80);
  v19 = *(a3 + 84);
  v20 = vcvtd_n_f64_s32((v18 >> 8), 0x1DuLL);
  *(a4 + 14) = *(a3 + 68) >> 7;
  v21 = vshr_n_s32(vshl_n_s32(v10, 8uLL), 0x10uLL);
  v9.i64[0] = v21.i32[0];
  v9.i64[1] = v21.i32[1];
  *(a4 + 128) = vmulq_f64(vcvtq_f64_s64(v9), vdupq_n_s64(0x3E20000000000000uLL));
  v22 = *&v17 * 0.00000000146291808;
  v23 = (v19 & 0xFFFFFF | (v18 << 24)) * 0.00000000146291808;
  v17.i32[0] = v6;
  v24 = *(a3 + 92);
  v17.i32[1] = *(a3 + 88);
  *(a4 + 176) = v22;
  *(a4 + 184) = v23;
  v25 = vshr_n_s32(vshl_n_s32(v17, 8uLL), 0x10uLL);
  v9.i64[0] = v25.i32[0];
  v9.i64[1] = v25.i32[1];
  *(a4 + 96) = vmulq_f64(vcvtq_f64_s64(v9), xmmword_2997611A0);
  *(a4 + 112) = v13;
  *(a4 + 192) = (v24 & 0xFFFFFF | (v17.u8[4] << 24)) * 0.00000000146291808;
  *(a4 + 200) = v16;
  *(a4 + 208) = (*(a3 + 96) << 8) * 1.3951474e-15;
  result = (*(a3 + 100) & 0xFFFFFFFC) * 8.92894335e-14;
  *(a4 + 144) = v20;
  *(a4 + 152) = result;
  return result;
}

uint64_t lsim05_21HandleAidStatusCnf(uint64_t a1)
{
  v43 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim05_21HandleAidStatusCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_AID_STATUS_CNF,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_21HandleAidStatusCnf", *(a1 + 76));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    v9 = &g_SuplInstance + 296 * v6;
    if (*(v9 + 1) == *(a1 + 76) && (v9[281] & 1) != 0)
    {
      break;
    }

    v7 = 0;
    v6 = 1;
    if ((v8 & 1) == 0)
    {
      v10 = *(a1 + 24);
      if (v10)
      {
        free(v10);
      }

      *(a1 + 24) = 0;
      v11 = *(a1 + 32);
      if (v11)
      {
        free(v11);
      }

      *(a1 + 32) = 0;
      v12 = *(a1 + 40);
      if (v12)
      {
        free(v12);
      }

      *(a1 + 40) = 0;
      v13 = *(a1 + 48);
      if (v13)
      {
        free(v13);
      }

      *(a1 + 48) = 0;
      v14 = *(a1 + 56);
      if (v14)
      {
        free(v14);
      }

      *(a1 + 56) = 0;
      v15 = *(a1 + 64);
      if (v15)
      {
        free(v15);
      }

      *(a1 + 64) = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 87, "lsim05_21HandleAidStatusCnf", 2052, *(a1 + 76));
        LbsOsaTrace_WriteLog(0xCu, __str, v17, 2, 1);
      }

      goto LABEL_59;
    }
  }

  if (v9[282] == 1)
  {
    v37 = 0x700000000uLL;
    *&v38 = 0;
    *(&v38 + 6) = 0;
    HIWORD(v38) = -1;
    LOBYTE(v39) = 0;
    DWORD1(v39) = 0;
    v41 = 0;
    memset(v40, 0, 18);
    *(&v39 + 1) = -1;
    v9[282] = 0;
    if ((lsim12_02StopTimer(v6, 5) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 87, "lsim05_21HandleAidStatusCnf", 1545, *(a1 + 76));
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 2, 1);
    }

    if (*(a1 + 72) != 1)
    {
      goto LABEL_35;
    }

    *&__str[12] = 0;
    lsim03_11PrintAidRequestParams((a1 + 16), "AID STATUS");
    v20 = *(v9 + 72);
    if (v20 == 2)
    {
      v21 = &g_LsimPltConfig;
    }

    else
    {
      if (v20 != 1)
      {
        __str[0] = qword_2A19267F6 | g_LsimPltConfig;
        *&__str[10] = word_2A1926800 | word_2A19267F2;
        *&__str[2] = vorr_s8(*(&qword_2A19267F6 + 2), *(&g_LsimPltConfig + 2));
        goto LABEL_34;
      }

      v21 = &qword_2A19267F6;
    }

    *__str = *v21;
    *&__str[6] = *(v21 + 6);
LABEL_34:
    lsim03_12UpdateAidReqParams(__str, (a1 + 16), v9[292], 0);
LABEL_35:
    if (*(a1 + 152) == 1)
    {
      v22 = *(a1 + 96);
      v37 = *(a1 + 80);
      v38 = v22;
      v39 = *(a1 + 112);
      *v40 = *(a1 + 128);
      *&v40[4] = *(a1 + 132);
      v41 = *(a1 + 148);
      if (DWORD1(v37) == 1)
      {
        v23 = 0;
      }

      else
      {
        v23 = &v37;
      }
    }

    else
    {
      v23 = 0;
    }

    if (GN_SUPL_AidRequest_In(*(a1 + 76), a1 + 16, v23))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_AidRequest_In call successful,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 68, "lsim05_21HandleAidStatusCnf", *(a1 + 76));
        LbsOsaTrace_WriteLog(0xCu, __str, v25, 5, 1);
      }

      GN_SUPL_Handler();
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v26 = mach_continuous_time();
      v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_AidRequest_In call failed,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v26), "LSM", 87, "lsim05_21HandleAidStatusCnf", *(a1 + 76));
      LbsOsaTrace_WriteLog(0xCu, __str, v27, 2, 1);
    }
  }

  v28 = *(a1 + 24);
  if (v28)
  {
    free(v28);
  }

  *(a1 + 24) = 0;
  v29 = *(a1 + 32);
  if (v29)
  {
    free(v29);
  }

  *(a1 + 32) = 0;
  v30 = *(a1 + 40);
  if (v30)
  {
    free(v30);
  }

  *(a1 + 40) = 0;
  v31 = *(a1 + 48);
  if (v31)
  {
    free(v31);
  }

  *(a1 + 48) = 0;
  v32 = *(a1 + 56);
  if (v32)
  {
    free(v32);
  }

  *(a1 + 56) = 0;
  v33 = *(a1 + 64);
  if (v33)
  {
    free(v33);
  }

  *(a1 + 64) = 0;
LABEL_59:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v34 = mach_continuous_time();
    v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v34), "LSM", 73, "lsim05_21HandleAidStatusCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v35, 4, 1);
  }

  return 0;
}

uint64_t lsim05_22HandleSuplInit(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim05_22HandleSuplInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_SUPL_INIT_IND\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_22HandleSuplInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Length,%u,pointer,%p\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim05_22HandleSuplInit", *(a1 + 12), *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (g_GnsDcCallback)
  {
    if ((byte_2A1920A81 & 1) == 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SimsInfo\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 87, "lsim05_22HandleSuplInit", 769);
        LbsOsaTrace_WriteLog(0xCu, __str, v17, 2, 1);
      }

      lsim09_04SendConnApiStatus(-1, 0, 0);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        goto LABEL_48;
      }

      return 0;
    }

    v8 = *(a1 + 12);
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "lsim05_09SuplInitReq");
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
    }

    if (byte_2A18CCB41)
    {
      if (byte_2A18CCC69 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_35:
          LbsOsaTrace_WriteLog(0xCu, __str, v13, 2, 1);
          goto LABEL_39;
        }

        goto LABEL_39;
      }

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplInstanceIndex,%u\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 68, "lsim05_09SuplInitReq", v18);
      LbsOsaTrace_WriteLog(0xCu, __str, v20, 5, 1);
    }

    if ((~dword_2A18CCEB4 & 0x88) != 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL or SUPLNI\n");
        goto LABEL_35;
      }
    }

    else
    {
      v21 = &g_SuplInstance + 296 * v18;
      *(v21 + 281) = 1;
      *(v21 + 71) = 2;
      ++g_SuplInstanceCount;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplInstanceCount,%u\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 68, "lsim05_09SuplInitReq", g_SuplInstanceCount);
        LbsOsaTrace_WriteLog(0xCu, __str, v23, 5, 1);
      }

      if (GN_SUPL_Push_Delivery_In(&g_SuplInstance + 74 * v18, v8, v9, v10))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v24 = mach_continuous_time();
          v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Push_Delivery_In successful\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 68, "lsim05_09SuplInitReq");
          LbsOsaTrace_WriteLog(0xCu, __str, v25, 5, 1);
        }

        GN_SUPL_Handler();
        v26 = *v21;
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v27 = mach_continuous_time();
          v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v27), "LSM", 73, "lsim05_09SuplInitReq");
          v29 = 1;
          LbsOsaTrace_WriteLog(0xCu, __str, v28, 4, 1);
        }

        else
        {
          v29 = 1;
        }

        goto LABEL_44;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v30 = mach_continuous_time();
        v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Push_Delivery_In Failed\n", (*&g_MacClockTicksToMsRelation * v30), "LSM", 87, "lsim05_09SuplInitReq");
        LbsOsaTrace_WriteLog(0xCu, __str, v31, 2, 1);
      }

      lsim05_34DeleteSuplContext(v18);
    }

LABEL_39:
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v32 = mach_continuous_time();
      v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v32), "LSM", 73, "lsim05_09SuplInitReq");
      LbsOsaTrace_WriteLog(0xCu, __str, v33, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v34 = mach_continuous_time();
      v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SUPLINIT Rejected\n", (*&g_MacClockTicksToMsRelation * v34), "LSM", 87, "lsim05_22HandleSuplInit");
      LbsOsaTrace_WriteLog(0xCu, __str, v35, 2, 1);
    }

    v29 = 0;
    v26 = -1;
LABEL_44:
    lsim09_04SendConnApiStatus(v26, v29, 0);
    v36 = *(a1 + 16);
    if (v36)
    {
      free(v36);
    }

    *(a1 + 16) = 0;
    goto LABEL_47;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataConn\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "lsim05_22HandleSuplInit", 258);
    LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
  }

LABEL_47:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
LABEL_48:
    bzero(__str, 0x410uLL);
    v37 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v37, "LSM", 73, "lsim05_22HandleSuplInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v38, 4, 1);
  }

  return 0;
}

uint64_t lsim05_23ReceiveDataInd(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim05_23ReceiveDataInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_RECEIVE_DATA_IND,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_23ReceiveDataInd", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (g_GnsDcCallback)
  {
    v6 = 0;
    v7 = *(a1 + 12);
    v8 = 1;
    while (1)
    {
      v9 = v8;
      v10 = (&g_SuplInstance + 296 * v6);
      if (*v10 == v7 && v10[2] == 3 && (*(v10 + 281) & 1) != 0)
      {
        break;
      }

      v8 = 0;
      v6 = 1;
      if ((v9 & 1) == 0)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 87, "lsim05_23ReceiveDataInd", 2052, *(a1 + 12));
          LbsOsaTrace_WriteLog(0xCu, __str, v12, 2, 1);
        }

        v13 = 4;
        goto LABEL_14;
      }
    }

    if (GN_SUPL_PDU_Delivery_In(v7, *(a1 + 16), *(a1 + 24)))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_PDU_Delivery_In Successful,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 68, "lsim05_23ReceiveDataInd", *v10);
        LbsOsaTrace_WriteLog(0xCu, __str, v21, 5, 1);
      }

      GN_SUPL_Handler();
      v13 = 1;
    }

    else
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0);
      v13 = 0;
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_PDU_Delivery_In Failed,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 87, "lsim05_23ReceiveDataInd", *v10);
        LbsOsaTrace_WriteLog(0xCu, __str, v24, 2, 1);
        v13 = 0;
      }
    }

LABEL_14:
    lsim09_04SendConnApiStatus(*(a1 + 12), v13, 1);
    v14 = *(a1 + 24);
    if (v14)
    {
      free(v14);
    }

    *(a1 + 24) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataConn,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 87, "lsim05_23ReceiveDataInd", 258, *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v16, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "lsim05_23ReceiveDataInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
  }

  return 0;
}

uint64_t lsim05_24HandleSuplAbort(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim05_24HandleSuplAbort");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_SUPL_ABORT_REQ,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_24HandleSuplAbort", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!g_GnsSuplCallback)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_24;
    }

    bzero(__str, 0x410uLL);
    v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Supl,SuplHandle,%u\n", v24);
LABEL_23:
    LbsOsaTrace_WriteLog(0xCu, __str, v14, 2, 1);
    goto LABEL_24;
  }

  v6 = 0;
  v7 = *(a1 + 12);
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = &g_SuplInstance + 296 * v6;
    if (*v10 == v7 && (v10[281] & 1) != 0)
    {
      GN_SUPL_Abort(v7, 255);
      GN_SUPL_Handler();
      v13 = 1;
      goto LABEL_16;
    }

    v8 = 0;
    v6 = 1;
  }

  while ((v9 & 1) != 0);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 87, "lsim05_24HandleSuplAbort", 2052, *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v12, 2, 1);
  }

  v13 = 4;
LABEL_16:
  if (!g_GnsSuplCallback)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_24;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL\n");
    goto LABEL_23;
  }

  v15 = *(a1 + 12);
  v16 = gnssOsa_Calloc("lsim05_12SendSuplApiStatus", 397, 1, 0x348uLL);
  if (v16)
  {
    v17 = v16;
    v16[1] = 1;
    v16[2] = v13;
    *v16 = v15;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:API_STATUS =>SuplCB,Api,%u,Status,%u,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "lsim05_12SendSuplApiStatus", 1, v13, v15);
      LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
    }

    g_GnsSuplCallback(3, 840, v17, v18);
    free(v17);
  }

LABEL_24:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v21 = mach_continuous_time();
    v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 73, "lsim05_24HandleSuplAbort");
    LbsOsaTrace_WriteLog(0xCu, __str, v22, 4, 1);
  }

  return 0;
}

uint64_t lsim05_25HandleSuplSumRep(void *a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim05_25HandleSuplSumRep");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_SUPL_SUMM_REP,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_25HandleSuplSumRep", *(a1 + 4));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!g_GnsSuplCallback)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 87, "lsim05_25HandleSuplSumRep", 258);
      LbsOsaTrace_WriteLog(0xCu, __str, v14, 2, 1);
    }

LABEL_17:
    v15 = a1[3];
    if (v15)
    {
      free(v15);
    }

    a1[3] = 0;
    v16 = a1[4];
    if (v16)
    {
      free(v16);
    }

    a1[4] = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      goto LABEL_22;
    }

    return 0;
  }

  v6 = gnssOsa_Calloc("lsim05_25HandleSuplSumRep", 766, 1, 0x348uLL);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = v6;
  memcpy_s("lsim05_25HandleSuplSumRep", 777, v6, 0x28u, a1 + 2, 0x28uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:SUMM_REP =>SuplCB,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim05_25HandleSuplSumRep", *v7);
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
  }

  g_GnsSuplCallback(4, 840, v7, v8);
  v11 = a1[3];
  if (v11)
  {
    free(v11);
  }

  a1[3] = 0;
  v12 = a1[4];
  if (v12)
  {
    free(v12);
  }

  a1[4] = 0;
  free(v7);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
LABEL_22:
    bzero(__str, 0x410uLL);
    v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v17, "LSM", 73, "lsim05_25HandleSuplSumRep");
    LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
  }

  return 0;
}

uint64_t lsim05_26HandleSuplStatRep(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim05_26HandleSuplStatRep");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_SUPL_STAT_REP,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_26HandleSuplStatRep", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!g_GnsSuplCallback)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 87, "lsim05_26HandleSuplStatRep", 258);
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 2, 1);
    }

LABEL_15:
    v14 = *(a1 + 24);
    if (v14)
    {
      free(v14);
    }

    *(a1 + 24) = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      goto LABEL_18;
    }

    return 0;
  }

  v6 = gnssOsa_Calloc("lsim05_26HandleSuplStatRep", 812, 1, 0x348uLL);
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  memcpy_s("lsim05_26HandleSuplStatRep", 822, v6, 0x38u, (a1 + 16), 0x38uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:EVNT_INF =>SuplCB,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim05_26HandleSuplStatRep", *v7);
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
  }

  g_GnsSuplCallback(1, 840, v7, v8);
  v11 = *(a1 + 24);
  if (v11)
  {
    free(v11);
  }

  *(a1 + 24) = 0;
  free(v7);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
LABEL_18:
    bzero(__str, 0x410uLL);
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v15, "LSM", 73, "lsim05_26HandleSuplStatRep");
    LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
  }

  return 0;
}

double lsim05_31InitSupl(void)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim05_31InitSupl");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  GN_SUPL_Handler_Init();
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim05_01InitSuplConfig");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = 0;
  v5 = 1;
  do
  {
    v6 = &g_SuplInstance + 296 * v4;
    *(v6 + 281) = 0;
    *v6 = -1;
    v7 = v5;
    *(v6 + 2) = 0;
    *(v6 + 139) = 0;
    *(v6 + 68) = 0;
    memset_s(v6 + 13, 0x100uLL, 0, 0x100uLL);
    v5 = 0;
    v6[280] = 0;
    *(v6 + 284) = 0;
    v6[292] = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  g_SuplInstanceCount = 0;
  memset_s(&g_LsimUserConfig, 0x244uLL, 0, 0x244uLL);
  dword_2A18CCEAC = 2;
  lsim13_02SuplConfig();
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim05_01InitSuplConfig");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "lsim05_31InitSupl");
    LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
  }

  return result;
}

double lsim05_32DeInitSupl(void)
{
  v7 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim05_32DeInitSupl");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  lsim05_43CloseOtherPospSessions(255, 0);
  v2.n128_f64[0] = lsim05_42CloseSuplSessions(255, 1);
  lsim09_50ConnMgmtDeInit(v2);
  g_GnsPospCallback = 0;
  g_GnsPpduCallback = 0;
  g_GnsSuplCallback = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_32DeInitSupl");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  return result;
}

double lsim05_43CloseOtherPospSessions(int a1, _DWORD *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_43CloseOtherPospSessions");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (a1 == 4 || a1 == 255)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = v7;
      if (!a2 || *a2 != v6)
      {
        v16 = 0;
        *__str = -1;
        v15 = 0;
        if (lsim11_05GnmGetSessionInfo(v6, __str, &v15, &v16 + 1, 0, &v16))
        {
          if ((v16 & 1) == 0 && ((a1 != 255) & HIBYTE(v16)) == 0)
          {
            if ((v15 & 0xFFFFFFFE) == 2)
            {
              lsim03_18GnssPosnResultInd(*__str, 0, 3);
            }

            else if (v15 == 1)
            {
              lsim03_17GnssMeasResultInd(*__str, 0, 3);
            }

            lsim03_16AbortInd(*__str, 3, 0);
            lsim11_04GnmResetSession(v6);
          }
        }
      }

      v7 = 0;
      v6 = 1;
    }

    while ((v8 & 1) != 0);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v10, "LSM", 73, "lsim05_43CloseOtherPospSessions");
LABEL_23:
      LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Category,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim05_43CloseOtherPospSessions", 515, a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v14, "LSM", 73, "lsim05_43CloseOtherPospSessions");
      goto LABEL_23;
    }
  }

  return result;
}

double lsim05_42CloseSuplSessions(int a1, int a2)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_42CloseSuplSessions");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (g_SuplInstanceCount)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CategMask,%X,DeInitSupl,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim05_42CloseSuplSessions", a1, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }

    v8 = 0;
    if (a1 == 255)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0;
    }

    if (a1 == 255)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }

    if ((a1 & 5) != 0)
    {
      v9 = v10;
    }

    v11 = a1 & 2;
    if ((a1 & 8) != 0)
    {
      v11 = 2;
    }

    v12 = (v9 | v11);
    v13 = 1;
    do
    {
      v14 = v13;
      v15 = (&g_SuplInstance + 296 * v8);
      if (*(v15 + 281) == 1 && ((a1 & 0xC) != 0 || v15[71] != 1))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Aborting SuplHandle,%u,Mask,%X\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "lsim05_42CloseSuplSessions", *v15, v12);
          LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
        }

        GN_SUPL_Abort(*v15, v12);
      }

      v13 = 0;
      v8 = 1;
    }

    while ((v14 & 1) != 0);
    GN_SUPL_Handler();
  }

  if (a1 == 255 && a2)
  {
    GN_SUPL_Handler_DeInit();
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "lsim05_42CloseSuplSessions");
    LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
  }

  return result;
}

double lsim05_34DeleteSuplContext(unsigned int a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim05_34DeleteSuplContext");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = a1;
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_34DeleteSuplContext", *(&g_SuplInstance + 74 * a1));
    LbsOsaTrace_WriteLog(0xCu, __str, v6, 4, 1);
  }

  else
  {
    v5 = a1;
  }

  v7 = &g_SuplInstance + 296 * v5;
  if (v7[281] == 1)
  {
    v7[282] = 0;
    *(v7 + 2) = 0;
    *v7 = -1;
    *(v7 + 278) = 7275;
    *(v7 + 68) = 0;
    *(v7 + 284) = 0;
    memset_s(v7 + 13, 0x100uLL, 0, 0x100uLL);
    if (g_SuplInstanceCount)
    {
      --g_SuplInstanceCount;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplInstanceCount Mismatch\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 87, "lsim05_34DeleteSuplContext");
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 2, 1);
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "lsim05_34DeleteSuplContext");
    LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
  }

  return result;
}

uint64_t lsim05_37FillSuplLocIdFromLsimLocId(int *a1, int a2, int a3)
{
  v47 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim05_37FillSuplLocIdFromLsimLocId");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_11;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_10;
  }

  memset_s(a1, 0x184CuLL, 0, 0x184CuLL);
  if (a3)
  {
    if (a3 != 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MobInfoType,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 87, "lsim05_37FillSuplLocIdFromLsimLocId", 515, a3);
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 2, 1);
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        return 0;
      }

      goto LABEL_17;
    }

    if (*qword_2A1926810 == a2)
    {
      v8 = 0;
    }

    else
    {
      if (*(qword_2A1926810 + 6220) != a2)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v45 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SimId,%d\n", v45);
LABEL_10:
          LbsOsaTrace_WriteLog(0xCu, __str, v9, 2, 1);
        }

LABEL_11:
        if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
        {
          return 0;
        }

LABEL_17:
        bzero(__str, 0x410uLL);
        v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v12, "LSM", 73, "lsim05_37FillSuplLocIdFromLsimLocId");
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
        return 0;
      }

      v8 = 1;
    }

    v16 = qword_2A1926810 + 6220 * v8;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "lsim05_07FillSuplLocIdCellularNwInfo");
      LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
    }

    v19 = *(v16 + 8);
    if (v19 == 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2 * (v19 == 2);
    }

    *a1 = v20;
    v21 = *(v16 + 4);
    if (v21 > 2)
    {
      if (v21 == 3)
      {
        a1[1] = 3;
        v22 = a1 + 3;
        v23 = (v16 + 12);
        v24 = 6208;
        goto LABEL_44;
      }

      if (v21 == 4)
      {
        a1[1] = 5;
        v25 = *(v16 + 12);
        v26 = *(v16 + 28);
        v27 = *(v16 + 44);
        *(a1 + 15) = *(v16 + 60);
        *(a1 + 11) = v27;
        *(a1 + 7) = v26;
        *(a1 + 3) = v25;
        v28 = *(v16 + 76);
        v29 = *(v16 + 92);
        v30 = *(v16 + 108);
        *(a1 + 31) = *(v16 + 124);
        *(a1 + 27) = v30;
        *(a1 + 23) = v29;
        *(a1 + 19) = v28;
        v31 = *(v16 + 140);
        v32 = *(v16 + 156);
        v33 = *(v16 + 172);
        *(a1 + 46) = *(v16 + 184);
        *(a1 + 43) = v33;
        *(a1 + 39) = v32;
        *(a1 + 35) = v31;
        goto LABEL_45;
      }
    }

    else
    {
      if (v21 == 1)
      {
        a1[1] = 1;
        *(a1 + 3) = *(v16 + 12);
        v38 = *(v16 + 28);
        v39 = *(v16 + 44);
        v40 = *(v16 + 60);
        *(a1 + 18) = *(v16 + 72);
        *(a1 + 15) = v40;
        *(a1 + 11) = v39;
        *(a1 + 7) = v38;
        goto LABEL_45;
      }

      if (v21 == 2)
      {
        a1[1] = 2;
        v22 = a1 + 3;
        v23 = (v16 + 12);
        v24 = 3156;
LABEL_44:
        memcpy(v22, v23, v24);
LABEL_45:
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v41 = mach_continuous_time();
          v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v41), "LSM", 73, "lsim05_07FillSuplLocIdCellularNwInfo");
          LbsOsaTrace_WriteLog(0xCu, __str, v42, 4, 1);
        }

        goto LABEL_47;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v34 = mach_continuous_time();
      v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CellInfoType,%u\n", (*&g_MacClockTicksToMsRelation * v34), "LSM", 73, "lsim05_07FillSuplLocIdCellularNwInfo", 515, *(v16 + 4));
      LbsOsaTrace_WriteLog(0xCu, __str, v35, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v36 = mach_continuous_time();
      v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v36), "LSM", 73, "lsim05_07FillSuplLocIdCellularNwInfo");
      LbsOsaTrace_WriteLog(0xCu, __str, v37, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CellInfo\n");
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  *a1 = 0;
  LOBYTE(a2) = -1;
LABEL_47:
  *(a1 + 8) = a2;
  if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v43 = mach_continuous_time();
  v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v43), "LSM", 73, "lsim05_37FillSuplLocIdFromLsimLocId");
  v14 = 1;
  LbsOsaTrace_WriteLog(0xCu, __str, v44, 4, 1);
  return v14;
}

double lsim05_40SuplTimerExpiry(uint64_t a1, int a2)
{
  v3 = a1;
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim05_40SuplTimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerID,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim05_40SuplTimerExpiry", v3, a2);
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (a2 == 4)
  {
    v8 = v3;
    v9 = 1;
LABEL_9:
    Trace_GN_SUPL_TimerExpiry_In(v8, v9);
    SUPL_indicate_trigger_UT_expiry(v3);
    GN_SUPL_Handler();
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return result;
    }

    goto LABEL_14;
  }

  if (a2 == 3)
  {
    v8 = v3;
    v9 = 0;
    goto LABEL_9;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimerType,%u\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 87, "lsim05_40SuplTimerExpiry", 515, a2);
    LbsOsaTrace_WriteLog(0xCu, __str, v12, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
LABEL_14:
    bzero(__str, 0x410uLL);
    v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v13, "LSM", 73, "lsim05_40SuplTimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v14, 4, 1);
  }

  return result;
}

double lsim10_05AidStatusTimerExpiry(unsigned int a1, int a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim10_05AidStatusTimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (a1 <= 1 && (v6 = (&g_SuplInstance + 296 * a1), (*(v6 + 281) & 1) != 0))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "lsim10_05AidStatusTimerExpiry", *v6);
      LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
    }

    if (a2 == 5 && *(v6 + 282) == 1)
    {
      *(v6 + 282) = 0;
      if (GN_SUPL_AidRequest_In(*v6, 0, 0))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v9 = mach_continuous_time();
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_AidRequest_In successful,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 68, "lsim10_05AidStatusTimerExpiry", *v6);
          LbsOsaTrace_WriteLog(0xCu, __str, v10, 5, 1);
        }

        GN_SUPL_Handler();
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_AidRequest_In failed,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "lsim10_05AidStatusTimerExpiry", *v6);
        LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
LABEL_20:
      bzero(__str, 0x410uLL);
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v16, "LSM", 73, "lsim10_05AidStatusTimerExpiry");
      LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplInstanceIndex,%u\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "lsim10_05AidStatusTimerExpiry", 2052, a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      goto LABEL_20;
    }
  }

  return result;
}

double lsim05_45SuplCbInit(uint64_t (*a1)(void, void, void, __n128))
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    goto LABEL_2;
  }

  if (g_GnsSuplCallback)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim05_45SuplCbInit", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

LABEL_2:
    g_GnsSuplCallback = a1;
    return result;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim05_45SuplCbInit", 513);
    LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

  return result;
}

double lsim05_46PospCbInit(uint64_t (*a1)(void, void, void, __n128))
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    goto LABEL_2;
  }

  if (g_GnsPospCallback)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim05_46PospCbInit", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

LABEL_2:
    g_GnsPospCallback = a1;
    return result;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim05_46PospCbInit", 513);
    LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

  return result;
}

uint64_t GN_SUPL_Connect_Req_Out(uint64_t a1, unsigned __int8 *a2)
{
  v30 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GN_SUPL_Connect_Req_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = 78;
      if (a2[268])
      {
        v7 = 89;
      }

      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u,AddrType,%u,Addr,%s,Port,%dEmerPdn,%c,SimId,%u\n", v6, "LSM", 73, "GN_SUPL_Connect_Req_Out", a1, *(a2 + 65), a2 + 1, *(a2 + 133), v7, *a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
    }

    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = v10;
      v12 = &g_SuplInstance + 296 * v9;
      if (*v12 == a1 && (v12[281] & 1) != 0)
      {
        break;
      }

      v10 = 0;
      v9 = 1;
      if ((v11 & 1) == 0)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
        {
          goto LABEL_18;
        }

        bzero(__str, 0x410uLL);
        v26 = 2052;
        v27 = a1;
        v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v13 = "%10u %s%c %s: #%04hx SuplHandle,%u\n";
        goto LABEL_16;
      }
    }

    v19 = *(a2 + 65);
    if ((v19 - 1) <= 2)
    {
      *(v12 + 68) = v19;
      memset_s(v12 + 13, 0x100uLL, 0, 0x100uLL);
      strncpy(v12 + 13, a2 + 1, 0x100uLL);
      *(v12 + 139) = *(a2 + 133);
      v12[12] = *a2;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u,SuplInstanceIndex,%u,Addr,%s\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 73, "GN_SUPL_Connect_Req_Out", *v12, v9, v12 + 13);
        LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
      }

      lsim09_32ConnectSUPLSession(v9);
      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        return 1;
      }

      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "GN_SUPL_Connect_Req_Out");
      v17 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
      return v17;
    }

    *(&g_SuplInstance + 74 * v9 + 68) = 0;
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SlpIpType,%u,SuplHandle,%u\n", v24);
LABEL_17:
    LbsOsaTrace_WriteLog(0xCu, __str, v14, 2, 1);
    goto LABEL_18;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v26 = 513;
    v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v13 = "%10u %s%c %s: #%04hx ConnReqParams\n";
LABEL_16:
    v14 = snprintf(__str, 0x40FuLL, v13, v25, "LSM", 87, "GN_SUPL_Connect_Req_Out", v26, v27, v28);
    goto LABEL_17;
  }

LABEL_18:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "GN_SUPL_Connect_Req_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
  }

  return 0;
}

uint64_t GN_SUPL_Disconnect_Req_Out(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GN_SUPL_Disconnect_Req_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GN_SUPL_Disconnect_Req_Out", a1);
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    v9 = &g_SuplInstance + 296 * v6;
    if (*v9 == a1 && (v9[281] & 1) != 0)
    {
      break;
    }

    v7 = 0;
    v6 = 1;
    if ((v8 & 1) == 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 87, "GN_SUPL_Disconnect_Req_Out", 2052, a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 2, 1);
      }

      GN_SUPL_Disconnect_Ind_In(a1, 1);
LABEL_12:
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "GN_SUPL_Disconnect_Req_Out");
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
      }

      return 0;
    }
  }

  if (!*(v9 + 2))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplHandle,%u,SuplInstanceIndex,%u\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 87, "GN_SUPL_Disconnect_Req_Out", 770, a1, v6);
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 2, 1);
    }

    GN_SUPL_Disconnect_Ind_In(a1, 16);
    lsim05_34DeleteSuplContext(v6);
    goto LABEL_12;
  }

  v14 = 1;
  v9[280] = 1;
  lsim09_31DisconnectSuplSession(v6);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "GN_SUPL_Disconnect_Req_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
  }

  return v14;
}

uint64_t GN_SUPL_PDU_Delivery_Out(int a1, int a2, unsigned __int8 *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GN_SUPL_PDU_Delivery_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u,Size,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GN_SUPL_PDU_Delivery_Out", a1, a2);
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  v10 = 0;
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = &g_SuplInstance + 296 * v10;
    if (*v13 == a1 && (v13[281] & 1) != 0)
    {
      lsim09_33SendDataReq(a1, a3, a2);
      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        return 1;
      }

      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "GN_SUPL_PDU_Delivery_Out");
      v16 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
      return v16;
    }

    v11 = 0;
    v10 = 1;
  }

  while ((v12 & 1) != 0);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "GN_SUPL_PDU_Delivery_Out", 2052, a1);
    LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
  }

  v16 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "GN_SUPL_PDU_Delivery_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
    return 0;
  }

  return v16;
}

uint64_t GN_SUPL_AidRequest_Out(int a1, unsigned int a2, int a3, unsigned int a4)
{
  v35 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GN_SUPL_AidRequest_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u,Timeout,%ums,PosM,%u,GnssMask,%X\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "GN_SUPL_AidRequest_Out", a1, a2, a3, a4);
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
  }

  v12 = 0;
  v13 = 1;
  while (1)
  {
    v14 = v13;
    v15 = &g_SuplInstance + 296 * v12;
    if (*v15 == a1 && (v15[281] & 1) != 0)
    {
      break;
    }

    v13 = 0;
    v12 = 1;
    if ((v14 & 1) == 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 87, "GN_SUPL_AidRequest_Out", 2052, a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v17, 2, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
      if (result)
      {
        goto LABEL_12;
      }

      return result;
    }
  }

  v21 = gnssOsa_Calloc("GN_SUPL_AidRequest_Out", 1524, 1, 0x14uLL);
  if (v21)
  {
    v22 = v21;
    v23 = a3 - 2;
    if (a3 - 2) < 0xF && ((0x7C1Fu >> v23))
    {
      v24 = dword_2997611B0[v23];
    }

    else
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0);
      v24 = 0;
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v26 = mach_continuous_time();
        v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PosMethod,%u,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v26), "LSM", 87, "GN_SUPL_AidRequest_Out", 770, a3, a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v27, 2, 1);
        v24 = 0;
      }
    }

    *(&g_SuplInstance + 74 * v12 + 72) = v24;
    if (a4 >= 0x100)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v28 = mach_continuous_time();
        v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AllowedGnssMask>UINT8_MAX,0x%X\n", (*&g_MacClockTicksToMsRelation * v28), "LSM", 87, "GN_SUPL_AidRequest_Out", 770, a4);
        LOBYTE(a4) = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v29, 2, 1);
      }

      else
      {
        LOBYTE(a4) = 1;
      }
    }

    *(&g_SuplInstance + 296 * v12 + 292) = a4;
    *(v15 + 1) = a1;
    v22[3] = a2 / 0x3E8;
    v22[4] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_AID_STATUS_REQ =>GNM,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v30), "LSM", 73, "GN_SUPL_AidRequest_Out", a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v31, 4, 1);
    }

    AgpsSendFsmMsg(131, 128, 8591104, v22);
    v15[282] = 1;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v32 = mach_continuous_time();
      v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v32), "LSM", 73, "GN_SUPL_AidRequest_Out");
      LbsOsaTrace_WriteLog(0xCu, __str, v33, 4, 1);
    }

    return lsim12_01StartTimer(lsim10_05AidStatusTimerExpiry, v12, a2 + 1000, 5);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
    if (result)
    {
LABEL_12:
      bzero(__str, 0x410uLL);
      v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v19, "LSM", 73, "GN_SUPL_AidRequest_Out");
      LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
      return 0;
    }
  }

  return result;
}

uint64_t GN_SUPL_Position_Resp_Out(int a1, int a2, __int128 *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GN_SUPL_Position_Resp_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GN_SUPL_Position_Resp_Out", a1, a2);
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  v10 = 0;
  v11 = 1;
  while (1)
  {
    v12 = v11;
    v13 = &g_SuplInstance + 296 * v10;
    if (*v13 == a1 && (v13[281] & 1) != 0)
    {
      break;
    }

    v11 = 0;
    v10 = 1;
    if ((v12 & 1) == 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "GN_SUPL_Position_Resp_Out", 2052, a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
LABEL_12:
        bzero(__str, 0x410uLL);
        v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v16, "LSM", 73, "GN_SUPL_Position_Resp_Out");
        LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
      }

      return 0;
    }
  }

  if (a3 && *(a3 + 1) == 1)
  {
    v20 = gnssOsa_Calloc("GN_SUPL_Position_Resp_Out", 1678, 1, 0x40uLL);
    if (!v20)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        goto LABEL_12;
      }

      return 0;
    }

    v21 = v20;
    v22 = *a3;
    v23 = a3[1];
    v24 = a3[2];
    *(v20 + 15) = *(a3 + 12);
    *(v20 + 44) = v24;
    *(v20 + 28) = v23;
    *(v20 + 12) = v22;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = mach_continuous_time();
      v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_NETWORK_POS_IND =>GNCP,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v25), "LSM", 73, "GN_SUPL_Position_Resp_Out", a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v26, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8597507, v21);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      goto LABEL_29;
    }

    return 1;
  }

  if (*(&g_SuplInstance + 74 * v10 + 72) == 2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_28;
    }

    bzero(__str, 0x410uLL);
    v27 = mach_continuous_time();
    v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NIMSA PosData,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v27), "LSM", 87, "GN_SUPL_Position_Resp_Out", 513, a1);
    v29 = 2;
  }

  else
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
    {
      goto LABEL_28;
    }

    bzero(__str, 0x410uLL);
    v30 = mach_continuous_time();
    v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NIMSB PosData,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v30), "LSM", 68, "GN_SUPL_Position_Resp_Out", 513, a1);
    v29 = 5;
  }

  LbsOsaTrace_WriteLog(0xCu, __str, v28, v29, 1);
LABEL_28:
  if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    return 1;
  }

LABEL_29:
  bzero(__str, 0x410uLL);
  v31 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v31, "LSM", 73, "GN_SUPL_Position_Resp_Out");
  v18 = 1;
  LbsOsaTrace_WriteLog(0xCu, __str, v32, 4, 1);
  return v18;
}

uint64_t GN_SUPL_TimerStart_Out(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GN_SUPL_TimerStart_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerID,%u,Type,%u,Duration,%ums\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GN_SUPL_TimerStart_Out", v5, a2, v3);
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (a2 == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "GN_SUPL_TimerStart_Out");
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
    }

    v12 = v5;
    v13 = v3;
    v14 = 4;
    return lsim12_01StartTimer(lsim05_40SuplTimerExpiry, v12, v13, v14);
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "GN_SUPL_TimerStart_Out");
      LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
    }

    v12 = v5;
    v13 = v3;
    v14 = 3;
    return lsim12_01StartTimer(lsim05_40SuplTimerExpiry, v12, v13, v14);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 87, "GN_SUPL_TimerStart_Out", 515);
    LbsOsaTrace_WriteLog(0xCu, __str, v19, 2, 1);
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v21 = mach_continuous_time();
    v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 73, "GN_SUPL_TimerStart_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v22, 4, 1);
    return 0;
  }

  return result;
}

uint64_t GN_SUPL_TimerStop_Out(uint64_t a1, int a2)
{
  v3 = a1;
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GN_SUPL_TimerStop_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerID,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GN_SUPL_TimerStop_Out", v3, a2);
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (a2 == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "GN_SUPL_TimerStop_Out");
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
    }

    v10 = v3;
    v11 = 4;
    return lsim12_02StopTimer(v10, v11);
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GN_SUPL_TimerStop_Out");
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
    }

    v10 = v3;
    v11 = 3;
    return lsim12_02StopTimer(v10, v11);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 87, "GN_SUPL_TimerStop_Out", 515);
    LbsOsaTrace_WriteLog(0xCu, __str, v16, 2, 1);
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 73, "GN_SUPL_TimerStop_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
    return 0;
  }

  return result;
}

uint64_t GN_SUPL_LocIdReq_Out(int a1, int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GN_SUPL_LocIdReq_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ReqMask,%X,SimId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GN_SUPL_LocIdReq_Out", a1, a2);
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  lsim15_02SendMobileInfoReq(a1, a2);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GN_SUPL_LocIdReq_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  return 1;
}

uint64_t GN_SUPL_EventNotif_Out(int a1, int a2, int a3, int a4, int a5, int a6, __int128 *a7)
{
  v44 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "GN_SUPL_EventNotif_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u,Event,%u,ConnStatus,%u,SuplMsg,%u,PosM,%u,Cause,%u\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "GN_SUPL_EventNotif_Out", a1, a2, a3, a4, a5, a6);
    LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
  }

  if (g_GnsSuplCallback)
  {
    memset_s(&__s, 0x348uLL, 0, 0x348uLL);
    __s = a1;
    v42 = -1;
    if (a2 == 2)
    {
      v38 = a3;
      goto LABEL_17;
    }

    if (a2 != 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v32 = mach_continuous_time();
        v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Event,%u,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v32), "LSM", 87, "GN_SUPL_EventNotif_Out", 515, a2, a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v33, 2, 1);
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        return 0;
      }

      bzero(__str, 0x410uLL);
      v34 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v34, "LSM", 73, "GN_SUPL_EventNotif_Out");
      goto LABEL_27;
    }

    v39 = a4;
    v40 = a5;
    v41 = a6;
    if (!a7)
    {
LABEL_17:
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v28 = mach_continuous_time();
        v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:EVNT_INF =>SuplCB,Event,%u,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v28), "LSM", 73, "GN_SUPL_EventNotif_Out", a2, __s);
        LbsOsaTrace_WriteLog(0xCu, __str, v29, 4, 1);
      }

      g_GnsSuplCallback(1, 840, &__s, v27);
      if (v37)
      {
        free(v37);
      }

      v37 = 0;
      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        return 1;
      }

      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v30), "LSM", 73, "GN_SUPL_EventNotif_Out");
      v24 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v31, 4, 1);
      return v24;
    }

    v18 = gnssOsa_Calloc("GN_SUPL_EventNotif_Out", 1859, 1, 0x78uLL);
    v37 = v18;
    if (v18)
    {
      v19 = *a7;
      v20 = a7[1];
      v21 = a7[2];
      *(v18 + 16) = *(a7 + 12);
      *(v18 + 2) = v20;
      *(v18 + 3) = v21;
      *(v18 + 1) = v19;
      goto LABEL_17;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
LABEL_15:
    v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v25, "LSM", 73, "GN_SUPL_EventNotif_Out");
LABEL_27:
    LbsOsaTrace_WriteLog(0xCu, __str, v26, 4, 1);
    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Supl\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 87, "GN_SUPL_EventNotif_Out", 258);
    LbsOsaTrace_WriteLog(0xCu, __str, v23, 2, 1);
  }

  v24 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    goto LABEL_15;
  }

  return v24;
}

BOOL GNS_PospInitialize(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_PospInitialize");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("GNS_PospInitialize", 1900, 1, 0x18uLL);
  v5 = v4;
  if (v4)
  {
    v4[3] = 4;
    *(v4 + 2) = a1;
    AgpsSendFsmMsg(131, 131, 8635139, v4);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_PospInitialize");
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }
  }

  return v5 != 0;
}

double GNS_ExecutePospCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "GNS_ExecutePospCallback");
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
  }

  if (g_GnsPospCallback)
  {
    g_GnsPospCallback(a1, a2, a3, v6);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx POSP\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 87, "GNS_ExecutePospCallback", 258);
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "GNS_ExecutePospCallback");
    LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
  }

  return result;
}

uint64_t GNS_PospLocReq(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_PospLocReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (lsim03_13SendLocInfoReq(v5, a2, 3, v3))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_PospLocReq");
      v10 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PospLocReq,SId,%u\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 87, "GNS_PospLocReq", 515, v5);
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 73, "GNS_PospLocReq");
      LbsOsaTrace_WriteLog(0xCu, __str, v14, 4, 1);
    }

    return 2;
  }

  return v10;
}

uint64_t GNS_PospSummaryReport(int a1, char a2, __int128 *a3, __int128 *a4, int a5, int a6, int a7)
{
  v36 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "GNS_PospSummaryReport");
    LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
  }

  v16 = gnssOsa_Calloc("GNS_PospSummaryReport", 2021, 1, 0x38uLL);
  if (!v16)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
LABEL_20:
      bzero(__str, 0x410uLL);
      v32 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v32, "LSM", 73, "GNS_PospSummaryReport");
      LbsOsaTrace_WriteLog(0xCu, __str, v33, 4, 1);
    }

    return 6;
  }

  v17 = v16;
  if (!a3)
  {
    goto LABEL_7;
  }

  v18 = gnssOsa_Calloc("GNS_PospSummaryReport", 2031, 1, 0x28uLL);
  v17[3] = v18;
  if (!v18)
  {
    free(v17);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      goto LABEL_20;
    }

    return 6;
  }

  v19 = *a3;
  v20 = a3[1];
  *(v18 + 31) = *(a3 + 31);
  *v18 = v19;
  *(v18 + 1) = v20;
LABEL_7:
  if (!a4)
  {
    goto LABEL_10;
  }

  v21 = gnssOsa_Calloc("GNS_PospSummaryReport", 2045, 1, 0x78uLL);
  v17[4] = v21;
  if (!v21)
  {
    v31 = v17[3];
    if (v31)
    {
      free(v31);
    }

    free(v17);
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 6;
    }

    goto LABEL_20;
  }

  v22 = *a4;
  v23 = a4[1];
  v24 = a4[3];
  v21[2] = a4[2];
  v21[3] = v24;
  *v21 = v22;
  v21[1] = v23;
  v25 = a4[4];
  v26 = a4[5];
  v27 = a4[6];
  *(v21 + 14) = *(a4 + 14);
  v21[5] = v26;
  v21[6] = v27;
  v21[4] = v25;
LABEL_10:
  *(v17 + 4) = a1;
  *(v17 + 20) = a2;
  *(v17 + 11) = a6;
  *(v17 + 12) = a7;
  *(v17 + 10) = a5;
  AgpsSendFsmMsg(131, 131, 8636163, v17);
  if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v28 = mach_continuous_time();
  v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v28), "LSM", 73, "GNS_PospSummaryReport");
  v30 = 1;
  LbsOsaTrace_WriteLog(0xCu, __str, v29, 4, 1);
  return v30;
}

uint64_t GNS_PospStatusReport(int a1, int a2, __int128 *a3, __int128 *a4, __int128 *a5, char a6)
{
  v44 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "GNS_PospStatusReport");
    LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
  }

  v14 = gnssOsa_Calloc("GNS_PospStatusReport", 2102, 1, 0x48uLL);
  if (!v14)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
LABEL_29:
      bzero(__str, 0x410uLL);
      v40 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v40, "LSM", 73, "GNS_PospStatusReport");
      LbsOsaTrace_WriteLog(0xCu, __str, v41, 4, 1);
    }

    return 6;
  }

  v15 = v14;
  if (!a3)
  {
    goto LABEL_7;
  }

  v16 = gnssOsa_Calloc("GNS_PospStatusReport", 2113, 1, 0x78uLL);
  v15[3] = v16;
  if (!v16)
  {
    free(v15);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      goto LABEL_29;
    }

    return 6;
  }

  v17 = *a3;
  v18 = a3[1];
  v19 = a3[3];
  v16[2] = a3[2];
  v16[3] = v19;
  *v16 = v17;
  v16[1] = v18;
  v20 = a3[4];
  v21 = a3[5];
  v22 = a3[6];
  *(v16 + 14) = *(a3 + 14);
  v16[5] = v21;
  v16[6] = v22;
  v16[4] = v20;
LABEL_7:
  if (!a4)
  {
    goto LABEL_10;
  }

  v23 = gnssOsa_Calloc("GNS_PospStatusReport", 2127, 1, 0x7CuLL);
  v15[4] = v23;
  if (!v23)
  {
    v37 = v15[3];
    if (v37)
    {
      free(v37);
    }

    free(v15);
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 6;
    }

    goto LABEL_29;
  }

  v24 = *a4;
  v25 = a4[1];
  v26 = a4[3];
  v23[2] = a4[2];
  v23[3] = v26;
  *v23 = v24;
  v23[1] = v25;
  v27 = a4[4];
  v28 = a4[5];
  v29 = a4[6];
  *(v23 + 108) = *(a4 + 108);
  v23[5] = v28;
  v23[6] = v29;
  v23[4] = v27;
LABEL_10:
  if (!a5)
  {
    goto LABEL_13;
  }

  v30 = gnssOsa_Calloc("GNS_PospStatusReport", 2142, 1, 0x34uLL);
  v15[5] = v30;
  if (!v30)
  {
    v38 = v15[3];
    if (v38)
    {
      free(v38);
    }

    v15[3] = 0;
    v39 = v15[4];
    if (v39)
    {
      free(v39);
    }

    free(v15);
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 6;
    }

    goto LABEL_29;
  }

  v31 = *a5;
  v32 = a5[1];
  v33 = a5[2];
  v30[12] = *(a5 + 12);
  *(v30 + 1) = v32;
  *(v30 + 2) = v33;
  *v30 = v31;
LABEL_13:
  *(v15 + 4) = a1;
  *(v15 + 12) = a2;
  *(v15 + 64) = a6;
  AgpsSendFsmMsg(131, 131, 8636419, v15);
  if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v34 = mach_continuous_time();
  v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v34), "LSM", 73, "GNS_PospStatusReport");
  v36 = 1;
  LbsOsaTrace_WriteLog(0xCu, __str, v35, 4, 1);
  return v36;
}

BOOL GNS_SuplInitialize(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_SuplInitialize");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("GNS_SuplInitialize", 2183, 1, 0x18uLL);
  v5 = v4;
  if (v4)
  {
    v4[3] = 3;
    *(v4 + 2) = a1;
    AgpsSendFsmMsg(131, 131, 8635139, v4);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_SuplInitialize");
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }
  }

  return v5 != 0;
}

uint64_t GNS_SuplDecodeInit(uint64_t a1, unsigned __int8 *a2, unsigned int a3, const void *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_SuplDecodeInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Length,%u,pointer,%p,Handle,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "GNS_SuplDecodeInit", a3, a2, a1);
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
  }

  if (a2 && a3 && a4)
  {
    if (GN_SUPL_DecodeSuplInit_In(a1, a2, a3, a4))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "GNS_SuplDecodeInit");
        v14 = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_DecodeSuplInit_In Failed,Handle,%u\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 87, "GNS_SuplDecodeInit", a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v21, 2, 1);
      }

      v14 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "GNS_SuplDecodeInit");
        LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
        return 0;
      }
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid Length,%u,DataPtr,%p,DecodedDataPtr,%p,Handle,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 87, "GNS_SuplDecodeInit", 513, a3, a2, a4, a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "GNS_SuplDecodeInit");
      LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
    }

    return 2;
  }

  return v14;
}

uint64_t GNS_SuplAbortSession(int a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_SuplAbortSession");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_SuplAbortSession", a1);
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  v6 = gnssOsa_Calloc("GNS_SuplAbortSession", 2266, 1, 0x10uLL);
  if (v6)
  {
    v6[3] = a1;
    AgpsSendFsmMsg(131, 131, 8635648, v6);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "GNS_SuplAbortSession");
      v9 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
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
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "GNS_SuplAbortSession");
      LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
    }

    return 6;
  }

  return v9;
}

char **sprintf01da(char **result, uint64_t a2, char *a3, uint64_t a4)
{
  if (a2 < 0xA)
  {
    if (a4)
    {
      *a3 = 45;
      v4 = 1;
    }

    else
    {
      v4 = 0;
    }

    v5 = &a3[v4];
    *v5 = a2 | 0x30;
    v5[1] = 0;
    v6 = *a3;
    if (*a3)
    {
      v7 = *result;
      v8 = a3 + 1;
      do
      {
        *result = v7 + 1;
        *v7 = v6;
        v7 = *result;
        if (*result >= result[3])
        {
          v7 = result[2];
          *result = v7;
        }

        v9 = *v8++;
        v6 = v9;
      }

      while (v9);
    }
  }

  else
  {

    return nzet(result, a2, a3, 0, a4, 0);
  }

  return result;
}

char **sprintf_02d(char **a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    return sprintf01da(a1, -a2, v3, 1);
  }

  else
  {
    return sprintf02da(a1, a2, v3, 0);
  }
}

uint64_t sprintf02da(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (a2 < 0x64)
  {
    if (a4)
    {
      *a3 = 45;
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    return digit2(a1, a2, a3, v5, 0);
  }

  else
  {

    return nzet(a1, a2, a3, 0, a4, 0);
  }
}

uint64_t sprintf_03d(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    return sprintf02da(a1, -a2, v3, 1);
  }

  else
  {
    return sprintf03da(a1, a2, v3, 0);
  }
}

uint64_t sprintf03da(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (a2 < 0x3E8)
  {
    if (a4)
    {
      *a3 = 45;
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    return digit3(a1, a2, a3, v5, 0);
  }

  else
  {

    return nzet(a1, a2, a3, 0, a4, 0);
  }
}

uint64_t sprintf08da(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (a2 < 0x5F5E100)
  {
    if (a4)
    {
      *a3 = 45;
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    return digit8(a1, a2, a3, v5, 0);
  }

  else
  {

    return nzet(a1, a2, a3, 0, a4, 0);
  }
}

uint64_t sprintf_09d(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    return sprintf08da(a1, -a2, v3, 1);
  }

  else
  {
    return sprintf09da(a1, a2, v3, 0);
  }
}

uint64_t sprintf09da(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (a2 < 0x3B9ACA00)
  {
    if (a4)
    {
      *a3 = 45;
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    return digit9(a1, a2, a3, v5, 0);
  }

  else
  {

    return nzet(a1, a2, a3, 0, a4, 0);
  }
}

uint64_t digit10(uint64_t a1, unsigned int a2, char *a3, unsigned int a4, uint64_t a5)
{
  v5 = a2 + 294967296;
  if (a2 > 0xEE6B27FF)
  {
    v6 = 52;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v5 - 2000000000;
  if (v5 > 0x773593FF)
  {
    v8 = v6 | 2;
  }

  else
  {
    v7 = v5;
    v8 = v6;
  }

  if (v7 <= 0x3B9AC9FF)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 + 1;
  }

  v10 = a4 + 1;
  a3[a4] = v9;
  if (a5 == 10)
  {
    a3[(a4 + 1)] = 46;
    v10 = a4 + 2;
  }

  if (v7 <= 0x3B9AC9FF)
  {
    v11 = v7;
  }

  else
  {
    v11 = v7 - 1000000000;
  }

  return digit9(a1, v11, a3, v10, a5);
}

char **sprintf1da(char **result, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0xA)
  {
    if (a5)
    {
      a3[a4] = 45;
      LOBYTE(a4) = a4 + 1;
    }

    a3[a4] = a2 | 0x30;
    a3[(a4 + 1)] = 0;
    v5 = *a3;
    if (*a3)
    {
      v6 = *result;
      v7 = a3 + 1;
      do
      {
        *result = v6 + 1;
        *v6 = v5;
        v6 = *result;
        if (*result >= result[3])
        {
          v6 = result[2];
          *result = v6;
        }

        v8 = *v7++;
        v5 = v8;
      }

      while (v8);
    }
  }

  else
  {

    return nzet(result, a2, a3, a4, a5, 0);
  }

  return result;
}

char **sprintf_2d(char **a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    return sprintf1da(a1, -a2, v3, 0, 1);
  }

  else
  {
    return sprintf2da(a1, a2, v3, 0, 0);
  }
}

char **sprintf2da(char **a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0x64)
  {
    if (a2 < 0xA)
    {
      a3[a4] = 32;
      v6 = (a4 + 1);

      return sprintf1da(a1, a2, a3, v6, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      return digit2(a1, a2, a3, a4, 0);
    }
  }

  else
  {

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

char **sprintf_3d(char **a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    return sprintf2da(a1, -a2, v3, 0, 1);
  }

  else
  {
    return sprintf3da(a1, a2, v3, 0, 0);
  }
}

char **sprintf3da(char **a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0x3E8)
  {
    if (a2 < 0x64)
    {
      a3[a4] = 32;
      v6 = (a4 + 1);

      return sprintf2da(a1, a2, a3, v6, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      return digit3(a1, a2, a3, a4, 0);
    }
  }

  else
  {

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

char **sprintf_4d(char **a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    return sprintf3da(a1, -a2, v3, 0, 1);
  }

  else
  {
    return sprintf4da(a1, a2, v3, 0, 0);
  }
}

char **sprintf4da(char **a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a2 >> 4 < 0x271)
  {
    if (a2 < 0x3E8)
    {
      a3[a4] = 32;
      v6 = (a4 + 1);

      return sprintf3da(a1, a2, a3, v6, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      return digit4(a1, a2, a3, a4, 0);
    }
  }

  else
  {

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

char **sprintf_5d(char **a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    return sprintf4da(a1, -a2, v3, 0, 1);
  }

  else
  {
    return sprintf5da(a1, a2, v3, 0, 0);
  }
}

char **sprintf5da(char **a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a2 >> 5 < 0xC35)
  {
    if (a2 >> 4 < 0x271)
    {
      a3[a4] = 32;
      v6 = (a4 + 1);

      return sprintf4da(a1, a2, a3, v6, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      return digit5(a1, a2, a3, a4, 0);
    }
  }

  else
  {

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

char **sprintf_6d(char **a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    return sprintf5da(a1, -a2, v3, 0, 1);
  }

  else
  {
    return sprintf6da(a1, a2, v3, 0, 0);
  }
}

char **sprintf6da(char **a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0xF4240)
  {
    if (a2 >> 5 < 0xC35)
    {
      a3[a4] = 32;
      v6 = (a4 + 1);

      return sprintf5da(a1, a2, a3, v6, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      return digit6(a1, a2, a3, a4, 0);
    }
  }

  else
  {

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

char **sprintf_7d(char **a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    return sprintf6da(a1, -a2, v3, 0, 1);
  }

  else
  {
    return sprintf7da(a1, a2, v3, 0, 0);
  }
}

char **sprintf7da(char **a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0x989680)
  {
    if (a2 < 0xF4240)
    {
      a3[a4] = 32;
      v6 = (a4 + 1);

      return sprintf6da(a1, a2, a3, v6, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      return digit7(a1, a2, a3, a4, 0);
    }
  }

  else
  {

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

char **sprintf_8d(char **a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    return sprintf7da(a1, -a2, v3, 0, 1);
  }

  else
  {
    return sprintf8da(a1, a2, v3, 0, 0);
  }
}

char **sprintf8da(char **a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0x5F5E100)
  {
    if (a2 < 0x989680)
    {
      a3[a4] = 32;
      v6 = (a4 + 1);

      return sprintf7da(a1, a2, a3, v6, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      return digit8(a1, a2, a3, a4, 0);
    }
  }

  else
  {

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

char **sprintf_9d(char **a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    return sprintf8da(a1, -a2, v3, 0, 1);
  }

  else
  {
    return sprintf9da(a1, a2, v3, 0, 0);
  }
}

char **sprintf9da(char **a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0x3B9ACA00)
  {
    if (a2 < 0x5F5E100)
    {
      a3[a4] = 32;
      v6 = (a4 + 1);

      return sprintf8da(a1, a2, a3, v6, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      return digit9(a1, a2, a3, a4, 0);
    }
  }

  else
  {

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

char **sprintf_10d(char **a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    a2 = -a2;
    v3 = 0;
    v4 = 1;
  }

  else
  {
    if (a2 >= 0x3B9ACA00)
    {
      return digit10(a1, a2, v5, 0, 0);
    }

    v5[0] = 32;
    v3 = 1;
    v4 = 0;
  }

  return sprintf9da(a1, a2, v5, v3, v4);
}

char **sprintf_10u(char **a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x3B9ACA00)
  {
    return digit10(a1, a2, v3, 0, 0);
  }

  v3[0] = 32;
  return sprintf9da(a1, a2, v3, 1, 0);
}

uint64_t sprintf_2f(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v6 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) == 0)
  {
    return sprintf_2fa(a1, a2, v5, 0, 0);
  }

  v4 = -a2;
  if (v2 <= 0xFFFFFFF6)
  {
    return nzet(a1, v4, v5, 0, 1, 2);
  }

  v5[0] = 45;
  return digit2(a1, v4, v5, 1, 2);
}

uint64_t sprintf_3f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v7 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) == 0)
  {
    return sprintf_3fa(a1, a2, v6, 0, 0, a3);
  }

  v5 = -a2;
  if (v3 <= 0xFFFFFF9C)
  {
    return nzet(a1, v5, v6, 0, 1, a3);
  }

  if (a3 != 3)
  {
    return sprintf_2fa(a1, v5, v6, 0, 1);
  }

  v6[0] = 45;
  return digit3(a1, v5, v6, 1u, 3);
}

uint64_t sprintf_4f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v7 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) == 0)
  {
    return sprintf_4fa(a1, a2, v6, 0, 0, a3);
  }

  v5 = -a2;
  if (v3 <= 0xFFFFFC18)
  {
    return nzet(a1, v5, v6, 0, 1, a3);
  }

  if (a3 != 4)
  {
    return sprintf_3fa(a1, v5, v6, 0, 1, a3);
  }

  v6[0] = 45;
  return digit4(a1, v5, v6, 1u, 4);
}

uint64_t sprintf_5f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v7 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) == 0)
  {
    return sprintf_5fa(a1, a2, v6, 0, 0, a3);
  }

  v5 = -a2;
  if (v3 <= 0xFFFFD8F0)
  {
    return nzet(a1, v5, v6, 0, 1, a3);
  }

  if (a3 != 5)
  {
    return sprintf_4fa(a1, v5, v6, 0, 1, a3);
  }

  v6[0] = 45;
  return digit5(a1, v5, v6, 1u, 5);
}

uint64_t sprintf_6f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v7 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) == 0)
  {
    return sprintf_6fa(a1, a2, v6, 0, 0, a3);
  }

  v5 = -a2;
  if (v3 <= 0xFFFE7960)
  {
    return nzet(a1, v5, v6, 0, 1, a3);
  }

  if (a3 != 6)
  {
    return sprintf_5fa(a1, v5, v6, 0, 1, a3);
  }

  v6[0] = 45;
  return digit6(a1, v5, v6, 1u, 6);
}

uint64_t sprintf_7f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v7 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) == 0)
  {
    return sprintf_7fa(a1, a2, v6, 0, 0, a3);
  }

  v5 = -a2;
  if (v3 <= 0xFFF0BDC0)
  {
    return nzet(a1, v5, v6, 0, 1, a3);
  }

  if (a3 != 7)
  {
    return sprintf_6fa(a1, v5, v6, 0, 1, a3);
  }

  v6[0] = 45;
  return digit7(a1, v5, v6, 1u, 7);
}

uint64_t sprintf_8f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v7 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) == 0)
  {
    return sprintf_8fa(a1, a2, v6, 0, 0, a3);
  }

  v5 = -a2;
  if (v3 <= 0xFF676980)
  {
    return nzet(a1, v5, v6, 0, 1, a3);
  }

  if (a3 != 8)
  {
    return sprintf_7fa(a1, v5, v6, 0, 1, a3);
  }

  v6[0] = 45;
  return digit8(a1, v5, v6, 1u, 8);
}

uint64_t sprintf_9f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    if (a2 <= 0xFA0A1F00)
    {
      LODWORD(a2) = -a2;
      v3 = 1;
      return nzet(a1, a2, v8, 0, v3, a3);
    }

    if (a3 == 9)
    {
      v8[0] = 45;
      LODWORD(a2) = -a2;
      v5 = 1;
      return digit9(a1, a2, v8, v5, 9);
    }

    LODWORD(a2) = -a2;
    v6 = 0;
    v7 = 1;
  }

  else
  {
    if (a2 >= 0x5F5E100)
    {
      v3 = 0;
      return nzet(a1, a2, v8, 0, v3, a3);
    }

    if (a3 == 9)
    {
      v5 = 0;
      return digit9(a1, a2, v8, v5, 9);
    }

    v8[0] = 32;
    v6 = 1;
    v7 = 0;
  }

  return sprintf_8fa(a1, a2, v8, v6, v7, a3);
}

uint64_t sprintf_10f9(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    if (a2 <= 0xC4653600)
    {
      LODWORD(a2) = -a2;
      v2 = 1;
      return nzet(a1, a2, v5, 0, v2, 10);
    }

    v5[0] = 45;
    LODWORD(a2) = -a2;
    v4 = 1;
  }

  else
  {
    if (a2 >= 0x3B9ACA00)
    {
      v2 = 0;
      return nzet(a1, a2, v5, 0, v2, 10);
    }

    v4 = 0;
  }

  return digit10(a1, a2, v5, v4, 10);
}

char **sprintf_1x(char **result, unint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x10)
  {
    return nzxt(result, a2, &v6);
  }

  v2 = hexTABLE[a2];
  v3 = &v7;
  v7 = 0;
  v4 = *result;
  do
  {
    *result = v4 + 1;
    *v4 = v2;
    v4 = *result;
    if (*result >= result[3])
    {
      v4 = result[2];
      *result = v4;
    }

    v5 = *v3++;
    v2 = v5;
  }

  while (v5);
  return result;
}

uint64_t nzxt(uint64_t result, unint64_t a2, _BYTE *a3)
{
  if (a2 >> 28)
  {
    v3 = hexTABLE[a2 >> 28];
    *a3 = v3;
    a3[1] = hexTABLE[(a2 >> 24) & 0xF];
    a3[2] = hexTABLE[(a2 >> 20) & 0xF];
    a3[3] = hexTABLE[(a2 >> 16) & 0xF];
    a3[4] = hexTABLE[a2 >> 12];
    a3[5] = hexTABLE[(a2 >> 8) & 0xF];
    a3[6] = hexTABLE[a2 >> 4];
    a3[7] = hexTABLE[a2 & 0xF];
    v4 = 8;
  }

  else if (BYTE3(a2))
  {
    v3 = hexTABLE[a2 >> 24];
    *a3 = v3;
    a3[1] = hexTABLE[(a2 >> 20) & 0xF];
    a3[2] = hexTABLE[(a2 >> 16) & 0xF];
    a3[3] = hexTABLE[a2 >> 12];
    a3[4] = hexTABLE[(a2 >> 8) & 0xF];
    a3[5] = hexTABLE[a2 >> 4];
    a3[6] = hexTABLE[a2 & 0xF];
    v4 = 7;
  }

  else if (a2 >= 0x100000)
  {
    v3 = hexTABLE[a2 >> 20];
    *a3 = v3;
    a3[1] = hexTABLE[(a2 >> 16) & 0xF];
    a3[2] = hexTABLE[a2 >> 12];
    a3[3] = hexTABLE[(a2 >> 8) & 0xF];
    a3[4] = hexTABLE[a2 >> 4];
    a3[5] = hexTABLE[a2 & 0xF];
    v4 = 6;
  }

  else if (a2 >= 0x10000)
  {
    v3 = hexTABLE[a2 >> 16];
    *a3 = v3;
    a3[1] = hexTABLE[a2 >> 12];
    a3[2] = hexTABLE[(a2 >> 8) & 0xF];
    a3[3] = hexTABLE[a2 >> 4];
    a3[4] = hexTABLE[a2 & 0xF];
    v4 = 5;
  }

  else if (a2 >= 0x1000)
  {
    v3 = hexTABLE[a2 >> 12];
    *a3 = v3;
    a3[1] = hexTABLE[(a2 >> 8) & 0xF];
    a3[2] = hexTABLE[a2 >> 4];
    a3[3] = hexTABLE[a2 & 0xF];
    v4 = 4;
  }

  else if (a2 >= 0x100)
  {
    v3 = hexTABLE[a2 >> 8];
    *a3 = v3;
    a3[1] = hexTABLE[a2 >> 4];
    a3[2] = hexTABLE[a2 & 0xF];
    v4 = 3;
  }

  else if (a2 >= 0x10)
  {
    v3 = hexTABLE[a2 >> 4];
    *a3 = v3;
    a3[1] = hexTABLE[a2 & 0xF];
    v4 = 2;
  }

  else
  {
    v3 = hexTABLE[a2];
    *a3 = v3;
    v4 = 1;
  }

  a3[v4] = 0;
  if (v3)
  {
    v5 = *result;
    v6 = a3 + 1;
    do
    {
      *result = v5 + 1;
      *v5 = v3;
      v5 = *result;
      if (*result >= *(result + 24))
      {
        v5 = *(result + 16);
        *result = v5;
      }

      v7 = *v6++;
      LOBYTE(v3) = v7;
    }

    while (v7);
  }

  return result;
}

char **sprintf_02x(char **result, unint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x100)
  {
    return nzxt(result, a2, &v6);
  }

  v2 = hexTABLE[a2 >> 4];
  v3 = v7;
  v7[0] = hexTABLE[a2 & 0xF];
  v7[1] = 0;
  v4 = *result;
  do
  {
    *result = v4 + 1;
    *v4 = v2;
    v4 = *result;
    if (*result >= result[3])
    {
      v4 = result[2];
      *result = v4;
    }

    v5 = *v3++;
    v2 = v5;
  }

  while (v5);
  return result;
}

char **sprintf_03x(char **result, unint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x1000)
  {
    return nzxt(result, a2, &v6);
  }

  v2 = hexTABLE[a2 >> 8];
  v3 = v7;
  v7[0] = hexTABLE[a2 >> 4];
  v7[1] = hexTABLE[a2 & 0xF];
  v7[2] = 0;
  v4 = *result;
  do
  {
    *result = v4 + 1;
    *v4 = v2;
    v4 = *result;
    if (*result >= result[3])
    {
      v4 = result[2];
      *result = v4;
    }

    v5 = *v3++;
    v2 = v5;
  }

  while (v5);
  return result;
}

char **sprintf_04x(char **result, unint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x10000)
  {
    return nzxt(result, a2, &v6);
  }

  v2 = hexTABLE[a2 >> 12];
  v3 = v7;
  v7[0] = hexTABLE[(a2 >> 8) & 0xF];
  v7[1] = hexTABLE[a2 >> 4];
  v7[2] = hexTABLE[a2 & 0xF];
  v7[3] = 0;
  v4 = *result;
  do
  {
    *result = v4 + 1;
    *v4 = v2;
    v4 = *result;
    if (*result >= result[3])
    {
      v4 = result[2];
      *result = v4;
    }

    v5 = *v3++;
    v2 = v5;
  }

  while (v5);
  return result;
}

char **sprintf_06x(char **result, unint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (BYTE3(a2))
  {
    return nzxt(result, a2, &v6);
  }

  v2 = hexTABLE[a2 >> 20];
  v7[0] = hexTABLE[(a2 >> 16) & 0xF];
  v7[1] = hexTABLE[a2 >> 12];
  v3 = v7;
  v7[2] = hexTABLE[(a2 >> 8) & 0xF];
  v7[3] = hexTABLE[a2 >> 4];
  v7[4] = hexTABLE[a2 & 0xF];
  v7[5] = 0;
  v4 = *result;
  do
  {
    *result = v4 + 1;
    *v4 = v2;
    v4 = *result;
    if (*result >= result[3])
    {
      v4 = result[2];
      *result = v4;
    }

    v5 = *v3++;
    v2 = v5;
  }

  while (v5);
  return result;
}

uint64_t sprintf_08x(uint64_t result, unint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  LOBYTE(v2) = hexTABLE[a2 >> 28];
  v7[1] = hexTABLE[(a2 >> 24) & 0xF];
  v7[2] = hexTABLE[(a2 >> 20) & 0xF];
  v3 = hexTABLE[a2 >> 12];
  v7[3] = hexTABLE[(a2 >> 16) & 0xF];
  v7[4] = v3;
  v7[5] = hexTABLE[(a2 >> 8) & 0xF];
  v4 = hexTABLE[a2 & 0xF];
  v7[6] = hexTABLE[a2 >> 4];
  v7[7] = v4;
  v7[8] = 0;
  v5 = *result;
  v6 = 1;
  do
  {
    *result = v5 + 1;
    *v5 = v2;
    v5 = *result;
    if (*result >= *(result + 24))
    {
      v5 = *(result + 16);
      *result = v5;
    }

    v2 = v7[v6++];
  }

  while (v2);
  return result;
}

uint64_t digit9(uint64_t a1, unsigned int a2, char *a3, unsigned int a4, uint64_t a5)
{
  v5 = a2 - 800000000;
  if (a2 > 0x2FAF07FF)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  if (v5 <= 0x17D783FF)
  {
    v7 = v6;
  }

  else
  {
    v5 -= 400000000;
  }

  v8 = v5 - 200000000;
  if (v5 > 0xBEBC1FF)
  {
    v9 = v7 | 2;
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  if (v8 <= 0x5F5E0FF)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = a4 + 1;
  a3[a4] = v10;
  if (a5 == 9)
  {
    a3[(a4 + 1)] = 46;
    v11 = a4 + 2;
  }

  if (v8 <= 0x5F5E0FF)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 - 100000000;
  }

  return digit8(a1, v12, a3, v11, a5);
}

uint64_t digit8(uint64_t a1, unsigned int a2, char *a3, unsigned int a4, uint64_t a5)
{
  v5 = a2 - 80000000;
  if (a2 > 0x4C4B3FF)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  if (v5 <= 0x26259FF)
  {
    v7 = v6;
  }

  else
  {
    v5 -= 40000000;
  }

  v8 = v5 - 20000000;
  if (v5 > 0x1312CFF)
  {
    v9 = v7 | 2;
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  if (v8 <= 0x98967F)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = a4 + 1;
  a3[a4] = v10;
  if (a5 == 8)
  {
    a3[(a4 + 1)] = 46;
    v11 = a4 + 2;
  }

  if (v8 <= 0x98967F)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 - 10000000;
  }

  return digit7(a1, v12, a3, v11, a5);
}

uint64_t digit7(uint64_t a1, unsigned int a2, char *a3, unsigned int a4, uint64_t a5)
{
  v5 = a2 - 8000000;
  if (a2 > 0x7A11FF)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  if (v5 <= 0x3D08FF)
  {
    v7 = v6;
  }

  else
  {
    v5 -= 4000000;
  }

  v8 = v5 - 2000000;
  if (v5 > 0x1E847F)
  {
    v9 = v7 | 2;
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  if (v8 <= 0xF423F)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = a4 + 1;
  a3[a4] = v10;
  if (a5 == 7)
  {
    a3[(a4 + 1)] = 46;
    v11 = a4 + 2;
  }

  if (v8 <= 0xF423F)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 - 1000000;
  }

  return digit6(a1, v12, a3, v11, a5);
}

uint64_t digit6(uint64_t a1, unsigned int a2, char *a3, unsigned int a4, uint64_t a5)
{
  v5 = a2 - 800000;
  if (a2 >> 8 > 0xC34)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  v8 = v5 >> 7;
  if (v5 >> 7 > 0xC34)
  {
    v5 -= 400000;
  }

  if (v8 <= 0xC34)
  {
    v7 = v6;
  }

  v9 = v5 - 200000;
  if (v5 >> 6 > 0xC34)
  {
    v10 = v7 | 2;
  }

  else
  {
    v9 = v5;
    v10 = v7;
  }

  if (v9 >> 5 <= 0xC34)
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 + 1;
  }

  v12 = a4 + 1;
  a3[a4] = v11;
  if (a5 == 6)
  {
    a3[(a4 + 1)] = 46;
    v12 = a4 + 2;
  }

  if (v9 >> 5 <= 0xC34)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 - 100000;
  }

  return digit5(a1, v13, a3, v12, a5);
}

uint64_t digit5(uint64_t a1, unsigned int a2, char *a3, unsigned int a4, uint64_t a5)
{
  v5 = a2 - 80000;
  if (a2 >> 7 > 0x270)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  v8 = v5 >> 6;
  if (v5 >> 6 > 0x270)
  {
    v5 -= 40000;
  }

  if (v8 <= 0x270)
  {
    v7 = v6;
  }

  v9 = v5 - 20000;
  if (v5 >> 5 > 0x270)
  {
    v10 = v7 | 2;
  }

  else
  {
    v9 = v5;
    v10 = v7;
  }

  if (v9 >> 4 <= 0x270)
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 + 1;
  }

  v12 = a4 + 1;
  a3[a4] = v11;
  if (a5 == 5)
  {
    a3[(a4 + 1)] = 46;
    v12 = a4 + 2;
  }

  if (v9 >> 4 <= 0x270)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 - 10000;
  }

  return digit4(a1, v13, a3, v12, a5);
}

uint64_t digit4(uint64_t a1, unsigned int a2, char *a3, unsigned int a4, uint64_t a5)
{
  v5 = a2 - 8000;
  if (a2 >> 6 > 0x7C)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  if (v5 <= 0xF9F)
  {
    v7 = v6;
  }

  else
  {
    v5 -= 4000;
  }

  v8 = v5 - 2000;
  if (v5 > 0x7CF)
  {
    v9 = v7 | 2;
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  if (v8 <= 0x3E7)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = a4 + 1;
  a3[a4] = v10;
  if (a5 == 4)
  {
    a3[(a4 + 1)] = 46;
    v11 = a4 + 2;
  }

  if (v8 <= 0x3E7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 - 1000;
  }

  return digit3(a1, v12, a3, v11, a5);
}

uint64_t digit3(uint64_t a1, unsigned int a2, char *a3, unsigned int a4, uint64_t a5)
{
  v5 = a2 - 800;
  if (a2 > 0x31F)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  if (v5 <= 0x18F)
  {
    v7 = v6;
  }

  else
  {
    v5 -= 400;
  }

  v8 = v5 - 200;
  if (v5 > 0xC7)
  {
    v9 = v7 | 2;
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  if (v8 <= 0x63)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = a4 + 1;
  a3[a4] = v10;
  if (a5 == 3)
  {
    a3[(a4 + 1)] = 46;
    v11 = a4 + 2;
  }

  if (v8 <= 0x63)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 - 100;
  }

  return digit2(a1, v12, a3, v11, a5);
}

uint64_t digit2(uint64_t result, unsigned int a2, char *a3, int a4, int a5)
{
  v5 = a2 - 80;
  if (a2 > 0x4F)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  if (v5 > 0x27)
  {
    v5 -= 40;
    v6 |= 4u;
  }

  v7 = v6 | 2;
  if (v5 <= 0x13)
  {
    v7 = v6;
  }

  else
  {
    v5 -= 20;
  }

  v8 = v5 - 10;
  if (v5 > 9)
  {
    v9 = v7 + 1;
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  a3[a4] = v9;
  if (a5 == 2)
  {
    v10 = a4 + 2;
    a3[(a4 + 1)] = 46;
    v11 = v8 + 48;
  }

  else
  {
    v10 = a4 + 2;
    a3[(a4 + 1)] = v8 + 48;
    if (a5 != 1)
    {
      goto LABEL_17;
    }

    v11 = 46;
  }

  a3[v10] = v11;
  v10 = a4 + 3;
LABEL_17:
  a3[v10] = 0;
  v12 = *a3;
  if (*a3)
  {
    v13 = *result;
    v14 = a3 + 1;
    do
    {
      *result = v13 + 1;
      *v13 = v12;
      v13 = *result;
      if (*result >= *(result + 24))
      {
        v13 = *(result + 16);
        *result = v13;
      }

      v15 = *v14++;
      v12 = v15;
    }

    while (v15);
  }

  return result;
}

uint64_t nzet(uint64_t a1, unsigned int a2, char *a3, int a4, int a5, uint64_t a6)
{
  if (a2 < 0x3B9ACA00)
  {
    if (a2 < 0x5F5E100)
    {
      if (a2 < 0x989680)
      {
        if (a2 < 0xF4240)
        {
          if (a2 >> 5 < 0xC35)
          {
            if (a2 >> 4 < 0x271)
            {
              if (a2 < 0x3E8)
              {
                if (a2 < 0x64)
                {
                  if (a5)
                  {
                    a3[a4] = 45;
                    LOBYTE(a4) = a4 + 1;
                  }

                  return digit2(a1, a2, a3, a4, a6);
                }

                else
                {
                  if (a5)
                  {
                    a3[a4] = 45;
                    LOBYTE(a4) = a4 + 1;
                  }

                  return digit3(a1, a2, a3, a4, a6);
                }
              }

              else
              {
                if (a5)
                {
                  a3[a4] = 45;
                  LOBYTE(a4) = a4 + 1;
                }

                return digit4(a1, a2, a3, a4, a6);
              }
            }

            else
            {
              if (a5)
              {
                a3[a4] = 45;
                LOBYTE(a4) = a4 + 1;
              }

              return digit5(a1, a2, a3, a4, a6);
            }
          }

          else
          {
            if (a5)
            {
              a3[a4] = 45;
              LOBYTE(a4) = a4 + 1;
            }

            return digit6(a1, a2, a3, a4, a6);
          }
        }

        else
        {
          if (a5)
          {
            a3[a4] = 45;
            LOBYTE(a4) = a4 + 1;
          }

          return digit7(a1, a2, a3, a4, a6);
        }
      }

      else
      {
        if (a5)
        {
          a3[a4] = 45;
          LOBYTE(a4) = a4 + 1;
        }

        return digit8(a1, a2, a3, a4, a6);
      }
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      return digit9(a1, a2, a3, a4, a6);
    }
  }

  else
  {
    if (a5)
    {
      a3[a4] = 45;
      LOBYTE(a4) = a4 + 1;
    }

    return digit10(a1, a2, a3, a4, a6);
  }
}

uint64_t sprintf_2fa(uint64_t a1, signed int a2, char *a3, int a4, int a5)
{
  if (a2 < 10)
  {
    if (a5)
    {
      a3[a4] = 45;
      LOBYTE(a4) = a4 + 1;
    }

    return digit2(a1, a2, a3, a4, 2);
  }

  else
  {

    return nzet(a1, a2, a3, a4, a5, 2);
  }
}

uint64_t sprintf_3fa(uint64_t a1, int a2, char *a3, int a4, int a5, uint64_t a6)
{
  if (a2 < 100)
  {
    if (a6 == 3)
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      return digit3(a1, a2, a3, a4, 3);
    }

    else
    {
      a3[a4] = 32;
      v7 = (a4 + 1);

      return sprintf_2fa(a1, a2, a3, v7, a5);
    }
  }

  else
  {

    return nzet(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sprintf_4fa(uint64_t a1, int a2, char *a3, int a4, int a5, uint64_t a6)
{
  if (a2 < 1000)
  {
    if (a6 == 4)
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      return digit4(a1, a2, a3, a4, 4);
    }

    else
    {
      a3[a4] = 32;
      v7 = (a4 + 1);

      return sprintf_3fa(a1, a2, a3, v7, a5, a6);
    }
  }

  else
  {

    return nzet(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sprintf_5fa(uint64_t a1, int a2, char *a3, int a4, int a5, uint64_t a6)
{
  if (a2 < 10000)
  {
    if (a6 == 5)
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      return digit5(a1, a2, a3, a4, 5);
    }

    else
    {
      a3[a4] = 32;
      v7 = (a4 + 1);

      return sprintf_4fa(a1, a2, a3, v7, a5, a6);
    }
  }

  else
  {

    return nzet(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sprintf_6fa(uint64_t a1, int a2, char *a3, int a4, int a5, uint64_t a6)
{
  if (a2 < 100000)
  {
    if (a6 == 6)
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      return digit6(a1, a2, a3, a4, 6);
    }

    else
    {
      a3[a4] = 32;
      v7 = (a4 + 1);

      return sprintf_5fa(a1, a2, a3, v7, a5, a6);
    }
  }

  else
  {

    return nzet(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sprintf_7fa(uint64_t a1, int a2, char *a3, int a4, int a5, uint64_t a6)
{
  if (a2 < 1000000)
  {
    if (a6 == 7)
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      return digit7(a1, a2, a3, a4, 7);
    }

    else
    {
      a3[a4] = 32;
      v7 = (a4 + 1);

      return sprintf_6fa(a1, a2, a3, v7, a5, a6);
    }
  }

  else
  {

    return nzet(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sprintf_8fa(uint64_t a1, int a2, char *a3, int a4, int a5, uint64_t a6)
{
  if (a2 < 10000000)
  {
    if (a6 == 8)
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      return digit8(a1, a2, a3, a4, 8);
    }

    else
    {
      a3[a4] = 32;
      v7 = (a4 + 1);

      return sprintf_7fa(a1, a2, a3, v7, a5, a6);
    }
  }

  else
  {

    return nzet(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t asn1PE_SatelliteInfo(uint64_t a1, uint64_t *a2)
{
  v4 = Asn1Coder::EncodeInteger(a1, 1, 31, (a2[1] - *a2) >> 3);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_14:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    return v5;
  }

  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      Asn1Coder::AddBitToBuffer(a1, 0);
      v5 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        LODWORD(v11) = *(a1 + 16);
        goto LABEL_13;
      }

      v11 = Asn1Coder::EncodeInteger(a1, 0, 63, *(v8 + v9));
      if (v11)
      {
        v5 = v11;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        goto LABEL_13;
      }

      v11 = Asn1Coder::EncodeInteger(a1, 0, 255, *(v8 + v9 + 4));
      if (v11)
      {
        break;
      }

      ++v10;
      v8 = *a2;
      v9 += 8;
      if (v10 >= (a2[1] - *a2) >> 3)
      {
        return 0;
      }
    }

    v5 = v11;
    v12 = *(a1 + 8);
    v13 = *(a1 + 12);
LABEL_13:
    SuplAsn1Logger::TraceError(v11, v12, v13);
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v4) = v5;
    goto LABEL_14;
  }

  return 0;
}

uint64_t asn1PE_NavigationModel(uint64_t a1, uint64_t *a2)
{
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_13:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    return v4;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_13;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 1023, *(a2 + 1));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 167, *(a2 + 4));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 31, *(a2 + 5));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 10, *(a2 + 6));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  if (!*a2)
  {
    return 0;
  }

  v7 = asn1PE_SatelliteInfo(a1, a2 + 1);
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  return v4;
}

uint64_t asn1PE_RequestedAssistData(uint64_t a1, uint64_t *a2)
{
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
LABEL_23:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    return v4;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 1));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 2));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 3));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 4));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 5));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 6));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 7));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 8));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 9));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  if (!*a2)
  {
    return 0;
  }

  return asn1PE_NavigationModel(a1, a2 + 2);
}

uint64_t asn1PE_SUPLPOSINIT(uint64_t a1, unsigned __int8 *a2)
{
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_13:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    return v4;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_13;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[1]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_13;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[2]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_13;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[3]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_13;
  }

  v7 = asn1PE_SETCapabilities(a1, a2 + 4);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  if (*a2)
  {
    v7 = asn1PE_RequestedAssistData(a1, a2 + 4);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_13;
    }
  }

  v7 = asn1PE_LocationId(a1, a2 + 80);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  if (a2[1])
  {
    v7 = asn1PE_Position(a1, a2 + 224);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_13;
    }
  }

  if (a2[2])
  {
    v7 = asn1PE_SUPLPOS(a1, a2 + 324);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_13;
    }
  }

  if (!a2[3])
  {
    return 0;
  }

  return asn1PE_Ver(a1, a2 + 145);
}

uint64_t GncS00_04HandleInitInd()
{
  v5 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_INIT_IND\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 73, "GncS00_04HandleInitInd");
    IsLoggingAllowed = LbsOsaTrace_WriteLog(8u, __str, v2, 4, 1);
  }

  GncS04_00InitClientInstance(IsLoggingAllowed);
  return 0;
}

uint64_t GncS00_06HandleDeInitInd()
{
  v4 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_DEINIT_IND\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 73, "GncS00_06HandleDeInitInd");
    LbsOsaTrace_WriteLog(8u, __str, v1, 4, 1);
  }

  GncS04_99DeInitFGClientInstance();
  return 0;
}

uint64_t GncS00_03DefaultMessage(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FSM:MID,%x,Srce,%u,Dest,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncS00_03DefaultMessage", 520, *(a1 + 1), *a1, a1[1]);
      v4 = 2;
LABEL_6:
      LbsOsaTrace_WriteLog(8u, __str, v3, v4, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 69, "GncS00_03DefaultMessage", 517);
    v4 = 0;
    goto LABEL_6;
  }

  return 0;
}

void GncS00_01Init(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("GncS00_01Init", 77, 1, 0x10uLL);
  if (v0)
  {
    v1 = v0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_INIT_IND =>GNCS\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncS00_01Init");
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    AgpsSendFsmMsg(130, 130, 8521731, v1);
  }
}

void GncS00_02DeInit(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("GncS00_02DeInit", 98, 1, 0x10uLL);
  if (v0)
  {
    v1 = v0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_DEINIT_IND =>GNCS\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncS00_02DeInit");
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    AgpsSendFsmMsg(130, 130, 8521987, v1);
  }
}

double GncS00_07DestMissingHandler(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Msg,%x\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 73, "GncS00_07DestMissingHandler", *(a1 + 4));
    LbsOsaTrace_WriteLog(8u, __str, v4, 4, 1);
  }

  v5 = *(a1 + 4);
  if (v5 <= 8521219)
  {
    if (v5 != 8520195 && v5 != 8520963)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v5 == 8521220)
  {
LABEL_12:
    v7 = *(a1 + 24);
    if (v7)
    {
      free(v7);
    }

    *(a1 + 24) = 0;
    return result;
  }

  if (v5 != 8521475)
  {
LABEL_16:
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No handling required Msg,%x\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncS00_07DestMissingHandler", *(a1 + 4));
      LbsOsaTrace_WriteLog(8u, __str, v9, 4, 1);
    }

    return result;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    free(v6);
  }

  *(a1 + 16) = 0;
  return result;
}

uint64_t FN_SA_FPE_To_Nav_Soln(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 22) = *(a1 + 22);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 28) = *(a1 + 28);
  *(a2 + 36) = *(a1 + 36);
  v5 = *(a1 + 88);
  v6 = *(a1 + 72);
  v7 = *(a1 + 56);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 56) = v7;
  *(a2 + 72) = v6;
  *(a2 + 88) = v5;
  v8 = *(a1 + 104);
  v9 = *(a1 + 120);
  v10 = *(a1 + 136);
  *(a2 + 152) = *(a1 + 152);
  *(a2 + 136) = v10;
  *(a2 + 120) = v9;
  *(a2 + 104) = v8;
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = *(a1 + 176);
  v11 = *(a1 + 192);
  *(a2 + 208) = *(a1 + 208);
  *(a2 + 192) = v11;
  v12 = *(a1 + 216);
  *(a2 + 232) = *(a1 + 232);
  *(a2 + 216) = v12;
  *(a2 + 240) = *(a1 + 240);
  *(a2 + 256) = *(a1 + 256);
  v13 = *(a1 + 264);
  v14 = *(a1 + 296);
  *(a2 + 280) = *(a1 + 280);
  *(a2 + 296) = v14;
  *(a2 + 264) = v13;
  *(a2 + 312) = *(a1 + 312);
  *(a2 + 328) = *(a1 + 328);
  *(a2 + 344) = *(a1 + 344);
  *(a2 + 360) = *(a1 + 360);
  *(a2 + 376) = *(a1 + 376);
  *(a2 + 392) = *(a1 + 392);
  *(a2 + 408) = *(a1 + 408);
  *(a2 + 424) = *(a1 + 424);
  *(a2 + 440) = *(a1 + 440);
  *(a2 + 456) = *(a1 + 456);
  *(a2 + 472) = *(a1 + 472);
  *(a2 + 488) = *(a1 + 488);
  *(a2 + 504) = *(a1 + 504);
  *(a2 + 520) = *(a1 + 520);
  *(a2 + 536) = *(a1 + 536);
  *(a2 + 552) = *(a1 + 552);
  memcpy((a2 + 560), (a1 + 560), 0x180uLL);
  v15 = *(a1 + 944);
  *(a2 + 960) = *(a1 + 960);
  *(a2 + 944) = v15;
  v16 = *(a1 + 984);
  *(a2 + 968) = *(a1 + 968);
  *(a2 + 984) = v16;
  v17 = *(a1 + 1008);
  *(a2 + 992) = *(a1 + 992);
  *(a2 + 1008) = v17;
  return 1;
}

double Fused_Nav_SA_FPE_Init(uint64_t a1)
{
  memset(__src, 0, 288);
  memset(v5, 0, sizeof(v5));
  memset(&v4[79], 0, 48);
  memset(v4, 0, 315);
  memset(v3, 0, sizeof(v3));
  memset(&__src[150] + 1, 0, 9);
  *a1 = 0u;
  *(a1 + 14) = *&__src[151];
  *(a1 + 22) = 0;
  *(a1 + 24) = 0;
  memcpy((a1 + 25), __src, 0x120uLL);
  *(a1 + 313) = 0u;
  *(a1 + 329) = 0u;
  *(a1 + 345) = 0u;
  *(a1 + 361) = 0u;
  *(a1 + 377) = 0u;
  *(a1 + 393) = 0u;
  *(a1 + 409) = 0u;
  *(a1 + 425) = 0u;
  *(a1 + 441) = 0u;
  *(a1 + 457) = 0u;
  *(a1 + 473) = 0u;
  *(a1 + 489) = 0u;
  *(a1 + 505) = 0u;
  *(a1 + 521) = 0u;
  *(a1 + 537) = 0u;
  *(a1 + 553) = 0;
  memcpy((a1 + 554), v5, 0x198uLL);
  *(a1 + 962) = *&v4[85];
  *(a1 + 978) = *&v4[89];
  *(a1 + 986) = *&v4[79];
  *(a1 + 1002) = *&v4[83];
  *(a1 + 1010) = *&v4[72];
  *(a1 + 1021) = *(&v4[74] + 3);
  *(a1 + 1037) = 0;
  *(a1 + 1038) = 0;
  *(a1 + 1040) = 0;
  memcpy((a1 + 1041), v4, 0x120uLL);
  *(a1 + 1329) = 0u;
  *(a1 + 1345) = 0u;
  *(a1 + 1361) = 0u;
  *(a1 + 1377) = 0u;
  *(a1 + 1393) = 0u;
  *(a1 + 1409) = 0u;
  *(a1 + 1425) = 0u;
  *(a1 + 1441) = 0u;
  *(a1 + 1457) = 0u;
  *(a1 + 1473) = 0u;
  *(a1 + 1489) = 0u;
  *(a1 + 1505) = 0u;
  *(a1 + 1521) = 0u;
  *(a1 + 1537) = 0u;
  *(a1 + 1553) = 0u;
  *(a1 + 1569) = 0;
  memcpy((a1 + 1570), v3, 0x198uLL);
  *(a1 + 1978) = 0u;
  *(a1 + 1994) = 0;
  *(a1 + 2002) = 0u;
  *(a1 + 2018) = 0;
  result = 0.0;
  *(a1 + 2026) = 0u;
  *(a1 + 2042) = 0u;
  *(a1 + 2058) = 0u;
  *(a1 + 2074) = 0u;
  *(a1 + 2090) = 0u;
  *(a1 + 2106) = 0u;
  *(a1 + 2122) = 0u;
  *(a1 + 2138) = 0u;
  return result;
}

uint64_t FN_Fuse_With_SA_FPE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v68 = a1 + 1044;
  v8 = *(a2 + 2136);
  v9 = v8 % 5;
  *(a2 + 2136) = v8 + 1;
  *(a2 + v9 + 2088) = *(a1 + 1040);
  v10 = a2 + 2048;
  *(a2 + 2048 + 8 * v9) = sqrt(*(a1 + 1152) * *(a1 + 1152) + *(a1 + 1160) * *(a1 + 1160));
  v11 = a2 + 2096;
  *(a2 + 2096 + 8 * v9) = sqrt(*(a1 + 136) * *(a1 + 136) + *(a1 + 144) * *(a1 + 144));
  v12 = 0.0;
  v13 = 0.0;
  do
  {
    v14 = a2 + 8 * v6;
    if (*(a2 + v6 + 2088) == 1)
    {
      v13 = v13 + *(v14 + 2048);
      ++v7;
    }

    v12 = v12 + *(v14 + 2096);
    ++v6;
  }

  while (v6 != 5);
  v15 = v13 / v7;
  if (v7)
  {
    v16 = v15;
  }

  else
  {
    v16 = -999.0;
  }

  v17 = v12 / 5.0;
  if ((g_FPE_LogSeverity & 8) != 0)
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

    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Horizontal Errors: GNSS: calc=%f curr=%f (%f,%f,%f,%f,%f), FPE: calc=%f curr=%f ((%f,%f,%f,%f,%f) valid=(%d,%d,%d,%d,%d)", "FN_Fuse_With_SA_FPE", 297, v18, v19, v17, *(v11 + 8 * v9), *(a2 + 2096), *(a2 + 2104), *(a2 + 2112), *(a2 + 2120), *(a2 + 2128), v16, *(v10 + 8 * v9), *(a2 + 2048), *(a2 + 2056), *(a2 + 2064), *(a2 + 2072), *(a2 + 2080), *(a2 + 2088), *(a2 + 2089), *(a2 + 2090), *(a2 + 2091), *(a2 + 2092));
  }

  *(a1 + 2040) = v17;
  *(a1 + 2048) = v16;
  v20 = v16 > v17 * 4.0 && v16 > 35.0;
  v70 = v20;
  v21 = *(a1 + 1052);
  v22 = v21 == 0;
  v23 = **(a3 + 40);
  if (*(a2 + 2144) >= v23)
  {
    v25 = *(a1 + 4);
    v24 = *(a2 + 2140);
  }

  else
  {
    *(a2 + 2144) = v23;
    v24 = *(a1 + 4);
    *(a2 + 2140) = v24;
    v25 = v24;
  }

  v26 = v25 - v24;
  v27 = 40000;
  if (v26 > 599999)
  {
    v29 = 0;
    v69 = 0;
  }

  else
  {
    v28 = **(a3 + 232) - 1;
    v29 = v28 < 5;
    if (v28 >= 5)
    {
      v27 = 40000;
    }

    else
    {
      v27 = 60000;
    }

    v69 = v28 < 5;
  }

  v30 = *(a1 + 1040);
  if (v30 == 1)
  {
    if (v21)
    {
      if (*(a2 + 2032) != 1)
      {
        goto LABEL_37;
      }

      v31 = 40;
    }

    else
    {
      v31 = 0;
    }

    *(a2 + 2148) = v31;
LABEL_37:
    if (*(a2 + 2152))
    {
      v38 = *(a2 + 2148);
      if (v38 > 0x27 || *(a1 + 28) != 5)
      {
LABEL_43:
        *(a2 + 2152) = 1;
        v32 = (a2 + 2032);
        if (*(a2 + 2032))
        {
          v39 = v25 - *(a2 + 2036);
          v33 = v39 >= v27;
          v40 = *(v11 + 8 * v9);
          v34 = &unk_2A14BE000;
          if (v40 > 2000.0)
          {
            goto LABEL_49;
          }

          v41 = v39 >= v27 && (v70 || v21 == 0);
          v42 = v69;
          if (v21)
          {
            v42 = 0;
          }

          if (!v41 && !v42)
          {
LABEL_49:
            ++*(a2 + 2040);
            goto LABEL_74;
          }

          goto LABEL_31;
        }

        v43 = v69;
        if (v21)
        {
          v43 = 0;
        }

        if (v43)
        {
          *(a2 + 2036) = v25;
          v44 = v25;
          goto LABEL_55;
        }

LABEL_54:
        v44 = *(a2 + 2036);
LABEL_55:
        if (v25 - v44 < v27 || v38 <= 0x1E) && (*(a2 + 2153))
        {
          v33 = 0;
          if (!v30)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v33 = 1;
          if (!v30)
          {
            goto LABEL_68;
          }
        }

        if (v33 && !v70 && v21 || *(v11 + 8 * v9) > 2000.0)
        {
          *(a2 + 2032) = 1;
          *(a2 + 2040) = 0;
          *(a2 + 2036) = *(a1 + 1020);
          *(a2 + 2153) = 0;
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            v45 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v34 = &unk_2A14BE000;
            if (g_TCU)
            {
              v46 = *(g_TCU + 8);
            }

            else
            {
              v46 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: eventsLog = {time:%f, type:'%s', mssg:'%s'}", "FN_Fuse_With_SA_FPE", 443, v45, v46, *(a1 + 1024), "SelectionEvt", "Changed to FPE");
            goto LABEL_74;
          }

LABEL_69:
          v34 = &unk_2A14BE000;
          goto LABEL_74;
        }

LABEL_68:
        ++*(a2 + 2040);
        goto LABEL_69;
      }

      ++v38;
    }

    else
    {
      v38 = 40;
    }

    *(a2 + 2148) = v38;
    goto LABEL_43;
  }

  *(a2 + 2148) = 0;
  *(a2 + 2152) = v30;
  v32 = (a2 + 2032);
  if (*(a2 + 2032) != 1)
  {
    v38 = 0;
    goto LABEL_54;
  }

  v33 = v25 - *(a2 + 2036) >= v27;
  v34 = &unk_2A14BE000;
LABEL_31:
  *(a2 + 2032) = 0;
  *(a2 + 2040) = 0;
  *(a2 + 2036) = v25;
  *(a2 + 2153) = v22;
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v35 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v36 = v34[328];
    if (v36)
    {
      v37 = *(v36 + 8);
    }

    else
    {
      v37 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: eventsLog = {time:%f, type:'%s', mssg:'%s'}", "FN_Fuse_With_SA_FPE", 399, v35, v37, *(a1 + 8), "SelectionEvt", "Changed to GNSS");
  }

LABEL_74:
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v47 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v48 = v34[328];
    if (v48)
    {
      v49 = *(v48 + 8);
    }

    else
    {
      v49 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Selection parameters: FpeValid=%d GnssValid=%d isSwitchAllowed=%d isGnssBetter=%d isSolConfNone:=%d isBenign:=%d GnssPosFixType=%d FpeQboostSvContCnt=%d", "FN_Fuse_With_SA_FPE", 452, v47, v49, *(a1 + 1040), *(a1 + 24), v33, v70, v21 == 0, v69, *(a1 + 28), *(a2 + 2148));
  }

  *(a1 + 2035) = v29;
  *(a1 + 2033) = v70;
  *(a1 + 2034) = v22;
  *(a1 + 2032) = v33;
  if (*v32 == 1)
  {
    *(a2 + 24) = *(a1 + 1040);
    *(a2 + 28) = *v68;
    *(a2 + 36) = *(a1 + 1052);
    v50 = *(a1 + 1056);
    v51 = *(a1 + 1072);
    v52 = *(a1 + 1088);
    *(a2 + 88) = *(a1 + 1104);
    *(a2 + 72) = v52;
    *(a2 + 56) = v51;
    *(a2 + 40) = v50;
    v53 = *(a1 + 1120);
    v54 = *(a1 + 1136);
    v55 = *(a1 + 1152);
    *(a2 + 152) = *(a1 + 1168);
    *(a2 + 136) = v55;
    *(a2 + 120) = v54;
    *(a2 + 104) = v53;
    *(a2 + 160) = *(v68 + 132);
    *(a2 + 176) = *(v68 + 148);
    v56 = *(a1 + 1208);
    *(a2 + 208) = *(a1 + 1224);
    *(a2 + 192) = v56;
    v57 = *(a1 + 1232);
    *(a2 + 232) = *(a1 + 1248);
    *(a2 + 216) = v57;
    *(a2 + 240) = *(v68 + 212);
    *(a2 + 256) = *(a1 + 1272);
    *(a2 + 320) = *(a1 + 1336);
    *(a2 + 336) = *(a1 + 1352);
    *(a2 + 352) = *(a1 + 1368);
    *(a2 + 368) = *(a1 + 1384);
    *(a2 + 384) = *(a1 + 1400);
    *(a2 + 400) = *(a1 + 1416);
    *(a2 + 416) = *(a1 + 1432);
    *(a2 + 432) = *(a1 + 1448);
    *(a2 + 448) = *(a1 + 1464);
    *(a2 + 464) = *(a1 + 1480);
    *(a2 + 480) = *(a1 + 1496);
    *(a2 + 496) = *(a1 + 1512);
    *(a2 + 512) = *(a1 + 1528);
    *(a2 + 528) = *(a1 + 1544);
    *(a2 + 544) = *(a1 + 1560);
    *(a2 + 316) = *(a1 + 1332);
    *(a2 + 332) = *(a1 + 1348);
    *(a2 + 348) = *(a1 + 1364);
    *(a2 + 364) = *(a1 + 1380);
    *(a2 + 380) = *(a1 + 1396);
    *(a2 + 396) = *(a1 + 1412);
    *(a2 + 412) = *(a1 + 1428);
    *(a2 + 428) = *(a1 + 1444);
    *(a2 + 444) = *(a1 + 1460);
    *(a2 + 460) = *(a1 + 1476);
    *(a2 + 476) = *(a1 + 1492);
    *(a2 + 492) = *(a1 + 1508);
    *(a2 + 508) = *(a1 + 1524);
    *(a2 + 524) = *(a1 + 1540);
    *(a2 + 540) = *(a1 + 1556);
    if ((g_FPE_LogSeverity & 8) != 0)
    {
      mach_continuous_time();
      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f publish FPE solution");
    }
  }

  else if ((g_FPE_LogSeverity & 8) != 0)
  {
    mach_continuous_time();
    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f publish GNSS solution");
  }

  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v58 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v59 = v34[328];
    v60 = v59 ? *(v59 + 8) : 0.0;
    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: SEL = {estPos:[%f %.12f %.12f %f], estVel:[%.12f %.12f %f], estHeading:%f, valid:%u}", "FN_Fuse_With_SA_FPE", 543, v58, v60, *(a2 + 8), *(a2 + 192), *(a2 + 200), *(a2 + 208), *(a2 + 216), *(a2 + 224), *(a2 + 232), *(a2 + 256), *(a2 + 24));
    if ((g_FPE_LogSeverity & 8) != 0)
    {
      v61 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v62 = v34[328];
      v63 = v62 ? *(v62 + 8) : 0.0;
      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: sel_syncedFields = {sel:%u, isSwitchAllowed:%u, isGnssBetter:%u, isSolConfNone:%u, isBenign:%u, fusedError:%f, gnssError:%f}", "FN_Fuse_With_SA_FPE", 548, v61, v63, *v32, v33, v70, v21 == 0, v69, v16, v17);
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        v64 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v65 = v34[328];
        if (v65)
        {
          v66 = *(v65 + 8);
        }

        else
        {
          v66 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: KFSOL = {estPos:[%f %.12f %.12f %f], valid:%u, speed:%f, heading:%f, posConf:%u}", "FN_Fuse_With_SA_FPE", 554, v64, v66, *(a1 + 8), *(a1 + 192), *(a1 + 200), *(a1 + 208), *(a1 + 24), *(a1 + 240), *(a1 + 256), *(a1 + 36));
      }
    }
  }

  return 1;
}

double send_position_response(unsigned int *a1, int a2, char a3, char a4)
{
  v109 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 68, "send_position_response");
    LbsOsaTrace_WriteLog(0x13u, __str, v9, 5, 1);
  }

  T_GNSS_POSITION_s::T_GNSS_POSITION_s(&__s);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 68, "ConvertPositionResult");
    LbsOsaTrace_WriteLog(0x13u, __str, v11, 5, 1);
  }

  memset_s(&__s, 0x70uLL, 0, 0x70uLL);
  v12 = 0;
  if (a3)
  {
    __s = 5;
    v12 = 1;
  }

  if (a1)
  {
    if (a1[5] != 1)
    {
      LOBYTE(v17) = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Not Enough Satellites\n", (*&g_MacClockTicksToMsRelation * v20), "PSP", 73, "ConvertPositionResult");
        LbsOsaTrace_WriteLog(0x13u, __str, v21, 4, 1);
        LOBYTE(v17) = 0;
      }

      goto LABEL_109;
    }

    __s = 0;
    v13 = a1[21];
    if (v13 == -1)
    {
      v13 = 0;
    }

    else if (!a2)
    {
      v13 %= 0xDBBA00u;
    }

    v87 = v13;
    v22 = a1[6];
    if (v22 == 1)
    {
      v23 = 0;
    }

    else
    {
      v23 = -1;
    }

    if (v22 == 2)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    v89 = v24;
    v88 = *(a1 + 88);
    v25 = a1[23];
    v101 = 4;
    v102 = v25;
    v103 = *(a1 + 48);
    v104 = *(a1 + 98);
    v105 = 1;
    v26 = a1[26];
    if (v26 - 1 <= 0x3F)
    {
      if (((1 << (v26 - 1)) & 0x800000008000808ALL) != 0)
      {
        goto LABEL_27;
      }

      if (v26 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v43 = mach_continuous_time();
          v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Time Id received is GPS\n", (*&g_MacClockTicksToMsRelation * v43), "PSP", 73, "ConvertTimeRequested");
          v30 = 1;
          LbsOsaTrace_WriteLog(0x13u, __str, v44, 4, 1);
        }

        else
        {
          v30 = 1;
        }

LABEL_31:
        v106 = v30;
        v107 |= 1u;
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v31 = mach_continuous_time();
          v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnssMask,%u\n", (*&g_MacClockTicksToMsRelation * v31), "PSP", 73, "ConvertPositionResult", *(a1 + 5));
          LbsOsaTrace_WriteLog(0x13u, __str, v32, 4, 1);
        }

        v17 = *(a1 + 5) & 1 | (2 * ((*(a1 + 5) >> 7) & 1));
        v33 = a1[7];
        if (v33 <= 3)
        {
          switch(v33)
          {
            case 0:
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v45 = mach_continuous_time();
                v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Shape type,%u\n", (*&g_MacClockTicksToMsRelation * v45), "PSP", 69, "ConvertPositionResult", 515, a1[7]);
                LbsOsaTrace_WriteLog(0x13u, __str, v46, 0, 1);
              }

              if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
              {
                goto LABEL_109;
              }

              bzero(__str, 0x410uLL);
              v47 = mach_continuous_time();
              v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v47), "PSP", 68, "ConvertPositionResult");
              v49 = 5;
              goto LABEL_108;
            case 1:
              if (a1[8] == 2)
              {
                v65 = a1[9] | 0x800000;
              }

              else
              {
                v65 = a1[9];
              }

              v66 = a1[10];
              if (!((v66 + 0x800000) >> 24) && !HIBYTE(v65))
              {
                v90 = 0;
                v91 = (v65 & 0xFF800000) != 0;
                v92 = v65 & 0x7FFFFF;
                v93 = v66;
                goto LABEL_109;
              }

              goto LABEL_105;
            case 2:
              if (a1[8] == 2)
              {
                v37 = a1[9] | 0x800000;
              }

              else
              {
                v37 = a1[9];
              }

              v38 = a1[10];
              if (!((v38 + 0x800000) >> 24) && !HIBYTE(v37))
              {
                v39 = *(a1 + 46);
                if ((v39 & 0x80000000) == 0)
                {
                  v90 = 1;
                  v91 = (v37 & 0xFF800000) != 0;
                  v92 = v37 & 0x7FFFFF;
                  v93 = v38;
                  v94 = v39;
                  v100 = *(a1 + 57);
                  goto LABEL_109;
                }
              }

              goto LABEL_105;
          }
        }

        else if (v33 > 15)
        {
          if (v33 == 16)
          {
            if (a1[8] == 2)
            {
              v57 = a1[9] | 0x800000;
            }

            else
            {
              v57 = a1[9];
            }

            v58 = *(a1 + 22);
            if (a1[13] == 2)
            {
              v58 |= 0x8000u;
            }

            v59 = a1[10];
            if (!((v59 + 0x800000) >> 24) && !HIBYTE(v57))
            {
              v60 = *(a1 + 46);
              if ((v60 & 0x80000000) == 0)
              {
                v61 = *(a1 + 47);
                if ((v61 & 0x80000000) == 0)
                {
                  v62 = *(a1 + 48);
                  if (v62 <= 0xB3)
                  {
                    v63 = *(a1 + 56);
                    if ((v63 & 0x80000000) == 0)
                    {
                      v64 = *(a1 + 57);
                      if (v64 < 0x65)
                      {
                        v90 = 9;
                        v91 = (v57 & 0xFF800000) != 0;
                        v97 = v58 < 0;
                        v92 = v57 & 0x7FFFFF;
                        v93 = v59;
                        v98 = v58 & 0x7FFF;
                        v94 = v60;
                        v95 = v61;
                        v96 = v62;
                        v99 = v63;
                        v100 = v64;
                        goto LABEL_109;
                      }
                    }
                  }
                }
              }
            }

            goto LABEL_105;
          }

          if (v33 == 32)
          {
            if (a1[8] == 2)
            {
              v40 = a1[9] | 0x800000;
            }

            else
            {
              v40 = a1[9];
            }

            v41 = a1[10];
            if (!((v41 + 0x800000) >> 24) && !HIBYTE(v40))
            {
              v42 = *(a1 + 57);
              if (v42 < 0x65)
              {
                v90 = 10;
                v91 = (v40 & 0xFF800000) != 0;
                v92 = v40 & 0x7FFFFF;
                v93 = v41;
                v100 = v42;
                goto LABEL_109;
              }
            }

            goto LABEL_105;
          }
        }

        else
        {
          if (v33 == 4)
          {
            if (a1[8] == 2)
            {
              v51 = a1[9] | 0x800000;
            }

            else
            {
              v51 = a1[9];
            }

            v52 = a1[10];
            if (!((v52 + 0x800000) >> 24) && !HIBYTE(v51))
            {
              v53 = *(a1 + 46);
              if ((v53 & 0x80000000) == 0)
              {
                v54 = *(a1 + 47);
                if ((v54 & 0x80000000) == 0)
                {
                  v55 = *(a1 + 48);
                  if (v55 <= 0xB3)
                  {
                    v56 = *(a1 + 57);
                    if (v56 < 0x65)
                    {
                      v90 = 3;
                      v91 = (v51 & 0xFF800000) != 0;
                      v92 = v51 & 0x7FFFFF;
                      v93 = v52;
                      v94 = v53;
                      v95 = v54;
                      v96 = v55;
                      v100 = v56;
                      goto LABEL_109;
                    }
                  }
                }
              }
            }

            goto LABEL_105;
          }

          if (v33 == 8)
          {
            if (a1[8] == 2)
            {
              v34 = a1[9] | 0x800000;
            }

            else
            {
              v34 = a1[9];
            }

            v35 = a1[10];
            if (!((v35 + 0x800000) >> 24) && !HIBYTE(v34))
            {
              v90 = 8;
              v36 = *(a1 + 22);
              if (a1[13] == 2)
              {
                v36 |= 0x8000u;
              }

              v91 = (v34 & 0xFF800000) != 0;
              v97 = v36 < 0;
              v92 = v34 & 0x7FFFFF;
              v93 = v35;
              v98 = v36 & 0x7FFF;
              goto LABEL_109;
            }

LABEL_105:
            if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              goto LABEL_109;
            }

            bzero(__str, 0x410uLL);
            v67 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v50 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx latitude,%u,longitude,%d\n", v67);
            goto LABEL_107;
          }
        }

        if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          goto LABEL_109;
        }

        bzero(__str, 0x410uLL);
        v77 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v50 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Shape type,%u\n", v77);
LABEL_107:
        v48 = v50;
        v49 = 0;
LABEL_108:
        LbsOsaTrace_WriteLog(0x13u, __str, v48, v49, 1);
LABEL_109:
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v68 = mach_continuous_time();
          v69 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v68), "PSP", 68, "ConvertPositionResult");
          LbsOsaTrace_WriteLog(0x13u, __str, v69, 5, 1);
        }

        goto LABEL_111;
      }
    }

    if (v26)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        goto LABEL_30;
      }

      bzero(__str, 0x410uLL);
      v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v28 = 515;
      goto LABEL_29;
    }

LABEL_27:
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
LABEL_30:
      v30 = 5;
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v28 = 770;
LABEL_29:
    v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Time Id,%u\n", v27, "PSP", 69, "ConvertTimeRequested", v28, v26);
    LbsOsaTrace_WriteLog(0x13u, __str, v29, 0, 1);
    goto LABEL_30;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "PSP", 69, "ConvertPositionResult", 513);
    LbsOsaTrace_WriteLog(0x13u, __str, v15, 0, 1);
  }

  LOBYTE(v17) = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "PSP", 68, "ConvertPositionResult");
    LbsOsaTrace_WriteLog(0x13u, __str, v19, 5, 1);
    LOBYTE(v17) = 0;
  }

LABEL_111:
  v83 = 255;
  v81 = 0;
  v82 = 0;
  v84 = &p_s;
  p_s = &__s;
  v79 = v12;
  v80 = v17;
  v70 = *a1;
  v85 = *a1;
  v71 = a1[5];
  if (*(a1 + 4))
  {
    if (v71 == 1)
    {
      v72 = 30;
    }

    else if (v71 == 9)
    {
      v72 = 3;
    }

    else if (__s == 5)
    {
      v72 = 19;
    }

    else
    {
      v72 = 31;
    }

    SendStatusReport(v70, v72, a1, 0, 0, 255);
    if (a2 == 2)
    {
      SuplLppExecutePosRsp(&v83);
    }

    else if (a2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v73 = mach_continuous_time();
        v74 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol\n", (*&g_MacClockTicksToMsRelation * v73), "PSP", 69, "send_position_response", 770);
        LbsOsaTrace_WriteLog(0x13u, __str, v74, 0, 1);
      }
    }

    else
    {
      if (a4)
      {
        HIBYTE(v83) = 2;
      }

      SuplRrlpExecutePosRsp(&v83);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v75 = mach_continuous_time();
      v76 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v75), "PSP", 68, "send_position_response");
      LbsOsaTrace_WriteLog(0x13u, __str, v76, 5, 1);
    }
  }

  else if (v71 == 1)
  {
    return SendStatusReport(v70, 30, a1, 0, 0, 255);
  }

  return result;
}