void sub_299524078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(gnss::GnssAdaptDevice *this)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN4gnss15GnssAdaptDevice24Ga00_00GetDeviceInstanceEv_block_invoke;
  v3[3] = &unk_29EF26C10;
  v3[4] = &v4;
  dispatch_sync(g_GnssGlobalStaticQueue, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t gnss::GnssAdaptDevice::Ga00_01GnssInit(gnss::GnssAdaptDevice *this)
{
  v27 = *MEMORY[0x29EDCA608];
  if (!GNS_Initialize())
  {
    return 0;
  }

  if (!gnss::GnssAdaptDevice::Ga01_00SetMSBMandatoryMask(this) && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetMSBMandatoryMask\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 69, "Ga00_01GnssInit", 257);
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 0, 1);
  }

  if (!gnss::GnssAdaptDevice::Ga01_01SetMSAMandatoryMask(this) && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetMSAMandatoryMask\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga00_01GnssInit", 257);
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
  }

  if (GNS_EaInitialize(gnss::GnssAdaptDevice::Ga03_00RegisterGnsEaStatusResponse) != 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EaInit Resp,%u\n", v16);
      goto LABEL_23;
    }

    return 0;
  }

  if (GNS_SenInitialize(gnss::GnssAdaptDevice::Ga02_00RegisterGnsSensStatusResponse) != 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SensInit Resp,%u\n", v17);
      goto LABEL_23;
    }

    return 0;
  }

  if (GNS_EeInitialize(gnss::GnssAdaptDevice::Ga04_00RegisterGnsEeStatusResponse) != 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EeInit Resp,%u\n", v18);
      goto LABEL_23;
    }

    return 0;
  }

  v24 = 0;
  if ((gnss::GnssAdaptDevice::Ga05_04GetPlatformType(this, &v24) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid Pltfm Type\n");
      goto LABEL_23;
    }

    return 0;
  }

  if (Gnm_HwInitialize(v24, 1, gnss::GnssAdaptDevice::Ga00_07RegisterHWStatusInd, gnss::GnssAdaptDevice::Ga05_06RegBbResetCallback))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InitStatusCb Resp,%u\n", v15);
LABEL_23:
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
      return 0;
    }

    return 0;
  }

  if (Gnm_RegisterApiStatusCb(gnss::GnssAdaptDevice::Ga07_17RegisterGnmStatusResponse))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ApiStatusCb Resp,%u\n", v19);
    goto LABEL_23;
  }

  if (Gnm_RegisterPowerReportCb(gnss::GnssAdaptDevice::Ga01_02PowerReportCB))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PowerRepCb Resp,%u\n", v20);
    goto LABEL_23;
  }

  if (!gnssOsa_SemInit(this + 129, 0))
  {
    snprintf(v25, 0x400uLL, "ASSERT,%s,%d,%s", "Ga00_01GnssInit", 521, "Semaphore creation failed");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v13), "OSA", 69, "Ga00_01GnssInit", v25);
      LbsOsaTrace_WriteLog(0xEu, __str, v14, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("Ga00_01GnssInit", "ga00GnssDevice.cpp", 521, "false && Semaphore creation failed");
  }

  if (gnss::GnssAdaptDevice::getHalExtensions(this) && GNS_XOSetCallback(gnss::GnssAdaptDevice::Ga05_00RegisterGnsXoCallback) != 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XoInit Resp,%u\n", v22);
    goto LABEL_23;
  }

  if (GNS_CpInitialize(gnss::GnssAdaptDevice::Ga10_13RegisterGnsCpStatusResponse) != 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpInit,%u\n", v21);
    goto LABEL_23;
  }

  if (GNS_FtaInitialize(gnss::GnssAdaptDevice::Ga10_14RegisterGnsFtaStatusResponse) != 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FtaInit Resp,%u\n", v23);
    goto LABEL_23;
  }

  if (GNS_EcallInitialize(gnss::GnssAdaptDevice::Ga10_05CPECallAsyncEventCB) != 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EcallInit\n");
    goto LABEL_23;
  }

  if ((gnss::GnssAdaptDevice::Ga11_00InitializeSUPL_GNS_CBs(this) & 1) == 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplInit\n");
    goto LABEL_23;
  }

  Logger = gnss::GnssAdaptDevice::getLogger(*(this + 3));
  v10 = (*(*Logger + 64))(Logger);
  gnss::GnssAdaptDevice::Ga01_07SetSecondaryLogConfig(this, v10);
  v7 = 1;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 1u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(getVersionString::a_Version, 0x200uLL, "host,%s,FW,%s", "1e996c9bd release/1942", ga_HwVersion);
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GNSS Version,%s,Init Success\n", v11, "ADP", 65, "Ga00_01GnssInit", getVersionString::a_Version);
    v7 = 1;
    LbsOsaTrace_WriteLog(0x18u, __str, v12, 1, 1);
  }

  return v7;
}

void gnss::GnssAdaptDevice::Ga00_07RegisterHWStatusInd(gnss::GnssAdaptDevice *a1, int a2, char *a3)
{
  v5 = a1;
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {

    gnss::GnssAdaptDevice::Ga07_05HandleGnssHwStatusInd(DeviceInstance, v5, a2, a3);
  }
}

uint64_t ___ZN4gnss15GnssAdaptDevice23Ga00_04HandleDeviceInitENS_17e_Ga_GnssInitTypeE_block_invoke(uint64_t a1)
{
  v1 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v1, 8);
}

uint64_t gnss::GnssAdaptDevice::Ga00_10GnssSetHwVersionInfo(gnss::GnssAdaptDevice *a1, const char *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v6 = 0;
  result = gnss::GnssAdaptDevice::Ga05_04GetPlatformType(a1, &v6);
  if (v6 == 1)
  {
    return snprintf(ga_HwVersion, 0x200uLL, "CP Fw,%s,Patch,%s,date,%s,time,%s ME Fw,%s,Patch,%s,date,%s,time,%s", a2 + 6, a2 + 26, a2 + 46, a2 + 66, a2 + 86, a2 + 106, a2 + 126, a2 + 146);
  }

  if (v6)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid Pltfm,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga00_10GnssSetHwVersionInfo", 770, v6);
      return LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
    }
  }

  else
  {
    strcpy(ga_HwVersion, "8cd9669 CP 0.0.20 b673 3f12 ME 0.0.76 0882 106e CFG 0c27");
  }

  return result;
}

uint64_t newGnssDevice(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*a1)
  {
    operator new();
  }

  return 0;
}

void sub_299525270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::__function::__value_func<void ()(gnss::Emergency::Supl::SessionStatus const&)>::~__value_func[abi:ne200100](v21 + 776);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Supl::WlanMeasurementRequest const&)>::~__value_func[abi:ne200100](v21 + 744);
  std::__function::__value_func<gnss::Result ()(void)>::~__value_func[abi:ne200100](v21 + 712);
  std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::~__value_func[abi:ne200100](v21 + 680);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](v21 + 648);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](v21 + 616);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](v21 + 584);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](v21 + 552);
  std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](v21 + 520);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v18 + 696);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v21 + 456);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v18 + 632);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v21 + 392);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v21 + 360);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v21 + 328);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v21 + 296);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v21 + 264);
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v21 + 232);
  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](v21 + 200);
  std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](v21 + 168);
  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v21 + 136);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v21 + 104);
  std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::destroy(v23, *(v18 + 264));
  std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::destroy(v22, *(v18 + 240));
  std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::destroy(v21, *(v18 + 216));
  std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::destroy(v20, *(v18 + 192));
  v26 = *(v18 + 152);
  if (v26)
  {
    *(v18 + 160) = v26;
    operator delete(v26);
  }

  v27 = *v24;
  if (*v24)
  {
    *(v18 + 136) = v27;
    operator delete(v27);
  }

  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v21 - 152);
  v28 = *(v18 + 48);
  *(v18 + 48) = 0;
  if (v28)
  {
    (*(*v28 + 48))(v28);
  }

  v29 = *(v18 + 40);
  *(v18 + 40) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = *(v18 + 32);
  *(v18 + 32) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *(v18 + 24);
  *(v18 + 24) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = *(v18 + 16);
  *(v18 + 16) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(v18 + 8);
  *(v18 + 8) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  MEMORY[0x29C29EB20](v18, v19);
  _Unwind_Resume(a1);
}

uint64_t gnss::Device::injectSphericalHarmonicIonosphereModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return std::function<void ()(gnss::Result)>::operator()(a4, 7);
}

uint64_t gnss::Device::setEmergencyConfig(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::Device::startEmergencyPositionRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::Device::setSuplInit(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

void std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::destroy(a1, a2[1]);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a2 + 5));

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::destroy(a1, a2[1]);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a2 + 9));
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a2 + 5));

    operator delete(a2);
  }
}

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::SummaryReport const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::PositionReport const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::AssistanceNeededReport const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReport const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<gnss::Result ()(gnss::Emergency::Cplane::MeasurementReportWithEstimate const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(gnss::Emergency::Cplane::CellFTAssistanceRequest const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,8ul>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t KFSt_Meas_Update(unsigned int a1, unsigned int a2, double *a3, double *a4, _WORD *a5, double a6)
{
  v18[33] = *MEMORY[0x29EDCA608];
  if (*(a3 + 1) >= 1 && (*(a3 + 16) = 0, *a3 == 1))
  {
    v9 = a3[4];
    v10 = a6 - a3[3];
    memset(v15, 0, sizeof(v15));
    v14 = 0.0;
    a3[6] = v10;
    v16 = 0;
    *(v15 + a1) = 0x3FF0000000000000;
    *(v15 + a2) = v10;
    umeas(a4, a2, v9, v15, v18, v17, &v14, a3[7]);
    v11 = v14;
    if (v14 <= 0.0)
    {
      v12 = 0;
      *a3 = 0;
      *(a3 + 16) = 1;
      ++*a5;
    }

    else
    {
      v11 = a3[4] * (v14 * (v18[a2] * v18[a2]));
      v12 = *a3;
    }

    a3[8] = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t Taylor_sin_cos(uint64_t result, int *a2, int *a3)
{
  if (result < 1)
  {
    if (result >= -51472)
    {
      v12 = (1029 - result) / 0x80Bu;
      v13 = g_Table_sinQ15[v12];
      v9 = g_Table_sinQ15[25 - v12];
      v6 = result + ((16471 * v12) >> 3);
      v4 = -v13;
      goto LABEL_9;
    }

    v7 = (result + 103973) / 2059;
    v8 = g_Table_sinQ15[v7];
    v5 = g_Table_sinQ15[25 - v7];
    v6 = result + 103973 - ((16471 * v7) >> 3) - 1029;
    v4 = -v8;
  }

  else
  {
    if (result <= 0xC910)
    {
      v10 = (result + 1029) / 0x80Bu;
      v4 = g_Table_sinQ15[v10];
      v11 = 16471 * v10;
      v9 = g_Table_sinQ15[25 - v10];
      v6 = result - (v11 >> 3);
      goto LABEL_9;
    }

    v3 = (103973 - result) / 2059;
    v4 = g_Table_sinQ15[v3];
    v5 = g_Table_sinQ15[25 - v3];
    v6 = result + ((16471 * v3) >> 3) - 102944;
  }

  v9 = -v5;
LABEL_9:
  v14 = (v6 * v6) >> 16;
  *a2 = v4 + ((v6 * v9 - v14 * v4) >> 15);
  *a3 = v9 - ((v6 * v4 + v14 * v9) >> 15);
  return result;
}

const char *formatAndWriteData(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = *MEMORY[0x29EDCA608];
  TCU_UpdateTime(a4, *a1, a1[4], *(a1 + 20), *(a1 + 11), a1[1], *(a1 + 1));
  *(a3 + 16) = 2;
  v7 = *(a4 + 40);
  *(a3 + 8) = v7;
  Set_Mat_Size(3, (a3 + 152), 3, 1);
  *(a3 + 160) = *(a1 + 104);
  *(a3 + 168) = *(a1 + 105);
  *(a3 + 176) = *(a1 + 106);
  Set_Mat_Size(3, (a3 + 24), 3, 1);
  *(a3 + 32) = *(a1 + 16);
  *(a3 + 40) = *(a1 + 17);
  *(a3 + 48) = *(a1 + 18);
  Set_Mat_Size(3, (a3 + 56), 3, 1);
  *(a3 + 64) = *(a1 + 19);
  *(a3 + 72) = *(a1 + 20);
  *(a3 + 80) = *(a1 + 21);
  Set_Mat_Size(3, (a3 + 184), 3, 1);
  *(a3 + 192) = *(a1 + 107);
  *(a3 + 200) = *(a1 + 108);
  *(a3 + 208) = *(a1 + 109);
  v8 = *(a1 + 784) == 1 && *(a1 + 25) < 200.0;
  *(a3 + 216) = v8;
  *(a3 + 88) = *(a1 + 12);
  *(a3 + 96) = *(a1 + 13);
  *(a3 + 104) = *(a1 + 14);
  *(a3 + 136) = *(a1 + 15);
  *(a3 + 144) = a1[6] * 0.001 * 299792458.0;
  memset(v55, 0, sizeof(v55));
  ud2var((a1 + 64), 0xBu, 1, 3u, v55);
  *(a3 + 112) = *v55;
  *(a3 + 128) = *&v55[16];
  *(a3 + 217) = *(a1 + 1080);
  *(a3 + 219) = *(a1 + 1096);
  *(a3 + 218) = *(a1 + 1176);
  v48 = MeasSyncher_applyNewRecord(1u, (a3 + 8), a2);
  v52 = 0;
  v53 = 0;
  v54 = 0;
  if (*(a3 + 4) == 1)
  {
    v9 = a1[1] - *a3;
    v10 = 1.0;
    if (v9 != 1000)
    {
      v11 = 1000 - v9;
      if (v9 - 1000 >= 0)
      {
        v11 = v9 - 1000;
      }

      if (v11 > 0x1F4)
      {
        v10 = -1.0;
        if ((g_FPE_LogSeverity & 4) != 0)
        {
          v46 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v47 = *(g_TCU + 8);
          }

          else
          {
            v47 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f ttick_diff=%d very far from 1000ms, ignoring DR", "DR_norm_factor", 309, v46, v47, v9);
        }
      }

      else
      {
        if ((g_FPE_LogSeverity & 4) != 0)
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

          LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f ttick_diff=%d close to 1000ms, normalizing DR", "DR_norm_factor", 303, v12, v13, v9);
        }

        v10 = 1000.0 / v9;
      }
    }
  }

  else
  {
    *(a3 + 4) = 1;
    v10 = 1.0;
  }

  v14 = 0;
  v51 = 0;
  *a3 = a1[1];
  v15 = *(a4 + 40);
  v16 = 48;
  v50 = 1;
  do
  {
    v17 = &a1[v14];
    v18 = a1[v14 + 302];
    if (((Is_Legal(v18) ^ (v18 == 0)) & 1) == 0 && (g_FPE_LogSeverity & 2) != 0)
    {
      v19 = mach_continuous_time();
      if (g_TCU)
      {
        v20 = *(g_TCU + 8);
      }

      else
      {
        v20 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f %s", "constructSvMeasurements", 348, (*&g_MacClockTicksToMsRelation * v19), v20, "c legality check is different than matlab legality check!");
      v18 = v17[302];
    }

    if (Is_Legal(v18))
    {
      ++*(&v51 + v18);
      v21 = &a1[v14];
      if (*&a1[v14 + 322] > 0.0)
      {
        v22 = (v18 < 6u) & (0x2Eu >> v18);
        if (*(v21 + 163) <= 0.0)
        {
          if (*&a1[v14 + 324] <= 0.0)
          {
            LOBYTE(v22) = 0;
          }

          if (v22)
          {
LABEL_28:
            v65 = 0u;
            memset(v64, 0, sizeof(v64));
            memset(v63, 0, sizeof(v63));
            v62 = 0u;
            v61 = 0u;
            v60 = 0u;
            v59 = 0u;
            v58 = 0u;
            v57 = 0u;
            v56 = 0u;
            *&v55[8] = 0u;
            *v55 = v15;
            v23 = *(a3 + 224);
            *&v55[8] = 1;
            DWORD2(v62) = BYTE2(v18);
            Set_Mat_Size(3, v63, 3, 1);
            *&v63[1] = *&a1[v14 + 304];
            v63[3] = *&a1[v14 + 308];
            Set_Mat_Size(3, v64, 3, 1);
            *&v64[1] = *&a1[v14 + 310];
            v64[3] = *&a1[v14 + 314];
            Set_Mat_Const(2, 1u, 6, &v55[16], 0.0);
            *&v56 = *&a1[v14 + 316];
            Set_Mat_Const(2, 1u, 6, &v59, 0.0);
            v24 = *(v21 + 161);
            if (v24 < 0.0)
            {
              if (g_FPE_LogSeverity)
              {
                v25 = mach_continuous_time();
                if (g_TCU)
                {
                  v26 = *(g_TCU + 8);
                }

                else
                {
                  v26 = 0.0;
                }

                LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "svMeasSetData", 236, (*&g_MacClockTicksToMsRelation * v25), v26, v24);
              }

              g_FPE_AssertFlag = 1;
              v24 = 1.0;
            }

            *(&v59 + 1) = sqrt(v24);
            if (v10 > 0.0 && (a1[v14 + 328] & 0x10000) != 0)
            {
              v27 = -(*&a1[v14 + 320] * v10);
              v28 = v10 * (v10 * *(v21 + 163));
LABEL_41:
              if (v28 < 0.0)
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

                  LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "svMeasSetData", 260, (*&g_MacClockTicksToMsRelation * v29), v30, v28);
                }

                g_FPE_AssertFlag = 1;
                v28 = 1.0;
              }
            }

            else
            {
              v27 = *&a1[v14 + 318];
              if ((a1[v14 + 328] & 0x100) != 0)
              {
                v28 = *&a1[v14 + 324];
                goto LABEL_41;
              }

              if ((g_FPE_LogSeverity & 4) != 0)
              {
                v31 = mach_continuous_time();
                if (g_TCU)
                {
                  v32 = *(g_TCU + 8);
                }

                else
                {
                  v32 = 0.0;
                }

                LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f %s", "svMeasSetData", 255, (*&g_MacClockTicksToMsRelation * v31), v32, "DO and DR are not valid");
              }

              v28 = 100000000.0;
            }

            if (v23 <= 7 && ((1 << v23) & 0xC1) != 0)
            {
              v33 = sqrt(v28) * 10.0;
            }

            else
            {
              v33 = sqrt(v28) * 5.0;
            }

            v34 = 1.0;
            if (v33 > 1.0)
            {
              v34 = v33;
            }

            *(&v56 + 1) = -v27;
            *&v60 = v34;
            v35 = *(v17 + 1208);
            if (v35 > 3)
            {
              if (v35 == 4)
              {
                HIDWORD(v62) = 3;
                goto LABEL_75;
              }

              if (v35 != 5)
              {
                if (v35 != 6)
                {
                  goto LABEL_68;
                }

                goto LABEL_76;
              }

              v36 = 4;
            }

            else
            {
              if (v35 == 1)
              {
                HIDWORD(v62) = 0;
                goto LABEL_75;
              }

              if (v35 != 2)
              {
                if (v35 == 3)
                {
                  v36 = 2;
                  goto LABEL_74;
                }

LABEL_68:
                HIDWORD(v62) = 7;
                if ((g_FPE_LogSeverity & 1) == 0)
                {
                  g_FPE_AssertFlag = 1;
                  goto LABEL_75;
                }

                v37 = mach_continuous_time();
                if (g_TCU)
                {
                  v38 = *(g_TCU + 8);
                }

                else
                {
                  v38 = 0.0;
                }

                LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Unknown constellation %d", "svMeasSetConstellation", 200, (*&g_MacClockTicksToMsRelation * v37), v38, *(v17 + 1208));
                g_FPE_AssertFlag = 1;
                if (HIDWORD(v62) == 5)
                {
LABEL_76:
                  ++v51;
                  goto LABEL_77;
                }

LABEL_75:
                v50 &= MeasSyncher_applyNewRecord(1u, v55, a2);
                goto LABEL_76;
              }

              v36 = 1;
            }

LABEL_74:
            HIDWORD(v62) = v36;
            goto LABEL_75;
          }
        }

        else if (v22)
        {
          goto LABEL_28;
        }
      }
    }

LABEL_77:
    v14 += 36;
    --v16;
  }

  while (v16);
  *&v55[8] = 0u;
  v65 = 0u;
  memset(v64, 0, sizeof(v64));
  memset(v63, 0, sizeof(v63));
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  *v55 = v15;
  *&v55[8] = 3;
  *&v55[16] = v51;
  v39 = MeasSyncher_applyNewRecord(1u, v55, a2);
  v42 = v50 & v39;
  if ((g_FPE_LogSeverity & 0x200) != 0)
  {
    LODWORD(v41) = *a1;
    LODWORD(v40) = a1[1];
    LC_LOG_NMEA_GENERIC("%s,EPOCH,%.3f,%.3f,%d,%10.3f,%d,%d,%d,%d,%d,%d", "$PFPEX", v40 * 0.001, v41 * 0.001, *(a1 + 11), *(a1 + 1), a1[4], v52, HIDWORD(v52), v53, HIDWORD(v53), 3);
  }

  *&v55[8] = 0u;
  v65 = 0u;
  memset(v64, 0, sizeof(v64));
  memset(v63, 0, sizeof(v63));
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  *&v55[8] = 4;
  *v55 = v7 + 0.6;
  result = MeasSyncher_applyNewRecord(1u, v55, a2);
  if (((v48 & v42) != 1 || (result & 1) == 0) && (g_FPE_LogSeverity & 2) != 0)
  {
    v44 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v45 = *(g_TCU + 8);
    }

    else
    {
      v45 = 0.0;
    }

    return LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f %s", "formatAndWriteData", 440, v44, v45, "GnssGen formatAndWriteData: error in applying measurements to syncher!");
  }

  return result;
}

const char *LC_LOG_NMEA_GENERIC(const char *__format, ...)
{
  va_start(va, __format);
  if (g_DBfd)
  {
    v1 = *g_DBfd;
    v2 = (g_DBfd + v1 + 4);
    __format = vsnprintf(v2, (10240 - v1), __format, va);
    if (__format < 1 || ((v3 = __format + 4, __format != 300) ? (v4 = (__format + 4 + v1) > 0x27FE) : (v4 = 1), v4))
    {
      if (v1 >> 4 > 0x27E)
      {
        return __format;
      }

      strcpy(v2, "$PFPEX,ERR1*03\n");
      v3 = 15;
    }

    else
    {
      v5 = (__format - 1);
      if (__format != 1)
      {
        v6 = 0;
        v7 = v2 + 1;
        do
        {
          v8 = *v7++;
          v6 ^= v8;
          --v5;
        }

        while (v5);
        LODWORD(v5) = v6;
      }

      __format = sprintf(&v2[__format], "*%02X\n", v5);
    }

    *g_DBfd += v3;
  }

  return __format;
}

uint64_t numOfMeasInNextEpoch(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v17 = *MEMORY[0x29EDCA608];
  if (Cyc_Record_IsEmpty(v2, v1))
  {
    return 3;
  }

  v6 = &v15;
  v7 = 6912;
  do
  {
    *v6 = 0;
    *(v6 + 4) = 0;
    *(v6 + 1) = 0uLL;
    *(v6 + 3) = 0uLL;
    *(v6 + 5) = 0uLL;
    *(v6 + 7) = 0uLL;
    *(v6 + 9) = 0uLL;
    *(v6 + 11) = 0uLL;
    *(v6 + 97) = 0uLL;
    v6[15] = 0;
    v6[16] = 0;
    *(v6 + 135) = 0;
    v6 += 18;
    v7 -= 144;
  }

  while (v7);
  memset(v16, 0, 172);
  Cyc_Record_Peek(v3, v4, 0, __dst);
  v8 = 0;
  v9 = -6912;
  do
  {
    v10 = *&v16[v9];
    v11 = Is_Legal(v10);
    if (((v11 ^ (v10 == 0)) & 1) == 0 && (g_FPE_LogSeverity & 2) != 0)
    {
      v12 = mach_continuous_time();
      if (g_TCU)
      {
        v13 = *(g_TCU + 8);
      }

      else
      {
        v13 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f %s", "numOfMeasInNextEpoch", 478, (*&g_MacClockTicksToMsRelation * v12), v13, "c legality check is different than matlab legality check!");
    }

    v8 += v11;
    v9 += 144;
  }

  while (v9);
  return (v8 + 3);
}

uint64_t GnssGen_run(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v13 = v3;
  v14 = v2;
  v5 = v4;
  v7 = v6;
  v12 = v1;
  v38 = *MEMORY[0x29EDCA608];
  result = numOfMeasInNextEpoch(v6);
  if (result)
  {
    v9 = result;
    do
    {
      result = Cyc_Record_Count_Free(*(v14 + 128024), 1u);
      if (result <= v9)
      {
        break;
      }

      result = Cyc_Record_Count_Occupied((v5 + 52688), v7);
      if (!result)
      {
        break;
      }

      v25 = 0;
      v26 = 0;
      memset(&v24[128], 0, 65);
      v33 = 0;
      v34 = 0;
      v27 = 0;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0;
      v35 = 0;
      v36 = 0;
      memset(__dst, 0, sizeof(__dst));
      *(&v16[3] + 1) = 0;
      *v16 = 0;
      *&v16[9] = 0;
      *&v16[13] = 0;
      v17 = 0;
      bzero(v18, 0x2D1uLL);
      v23 = 0u;
      memset(v24, 0, 26);
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      *&v18[728] = 0u;
      memset(&v24[32], 0, 92);
      v10 = v37;
      v11 = 6912;
      do
      {
        *v10 = 0;
        v10[4] = 0;
        *(v10 + 8) = 0uLL;
        *(v10 + 24) = 0uLL;
        *(v10 + 40) = 0uLL;
        *(v10 + 56) = 0uLL;
        *(v10 + 72) = 0uLL;
        *(v10 + 88) = 0uLL;
        *(v10 + 97) = 0uLL;
        *(v10 + 15) = 0;
        *(v10 + 16) = 0;
        *(v10 + 135) = 0;
        v10 += 144;
        v11 -= 144;
      }

      while (v11);
      memset(&v37[6912], 0, 172);
      Cyc_Record_Read(v5 + 52688, v7, __dst);
      formatAndWriteData(__dst, v14, v12, v13);
      result = numOfMeasInNextEpoch(v7);
      v9 = result;
    }

    while (result);
  }

  return result;
}

BOOL HswUtil_AddNmeaCS(char *a1, unsigned int a2, unsigned __int16 *a3)
{
  v4 = *a3;
  v5 = v4 + 4;
  if (v4 + 4 <= a2)
  {
    if (v4 < 2)
    {
      v7 = 0;
    }

    else
    {
      LOBYTE(v7) = 0;
      v8 = v4 - 1;
      v9 = a1 + 1;
      do
      {
        v10 = *v9++;
        LOBYTE(v7) = v10 ^ v7;
        --v8;
      }

      while (v8);
      v7 = v7;
    }

    snprintf(&a1[v4], a2 - v4, "*%02x\n", v7);
    *a3 += 4;
  }

  return v5 <= a2;
}

void Pre_Positioning(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, __n128 *a7, unsigned int *a8, unsigned int *a9, uint64_t a10, uint64_t a11)
{
  v13 = a2;
  v388 = *MEMORY[0x29EDCA608];
  *(a2 + 292) = 0;
  v333 = *(a1 + 3);
  v14 = *(a1 + 2);
  v355 = *(a1 + 24);
  v356[0] = *(a1 + 5);
  v15 = *a5;
  *a1 = *(a4 + 19);
  *(a1 + 3) = *(a4 + 54);
  *(a2 + 284) = *(a4 + 48);
  *(a2 + 176) = *(a4 + 32);
  *(a2 + 96) = *(a4 + 40);
  *(a2 + 288) = *(a4 + 180);
  v16 = *(a4 + 208);
  v17 = *(a4 + 224);
  v18 = *(a4 + 72);
  *(a1 + 5) = *(a4 + 88);
  *(a1 + 24) = v18;
  v19 = *(a4 + 112);
  *a2 = *(a4 + 96);
  *(a2 + 16) = v19;
  *(a2 + 104) = *(a4 + 240);
  v21 = *(a4 + 272);
  v20 = *(a4 + 288);
  v22 = *(a4 + 304);
  *(a2 + 120) = *(a4 + 256);
  *(a2 + 168) = v22;
  *(a2 + 152) = v20;
  *(a2 + 136) = v21;
  v23 = *(a4 + 320);
  *(a2 + 40) = *(a4 + 336);
  *(a2 + 24) = v23;
  v24 = *(a4 + 160);
  *(a2 + 88) = v24;
  v25 = a2 + 88;
  *v360 = 0;
  __b[0] = v16;
  *&__b[1] = v17;
  v26 = *(a4 + 344);
  *(a2 + 48) = v26;
  *(a2 + 56) = *(a4 + 960);
  v27 = *(a4 + 144);
  *(a2 + 64) = v27;
  v28 = (a2 + 64);
  v29 = *(a4 + 152);
  *(a2 + 80) = v29;
  v30 = (a2 + 80);
  *(a2 + 72) = *(a4 + 168);
  __src[0] = 0.0;
  if (R8_EQ((a2 + 64), __src))
  {
    __src[0] = 0.0;
    if (R8_EQ(v30, __src))
    {
      __src[0] = 0.0;
      v29 = 0.0;
      if (!R8_EQ(v25, __src))
      {
        *v360 = v24;
        v29 = v24;
      }
    }

    else
    {
      *v360 = v29;
    }
  }

  else
  {
    *v360 = v27;
    v29 = v27;
  }

  __src[0] = 0.0;
  if (!R8_EQ(v360, __src))
  {
    __src[0] = 0.0;
    if (R8_EQ(v28, __src))
    {
      *v28 = v29;
      v27 = v29;
    }

    __src[0] = 0.0;
    if (R8_EQ(v30, __src))
    {
      *v30 = v29;
    }

    __src[0] = 0.0;
    if (R8_EQ(v25, __src))
    {
      *v25 = v29;
    }
  }

  v31 = *(a4 + 840);
  *(v13 + 184) = v31;
  v32 = *(a4 + 896);
  *(v13 + 200) = v32;
  *(v13 + 208) = *(a4 + 824);
  v33 = *(a4 + 888);
  v34 = *(a4 + 872);
  v35.f64[0] = *(a4 + 856);
  v36 = *(a4 + 864);
  *(v13 + 248) = *(a4 + 880);
  v37 = *(a4 + 12);
  *(v13 + 264) = v37;
  v38 = *(a4 + 20);
  *(v13 + 272) = v38;
  if (*(a4 + 372))
  {
    v39 = (a4 + 136);
    v40 = 0.0;
    for (i = 4; i > 1; --i)
    {
      v42 = *v39--;
      v40 = v40 + v42 * v42;
    }

    v43 = sqrt(v40) * *(a4 + 64);
    v34 = v34 + v43;
    v35.f64[0] = v35.f64[0] + v43;
  }

  *(v13 + 293) = *(a4 + 18);
  v44 = *(a1 + 2);
  if (!v44)
  {
    v44 = *(v13 + 176);
    *(a1 + 2) = v44;
  }

  *(v13 + 296) = v44;
  *(a1 + 2) = *(v13 + 96) - v27;
  v45 = *(a3 + 1000) * 99930819.3;
  if (!*a3 && !*(a3 + 8))
  {
    v47 = xmmword_299728EB0;
    v46 = 5.0;
    goto LABEL_42;
  }

  if (v38 > 4)
  {
    if (v38 > 6)
    {
      if (v38 == 7)
      {
        v47 = xmmword_299728ED0;
        v46 = 350.0;
        goto LABEL_42;
      }

      if (v38 == 8)
      {
        v47 = vdupq_n_s64(0x412E848000000000uLL);
        v46 = 1000000.0;
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    if (v38 == 5)
    {
      v47 = xmmword_299728EF0;
      *&v48 = 50.0;
    }

    else
    {
      v47 = xmmword_299728EE0;
      *&v48 = 200.0;
    }

    v46 = *&v48;
  }

  else
  {
    if (v38 <= 2)
    {
      v46 = 5.0;
      if (v38 < 2)
      {
LABEL_41:
        v49 = vdup_n_s32(v38 < 2);
        v50.i64[0] = v49.u32[0];
        v50.i64[1] = v49.u32[1];
        v47 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v50, 0x3FuLL)), xmmword_299728EB0, vdupq_n_s64(0x412E848000000000uLL));
        goto LABEL_42;
      }

      if (v38 == 2)
      {
        v47 = xmmword_299728EC0;
        v46 = 10.0;
        goto LABEL_42;
      }

LABEL_40:
      v46 = 1000000.0;
      goto LABEL_41;
    }

    if (v38 == 3)
    {
      v47 = xmmword_299728F10;
      v46 = 15.0;
    }

    else
    {
      v47 = xmmword_299728F00;
      v46 = 25.0;
    }
  }

LABEL_42:
  if (v33 > v45)
  {
    *(v13 + 72) = *(a3 + 992);
    v33 = v45;
  }

  v51 = v25 + 4008;
  *(v13 + 224) = v33 * 5.25503547;
  if (v34 > v46)
  {
    if (v38 < 4 || v26 < v46 + v46)
    {
      *(v13 + 48) = 0;
      *(v13 + 16) = 0u;
      *(v13 + 32) = 0u;
      *v13 = 0u;
    }

    v34 = v46;
  }

  v317 = v25;
  v320 = a4;
  v52 = sqrt(v34 * v34 + 0.0 + v33 * v33) * 5.25503547;
  if (v52 <= 1.0)
  {
    v52 = 1.0;
  }

  *(v13 + 216) = v52;
  v35.f64[1] = v36;
  *(v13 + 232) = vmulq_f64(vbslq_s8(vcgtq_f64(v35, v47), v47, v35), vdupq_n_s64(0x4015052804935343uLL));
  if (v52 < 21840.0)
  {
    v53 = (v52 * 3.0) + 1;
  }

  else
  {
    v53 = -1;
  }

  *(v13 + 256) = v53;
  if (v33 < 4156.01381)
  {
    v54 = (v33 * 15.7651064) + 1;
  }

  else
  {
    v54 = -1;
  }

  *(v13 + 258) = v54;
  if (v34 < 4156.01381)
  {
    v55 = (v34 * 15.7651064) + 1;
  }

  else
  {
    v55 = -1;
  }

  *(v13 + 260) = v55;
  *(v13 + 268) = 0;
  *(v13 + 4976) = vdupq_n_s64(0xC023CCCCCCCCCCCDLL);
  *(v13 + 4960) = v31;
  *(v13 + 4968) = v32;
  *(v25 + 4904) = 0;
  v336 = v13;
  if (v32 > 1000.0 || *&v31 > 1000.0 || v37 < 3 || (v318 = 0, v15))
  {
    v341 = 0;
    v340 = 0;
    v339 = 0;
    *&v384[0] = 0;
    *v372 = 0;
    *&v370[0] = 0;
    *&v343 = 0;
    v318 = 0;
    if (Core_Get_GPS_TimePos(*(v13 + 176), &v341 + 1, &v341, &v340, &v339, v384, v372, __src, v370, &v343))
    {
      *&v357[0] = 0;
      v342 = 0.0;
      v56 = v340 - 3;
      v318 = (v340 - 3) < 2;
      v57 = HIBYTE(v341);
      v58 = *v372;
      v59 = *v370;
      if ((v341 & (*v370 > 150000.0)) != 0)
      {
        v60 = 0;
      }

      else
      {
        v60 = v341;
      }

      if (*(v13 + 264) <= 2 && a1[4] <= 0x63u && ((*(v13 + 200) < 1000.0) & (v341 & (*v370 > 150000.0) ^ v341)) == 1)
      {
        if (v15)
        {
          *(v13 + 292) = 1;
        }

        else if (v56 <= 1)
        {
          v61 = Horiz_Diff_Sqd(__b, __src);
          if (v61 > 193229.156)
          {
            v62 = v59 * (v59 * 4.0);
            if (v62 <= *(v13 + 200) * (*(v13 + 200) * 9.0))
            {
              v62 = *(v13 + 200) * (*(v13 + 200) * 9.0);
            }

            if (v61 > v62)
            {
              *(v13 + 292) = 1;
              EvCrt_v("PrePos:  PosDisc = TRUE    Between Nav Pos and Ref Pos");
            }
          }
        }

        if (*(v13 + 292) == 1)
        {
          *(v13 + 200) = 0x4163125300000000;
          *(v13 + 184) = 0x4163125300000000;
        }
      }

      if (v58 <= 0.0005)
      {
        v63 = v57;
      }

      else
      {
        v63 = 0;
      }

      if (v339 == 1 && v58 < 0.001)
      {
        v64 = 0.0;
        if (!v63)
        {
LABEL_96:
          v66 = 0.0;
          if (v56 <= 1)
          {
            v67 = *(v13 + 200);
            if (v67 > 1000.0)
            {
              if (v60)
              {
                v342 = v59 / 3.0;
                *(v13 + 4976) = 0xBFF199999999999ALL;
                *(v13 + 4984) = v59 / 3.0;
                if (v59 / 3.0 >= v67 * 1.5)
                {
                  v342 = 0.0;
                }

                else
                {
                  v66 = v59 / 3.0;
                }
              }
            }
          }

LABEL_101:
          v338 = 0.0;
          if (R8_EQ(v357, &v338))
          {
            goto LABEL_113;
          }

          v68 = *(v13 + 96);
          v69 = (*v384 - v68) * 1000.0;
          v70 = -0.5;
          if (v69 > 0.0)
          {
            v70 = 0.5;
          }

          v71 = v69 + v70;
          v72 = 2147483650.0;
          if (v71 <= 2147483650.0)
          {
            v72 = -2147483650.0;
            if (v71 >= -2147483650.0)
            {
              v72 = v71;
            }
          }

          v73 = v68 + v72 / 1000.0 - *v384;
          v74 = *v28 - v73;
          if (v74 <= 0.0005)
          {
            if (v74 >= -0.0005)
            {
LABEL_112:
              *(v13 + 64) = v73;
              *(v13 + 184) = v64;
              *(v51 + 896) = 1;
LABEL_113:
              v338 = 0.0;
              if (!R8_EQ(&v342, &v338))
              {
                Geo2ECEF(__src, &WGS84_Datum, (a1 + 24));
                v76 = *&v343 / 3.0;
                *(v13 + 200) = v66;
                *(v13 + 208) = v76;
                *(v51 + 897) = 1;
              }

              goto LABEL_115;
            }

            v75 = -0.001;
          }

          else
          {
            v75 = 0.001;
          }

          v73 = v73 + v75;
          goto LABEL_112;
        }

        v65 = *(v13 + 184);
        if (v60)
        {
          v64 = v58 * 99930819.3;
          *v357 = v58 * 99930819.3;
          v66 = v59 / 3.0;
          v342 = v59 / 3.0;
          *(v13 + 4976) = v58 * 99930819.3;
          *(v13 + 4984) = v59 / 3.0;
          if (v58 * 99930819.3 + v59 / 3.0 >= (v65 + *(v13 + 200)) * 1.5)
          {
            *&v357[0] = 0;
            v342 = 0.0;
            v66 = 0.0;
            v64 = 0.0;
          }

          else
          {
            *(v13 + 268) = 1;
          }

          goto LABEL_101;
        }

        v63 = 1;
      }

      else
      {
        v65 = *(v13 + 184);
      }

      v64 = 0.0;
      if (v65 > 1000.0)
      {
        if (v63)
        {
          if (v58 < 0.001)
          {
            v64 = v58 * 99930819.3;
            *v357 = v58 * 99930819.3;
            *(v13 + 4976) = v58 * 99930819.3;
            *(v13 + 4984) = 0xBFF199999999999ALL;
            if (v58 * 99930819.3 >= v65 * 1.5)
            {
              *&v357[0] = 0;
              v64 = 0.0;
            }
          }
        }
      }

      goto LABEL_96;
    }
  }

LABEL_115:
  v77 = *(v13 + 284);
  if (v77 < 1)
  {
    v79 = 0;
    v78 = a3;
  }

  else
  {
    v78 = a3;
    if (*(a1 + 3) < 1024)
    {
      v79 = 0;
    }

    else
    {
      v79 = *a1;
    }
  }

  *a10 = *(v13 + 176);
  v80 = *(a1 + 2) * 1000.0;
  v81 = -0.5;
  if (v80 <= 0.0)
  {
    v82 = -0.5;
  }

  else
  {
    v82 = 0.5;
  }

  v83 = v80 + v82;
  if (v83 >= -2147483650.0)
  {
    v84 = v83;
  }

  else
  {
    v84 = 0x80000000;
  }

  if (v83 <= 2147483650.0)
  {
    v85 = v84;
  }

  else
  {
    v85 = 0x7FFFFFFF;
  }

  *(a10 + 32) = v85;
  *(a10 + 36) = v77;
  v86 = (*(v320 + 192) - *(v320 + 152)) * 1000.0;
  if (v86 > 0.0)
  {
    v81 = 0.5;
  }

  v87 = v86 + v81;
  if (v87 <= 2147483650.0)
  {
    if (v87 >= -2147483650.0)
    {
      v88 = v87;
    }

    else
    {
      v88 = 0x80000000;
    }
  }

  else
  {
    v88 = 0x7FFFFFFF;
  }

  *(a10 + 40) = v88;
  *&__b[0] = 0;
  API_Get_UTC_Cor(1, __b);
  *(a10 + 44) = *__b;
  v89 = *(v13 + 72);
  if (fabs(v89) >= 0.0000207995328)
  {
    LOWORD(v90) = 0;
  }

  else
  {
    LOWORD(v90) = (v89 * 1575420000.0);
  }

  *(v13 + 280) = v90;
  v91 = *(v13 + 216);
  if (v91 >= 20500.0)
  {
    *(v13 + 282) = -536;
  }

  else
  {
    v92 = *(v13 + 176);
    v93 = *(v13 + 296);
    if (v92 <= v93 + 60000 && v92 >= v93 + 3000)
    {
      v95 = 1600;
    }

    else
    {
      v95 = 3941;
    }

    v96 = (v95 + (v91 * 3.0));
    if (v96 <= 0xDAC)
    {
      LOWORD(v97) = 3500;
    }

    else
    {
      LOWORD(v97) = v96;
    }

    *(v13 + 282) = v97;
    if (v96 <= 0xFA0)
    {
      v98 = *(v13 + 258);
      goto LABEL_174;
    }
  }

  v99 = 0;
  v100 = v78 + 253;
  v101 = a8 + 404;
  v102 = 999999;
  v103 = -999999;
  do
  {
    v104 = &v101[v99];
    v105 = *(v104 - 385);
    if (Is_Legal(v105) && *(v104 - 301) >= 10 && (v105 != 4 || *a3) && (*(v100 + GNSS_Id_To_Num_Prn_Idx(v105)) & 1) == 0)
    {
      v106 = *&v101[2 * v99];
      if (v102 >= v106)
      {
        v102 = *&v101[2 * v99];
      }

      if (v103 <= v106)
      {
        v103 = *&v101[2 * v99];
      }
    }

    ++v99;
  }

  while (v99 != 48);
  v107 = *(v336 + 280);
  LOWORD(v90) = *(v336 + 280);
  v97 = *(v336 + 282);
  v98 = *(v336 + 258);
  if (v102 == 999999)
  {
    v13 = v336;
  }

  else
  {
    v13 = v336;
    if (v103 != -999999)
    {
      if (v103 - 8000 <= -(v107 + v97))
      {
        v108 = -(v107 + v97);
      }

      else
      {
        v108 = v103 - 8000;
      }

      v109 = v97 - v107;
      v110 = v102 + 8000;
      if (v109 < v102 + 8000)
      {
        v110 = v109;
      }

      v97 = (v110 - v108 + 1) / 2;
      *(v336 + 282) = v97;
      v90 = (~(v108 + v110) + (v108 + v110 >= 0)) >> 1;
      v111 = v90 - v107;
      *(v336 + 280) = v90;
      if (v111 < 0)
      {
        v111 = -v111;
      }

      v98 += v111;
      *(v336 + 258) = v98;
    }
  }

LABEL_174:
  *(a10 + 24) = (v90 * 0.634751368);
  *(a10 + 4) = (v97 * 0.190293673);
  v112 = a3;
  *(a10 + 48) = *a3;
  *(a10 + 52) = *(v13 + 272);
  *&v113 = v98 * 0.634751368;
  *(a10 + 26) = *&v113;
  LOWORD(v113) = *(v13 + 260);
  *(a10 + 14) = (v113 * 19.0293673);
  v114 = *(v13 + 192) * 0.0100069229;
  v115 = -0.5;
  if (v114 <= 0.0)
  {
    v116 = -0.5;
  }

  else
  {
    v116 = 0.5;
  }

  v117 = v114 + v116;
  if (v117 <= 2147483650.0)
  {
    if (v117 < -2147483650.0 || (v117 >= 0xFFFF ? (v118 = -1) : (v118 = v117), v117 <= 0))
    {
      v118 = 1;
    }
  }

  else
  {
    v118 = -1;
  }

  *(a10 + 6) = v118;
  v119 = 3 * *(v13 + 200) / 5;
  if (v119 >= 65534)
  {
    LOWORD(v119) = -2;
  }

  *(a10 + 8) = v119 + 1;
  v120 = 3 * *(v13 + 208);
  if (v120 >= 65534)
  {
    LOWORD(v120) = -2;
  }

  *(a10 + 10) = v120 + 1;
  v121 = *(v13 + 48) * 100.0;
  if (v121 > 0.0)
  {
    v115 = 0.5;
  }

  v122 = v121 + v115;
  if (v122 > 2147483650.0)
  {
    goto LABEL_192;
  }

  if (v122 >= -2147483650.0)
  {
    v123 = v122;
    if (v122 >= 0xFFFF)
    {
LABEL_192:
      LOWORD(v123) = -1;
      *(a10 + 14) = -1;
      goto LABEL_198;
    }
  }

  else
  {
    v123 = 0x80000000;
  }

  if (v123 <= 1)
  {
    LOWORD(v123) = 1;
  }

LABEL_198:
  *(a10 + 12) = v123;
  v124 = *(v13 + 24) * 100.0;
  v125 = -0.5;
  if (v124 <= 0.0)
  {
    v126 = -0.5;
  }

  else
  {
    v126 = 0.5;
  }

  v127 = v124 + v126;
  v128 = v127;
  if (v127 < -2147483650.0)
  {
    LOWORD(v128) = 0;
  }

  if (v127 <= 2147483650.0)
  {
    v129 = v128;
  }

  else
  {
    v129 = -1;
  }

  *(a10 + 18) = v129;
  v130 = *(v13 + 32) * 100.0;
  if (v130 <= 0.0)
  {
    v131 = -0.5;
  }

  else
  {
    v131 = 0.5;
  }

  v132 = v130 + v131;
  v133 = v132;
  if (v132 < -2147483650.0)
  {
    LOWORD(v133) = 0;
  }

  if (v132 <= 2147483650.0)
  {
    v134 = v133;
  }

  else
  {
    v134 = -1;
  }

  *(a10 + 16) = v134;
  v135 = *(v13 + 40) * 100.0;
  if (v135 > 0.0)
  {
    v125 = 0.5;
  }

  v136 = v135 + v125;
  if (v136 <= 2147483650.0)
  {
    if (v136 >= -2147483650.0)
    {
      v137 = v136;
    }

    else
    {
      LOWORD(v137) = 0;
    }
  }

  else
  {
    LOWORD(v137) = -1;
  }

  *(a10 + 20) = v137;
  *(a10 + 22) = *(v13 + 56) >> 1;
  v138 = 3 * *(v13 + 248);
  if (v138 >= 254)
  {
    LOBYTE(v138) = -2;
  }

  *(a10 + 23) = v138 + 1;
  PP_Acq_Ass_Update_AA(a1, v13, a8, a9);
  if ((v79 & 1) == 0)
  {
    for (j = 60; j != 3996; j += 48)
    {
      v195 = (a10 + j);
      *(v195 + 29) = 0uLL;
      *v195 = 0uLL;
      v195[1] = 0uLL;
    }

    *(a10 + 5386) = 0u;
    *(a10 + 5402) = 0u;
    *(a10 + 5354) = 0u;
    *(a10 + 5370) = 0u;
    *(a10 + 5322) = 0u;
    *(a10 + 5338) = 0u;
    *(a10 + 5290) = 0u;
    *(a10 + 5306) = 0u;
    *(a10 + 5258) = 0u;
    *(a10 + 5274) = 0u;
    *(a10 + 5242) = 0u;
    *(a10 + 5418) = 0;
    memset((a10 + 3996), 255, 0x4DEuLL);
    *(a10 + 6132) = 0;
    *(a10 + 6136) = 0;
    Get_SS_Order(__b);
    v196 = 0;
    v139 = a1;
    while (1)
    {
      Constell_Prn = Get_Constell_Prn(v196);
      if (Constell_Prn <= 3)
      {
        break;
      }

      if (Constell_Prn == 4)
      {
        v198 = *(a3 + 35);
        goto LABEL_345;
      }

      if (Constell_Prn == 5)
      {
        v198 = *(a3 + 33);
LABEL_345:
        v199 = *(__b + v196) - 1;
        if (v198)
        {
          v200 = 0;
          goto LABEL_347;
        }

LABEL_355:
        ++*(a10 + 6134);
        v201 = v199;
LABEL_356:
        v203 = 2;
        goto LABEL_357;
      }

      if (Constell_Prn != 6)
      {
        goto LABEL_339;
      }

LABEL_358:
      if (++v196 == 178)
      {
        *(a11 + 176) = -25187;
        *&v240 = 0x9D9D9D9D9D9D9D9DLL;
        *(&v240 + 1) = 0x9D9D9D9D9D9D9D9DLL;
        *(a11 + 144) = v240;
        *(a11 + 160) = v240;
        *(a11 + 112) = v240;
        *(a11 + 128) = v240;
        *(a11 + 80) = v240;
        *(a11 + 96) = v240;
        *(a11 + 48) = v240;
        *(a11 + 64) = v240;
        *(a11 + 16) = v240;
        *(a11 + 32) = v240;
        *a11 = v240;
        memset_pattern16((a11 + 178), &unk_299728F50, 0x164uLL);
        *(a11 + 534) = 0;
        *(a1 + 1) = -1;
        *a1 = 0;
        goto LABEL_407;
      }
    }

    if (Constell_Prn == 1)
    {
      v198 = *(a3 + 31);
      goto LABEL_345;
    }

    if (Constell_Prn != 2)
    {
      if (Constell_Prn == 3)
      {
        v198 = *(a3 + 36);
        goto LABEL_345;
      }

LABEL_339:
      v199 = *(__b + v196) - 1;
      goto LABEL_355;
    }

    if (*(a3 + 32) != 1)
    {
      v199 = v196;
      goto LABEL_355;
    }

    v200 = 1;
    v199 = v196;
LABEL_347:
    v201 = v199;
    if (*(a6 + 33605 + v199) == 1 && (*(a3 + 253 + v199) & 1) == 0)
    {
      if (Constell_Prn == 4 && !*a3)
      {
        ++*(a10 + 6134);
        goto LABEL_356;
      }

      v203 = 0;
      v204 = *(a10 + 6133);
      *(a10 + 4530 + 2 * v204) = v199 + 1;
      *(a10 + 6133) = v204 + 1;
    }

    else
    {
      if ((v200 | *(a3 + 480 + v199)))
      {
        goto LABEL_355;
      }

      v202 = *(a10 + 6135);
      *(a10 + 4886 + 2 * v202) = v199 + 1;
      *(a10 + 6135) = v202 + 1;
      v203 = 3;
    }

LABEL_357:
    *(a10 + 5420 + 4 * v201) = v203;
    goto LABEL_358;
  }

  v354 = 0;
  v352 = 0u;
  v353 = 0u;
  v350 = 0u;
  v351 = 0u;
  v348 = 0u;
  v349 = 0u;
  v346 = 0u;
  v347 = 0u;
  v344 = 0u;
  v345 = 0u;
  v343 = 0u;
  v139 = a1;
  if (!*(a10 + 6132) && !*(a10 + 6134) || (*(a11 + 535) & 1) != 0 || *(a1 + 1) == -1)
  {
    goto LABEL_234;
  }

  v140 = v14 - *(a1 + 2) + 604800 * (v333 - *(a1 + 3));
  if (v140 < 0)
  {
    v140 = -v140;
  }

  if (v140 > 4)
  {
    goto LABEL_234;
  }

  v141 = 0;
  v142 = 0.0;
  do
  {
    v142 = v142 + (v356[v141] - *&a1[8 * v141 + 40]) * (v356[v141] - *&a1[8 * v141 + 40]);
    v143 = v141 + 3;
    --v141;
  }

  while (v143 > 1);
  if (v142 <= 1.0e10)
  {
    v311 = 0;
    v312 = &a7[11].n128_u32[2];
    do
    {
      if ((*(a10 + 5420 + 4 * v311) - 1) >= 2 && *v312 && *(a6 + 33605 + v311) == 1 && (*(a3 + v311 + 253) & 1) == 0)
      {
        *(&v343 + v311) = 1;
      }

      ++v311;
      v312 += 48;
    }

    while (v311 != 139);
    v313 = 48;
    do
    {
      v314 = *(a1 + 1);
      if ((v314 + 1) <= 177)
      {
        v315 = v314 + 1;
      }

      else
      {
        v315 = 0;
      }

      *(a1 + 1) = v315;
      v316 = Get_Constell_Prn(v315);
      if ((*(a3 + 31) & 1) != 0 || v316 != 1)
      {
        if ((*(a3 + 32) & 1) != 0 || v316 != 2)
        {
          if ((*(a3 + 36) & 1) != 0 || v316 != 3)
          {
            if ((*(a3 + 35) & 1) != 0 || v316 != 4)
            {
              if ((*(a3 + 33) & 1) != 0 || v316 != 5)
              {
                if ((*(a3 + 34) & 1) != 0 || v316 != 6)
                {
                  if (v316 != 4 || *a3)
                  {
                    *(&v343 + *(a1 + 1)) = 1;
                  }
                }

                else
                {
                  *(a1 + 1) = 177;
                }
              }

              else
              {
                *(a1 + 1) = 138;
              }
            }

            else
            {
              *(a1 + 1) = 128;
            }
          }

          else
          {
            *(a1 + 1) = 91;
          }
        }

        else
        {
          *(a1 + 1) = 55;
        }
      }

      else
      {
        *(a1 + 1) = 31;
      }

      --v313;
    }

    while (v313);
  }

  else
  {
LABEL_234:
    *(a11 + 535) = 0;
    *&v144 = 0x101010101010101;
    *(&v144 + 1) = 0x101010101010101;
    v343 = v144;
    v344 = v144;
    v345 = v144;
    v346 = v144;
    v347 = v144;
    v348 = v144;
    v349 = v144;
    v350 = v144;
    v351 = v144;
    v352 = v144;
    v353 = v144;
    v354 = 257;
    *(a1 + 1) = 178;
  }

  LODWORD(v342) = 0;
  memset(__b, 255, sizeof(__b));
  memset_pattern16(__src, &unk_299728F30, 0x2C8uLL);
  v385 = 0;
  memset(v384, 0, sizeof(v384));
  v383 = 0;
  v382 = 0u;
  v381 = 0u;
  v380 = 0u;
  v379 = 0u;
  v378 = 0u;
  v377 = 0u;
  v376 = 0u;
  v375 = 0u;
  v374 = 0u;
  v373 = 0u;
  *v372 = 0u;
  Get_SS_Order(v372);
  v112 = a3;
  if ((*(a3 + 31) & 1) == 0)
  {
    *&v145 = 0x9D9D9D9D9D9D9D9DLL;
    *(&v145 + 1) = 0x9D9D9D9D9D9D9D9DLL;
    *a11 = v145;
    *(a11 + 16) = v145;
    memset_pattern16((a11 + 178), &unk_299728F50, 0x40uLL);
  }

  if ((*(a3 + 32) & 1) == 0)
  {
    memset((a11 + 32), 157, 24);
    memset_pattern16((a11 + 242), &unk_299728F50, 0x30uLL);
  }

  if ((*(a3 + 36) & 1) == 0)
  {
    *(a11 + 88) = -1650614883;
    *&v146 = 0x9D9D9D9D9D9D9D9DLL;
    *(&v146 + 1) = 0x9D9D9D9D9D9D9D9DLL;
    *(a11 + 72) = v146;
    *(a11 + 56) = v146;
    memset_pattern16((a11 + 290), &unk_299728F50, 0x48uLL);
  }

  if ((*(a3 + 35) & 1) == 0)
  {
    *(a11 + 121) = 0x9D9D9D9D9D9D9D9DLL;
    *&v147 = 0x9D9D9D9D9D9D9D9DLL;
    *(&v147 + 1) = 0x9D9D9D9D9D9D9D9DLL;
    *(a11 + 108) = v147;
    *(a11 + 92) = v147;
    memset_pattern16((a11 + 362), &unk_299728F50, 0x4AuLL);
  }

  if ((*(a3 + 33) & 1) == 0)
  {
    *(a11 + 129) = 0x9D9D9D9D9D9D9D9DLL;
    *(a11 + 137) = -25187;
    memset_pattern16((a11 + 436), &unk_299728F50, 0x14uLL);
  }

  if ((*(a3 + 34) & 1) == 0)
  {
    *(a11 + 170) = 0x9D9D9D9D9D9D9D9DLL;
    *&v148 = 0x9D9D9D9D9D9D9D9DLL;
    *(&v148 + 1) = 0x9D9D9D9D9D9D9D9DLL;
    *(a11 + 155) = v148;
    *(a11 + 139) = v148;
    memset_pattern16((a11 + 456), &unk_299728F50, 0x4EuLL);
  }

  v149 = 0;
  v323 = 0;
  v325 = 0;
  v327 = 0;
  v150 = *(a11 + 144);
  v370[8] = *(a11 + 128);
  v370[9] = v150;
  v370[10] = *(a11 + 160);
  v371 = *(a11 + 176);
  v151 = *(a11 + 80);
  v370[4] = *(a11 + 64);
  v370[5] = v151;
  v322 = a11 + 178;
  v152 = *(a11 + 112);
  v370[6] = *(a11 + 96);
  v370[7] = v152;
  v153 = a10 + 5242;
  v154 = *(a11 + 16);
  v370[0] = *a11;
  v370[1] = v154;
  v155 = *(a11 + 48);
  v370[2] = *(a11 + 32);
  v370[3] = v155;
  do
  {
    v156 = Get_Constell_Prn(v149);
    v157 = v156;
    if (v156 > 2)
    {
      switch(v156)
      {
        case 3:
          if (*(v112 + 36) != 1)
          {
            goto LABEL_314;
          }

          LODWORD(v159) = v372[v149] - 1;
          LongPrnIdx_To_ShortPrnIdx(v159, 0);
          break;
        case 4:
          if (*(v112 + 35) != 1)
          {
            goto LABEL_314;
          }

          v160 = v372[v149];
          v159 = (v160 - 1);
          if (!*v112)
          {
            *(a11 + v159) = -99;
            *(v322 + 2 * v159) = -400;
            v161 = BYTE2(v342);
            *(&__b[44] + BYTE2(v342) + 4) = v160;
            BYTE2(v342) = v161 + 1;
            v162 = 2;
            v163 = v159;
LABEL_313:
            *(__src + v163) = v162;
            goto LABEL_314;
          }

          break;
        case 5:
          v158 = *(v112 + 33);
          goto LABEL_263;
        default:
          goto LABEL_314;
      }

LABEL_265:
      v164 = *(a6 + 33605 + v159);
      v163 = v159;
      v165 = *(a3 + 253 + v159);
      if (*(&v343 + v159) == 1)
      {
        *(a11 + v159) = -99;
        v166 = (v322 + 2 * v159);
        *v166 = -400;
        if (v164)
        {
          if ((v165 & 1) == 0)
          {
            v167 = &a7[12 * v163];
            if (v167[11].n128_u32[2])
            {
              v358 = 0;
              v359 = 0;
              memset(v357, 0, 126);
              v168 = v167[9];
              v366 = v167[8];
              v367 = v168;
              v169 = v167[11];
              v368 = v167[10];
              v369 = v169;
              v170 = v167[5];
              v362 = v167[4];
              v363 = v170;
              v171 = v167[7];
              v364 = v167[6];
              v365 = v171;
              v172 = v167[1];
              *v360 = *v167;
              *&v360[16] = v172;
              v173 = v167[3];
              *&v360[32] = v167[2];
              v361 = v173;
              if (Comp_CurrState(0x258u, *(a1 + 3), v360, v357, *(a1 + 2), 22000000.0))
              {
                Comp_AzEl((a1 + 24), v336 + 104, v357, (a11 + v163), v166, (a11 + 536 + 8 * v163), (a11 + 1960 + 8 * v163));
              }
            }
          }
        }
      }

      else if (!a7[12 * v159 + 11].n128_u32[2])
      {
        *(a11 + v159) = -99;
      }

      if (v164)
      {
        v174 = v165 == 0;
      }

      else
      {
        v174 = 0;
      }

      if (v174)
      {
        v112 = a3;
        v176 = *(a11 + v163);
        if (v176 < -90)
        {
          v162 = 0;
          *(__b + v323++) = v163 + 1;
        }

        else
        {
          v177 = v327;
          if (v176 > 1)
          {
            v177 = v327 + 1;
          }

          v327 = v177;
          if (v176 > 1)
          {
            v162 = 1;
          }

          else
          {
            v162 = 2;
          }

          if (v176 >= 2)
          {
            v178 = a7[12 * v163 + 11].n128_u32[2];
            if (v157 == 2)
            {
              v179 = 15;
            }

            else
            {
              v179 = 10;
            }

            if (v178 == 2)
            {
              if (((v179 > v176) & *(v153 + v163)) != 0)
              {
                v180 = *(a11 + v163);
              }

              else
              {
                v180 = v176 + 9;
              }
            }

            else if (v178 == 1)
            {
              if (v179 > v176 && *(v153 + v163))
              {
                v180 = v176 + 9;
              }

              else
              {
                v180 = v176 + 100;
              }
            }

            else
            {
              v180 = 0;
            }

            *(v384 + v163) = v180;
            v182 = BYTE1(v342);
            if (BYTE1(v342))
            {
              v183 = 0;
              while (*(v384 + *(&__b[22] + v183 + 2) - 1) >= v180)
              {
                if (BYTE1(v342) == ++v183)
                {
                  goto LABEL_311;
                }
              }
            }

            else
            {
              LODWORD(v183) = 0;
            }

            if (v183 < BYTE1(v342))
            {
              v184 = v183;
              v185 = &__b[22] + BYTE1(v342) + 2;
              v186 = v185;
              do
              {
                --v182;
                v187 = *--v186;
                *v185 = v187;
                v185 = v186;
              }

              while (v182 > v184);
            }

LABEL_311:
            *(&__b[22] + v182 + 2) = v163 + 1;
          }

          ++*(&v342 + v162);
        }
      }

      else
      {
        v175 = v163 + 1;
        v112 = a3;
        if (v157 == 2 || (*(a3 + 480 + v163) & 1) != 0)
        {
          v181 = BYTE2(v342);
          *(&__b[44] + BYTE2(v342) + 4) = v175;
          BYTE2(v342) = v181 + 1;
          v162 = 2;
        }

        else
        {
          *(&__b[66] + v325++ + 6) = v175;
          v162 = 3;
        }
      }

      goto LABEL_313;
    }

    if (v156 == 1)
    {
      v158 = *(v112 + 31);
LABEL_263:
      if (v158 != 1)
      {
        goto LABEL_314;
      }

      LODWORD(v159) = v372[v149] - 1;
      goto LABEL_265;
    }

    if (v156 == 2 && *(v112 + 32) == 1)
    {
      LongPrnIdx_To_ShortPrnIdx(v149, 0);
      LODWORD(v159) = v149;
      goto LABEL_265;
    }

LABEL_314:
    ++v149;
  }

  while (v149 != 178);
  v188 = 0;
  v189 = v336;
  while (2)
  {
    v190 = *(v370 + v188);
    if (v190 < -90 || ((v191 = *(a11 + v188), v191 >= -90) ? (v192 = v190 < v191) : (v192 = 1), v192))
    {
      v193 = 0;
      goto LABEL_323;
    }

    if (v190 > v191)
    {
      v193 = 1;
LABEL_323:
      *(v153 + v188) = v193;
    }

    if (++v188 != 178)
    {
      continue;
    }

    break;
  }

  memcpy((a10 + 5420), __src, 0x2C8uLL);
  memcpy((a10 + 4886), &__b[66] + 12, 0x164uLL);
  memcpy((a10 + 4530), __b, 0x164uLL);
  memcpy((a10 + 4174), &__b[22] + 4, 0x164uLL);
  v209 = BYTE1(v342);
  *(a10 + 6132) = BYTE1(v342);
  *(a10 + 6134) = BYTE2(v342);
  *(a10 + 6135) = v325;
  *(a10 + 6133) = v323;
  *(a11 + 534) = v327;
  if (!v209 && !*(a10 + 6136))
  {
    *(a10 + 4172) = -1;
    *&v310 = -1;
    *(&v310 + 1) = -1;
    *(a10 + 4140) = v310;
    *(a10 + 4156) = v310;
    *(a10 + 4108) = v310;
    *(a10 + 4124) = v310;
    *(a10 + 4076) = v310;
    *(a10 + 4092) = v310;
    *(a10 + 4044) = v310;
    *(a10 + 4060) = v310;
    *(a10 + 4012) = v310;
    *(a10 + 4028) = v310;
    *(a10 + 3996) = v310;
    goto LABEL_408;
  }

  LOBYTE(__src[0]) = 0;
  __src[3] = 0.0;
  LODWORD(__src[4]) = 0;
  *(&__src[1] + 4) = 0.0;
  *(__src + 4) = 0.0;
  memset(&__src[5], 0, 20);
  DWORD2(__b[11]) = 0;
  memset(__b, 0, 181);
  *&v210 = -1;
  *(&v210 + 1) = -1;
  *(a10 + 3996) = v210;
  *(a10 + 4012) = v210;
  *(a10 + 4028) = v210;
  *(a10 + 4044) = v210;
  *(a10 + 4060) = v210;
  *(a10 + 4076) = v210;
  *(a10 + 4092) = v210;
  *(a10 + 4108) = v210;
  *(a10 + 4124) = v210;
  *(a10 + 4140) = v210;
  *(a10 + 4172) = -1;
  v211 = 60;
  *(a10 + 4156) = v210;
  do
  {
    v212 = (a10 + v211);
    *(v212 + 29) = 0uLL;
    *v212 = 0uLL;
    v212[1] = 0uLL;
    v211 += 48;
  }

  while (v211 != 3996);
  *(a10 + 6136) = 0;
  v213 = 0.0;
  if ((*(a6 + 24372) - 2) <= 4 && *(v336 + 293) == 1)
  {
    if (*(a6 + 24412) - *(a1 + 3) >= 0)
    {
      v214 = -((*(a6 + 24412) - *(a1 + 3)) & 0x3F);
    }

    else
    {
      v214 = (*(a1 + 3) - *(a6 + 24412)) & 0x3F;
    }

    if (v214 > 31)
    {
      v214 -= 64;
    }

    v213 = *(a6 + 24392) + *(a6 + 24400) * (*(a1 + 2) - *(a6 + 24408) + 604800 * v214);
  }

  v215 = 0;
  v216 = a6 + 37344;
  v217 = a7;
  while (2)
  {
    v218 = Get_Constell_Prn(v215);
    LODWORD(v384[0]) = v218;
    if (v218 == 6 || (v220 = v218, v218 == 4) && !*(a10 + 48))
    {
LABEL_403:
      ++v215;
      v217 += 12;
      if (v215 == 139)
      {
        goto LABEL_406;
      }

      continue;
    }

    break;
  }

  if (*(a10 + 6136) <= 0x51u)
  {
    v221 = *(a11 + v215);
    if (v221 >= 2)
    {
      v222 = v217[9];
      __b[8] = v217[8];
      __b[9] = v222;
      v223 = v217[11];
      __b[10] = v217[10];
      __b[11] = v223;
      v224 = v217[5];
      __b[4] = v217[4];
      __b[5] = v224;
      v225 = v217[7];
      __b[6] = v217[6];
      __b[7] = v225;
      v226 = v217[1];
      __b[0] = *v217;
      __b[1] = v226;
      v219 = v217[2];
      v227 = v217[3];
      __b[2] = v219;
      __b[3] = v227;
      if (DWORD2(__b[11]))
      {
        v228 = *(v336 + 284);
        v229 = *(v336 + 192);
        if (v220 == 4)
        {
          v230 = *v317;
        }

        else
        {
          v230 = *(v336 + 64);
          if (v220 == 3)
          {
            if ((*(a6 + 24372) - 2) <= 4 && *(v336 + 293))
            {
              v230 = v213 + v230;
            }
          }

          else if (v220 == 2)
          {
            v230 = *(v336 + 80);
            v231 = *(v336 + 288);
            if (v231 < v228)
            {
              v229 = sqrt((g_TOW_Stat_Var99_Table[v228] * -299792458.0 + g_TOW_Stat_Var99_Table[v231] * 299792458.0) * 299792458.0 + v229 * v229);
              v228 = *(v336 + 288);
            }
          }
        }

        v232 = Comp_PrePos(v228, *(a1 + 3), __b, (a1 + 24), v336, v221, *(v336 + 268), __src, v230, *(v336 + 72), *(v336 + 184), v229, *(v336 + 200), *(v336 + 208), *(v336 + 224), *(v336 + 232), *(v336 + 240), *(a1 + 2));
        LOBYTE(__src[0]) = v232;
        if (v232)
        {
          *v360 = 0;
          v360[4] = 0;
          memset(&v360[8], 0, 37);
          v233 = LongPrnIdx_To_Prn(v215, v384);
          v360[10] = v233;
          v360[8] = v384[0];
          if (LODWORD(v384[0]) == 2)
          {
            v360[11] = *(*(a10 + 6216) + 4 * v233 - 4);
            v360[10] = v360[11];
          }

          v360[42] = -1;
          v360[44] = -1;
          v360[43] = *(a11 + v215);
          v234 = *(a11 + 2 * v215 + 178);
          if (v234 <= 0x168)
          {
            v360[44] = v234 >> 1;
          }

          v235 = Comp_AcqAid(*(v336 + 176), *(v336 + 280), *(v336 + 282), __src, v360, *(v336 + 96));
          v360[4] = v235;
          if (*(v216 + v215))
          {
            v236 = 1;
          }

          else
          {
            v236 = *(v216 + v215 + 178);
          }

          v360[12] = v236 & 1;
          v360[13] = *(v216 + v215 + 356);
          if (*(v336 + 264) <= 1 && v360[14] >= 2u)
          {
            v360[14] = 1;
          }

          if (v235)
          {
            v237 = *(a10 + 6136);
            v238 = (a10 + 60 + 48 * v237);
            v239 = *&v360[16];
            *v238 = *v360;
            v238[1] = v239;
            v219 = *&v360[32];
            v238[2] = *&v360[32];
            *(a10 + 3996 + v215) = v237;
            ++*(a10 + 6136);
          }
        }
      }
    }

    goto LABEL_403;
  }

  gn_report_assertion_failure("PP_Update_AcqAid: num_AA overflow caught");
LABEL_406:
  PP_BDS_D2_Set_Not_Visible((a10 + 6132), (a10 + 6134), a10 + 4174, a10 + 5420, v219);
  PP_BDS_D2_Set_Not_Visible((a10 + 6133), (a10 + 6134), a10 + 4530, a10 + 5420, v241);
  PP_BDS_D2_Set_Not_Visible((a10 + 6135), (a10 + 6134), a10 + 4886, a10 + 5420, v242);
LABEL_407:
  v189 = v336;
LABEL_408:
  if (*(v189 + 292) == 1)
  {
    v243 = v139[4];
    if (v243 <= 0xC7)
    {
      v139[4] = v243 + 1;
    }

    if (*a5)
    {
      *(v189 + 292) = 0;
      goto LABEL_413;
    }

    v245 = a5 + 4;
    v244 = *(a5 + 1);
    v246 = 1;
LABEL_416:
    if (*(a10 + 6132) || *(a10 + 6136))
    {
      if (v244 == 2 || (v318 & v246) != 0)
      {
        a5[412] = 1;
        *&v247 = 0x101010101010101;
        *(&v247 + 1) = 0x101010101010101;
        *(a5 + 380) = v247;
        *(a5 + 396) = v247;
        *(a5 + 364) = v247;
        v248 = (v189 + 176);
        v249 = vld1q_dup_f32(v248);
        for (k = 592; k != 400; k -= 16)
        {
          *&a5[k] = v249;
        }

        EvCrt_v("ChanReset ALL : PrePos2 BN %d PD %d NP %d ND %d ", v244, *(v189 + 292), v139[4], *a5);
        v244 = *(a5 + 1);
      }

      if (v244 && !v318 && (*(v189 + 292) & 1) != 0)
      {
        v251 = 0;
        v252 = a8 + 151;
        do
        {
          v253 = &a8[v251 + 19];
          if (Is_Legal(*v253) && *(v252 + v251) <= 0x18u)
          {
            a5[v251 + 365] |= 1u;
            v254 = (v189 + 176);
            v255 = vld1q_dup_f32(v254);
            for (m = 592; m != 400; m -= 16)
            {
              *&a5[m] = v255;
            }

            EvCrt_v("ChanReset %d : PrePos3 %d %d %d   NP %d ND %d ", v251, v253[2], *v253, *(v252 + v251), a1[4], *a5);
          }

          ++v251;
        }

        while (v251 != 48);
      }
    }

    else
    {
      memcpy(__b, (a10 + 4530), 0x164uLL);
      v257 = 0;
      v258 = v189;
      v259 = 0;
      v328 = -*(v258 + 280);
      v260 = a5 + 8;
      v326 = *(v258 + 176);
      v334 = (a10 + 5420);
      v324 = *(v258 + 282);
      v261 = a5 + 186;
      do
      {
        if (v260[v257] == 1)
        {
          if (v334[v257] || v259 > 0x2F)
          {
            goto LABEL_459;
          }

          LODWORD(__src[0]) = 0;
          v262 = LongPrnIdx_To_Prn(v257, __src);
          v263 = LOBYTE(__src[0]);
          if (LODWORD(__src[0]) == 2)
          {
            v262 = *(*(a10 + 6216) + 4 * v262 - 4);
          }

          v264 = 0;
          v265 = 1;
          v266 = __b + 2;
          do
          {
            if (v257 + 1 == *(__b + v264))
            {
              if (v264 <= 0xB0)
              {
                v267 = v265;
                v268 = v266;
                do
                {
                  *(v268 - 1) = *v268;
                  v269 = v267;
                  ++v268;
                  ++v267;
                }

                while (v269 != 177);
              }

              WORD1(__b[22]) = -1;
            }

            ++v264;
            v266 += 2;
            ++v265;
          }

          while (v264 != 178);
          v270 = 154;
          if (v263 <= 3u)
          {
            if (v263 == 2)
            {
              v270 = 146;
            }

            else if (v263 == 3)
            {
              v270 = 174;
            }
          }

          else if (v263 == 4)
          {
            v270 = v262 <= 0xAu ? 258 : 162;
          }

          else if (v263 == 5 || v263 == 6)
          {
            v270 = 258;
          }

          v271 = a10 + 60 + 48 * v259;
          *v271 = v326;
          *(v271 + 4) = 1;
          *(v271 + 8) = v263 | (v262 << 16);
          *(v271 + 12) = 0;
          *(v271 + 16) = v270;
          *(v271 + 18) = v324;
          *(v271 + 20) = 0;
          *(v271 + 22) = v328;
          *(v271 + 24) = 33562616;
          *(v271 + 28) = 0;
          *(v271 + 34) = 0;
          *(v271 + 42) = -25089;
          *(v271 + 44) = 0;
          memcpy((a10 + 4530), __b, 0x164uLL);
          *(a10 + 3996 + v257) = v259;
          *(a10 + 4174 + 2 * v259) = v257 + 1;
          v334[v257] = 1;
          *(a10 + 6136) = ++v259;
          *(a10 + 6132) = v259;
          --*(a10 + 6133);
          if (v260[v257])
          {
LABEL_459:
            a5[v261[v257] + 365] |= 1u;
            *&a5[4 * v261[v257] + 416] = *(v336 + 176);
            EvCrt_v("ChanReset %d : PrePos1 BN %d PD %d NP %d ND %d", v261[v257], *(a5 + 1), *(v336 + 292), v139[4], *a5);
          }
        }

        ++v257;
      }

      while (v257 != 178);
      v189 = v336;
    }

    if (*v245)
    {
      *(a5 + 8) = 0u;
      *(a5 + 90) = 0;
      *(a5 + 328) = 0u;
      *(a5 + 344) = 0u;
      *(a5 + 296) = 0u;
      *(a5 + 312) = 0u;
      *(a5 + 264) = 0u;
      *(a5 + 280) = 0u;
      *(a5 + 232) = 0u;
      *(a5 + 248) = 0u;
      *(a5 + 200) = 0u;
      *(a5 + 216) = 0u;
      *(a5 + 168) = 0u;
      *(a5 + 184) = 0u;
      *(a5 + 136) = 0u;
      *(a5 + 152) = 0u;
      *(a5 + 104) = 0u;
      *(a5 + 120) = 0u;
      *(a5 + 72) = 0u;
      *(a5 + 88) = 0u;
      *(a5 + 40) = 0u;
      *(a5 + 56) = 0u;
      *(a5 + 24) = 0u;
      *(a5 + 1) = 0;
    }

    v112 = a3;
    v139 = a1;
    if (*(v189 + 292) == 1)
    {
      *a5 = 1;
    }
  }

  else
  {
LABEL_413:
    v245 = a5 + 4;
    v244 = *(a5 + 1);
    if (v244)
    {
      v246 = 0;
      goto LABEL_416;
    }
  }

  *(a10 + 6360) = 0;
  if ((*(v189 + 300) & 0x80000000) == 0)
  {
    if (*(a10 + 6132))
    {
      PP_Acq_Ass_Merge_AA(v189, a10, a11, v205, v206, v207, v208);
    }

    else
    {
      PP_Acq_Ass_Replace_AA(v189, v112, a10, a11);
    }
  }

  if (*(v112 + 32) == 1)
  {
    v272 = 0;
    *(a10 + 6212) = 0;
    *(a10 + 6196) = 0u;
    do
    {
      if ((*(*(v112 + 440) + v272) & 1) == 0)
      {
        v273 = 0;
        *(a10 + 6211) = 14;
        goto LABEL_478;
      }

      ++v272;
    }

    while (v272 != 24);
    v273 = 2;
LABEL_478:
    v274 = a10 + 6140;
    v275 = (a10 + 6144);
    v276 = xmmword_299728F20;
    v277 = vdupq_n_s64(2uLL);
    v278 = 14;
    do
    {
      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xEuLL), v276)).u8[0])
      {
        *(v275 - 1) = v273;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xEuLL), *&v276)).i32[1])
      {
        *v275 = v273;
      }

      v276 = vaddq_s64(v276, v277);
      v275 += 2;
      v278 -= 2;
    }

    while (v278);
    v279 = 0;
    v280 = a10 + 4174;
    v335 = (a10 + 5420);
    v330 = a6 + 16488;
    v329 = a10 + 3996;
    do
    {
      LODWORD(__b[0]) = 0;
      v281 = *(v280 + 2 * v279);
      v282 = v281 - 1;
      if (v281 >= 1)
      {
        v283 = LongPrnIdx_To_ShortPrnIdx((v281 - 1), __b);
        if (LODWORD(__b[0]) == 2)
        {
          v285 = v283;
          v286 = *(*(a10 + 6216) + 4 * v283);
          if (v286 != 2139062143)
          {
            v287 = v286 + 7;
            v288 = v335[v282];
            if (v288 == 3)
            {
              if (!*(v274 + 4 * v287))
              {
                --*(a10 + 6211);
              }

              ++*(a10 + 6212);
              *(v274 + 4 * v287) = 3;
              *(*(a10 + 6224) + 4 * v287) = v283 + 1;
              *(v330 + 4 * v287) = 3;
            }

            else if (v288 == 1)
            {
              v289 = *(v274 + 4 * v287);
              if (v289 == 1 || (v290 = *(a10 + 6210), v290 > 13))
              {
                v335[v282] = 2;
                v291 = *(a10 + 6132);
                if (v291 == *(a10 + 6136))
                {
                  EvLog_v("PP_Update_Glonass: num_viz & num_AA miss-match,  %d  %d   FrqId %d   Slot %d", *(a10 + 6132), v291, v287, v283 + 1);
                  v291 = *(a10 + 6132);
                }

                v292 = 0;
                if (v291)
                {
                  v293 = v291;
                  v294 = (a10 + 4174);
                  do
                  {
                    v296 = *v294++;
                    v295 = v296;
                    if (v296 != v281)
                    {
                      *(v280 + 2 * v292) = v295;
                      v292 = (v292 + 1);
                    }

                    --v293;
                  }

                  while (v293);
                }

                if (v292 != (v291 - 1))
                {
                  EvLog_nd("PP_Update_Glonass: num_vis not decremented", 2, v284, v292, v291);
                }

                *(v280 + 2 * v292) = -1;
                *(a10 + 6132) = v292;
                v297 = *(a10 + 6136) - 1;
                v174 = v297 == v292;
                v139 = a1;
                if (v174)
                {
                  v298 = *(v329 + v282);
                  *(a10 + 6136) = v297;
                  if ((v298 & 0x8000000000000000) == 0)
                  {
                    v299 = (a10 + 60 + 48 * v298);
                    *(v299 + 29) = 0u;
                    *v299 = 0u;
                    v299[1] = 0u;
                    *(v329 + v282) = -1;
                  }

                  EvCrt_v("PP_Update_Glonass:  Error:  Two Glonass SVs visible on same freq,  FrqId %d  Slot %d", v287, v285 + 1);
                }
              }

              else
              {
                if (!v289)
                {
                  --*(a10 + 6211);
                }

                *(a10 + 6196 + v290) = v286;
                ++*(a10 + 6210);
                *(v274 + 4 * v287) = 1;
                *(*(a10 + 6224) + 4 * v287) = v283 + 1;
                *(v330 + 4 * v287) = 3;
              }
            }
          }
        }
      }

      ++v279;
    }

    while (v279 != 178);
    v300 = 0;
    v301 = a10 + 5548;
    v189 = v336;
    v112 = a3;
    while (2)
    {
      if (*(v274 + 4 * v300))
      {
LABEL_515:
        if (++v300 == 14)
        {
          goto LABEL_476;
        }

        continue;
      }

      break;
    }

    v302 = 0;
    v303 = 0;
    v304 = *(a10 + 6216);
    v305 = 1;
    do
    {
      v306 = *(v304 + 4 * v302);
      if (v306 == v300 - 7)
      {
        *(__b + v303++) = v302;
      }

      else
      {
        v305 &= v306 != 2139062143;
      }

      if (v302 > 0x16)
      {
        break;
      }

      ++v302;
    }

    while (v303 < 2);
    if (v303 == 2 && *(v301 + 4 * SLODWORD(__b[0])) >= 2)
    {
      v307 = *(v301 + 4 * SDWORD1(__b[0])) > 1;
      if ((v305 & 1) == 0)
      {
        goto LABEL_531;
      }
    }

    else
    {
      v307 = 0;
      if ((v305 & 1) == 0)
      {
        goto LABEL_531;
      }
    }

    if (v303 == 1)
    {
      v308 = *(v301 + 4 * SLODWORD(__b[0])) > 1;
    }

    else
    {
      if (!v303)
      {
        *(v274 + 4 * v300) = 2;
        --*(a10 + 6211);
        goto LABEL_515;
      }

LABEL_531:
      v308 = 0;
    }

    if (v307 || v308)
    {
      *(v274 + 4 * v300) = 2;
      --*(a10 + 6211);
      if (v303 == 2 && (v305 & 1) != 0)
      {
        v309 = __b[0];
        if (*(SLODWORD(__b[0]) + a11 + 32) < *(SDWORD1(__b[0]) + a11 + 32))
        {
          v309 = DWORD1(__b[0]);
        }

        *(*(a10 + 6224) + 4 * v300) = v309 + 1;
        *(v330 + 4 * v300) = 3;
      }
    }

    goto LABEL_515;
  }

  *(a10 + 6210) = 0;
  memset_pattern16((a10 + 6140), &unk_299728F40, 0x38uLL);
LABEL_476:
  SB_SBAS_PrePos(v139, v189, v112, v320, a7, a10, a11, a9, a6);
}

_BYTE *PP_BDS_D2_Set_Not_Visible(_BYTE *result, _BYTE *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v20 = *MEMORY[0x29EDCA608];
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v8 = result;
          if (*result)
          {
            v9 = 0;
            v10 = 0;
            do
            {
              v19 = 0;
              v11 = *(a3 + 2 * v9);
              v12 = v11 - 1;
              if (v11 >= 1)
              {
                result = LongPrnIdx_To_Prn(v11 - 1, &v19);
                v13 = v19 != 4 || result == 0;
                if (!v13 && result <= 5)
                {
                  *(a3 + 2 * v9) = -1;
                  *(a4 + 4 * v12) = 2;
                  ++v10;
                }
              }

              ++v9;
              v15 = *v8;
            }

            while (v9 < v15);
            if (v10)
            {
              if (*v8)
              {
                v16 = 0;
                LODWORD(v17) = 0;
                do
                {
                  v18 = *(a3 + 2 * v16);
                  if (v18 >= 1)
                  {
                    *(a3 + 2 * v17) = v18;
                    LODWORD(v17) = v17 + 1;
                    LOBYTE(v15) = *v8;
                  }

                  ++v16;
                }

                while (v16 < v15);
              }

              else
              {
                LODWORD(v17) = 0;
              }

              if (v17 < v15)
              {
                v17 = v17;
                do
                {
                  if (*(a3 + 2 * v17) >= 1)
                  {
                    *(a3 + 2 * v17) = -1;
                    LOBYTE(v15) = *v8;
                  }

                  ++v17;
                }

                while (v17 < v15);
              }

              *v8 = v15 - v10;
              *a2 += v10;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t NK_VVel_Aiding_Required(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v6 = a2 + 23192;
  if ((!*(a1 + 11048) || *(a2 + 12) < 8 || *(a1 + 233) == 1) && *v6 == 1 || (v7 = *(a1 + 20), (v7 - 5) < 4) || v7 == 4 && *(a2 + 936) > 50.0)
  {
    result = 0;
    *a3 = 0;
    return result;
  }

  v24[0] = 0.0;
  v24[1] = 0.0;
  v25 = 0.0;
  Comp_NEDvar_UDU(a1 + 872, 0xBu, 8, (a2 + 832), v24);
  v9 = *(a1 + 11048);
  v10 = v9 && (*(a1 + 233) & 1) == 0 && (*(a1 + 20) & 0xFFFFFFFE) == 2 && *(a2 + 944) < 2.0;
  if (*(a2 + 12) > 8)
  {
    v11 = 4;
  }

  else
  {
    v11 = 5;
  }

  if (*(v6 + 1640) == 1 && *(a2 + 23224) < 4.0)
  {
    v11 = 0;
  }

  else if (v10 && *(v6 + 1588) < 4u)
  {
    v11 = 48;
  }

  else if (*(v6 + 1624) == 1 && *(a2 + 22952) < 1.0e-16)
  {
    --v11;
  }

  v12 = v25;
  if (*(v6 + 1589) < v11 || *(a2 + 8424) + *(a2 + 14000) < 1.5 || ((v13 = *(a1 + 20), v13 > 8) ? (v14 = 1000000.0) : (v14 = dbl_299728FD8[v13]), v25 > v14))
  {
    if (*(v6 + 1589) || *(v6 + 1644) || *(v6 + 1652) || *(v6 + 1668) || *(v6 + 1672))
    {
      *a3 = 1;
    }
  }

  if (*a3 != 1)
  {
    return 0;
  }

  if (v9 && *(a1 + 233) != 1)
  {
    v17 = *(a2 + 928);
    *(a3 + 24) = -v17;
    if (v10 && ((v18 = *(a2 + 944), v18 < 1.0) ? (v19 = *(v6 + 1588) >= 3u) : (v19 = 1), !v19 || v18 < 0.2) || v17 * v17 > v12 * 9.0)
    {
      *(a3 + 24) = 0;
    }

    v20 = *(a1 + 20);
    if (v20 > 8)
    {
      v21 = 9000000.0;
    }

    else
    {
      v21 = dbl_299728F90[v20];
    }

    if (v12 <= v21)
    {
      Dynamics_Mode::Get_Vert_Vel_Aid_Var(v20);
      v21 = v22 * 0.25;
      if (v12 >= v21)
      {
LABEL_61:
        if (v20 > 8)
        {
          v23 = 1000000.0;
        }

        else
        {
          v23 = dbl_299728FD8[v20];
        }

        v16 = v12 + v23;
        goto LABEL_65;
      }
    }

    else
    {
      *(a3 + 24) = 0;
    }

    v12 = v21;
    goto LABEL_61;
  }

  *(a3 + 24) = 0;
  v15 = *(a1 + 20);
  if (v15 > 8)
  {
    v16 = 1000000.0;
  }

  else
  {
    v16 = dbl_299728FD8[v15];
  }

LABEL_65:
  *(a3 + 32) = v16;
  *(a3 + 4) = 2;
  *(a3 + 20) = *a2;
  *(a3 + 16) = 0;
  *(a3 + 48) = xmmword_299728F80;
  *(a3 + 64) = 0;
  return 1;
}

uint64_t Extract_GAL_INAV_ALM(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (((v4 ^ v3) & 0x3C0) != 0)
  {
    return 0;
  }

  v6 = v3 >> 10;
  v7 = v4 >> 10;
  if (v3 >> 10 == 9)
  {
    if (v7 == 10)
    {
      *(a3 + 8) = v3;
      v12 = a1[1];
      *(a3 + 10) = v12;
      *(a3 + 10) = v12 & 0xFC00 | (2 * (a1[4] & 0x1FF)) | (a1[5] >> 15);
      HIDWORD(v13) = a1[5];
      LODWORD(v13) = a1[6] << 16;
      *(a3 + 12) = v13 >> 31;
      HIDWORD(v13) = a1[6];
      LODWORD(v13) = a1[7] << 16;
      *(a3 + 14) = v13 >> 31;
      *(a3 + 16) = (2 * a1[7]) | (*a2 >> 5) & 1;
      HIDWORD(v13) = *a2;
      LODWORD(v13) = a2[1] << 16;
      *(a3 + 18) = v13 >> 21;
      HIDWORD(v13) = a2[1];
      LODWORD(v13) = a2[2] << 16;
      *(a3 + 20) = v13 >> 21;
      HIDWORD(v13) = a2[2];
      LODWORD(v13) = a2[3] << 16;
      *(a3 + 22) = v13 >> 21;
      HIDWORD(v13) = a2[3];
      LODWORD(v13) = a2[4] << 16;
      *(a3 + 24) = v13 >> 21;
      v11 = (a2[5] >> 5) & 0x7E0 | (a2[4] << 11);
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 == 8)
  {
    if (v7 == 9)
    {
      *(a3 + 8) = v4;
      v9 = a2[1];
      *(a3 + 10) = v9;
      *(a3 + 10) = v9 & 0xFC00 | (32 * (a1[2] & 0x1F)) | (a1[3] >> 11);
      HIDWORD(v10) = a1[3];
      LODWORD(v10) = a1[4] << 16;
      *(a3 + 12) = v10 >> 27;
      HIDWORD(v10) = a1[4];
      LODWORD(v10) = a1[5] << 16;
      *(a3 + 14) = v10 >> 27;
      HIDWORD(v10) = a1[5];
      LODWORD(v10) = a1[6] << 16;
      *(a3 + 16) = v10 >> 27;
      HIDWORD(v10) = a1[6];
      LODWORD(v10) = a1[7] << 16;
      *(a3 + 18) = v10 >> 27;
      *(a3 + 20) = (32 * a1[7]) & 0xFFC0 | (a2[1] >> 4) & 0x3F;
      HIDWORD(v10) = a2[1];
      LODWORD(v10) = a2[2] << 16;
      *(a3 + 22) = v10 >> 20;
      HIDWORD(v10) = a2[2];
      LODWORD(v10) = a2[3] << 16;
      *(a3 + 24) = v10 >> 20;
      HIDWORD(v10) = a2[3];
      LODWORD(v10) = a2[4] << 16;
      v8 = v10 >> 20;
      goto LABEL_10;
    }

    return 0;
  }

  if (v6 != 7 || v7 != 8)
  {
    return 0;
  }

  *(a3 + 8) = *a1;
  *(a3 + 22) = *(a3 + 22) & 0xFFC0 | *a2 & 0x3F;
  *(a3 + 24) = a2[1];
  v8 = a2[2];
LABEL_10:
  LOWORD(v11) = v8 & 0xFFE0;
LABEL_13:
  *(a3 + 26) = v11;
  *(a3 + 28) = 0;
  return 1;
}

uint64_t Gnm37_03HandleSbConfigTimeout(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_SB_CONFIG_TIMER\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm37_03HandleSbConfigTimeout");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ActiveReqId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm37_03HandleSbConfigTimeout", g_SbState);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 2, 1);
    }

    Gnm10_29SendFwActivity(3, 0);
    HIWORD(g_SbState) = 2817;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm37_03HandleSbConfigTimeout", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 0, 1);
  }

  return 0;
}

uint64_t Gnm37_11HandleSbCfgReq(uint64_t a1)
{
  v45 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_SET_SB_CONFIG\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm37_11HandleSbCfgReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = unk_2A1920A8C == 848;
    if (!g_HWStatus[0])
    {
      v4 = g_GnssHw == 4;
    }

    if (v4)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NA\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm37_11HandleSbCfgReq", 264);
        LbsOsaTrace_WriteLog(0xBu, __str, v6, 2, 1);
      }

      v7 = *(a1 + 12);
      v8 = 2;
LABEL_18:
      Gnm11_00ApiStatusCB(v8, 1, v7, 14);
      return 0;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ReqId,%u,CfgValidityMask,0x%X\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 73, "Gnm37_11HandleSbCfgReq", *(a1 + 12), *(a1 + 16));
      LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
    }

    if (g_SbState != 255)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Request OnGoing ReqId:%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 69, "Gnm37_11HandleSbCfgReq", g_SbState);
        LbsOsaTrace_WriteLog(0xBu, __str, v14, 0, 1);
      }

      v7 = *(a1 + 12);
      v8 = 11;
      goto LABEL_18;
    }

    v16 = *(a1 + 16);
    v17 = *(a1 + 28);
    v18 = v17 | (*(a1 + 32) << 32);
    if ((v16 & 0x200) != 0 && BYTE1(v17))
    {
      if (g_HWStatus[0] == 1)
      {
        if (unk_2A1920A8C == 3431 && qword_2A1920A90 == 0x100000002)
        {
          goto LABEL_25;
        }
      }

      else if (!g_GnssHw)
      {
LABEL_25:
        if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
        {
LABEL_28:
          if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v21 = mach_continuous_time();
            v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v21), "GNM", 87, "Gnm37_11HandleSbCfgReq", 514);
            LbsOsaTrace_WriteLog(0xBu, __str, v22, 2, 1);
          }

          v7 = *(a1 + 12);
          v8 = 1;
          goto LABEL_18;
        }

        bzero(__str, 0x410uLL);
        v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HW,Bright,CfgValMask,0x%X,ForceFilter,%u\n", v19);
LABEL_27:
        LbsOsaTrace_WriteLog(0xBu, __str, v20, 2, 1);
        goto LABEL_28;
      }

      v34 = (BYTE2(v17) != 0) & (v16 >> 10);
      if (v34 == 1 && (BYTE2(v17) > 8u || ((1 << SBYTE2(v17)) & 0x116) == 0))
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
        {
          goto LABEL_28;
        }

        bzero(__str, 0x410uLL);
        v41 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CfgValMask,0x%X,GpsGalBds3FiltMsk,%u\n", v41);
        goto LABEL_27;
      }

      if ((v16 & 0x800) != 0)
      {
        v35 = BYTE3(v17);
        if (v35)
        {
          v34 = 1;
          if (v35 != 2 && v35 != 8)
          {
            if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
            {
              goto LABEL_28;
            }

            bzero(__str, 0x410uLL);
            v40 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CfgValMask,0x%X,GloFiltMsk,%u\n", v40);
            goto LABEL_27;
          }
        }
      }

      if ((v16 & 0x1000) != 0 && (v36 = HIDWORD(v18)) != 0)
      {
        if (v36 > 8 || ((1 << v36) & 0x114) == 0)
        {
          if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
          {
            goto LABEL_28;
          }

          bzero(__str, 0x410uLL);
          v37 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CfgValMask,0x%X,Bds2FiltMsk,%u\n", v37);
          goto LABEL_27;
        }
      }

      else if (!v34)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
        {
          goto LABEL_28;
        }

        bzero(__str, 0x410uLL);
        v39 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CfgValMask,0x%X,GpsGalBds3FiltMsk,%u,GloFiltMsk,%u,Bds2FiltMsk,%u\n", v39, "GNM");
        goto LABEL_27;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v38 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CfgValMask,0x%X,GpsGalBds3FiltMsk,%u,GloFiltMsk,%u,Bds2FiltMsk,%u\n", v38, "GNM");
        goto LABEL_33;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v42 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Mask,%u,ForceFilter,%u\n", v42);
LABEL_33:
      LbsOsaTrace_WriteLog(0xBu, __str, v23, 4, 1);
    }

    *v43 = qword_2A193B7D6;
    *&v43[5] = *(&qword_2A193B7D6 + 5);
    v24 = *(a1 + 16);
    if ((v24 & 1) != 0 && v43[0] != *(a1 + 20))
    {
      v43[0] = *(a1 + 20);
      v25 = 1;
      if ((v24 & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v25 = 0;
      if ((v24 & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    if (v43[1] != *(a1 + 21))
    {
      v43[1] = *(a1 + 21);
      v25 = 1;
    }

LABEL_41:
    if ((v24 & 4) != 0 && v43[2] != *(a1 + 22))
    {
      v43[2] = *(a1 + 22);
      v25 = 1;
    }

    if ((v24 & 8) != 0 && v43[3] != *(a1 + 23))
    {
      v43[3] = *(a1 + 23);
      v25 = 1;
    }

    if ((v24 & 0x10) != 0 && v43[4] != *(a1 + 24))
    {
      v43[4] = *(a1 + 24);
      v25 = 1;
    }

    if ((v24 & 0x20) != 0 && v43[5] != *(a1 + 25))
    {
      v43[5] = *(a1 + 25);
      v25 = 1;
    }

    if ((v24 & 0x40) != 0 && v43[6] != *(a1 + 26))
    {
      v43[6] = *(a1 + 26);
      v25 = 1;
    }

    if ((v24 & 0x80) != 0 && v43[7] != *(a1 + 27))
    {
      v43[7] = *(a1 + 27);
      v25 = 1;
    }

    if ((v24 & 0x100) != 0 && v43[8] != *(a1 + 28))
    {
      v43[8] = *(a1 + 28);
      v25 = 1;
    }

    if ((v24 & 0x200) != 0 && v43[9] != *(a1 + 29))
    {
      v43[9] = *(a1 + 29);
      v25 = 1;
    }

    if ((v24 & 0x400) != 0 && v43[10] != *(a1 + 30))
    {
      v43[10] = *(a1 + 30);
      v25 = 1;
    }

    if ((v24 & 0x800) != 0 && v43[11] != *(a1 + 31))
    {
      v43[11] = *(a1 + 31);
      v25 = 1;
    }

    if ((v24 & 0x1000) != 0 && v43[12] != *(a1 + 32))
    {
      v43[12] = *(a1 + 32);
    }

    else if ((v25 & 1) == 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v26 = mach_continuous_time();
        v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Chip Config matches Requested Config\n", (*&g_MacClockTicksToMsRelation * v26), "GNM", 73, "Gnm37_11HandleSbCfgReq");
        LbsOsaTrace_WriteLog(0xBu, __str, v27, 4, 1);
      }

      v28 = *(a1 + 12);
      v29 = 0;
LABEL_82:
      Gnm11_00ApiStatusCB(v29, 1, v28, 14);
      g_SbState = 234881279;
      return 0;
    }

    v30 = *(a1 + 12);
    if (!AgpsFsmStartTimer(8399878, 0xFAu))
    {
      Gnm10_29SendFwActivity(3, 1);
      Gnm38_12SendSBCfg(v30, 83, v43, v33);
      qword_2A193B7D6 = *v43;
      *(&qword_2A193B7D6 + 5) = *&v43[5];
      LOBYTE(g_SbState) = *(a1 + 12);
      BYTE1(g_SbState) = 1;
      return 0;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v31 = mach_continuous_time();
      v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v31), "GNM", 69, "Gnm37_04ChkSendSbRequest", 1544);
      LbsOsaTrace_WriteLog(0xBu, __str, v32, 0, 1);
    }

    v29 = 11;
    v28 = v30;
    goto LABEL_82;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 69, "Gnm37_11HandleSbCfgReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v10, 0, 1);
  }

  return 0;
}

double Gnm37_12HandleSbConfigRsp(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SbCfgRsp SeqNum,%u,Status,%c\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm37_12HandleSbConfigRsp", a2, a1);
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
    }

    if (a2 == 239)
    {
      if (a1 != 32)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GetStatusError,%c\n");
          goto LABEL_19;
        }

LABEL_20:
        Gnm10_29SendFwActivity(3, 0);
        BYTE2(g_SbState) = 1;
        return result;
      }

LABEL_12:
      Gnm37_01UpdateSbCfgFromChip(a3);
      goto LABEL_20;
    }

    if (a2 == 236)
    {
      if (a1 != 32)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SBDfltCfg SeqNo,%X,Status,%c\n", v8, "GNM");
LABEL_19:
          LbsOsaTrace_WriteLog(0xBu, __str, v9, 0, 1);
          goto LABEL_20;
        }

        goto LABEL_20;
      }

      goto LABEL_12;
    }

    v13 = g_SbState;
    if (g_SbState == a2)
    {
      if (!AgpsFsmStopTimer(8399878) || !LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
LABEL_25:
        if (a1 == 32)
        {
          Gnm37_01UpdateSbCfgFromChip(a3);
          HIBYTE(g_SbState) = 0;
          Gnm10_29SendFwActivity(3, 0);
          BYTE2(g_SbState) = 1;
        }

        else
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v16 = mach_continuous_time();
            v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SBDReqErr SeqNo,%X,Status,%c\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 69, "Gnm37_12HandleSbConfigRsp", 770, a2, a1);
            LbsOsaTrace_WriteLog(0xBu, __str, v17, 0, 1);
          }

          HIBYTE(g_SbState) = 11;
          if (v13 == a2)
          {
            return Gnm38_12SendSBCfg(239, 71, 0, result);
          }
        }

        return result;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    }

    else
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        goto LABEL_25;
      }

      bzero(__str, 0x410uLL);
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ActiveId,%u,ReqId,%u\n", v15);
    }

    LbsOsaTrace_WriteLog(0xBu, __str, v14, 2, 1);
    goto LABEL_25;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SbCfgRsp\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 69, "Gnm37_12HandleSbConfigRsp", 513);
    LbsOsaTrace_WriteLog(0xBu, __str, v12, 0, 1);
  }

  return result;
}

unsigned __int8 *Gnm37_01UpdateSbCfgFromChip(unsigned __int8 *result)
{
  v1 = result;
  v43 = *MEMORY[0x29EDCA608];
  v2 = qword_2A193B7D6;
  v3 = BYTE1(qword_2A193B7D6);
  v4 = BYTE2(qword_2A193B7D6);
  v5 = BYTE3(qword_2A193B7D6);
  v6 = BYTE4(qword_2A193B7D6);
  v7 = BYTE5(qword_2A193B7D6);
  v8 = BYTE6(qword_2A193B7D6);
  v9 = HIBYTE(qword_2A193B7D6);
  v41 = byte_2A193B7DE;
  v40 = byte_2A193B7DF;
  v39 = byte_2A193B7E0;
  v38 = byte_2A193B7E1;
  v37 = byte_2A193B7E2;
  if (qword_2A193B7D6 != *result)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LegacyFta Host,%u,Chip,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm37_01UpdateSbCfgFromChip", v2, *v1);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
    }

    LOBYTE(v2) = *v1;
  }

  if (v3 != v1[1])
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EFA Host,%u,Chip,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm37_01UpdateSbCfgFromChip", v3, v1[1]);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v13, 4, 1);
    }

    LOBYTE(v3) = v1[1];
  }

  if (v4 != v1[2])
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: StatSpurCanclCfg Host,%u,Chip,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 73, "Gnm37_01UpdateSbCfgFromChip", v4, v1[2]);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v15, 4, 1);
    }

    LOBYTE(v4) = v1[2];
  }

  if (v5 != v1[3])
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DynSpurCanclCfg Host,%u,Chip,%u\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm37_01UpdateSbCfgFromChip", v5, v1[3]);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v17, 4, 1);
    }

    LOBYTE(v5) = v1[3];
  }

  if (v6 != v1[4])
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: JammerDetect Host,%u,Chip,%u \n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 73, "Gnm37_01UpdateSbCfgFromChip", v6, v1[4]);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v19, 4, 1);
    }

    LOBYTE(v6) = v1[4];
  }

  if (v7 != v1[5])
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LegacyBlanking Host,%u,Chip,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNM", 73, "Gnm37_01UpdateSbCfgFromChip", v7, v1[5]);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v21, 4, 1);
    }

    LOBYTE(v7) = v1[5];
  }

  if (v8 != v1[6])
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EBlankGpsGalBds3 Host,%u,Chip,%u\n", (*&g_MacClockTicksToMsRelation * v22), "GNM", 73, "Gnm37_01UpdateSbCfgFromChip", v8, v1[6]);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v23, 4, 1);
    }

    LOBYTE(v8) = v1[6];
  }

  if (v9 != v1[7])
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v24 = mach_continuous_time();
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EBlankGlo Host,%u,Chip,%u\n", (*&g_MacClockTicksToMsRelation * v24), "GNM", 73, "Gnm37_01UpdateSbCfgFromChip", v9, v1[7]);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v25, 4, 1);
    }

    LOBYTE(v9) = v1[7];
  }

  if (v41 != v1[8])
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v26 = mach_continuous_time();
      v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EBlankBds2 Host,0x%X,Chip,0x%X\n", (*&g_MacClockTicksToMsRelation * v26), "GNM", 73, "Gnm37_01UpdateSbCfgFromChip", v41, v1[8]);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v27, 4, 1);
    }

    LOBYTE(v41) = v1[8];
  }

  if (v40 != v1[9])
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v28 = mach_continuous_time();
      v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ForceFilter Host,%u,Chip,%u\n", (*&g_MacClockTicksToMsRelation * v28), "GNM", 73, "Gnm37_01UpdateSbCfgFromChip", v40, v1[9]);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v29, 4, 1);
    }

    LOBYTE(v40) = v1[9];
  }

  if (v39 != v1[10])
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GpsGalBds3FiltMsk Host,0x%X,Chip,0x%X\n", (*&g_MacClockTicksToMsRelation * v30), "GNM", 73, "Gnm37_01UpdateSbCfgFromChip", v39, v1[10]);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v31, 4, 1);
    }

    LOBYTE(v39) = v1[10];
  }

  if (v38 != v1[11])
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v32 = mach_continuous_time();
      v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GloFiltMsk Host,0x%X,Chip,0x%X\n", (*&g_MacClockTicksToMsRelation * v32), "GNM", 73, "Gnm37_01UpdateSbCfgFromChip", v38, v1[11]);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v33, 4, 1);
    }

    LOBYTE(v38) = v1[11];
  }

  v34 = v37;
  if (v37 != v1[12])
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v35 = mach_continuous_time();
      v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Bds2FiltMsk Host,0x%X,Chip,0x%X\n", (*&g_MacClockTicksToMsRelation * v35), "GNM", 73, "Gnm37_01UpdateSbCfgFromChip", v37, v1[12]);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v36, 4, 1);
    }

    v34 = v1[12];
  }

  LOBYTE(qword_2A193B7D6) = v2;
  BYTE1(qword_2A193B7D6) = v3;
  BYTE2(qword_2A193B7D6) = v4;
  BYTE3(qword_2A193B7D6) = v5;
  BYTE4(qword_2A193B7D6) = v6;
  BYTE5(qword_2A193B7D6) = v7;
  BYTE6(qword_2A193B7D6) = v8;
  HIBYTE(qword_2A193B7D6) = v9;
  byte_2A193B7DE = v41;
  byte_2A193B7DF = v40;
  byte_2A193B7E0 = v39;
  byte_2A193B7E1 = v38;
  byte_2A193B7E2 = v34;
  return result;
}

uint64_t Gnm37_13HandleSbStopFwActResp(uint64_t result)
{
  v5 = *MEMORY[0x29EDCA608];
  if (BYTE2(g_SbState) == 1)
  {
    v1 = result;
    if (BYTE1(g_SbState) == 1)
    {
      result = Gnm11_00ApiStatusCB(HIBYTE(g_SbState), 1, g_SbState, 14);
    }

    if ((v1 & 1) == 0)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v2 = mach_continuous_time();
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FW activity Stop Failure Id,%u,AsyncRsp,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 87, "Gnm37_13HandleSbStopFwActResp", g_SbState, HIBYTE(g_SbState));
        result = LbsOsaTrace_WriteLog(0xBu, __str, v3, 2, 1);
      }
    }

    g_SbState = 234881279;
  }

  return result;
}

BOOL Gnm37_25MapSbCfgGnmToPlcBright(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 5);
  v4 = *(a2 + 3);
  *(a1 + 4) = v4;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 10) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 10);
  *(a1 + 13) = *(a2 + 11);
  result = Gnm37_20GetPlcEBlankingCfg(a2);
  *(a1 + 3) = result;
  v6 = *(a2 + 6) != 0;
  if (*(a2 + 6))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  if (*(a2 + 7))
  {
    v6 = v7;
  }

  if (*(a2 + 8))
  {
    v6 |= 4u;
  }

  *(a1 + 11) = v6;
  v8 = *(a2 + 2) != 0;
  if (*(a2 + 2))
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  if (v4)
  {
    v8 = v9;
  }

  *(a1 + 15) = v8;
  *(a1 + 1) = 0;
  *(a1 + 6) = 0;
  return result;
}

BOOL Gnm37_26MapSbCfgGnmToPlcSunshine(uint64_t a1, uint64_t a2, uint8x8_t a3)
{
  *a1 = *a2;
  *(a1 + 3) = *(a2 + 4);
  a3.i32[0] = *(a2 + 9);
  v5 = vmovl_u8(a3).u64[0];
  v6 = vext_s8(v5, v5, 2uLL);
  *(a1 + 6) = vuzp1_s8(v6, v6).u32[0];
  result = Gnm37_20GetPlcEBlankingCfg(a2);
  *(a1 + 10) = result;
  v8 = *(a2 + 6) != 0;
  if (*(a2 + 6))
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  if (*(a2 + 7))
  {
    v8 = v9;
  }

  if (*(a2 + 8))
  {
    v8 |= 4u;
  }

  *(a1 + 5) = v8;
  v10 = *(a2 + 2) != 0;
  if (*(a2 + 2))
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  if (*(a2 + 3))
  {
    v10 = v11;
  }

  *(a1 + 2) = v10;
  *(a1 + 11) = 0;
  return result;
}

uint64_t Gnm37_27MapSbCfgPlcToGnmBright(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 1) = *(a2 + 8);
  *(result + 4) = *(a2 + 10);
  *(result + 5) = *(a2 + 2);
  *(result + 10) = *(a2 + 12);
  *(result + 11) = *(a2 + 13);
  v2 = *(a2 + 15);
  if (v2)
  {
    *(result + 2) = 1;
  }

  if ((v2 & 2) != 0)
  {
    *(result + 3) = 1;
  }

  v3 = *(a2 + 11);
  if ((v3 & 1) == 0)
  {
    if ((*(a2 + 11) & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    *(result + 7) = 1;
    if ((v3 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(result + 6) = 1;
  if ((v3 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v3 & 4) != 0)
  {
LABEL_8:
    *(result + 8) = 1;
  }

LABEL_9:
  *(result + 9) = 0;
  return result;
}

uint64_t Gnm37_28MapSbCfgPlcToGnmSunshine(uint64_t result, uint64_t a2, uint8x8_t a3)
{
  *result = *a2;
  *(result + 4) = *(a2 + 3);
  a3.i32[0] = *(a2 + 6);
  v3 = vmovl_u8(a3).u64[0];
  v4 = vext_s8(v3, v3, 6uLL);
  *(result + 9) = vuzp1_s8(v4, v4).u32[0];
  v5 = *(a2 + 2);
  if (v5)
  {
    *(result + 2) = 1;
  }

  if ((v5 & 2) != 0)
  {
    *(result + 3) = 1;
  }

  v6 = *(a2 + 5);
  if (v6)
  {
    *(result + 6) = 1;
    if ((v6 & 2) == 0)
    {
LABEL_7:
      if ((v6 & 4) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 5) & 2) == 0)
  {
    goto LABEL_7;
  }

  *(result + 7) = 1;
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 8) = 1;
  return result;
}

__n128 GN_GPS_Get_LibVersion(char *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(xmmword_2A19269A0 + 472);
  v3 = *(xmmword_2A19269A0 + 476);
  v4 = *(xmmword_2A19269A0 + 480);
  v5 = *(xmmword_2A19269A0 + 481);
  v6 = xmmword_2A1926A20;
  if (__PAIR64__(*(xmmword_2A1926A20 + 12), *(xmmword_2A1926A20 + 8)) != __PAIR64__(v3, v2))
  {
    *(xmmword_2A1926A20 + 8) = v2;
    *(v6 + 12) = v3;
    *(v6 + 16) = v4;
    *(v6 + 17) = v5;
    v7 = *v6 + 18;
    v17 = *v6;
    v18 = v7;
    v16[0] = v17;
    v16[1] = v17;
    sprintf_03d(v16, v2);
    v8 = v16[0]++;
    *v8 = 45;
    if (v16[0] >= v18)
    {
      v16[0] = v17;
    }

    sprintf_08x(v16, *(v6 + 12));
    v9 = v16[0]++;
    *v9 = 45;
    if (v16[0] >= v18)
    {
      v16[0] = v17;
    }

    sprintf_02d(v16, *(v6 + 16));
    v10 = v16[0]++;
    *v10 = 46;
    if (v16[0] >= v18)
    {
      v16[0] = v17;
    }

    sprintf_02d(v16, *(v6 + 17));
  }

  v11 = *(v6 + 18);
  v12 = *(v6 + 50);
  *(a1 + 1) = *(v6 + 34);
  *(a1 + 2) = v12;
  *a1 = v11;
  result = *(v6 + 66);
  v14 = *(v6 + 82);
  v15 = *(v6 + 98);
  *(a1 + 24) = *(v6 + 114);
  *(a1 + 4) = v14;
  *(a1 + 5) = v15;
  *(a1 + 3) = result;
  return result;
}

char **GN_GPS_Initialise(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v62 = *MEMORY[0x29EDCA608];
  v1 = mach_continuous_time();
  v2 = 0;
  v3 = (*&g_MacClockTicksToMsRelation * v1);
  v4 = &v60[24];
  v5 = vdupq_n_s64(0xBuLL);
  do
  {
    v6 = vdupq_n_s64(v2);
    v7 = vorrq_s8(v6, xmmword_299728F20);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v5, v7)), 2).u8[0])
    {
      *v4 = v3;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), v7)), 2).i8[2])
    {
      *(v4 - 1) = v3;
    }

    if (vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), vorrq_s8(v6, xmmword_299729020)))).i32[1])
    {
      *(v4 - 2) = v3;
      *(v4 - 3) = v3;
    }

    v2 += 4;
    v4 -= 4;
  }

  while (v2 != 12);
  Last_Published_Nav_Data_TTag = 0;
  Last_Published_Raw_Meas_TTag = 0;
  _MergedGlobals_1 = 0;
  inited = GNSS_Init_p_list(v1);
  GNSS_Clear_DataAreas(inited);
  v9 = *(&g_GN_GPS_Data_p_list + 1);
  **(&g_GN_GPS_Data_p_list + 1) = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  GNSS_HL_Data_Bases_Clear(&g_GN_GPS_Data_p_list);
  EvCrt_v("GN_GPS_Initialise: ");
  g_Enable_Nav_Debug = 4;
  v10 = 1;
  g_Enable_GNB_Debug = 1;
  g_Enable_Event_Log = 2;
  g_Enable_LCD_Debug = 515;
  v11 = xmmword_2A1926A20;
  *(xmmword_2A1926A20 + 8) = 0;
  *(v11 + 12) = 0;
  *(v11 + 21) = 1717660783;
  *(v11 + 18) = 1868720492;
  *(&__src[1] + 1) = v11 + 34;
  LOBYTE(v12) = 32;
  *(v11 + 25) = 32;
  v13 = (v11 + 25);
  *&__src[1] = v11 + 25;
  *(&__src[0] + 1) = v11 + 25;
  if ((v11 + 26) < *(&__src[1] + 1))
  {
    v13 = (v11 + 26);
  }

  strcpy(v61, " 2");
  do
  {
    *&__src[0] = v13 + 1;
    *v13 = v12;
    v13 = *&__src[0];
    if (*&__src[0] >= *(&__src[1] + 1))
    {
      v13 = *&__src[1];
      *&__src[0] = *&__src[1];
    }

    v12 = v61[v10++];
  }

  while (v12);
  *&__src[0] = v13 + 1;
  *v13 = 46;
  if (*&__src[0] >= *(&__src[1] + 1))
  {
    *&__src[0] = *&__src[1];
  }

  digit2(__src, 4u, v61, 0, 0);
  v14 = (*&__src[0])++;
  *v14 = 46;
  if (*&__src[0] >= *(&__src[1] + 1))
  {
    v15 = *&__src[1];
  }

  else
  {
    v15 = *&__src[0];
  }

  *&__src[0] = v15 + 1;
  *v15 = 73;
  if (*&__src[0] >= *(&__src[1] + 1))
  {
    v16 = *&__src[1];
  }

  else
  {
    v16 = *&__src[0];
  }

  *&__src[0] = v16 + 1;
  *v16 = 45;
  strcpy((v11 + 34), "230302-000-00000000-00.00 Oct 10 2025 20:43:04");
  *v11 = v11 + 41;
  *(v11 + 118) = 0;
  *&word_2A1971776 = 0;
  if (byte_2A1971774 == 1)
  {
    v17 = word_2A197177A + 1;
  }

  else
  {
    v17 = 1;
    byte_2A1971774 = 1;
  }

  word_2A197177A = v17;
  GNSS_Mark_Restart(0);
  DWORD1(v59) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  EvLog("GN_GPS_Initialise:  Read NV_Store NO Data");
  bzero(__src, 0x59A0uLL);
  for (i = 184; i != 1976; i += 56)
  {
    v19 = __src + i;
    *(v19 + 12) = 0;
    *(v19 + 1) = 0uLL;
    *(v19 + 2) = 0uLL;
    *v19 = 0uLL;
  }

  do
  {
    v20 = __src + i;
    *(v20 + 28) = 0;
    *(v20 + 5) = 0uLL;
    *(v20 + 6) = 0uLL;
    *(v20 + 3) = 0uLL;
    *(v20 + 4) = 0uLL;
    *(v20 + 1) = 0uLL;
    *(v20 + 2) = 0uLL;
    i += 120;
    *v20 = 0uLL;
  }

  while (i != 5816);
  *(&__src[364] + 6) = 0;
  *(&__src[363] + 8) = 0u;
  v21 = -560;
  do
  {
    v22 = __src + v21;
    *(v22 + 1612) = 0;
    *(v22 + 402) = 0uLL;
    *(v22 + 401) = 0uLL;
    *(v22 + 400) = 0uLL;
    v21 += 56;
  }

  while (v21);
  v23 = -1200;
  do
  {
    v24 = __src + v23;
    *(v24 + 1928) = 0;
    *(v24 + 481) = 0uLL;
    *(v24 + 480) = 0uLL;
    *(v24 + 479) = 0uLL;
    *(v24 + 478) = 0uLL;
    *(v24 + 477) = 0uLL;
    *(v24 + 476) = 0uLL;
    *(v24 + 475) = 0uLL;
    v23 += 120;
  }

  while (v23);
  memset(&__src[475], 0, 70);
  v25 = 0xFFFFFFFFFFFFF94;
  do
  {
    v26 = (&__src[v25 + 587] + 8);
    *(v26 + 27) = 0uLL;
    *v26 = 0uLL;
    v26[1] = 0uLL;
    v25 += 3;
  }

  while (v25 * 16);
  v27 = 0xFFFFFFFFFFFFF28;
  do
  {
    v28 = (&__src[v27 + 803] + 8);
    *(v28 + 79) = 0uLL;
    v28[3] = 0uLL;
    v28[4] = 0uLL;
    v28[1] = 0uLL;
    v28[2] = 0uLL;
    *v28 = 0uLL;
    v27 += 6;
  }

  while (v27 * 16);
  BYTE8(__src[806]) = 0;
  *(&__src[804] + 8) = 0u;
  *(&__src[805] + 8) = 0u;
  *(&__src[803] + 8) = 0u;
  memset(&__src[807], 0, 28);
  v29 = -2072;
  do
  {
    *(&__src[941] + v29 + 8) = 0;
    v30 = (&__src[938] + v29 + 8);
    v30[1] = 0uLL;
    v30[2] = 0uLL;
    *v30 = 0uLL;
    v29 += 56;
  }

  while (v29);
  v31 = &__src[938] + 8;
  v32 = 4144;
  do
  {
    *(v31 + 26) = 0;
    *(v31 + 2) = 0uLL;
    *(v31 + 3) = 0uLL;
    *(v31 + 4) = 0uLL;
    *(v31 + 5) = 0uLL;
    *(v31 + 94) = 0;
    *(v31 + 1) = 0;
    *(v31 + 2) = 0;
    *v31 = 0;
    *(v31 + 23) = 0;
    v31 += 112;
    v32 -= 112;
  }

  while (v32);
  DWORD2(__src[1199]) = 0;
  *(&__src[1197] + 8) = 0u;
  *(&__src[1198] + 8) = 0u;
  DWORD1(__src[1201]) = 0;
  BYTE8(__src[1201]) = 0;
  HIDWORD(__src[1201]) = 0;
  LOBYTE(__src[1202]) = 0;
  v33 = &__src[1202] + 8;
  v34 = 1152;
  memset(&__src[1200], 0, 18);
  do
  {
    *(v33 + 28) = 0;
    *(v33 + 20) = 0;
    *(v33 + 36) = 0;
    *v33 = 0;
    *(v33 + 1) = 0;
    *(v33 + 8) = 0;
    v33 += 48;
    v34 -= 48;
  }

  while (v34);
  v35 = -1728;
  do
  {
    v36 = &__src[1382] + v35 + 8;
    *(v36 + 62) = 0;
    *(v36 + 2) = 0uLL;
    *(v36 + 3) = 0uLL;
    *v36 = 0uLL;
    *(v36 + 1) = 0uLL;
    v35 += 72;
  }

  while (v35);
  v37 = 0xFFFFFFFFFFFFFECLL;
  do
  {
    *(&__src[v37 + 1403] + 1) = 0;
    v38 = &__src[v37 + 1402] + 8;
    *(v38 + 6) = 0;
    *v38 = 0uLL;
    v37 += 2;
  }

  while (v37 * 16);
  *(&__src[1403] + 14) = 0;
  *(&__src[1402] + 8) = 0u;
  *(&__src[1403] + 1) = 0;
  *(&__src[1427] + 6) = 0;
  *(&__src[1404] + 8) = 0u;
  *(&__src[1405] + 8) = 0u;
  *(&__src[1406] + 8) = 0u;
  *(&__src[1407] + 8) = 0u;
  *(&__src[1408] + 8) = 0u;
  *(&__src[1409] + 8) = 0u;
  *(&__src[1410] + 8) = 0u;
  *(&__src[1411] + 8) = 0u;
  *(&__src[1412] + 8) = 0u;
  *(&__src[1413] + 8) = 0u;
  *(&__src[1414] + 8) = 0u;
  *(&__src[1415] + 8) = 0u;
  *(&__src[1416] + 8) = 0u;
  *(&__src[1417] + 8) = 0u;
  *(&__src[1418] + 8) = 0u;
  *(&__src[1419] + 8) = 0u;
  *(&__src[1420] + 8) = 0u;
  *(&__src[1421] + 8) = 0u;
  *(&__src[1422] + 8) = 0u;
  *(&__src[1423] + 8) = 0u;
  *(&__src[1424] + 8) = 0u;
  *(&__src[1425] + 8) = 0u;
  *(&__src[1426] + 8) = 0u;
  memset(&__src[1428], 0, 20);
  *(&__src[1429] + 8) = 0u;
  *(&__src[1430] + 8) = 0u;
  *(&__src[1431] + 8) = 0u;
  *(&__src[1432] + 8) = 0u;
  DWORD2(__src[1433]) = 0;
  v39 = xmmword_2A1926A40;
  memcpy(xmmword_2A1926A40, __src, 0x599CuLL);
  NV_Ram_Init(v39, xmmword_2A1926A50, v40);
  Debug_Log_NonVol(0, xmmword_2A1926A40);
  v57 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  DWORD2(v59) = v57;
  v41 = *(&xmmword_2A1926A40 + 1);
  EvLog("NA_Ram_Init:");
  p_NA = v41;
  bzero(__src, 0x5438uLL);
  s_NA_Ram::s_NA_Ram(__src);
  memcpy(p_NA, __src, 0x5438uLL);
  GNSS_HL_Data_Bases_Init(&g_GN_GPS_Data_p_list);
  *(*(&xmmword_2A1926940 + 1) + 944) = -1169279272;
  Nav_Kalman_Update_Init(qword_2A19269B0);
  v56 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  HIDWORD(v59) = v56;
  API_Query_Config(*(&xmmword_2A1926A20 + 1));
  g_GN_GNSS_Nav_Debug_Port = 1;
  v55 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  *v60 = v55;
  v42 = xmmword_2A19269A0;
  v43 = *(xmmword_2A19269A0 + 448);
  *(xmmword_2A19269A0 + 504) = v43;
  *(v42 + 496) = 0;
  EvLog_v("GN_GPS_Initialise:  GNB ROM %d 0x%x %u", *(v42 + 472), *(v42 + 476), v43);
  v44 = *(*(&xmmword_2A1926940 + 1) + 1026);
  v53 = *(*(&xmmword_2A1926940 + 1) + 1133);
  v54 = *(*(&xmmword_2A1926940 + 1) + 1134);
  v51 = *(*(&xmmword_2A1926940 + 1) + 1124);
  v52 = *(*(&xmmword_2A1926940 + 1) + 1132);
  v50 = *(*(&xmmword_2A1926940 + 1) + 1028);
  EvLog_nd("GN_GPS_Initialise: ", 47, v44, *(*(&xmmword_2A1926940 + 1) + 4), *(*(&xmmword_2A1926940 + 1) + 68), *(*(&xmmword_2A1926940 + 1) + 73), *(*(&xmmword_2A1926940 + 1) + 24), *(*(&xmmword_2A1926940 + 1) + 28), *(*(&xmmword_2A1926940 + 1) + 72), *(*(&xmmword_2A1926940 + 1) + 31), *(*(&xmmword_2A1926940 + 1) + 32), *(*(&xmmword_2A1926940 + 1) + 33), *(*(&xmmword_2A1926940 + 1) + 34), *(*(&xmmword_2A1926940 + 1) + 35), *(*(&xmmword_2A1926940 + 1) + 36), *(*(&xmmword_2A1926940 + 1) + 37), *(*(&xmmword_2A1926940 + 1) + 38), *(*(&xmmword_2A1926940 + 1) + 39), *(*(&xmmword_2A1926940 + 1) + 40), *(*(&xmmword_2A1926940 + 1) + 41), *(*(&xmmword_2A1926940 + 1) + 42), *(*(&xmmword_2A1926940 + 1) + 43), *(*(&xmmword_2A1926940 + 1) + 46), *(*(&xmmword_2A1926940 + 1) + 66), *(*(&xmmword_2A1926940 + 1) + 948), *(*(&xmmword_2A1926940 + 1) + 1012), *(*(&xmmword_2A1926940 + 1) + 1013), *(*(&xmmword_2A1926940 + 1) + 1014), *(*(&xmmword_2A1926940 + 1) + 1015), *(*(&xmmword_2A1926940 + 1) + 1016), *(*(&xmmword_2A1926940 + 1) + 1017), *(*(&xmmword_2A1926940 + 1) + 1018), *(*(&xmmword_2A1926940 + 1) + 1019), *(*(&xmmword_2A1926940 + 1) + 1020), *(*(&xmmword_2A1926940 + 1) + 1021), *(*(&xmmword_2A1926940 + 1) + 1060), *(*(&xmmword_2A1926940 + 1) + 1052), *(*(&xmmword_2A1926940 + 1) + 16), *(*(&xmmword_2A1926940 + 1) + 960), *(*(&xmmword_2A1926940 + 1) + 968), *(*(&xmmword_2A1926940 + 1) + 976), *(*(&xmmword_2A1926940 + 1) + 984), *(*(&xmmword_2A1926940 + 1) + 1024), v44, v50, *(*(&xmmword_2A1926940 + 1) + 1120), v51, v52, v53, v54);
  v45 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  *&v60[4] = v45;
  *&v60[8] = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  EvLog_v("GN_GPS_Initialise: OS Time Waypoints: %u %d %d %d %d %d %d", v59, DWORD1(v59) - v59, v57 - v59, v56 - v59, v55 - v59, v45 - v59, *&v60[8] - v59);
  v46 = *(&xmmword_2A1926940 + 1);
  v47 = *(&xmmword_2A1926940 + 1) + 1072;
  v48 = *v60;
  *(*(&xmmword_2A1926940 + 1) + 1072) = v59;
  *(v46 + 1088) = v48;
  *(v47 + 28) = *&v60[12];
  return GNSS_Event_Log_Ctl(*(&xmmword_2A1926A70 + 1));
}

void GNSS_Mark_Restart(int a1)
{
  v51 = *MEMORY[0x29EDCA608];
  GNSS_Write_NMEA(*(&xmmword_2A1926A60 + 1));
  GNSS_Write_GNB_Ctrl(xmmword_2A1926A60);
  GNSS_GNB_Debug_Ctl(xmmword_2A1926A80);
  GNSS_Event_Log_Ctl(*(&xmmword_2A1926A70 + 1));
  GNSS_Nav_Debug_Ctl(xmmword_2A1926A70);
  LCD_SA_Debug_Ctl(*(&xmmword_2A1926A80 + 1));
  API_Query_Config(v43);
  v2 = 1;
  if (!v44 && !v45)
  {
    v2 = v46 != 0;
  }

  v3 = xmmword_2A1926A60;
  v4 = *(xmmword_2A1926A60 + 16);
  *xmmword_2A1926A60 = v4;
  *(v3 + 8) = v4;
  if (a1 == 2)
  {
    GN_GPS_Get_LibVersion(&v41);
    v5 = 0;
    v6 = *v3;
    v7 = 10;
    do
    {
      *v3 = v6 + 1;
      *v6 = v7;
      v6 = *v3;
      if (*v3 >= *(v3 + 24))
      {
        v6 = *(v3 + 16);
        *v3 = v6;
      }

      v7 = aPeGnLibVer[++v5];
    }

    while (v5 != 16);
    v8 = v41;
    if (v41)
    {
      v9 = v42;
      do
      {
        *v3 = v6 + 1;
        *v6 = v8;
        v6 = *v3;
        if (*v3 >= *(v3 + 24))
        {
          v6 = *(v3 + 16);
          *v3 = v6;
        }

        v10 = *v9++;
        v8 = v10;
      }

      while (v10);
    }

    v11 = 32;
    v12 = 1u;
    do
    {
      *v3 = v6 + 1;
      *v6 = v11;
      v6 = *v3;
      if (*v3 >= *(v3 + 24))
      {
        v6 = *(v3 + 16);
        *v3 = v6;
      }

      v11 = aOsms[v12++];
    }

    while (v12 != 7);
    v13 = mach_continuous_time();
    sprintf_10u(v3, (*&g_MacClockTicksToMsRelation * v13));
    v14 = *v3;
  }

  else
  {
    v15 = 10;
    v16 = 1u;
    do
    {
      *v3 = v4 + 1;
      *v4 = v15;
      v4 = *v3;
      if (*v3 >= *(v3 + 24))
      {
        v4 = *(v3 + 16);
        *v3 = v4;
      }

      v15 = asc_299776ADD[v16++];
    }

    while (v16 != 46);
    v17 = off_29EF26C30[a1];
    v18 = off_29EF26C50[a1];
    v19 = *v17;
    if (*v17)
    {
      v20 = (v17 + 1);
      do
      {
        *v3 = v4 + 1;
        *v4 = v19;
        v4 = *v3;
        if (*v3 >= *(v3 + 24))
        {
          v4 = *(v3 + 16);
          *v3 = v4;
        }

        v21 = *v20++;
        v19 = v21;
      }

      while (v21);
    }

    sprintf1da(v3, *v18, &v41, 0, 0);
    v22 = *v3;
    v23 = 32;
    v24 = 1u;
    do
    {
      *v3 = v22 + 1;
      *v22 = v23;
      v22 = *v3;
      if (*v3 >= *(v3 + 24))
      {
        v22 = *(v3 + 16);
        *v3 = v22;
      }

      v23 = asc_299776B2D[v24++];
    }

    while (v24 != 45);
    v25 = mach_continuous_time();
    sprintf_10u(v3, (*&g_MacClockTicksToMsRelation * v25));
    v26 = (*v3)++;
    *v26 = 10;
    if (*v3 >= *(v3 + 24))
    {
      *v3 = *(v3 + 16);
    }

    GN_GPS_Get_LibVersion(&v41);
    v27 = 0;
    v14 = *v3;
    v28 = 10;
    do
    {
      *v3 = v14 + 1;
      *v14 = v28;
      v14 = *v3;
      if (*v3 >= *(v3 + 24))
      {
        v14 = *(v3 + 16);
        *v3 = v14;
      }

      v28 = aPeGnLibVer[++v27];
    }

    while (v27 != 16);
    v29 = v41;
    if (v41)
    {
      v30 = v42;
      do
      {
        *v3 = v14 + 1;
        *v14 = v29;
        v14 = *v3;
        if (*v3 >= *(v3 + 24))
        {
          v14 = *(v3 + 16);
          *v3 = v14;
        }

        v31 = *v30++;
        v29 = v31;
      }

      while (v31);
    }
  }

  if (*(xmmword_2A1926A20 + 118))
  {
    v32 = 10;
    v33 = 1u;
    do
    {
      *v3 = v14 + 1;
      *v14 = v32;
      v14 = *v3;
      if (*v3 >= *(v3 + 24))
      {
        v14 = *(v3 + 16);
        *v3 = v14;
      }

      v32 = aHostversion[v33++];
    }

    while (v33 != 15);
    v34 = *(xmmword_2A1926A20 + 118);
    if (v34)
    {
      v35 = (xmmword_2A1926A20 + 119);
      do
      {
        *v3 = v14 + 1;
        *v14 = v34;
        v14 = *v3;
        if (*v3 >= *(v3 + 24))
        {
          v14 = *(v3 + 16);
          *v3 = v14;
        }

        v36 = *v35++;
        v34 = v36;
      }

      while (v36);
    }
  }

  v37 = 0;
  v38 = 10;
  do
  {
    *v3 = v14 + 1;
    *v14 = v38;
    v14 = *v3;
    if (*v3 >= *(v3 + 24))
    {
      v14 = *(v3 + 16);
      *v3 = v14;
    }

    v38 = asc_299776B81[++v37];
  }

  while (v37 != 2);
  v39 = *(v3 + 8);
  if (v2)
  {
    GNSS_Write_NMEA(v3);
  }

  v40 = *(v3 + 16);
  if (v48)
  {
    GN_GPS_Write_GNB_Debug((v14 - v39), v40);
    v40 = *(v3 + 16);
  }

  if (v49)
  {
    GN_GPS_Write_Event_Log((v14 - v39), v40);
    v40 = *(v3 + 16);
  }

  if (v47)
  {
    GN_GPS_Write_Nav_Debug((v14 - v39), v40);
    v40 = *(v3 + 16);
  }

  if (v50)
  {
    GN_GPS_Write_LCD_Debug((v14 - v39), v40);
    v40 = *(v3 + 16);
  }

  *v3 = v40;
  *(v3 + 8) = v40;
  if (a1)
  {
    GNSS_Nav_Debug_InitWrite(&g_GN_GPS_Data_p_list);
  }
}

void GN_GPS_Update(void)
{
  v56 = *MEMORY[0x29EDCA608];
  v0 = *(&xmmword_2A1926940 + 1);
  v1 = mach_continuous_time();
  v2 = 0;
  v3 = (*&g_MacClockTicksToMsRelation * v1);
  v4 = (v0 + 1112);
  v5 = vdupq_n_s64(0xBuLL);
  do
  {
    v6 = vdupq_n_s64(v2);
    v7 = vorrq_s8(v6, xmmword_299728F20);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v5, v7)), 2).u8[0])
    {
      *v4 = v3;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), v7)), 2).i8[2])
    {
      *(v4 - 1) = v3;
    }

    if (vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), vorrq_s8(v6, xmmword_299729020)))).i32[1])
    {
      *(v4 - 2) = v3;
      *(v4 - 3) = v3;
    }

    v2 += 4;
    v4 -= 4;
  }

  while (v2 != 12);
  if (g_GN_GPS_Data_p_list == 1)
  {
    v8 = "GN_GPS_Update:  ERROR:  Called while in PowerOff !";
LABEL_11:

    EvCrt_v(v8, COERCE_DOUBLE(2), 0.0);
    return;
  }

  if (*(*(&xmmword_2A1926940 + 1) + 46) == 1)
  {
    if (g_GN_GPS_Data_p_list)
    {
      if (g_GN_GPS_Data_p_list == 7 || g_GN_GPS_Data_p_list == 4)
      {
        *(v0 + 1076) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        GNSS_Write_GNB_Ctrl(xmmword_2A1926A60);
        GNSS_Event_Log_Ctl(*(&xmmword_2A1926A70 + 1));
        LCD_SA_Debug_Ctl(*(&xmmword_2A1926A80 + 1));
        *(v0 + 1080) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        EvLog_v("Sensor in Sleep or Coma Mode: OS Time Waypoints, %u %d %d");
        return;
      }

      goto LABEL_25;
    }

LABEL_23:
    if (*(*(&xmmword_2A1926940 + 1) + 944) != -1169279272)
    {
      EvCrt_v("GN_GPS_Update:  WARNING:  Called with unexpected GNSS_INVALID_EXE_STATE", COERCE_DOUBLE(2), 0.0);
    }

    goto LABEL_25;
  }

  if (!g_GN_GPS_Data_p_list)
  {
    goto LABEL_23;
  }

  if (g_GN_GPS_Data_p_list == 7 || g_GN_GPS_Data_p_list == 4)
  {
    v8 = "GN_GPS_Update:  ERROR:  Called while in Sleep/Coma !";
    goto LABEL_11;
  }

LABEL_25:
  G5K_Read_GNB_Meas(*(&xmmword_2A1926A50 + 1));
  *(v0 + 1084) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  G5K_ME_Decode_Meas(*(&xmmword_2A1926A50 + 1), xmmword_2A19269A0);
  v9 = xmmword_2A19269A0;
  *(xmmword_2A19269A0 + 508) = 0;
  if (g_GN_GPS_Data_p_list == 5 || g_GN_GPS_Data_p_list == 8)
  {
    v10 = v9[126];
    v11 = *(&xmmword_2A1926940 + 1);
    if (v10)
    {
      v9[127] = *(*(&xmmword_2A1926940 + 1) + 948) + v10;
    }

    v9[134] = 0;
    if (!*(v11 + 1144))
    {
      if (*(v11 + 1135) == 1)
      {
        *(v11 + 1135) = 0;
        *(v11 + 1144) = *(v11 + 1148);
      }

      else
      {
        v12 = mach_continuous_time();
        v11 = *(&xmmword_2A1926940 + 1);
        *(*(&xmmword_2A1926940 + 1) + 1144) = (*&g_MacClockTicksToMsRelation * v12);
        v9 = xmmword_2A19269A0;
      }
    }
  }

  else
  {
    v11 = *(&xmmword_2A1926940 + 1);
  }

  v55 = 0;
  if (!G5K_ME_Poll_New_Meas(v9, v11, *(&g_GN_GPS_Data_p_list + 1), qword_2A1926910, qword_2A1926918, &v55))
  {
    if (*(xmmword_2A1926A60 + 8) != *xmmword_2A1926A60)
    {
      GNSS_Write_GNB_Ctrl(xmmword_2A1926A60);
    }

    if (*(*(&xmmword_2A1926A60 + 1) + 8) != **(&xmmword_2A1926A60 + 1))
    {
      GNSS_Write_NMEA(*(&xmmword_2A1926A60 + 1));
    }

    if (*(xmmword_2A1926A70 + 8) != *xmmword_2A1926A70)
    {
      GNSS_Nav_Debug_Ctl(xmmword_2A1926A70);
    }

    if (*(*(&xmmword_2A1926A70 + 1) + 8) != **(&xmmword_2A1926A70 + 1))
    {
      GNSS_Event_Log_Ctl(*(&xmmword_2A1926A70 + 1));
    }

    if (*(*(&xmmword_2A1926A80 + 1) + 8) != **(&xmmword_2A1926A80 + 1))
    {
      LCD_SA_Debug_Ctl(*(&xmmword_2A1926A80 + 1));
    }

    ++_MergedGlobals_1;
    v17 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v18 = v17;
    v19 = *(qword_2A1926910 + 4);
    v20 = v17 - v19;
    _MergedGlobals_1 = 0;
    v21 = *(*(&xmmword_2A1926940 + 1) + 948);
    if (g_GN_GPS_Data_p_list <= 8 && ((1 << g_GN_GPS_Data_p_list) & 0x124) != 0)
    {
      v22 = *(xmmword_2A19269A0 + 496);
      if (v22 && v18 - v22 < 501)
      {
        goto LABEL_68;
      }

      if (v20 >= 5 * v21)
      {
        EvLog_v("GN_GPS_Hard_Reset_GNB:  %d > 5*Fix_Int gap!, >>>POWEROFF_WAKE_UP  (%u)", v17 - v19, v19);
        LODWORD(g_GN_GPS_Data_p_list) = 2;
        GN_GPS_Hard_Reset_GNB(v34);
        *(qword_2A1926910 + 4) = v18;
        v35 = xmmword_2A19269A0;
        *(xmmword_2A19269A0 + 476) = 0;
        *(v35 + 482) = 0;
        goto LABEL_68;
      }

      EvLog_v("No valid comms :  %u  %d", v19, v17 - v19);
      v23 = xmmword_2A1926A60;
    }

    else
    {
      if (v20 < 3 * v21)
      {
LABEL_68:
        GNSS_Event_Log_Ctl(*(&xmmword_2A1926A70 + 1));
        GNSS_GNB_Debug_Ctl(xmmword_2A1926A80);
        return;
      }

      EvLog_v("GN_GPS_Update:  Lost BB Coms for %d > 3*Fix_Int, >>>SLEEP_WAKE_UP  (%u)", v17 - v19, v19);
      LODWORD(g_GN_GPS_Data_p_list) = 8;
      v23 = xmmword_2A1926A60;
    }

    G5K_ME_Send_WakeUp(v23);
    goto LABEL_68;
  }

  v13 = *(&xmmword_2A1926A40 + 1);
  v14 = xmmword_2A1926940;
  *(xmmword_2A1926940 + 412) = 0;
  *(v14 + 364) = 0u;
  *(v14 + 380) = 0u;
  *(v14 + 396) = 0u;
  GNSS_GNB_Debug_Ctl(xmmword_2A1926A80);
  if (g_GN_GPS_Data_p_list != 11)
  {
    EvCrt_d("GN_GPS_Update: GNSS_Exe_State = ", g_GN_GPS_Data_p_list);
  }

  v15 = v55;
  if (v55)
  {
    *(v13 + 8) = 0;
    *(v13 + 10) = 0;
    *(v13 + 2) = 0;
    *(v13 + 6) = 0;
    EvLog("GN_GPS_Update:  Cleared NA data because ME_Reset_Detected");
    v15 = v55;
  }

  else
  {
    v24 = *(xmmword_2A19269A0 + 512);
    v25 = *(xmmword_2A19269A0 + 536);
    if (v24 + 10 < v25 && v24 + 10000 < v25)
    {
      EvLog_v("GN_GPS_Update:  Warning - possible throughput problem  %u  %u  %u  %u");
      return;
    }
  }

  if (v15)
  {
    v16 = xmmword_2A19269A0;
LABEL_61:
    LODWORD(g_GN_GPS_Data_p_list) = 3;
    *(v16 + 394) = 0;
    *(v16 + 536) = 0;
    v27 = *(&xmmword_2A1926940 + 1);
    *(*(&xmmword_2A1926940 + 1) + 1284) = 3;
    *(v27 + 1280) = v15;
    goto LABEL_62;
  }

  v26 = g_GN_GPS_Data_p_list;
  v16 = xmmword_2A19269A0;
  if (g_GN_GPS_Data_p_list == 2)
  {
    goto LABEL_61;
  }

  v36 = *(xmmword_2A19269A0 + 460);
  if (g_GN_GPS_Data_p_list == 5 || v36)
  {
    if (g_GN_GPS_Data_p_list != 5)
    {
      EvLog_v("GN_GPS_Update:  Unexpected Coma_Ticks (%d) > 0 for GNSS_Exe_State (%d)", v36, g_GN_GPS_Data_p_list);
      DbgLog_v(1, "GN_GPS_Update:  Unexpected Coma_Ticks (%d) > 0 for GNSS_Exe_State (%d)", *(xmmword_2A19269A0 + 460), g_GN_GPS_Data_p_list);
      v36 = *(xmmword_2A19269A0 + 460);
    }

    if (!v36)
    {
      EvCrt_v("GN_GPS_Update: WARNING Coma Ticks = 0 even though Coma wakeup %d", g_GN_GPS_Data_p_list);
      DbgLog_v(1, "GN_GPS_Update: WARNING Coma Ticks = 0 even though Coma wakeup %d", g_GN_GPS_Data_p_list);
    }

    v26 = 6;
    goto LABEL_78;
  }

  if (g_GN_GPS_Data_p_list == 8)
  {
    v26 = 9;
LABEL_78:
    LODWORD(g_GN_GPS_Data_p_list) = v26;
    v37 = *(&xmmword_2A1926940 + 1);
    *(*(&xmmword_2A1926940 + 1) + 1284) = v26;
    *(v37 + 1280) = v55;
    goto LABEL_79;
  }

  v27 = *(&xmmword_2A1926940 + 1);
  *(*(&xmmword_2A1926940 + 1) + 1284) = g_GN_GPS_Data_p_list;
  *(v27 + 1280) = v15;
  if (v26 == 3)
  {
LABEL_62:
    if (*(v27 + 944) == -1169279272)
    {
      EvLog("GN_GPS_Update: Starting after initialisation");
      GNSS_Mark_Restart(2);
      v28 = *(xmmword_2A19269A0 + 472);
      v29 = *(xmmword_2A19269A0 + 476);
      v30 = *(xmmword_2A19269A0 + 448);
      *(*(&xmmword_2A1926940 + 1) + 1064) = v30;
      v31 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v32 = *(&xmmword_2A1926940 + 1);
      *(*(&xmmword_2A1926940 + 1) + 1068) = v31;
      *(v32 + 1116) = v31;
      *(qword_2A1926930 + 100) = v30;
      GNSS_HL_System_Start_Up(&g_GN_GPS_Data_p_list);
      v33 = xmmword_2A19269A0;
      *(xmmword_2A19269A0 + 472) = v28;
      *(v33 + 476) = v29;
      API_Set_Config(*(&xmmword_2A1926A20 + 1));
      LODWORD(g_GN_GPS_Data_p_list) = 11;
      goto LABEL_88;
    }

    goto LABEL_87;
  }

LABEL_79:
  if (v26 == 6 || v26 == 9)
  {
    API_Set_Config(*(&xmmword_2A1926A20 + 1));
    GNSS_HL_System_Re_Start(&g_GN_GPS_Data_p_list);
    g_GN_GNSS_Nav_Debug_Port = 1;
    ++word_2A1971778;
    GNSS_Mark_Restart(3);
    v38 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v39 = *(&xmmword_2A1926940 + 1);
    *(*(&xmmword_2A1926940 + 1) + 1068) = v38;
    *(v39 + 1116) = v38;
    goto LABEL_88;
  }

  if (v26 == 11)
  {
    GNSS_Nav_Debug_InitWrite(&g_GN_GPS_Data_p_list);
    API_Set_Config(*(&xmmword_2A1926A20 + 1));
    GNSS_HL_System_Run_Update(&g_GN_GPS_Data_p_list);
    goto LABEL_88;
  }

  EvLog_d("GN_GPS_Update: Unexpected GNSS_Exe_State state - restarting ", v26);
LABEL_87:
  GNSS_Starting_NotInitialised();
LABEL_88:
  *(*(&xmmword_2A1926940 + 1) + 944) = 0;
  *(v0 + 1096) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  if (g_GN_GPS_Data_p_list == 11)
  {
    G5K_ME_Send_Ctrl(xmmword_2A1926A60, xmmword_2A19269A0, *(&xmmword_2A1926940 + 1), qword_2A1926928, xmmword_2A1926940);
    if (!*(*(&xmmword_2A1926940 + 1) + 1116))
    {
      goto LABEL_99;
    }

    v41 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v42 = v41;
    v43 = *(*(&xmmword_2A1926940 + 1) + 1116);
    v44 = v41 - v43;
    if (v41 < v43)
    {
      EvCrt_nd("GN_GPS_Update: Detected OS ms Time has gone backwards", 2, v40, v41, v43);
      *(*(&xmmword_2A1926940 + 1) + 1116) = 0;
      goto LABEL_99;
    }

    v45 = v44 / 1000;
    if (v44 / 1000 >= *(*(&xmmword_2A1926940 + 1) + 1120))
    {
      v46 = *(*(&xmmword_2A1926940 + 1) + 1128);
      if (v46)
      {
        v47 = (v42 - v46) / 1000;
        if (v47 >= v45 && v47 < *(*(&xmmword_2A1926940 + 1) + 1124))
        {
          goto LABEL_99;
        }
      }

      else
      {
        v47 = 0;
      }

      GncP16_34HandleRestartAcq();
      v48 = *(&xmmword_2A1926940 + 1);
      *(*(&xmmword_2A1926940 + 1) + 1128) = v42;
      *(v48 + 1116) = 0;
      EvCrt_v("GN_GPS_Restart_Acquisition(): API call due to No Fix within %d s; Time since last call %d s", v45, v47);
    }

LABEL_99:
    *(v0 + 1100) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (*(*(p_api + 88) + 344) <= 600.0)
    {
      if (API_Get_Nav_Data(xmmword_2A1926A30))
      {
        v52 = vqtbl1q_s8(vmovl_u8(*(v0 + 1012)), xmmword_299729030);
        v53 = *(v0 + 1020);
        v54 = *(v0 + 1021);
        NMEA_Encode(*(&xmmword_2A1926A60 + 1), v52.i16, xmmword_2A1926A30, *(&xmmword_2A1926A30 + 1));
        GNSS_Write_NMEA(*(&xmmword_2A1926A60 + 1));
        *(v0 + 1104) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v49 = *(v0 + 1052);
        if (v49)
        {
          v50 = *(v0 + 948) + *(v0 + 1056);
          *(v0 + 1056) = v50;
          if (v50 >= v49)
          {
            v51 = xmmword_2A1926A40;
            if (p_NV_Sect)
            {
              *(p_NV_Sect + 193) = -1;
            }

            if (g_GncPStateInfo != 8)
            {
              GncP07_08WriteNVStore(0x59A0uLL, v51);
            }

            EvLog("GN_GPS_Write_NV_Store:  1");
            *(v0 + 1056) = 0;
          }
        }

        *(v0 + 1108) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      }

      GNSS_Nav_Debug_Screens(&g_GN_GPS_Data_p_list);
      GNSS_Event_Log_Ctl(*(&xmmword_2A1926A70 + 1));
      GNSS_GNB_Debug_Ctl(xmmword_2A1926A80);
      *(v0 + 1112) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    }
  }

  if (g_Enable_Event_Log >= 3u)
  {
    EvLog_v("OS Time Waypoints: %u %u %d %d %d %d %d %d %d %d %d %d %d", *xmmword_2A1926A30, *(xmmword_2A19269A0 + 468), (*(v0 + 1072) - *(xmmword_2A19269A0 + 468)));
  }
}

BOOL GNSS_Starting_NotInitialised(void)
{
  EvLog("GN_GPS_Update: Starting from Power Off but without having been initialised");
  g_GN_GNSS_Nav_Debug_Port = 1;
  ++word_2A1971776;
  word_2A1971778 = 0;
  GNSS_Mark_Restart(1);
  v0 = *(xmmword_2A19269A0 + 472);
  v1 = *(xmmword_2A19269A0 + 476);
  v2 = *(xmmword_2A19269A0 + 448);
  v3 = *(*(&xmmword_2A1926940 + 1) + 1048);
  v4 = *(*(&xmmword_2A1926940 + 1) + 1280);
  v5 = *(*(&xmmword_2A1926940 + 1) + 1284);
  v6 = *(qword_2A1926938 + 39302);
  v7 = *(*(&xmmword_2A1926940 + 1) + 1144);
  GNSS_HL_System_Start_Up(&g_GN_GPS_Data_p_list);
  v8 = xmmword_2A19269A0;
  *(xmmword_2A19269A0 + 472) = v0;
  *(v8 + 476) = v1;
  v9 = *(&xmmword_2A1926940 + 1);
  *(*(&xmmword_2A1926940 + 1) + 1048) = v3;
  *(v9 + 1144) = v7;
  *(v9 + 1280) = v4;
  *(v9 + 1284) = v5;
  *(qword_2A1926938 + 39302) = v6;
  *(v9 + 1064) = v2;
  v10 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v11 = *(&xmmword_2A1926940 + 1);
  *(*(&xmmword_2A1926940 + 1) + 1068) = v10;
  *(v11 + 1116) = v10;
  v12 = *(&xmmword_2A1926A20 + 1);

  return API_Set_Config(v12);
}

char **GN_GPS_Shutdown(void)
{
  EvLog("GN_GPS_Shutdown: ");
  if (g_GN_GPS_Data_p_list > 0xB)
  {
    EvCrt_Illegal_Default("GN_GPS_Shutdown", 1220);
  }

  else if (((1 << g_GN_GPS_Data_p_list) & 0xF6D) == 0)
  {
    EvLog_d("GN_GPS_Shutdown: GNSS already Idle or Off ", g_GN_GPS_Data_p_list);
    goto LABEL_9;
  }

  G5K_ME_Send_Sleep(xmmword_2A1926A60, xmmword_2A1926A80, 0, 0xFFFFLL, *(*(&xmmword_2A1926940 + 1) + 1134));
  EvLog("GN_GPS_Shutdown: Send ME to Coma ");
  *(*(&xmmword_2A1926940 + 1) + 1056) = 0;
  *(xmmword_2A19269A0 + 496) = 0;
  LODWORD(g_GN_GPS_Data_p_list) = 4;
  v0 = xmmword_2A1926A40;
  if (p_NV_Sect)
  {
    *(p_NV_Sect + 193) = -1;
  }

  if (g_GncPStateInfo != 8)
  {
    GncP07_08WriteNVStore(0x59A0uLL, v0);
    v0 = xmmword_2A1926A40;
  }

  Debug_Log_NonVol(1, v0);
  EvLog_nd("GN_GPS_Shutdown: GN_GPS_Write_NV_Store ", 4, v1, *(xmmword_2A1926A40 + 4), *(xmmword_2A1926A40 + 22936), 22944, 14);
LABEL_9:
  v2 = *(&xmmword_2A1926A70 + 1);

  return GNSS_Event_Log_Ctl(v2);
}

char **GN_GPS_WakeUp(void)
{
  v11[3] = *MEMORY[0x29EDCA608];
  EvCrt_v("GN_GPS_WakeUp: ");
  v0 = xmmword_2A19269A0;
  *(xmmword_2A19269A0 + 504) = *(xmmword_2A19269A0 + 448);
  G5K_ME_Flush_Data(v0);
  if (g_GN_GPS_Data_p_list != 11)
  {
    *qword_2A1926910 = 0;
    *(qword_2A1926910 + 4) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    for (i = 2720; i != 4448; i += 36)
    {
      v2 = qword_2A1926910 + i;
      *(v2 + 32) = 0;
      *v2 = 0uLL;
      *(v2 + 16) = 0uLL;
    }

    v3 = *(&xmmword_2A1926A50 + 1);
    v4 = *(*(&xmmword_2A1926A50 + 1) + 16);
    **(&xmmword_2A1926A50 + 1) = v4;
    *(v3 + 8) = v4;
    G5K_Read_GNB_Meas(v3);
    v5 = **(&xmmword_2A1926A50 + 1) - *(*(&xmmword_2A1926A50 + 1) + 8);
    if (v5)
    {
      EvLog_v("%s: Flushed bytes  %d", "GN_GPS_WakeUp", v5);
      v6 = *(&xmmword_2A1926A50 + 1);
      v7 = *(*(&xmmword_2A1926A50 + 1) + 16);
      **(&xmmword_2A1926A50 + 1) = v7;
      *(v6 + 8) = v7;
    }
  }

  G5K_ME_Send_WakeUp(xmmword_2A1926A60);
  EvLog_v("%s:  Read NV_Store NO Data", "GN_GPS_WakeUp");
  Debug_Log_NonVol(1, xmmword_2A1926A40);
  memset(v11, 0, 24);
  Debug_Log_ApxTime(v11);
  _MergedGlobals_1 = 0;
  if ((g_GN_GPS_Data_p_list - 4) < 3)
  {
    LODWORD(g_GN_GPS_Data_p_list) = 5;
    if (*qword_2A1926930 >= 11)
    {
      *qword_2A1926930 = 10;
    }
  }

  else if ((g_GN_GPS_Data_p_list - 7) > 2)
  {
    LODWORD(g_GN_GPS_Data_p_list) = 2;
    v8 = qword_2A1926930;
    *qword_2A1926930 = 0;
    *(v8 + 5) = 0;
  }

  else
  {
    LODWORD(g_GN_GPS_Data_p_list) = 8;
  }

  *(*(&xmmword_2A1926A40 + 1) + 5) = 0;
  v9 = *(&xmmword_2A1926A70 + 1);

  return GNSS_Event_Log_Ctl(v9);
}

uint64_t GN_GPS_Sleep(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  EvCrt_nd("GN_GPS_Sleep: ", 2, a3, a1, a2);
  if (v4 >= 0x3D)
  {
    v4 = 60;
    EvLog_v("GN_GPS_Sleep:  SleepModeTimeOut limited to %d s", 60);
  }

  if (g_GN_GPS_Data_p_list > 0xB)
  {
LABEL_14:
    LODWORD(g_GN_GPS_Data_p_list) = 1;
    EvCrt_Illegal_Default("GN_GPS_Sleep", 1523);
    goto LABEL_15;
  }

  if (((1 << g_GN_GPS_Data_p_list) & 0xF80) == 0)
  {
    if (((1 << g_GN_GPS_Data_p_list) & 0xE) != 0)
    {
      v5 = 1;
      goto LABEL_11;
    }

    if (((1 << g_GN_GPS_Data_p_list) & 0x70) != 0)
    {
      v5 = 4;
LABEL_11:
      LODWORD(g_GN_GPS_Data_p_list) = v5;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v4)
  {
    v6 = 7;
  }

  else
  {
    v6 = 4;
  }

  LODWORD(g_GN_GPS_Data_p_list) = v6;
  DWORD1(g_GN_GPS_Data_p_list) = DWORD1(g_GN_GPS_Data_p_list) != 0;
LABEL_15:
  G5K_ME_Send_Sleep(xmmword_2A1926A60, xmmword_2A1926A80, v4, a2, *(*(&xmmword_2A1926940 + 1) + 1134));
  v8 = xmmword_2A1926A40;
  if (p_NV_Sect)
  {
    *(p_NV_Sect + 193) = -1;
  }

  if (g_GncPStateInfo != 8)
  {
    GncP07_08WriteNVStore(0x59A0uLL, v8);
    v8 = xmmword_2A1926A40;
  }

  *(*(&xmmword_2A1926940 + 1) + 1056) = 0;
  *(xmmword_2A19269A0 + 496) = 0;
  EvLog_nd("GN_GPS_Sleep:  GN_GPS_Write_NV_Store ", 4, v7, *(v8 + 4), *(v8 + 22936), 22944, 14);
  if (*(*(&xmmword_2A1926A60 + 1) + 8) != **(&xmmword_2A1926A60 + 1))
  {
    GNSS_Write_NMEA(*(&xmmword_2A1926A60 + 1));
  }

  if (*(*(&xmmword_2A1926A70 + 1) + 8) != **(&xmmword_2A1926A70 + 1))
  {
    GNSS_Event_Log_Ctl(*(&xmmword_2A1926A70 + 1));
  }

  if (*(xmmword_2A1926A70 + 8) != *xmmword_2A1926A70)
  {
    GNSS_Nav_Debug_Ctl(xmmword_2A1926A70);
  }

  if (*(xmmword_2A1926A60 + 8) != *xmmword_2A1926A60)
  {
    GNSS_Write_GNB_Ctrl(xmmword_2A1926A60);
  }

  result = *(&xmmword_2A1926A80 + 1);
  if (*(*(&xmmword_2A1926A80 + 1) + 8) != **(&xmmword_2A1926A80 + 1))
  {

    return LCD_SA_Debug_Ctl(result);
  }

  return result;
}

char **EvLog_GN_GNSS_Config(char **a1, double *a2)
{
  v2 = a2[8] * 1000000.0;
  v3 = -0.5;
  if (v2 <= 0.0)
  {
    v4 = -0.5;
  }

  else
  {
    v4 = 0.5;
  }

  v5 = v2 + v4;
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

  v7 = a2[9] * 1000000.0;
  if (v7 > 0.0)
  {
    v3 = 0.5;
  }

  v8 = v7 + v3;
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

  v11 = a2[10];
  v12 = -0.5;
  if (v11 > 0.0)
  {
    v12 = 0.5;
  }

  v13 = v11 + v12;
  if (v13 <= 2147483650.0)
  {
    if (v13 >= -2147483650.0)
    {
      v17 = v13;
    }

    else
    {
      v17 = 0x80000000;
    }
  }

  else
  {
    v17 = 0x7FFFFFFFLL;
  }

  v10 = *(a2 + 40);
  v14 = *(a2 + 27);
  v15 = *(a2 + 28);
  v16 = *(a2 + 29);
  return EvLog_nd(a1, 49, v14, *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3), *(a2 + 16), *(a2 + 17), *(a2 + 18), *(a2 + 19), *(a2 + 20), *(a2 + 21), *(a2 + 22), *(a2 + 23), *(a2 + 24), *(a2 + 25), *(a2 + 26), *(a2 + 27), *(a2 + 28), *(a2 + 29), *(a2 + 30), *(a2 + 31), *(a2 + 32), *(a2 + 17), *(a2 + 36), *(a2 + 37), *(a2 + 38), *(a2 + 39), v10, *(a2 + 41), *(a2 + 42), *(a2 + 43), *(a2 + 44), *(a2 + 45), *(a2 + 46), *(a2 + 24), *(a2 + 25), *(a2 + 26), v14, v15, v16, *(a2 + 30), *(a2 + 31), v6, v9, v17, *(a2 + 22), *(a2 + 23), *(a2 + 96), *(a2 + 97), *(a2 + 98));
}

uint64_t GN_GPS_Set_Config(uint64_t a1)
{
  if (!a1)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: No changes applied");
    return 0;
  }

  v2 = g_Enable_Event_Log;
  g_Enable_Event_Log = -1;
  EvLog_GN_GNSS_Config("GN_GPS_Set_Config: ", a1);
  if (*a1 >= 3)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: SensMode = %d >%d, Out of range!");
    return 0;
  }

  if (*(a1 + 4) >= 3)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: ColdTTFF = %d >%d, Out of range!");
    return 0;
  }

  if (*(a1 + 8) >= 3)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: PowerPerf = %d >%d, Out of range!");
    return 0;
  }

  if (*(a1 + 12) > 3)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: AntSel = %d >%d, Out of range!");
    return 0;
  }

  if (*(a1 + 62) > 0x2000u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: Birth_GPS_WeekNo = %d > %d, Out of range!");
    return 0;
  }

  if (*(a1 + 34) <= 0x63u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: FixInterval = %d <100, Out of range!");
    return 0;
  }

  if (*(a1 + 36) >= 0x79u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: GPGLL_Rate = %d >120, Out of range!");
    return 0;
  }

  if (*(a1 + 37) >= 0x79u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: GPGGA_Rate = %d >120, Out of range!");
    return 0;
  }

  if (*(a1 + 38) >= 0x79u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: GPGSA_Rate = %d >120, Out of range!");
    return 0;
  }

  if (*(a1 + 39) >= 0x79u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: GPGST_Rate = %d >120, Out of range!");
    return 0;
  }

  if (*(a1 + 40) >= 0x79u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: GPGSV_Rate = %d >120, Out of range!");
    return 0;
  }

  if (*(a1 + 41) >= 0x79u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: GPRMC_Rate = %d >120, Out of range!");
    return 0;
  }

  if (*(a1 + 42) >= 0x79u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: GPVTG_Rate = %d >120, Out of range!");
    return 0;
  }

  if (*(a1 + 43) >= 0x79u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: GPZCD_Rate = %d >120, Out of range!");
    return 0;
  }

  if (*(a1 + 44) >= 0x79u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: GPZDA_Rate = %d >120, Out of range!");
    return 0;
  }

  if (*(a1 + 45) >= 0x79u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: PDBG__Rate = %d >120, Out of range!");
    return 0;
  }

  if (*(a1 + 46) == 255)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: ForceCold_Timeout = %d ==255, Out of range!");
    return 0;
  }

  if (*(a1 + 60) >= 0x2000u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: Earliest_GPS_WeekNo = %d > 8191, Out of range!");
    return 0;
  }

  if (fabs(*(a1 + 64)) > 90.0)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: Reference_LLH[0] = %g <-90.0 or >90.0, Out of range!");
    return 0;
  }

  v3 = *(a1 + 72);
  if (v3 < -180.0 || v3 > 360.0)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: Reference_LLH[1] = %g <-180.0 or >360.0, Out of range!");
    return 0;
  }

  v4 = *(a1 + 80);
  if (v4 < -1000.0 || v4 > 20000.0)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: Reference_LLH[2] = %g <-1000.0 or >20000.0, Out of range!");
    return 0;
  }

  if (*(a1 + 88) >= 0xE11u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: NoFixTime_to_RestartAcq_s = %d >SECS_IN_HOUR, Out of range!");
    return 0;
  }

  if (*(a1 + 92) >= 0xE11u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: ReAcq_Call_Interval_s = %d >SECS_IN_HOUR, Out of range!");
    return 0;
  }

  if ((*(a1 + 18) & 1) == 0)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: GPS has been disabled");
  }

  if ((*(a1 + 19) & 1) == 0)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: Glonass has been disabled");
  }

  if ((*(a1 + 22) & 1) == 0)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: BeiDou has been disabled");
  }

  if ((*(a1 + 23) & 1) == 0)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: Galileo has been disabled");
  }

  if ((*(a1 + 20) & 1) == 0)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: QZSS has been disabled");
  }

  if ((*(a1 + 21) & 1) == 0)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: SBAS has been disabled");
  }

  if (!*(a1 + 50))
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: Nav Debug has been disabled");
  }

  if (!*(a1 + 52))
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: GNB Debug has been disabled");
  }

  if (!*(a1 + 54))
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: Event Log has been disabled");
  }

  if (!*(a1 + 56))
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: LCD Debug Log has been disabled");
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: Avg Doppler Usage has been disabled");
  }

  if (*(a1 + 97) == 1)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: Broadcast Navigation Message Data Use disabled to test XOF Data");
  }

  if ((*(a1 + 98) & 1) == 0)
  {
    EvLog_v("GN_GPS_Set_Config: INFO: Sending {cS message to ME on Sleep has been disabled");
  }

  g_Enable_Event_Log = v2;
  if (API_Set_Config(a1))
  {
    API_Query_Config(*(&xmmword_2A1926A20 + 1));
  }

  else
  {
    EvCrt_v("GN_GPS_Set_Config: API_Set_Config() FAILED");
  }

  GNSS_Event_Log_Ctl(*(&xmmword_2A1926A70 + 1));
  return 1;
}

uint64_t GN_GPS_Set_FixInterval(unsigned int a1)
{
  if (a1 > 0x63)
  {
    result = API_Set_FixInterval(a1);
    if (result)
    {
      v2 = *(p_api + 72);
      v3 = *(v2 + 952);
      if (!v3)
      {
        v3 = *(v2 + 948);
      }

      *(*(&xmmword_2A1926A20 + 1) + 34) = v3;
      return 1;
    }
  }

  else
  {
    EvCrt_v("GN_GPS_Set_FixInterval:  FAILED:  FixInterval = %d  < 100, Out of range !", a1);
    return 0;
  }

  return result;
}

uint64_t GN_GPS_Set_CrossCorr_Params(double *a1)
{
  v13[1] = *MEMORY[0x29EDCA608];
  v2 = *a1 >= 6.0 && *a1 <= 60.0;
  if (v2 || (v13[0] = 0.0, R8_EQ(a1, v13)))
  {
    v3 = a1[1];
    v4 = v3 >= 6.0 && v3 <= 60.0;
    if (v4 || (v13[0] = 0.0, R8_EQ(a1 + 1, v13)))
    {
      v5 = a1[2];
      v6 = v5 >= 6.0 && v5 <= 60.0;
      if (v6 || (v13[0] = 0.0, R8_EQ(a1 + 2, v13)))
      {
        v7 = a1[3];
        v8 = v7 >= 6.0 && v7 <= 60.0;
        if (v8 || (v13[0] = 0.0, R8_EQ(a1 + 3, v13)))
        {
          v9 = *(&xmmword_2A1926940 + 1);
          v10 = *(&xmmword_2A1926940 + 1) + 1352;
          v11 = *(a1 + 1);
          *(*(&xmmword_2A1926940 + 1) + 1352) = *a1;
          *(v10 + 16) = v11;
          result = 1;
          *(v9 + 1384) = 1;
          return result;
        }

        EvCrt_v("GN_GPS_Set_CrossCorr_Params: FAILED: XCorr_Margin_BDS_B1 = %f [0, 6..60 dB], Out of range!");
      }

      else
      {
        EvCrt_v("GN_GPS_Set_CrossCorr_Params: FAILED: XCorr_Margin_GAL_E1 = %f [0, 6..60 dB], Out of range!");
      }
    }

    else
    {
      EvCrt_v("GN_GPS_Set_CrossCorr_Params: FAILED: XCorr_Margin_GPS_L1 = %f [0, 6..60 dB], Out of range!");
    }
  }

  else
  {
    EvCrt_v("GN_GPS_Set_CrossCorr_Params: FAILED: Strong_Signal_Threshold = %f [0, 6..60 dBHz], Out of range!");
  }

  return 0;
}

uint64_t GN_GPS_Set_XOF_Time(unsigned int a1, unsigned int a2)
{
  EvLog_v("GN_GPS_Set_XOF_Time: %u %u", a1, a2);
  if (a1 >= 0x2000)
  {
    EvCrt_v("GN_GPS_Set_XOF_Time: FAILED: XOF_GPS_WeekNo = %d >8191, Out of range!");
    return 0;
  }

  if (a2 > 0x93A7F)
  {
    EvCrt_v("GN_GPS_Set_XOF_Time: FAILED: XOF_GPS_TOW = %d >604799, Out of range!");
    return 0;
  }

  *(*(&xmmword_2A1926940 + 1) + 1032) = 604800 * a1 + a2;
  return 1;
}

uint64_t GN_GPS_Set_RTI_Time(unsigned int a1, unsigned int a2)
{
  EvLog_v("GN_GPS_Set_RTI_Time: %u %u", a1, a2);
  if (a1 >= 0x2000)
  {
    EvCrt_v("GN_GPS_Set_RTI_Time: FAILED: RTI_GPS_WeekNo = %d >8191, Out of range!");
    return 0;
  }

  if (a2 > 0x93A7F)
  {
    EvCrt_v("GN_GPS_Set_RTI_Time: FAILED: RTI_GPS_TOW = %d >604799, Out of range!");
    return 0;
  }

  *(*(&xmmword_2A1926940 + 1) + 1036) = 604800 * a1 + a2;
  return 1;
}

uint64_t GN_GPS_Set_EE_Start_Time(uint64_t a1, uint64_t a2)
{
  EvLog_v("GN_GPS_Set_EE_Start_Time: %u %u", a1, a2);
  if (a1 >= 0x2000)
  {
    EvCrt_v("GN_GPS_Set_EE_Start_Time: FAILED: EE_Start_GPS_WeekNo = %d >8191, Out of range!");
    return 0;
  }

  if (a2 >= 0x93A80)
  {
    EvCrt_v("GN_GPS_Set_EE_Start_Time: FAILED: EE_Start_GPS_TOW = %d >604799, Out of range!");
    return 0;
  }

  v5 = *(&xmmword_2A1926940 + 1);
  v6 = a2 + 604800 * a1;
  Debug_Log_GPS_EE_Start_Time(a1, a2);
  if (v6 != *(v5 + 1040))
  {
    v7 = *(v5 + 397);
    v8 = *(v5 + 413);
    v9 = *(v5 + 365);
    *(v5 + 840) = *(v5 + 381);
    *(v5 + 856) = v7;
    *(v5 + 872) = v8;
    v10 = *(v5 + 333);
    v11 = *(v5 + 349);
    v12 = *(v5 + 301);
    *(v5 + 776) = *(v5 + 317);
    *(v5 + 792) = v10;
    v13 = *(v5 + 253);
    *(v5 + 808) = v11;
    *(v5 + 824) = v9;
    v14 = *(v5 + 269);
    v15 = *(v5 + 285);
    *(v5 + 712) = v13;
    *(v5 + 728) = v14;
    *(v5 + 1040) = v6;
    *(v5 + 888) = *(v5 + 429);
    *(v5 + 744) = v15;
    *(v5 + 760) = v12;
    Core_Save_Inhib_EE((v5 + 712), v6);
  }

  return 1;
}

uint64_t GN_GPS_Encode_NMEA(unsigned int a1, char *a2, int a3, _DWORD *a4, _DWORD *a5)
{
  v5 = 0;
  v15 = *MEMORY[0x29EDCA608];
  if (a1 >= 4 && a2)
  {
    if (a5 && (*a5 != *a4 || a5[1] != a4[1]))
    {
      EvCrt_v("GN_GPS_Encode_NMEA:  FAILED:  Incompatible Nav & Debug Data Local_TTag or OS_Time_ms");
      return 0;
    }

    if (!a3)
    {
      v5 = 0;
      *a2 = 0;
      return v5;
    }

    v13 = a2;
    v14 = &a2[a1];
    v11 = a2;
    v12 = a2;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    if (a3)
    {
      WORD1(v8) = 1;
      if ((a3 & 2) == 0)
      {
LABEL_9:
        if ((a3 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_24;
      }
    }

    else if ((a3 & 2) == 0)
    {
      goto LABEL_9;
    }

    LOWORD(v8) = 1;
    if ((a3 & 4) == 0)
    {
LABEL_10:
      if ((a3 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }

LABEL_24:
    WORD2(v8) = 1;
    if ((a3 & 8) == 0)
    {
LABEL_11:
      if ((a3 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }

LABEL_25:
    HIWORD(v8) = 1;
    if ((a3 & 0x10) == 0)
    {
LABEL_12:
      if ((a3 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }

LABEL_26:
    LOWORD(v9) = 1;
    if ((a3 & 0x20) == 0)
    {
LABEL_13:
      if ((a3 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }

LABEL_27:
    WORD1(v9) = 1;
    if ((a3 & 0x40) == 0)
    {
LABEL_14:
      if ((a3 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }

LABEL_28:
    WORD2(v9) = 1;
    if ((a3 & 0x80) == 0)
    {
LABEL_15:
      if ((a3 & 0x100) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }

LABEL_29:
    HIWORD(v9) = 1;
    if ((a3 & 0x100) == 0)
    {
LABEL_16:
      if ((a3 & 0x200) == 0)
      {
LABEL_18:
        NMEA_Encode(&v11, &v8, a4, a5);
        v6 = v11;
        v5 = v11++ - v12;
        *v6 = 0;
        return v5;
      }

LABEL_17:
      HIWORD(v10) = 1;
      goto LABEL_18;
    }

LABEL_30:
    LOWORD(v10) = 1;
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  return v5;
}

void *GN_GPS_Mark_Single_Pos_Used(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x29EDCA608];
  GNSS_Write_GNB_Ctrl(xmmword_2A1926A60);
  GNSS_GNB_Debug_Ctl(xmmword_2A1926A80);
  GNSS_Event_Log_Ctl(*(&xmmword_2A1926A70 + 1));
  GNSS_Nav_Debug_Ctl(xmmword_2A1926A70);
  LCD_SA_Debug_Ctl(*(&xmmword_2A1926A80 + 1));
  v8 = __src;
  v43 = __src;
  v44 = v46;
  v42 = __src;
  v9 = 10;
  v10 = 1u;
  do
  {
    v41 = v8 + 1;
    *v8 = v9;
    v8 = v41;
    v11 = v44;
    if (v41 >= v44)
    {
      v8 = v43;
      v41 = v43;
    }

    v9 = str_100[v10++];
  }

  while (v10 != 36);
  if (a1)
  {
    v12 = 70;
  }

  else
  {
    v12 = 66;
  }

  *v8 = v12;
  v13 = v8 + 1;
  if (v13 >= v11)
  {
    v13 = v43;
  }

  v41 = v13 + 1;
  *v13 = 32;
  if ((v13 + 1) >= v11)
  {
    v41 = v43;
  }

  sprintf_2d(&v41, a2);
  v14 = v41++;
  *v14 = 32;
  if (v41 >= v44)
  {
    v41 = v43;
  }

  sprintf_10u(&v41, a3);
  v15 = v41++;
  *v15 = 32;
  if (v41 >= v44)
  {
    v41 = v43;
  }

  sprintf_10u(&v41, a4);
  v16 = 0;
  v17 = 32;
  v18 = v41;
  do
  {
    v41 = v18 + 1;
    *v18 = v17;
    v18 = v41;
    if (v41 >= v44)
    {
      v18 = v43;
      v41 = v43;
    }

    v17 = str_101[++v16];
  }

  while (v16 != 8);
  API_Query_Config(v46);
  v19 = xmmword_2A1926A80;
  v20 = (v41 - v42);
  v21 = *(xmmword_2A1926A80 + 24);
  v22 = *xmmword_2A1926A80;
  v23 = __src;
  do
  {
    v24 = v21 - v22;
    if (v20 >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v20;
    }

    memcpy(v22, v23, v25);
    v22 = (*v19 + v25);
    *v19 = v22;
    v21 = v19[3];
    if (v22 >= v21)
    {
      v22 = v19[2];
      *v19 = v22;
    }

    v23 += v25;
    v26 = __OFSUB__(v20, v25);
    v20 -= v25;
  }

  while (!((v20 < 0) ^ v26 | (v20 == 0)));
  v27 = *(&xmmword_2A1926A70 + 1);
  v28 = (v41 - v42);
  v29 = *(*(&xmmword_2A1926A70 + 1) + 24);
  v30 = **(&xmmword_2A1926A70 + 1);
  v31 = __src;
  do
  {
    v32 = v29 - v30;
    if (v28 >= v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = v28;
    }

    memcpy(v30, v31, v33);
    v30 = (*v27 + v33);
    *v27 = v30;
    v29 = v27[3];
    if (v30 >= v29)
    {
      v30 = v27[2];
      *v27 = v30;
    }

    v31 += v33;
    v26 = __OFSUB__(v28, v33);
    v28 -= v33;
  }

  while (!((v28 < 0) ^ v26 | (v28 == 0)));
  v34 = xmmword_2A1926A70;
  v35 = (v41 - v42);
  v36 = *(xmmword_2A1926A70 + 24);
  result = *xmmword_2A1926A70;
  v38 = __src;
  do
  {
    v39 = v36 - result;
    if (v35 >= v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = v35;
    }

    memcpy(result, v38, v40);
    result = (*v34 + v40);
    *v34 = result;
    v36 = v34[3];
    if (result >= v36)
    {
      result = v34[2];
      *v34 = result;
    }

    v38 += v40;
    v26 = __OFSUB__(v35, v40);
    v35 -= v40;
  }

  while (!((v35 < 0) ^ v26 | (v35 == 0)));
  return result;
}

uint64_t GN_GPS_Set_TM_FSP_OS_Time_ms(uint64_t a1, uint64_t a2)
{
  EvLog_v("GN_GPS_Set_TM_FSP_OS_Time_ms: %u %u %d", a1, a2, a1 - a2);
  Debug_Log_TM_FCP_OS_Time_ms(a1, a2);
  v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  if ((v4 - a1) >= 0)
  {
    v5 = v4 - a1;
  }

  else
  {
    v5 = a1 - v4;
  }

  if (v5 < 0x1389)
  {
    result = Is_GN_API_Set_Allowed("API_Set_TM_FSP_OS_Time_ms");
    if (result)
    {
      v7 = *(p_api + 328);
      result = 1;
      *v7 = 1;
      *(v7 + 400) = a1;
      *(v7 + 404) = a2;
    }
  }

  else
  {
    EvLog_v("GN_GPS_Set_TM_FSP_OS_Time_ms: REJECTED: OS_Time too different %d", v4 - a1);
    return 0;
  }

  return result;
}

uint64_t GN_GPS_Set_RTI_Bad_SV_List(uint64_t a1, int *a2, unsigned __int8 *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v22 = 0u;
  v6 = Is_GN_API_Set_Allowed("GN_GPS_Set_RTI_Bad_SV_List");
  result = 0;
  if (!v6)
  {
    return result;
  }

  Debug_Log_GPS_RTI_Bad_SV_List(a1, a2, a3);
  if (a1 > 0xB2)
  {
    EvCrt_v("GN_GPS_Set_RTI_Bad_SV_List: FAILED: RTI_Num_Bad_SV = %d >%d, Out of range!");
    return 0;
  }

  if (!a1)
  {
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
LABEL_45:
    EvLog_v("GN_GPS_Set_RTI_Bad_SV_List: G %d R %d Q %d S %d B %d E %d", a1, v19, v17, v18, v15, v16);
    return API_Set_RTI_Bad_SV_List(v22);
  }

  v8 = 0;
  v9 = a1;
  while (1)
  {
    v10 = a2[v8];
    if (v10 > 7)
    {
      break;
    }

    switch(v10)
    {
      case 1:
        v12 = 0;
        v11 = 32;
        goto LABEL_20;
      case 2:
        v11 = 24;
        v12 = 1;
        v10 = 1;
        goto LABEL_20;
      case 4:
        v11 = 202;
        v10 = 193;
        v12 = 4;
        goto LABEL_20;
    }

LABEL_17:
    EvCrt_v("GN_GPS_Set_RTI_Bad_SV_List: FAILED: RTI_Bad_SV_Type_List[%d] = 0x%x, Out of range!", v8, v10);
LABEL_26:
    if (a1 == ++v8)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(a1) = 0;
      while (1)
      {
        v21 = *a2++;
        v20 = v21;
        if (v21 > 7)
        {
          switch(v20)
          {
            case 8:
              ++v18;
              break;
            case 16:
              ++v16;
              break;
            case 32:
              ++v15;
              break;
            default:
              goto LABEL_39;
          }
        }

        else
        {
          switch(v20)
          {
            case 1:
              LODWORD(a1) = a1 + 1;
              break;
            case 2:
              ++v19;
              break;
            case 4:
              ++v17;
              break;
            default:
LABEL_39:
              EvCrt_Illegal_Default("GN_GPS_Set_RTI_Bad_SV_List", 3460);
              break;
          }
        }

        if (!--v9)
        {
          goto LABEL_45;
        }
      }
    }
  }

  if (v10 == 8)
  {
    v11 = 158;
    v10 = 120;
    v12 = 5;
    goto LABEL_20;
  }

  if (v10 != 32)
  {
    if (v10 == 16)
    {
      v11 = 36;
      v10 = 1;
      v12 = 2;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v11 = 37;
  v10 = 1;
  v12 = 3;
LABEL_20:
  v13 = a3[v8];
  if (v13 >= v10 && v11 >= v13)
  {
    v22[v13 - v10 + Num_Prn[v12]] = 1;
    goto LABEL_26;
  }

  EvCrt_v("GN_GPS_Set_RTI_Bad_SV_List: FAILED: RTI_Bad_SV_Id_List[%d] = %d <%d or >%d, Out of range!");
  return 0;
}

void GncP25_02StopTimemarkSessTimer(void)
{
  v3 = *MEMORY[0x29EDCA608];
  if (g_TimemarkTimerStatus == 1)
  {
    if (AgpsFsmStopTimer(8790278))
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v0 = mach_continuous_time();
        v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncP25_02StopTimemarkSessTimer", 1545);
        LbsOsaTrace_WriteLog(8u, __str, v1, 2, 1);
      }
    }

    else
    {
      g_TimemarkTimerStatus = 0;
    }
  }
}

uint64_t GncP25_04HandleTimeMarkEvent(unsigned __int8 *a1, int a2)
{
  v35 = *MEMORY[0x29EDCA608];
  if (g_TimeMarkState == 1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pulse not processed\n");
    return LbsOsaTrace_WriteLog(8u, __str, v3, 2, 1);
  }

  if (a2 != 18)
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
    if (!result)
    {
      return result;
    }

    goto LABEL_44;
  }

  if (a1[8] != 83)
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v33 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Status,%u\n", v33);
    return LbsOsaTrace_WriteLog(8u, __str, v3, 2, 1);
  }

  if ((g_GncP_PEUpdate[0] & 1) == 0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
    if (!result)
    {
      return result;
    }

LABEL_44:
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    return LbsOsaTrace_WriteLog(8u, __str, v3, 2, 1);
  }

  result = gnssOsa_Calloc("GncP25_04HandleTimeMarkEvent", 188, 1, 0x40uLL);
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(a1 + 9);
  v7 = a1[14];
  v8 = a1[13] | (v7 << 8);
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TMEvent BBTICK,%u,SubMs,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 73, "GncP25_04HandleTimeMarkEvent", v6, v8);
    LbsOsaTrace_WriteLog(8u, __str, v10, 4, 1);
  }

  if (byte_2A191DD89 == 1)
  {
    *&v11 = v8;
    LODWORD(v11) = dword_2A191DD80;
    v12 = v6 + v8 * 0.0000152587891 - v11;
    v13 = v12 * (*&qword_2A191DDB8 + 1.0);
    v14 = v13 + *&qword_2A191DDA0 * 1000.0;
    v15 = sqrt(*&qword_2A191DE28 * (v13 * (v13 * *&qword_2A191DE28)) + *&qword_2A191DE18 * 1000.0 * (*&qword_2A191DE18 * 1000.0));
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DeltaToW,%.12f,DeltaTick,%.12f\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 68, "GncP25_06CalculateTOW", v13, v12);
      LbsOsaTrace_WriteLog(8u, __str, v17, 5, 1);
    }

    v18 = 0;
    v19 = 0;
    v20 = word_2A191DD98;
    v21 = v14 + -604800000.0;
    if (v14 < 604800000.0)
    {
      v21 = v14;
    }

    else
    {
      v20 = word_2A191DD98 + 1;
    }

    *(v5 + 18) = v20;
    *(v5 + 16) = 1;
    *(v5 + 24) = v21;
    *(v5 + 32) = v15;
    v22 = *&qword_2A191DDC0;
    if (!byte_2A191DD79)
    {
      v22 = 0.0;
    }

    *(v5 + 40) = byte_2A191DD79;
    *(v5 + 48) = v22;
    if (dword_2A191DEA8 == 4)
    {
      v23 = 5;
    }

    else
    {
      v23 = 0;
    }

    if (dword_2A191DEA8 == 2)
    {
      v24 = 3;
    }

    else
    {
      v24 = v23;
    }

    *(v5 + 60) = v24;
    while (1)
    {
      if (g_GncP_PEUpdate[v18 + 6096] == 1)
      {
        v25 = &g_GncP_PEUpdate[4 * v18];
        v26 = *(v25 + 83);
        if (v26 > 3)
        {
          switch(v26)
          {
            case 4:
              v19 |= 4u;
              break;
            case 5:
              v19 |= 0x40u;
              break;
            case 6:
              v19 |= 2u;
              break;
            default:
LABEL_37:
              if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v27 = mach_continuous_time();
                v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Const,%u,Idx,%u\n", (*&g_MacClockTicksToMsRelation * v27), "GNC", 87, "GncP25_05GetConstellationUsed", 770, *(v25 + 83), v18);
                LbsOsaTrace_WriteLog(8u, __str, v28, 2, 1);
              }

              break;
          }
        }

        else
        {
          switch(v26)
          {
            case 1:
              v19 |= 1u;
              break;
            case 2:
              v19 |= 0x20u;
              break;
            case 3:
              v19 |= 0x10u;
              break;
            default:
              goto LABEL_37;
          }
        }
      }

      if (++v18 == 128)
      {
        *(v5 + 62) = v19;
        goto LABEL_53;
      }
    }
  }

  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 16) = 0u;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v29 = mach_continuous_time();
    v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GpsTime NotAvail\n", (*&g_MacClockTicksToMsRelation * v29), "GNC", 73, "GncP25_04HandleTimeMarkEvent");
    LbsOsaTrace_WriteLog(8u, __str, v30, 4, 1);
  }

LABEL_53:
  *(v5 + 56) = v6;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v31 = mach_continuous_time();
    v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_TIMEMARK_EVENT_IND =>GNM\n", (*&g_MacClockTicksToMsRelation * v31), "GNC", 73, "GncP25_04HandleTimeMarkEvent");
    LbsOsaTrace_WriteLog(8u, __str, v32, 4, 1);
  }

  AgpsSendFsmMsg(134, 128, 8784643, v5);
  return GncP25_09UpdateTimeMarkInfo(0, 1, 0, v6 + (v7 >> 7));
}

uint64_t GncP25_09UpdateTimeMarkInfo(uint64_t result, int a2, int a3, int a4)
{
  v13 = *MEMORY[0x29EDCA608];
  if (result)
  {
    _MergedGlobals_2 = a3;
    GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidOSTime = 1;
  }

  if (a2)
  {
    dword_2A1971780 = a4;
    result = mach_continuous_time();
    dword_2A1971784 = (*&g_MacClockTicksToMsRelation * result);
    GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidBBTick = 1;
  }

  else if (GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidBBTick != 1)
  {
    return result;
  }

  if (GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidOSTime == 1)
  {
    GncP25_02StopTimemarkSessTimer();
    v4 = _MergedGlobals_2;
    if ((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v4 > 0x1F3 || (v5 = dword_2A1971784, (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v5 > 0x1F3))
    {
      result = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
      if (!result)
      {
LABEL_17:
        GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidOSTime = 0;
        GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidBBTick = 0;
        g_TimeMarkState = 1;
        return result;
      }

      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Invalid OStime %u,BBtick,%u,BBTickRx,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GncP25_09UpdateTimeMarkInfo", _MergedGlobals_2, dword_2A1971780, dword_2A1971784);
      v10 = 2;
    }

    else
    {
      if ((GN_GPS_Set_TM_FSP_OS_Time_ms(_MergedGlobals_2, dword_2A1971780) & 1) == 0)
      {
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v6 = mach_continuous_time();
          v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GN_GPS_Set_TM_FSP_OS_Time_ms\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GncP25_09UpdateTimeMarkInfo", 257);
          LbsOsaTrace_WriteLog(8u, __str, v7, 2, 1);
        }
      }

      result = LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0);
      if (!result)
      {
        goto LABEL_17;
      }

      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TMInfo OStime %u,BBtick,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncP25_09UpdateTimeMarkInfo", _MergedGlobals_2, dword_2A1971780);
      v10 = 4;
    }

    result = LbsOsaTrace_WriteLog(8u, __str, v9, v10, 1);
    goto LABEL_17;
  }

  return result;
}

uint64_t GncP25_01HandleStartTimeMarkReq(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_START_TIMEMARK_REQ\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 73, "GncP25_01HandleStartTimeMarkReq");
      LbsOsaTrace_WriteLog(8u, __str, v2, 4, 1);
    }

    v3 = gnssOsa_Calloc("GncP25_01HandleStartTimeMarkReq", 326, 1, 0x10uLL);
    if (v3)
    {
      v4 = v3;
      if ((g_TimeMarkState & 1) == 0)
      {
        v3[12] = 0;
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v14 = mach_continuous_time();
          v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 87, "GncP25_01HandleStartTimeMarkReq", 2056);
          LbsOsaTrace_WriteLog(8u, __str, v15, 2, 1);
        }

        goto LABEL_27;
      }

      v5 = g_GncPStateInfo;
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0);
      if (v5 == 7)
      {
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v7 = mach_continuous_time();
          v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TM started ME ON\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GncP25_03HandleStartTimeMark");
          LbsOsaTrace_WriteLog(8u, __str, v8, 4, 1);
        }

        v9 = byte_2A1920803;
        v10 = LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0);
        if ((v9 & 1) == 0)
        {
          if (v10)
          {
            bzero(__str, 0x410uLL);
            v16 = mach_continuous_time();
            v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ME duty cycle disabled\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 73, "GncP25_03HandleStartTimeMark");
            LbsOsaTrace_WriteLog(8u, __str, v17, 4, 1);
          }

          g_TimeMarkState = 0;
          GncP25_02StopTimemarkSessTimer();
          if (AgpsFsmStartTimer(8790278, 0x3E8u))
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v18 = mach_continuous_time();
              v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 87, "GncP25_03StartTimemarkSessTimer", 1544, 1000);
              LbsOsaTrace_WriteLog(8u, __str, v19, 2, 1);
            }
          }

          else
          {
            g_TimemarkTimerStatus = 1;
          }

          Hal_TriggerTimeMarkPulse(GncP25_07TimeMarkPulseCb);
          v4[12] = 1;
          goto LABEL_27;
        }

        if (v10)
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ME duty cycle allowed\n");
LABEL_18:
          LbsOsaTrace_WriteLog(8u, __str, v11, 4, 1);
        }
      }

      else if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TM ReqRejected MEState,%hhu\n", v23);
        goto LABEL_18;
      }

      g_TimeMarkState = 1;
      v4[12] = 0;
LABEL_27:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_START_TIMEMARK_RSP =>GNM Status,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 73, "GncP25_01HandleStartTimeMarkReq", v4[12]);
        LbsOsaTrace_WriteLog(8u, __str, v21, 4, 1);
      }

      AgpsSendFsmMsg(134, 128, 8390916, v4);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "GncP25_01HandleStartTimeMarkReq", 517);
    LbsOsaTrace_WriteLog(8u, __str, v13, 0, 1);
  }

  return 0;
}

void GncP25_07TimeMarkPulseCb(int a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = gnssOsa_Calloc("GncP25_07TimeMarkPulseCb", 369, 1, 0x10uLL);
    if (v3)
    {
      v4 = v3;
      *(v3 + 3) = a1;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_TIMEMARK_PULSE_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncP25_07TimeMarkPulseCb");
        LbsOsaTrace_WriteLog(8u, __str, v6, 4, 1);
      }

      AgpsSendFsmMsg(134, 134, 8791299, v4);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimeMark Trig fail\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncP25_07TimeMarkPulseCb");
    LbsOsaTrace_WriteLog(8u, __str, v8, 2, 1);
  }
}

uint64_t GncP25_08HandleTimeMarkPulseInd(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_TIMEMARK_PULSE_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP25_08HandleTimeMarkPulseInd");
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    if ((g_TimeMarkState & 1) == 0)
    {
      GncP25_09UpdateTimeMarkInfo(1uLL, 0, *(a1 + 12), 0);
      return 0;
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Session Stopped\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP25_08HandleTimeMarkPulseInd", 262);
      v6 = 2;
LABEL_9:
      LbsOsaTrace_WriteLog(8u, __str, v5, v6, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "GncP25_08HandleTimeMarkPulseInd", 517);
    v6 = 0;
    goto LABEL_9;
  }

  return 0;
}

void GncP25_10TimemarkSessTimerExpiry(void)
{
  v7 = *MEMORY[0x29EDCA608];
  g_TimemarkTimerStatus = 0;
  GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidOSTime = 0;
  GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidBBTick = 0;
  g_TimeMarkState = 1;
  v0 = gnssOsa_Calloc("GncP25_10TimemarkSessTimerExpiry", 473, 1, 0x40uLL);
  if (v0)
  {
    v1 = v0;
    v0[2] = 0u;
    v0[3] = 0u;
    v0[1] = 0u;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GpsTime NotAvail\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP25_10TimemarkSessTimerExpiry");
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_TIMEMARK_EVENT_IND =>GNM\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP25_10TimemarkSessTimerExpiry");
      LbsOsaTrace_WriteLog(8u, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(134, 128, 8784643, v1);
  }
}

uint64_t sprintf_eR8(void *a1, double a2)
{
  v3 = -a2;
  if (a2 >= 0.0)
  {
    v3 = a2;
  }

  if (v3 <= 0.0)
  {
    i = 0;
    v9 = 0;
  }

  else
  {
    for (i = 0; v3 < 0.00001; v3 = v3 * 10000.0)
    {
      i = (i - 4);
    }

    for (; v3 < 0.1; v3 = v3 * 10.0)
    {
      i = (i - 1);
    }

    for (; v3 > 10000.0; v3 = v3 * 0.0001)
    {
      i = (i + 4);
    }

    while (v3 > 10.0)
    {
      i = (i + 1);
      v3 = v3 * 0.1;
    }

    v5 = v3 * 10000000.0;
    v6 = -0.5;
    if (v5 > 0.0)
    {
      v6 = 0.5;
    }

    v7 = v5 + v6;
    if (v7 <= 2147483650.0)
    {
      if (v7 >= -2147483650.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0x80000000;
      }
    }

    else
    {
      v8 = 0x7FFFFFFF;
    }

    if (a2 >= 0.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = -v8;
    }
  }

  sprintf_9f(a1, v9, 8);
  v10 = (*a1)++;
  *v10 = 101;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  return sprintf_03d(a1, i);
}

char **sprintf_gR8(char **a1, double a2)
{
  v2 = fabs(a2);
  v3 = (*a1)++;
  *v3 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if (v2 < 99.0)
  {
    v4 = a2 * 1000000.0;
    v5 = -0.5;
    if (v4 > 0.0)
    {
      v5 = 0.5;
    }

    v6 = v4 + v5;
    if (v6 <= 2147483650.0)
    {
      if (v6 >= -2147483650.0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 7;
LABEL_67:

    return sprintf_9f(a1, v7, v14);
  }

  if (v2 < 999.0)
  {
    v8 = a2 * 100000.0;
    v9 = -0.5;
    if (v8 > 0.0)
    {
      v9 = 0.5;
    }

    v10 = v8 + v9;
    if (v10 <= 2147483650.0)
    {
      if (v10 >= -2147483650.0)
      {
        v7 = v10;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 6;
    goto LABEL_67;
  }

  if (v2 < 9999.0)
  {
    v11 = a2 * 10000.0;
    v12 = -0.5;
    if (v11 > 0.0)
    {
      v12 = 0.5;
    }

    v13 = v11 + v12;
    if (v13 <= 2147483650.0)
    {
      if (v13 >= -2147483650.0)
      {
        v7 = v13;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 5;
    goto LABEL_67;
  }

  if (v2 < 99999.0)
  {
    v15 = a2 * 1000.0;
    v16 = -0.5;
    if (v15 > 0.0)
    {
      v16 = 0.5;
    }

    v17 = v15 + v16;
    if (v17 <= 2147483650.0)
    {
      if (v17 >= -2147483650.0)
      {
        v7 = v17;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 4;
    goto LABEL_67;
  }

  if (v2 < 999999.0)
  {
    v18 = a2 * 100.0;
    v19 = -0.5;
    if (v18 > 0.0)
    {
      v19 = 0.5;
    }

    v20 = v18 + v19;
    if (v20 <= 2147483650.0)
    {
      if (v20 >= -2147483650.0)
      {
        v7 = v20;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 3;
    goto LABEL_67;
  }

  if (v2 < 9999999.0)
  {
    v21 = a2 * 10.0;
    v22 = -0.5;
    if (v21 > 0.0)
    {
      v22 = 0.5;
    }

    v23 = v21 + v22;
    if (v23 <= 2147483650.0)
    {
      if (v23 >= -2147483650.0)
      {
        v7 = v23;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 2;
    goto LABEL_67;
  }

  if (v2 >= 99999999.0)
  {

    return sprintf_eR8(a1, a2);
  }

  else
  {
    v24 = -0.5;
    if (a2 > 0.0)
    {
      v24 = 0.5;
    }

    v25 = v24 + a2;
    if (v25 <= 2147483650.0)
    {
      if (v25 >= -2147483650.0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0x80000000;
      }
    }

    else
    {
      v26 = 0x7FFFFFFFLL;
    }

    return sprintf_10d(a1, v26);
  }
}

char **sprintf_seR8(char **a1, double a2)
{
  v3 = -a2;
  if (a2 >= 0.0)
  {
    v3 = a2;
  }

  if (v3 <= 0.0)
  {
    i = 0;
    v9 = 0;
  }

  else
  {
    for (i = 0; v3 < 0.0001; v3 = v3 * 1000.0)
    {
      i = (i - 3);
    }

    for (; v3 < 0.1; v3 = v3 * 10.0)
    {
      i = (i - 1);
    }

    for (; v3 > 1000.0; v3 = v3 * 0.001)
    {
      i = (i + 3);
    }

    while (v3 > 9.999)
    {
      i = (i + 1);
      v3 = v3 * 0.1;
    }

    v5 = v3 * 1000.0;
    v6 = -0.5;
    if (v5 > 0.0)
    {
      v6 = 0.5;
    }

    v7 = v5 + v6;
    if (v7 <= 2147483650.0)
    {
      if (v7 >= -2147483650.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0x80000000;
      }
    }

    else
    {
      v8 = 0x7FFFFFFF;
    }

    if (a2 >= 0.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = -v8;
    }
  }

  sprintf_5f(a1, v9, 4);
  v10 = (*a1)++;
  *v10 = 101;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  return sprintf_02d(a1, i);
}

char **sprintf_sgR8(char **a1, double a2)
{
  v2 = fabs(a2);
  v3 = (*a1)++;
  *v3 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if (v2 < 99.0)
  {
    v4 = a2 * 1000.0;
    v5 = -0.5;
    if (v4 > 0.0)
    {
      v5 = 0.5;
    }

    v6 = v4 + v5;
    if (v6 <= 2147483650.0)
    {
      if (v6 >= -2147483650.0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 4;
LABEL_40:

    return sprintf_6f(a1, v7, v14);
  }

  if (v2 < 999.0)
  {
    v8 = a2 * 100.0;
    v9 = -0.5;
    if (v8 > 0.0)
    {
      v9 = 0.5;
    }

    v10 = v8 + v9;
    if (v10 <= 2147483650.0)
    {
      if (v10 >= -2147483650.0)
      {
        v7 = v10;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 3;
    goto LABEL_40;
  }

  if (v2 < 9999.0)
  {
    v11 = a2 * 10.0;
    v12 = -0.5;
    if (v11 > 0.0)
    {
      v12 = 0.5;
    }

    v13 = v11 + v12;
    if (v13 <= 2147483650.0)
    {
      if (v13 >= -2147483650.0)
      {
        v7 = v13;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 2;
    goto LABEL_40;
  }

  if (v2 >= 99999.0)
  {

    return sprintf_seR8(a1, a2);
  }

  else
  {
    v15 = -0.5;
    if (a2 > 0.0)
    {
      v15 = 0.5;
    }

    v16 = v15 + a2;
    if (v16 <= 2147483650.0)
    {
      if (v16 >= -2147483650.0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0x80000000;
      }
    }

    else
    {
      v17 = 0x7FFFFFFFLL;
    }

    return sprintf_7d(a1, v17);
  }
}

char **sprintf_sgR8F(char **a1, double a2)
{
  v2 = fabs(a2);
  v3 = (*a1)++;
  *v3 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if (v2 < 99.0)
  {
    v4 = a2 * 1000.0;
    v5 = -0.5;
    if (v4 > 0.0)
    {
      v5 = 0.5;
    }

    v6 = v4 + v5;
    if (v6 <= 2147483650.0)
    {
      if (v6 >= -2147483650.0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 4;
LABEL_40:

    return sprintf_8f(a1, v7, v14);
  }

  if (v2 < 999.0)
  {
    v8 = a2 * 100.0;
    v9 = -0.5;
    if (v8 > 0.0)
    {
      v9 = 0.5;
    }

    v10 = v8 + v9;
    if (v10 <= 2147483650.0)
    {
      if (v10 >= -2147483650.0)
      {
        v7 = v10;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 3;
    goto LABEL_40;
  }

  if (v2 < 9999.0)
  {
    v11 = a2 * 10.0;
    v12 = -0.5;
    if (v11 > 0.0)
    {
      v12 = 0.5;
    }

    v13 = v11 + v12;
    if (v13 <= 2147483650.0)
    {
      if (v13 >= -2147483650.0)
      {
        v7 = v13;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 2;
    goto LABEL_40;
  }

  if (v2 >= 99999.0)
  {

    return sprintf_seR8(a1, a2);
  }

  else
  {
    v15 = -0.5;
    if (a2 > 0.0)
    {
      v15 = 0.5;
    }

    v16 = v15 + a2;
    if (v16 <= 2147483650.0)
    {
      if (v16 >= -2147483650.0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0x80000000;
      }
    }

    else
    {
      v17 = 0x7FFFFFFFLL;
    }

    return sprintf_9d(a1, v17);
  }
}

double sprintf_ACC(uint64_t a1, double result)
{
  if (result <= 99999.0)
  {
    if (result <= 9.9)
    {
      if (result <= 0.99)
      {
        if (result <= 0.099)
        {
          v13 = result * 1000.0;
          v14 = -0.5;
          if (v13 > 0.0)
          {
            v14 = 0.5;
          }

          v15 = v13 + v14;
          if (v15 <= 2147483650.0)
          {
            if (v15 >= -2147483650.0)
            {
              v9 = v15;
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

          v16 = 4;
        }

        else
        {
          v10 = result * 100.0;
          v11 = -0.5;
          if (v10 > 0.0)
          {
            v11 = 0.5;
          }

          v12 = v10 + v11;
          if (v12 <= 2147483650.0)
          {
            if (v12 >= -2147483650.0)
            {
              v9 = v12;
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

          v16 = 3;
        }
      }

      else
      {
        v6 = result * 10.0;
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

        v16 = 2;
      }

      sprintf_4f(a1, v9, v16);
    }

    else
    {
      v5 = result + 0.5;
      if (v5 >= 2147483650.0)
      {
        v5 = 2147483650.0;
      }

      sprintf_5d(a1, v5);
    }
  }

  else
  {
    v2 = *a1;
    v3 = 57;
    v4 = 1u;
    do
    {
      *a1 = v2 + 1;
      *v2 = v3;
      v2 = *a1;
      if (*a1 >= *(a1 + 24))
      {
        v2 = *(a1 + 16);
        *a1 = v2;
      }

      v3 = str_10[v4++];
    }

    while (v4 != 6);
  }

  return result;
}

void sprintf_v(char **a1, char *a2, int *a3)
{
  v32 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*a2)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      if (v4 != 37 && (v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      if ((v6 & 1) == 0)
      {
        v8 = *++v5;
        v4 = v8;
        if (!v8)
        {
          return;
        }
      }

      if (v4 <= 101)
      {
        if (v4 > 99)
        {
          if (v4 == 100)
          {
            v15 = a3;
            a3 += 2;
            v16 = *v15;
            if (v16 >= 0)
            {
              v17 = v16;
            }

            else
            {
              v17 = -v16;
            }

            sprintf1da(a1, v17, v31, 0, v16 >> 31);
          }

          else
          {
            v12 = a3;
            a3 += 2;
            sprintf_eR8(a1, *v12);
          }

          goto LABEL_7;
        }

        if (v4 == 88)
        {
          v14 = a3;
          a3 += 2;
          sprintf_1X(a1, *v14);
          goto LABEL_7;
        }

        if (v4 == 99)
        {
          v11 = a3;
          a3 += 2;
          v4 = *v11;
LABEL_5:
          v7 = (*a1)++;
          *v7 = v4;
          goto LABEL_6;
        }
      }

      else if (v4 <= 114)
      {
        if (v4 == 102)
        {
          v24 = a3;
          a3 += 2;
          sprintf_sgR8(a1, *v24);
          goto LABEL_7;
        }

        if (v4 == 103)
        {
          v13 = a3;
          a3 += 2;
          sprintf_gR8(a1, *v13);
          goto LABEL_7;
        }
      }

      else
      {
        switch(v4)
        {
          case 's':
            v18 = a3;
            a3 += 2;
            v19 = *v18;
            v20 = *v19;
            if (*v19)
            {
              v21 = *a1;
              v22 = v19 + 1;
              do
              {
                *a1 = v21 + 1;
                *v21 = v20;
                v21 = *a1;
                if (*a1 >= a1[3])
                {
                  v21 = a1[2];
                  *a1 = v21;
                }

                v23 = *v22++;
                v20 = v23;
              }

              while (v23);
            }

            goto LABEL_7;
          case 'u':
            v25 = a3;
            a3 += 2;
            sprintf_1u(a1, *v25);
            goto LABEL_7;
          case 'x':
            v9 = a3;
            a3 += 2;
            sprintf_1x(a1, *v9);
            goto LABEL_7;
        }
      }

      if ((v4 - 48) < 0xA || v4 <= 0x2E && ((1 << v4) & 0x680800000000) != 0)
      {
        v6 = 1;
        goto LABEL_17;
      }

      v26 = (*a1)++;
      *v26 = 37;
      v27 = *a1;
      if (*a1 >= a1[3])
      {
        v27 = a1[2];
        *a1 = v27;
      }

      v28 = *v5;
      *a1 = v27 + 1;
      *v27 = v28;
LABEL_6:
      if (*a1 >= a1[3])
      {
        v6 = 0;
        *a1 = a1[2];
        goto LABEL_17;
      }

LABEL_7:
      v6 = 0;
LABEL_17:
      v10 = *++v5;
      v4 = v10;
    }

    while (v10);
  }

  v29 = (*a1)++;
  *v29 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }
}

uint64_t GncP04_05HandlePosEventInd(uint64_t a1)
{
  v56 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 69, "GncP04_05HandlePosEventInd", 517);
      v15 = 0;
LABEL_16:
      LbsOsaTrace_WriteLog(8u, __str, v14, v15, 1);
      return 0;
    }

    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_POS_EVENT SMClient,%hhu,Ses,%u,PosOp,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP04_05HandlePosEventInd", *(a1 + 12), *(a1 + 14), *(a1 + 16));
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  v4 = *(a1 + 12);
  v5 = *(a1 + 14);
  if (!*(a1 + 16))
  {
    v16 = 0;
    v17 = 1;
    while (1)
    {
      v18 = v17;
      v19 = &g_GncPCntxtInfo + 36 * v16;
      if (v19[8] == 1 && v19[4] == v4 && *(v19 + 3) == v5)
      {
        break;
      }

      v17 = 0;
      v16 = 1;
      if ((v18 & 1) == 0)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          goto LABEL_49;
        }

        bzero(__str, 0x410uLL);
        v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v53 = *(a1 + 14);
        v54 = *(a1 + 16);
        v51 = 2050;
        v52 = *(a1 + 12);
        v11 = "GncP04_06HandleStopPosEvent";
        v12 = "%10u %s%c %s: #%04hx Client,%hhu,Ses,%u,PosOp,%u\n";
LABEL_24:
        v20 = snprintf(__str, 0x40FuLL, v12, v10, "GNC", 87, v11, v51, v52, v53, v54);
        goto LABEL_48;
      }
    }

    if (v4 != 1)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        goto LABEL_49;
      }

      bzero(__str, 0x410uLL);
      v50 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ClientID,%hhu\n", v50);
      goto LABEL_48;
    }

    *(v19 + 35) = 0;
    *(v19 + 20) = 0u;
    *(v19 + 4) = 0u;
    if ((BYTE2(g_GncPCntxtInfo) - 3) > 0xFDu)
    {
      --BYTE2(g_GncPCntxtInfo);
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        goto LABEL_78;
      }

      bzero(__str, 0x410uLL);
      v41 = mach_continuous_time();
      v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Instance,%u\n", (*&g_MacClockTicksToMsRelation * v41), "GNC", 73, "GncP04_04DecreaseInstnCount", BYTE2(g_GncPCntxtInfo));
      v40 = 4;
    }

    else
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        goto LABEL_78;
      }

      bzero(__str, 0x410uLL);
      v38 = mach_continuous_time();
      v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Count,%u\n", (*&g_MacClockTicksToMsRelation * v38), "GNC", 87, "GncP04_04DecreaseInstnCount", 770, BYTE2(g_GncPCntxtInfo));
      v40 = 2;
    }

    LbsOsaTrace_WriteLog(8u, __str, v39, v40, 1);
LABEL_78:
    v42 = 0;
    v43 = 1;
    while (1)
    {
      v44 = v43;
      v45 = &g_GncPCntxtInfo + 36 * v42;
      if (v45[8] == 1 && !v45[36])
      {
        break;
      }

      v43 = 0;
      v42 = 1;
      if ((v44 & 1) == 0)
      {
        GncP16_23UpdateStateFGSession(0, v37);
        break;
      }
    }

    v46 = 0;
    v47 = 1;
    while (1)
    {
      v48 = v47;
      v49 = &g_GncPCntxtInfo + 36 * v46;
      if (v49[8] == 1 && (v49[9] & 8) != 0)
      {
        goto LABEL_49;
      }

      v47 = 0;
      v46 = 1;
      if ((v48 & 1) == 0)
      {
        if (qword_2A191FD10)
        {
          free(qword_2A191FD10);
        }

        qword_2A191FD10 = 0;
        goto LABEL_49;
      }
    }
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = &g_GncPCntxtInfo + 36 * v6;
    if (v9[8] == 1 && v9[4] == v4 && *(v9 + 3) == v5)
    {
      v21 = 1;
      goto LABEL_35;
    }

    v7 = 0;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  if (BYTE8(g_GncPCntxtInfo))
  {
    if (byte_2A1939EAC)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        goto LABEL_49;
      }

      bzero(__str, 0x410uLL);
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v53 = *(a1 + 14);
      v54 = *(a1 + 16);
      v51 = 2054;
      v52 = *(a1 + 12);
      v11 = "GncP04_07ProcessPosEvent";
      v12 = "%10u %s%c %s: #%04hx Client,%hhu,ID,%u,PosOp,%u\n";
      goto LABEL_24;
    }

    LOBYTE(v6) = 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  if (BYTE2(g_GncPCntxtInfo) < 2u)
  {
    ++BYTE2(g_GncPCntxtInfo);
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Instance,%u\n", (*&g_MacClockTicksToMsRelation * v25), "GNC", 73, "GncP04_03IncreaseInstnCount", BYTE2(g_GncPCntxtInfo));
      v24 = 4;
      goto LABEL_33;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Count,%u\n", (*&g_MacClockTicksToMsRelation * v22), "GNC", 87, "GncP04_03IncreaseInstnCount", 770, BYTE2(g_GncPCntxtInfo));
    v24 = 2;
LABEL_33:
    LbsOsaTrace_WriteLog(8u, __str, v23, v24, 1);
  }

  v21 = 0;
LABEL_35:
  v26 = &g_GncPCntxtInfo + 36 * v6;
  v26[4] = *(a1 + 12);
  v27 = (v26 + 4);
  v27[4] = 1;
  *(v27 + 1) = *(a1 + 14);
  v27[5] = *(a1 + 16);
  *(v27 + 8) = *(a1 + 20);
  *(v27 + 12) = *(a1 + 36);
  *(v27 + 26) = *(a1 + 38);
  *(v27 + 30) = *(a1 + 42);
  v27[34] = *(a1 + 46);
  if (LbsOsaTrace_IsLoggingAllowed(8u, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v28 = mach_continuous_time();
    v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Client,%hhu,ID,%u,Output,%u,ReqRcvd,%u,Deadline,%u,Emergency,%u\n", (*&g_MacClockTicksToMsRelation * v28), "GNC", 77, "GncP04_07ProcessPosEvent", 2057, *v27, *(v27 + 1), v27[5], *(v27 + 2), *(v27 + 3), v27[33]);
    LbsOsaTrace_WriteLog(8u, __str, v29, 3, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v31 = mach_continuous_time();
    v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StartTime,%u,Int,%u,HAcc,%u,Vacc,%u,ConstMask,%u,PrefFtaMeasTime,%u\n", (*&g_MacClockTicksToMsRelation * v31), "GNC", 77, "GncP04_07ProcessPosEvent", 2057, *(v27 + 4), *(v27 + 5), *(v27 + 12), *(v27 + 13), v27[30], v27[34]);
    LbsOsaTrace_WriteLog(8u, __str, v32, 3, 1);
  }

  if (*v27 == 1)
  {
    GncP16_23UpdateStateFGSession(1, v30);
    if ((*(a1 + 16) & 4) != 0)
    {
      v33 = v21;
    }

    else
    {
      v33 = 1;
    }

    if ((v33 & 1) == 0)
    {
      GncP12_10ClearPeRtiInfo();
    }

    goto LABEL_49;
  }

  if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
  {
    goto LABEL_49;
  }

  bzero(__str, 0x410uLL);
  mach_continuous_time();
  v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Invalid ClientID,%hhu\n");
LABEL_48:
  LbsOsaTrace_WriteLog(8u, __str, v20, 2, 1);
LABEL_49:
  if (g_GncPStateInfo <= 2u)
  {
    if (!g_GncPStateInfo)
    {
      return 0;
    }

    if (g_GncPStateInfo != 1)
    {
      if (g_GncPStateInfo != 2)
      {
LABEL_63:
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          return 0;
        }

        bzero(__str, 0x410uLL);
        v35 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v35), "GNC", 87, "GncP04_05HandlePosEventInd", 770);
        v15 = 2;
        goto LABEL_16;
      }

LABEL_58:
      v34 = 3;
      goto LABEL_67;
    }

LABEL_65:
    v34 = 2;
    goto LABEL_67;
  }

  if (g_GncPStateInfo > 0x10u)
  {
LABEL_61:
    if (g_GncPStateInfo != 3)
    {
      if (g_GncPStateInfo != 4)
      {
        goto LABEL_63;
      }

      goto LABEL_58;
    }

    goto LABEL_65;
  }

  if (((1 << g_GncPStateInfo) & 0xC380) != 0)
  {
    if (*(a1 + 16))
    {
      v34 = 6;
    }

    else
    {
      v34 = 1;
    }

    goto LABEL_67;
  }

  if (((1 << g_GncPStateInfo) & 0x10C20) == 0)
  {
    if (g_GncPStateInfo == 6)
    {
      v34 = 7;
LABEL_67:
      GncP04_19SendPosEvntResp(v34);
      return 0;
    }

    goto LABEL_61;
  }

  return 0;
}

void GncP04_19SendPosEvntResp(char a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("GncP04_19SendPosEvntResp", 496, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    v2[12] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_POS_EVENT_RSP =>GNCS Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP04_19SendPosEvntResp", v3[12]);
      LbsOsaTrace_WriteLog(8u, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(134, 130, 8784387, v3);
  }
}

uint64_t GncP04_08GetNextSessInstn(unsigned int a1, void *a2, unsigned __int8 a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    while (1)
    {
      v6 = v5;
      v7 = &g_GncPCntxtInfo + 36 * v3;
      if (v7[8] == 1 && (v7[9] & a3) != 0 && a1 < ++v4)
      {
        break;
      }

      v5 = 0;
      v8 = 0;
      v3 = 1;
      if ((v6 & 1) == 0)
      {
        return v8;
      }
    }

    memcpy_s("GncP04_08GetNextSessInstn", 391, a2, 0x24u, v7 + 4, 0x24uLL);
    return 1;
  }

  else
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
    v8 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "GncP04_08GetNextSessInstn", 513);
      LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      return 0;
    }
  }

  return v8;
}

uint64_t GncP04_18ChkAnyFGSessQualMet(void)
{
  v0 = 0;
  v9 = *MEMORY[0x29EDCA608];
  v1 = 1;
  while (1)
  {
    v2 = v1;
    v3 = &g_GncPCntxtInfo + 36 * v0;
    if (v3[8] == 1 && v3[4] == 1 && GncP01_33CheckSessionQualMet((v3 + 4)))
    {
      break;
    }

    v1 = 0;
    v4 = 0;
    v0 = 1;
    if ((v2 & 1) == 0)
    {
      return v4;
    }
  }

  if (!LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v6 = mach_continuous_time();
  v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SesId,%u,Output,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP04_18ChkAnyFGSessQualMet", *(v3 + 3), v3[9]);
  v4 = 1;
  LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
  return v4;
}

void GncP04_21SendClearGnssAck(uint64_t result)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = g_GnssDataClrMask;
  if (g_GnssDataClrMask)
  {
    v2 = result;
    v3 = gnssOsa_Calloc("GncP04_21SendClearGnssAck", 524, 1, 0x14uLL);
    if (v3)
    {
      v4 = v3;
      v3[12] = v2;
      *(v3 + 4) = v1;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_CLEAR_GNSS_RSP =>GNM Status,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncP04_21SendClearGnssAck", v4[12]);
        LbsOsaTrace_WriteLog(8u, __str, v6, 4, 1);
      }

      AgpsSendFsmMsg(134, 128, 8786436, v4);
      g_GnssDataClrMask = 0;
    }
  }
}

uint64_t GncP04_30HandleNmeaDataReq(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_NMEA_DATA_REQ Req,%u,Mask,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP04_30HandleNmeaDataReq", *(a1 + 12), *(a1 + 14));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    if (*(a1 + 12) == 1)
    {
      v4 = *(a1 + 14);
      if (!v4)
      {
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v5 = mach_continuous_time();
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GncP04_30HandleNmeaDataReq", 515);
          v7 = 2;
LABEL_10:
          LbsOsaTrace_WriteLog(8u, __str, v6, v7, 1);
          return 0;
        }

        return 0;
      }
    }

    else
    {
      v4 = 0;
    }

    LOWORD(g_GncPCntxtInfo) = v4;
    GncP03_12SendUpdtCfg(&g_GncPCntxtInfo, 0);
    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 69, "GncP04_30HandleNmeaDataReq", 517);
    v7 = 0;
    goto LABEL_10;
  }

  return 0;
}

void NK_IntConstel_TO_IntMeas(uint64_t result, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = (a2 + 23264);
  v24 = 0;
  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  v5 = *(a2 + 23264);
  if (v5 == 4)
  {
    if (*(a3 + 33548) >= 1 && *(a3 + 33556) && *(a3 + 33564))
    {
      v8 = *(a2 + 23268);
      if (v8 == 5)
      {
        v17 = *(a2 + 24) + -14.0;
        if (v17 < 0.0)
        {
          v17 = v17 + 604800.0;
        }

        v6 = (*(a3 + 33564) * 0.1 + *(a3 + 33566) * 0.1 * v17) * 0.000000001 * 299792458.0;
        if (v6 >= 0)
        {
          v18 = v6;
        }

        else
        {
          v18 = -v6;
        }

        if (v18 >= 0x12D)
        {
          EvLog_v(" NK_IntConstel_TO_IntMeas: Large BDS-GLO Tim Off: %d");
          return;
        }

        v11 = 1;
        v12 = 10.0;
        v13 = 2;
        v14 = 10996;
        v15 = 744;
        goto LABEL_35;
      }

      if (v8 != 4)
      {
        return;
      }

      v9 = *(a2 + 24) + -14.0;
      if (v9 < 0.0)
      {
        v9 = v9 + 604800.0;
      }

      v6 = (*(a3 + 33556) * 0.1 + *(a3 + 33558) * 0.1 * v9) * 0.000000001 * 299792458.0;
      if (v6 >= 0)
      {
        v10 = v6;
      }

      else
      {
        v10 = -v6;
      }

      if (v10 >= 0x1F)
      {
        EvLog_v(" NK_IntConstel_TO_IntMeas: Large BDS-GPS Tim Off: %d");
        return;
      }

      v11 = 0;
      *(result + 7320) = v6;
      *(result + 7328) = 0x4024000000000000;
      v12 = 10.0;
    }

    else
    {
      if (*(result + 11048) || *(a2 + 23268) != 4)
      {
        return;
      }

      v11 = 0;
      v12 = 30.0;
      v6 = 0.0;
    }

    v13 = 2;
    v14 = 10994;
    v15 = 736;
LABEL_35:
    v16 = 752;
LABEL_36:
    v19 = (*(a2 + v16) - *(a2 + v15)) * 299792458.0;
    *(&v22[1] + 1) = v6;
    *&v22[2] = v12 * v12;
    LOBYTE(v22[0]) = 1;
    DWORD1(v22[0]) = 2;
    *(&v23 + 1) = 0x4415AF1D78B58C40;
    if (KFSt_DMeas_Update(v13, v11, 0xBu, v22, (result + 872), (result + v14), v19))
    {
      v20 = *v4;
      if (v20 == 4)
      {
        *(v4 + 387) = DWORD1(v22[0]);
        v21 = *(v4 + 1);
        if (v21 == 5)
        {
          v4[1608] = 1;
        }

        else if (v21 == 4)
        {
          v4[1607] = 1;
          v4[32] = 1;
          *(v4 + 40) = *(&v22[1] + 8);
        }
      }

      else if (v20 == 2)
      {
        *(v4 + 386) = DWORD1(v22[0]);
        v4[1606] = 1;
        v4[8] = 1;
        *(a2 + 23280) = *(&v22[1] + 8);
      }

      if (g_Enable_Event_Log >= 6u)
      {
        EvLog_v(" NK_IntConstel_TO_IntMeas: Time Offset applied: %d %d ");
      }
    }

    return;
  }

  if (v5 == 2 && *(a3 + 16296) == 1)
  {
    v6 = vcvtd_n_f64_s32(*(a3 + 16236), 0x1EuLL) * 299792458.0;
    if (v6 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = -v6;
    }

    if (v7 >= 0x12D)
    {
      EvLog_v(" NK_IntConstel_TO_IntMeas: Large GGTO: %d");
      return;
    }

    *(result + 7288) = v6;
    *(result + 7296) = 0x4024000000000000;
    v13 = *(a2 + 23268);
    if (v13 == 1)
    {
      v11 = 0;
      v12 = 10.0;
      v14 = 10992;
      v15 = 736;
      v16 = 744;
      goto LABEL_36;
    }
  }
}

unsigned __int16 *Gnm02_11ReqNewInstn(void)
{
  v12 = *MEMORY[0x29EDCA608];
  v0 = 2u;
  while (*&g_GnmInstances[v0])
  {
    v0 += 2;
    if (v0 == 8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v1 = mach_continuous_time();
        v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 87, "Gnm02_11ReqNewInstn", 2054);
        LbsOsaTrace_WriteLog(0xBu, __str, v2, 2, 1);
      }

      return 0;
    }
  }

  v4 = gnssOsa_Calloc("Gnm02_11ReqNewInstn", 186, 1, 0x10uLL);
  v3 = v4;
  *&g_GnmInstances[v0] = v4;
  if (v4)
  {
    v5 = LOWORD(g_GnmInstances[0]);
LABEL_9:
    if (v5 >> 2 < 0xFFF)
    {
      ++v5;
    }

    else
    {
      v5 = 1;
    }

    v6 = 2u;
    do
    {
      v7 = *&g_GnmInstances[v6];
      if (v7 && *v7 == v5)
      {
        goto LABEL_9;
      }

      v6 += 2;
    }

    while (v6 != 8);
    g_GnmInstances[0] = __PAIR32__(HIWORD(g_GnmInstances[0]), v5) + 0x10000;
    *v4 = v5;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnId,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm02_11ReqNewInstn", 2057, *v3);
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
    }
  }

  return v3;
}