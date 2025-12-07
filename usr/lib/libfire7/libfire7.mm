void FireMessageHandler::ExclusiveEntryCheck::enter(unsigned int *a1, unsigned int a2)
{
  v3 = atomic_load(a1);
  if (v3 == 3)
  {
    atomic_store(a2, a1);
    v4 = &a1[2 * a2];
    v5 = *(v4 + 1);
    *(v4 + 1) = v5 + 1;
    if (!v5)
    {
      FireDeviceLog::DeviceLogBase(5, "ExclusiveEntryCheck,firstEntryofType,%d,recorded", a2);
    }

    FireDeviceLog::DeviceLogBase(8, "ExclusiveEntryCheck,enter,%d", a2);
  }

  else
  {
    v6 = atomic_load(a1);
    FireDeviceLog::DeviceLogBase(1, "ExclusiveEntryCheck,failed,active,%d,new,%d,", v6, a2);

    DeviceFaultNotify("FireMessageHandler.cpp", 825, "enter", "ExclusiveEntryCheck,failed,active,%d,new,%d,");
  }
}

void FireDeviceLog::DeviceLogBase(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  v6 = *MEMORY[0x29EDCA608];
  if (*FireDeviceLog::StaticSetting::fInstance >= a1)
  {
    FireDeviceLog::GetLineLeading(0x26, a1, &v4);
    LODWORD(a2) = vsnprintf(__str, 0x100uLL, a2, va);
    std::string::append(&v4, __str);
    if (a2 >= 255)
    {
      std::string::append(&v4, "...");
    }

    if (!FireResourceMgr::fInstance)
    {
      operator new();
    }

    (*(**(FireResourceMgr::fInstance + 16) + 16))(*(FireResourceMgr::fInstance + 16), a1, &v4);
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }
}

void FireMessageHandler::ExclusiveEntryCheck::exit(FireMessageHandler::ExclusiveEntryCheck *this)
{
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  (*(**FireResourceMgr::fInstance + 112))();
  v2 = atomic_load(this);
  FireDeviceLog::DeviceLogBase(8, "ExclusiveEntryCheck,exit,%d", v2);
  atomic_store(3u, this);
}

uint64_t gnss::FireGnssDevice::setConfigEnableGnssConstellations(uint64_t a1, unsigned int a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(6, "#fgd,setConfigEnableGnssConstellations,enableFlags,0x%x", a2);
  if (a2)
  {
    v6 = *(a1 + 40);
    if ((*(v6 + 1356) & 0xFFFFFFFE) == 2)
    {
      FireMessageHandler::setAssistanceNWRti(v6, a2);
      v7 = 1;
    }

    else
    {
      *(v6 + 1056) = a2;
      v7 = 1;
      *(v6 + 1060) = 1;
    }
  }

  else
  {
    v7 = 4;
  }

  return std::function<void ()(gnss::Result)>::operator()(a3, v7);
}

uint64_t FireMessageHandler::send(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (*(a1 + 1356) != 3 && (a2 == 1073741850 || a2 == 1073741825))
  {
    std::deque<FireMessageHandler::Message>::push_back((a1 + 1080), &v5);
    FireDeviceLog::DeviceLogBase(5, "send,message,StartCompletedd,%d,queued", v5);
  }

  else
  {
    FireMessageHandler::ExclusiveEntryCheck::enter((a1 + 1008), 1u);
    FireMessageHandler::messageHandler(a1, a2);
    FireMessageHandler::ExclusiveEntryCheck::exit((a1 + 1008));
  }

  return 1;
}

uint64_t std::function<void ()(gnss::Result)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t gnss::FireGnssDevice::start(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x29EDCA608];
  *(a1 + 360) = 0;
  FireDeviceLog::DeviceLogBase(5, "Version %s, build at %s", "FIRE@125.0.3 GLL@643487", "Oct 10 2025, 20:40:09");
  FireDeviceLog::DeviceLogBase(5, "#fgd,start,coexConfig,0x%llx", a2);
  v8 = *(a1 + 40);
  *(v8 + 2192) = a2;
  FireMessageHandler::send(v8, 1073741840);
  v9 = *(a1 + 40);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a4);
  std::function<void ()(gnss::Result)>::operator=((v9 + 944), v11);
  FireDeviceLog::DeviceLogBase(6, "#fmh,setOnEngineStartCompleted,%p", v11);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
  FireMessageHandler::send(*(a1 + 40), 0x40000000);
  return std::function<void ()(gnss::Result)>::operator()(a3, 1);
}

void sub_29879AE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void FireMessageHandler::messageHandler(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x29EDCA608];
  if (a2 == 1073741831)
  {
    if (*(a1 + 1784))
    {
      memcpy(__dst, (*(*(a1 + 1752) + ((*(a1 + 1776) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 3560 * (*(a1 + 1776) & 0xFLL)), sizeof(__dst));
      FireMessageHandler::logFireOnMsg(1073741831, *__dst);
      (*(**(a1 + 1296) + 520))();
      v3 = vaddq_s64(*(a1 + 1776), xmmword_298A2F6E0);
      *(a1 + 1776) = v3;
      if (v3.i64[0] >= 0x20uLL)
      {
        operator delete(**(a1 + 1752));
        *(a1 + 1752) += 8;
        *(a1 + 1776) -= 16;
      }
    }

    else
    {
      v6 = "fAssistanceExternalSensor.empty()";
LABEL_10:
      v7 = 2;
LABEL_67:
      FireDeviceLog::DeviceLogBase(v7, v6, v37, v38, v39);
    }

    return;
  }

  FireMessageHandler::logFireOnMsg(a2, -1);
  switch(a2)
  {
    case 1073741824:
      FireMessageHandler::EngineState::update((a1 + 1356), 1);
      if (FireConfig::isSvIqDataEnabled((a1 + 1048)))
      {
        v27 = FireCallback::GlReqOnSvIqData;
      }

      else
      {
        v27 = 0;
      }

      GlRequestImplGnssMeasData = BlueFin::GlDbgRequest::CreateGlRequestImplGnssMeasData(CbGlOnMemAlloc, CbGlOnMemFree, FireCallback::GlReqOnStart, FireCallback::GlReqOnGnssMeasData, 0, FireCallback::GlReqOnGnssSvInfoData, 0, v27, 0);
      (*(*GlRequestImplGnssMeasData + 72))(GlRequestImplGnssMeasData, FireCallback::GlReqOnStop);
      (*(*GlRequestImplGnssMeasData + 16))(GlRequestImplGnssMeasData, 0);
      FireMessageHandler::startRequest(a1, 2, GlRequestImplGnssMeasData);
      GlRequestImplPosPeriodic = BlueFin::GlDbgRequest::CreateGlRequestImplPosPeriodic(CbGlOnMemAlloc, CbGlOnMemFree, FireCallback::GlReqOnStart, 1000, 60, 400);
      (*(*GlRequestImplPosPeriodic + 72))(GlRequestImplPosPeriodic, FireCallback::GlReqOnStop);
      (*(*GlRequestImplPosPeriodic + 24))(GlRequestImplPosPeriodic, FireCallback::GlReqOnFixStatus);
      (*(*GlRequestImplPosPeriodic + 16))(GlRequestImplPosPeriodic, FireCallback::GlReqOnNmea);

      FireMessageHandler::startRequest(a1, 0, GlRequestImplPosPeriodic);
      return;
    case 1073741825:
      FireMessageHandler::stopRequest(a1, 1);
      FireMessageHandler::stopRequest(a1, 0);

      FireMessageHandler::stopRequest(a1, 2);
      return;
    case 1073741826:
      FireDeviceLog::DeviceLogBase(6, "#fmh SetAllowGnssDwellDutyCycling,%d", *(a1 + 1352));
      v26 = *(**(a1 + 1296) + 208);

      v26();
      return;
    case 1073741827:
      if (*(a1 + 1692) == 1)
      {
        memcpy(__dst, (a1 + 1424), 0x108uLL);
        (*(**(a1 + 1296) + 360))();
        if (*(a1 + 1692) == 1)
        {
          *(a1 + 1692) = 0;
        }
      }

      return;
    case 1073741828:
      if (*(a1 + 1736))
      {
        v21 = (*(*(a1 + 1704) + 8 * (*(a1 + 1728) / 0x55uLL)) + 48 * (*(a1 + 1728) % 0x55uLL));
        v22 = *v21;
        v23 = v21[2];
        *&__dst[16] = v21[1];
        *&__dst[32] = v23;
        *__dst = v22;
        (*(**(a1 + 1296) + 392))();
        *(a1 + 1728) = vaddq_s64(*(a1 + 1728), xmmword_298A2F6E0);
        std::deque<FireMessageHandler::GLRefPositionExtended>::__maybe_remove_front_spare[abi:ne200100](a1 + 1696);
        return;
      }

      v17 = "fAsstPosition.empty()";
      goto LABEL_74;
    case 1073741829:
      goto LABEL_12;
    case 1073741830:
      v30 = (*(**(a1 + 1296) + 640))(*(a1 + 1296));
      if (v30 <= 1)
      {
        if (!v30)
        {
          v17 = "#fmh,injectAssistanceFile,GL_READ_LTO_SUCCESS";
          goto LABEL_64;
        }

        if (v30 != 1)
        {
          return;
        }

        v17 = "#fmh,#warning,injectAssistanceFile,GL_READ_LTO_NOT_READY";
        goto LABEL_80;
      }

      if (v30 == 2)
      {
        v17 = "#fmh,#warning,injectAssistanceFile,GL_READ_LTO_IGNORED";
LABEL_80:
        v35 = 5;
        goto LABEL_75;
      }

      if (v30 != 3)
      {
        return;
      }

      v17 = "#fmh,injectAssistanceFile,GL_READ_LTO_FAILURE";
LABEL_74:
      v35 = 2;
LABEL_75:

      FireDeviceLog::DeviceLogBase(v35, v17);
      return;
    case 1073741832:
      return;
    case 1073741833:
      if (!*(a1 + 1880))
      {
        return;
      }

      v32 = (a1 + 1840);
      goto LABEL_57;
    case 1073741834:
      if (!*(a1 + 1928))
      {
        return;
      }

      v32 = (a1 + 1888);
LABEL_57:

      FireMessageHandler::SetAssistanceRawSensor(a1, v32);
      return;
    case 1073741835:
      v13 = *(a1 + 2120);
      v14 = *(a1 + 2128);
      *(a1 + 2120) = 0u;
      *(a1 + 2136) = 0;
      if (v13 != v14)
      {
        v15 = v13;
        do
        {
          v16 = (*(**(a1 + 1296) + 400))(*(a1 + 1296), v15, 0);
          FireDeviceLog::DeviceLogBase(6, "setAssistanceNetworkGpsEphemeris,SatID,%d,pass,%d", *v15, v16);
          v15 += 35;
        }

        while (v15 != v14);
      }

      if (v13)
      {

        operator delete(v13);
      }

      return;
    case 1073741836:
      v24 = *(a1 + 1960);
      v25 = *(a1 + 1968);
      v38 = (*(**(a1 + 1296) + 672))(*(a1 + 1296), v24, v25);
      v39 = v25;
      v37 = v24;
      v6 = "#fmh,SetThermalRiskState,time,%llu,ns,pass,%d,level,%d";
      goto LABEL_51;
    case 1073741837:
      GlRequestImplSyncin = BlueFin::GlDbgRequest::CreateGlRequestImplSyncin(CbGlOnMemAlloc, CbGlOnMemFree, FireCallback::GlReqOnStart, 0xFFFFFFFFLL, FireCallback::GlReqOnSyncinReport, FireCallback::GlReqOnSyncInStatus, FireCallback::GlReqOnSyncInLatched);
      (*(*GlRequestImplSyncin + 72))(GlRequestImplSyncin, FireCallback::GlReqOnStop);
      (*(*GlRequestImplSyncin + 80))(GlRequestImplSyncin, FireCallback::GlReqOnSyncinReportCurrentTime);
      FireMessageHandler::startRequest(a1, 1, GlRequestImplSyncin);
      DeviceCommon::GetMachContinuousTime(v19);
      v38 = GlRequestImplSyncin;
      v37 = v20;
      v6 = "#tt,RequestOneShotTimeSync,StartRequest,%.3lf,preq,%p";
      goto LABEL_66;
    case 1073741840:
      *(a1 + 1048) = *(a1 + 2192);
      return;
    case 1073741841:
      v17 = "kUpdateCoexConfig,notSupported";
      goto LABEL_74;
    case 1073741842:
      v31 = (*(**(a1 + 1296) + 744))(*(a1 + 1296), a1 + 2144);
      v37 = *(a1 + 2144);
      v38 = v31;
      v6 = "#fmh,kUpdateRfBandEnable,fBandConstraints,%d,pass,%d";
LABEL_51:
      v7 = 5;
      goto LABEL_67;
    case 1073741843:
      v17 = "SetAssistanceAlongTrackVelocity not available on this platform.";
      goto LABEL_64;
    case 1073741844:
      FireMessageHandler::EngineState::update((a1 + 1356), 1);
      FireDeviceLog::DeviceLogBase(6, "factoryTestConf,gps,%d,glo,%d,%d,%d,bds,%d,nic,%d,item,%d,mode,%d,duraSec,%d,nOffset,%d,extend,%d,L5a(%d,%d),L5b(%d,%d)", *(a1 + 1176), *(a1 + 1178), *(a1 + 1180), *(a1 + 1182), *(a1 + 1184), *(a1 + 1188), *(a1 + 1200), *(a1 + 1204), *(a1 + 1208), *(a1 + 1244), *(a1 + 1245), *(a1 + 1190), *(a1 + 1192), *(a1 + 1194), *(a1 + 1196));
      BYTE2(v41) = 0;
      LOWORD(v41) = *(a1 + 1196);
      GlRequestImplFactoryTest = BlueFin::GlDbgRequest::CreateGlRequestImplFactoryTest(CbGlOnMemAlloc, CbGlOnMemFree, FireCallback::GlReqOnStart, *(a1 + 1176), *(a1 + 1178), *(a1 + 1184), *(a1 + 1186), *(a1 + 1200), *(a1 + 1204), WORD2(*(a1 + 1204)), HIWORD(*(a1 + 1204)), *(a1 + 1240), HIWORD(*(a1 + 1240)), *(a1 + 1244), *(a1 + 1190), *(a1 + 1192), v40, *(a1 + 1194), HIBYTE(*(a1 + 1194)), v41, *(a1 + 1180), *(a1 + 1188), *(a1 + 1246), 255);
      v34 = GlRequestImplFactoryTest;
      if (*(a1 + 1184) != 255)
      {
        *(a1 + 1073) = 1;
      }

      (*(*GlRequestImplFactoryTest + 72))(GlRequestImplFactoryTest, FireCallback::GlReqOnStop);
      (*(*v34 + 64))(v34, FireCallback::GlReqOnFactTest);
      (*(*v34 + 16))(v34, FireCallback::GlReqOnNmea);
      FireMessageHandler::startRequest(a1, 3, v34);
      v37 = v34;
      v6 = "#fmh,factoryTestRequest,0x%p";
      goto LABEL_66;
    case 1073741845:
    case 1073741847:
      v5 = *(**(a1 + 1296) + 352);

      v5();
      return;
    case 1073741846:
      FireDeviceLog::DeviceLogBase(6, "#fmh,start,freqScan,init,%d,end,%d,step,%d,rbw,%d,vbw,%d,flags,0x%X", *(a1 + 1248), *(a1 + 1252), *(a1 + 1256), *(a1 + 1260), *(a1 + 1264), *(a1 + 1268));
      v36 = BlueFin::GlDbgRequest::CreateGlRequestImplFactoryTest(CbGlOnMemAlloc, CbGlOnMemFree, FireCallback::GlReqOnStart, *(a1 + 1248), *(a1 + 1252), *(a1 + 1256), *(a1 + 1260), *(a1 + 1264), *(a1 + 1268));
      (*(*v36 + 72))(v36, FireCallback::GlReqOnStop);
      (*(*v36 + 64))(v36, FireCallback::GlReqOnFactTest);
      FireMessageHandler::startRequest(a1, 4, v36);
      v37 = v36;
      v6 = "#fmh,freqScan,0x%p";
LABEL_66:
      v7 = 6;
      goto LABEL_67;
    case 1073741848:
      FireDeviceLog::DeviceLogBase(5, "#fftd,kStartCommStressRequest,duration,%d,loops,%u,maxKb,%u,startup,%u", *(a1 + 1276), *(a1 + 1288), *(a1 + 1280), *(a1 + 1284));
      *__dst = *(a1 + 1280);
      *&__dst[8] = *(a1 + 1288);
      GlRequestImplComStressTest = BlueFin::GlDbgRequest::CreateGlRequestImplComStressTest(CbGlOnMemAlloc, CbGlOnMemFree, FireCallback::GlReqOnStart, FireCallback::GlReqOnStressTest, *(a1 + 1276), __dst);
      (*(*GlRequestImplComStressTest + 72))(GlRequestImplComStressTest, FireCallback::GlReqOnStop);
      FireMessageHandler::startRequest(a1, 5, GlRequestImplComStressTest);
      FireDeviceLog::DeviceLogBase(6, "#fmh,commStress,0x%p", GlRequestImplComStressTest);
LABEL_12:
      v9 = *(a1 + 1936);
      v10 = *(a1 + 1944);
      if (v9 != v10)
      {
        v11 = (*(**(a1 + 1296) + 512))(*(a1 + 1296), v9, (v10 - v9));
        *(a1 + 1944) = *(a1 + 1936);
        v12 = "SetFail";
        if (v11)
        {
          v12 = "SetSuccess";
        }

        FireDeviceLog::DeviceLogBase(6, "GnssRTI,%s", v12);
      }

      return;
    case 1073741850:
      if (!(*(**(a1 + 1296) + 504))(*(a1 + 1296), a1 + 1976))
      {
        v17 = "setNWRtiInfo,fail";
        goto LABEL_74;
      }

      v17 = "setNWRtiInfo,pass";
LABEL_64:
      v35 = 6;
      goto LABEL_75;
    default:
      v37 = a2;
      v6 = "Unsupported message type: %d";
      goto LABEL_10;
  }
}

void FireMessageHandler::logFireOnMsg(int a1, int a2)
{
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  if ((*(**(FireResourceMgr::fInstance + 16) + 56))(*(FireResourceMgr::fInstance + 16)) >= 6)
  {
    if ((a1 - 0x40000000) > 0x1A)
    {
      if (a2 < 0)
      {
        goto LABEL_6;
      }
    }

    else if (a2 < 0)
    {
LABEL_6:
      FireDeviceLog::DeviceLogBase(6, "msg,%d,%s");
      return;
    }

    FireDeviceLog::DeviceLogBase(6, "msg,%d,%s,type,%d");
  }
}

void FireDeviceLog::GetLineLeading(DeviceCommon *a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v4 = a1;
  DeviceCommon::GetMachContinuousTime(a1);
  std::to_string(&v8, v6);
  std::string::push_back(&v8, 32);
  v9 = v8;
  memset(&v8, 0, sizeof(v8));
  std::string::push_back(&v9, v4);
  v10 = v9;
  memset(&v9, 0, sizeof(v9));
  if ((a2 - 1) > 8)
  {
    v7 = 78;
  }

  else
  {
    v7 = aFewmiddvv[a2 - 1];
  }

  std::string::push_back(&v10, v7);
  v11 = v10;
  memset(&v10, 0, sizeof(v10));
  std::string::push_back(&v11, 32);
  *a3 = v11;
  memset(&v11, 0, sizeof(v11));
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_29879C114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::function<void ()(gnss::Result)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(gnss::Result)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v4);
  return a1;
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

void sub_29879C4DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
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

void FireMessageHandler::EngineState::update(int *a1, int a2)
{
  FireDeviceLog::DeviceLogBase(5, "EngineState,update,state,%d,new,%d", *a1, a2);
  v4 = *a1;
  if (a2 == 2)
  {
    if ((v4 & 0xFFFFFFFE) == 2)
    {
      goto LABEL_7;
    }

    v4 = 2;
  }

  else
  {
    if ((v4 - 1) < 3)
    {
      goto LABEL_7;
    }

    v4 = 1;
  }

  *a1 = v4;
LABEL_7:
  if (v4 != a2)
  {
    FireDeviceLog::DeviceLogBase(3, "EngineState,update,noChange,state,%d,new,%d", v4, a2);
  }
}

unint64_t FireConfig::isSvIqDataEnabled(FireConfig *this)
{
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  v1 = (*(**(FireResourceMgr::fInstance + 40) + 104))(*(FireResourceMgr::fInstance + 40)) >> 63;
  FireDeviceLog::DeviceLogBase(5, "#fc,isSvIqDataEnabled,%d", v1);
  return v1;
}

uint64_t BlueFin::GlDbgRequest::CreateGlRequestImplGnssMeasData(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v15 = a2;
  if (BlueFin::GlDbgMemory::m_pInstance)
  {
    v17 = 1;
  }

  else
  {
    v17 = a1 == 0;
  }

  if (!v17 && a2 != 0)
  {
    v21 = a1(16);
    BlueFin::GlDbgMemory::m_pInstance = v21;
    v19 = a1;
    if (v21)
    {
      *v21 = a1;
      v21[1] = v15;
      v19 = a1;
    }

    goto LABEL_13;
  }

  v19 = a1;
  if (a1)
  {
LABEL_13:
    v20 = v19(136);
    goto LABEL_14;
  }

  v20 = (*BlueFin::GlDbgMemory::m_pInstance)(136);
LABEL_14:
  v22 = v20;
  if (v20)
  {
    *v20 = &unk_2A1F0A1D8;
    *(v20 + 72) = 0u;
    *(v20 + 40) = 0u;
    *(v20 + 56) = 0u;
    *(v20 + 8) = 0u;
    *(v20 + 24) = 0u;
    *(v20 + 88) = 0u;
    *(v20 + 104) = 0u;
    *(v20 + 72) = a3;
    *(v20 + 40) = a4;
    *(v20 + 48) = a5;
    *(v20 + 56) = a6;
    *(v20 + 120) = a7;
    *(v20 + 128) = a8;
    Memory = BlueFin::GlMemAlloc::glAllocateMemory(44, 288, a1);
    v24 = BlueFin::GlRequestImplGnssMeasData::Create(Memory, v22, BlueFin::GlDbgProxyGlReqOnStart, BlueFin::GlDbgProxyGlReqOnGnssMeasData, BlueFin::GlDbgProxyGlReqOnGnssNavData, BlueFin::GlDbgProxyGlReqOnGnssSvInfoData, BlueFin::GlDbgProxyGlReqOnGnssAgcInfoData, a8, a9);
    *(v22 + 24) = v24;
    if (!v24)
    {
      if (!v15)
      {
        v15 = *(BlueFin::GlDbgMemory::m_pInstance + 8);
      }

      v15(v22);
      return 0;
    }
  }

  return v22;
}

char *BlueFin::GlDbgProxy::End(BlueFin::GlDbgProxy *this, unsigned int a2)
{
  result = (*(*this + 120))(this);
  if (result)
  {
    if (*(this + 562) == 1)
    {
      ++*(this + 566);
    }

    result = BlueFin::GlDbgCodecBase::Encode(this, 0, 0, 1u, a2);
    *(this + 562) = 0;
    *(this + 1649) = 255;
    *(this + 825) = 0;
    *(this + 827) = 0;
    *(this + 826) = 0;
  }

  return result;
}

char *BlueFin::GlDbgCodec::WriteStart(BlueFin::GlDbgCodec *this, __int16 a2)
{
  v4 = a2;
  if ((*(*this + 120))(this))
  {
    BlueFin::GlDbgCodec::Write(this, this + 566);
  }

  result = (*(*this + 120))(this);
  if (result)
  {
    return BlueFin::GlDbgCodec::Write(this, &v4);
  }

  return result;
}

char *BlueFin::GlDbgCodec::WriteFinal(BlueFin::GlDbgCodec *this, __int16 a2)
{
  v4 = a2 | 0x8000;
  if ((*(*this + 120))(this))
  {
    BlueFin::GlDbgCodec::Write(this, this + 566);
  }

  result = (*(*this + 120))(this);
  if (result)
  {
    return BlueFin::GlDbgCodec::Write(this, &v4);
  }

  return result;
}

uint64_t DeviceCommon::GetMachContinuousTime(DeviceCommon *this)
{
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  v1 = *(**(FireResourceMgr::fInstance + 8) + 40);

  return v1();
}

uint64_t BlueFin::GlEventPump::Run(BlueFin::GlEventPump *this, unsigned int *a2, unsigned int *a3)
{
  v6 = BlueFin::GlUtils::m_pInstance;
  ++*(BlueFin::GlUtils::m_pInstance + 1088);
  v6[273] = (*(**v6 + 48))();
  if (a2)
  {
    *a2 = *(BlueFin::GlUtils::m_pInstance + 1092);
  }

  for (i = 0; i != 112; i += 8)
  {
    v8 = *(this + i);
    if (v8)
    {
      BlueFin::GlActive::UpdateTimers(v8);
    }
  }

  for (j = 0; j != 14; ++j)
  {
    while (1)
    {
      v10 = *(this + j);
      if (!v10 || !*(v10 + 87))
      {
        break;
      }

      if (j == 0xFFFF)
      {
        goto LABEL_18;
      }

      v11 = *(this + j);
      BlueFin::GlQueue::get(v20, v11 + 5);
      v12 = v11[4];
      v13 = v11[1];
      v11[4] = v13;
      do
      {
        v21 = 0;
        if (BlueFin::patch_dispatch(v13, v11, v20, &v21))
        {
          v13 = v21;
        }

        else
        {
          v13 = (v11[4])(v11, v20);
        }

        v11[4] = v13;
      }

      while (v13);
      j = 0;
      v11[4] = v12;
    }
  }

LABEL_18:
  v14 = BlueFin::GlUtils::m_pInstance;
  ++*(BlueFin::GlUtils::m_pInstance + 1088);
  v14[273] = (*(**v14 + 48))();
  if (a3)
  {
    *a3 = *(BlueFin::GlUtils::m_pInstance + 1092);
  }

  v15 = 0;
  v16 = 100000000;
  do
  {
    v17 = *(this + v15);
    if (v17)
    {
      CurrentTimeoutPeriod = BlueFin::GlActive::GetCurrentTimeoutPeriod(v17);
      if (CurrentTimeoutPeriod >= v16)
      {
        v16 = v16;
      }

      else
      {
        v16 = CurrentTimeoutPeriod;
      }
    }

    v15 += 8;
  }

  while (v15 != 112);
  return v16;
}

uint64_t BlueFin::GlDbgProxyGlEngineOnTimerRq(uint64_t a1)
{
  v1 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnTimerRq(v1);
}

uint64_t BlueFin::GlQueue::putFIFO(BlueFin::GlQueue *this, int a2, char a3)
{
  if (!a2)
  {
    DeviceFaultNotify("glhsm_queue.cpp", 87, "putFIFO", "sig != 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glhsm_queue.cpp", 87, "sig != 0");
  }

  if (!*this)
  {
    *this = a2;
    *(this + 1) = a3;
    *(this + 47) |= *(this + 46);
    return 1;
  }

  v3 = *(this + 21);
  if (v3 < *(this + 20))
  {
    *(this + 21) = v3 + 1;
    if (v3 >= *(this + 22))
    {
      *(this + 22) = v3 + 1;
    }

    v5 = *(this + 2);
    v4 = *(this + 3);
    *v4 = a2;
    v4[1] = a3;
    v4 += 2;
    *(this + 3) = v4;
    if (v4 == v5)
    {
      *(this + 3) = *(this + 1);
    }

    return 1;
  }

  return 0;
}

uint64_t BlueFin::GlPeEngineCallBacks::OnTimerRq(BlueFin::GlPeEngineCallBacks *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    return v1(*(this + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t BlueFin::GlEngineImplStd::CommonAPIcode(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (**a19)(BlueFin::GlGpsTime *__hidden this), uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, uint64_t __src, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56, int a57, char a58)
{
  STACK[0x508] = *MEMORY[0x29EDCA608];
  if ((*(this + 592) & 1) == 0)
  {
    v58 = this;
    *(this + 592) = 1;
    a18 = 0;
    this = BlueFin::GlEventPump::Run(*(this + 16), &a18 + 1, &a18);
    v59 = *(v58 + 24);
    if (v59)
    {
      v60 = this;
      v61 = (v59 + 157980);
      v62 = v59 + 123784;
      v63 = HIDWORD(a18);
      *(v59 + 159304) = HIDWORD(a18);
      v64 = *(v59 + 159308);
      if (v64 == -1)
      {
        *(v59 + 157984) = 0;
        *(v59 + 157992) = 0;
      }

      else
      {
        v65 = v63 - v64;
        *(v59 + 157992) += v65;
        if (v65 <= *(v59 + 157984))
        {
          v65 = *(v59 + 157984);
        }

        *(v59 + 157984) = v65;
      }

      v66 = a18;
      if (v63 != -1)
      {
        v67 = a18 - v63;
        *(v59 + 157988) += v67;
        if (v67 <= *v61)
        {
          v67 = *v61;
        }

        *v61 = v67;
      }

      *(v59 + 159308) = v66;
      v68 = *v62 + 7201002;
      if (v68 >= 0x3E8)
      {
        v69 = *(*(v58 + 8) + 34) & 1;
      }

      else
      {
        v69 = 1;
      }

      if (*(v58 + 33))
      {
        v60 = 0;
        *(v58 + 33) = 1;
      }

      else
      {
        v70 = *(v59 + 123984);
        v71 = *(v59 + 126252);
        *(v58 + 33) = v70 & ~v69 & 1;
        if (v70 & ~v69)
        {
          v60 = 0;
        }

        else
        {
          v73 = v70 & v69;
          if ((v71 | v70 & v69))
          {
            v74 = *(v58 + 8);
            if (!v74)
            {
              DeviceFaultNotify("glengine_std.cpp", 384, "ReloadComponents", "m_ptGlSettingsImpl != nullptr");
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glengine_std.cpp", 384, "m_ptGlSettingsImpl != nullptr");
            }

            v75 = *(v74 + 32);
            v76 = *(v62 + 2469);
            if (v68 >= 0x3E8)
            {
              v77 = 78;
            }

            else
            {
              v77 = 89;
            }

            if (v76)
            {
              v78 = 89;
            }

            else
            {
              v78 = 78;
            }

            v189 = v78;
            if (v71)
            {
              v79 = 89;
            }

            else
            {
              v79 = 78;
            }

            if (v70)
            {
              v80 = 89;
            }

            else
            {
              v80 = 78;
            }

            v188 = v79;
            if ((v75 & 0x10000) != 0)
            {
              v81 = 89;
            }

            else
            {
              v81 = 78;
            }

            if ((v75 & 0x4000) != 0)
            {
              v82 = 89;
            }

            else
            {
              v82 = 78;
            }

            GlCustomLog(14, "ReloadComponents() PSF={DERATE_TIME:%c  RECOVER_JOBS:%c}  Reset:%c  Restart:%c  CloseCom:%c  Abort:%c  LmsRollover:%c\n", v82, v81, v80, v188, v189, 78, v77);
            v83 = *(v58 + 440);
            v84 = (*(v58 + 432))(31680);
            v85 = v84;
            if (!v84)
            {
              DeviceFaultNotify("glmemalloc.h", 74, "GlStackAlloc", "m_ptr != nullptr");
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmemalloc.h", 74, "m_ptr != nullptr");
            }

            v191 = v83;
            v86 = *(v58 + 24);
            *v84 = 0;
            *(v84 + 8) = 0;
            v194 = v84 + 16;
            bzero((v84 + 16), 0x362uLL);
            BlueFin::GlPePendingBag::GlPePendingBag((v85 + 896));
            v87 = (v85 + 21188);
            v88 = (v86 + 136408);
            *(v85 + 5280) = 0;
            v190 = (v85 + 5288);
            *(v85 + 5288) = 0;
            *(v85 + 5296) = -1;
            *(v85 + 5304) = xmmword_298A3BA20;
            *(v85 + 5320) = 0;
            *(v85 + 5344) = 0;
            v89 = (v85 + 5352);
            v90 = 15840;
            do
            {
              *(v89 - 2) = 112;
              *v89 = 0uLL;
              v89[1] = 0uLL;
              v89[2] = 0uLL;
              v89[3] = 0uLL;
              *(v89 + 60) = 0uLL;
              v89 += 5;
              v90 -= 80;
            }

            while (v90);
            *v87 = 0;
            *(v85 + 22368) = v85 + 21216;
            v193 = v85 + 5348;
            bzero((v85 + 5348), 0x3DE0uLL);
            bzero((v85 + 21216), 0x480uLL);
            *(v85 + 22768) = 0u;
            *(v85 + 22752) = 0u;
            *(v85 + 22736) = 0u;
            *(v85 + 22720) = 0u;
            *(v85 + 22704) = 0u;
            *(v85 + 22688) = 0u;
            *(v85 + 22672) = 0u;
            *(v85 + 22656) = 0u;
            *(v85 + 22640) = 0u;
            *(v85 + 22624) = 0u;
            *(v85 + 22608) = 0u;
            *(v85 + 22592) = 0u;
            *(v85 + 22576) = 0u;
            *(v85 + 22560) = 0u;
            *(v85 + 22544) = 0u;
            *(v85 + 22528) = 0u;
            *(v85 + 22512) = 0u;
            *(v85 + 22496) = 0u;
            *(v85 + 22480) = 0u;
            *(v85 + 22464) = 0u;
            *(v85 + 22448) = 0u;
            *(v85 + 22432) = 0u;
            *(v85 + 22416) = 0u;
            *(v85 + 22400) = 0u;
            BlueFin::GlSatAidInfo::GlSatAidInfo(v85 + 22784);
            *(v85 + 31616) = v85 + 31628;
            *(v85 + 31624) = 8;
            *(v85 + 31628) = 0u;
            *(v85 + 31644) = 0u;
            *(v85 + 880) = *(v86 + 140258);
            *(v85 + 8) = 0;
            v91 = v85 + 592;
            do
            {
              v92 = BlueFin::GlPeReqBag::PopRequest((v86 + 137024));
              v93 = v92;
              if (!v92)
              {
                break;
              }

              v94 = *(v85 + 8);
              *(v194 + 8 * v94) = v92;
              v95 = *(BlueFin::GlUtils::m_pInstance + 1092) - *(v92 + 28);
              *(v91 + 4 * v94) = v95;
              GlCustomLog(14, "GlEngineImplStd::RecoverAllJobs: ActiveReq Id:%2hu  Type:%2u  ElapsedTime(ms):%u\n", *(v92 + 24), *(v92 + 16), v95);
              v96 = ++*(v85 + 8);
              *v85 |= 1 << *(v93 + 16);
            }

            while (v96 < 0x48);
            BlueFin::GlPePendingBag::operator=(v85 + 896, v86 + 132640);
            v192 = v73;
            if (*(v86 + 180968) == 1)
            {
              v97 = *(v86 + 180928);
              a28 = *(v86 + 180944);
              a29 = *(v86 + 180960);
              v98 = a29;
              v99 = *(v86 + 180880);
              a23 = *(v86 + 180864);
              a24 = v99;
              v101 = *(v86 + 180896);
              a26 = *(v86 + 180912);
              v100 = a26;
              a27 = v97;
              a25 = v101;
              v102 = *(v86 + 180848);
              a21 = *(v86 + 180832);
              a22 = v102;
              *(v85 + 5248) |= 0x10000u;
              *(v85 + 4544) = v102;
              *(v85 + 4608) = v100;
              v103 = a23;
              v104 = a24;
              *(v85 + 4528) = a21;
              *(v85 + 4592) = a25;
              *(v85 + 4576) = v104;
              *(v85 + 4560) = v103;
              *(v85 + 4656) = v98;
              *(v85 + 4640) = a28;
              *(v85 + 4624) = a27;
              *(v85 + 4520) = 1;
            }

            v105 = *v88;
            if (v105 >= 1)
            {
              v106 = v86 + 136416;
              do
              {
                v107 = v105 - 1;
                *v88 = v107;
                v108 = *(v106 + 8 * v107);
                *(v106 + 8 * v107) = 0;
                GlCustomLog(14, "GlEngineImplStd::RecoverAllJobs: PendingReq Id:%2hu  Type:%2u\n", *(v108 + 24), *(v108 + 16));
                *v85 |= 1 << *(v108 + 16);
                v105 = *v88;
              }

              while (v105 > 0);
            }

            v109 = *(v86 + 124816);
            if (v109 == -1)
            {
              v113 = 0;
              v111 = v85 + 4520;
              v112 = v192;
            }

            else
            {
              v110 = *(v86 + 124832);
              v111 = v85 + 4520;
              v112 = v192;
              if (v110 == 4294967300.0)
              {
                v113 = 0;
              }

              else
              {
                if ((v86 + 124808) != v190)
                {
                  *(v85 + 5288) = *(v86 + 124808);
                  *(v85 + 5296) = v109;
                  *(v85 + 5304) = *(v86 + 124824);
                  *(v85 + 5312) = v110;
                }

                *(v85 + 5320) = *(v86 + 124800);
                v113 = 1;
              }
            }

            *(v111 + 760) = v113;
            *(v111 + 824) = 0;
            BlueFin::GlGnssSetIterator::GlGnssSetIterator(&__src, (v85 + 992));
            v114 = a55;
            for (i = a56; a55 != 6 || a56 != 14; i = a56)
            {
              a57 = v114;
              a58 = i;
              LODWORD(a19) = v114;
              BYTE4(a19) = i;
              Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((v86 + 608), v114);
              if (Mgr)
              {
                v117 = (*(*Mgr + 112))(Mgr, &a19 + 4, 1);
                if (v117)
                {
                  if ((v117[8] & 0xF) == 1)
                  {
                    v118 = *(v111 + 824);
                    *(v111 + 824) = v118 + 1;
                    (*(*v117 + 264))(v117, v193 + 80 * v118);
                    if (*(v111 + 824) == 198)
                    {
                      break;
                    }
                  }
                }
              }

              BlueFin::GlGnssSetIterator::operator++(&__src);
              v114 = a55;
            }

            v120 = (*(v85 + 1160) + 8);
            v121 = 7;
            do
            {
              v122 = *(v120 - 1);
              v123 = *v120;
              v120 += 24;
              bzero(v122, ((4 * v123 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
              --v121;
            }

            while (v121);
            *v87 = 0;
            LOBYTE(__src) = *(v85 + 1336);
            v124 = *(v85 + 1328);
            v125 = 4 * __src;
            memcpy(&a32, v124, v125);
            WORD1(__src) = 0;
            BYTE1(__src) = 0;
            HIDWORD(__src) = a32;
            BlueFin::GlSetIterator::operator++(&__src);
            if (BYTE1(__src) != __src)
            {
              do
              {
                if (BlueFin::GlPeAlmMgr::GetAsstAlm(v86 + 34336, 0, (BYTE2(__src) + 1), (*(v85 + 22368) + 36 * *v87)))
                {
                  ++*v87;
                }

                BlueFin::GlSetIterator::operator++(&__src);
              }

              while (BYTE1(__src) != __src);
              v124 = *(v85 + 1328);
              v125 = 4 * *(v85 + 1336);
            }

            bzero(v124, ((v125 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
            BlueFin::GlPeReqBag::GetPreviousPositionBuffer((v86 + 137024), (v85 + 22400), 380, (v85 + 22780));
            *(v85 + 31664) = 0;
            if (*(v86 + 273552) < 10.0)
            {
              BlueFin::GlSatAidInfo::operator=(v85 + 22784, v86 + 273536);
              BlueFin::GlSetBase::operator=(v85 + 31616, v86 + 283624);
              v128 = *(v86 + 283652);
              *(v85 + 31628) = *(v86 + 283636);
              *(v85 + 31644) = v128;
              *(v85 + 31664) = 1;
            }

            if (v112)
            {
              v129 = *(*(v58 + 24) + 123784) + 7201002;
              v130 = v129 >= 0x3E8;
              if (v129 >= 0x3E8)
              {
                v131 = "Abnormal";
              }

              else
              {
                v131 = "Normal";
              }

              v132 = "Time is bad";
              if (!v130)
              {
                v132 = "LMS Rollover";
              }

              v133 = 78;
              if (*(v111 + 760))
              {
                v133 = 89;
              }

              GlCustomLog(10, "%s GlEngine restart. %s. Restarting.  RecoveryTimeValid:%c\n", v131, v132, v133);
            }

            v134 = *v85;
            BlueFin::GlEngineImplStd::DisposeComponents(v58, (*v85 == 0), v126, v127);
            BlueFin::GlEngineImplStd::setOnChipMeSetting(v58, v85, 0);
            if (v134)
            {
              if (BlueFin::GlEngineImplStd::LoadComponents(v58, 0))
              {
                v135 = *(v58 + 24);
                *(v135 + 140258) = *(v85 + 880);
                *(v135 + 180714) = 1;
                if (*(v85 + 8))
                {
                  v136 = 0;
                  do
                  {
                    v137 = (v91 + 8 * v136 - 576);
                    (*(**v137 + 464))(*v137, *(v91 + 4 * v136) > 0x3E8u);
                    __src = *v137;
                    BlueFin::GlPosEng::StartRequest(*(v58 + 24), &__src);
                    ++v136;
                  }

                  while (v136 < *(v85 + 8));
                }

                v138 = *(v85 + 4664);
                if (v138 >= 1)
                {
                  v139 = v85 + 4672;
                  do
                  {
                    LOWORD(v138) = v138 - 1;
                    *(v85 + 4664) = v138;
                    v140 = *(v139 + 8 * v138);
                    *(v139 + 8 * v138) = 0;
                    if (v140)
                    {
                      __src = v140;
                      BlueFin::GlPosEng::StartRequest(*(v58 + 24), &__src);
                      LOWORD(v138) = *(v85 + 4664);
                    }
                  }

                  while (v138 > 0);
                }

                BlueFin::GlPeReqBag::SetPreviousPositionBuffer((*(v58 + 24) + 137024), (v85 + 22400), 380, *(v85 + 22780));
                v141 = *(v58 + 24);
                *(v141 + 180714) = 0;
                BlueFin::GlReqSm::SetPendingBag((v141 + 126144), (v85 + 896));
                for (j = 0; j != 7; ++j)
                {
                  v143 = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(v58 + 24) + 608), j);
                  if (v143)
                  {
                    (*(*v143 + 224))(v143, v193, *(v111 + 824), 1);
                  }
                }

                if (*v87)
                {
                  v144 = 0;
                  v145 = 0;
                  do
                  {
                    BlueFin::GlReqSm::SetAsstAlm(*(v58 + 24) + 126144, (*(v85 + 22368) + v144));
                    ++v145;
                    v144 += 36;
                  }

                  while (v145 < *v87);
                }

                if ((v192 & 1) != 0 && *(v111 + 760) == 1)
                {
                  v146 = *(BlueFin::GlUtils::m_pInstance + 1092);
                  *&a21 = &off_2A1F0B5F0;
                  *(&a21 + 1) = 0;
                  BlueFin::GlPeGnssTime::GetGps(v190, &a21);
                  *v147.i64 = BlueFin::GlPeGnssTime::GetUncUs(v190, 0);
                  *v149.i64 = *v147.i64 + trunc(*v147.i64 * 2.32830644e-10) * -4294967300.0;
                  v150.f64[0] = NAN;
                  v150.f64[1] = NAN;
                  v151 = vnegq_f64(v150);
                  v152 = vbslq_s8(v151, v149, v147);
                  if (*v147.i64 > 4294967300.0)
                  {
                    v147.i64[0] = v152.i64[0];
                  }

                  if (*v147.i64 < -4294967300.0)
                  {
                    *v148.i64 = -*v147.i64;
                    *v147.i64 = -(*v147.i64 - trunc(*v147.i64 * -2.32830644e-10) * -4294967300.0);
                    v147 = vbslq_s8(v151, v147, v148);
                    *v147.i64 = -*v147.i64;
                  }

                  v153 = -*v147.i64;
                  v154 = *v147.i64;
                  v156 = *v147.i64 < 0.0;
                  *v147.i64 = (v146 - *(v85 + 5320));
                  if (v156)
                  {
                    v155 = -v153;
                  }

                  else
                  {
                    v155 = v154;
                  }

                  *v152.i64 = *v147.i64 * 0.001;
                  a20 = *(&a21 + 1);
                  a19 = &off_2A1F0B5F0;
                  *v147.i64 = *v147.i64 * 0.001 - trunc(*v147.i64 * 0.001);
                  v147.i64[0] = vbslq_s8(v151, v147, v152).i64[0];
                  v156 = *v147.i64 >= 0.0 && *v147.i64 < 1.0;
                  if (!v156)
                  {
                    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
                    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
                  }

                  v157 = *v147.i64 * 4294967300.0 + 0.5;
                  v158 = v157;
                  v195 = *v152.i64;
                  v159 = HIDWORD(a21) + *v152.i64;
                  if (v157 >= 4294967300.0)
                  {
                    v158 = 0xFFFFFFFFLL;
                  }

                  v160 = v158 + DWORD2(a21);
                  LODWORD(a20) = v158 + DWORD2(a21);
                  HIDWORD(a20) = v159 + HIDWORD(v160);
                  GlCustomLog(14, "TimeRecovery(%u): GlEngineImplStd::ReloadComponents:  OsTime:%u  Lms:%.0lf  GpsWeek:%d  GpsTow:%.6lf\n", *(*(v58 + 24) + 123784), v146, *(v111 + 784), (v159 + HIDWORD(v160)) / 0x93A80, v160 * 2.32830644e-10 + ((v159 + HIDWORD(v160)) % 0x93A80));
                  BYTE6(__src) = 0;
                  v164 = (a19[4])(&a19);
                  LODWORD(v163) = a20;
                  *v164.i64 = (v163 * 2.32830644e-10 + (v162 % 0x93A80)) * 1000.0;
                  *v165.i64 = *v164.i64 + trunc(*v164.i64 * 2.32830644e-10) * -4294967300.0;
                  v166.f64[0] = NAN;
                  v166.f64[1] = NAN;
                  v167 = vnegq_f64(v166);
                  *&v168 = vbslq_s8(v167, v165, v164).u64[0];
                  if (*v164.i64 > 4294967300.0)
                  {
                    *v164.i64 = v168;
                  }

                  if (*v164.i64 < -4294967300.0)
                  {
                    *v161.i64 = -*v164.i64;
                    *v164.i64 = -(*v164.i64 - trunc(*v164.i64 * -2.32830644e-10) * -4294967300.0);
                    *v164.i64 = -*vbslq_s8(v167, v164, v161).i64;
                  }

                  if (*v164.i64 < 0.0)
                  {
                    v169 = --*v164.i64;
                  }

                  else
                  {
                    v169 = *v164.i64;
                  }

                  LODWORD(__src) = v169;
                  v170 = (a19[4])(&a19) / 0x93A80;
                  WORD2(__src) = v170;
                  if (v155 <= 0x30D40)
                  {
                    v171 = 200000;
                  }

                  else
                  {
                    v171 = v155;
                  }

                  if (*(v85 + 5296))
                  {
                    v172 = v171 + 5000000;
                  }

                  else
                  {
                    v172 = v171;
                  }

                  v173 = (*(a21 + 32))(&a21);
                  v174 = (*(a21 + 32))(&a21);
                  LODWORD(v175) = DWORD2(a21);
                  GlCustomLog(10, "Abnormal restart recover time [%d %.0f] + %.0f = [%hu %u]\n", v173 / 0x93A80, (v175 * 2.32830644e-10 + (v174 % 0x93A80)) * 1000.0, v195 * 1000.0, v170, v169);
                  v176 = *(v58 + 24);
                  if ((((v172 + 999) * 0x4189374BC6A7F0uLL) >> 64) <= 1)
                  {
                    v177 = 1;
                  }

                  else
                  {
                    v177 = ((v172 + 999) * 0x4189374BC6A7F0uLL) >> 64;
                  }

                  *(v176 + 350216) = 1;
                  BlueFin::GlReqSm::SetAsstTime(v176 + 126144, &__src, v177);
                }
              }

              else
              {
                if (*(v85 + 8))
                {
                  v178 = 0;
                  do
                  {
                    v179 = *(v194 + 8 * v178);
                    v180 = *(v179 + 56);
                    if (v180)
                    {
                      v180();
                      v179 = *(v194 + 8 * v178);
                    }

                    BlueFin::GlRequestBase::Destroy(v179);
                    ++v178;
                  }

                  while (v178 < *(v85 + 8));
                }

                v181 = v85 + 4672;
                while (1)
                {
                  v182 = *(v85 + 4664);
                  v183 = __OFSUB__(v182, 1);
                  v184 = v182 - 1;
                  if (v184 < 0 != v183)
                  {
                    break;
                  }

                  *(v85 + 4664) = v184;
                  v185 = *(v181 + 8 * v184);
                  *(v181 + 8 * v184) = 0;
                  v186 = *(v185 + 56);
                  if (v186)
                  {
                    v186(v185);
                  }

                  BlueFin::GlRequestBase::Destroy(v185);
                }
              }
            }

            v191(v85);
            if (*(v58 + 32) == 1)
            {
              v60 = BlueFin::GlEventPump::Run(*(v58 + 16), &a18 + 1, &a18);
            }

            else
            {
              v60 = 100000000;
            }
          }

          else if (*(v58 + 560) == 1 && *(v59 + 126253) == 1 && (*(*(v58 + 8) + 25964) & 1) == 0)
          {
            v187 = *(v58 + 344);
            if (v187)
            {
              v187(*(v58 + 272), 0);
              *(v58 + 560) = 0;
            }
          }

          else if (*(v59 + 180178) == 1)
          {
            BlueFin::GlPeReqBag::GetNonInstantaneousRequests(&a21, (v59 + 137024));
            BlueFin::GlPePendingBag::GetNonInstantaneousRequests(&a19, (*(v58 + 24) + 132640));
            LODWORD(__src) = a19 | a21;
            BlueFin::GlEngineImplStd::setOnChipMeSetting(v58, &__src, 0);
            v72 = *(v58 + 24);
            *(v72 + 180178) = 0;
            goto LABEL_20;
          }
        }
      }

      v72 = *(v58 + 24);
      if (!v72)
      {
LABEL_21:
        this = BlueFin::GlPeTimerMgr::UpdateExpirationTime(v58 + 600, v60, v72 & 1);
        *(v58 + 592) = 0;
        return this;
      }

LABEL_20:
      LOBYTE(v72) = *(v72 + 179704);
      goto LABEL_21;
    }
  }

  return this;
}

void *BlueFin::GlMemAlloc::glAllocateMemory(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a1;
  if (!a3 || (v4 = a2, (v5 = a3(a2)) == 0))
  {
    if (BlueFin::GlUtils::m_pInstance)
    {
      GlCustomLog(12, "OOM(%d)\n", v3);
    }

    DeviceFaultNotify("glmem_alloc.cpp", 80, "glAllocateMemory", "ptr != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmem_alloc.cpp", 80, "ptr != nullptr");
  }

  return memset(v5, 165, v4);
}

uint64_t BlueFin::GlRequestImplGnssMeasData::Create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if (!a1)
  {
    DeviceFaultNotify("glrequest.cpp", 1231, "Create", "pvBuffer != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glrequest.cpp", 1231, "pvBuffer != nullptr");
  }

  return BlueFin::GlRequestImplGnssMeasData::GlRequestImplGnssMeasData(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t BlueFin::GlRequestImplGnssMeasData::GlRequestImplGnssMeasData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v10 = a9;
  *(a1 + 16) = 15;
  *(a1 + 20) = 1;
  *(a1 + 22) = -1;
  *(a1 + 28) = -1;
  *(a1 + 36) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = a3;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = a4;
  *a1 = &unk_2A1F168B0;
  *(a1 + 8) = a2;
  *(a1 + 88) = a5;
  *(a1 + 96) = a6;
  *(a1 + 104) = a7;
  *(a1 + 112) = a8;
  *(a1 + 120) = a9;
  if (a8)
  {
    GlCustomLog(14, "FireIQ dump feature enabled in GLL\n");
    v10 = *(a1 + 120);
  }

  if (v10 > 0x15F90)
  {
    *(a1 + 120) = 90000;
  }

  return a1;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgRequest::SetOnStop(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = a2;
  v3 = *(a1 + 8);
  if (v3)
  {
    BlueFin::GlDbgCodec::WriteStart(v3, 3080);
    v4 = *(a1 + 8);
    v9 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v4, &v9);
    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  (*(**(a1 + 24) + 72))(*(a1 + 24), BlueFin::GlDbgProxyGlReqOnStop);
  result = *(a1 + 8);
  if (result)
  {
    BlueFin::GlDbgCodec::WriteFinal(result, 3080);
    v6 = *(a1 + 8);
    v8 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v6, &v8);
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgRequest::SetOnNmea(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  v4 = *(a1 + 8);
  if (v4)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 3077);
    v5 = *(a1 + 8);
    v13 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v5, &v13);
    v12 = a2 != 0;
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v12);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  if (a2)
  {
    v7 = BlueFin::GlDbgProxyGlReqOnNmea;
  }

  else
  {
    v7 = 0;
  }

  (*(**(a1 + 24) + 16))(*(a1 + 24), v7);
  result = *(a1 + 8);
  if (result)
  {
    BlueFin::GlDbgCodec::WriteFinal(result, 3077);
    v9 = *(a1 + 8);
    v11 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v9, &v11);
    v10 = *(**(a1 + 8) + 32);

    return v10();
  }

  return result;
}

void FireMessageHandler::startRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a2;
  v7 = &v6;
  if (std::__hash_table<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::__unordered_map_hasher<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::hash<FireMessageHandler::Request>,std::equal_to<FireMessageHandler::Request>,true>,std::__unordered_map_equal<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::equal_to<FireMessageHandler::Request>,std::hash<FireMessageHandler::Request>,true>,std::allocator<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>>>::find<FireMessageHandler::Request>((a1 + 1304), a2))
  {
    std::__hash_table<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::__unordered_map_hasher<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::hash<FireMessageHandler::Request>,std::equal_to<FireMessageHandler::Request>,true>,std::__unordered_map_equal<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::equal_to<FireMessageHandler::Request>,std::hash<FireMessageHandler::Request>,true>,std::allocator<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>>>::__emplace_unique_key_args<FireMessageHandler::Request,std::piecewise_construct_t const&,std::tuple<FireMessageHandler::Request const&>,std::tuple<>>((a1 + 1304), v4, &v7);
    FireDeviceLog::DeviceLogBase(2, "#fmh,startRequest,%p,%d,alreadyExist");
  }

  else
  {
    std::__hash_table<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::__unordered_map_hasher<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::hash<FireMessageHandler::Request>,std::equal_to<FireMessageHandler::Request>,true>,std::__unordered_map_equal<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::equal_to<FireMessageHandler::Request>,std::hash<FireMessageHandler::Request>,true>,std::allocator<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>>>::__emplace_unique_key_args<FireMessageHandler::Request,std::piecewise_construct_t const&,std::tuple<FireMessageHandler::Request const&>,std::tuple<>>((a1 + 1304), v4, &v7)[3] = a3;
    (*(**(a1 + 1296) + 248))(*(a1 + 1296), a3);
    FireDeviceLog::DeviceLogBase(6, "fmh,StartRequest,request,%p,%d,size,%zu");
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::__unordered_map_hasher<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::hash<FireMessageHandler::Request>,std::equal_to<FireMessageHandler::Request>,true>,std::__unordered_map_equal<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::equal_to<FireMessageHandler::Request>,std::hash<FireMessageHandler::Request>,true>,std::allocator<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>>>::__emplace_unique_key_args<FireMessageHandler::Request,std::piecewise_construct_t const&,std::tuple<FireMessageHandler::Request const&>,std::tuple<>>(float *a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::__unordered_map_hasher<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::hash<FireMessageHandler::Request>,std::equal_to<FireMessageHandler::Request>,true>,std::__unordered_map_equal<FireMessageHandler::Request,std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>,std::equal_to<FireMessageHandler::Request>,std::hash<FireMessageHandler::Request>,true>,std::allocator<std::__hash_value_type<FireMessageHandler::Request,BlueFin::GlRequest *>>>::find<FireMessageHandler::Request>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::WriteDbgMetaData(BlueFin::GlDbgProxy *this, _BOOL4 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, char a52, int a53, char a54, uint64_t a55, uint64_t a56, char a57)
{
  STACK[0x548] = *MEMORY[0x29EDCA608];
  v83[7] = a2;
  BlueFin::GlDbgCodec::WriteStart(this, 5121);
  if ((*(*this + 120))(this))
  {
    BlueFin::GlDbgCodec::Write(this, this + 1643);
  }

  BlueFin::GlDbgCodec::Write(this, &BlueFin::GlVersion::ulChangeList);
  v59 = 0;
  v60 = "11561015,10000000,00000000,00000000,00000080";
  do
  {
    v61 = 0;
    v62 = v60;
    v63 = 32;
    do
    {
      v65 = *v62++;
      v64 = v65;
      if (v65 >= 58)
      {
        v66 = -55;
      }

      else
      {
        v66 = -48;
      }

      v63 -= 4;
      v61 |= (v66 + v64) << v63;
    }

    while (v63);
    a27 = v61;
    BlueFin::GlDbgCodec::Write(this, &a27);
    ++v59;
    v60 += 9;
  }

  while (v59 != 5);
  v67 = (*(*(this + 122) + 704))(this + 976);
  if (!v67)
  {
    DeviceFaultNotify("gldebug_proxy.cpp", 7350, "WriteDbgMetaData", "eEngineType != GL_ENGINE_TYPE_UNSET");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_proxy.cpp", 7350, "eEngineType != GL_ENGINE_TYPE_UNSET");
  }

  v68 = "unset";
  if (v67 == 2)
  {
    v68 = "hairtail";
  }

  if (v67 == 1)
  {
    v69 = "sardine";
  }

  else
  {
    v69 = v68;
  }

  *v83 = strlen(v69);
  BlueFin::GlDbgCodec::WriteArray(this, v69, v83);
  if ((*(*this + 120))(this))
  {
    BlueFin::GlDbgCodec::Write(this, &v83[7]);
  }

  if (a2)
  {
    v70 = 0;
    STACK[0x518] = &a57;
    do
    {
      v71 = STACK[0x518] + v70;
      *(v71 + 12) = 0;
      *v71 = v71 + 12;
      *(v71 + 8) = 2;
      v70 += 24;
    }

    while (v70 != 168);
    for (i = 0; i != 168; i += 24)
    {
      v73 = &v84 + i;
      *(&v86 + i + 4) = 0;
      *v73 = &v86 + i + 4;
      v73[8] = 2;
    }

    for (j = 0; j != 7; ++j)
    {
      BlueFin::GlGnssSet::SetAll(&v84, j);
    }

    BlueFin::GlGnssSetIterator::GlGnssSetIterator(&a27, &v84);
    while (a51 != 6 || a52 != 14)
    {
      a53 = a51;
      a54 = a52;
      v84 = a51;
      v85 = a52;
      if (BlueFin::GlPeAlmMgr::GetDefaultAlm(&v84))
      {
        a53 = a51;
        a54 = a52;
        v84 = a51;
        v85 = a52;
        BlueFin::GlGnssSet::Add(&a57, &v84);
      }

      BlueFin::GlGnssSetIterator::operator++(&a27);
    }

    v76 = 0;
    v77 = STACK[0x518];
    v78 = 7;
    do
    {
      v76 += BlueFin::GlSetBase::Cnt(v77);
      v77 = (v77 + 24);
      --v78;
    }

    while (v78);
    v82[3] = v76;
    if ((*(*this + 120))(this))
    {
      BlueFin::GlDbgCodec::Write(this, &v82[3]);
    }

    BlueFin::GlGnssSetIterator::GlGnssSetIterator(&a27, &a57);
    while (a51 != 6 || a52 != 14)
    {
      a53 = a51;
      a54 = a52;
      v84 = a51;
      v85 = a52;
      DefaultAlm = BlueFin::GlPeAlmMgr::GetDefaultAlm(&v84);
      if (DefaultAlm)
      {
        a53 = a51;
        a54 = a52;
        v84 = -65536;
        v86 = 0;
        var8 = 0u;
        *&_2F8 = 0;
        LODWORD(v87) = 0;
        v84 = *DefaultAlm;
        v86 = *(DefaultAlm + 1);
        LODWORD(v87) = *(DefaultAlm + 4);
        var8 = *(DefaultAlm + 12);
        _2F8 = *(DefaultAlm + 20);
        if ((*(*this + 120))(this))
        {
          *(this + 143) = 2;
          BlueFin::GlDbgCodec::Rvw(this, &v84);
        }
      }

      BlueFin::GlGnssSetIterator::operator++(&a27);
    }
  }

  return (*(*this + 32))(this, 1);
}

BlueFin::GlSetBase *BlueFin::GlSetBase::GlSetBase(BlueFin::GlSetBase *this, unsigned int *__dst, unsigned int a3, const void **a4)
{
  *this = __dst;
  *(this + 8) = a3;
  if (!__dst || !a3)
  {
    DeviceFaultNotify("glutl_set.cpp", 122, "GlSetBase", "m_paulBits != nullptr && m_ucUlongSize >= 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 122, "m_paulBits != nullptr && m_ucUlongSize >= 1");
  }

  v5 = *(a4 + 8);
  if (v5 == a3)
  {
    memcpy(__dst, *a4, 4 * a3);
  }

  else
  {
    if (v5 >= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = *(a4 + 8);
    }

    if (v6)
    {
      v7 = *a4;
      v8 = __dst;
      v9 = v6;
      do
      {
        v10 = *v7++;
        *v8++ = v10;
        --v9;
      }

      while (v9);
    }

    if (v5 < a3)
    {
      bzero(&__dst[v6], 4 * (~v6 + a3) + 4);
    }
  }

  return this;
}

uint64_t BlueFin::GlDbgRequest::Id(BlueFin::GlDbgRequest *this, int a2)
{
  result = 0;
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = this;
  }

  v5 = *(this + 1) + 5928;
  while (v4 != *(v5 + 8 * result))
  {
    if (++result == 73)
    {
      DeviceFaultNotify("gldebug_request.cpp", 76, "Id", "false");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_request.cpp", 76, "false");
    }
  }

  if (a2)
  {
    *(v5 + 8 * result) = this;
  }

  return result;
}

uint64_t BlueFin::GlSetBase::Remove(uint64_t this, int a2)
{
  if (a2 >> 5 >= *(this + 8))
  {
    DeviceFaultNotify("glutl_set.cpp", 592, "Remove", "uiArrayIndex < m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 592, "uiArrayIndex < m_ucUlongSize");
  }

  *(*this + 4 * (a2 >> 5)) &= ~(1 << a2);
  return this;
}

uint64_t BlueFin::GlPeEngineCallBacks::OnTimerSet(uint64_t this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 96);
  if (v3)
  {
    return v3(*(this + 8), a2, 0, a3);
  }

  return this;
}

uint64_t BlueFin::GlDbgProxyGlEngineOnTimerSet(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL8 a4)
{
  v7 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnTimerSet(v7, a2, a3, a4);
}

uint64_t BlueFin::GlDbgProxy::HalGlEngineOnTimerSet(uint64_t this, uint64_t a2, uint64_t a3, _BOOL8 a4)
{
  v12 = a2;
  v11 = a3;
  v10 = a4;
  if (!*(this + 808))
  {
    v7 = this;
    *(this + 580) = 1;
    if (*(this + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteStart(this, 534);
      if ((*(*v7 + 120))(v7))
      {
        BlueFin::GlDbgCodec::Write(v7, &v12);
      }

      if ((*(*v7 + 120))(v7))
      {
        BlueFin::GlDbgCodec::Write(v7, &v11);
      }

      if ((*(*v7 + 120))(v7))
      {
        BlueFin::GlDbgCodec::Write(v7, &v10);
      }

      this = (*(*v7 + 32))(v7, 1);
    }

    v8 = *(v7 + 912);
    if (v8)
    {
      this = v8(v7 + 608, a2, a3, a4);
    }

    *(v7 + 580) = 1;
    if (*(v7 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteFinal(v7, 534);
      v9 = *(*v7 + 32);

      return v9(v7, 1);
    }
  }

  return this;
}

void FireCallback::GlEngineOnTimerSet(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (FireCallback::pInstance)
  {
    v6 = *(FireCallback::pInstance + 472);
    if (v6)
    {
      v11 = a1;
      v10 = a2;
      v9 = a3;
      v8 = a4;
      (*(*v6 + 48))(v6, &v11, &v10, &v9, &v8);
      return;
    }

    v7 = "fcb,fEngineOnTimerSetCb,nullptr";
  }

  else
  {
    v7 = "fcb,GlEngineOnTimerSet,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v7, a3, a4);
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_4,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_4>,void ()(BlueFin::GlEngine *,unsigned int,short,BOOL)>::operator()(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = *a3;
  v4 = *(a1 + 8);
  if (v3 == 100000000)
  {
    if (!FireResourceMgr::fInstance)
    {
      operator new();
    }

    result = (*(**(FireResourceMgr::fInstance + 8) + 32))(*(FireResourceMgr::fInstance + 8), a2);
    *(*(v4 + 936) + 56) = 0x7FEFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = *(v4 + 936);
    v8 = 0;
    FireMessageHandler::Tick::appendCallback(v6, v7, v3);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
  }

  return result;
}

void sub_29879F728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::patch_trigger(unint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v4 = BlueFin::ulglme_qstate_patch_table_size;
  if (!BlueFin::ulglme_qstate_patch_table_size)
  {
    v10 = 0;
    return v10 & 1;
  }

  v5 = BlueFin::glme_qstate_patch_table;
  *a4 = 0;
  v6 = v4 - 1;
  if (v6 < 0)
  {
    goto LABEL_9;
  }

  v7 = 0;
  while (1)
  {
    v8 = (v7 + v6) >> 1;
    v9 = *(v5 + 16 * v8);
    if (v9 >= a1)
    {
      break;
    }

    v7 = v8 + 1;
LABEL_8:
    if (v7 > v6)
    {
      goto LABEL_9;
    }
  }

  if (v9 > a1)
  {
    v6 = v8 - 1;
    goto LABEL_8;
  }

  v12 = *(v5 + 16 * v8 + 8);
  v13 = *(v12 + 1);
  if (!v13)
  {
    goto LABEL_9;
  }

  if (!a3 || (v14 = *a3, v14 == *v12))
  {
LABEL_18:
    v17 = 1;
    *a4 = v13(a2, a3, &v17);
    v10 = v17;
  }

  else
  {
    v15 = v12 + 24;
    while (1)
    {
      v13 = *v15;
      if (!*v15)
      {
        break;
      }

      v16 = *(v15 - 8);
      v15 += 16;
      if (v14 == v16)
      {
        goto LABEL_18;
      }
    }

LABEL_9:
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t BlueFin::GlDbgProxy::HalGlEngineOnTimerRq(BlueFin::GlDbgProxy *this)
{
  if (!*(this + 101))
  {
    *(this + 1642) = (*(this + 113))(this + 608);
    BlueFin::GlDbgCodec::WriteStart(this, 533);
    (*(*this + 32))(this, 0);
    BlueFin::GlDbgCodec::WriteFinal(this, 533);
    if ((*(*this + 120))(this))
    {
      BlueFin::GlDbgCodec::Write(this, this + 1642);
    }

    (*(*this + 32))(this, 1);
  }

  return *(this + 1642);
}

uint64_t FireCallback::GlEngineOnTimerRq(uint64_t a1)
{
  if (FireCallback::pInstance)
  {
    v2 = *(FireCallback::pInstance + 440);
    if (v2)
    {
      v4 = a1;
      return (*(*v2 + 48))(v2, &v4);
    }

    FireDeviceLog::DeviceLogBase(2, "fcb,fEngineOnTimerRqCb,nullptr");
  }

  else
  {
    FireDeviceLog::DeviceLogBase(2, "fcb,GlEngineOnTimerRq,nullptr");
  }

  return 0;
}

uint64_t BlueFin::GlPeTimerMgr::UpdateExpirationTime(uint64_t this, int a2, int a3)
{
  v5 = this;
  if (BlueFin::GlUtils::m_pInstance)
  {
    v6 = *(BlueFin::GlUtils::m_pInstance + 1092);
  }

  else
  {
    this = (*(**this + 56))();
    v6 = this;
  }

  if (*(v5 + 16))
  {
    v7 = *(v5 + 24);
    v8 = v7[7];
    this = (*(*v7 + 184))(v7);
    if (v8 - v6 + this < a2)
    {
      a2 = v8 - v6 + this;
    }
  }

  v9 = a2 + v6;
  if (*(v5 + 8) != 1 || v9 != *(v5 + 12) || *(v5 + 9) != a3)
  {
    *(v5 + 8) = 1;
    *(v5 + 12) = v9;
    if (a2 == 100000000)
    {
      v10 = 1;
    }

    else
    {
      v10 = a3;
    }

    *(v5 + 9) = v10;
    v11 = *(**v5 + 48);

    return v11();
  }

  return this;
}

uint64_t GlCustomLog(uint64_t result, char *__format, ...)
{
  va_start(va, __format);
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(FireDeviceLog::StaticSetting::fInstance + 4);
  if (v2)
  {
    v3 = ((1 << (result & 7)) & v2) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return result;
  }

  v4 = *(FireDeviceLog::StaticSetting::fInstance + 8);
  if (!v4 || ((1 << (result >> 3)) & v4) == 0)
  {
    return result;
  }

  v7 = (result & 7) - 4;
  if (v7 > 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = dword_298A2E0D0[v7];
  }

  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    v15 = result;
    v16 = __cxa_guard_acquire(&_MergedGlobals_0);
    LODWORD(result) = v15;
    if (v16)
    {
      *&byte_2A18BB170[8] = 0;
      *&byte_2A18BB170[16] = 0;
      *byte_2A18BB170 = 0;
      __cxa_atexit(MEMORY[0x29EDC9388], byte_2A18BB170, &dword_29879A000);
      __cxa_guard_release(&_MergedGlobals_0);
      LODWORD(result) = v15;
    }
  }

  v9 = *&byte_2A18BB170[8];
  if (byte_2A18BB170[23] >= 0)
  {
    v9 = byte_2A18BB170[23];
  }

  if (!v9)
  {
    v10 = result >> 3;
    if (result >> 3 > 2)
    {
      if (v10 == 3)
      {
        v11 = 64;
        goto LABEL_29;
      }

      if (v10 == 15)
      {
        v11 = 37;
        goto LABEL_29;
      }

      if (v10 != 29)
      {
        goto LABEL_26;
      }
    }

    else if (v10)
    {
      if (v10 == 1)
      {
        v11 = 35;
        goto LABEL_29;
      }

      if (v10 == 2)
      {
        v11 = 36;
LABEL_29:
        FireDeviceLog::GetLineLeading(v11, v8, __str);
        if (byte_2A18BB170[23] < 0)
        {
          operator delete(*byte_2A18BB170);
        }

        *byte_2A18BB170 = __str[0];
        goto LABEL_32;
      }

LABEL_26:
      v11 = 63;
      goto LABEL_29;
    }

    v11 = 61;
    goto LABEL_29;
  }

LABEL_32:
  v12 = vsnprintf(__str, 0x100uLL, __format, va);
  result = std::string::append(byte_2A18BB170, __str);
  if (v12 >= 255)
  {
    result = std::string::append(byte_2A18BB170, "...");
  }

  if ((byte_2A18BB170[23] & 0x8000000000000000) != 0)
  {
    v14 = *byte_2A18BB170;
    if (*(*byte_2A18BB170 + *&byte_2A18BB170[8] - 1) != 10)
    {
      return result;
    }

    v13 = --*&byte_2A18BB170[8];
  }

  else
  {
    if (*(&_MergedGlobals_0 + byte_2A18BB170[23] + 7) != 10)
    {
      return result;
    }

    v13 = byte_2A18BB170[23] - 1;
    byte_2A18BB170[23] = (byte_2A18BB170[23] - 1) & 0x7F;
    v14 = byte_2A18BB170;
  }

  v14[v13] = 0;
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  result = (*(**(FireResourceMgr::fInstance + 16) + 16))(*(FireResourceMgr::fInstance + 16), v8, byte_2A18BB170);
  if (byte_2A18BB170[23] < 0)
  {
    **byte_2A18BB170 = 0;
    *&byte_2A18BB170[8] = 0;
  }

  else
  {
    byte_2A18BB170[0] = 0;
    byte_2A18BB170[23] = 0;
  }

  return result;
}

void *BlueFin::GlPeGnssEphemerisMgr::GetMgr(void *a1, int a2)
{
  result = 0;
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return a1[872];
      }

      else if (a2 == 2)
      {
        return a1[873];
      }
    }

    else
    {
      return a1 + 1;
    }
  }

  else if (a2 > 4)
  {
    if (a2 == 5)
    {
      return a1[876];
    }

    else if (a2 == 6)
    {
      return a1[877];
    }
  }

  else if (a2 == 3)
  {
    return a1[874];
  }

  else
  {
    return a1[875];
  }

  return result;
}

unsigned __int8 *BlueFin::GlSetIterator::operator++(unsigned __int8 *result)
{
  v1 = *(result + 1);
  v2 = result[1];
  if (v1)
  {
LABEL_6:
    v5 = v1 & -v1;
    *(result + 1) = v5 ^ v1;
    *(result + 1) = 32 * v2 - __clz(v5) + 31;
  }

  else
  {
    v3 = *result;
    while (1)
    {
      v4 = v2 + 1;
      if (v2 + 1 >= v3)
      {
        break;
      }

      v1 = *&result[4 * v2++ + 12];
      if (v1)
      {
        result[1] = v4;
        LOWORD(v2) = v4;
        goto LABEL_6;
      }
    }

    result[1] = v3;
  }

  return result;
}

uint64_t BlueFin::GlSetBase::operator=(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    DeviceFaultNotify("glutl_set.cpp", 555, "operator=", "m_ucUlongSize == otRightOperand.m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 555, "m_ucUlongSize == otRightOperand.m_ucUlongSize");
  }

  if (*(result + 8))
  {
    v3 = *a2;
    v4 = *result;
    do
    {
      v5 = *v3++;
      *v4++ = v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t (*BlueFin::GlMeSrdCtrlSm::my_top(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  if (v3 <= 0x11)
  {
    if (v3 - 2 >= 2)
    {
      if (v3 == 17)
      {
        if (*(a1 + 219))
        {
          if (*(*(a1 + 136) + 2136) == 1)
          {
            (*(**(a1 + 152) + 32))(*(a1 + 152), *(a1 + 3608));
          }

          *(a1 + 2784) = *(a1 + 3608);
          v4 = (a1 + 2600);
          v5 = 43;
          goto LABEL_13;
        }

        DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 1241, "my_top", "me->m_bAsicInitDone");
        v8 = 1241;
        goto LABEL_18;
      }

      return BlueFin::QHsm::top;
    }

    return 0;
  }

  if (v3 == 18)
  {
    if (*(a1 + 219))
    {
      v6 = *(a1 + 3640);
      *(a1 + 3032) = *(a1 + 3632);
      *(a1 + 3040) = v6;
      v4 = (a1 + 2856);
      v5 = 46;
LABEL_13:
      BlueFin::GlQueue::putFIFO(v4, v5, 0);
      return 0;
    }

    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 1233, "my_top", "me->m_bAsicInitDone");
    v8 = 1233;
LABEL_18:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", v8, "me->m_bAsicInitDone");
  }

  if (v3 == 38)
  {
    BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdCtrlSm::com_breakdown, "com_breakdown");
    return 0;
  }

  return BlueFin::QHsm::top;
}

uint64_t (*BlueFin::GlMeSrdMeasTimingMgr::idle(uint64_t a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  if (v2 <= 0x30)
  {
    if (v2 == 2)
    {
      BlueFin::GlQueue::putFIFO((a1 + 40), 49, 0);
    }

    else if (v2 != 3)
    {
      return BlueFin::QHsm::top;
    }

    return 0;
  }

  if (v2 == 49)
  {
    if (*(a1 + 252) == 1)
    {
      *(a1 + 252) = 0;
      if (*(a1 + 260) == *(a1 + 284) && *(a1 + 263) == *(a1 + 286) && *(a1 + 264) == *(a1 + 312))
      {
        return 0;
      }

      *(a1 + 268) = *(a1 + 252);
      *(a1 + 272) = *(a1 + 288);
      *(a1 + 268) = 1;
      v4 = "&GlMeSrdMeasTimingMgr::wait4dutycyle_programming";
      v5 = BlueFin::GlMeSrdMeasTimingMgr::wait4dutycyle_programming;
    }

    else
    {
      if (*(a1 + 240) != 1)
      {
        return 0;
      }

      *(a1 + 240) = 0;
      v6 = *(a1 + 288);
      if (*(a1 + 244) % 0x3E8u != v6 % 0x3E8)
      {
        return 0;
      }

      v7 = *(a1 + 248);
      if (v7 <= -901 && *(a1 + 284) == 1000)
      {
        LOWORD(v7) = v7 + 1000;
        *(a1 + 248) = v7;
      }

      if (v7 < 1)
      {
        if (v7 < -19)
        {
          v8 = 20 * ((v7 - 19) / 20);
          *(a1 + 234) = 20 * ((v7 - 19) / 20);
          LOBYTE(v7) = v7 - v8;
        }

        else
        {
          LOWORD(v8) = 0;
          *(a1 + 234) = 0;
        }

        *(a1 + 236) = v7;
      }

      else
      {
        v8 = 20 * (v7 / 0x14u);
        v7 = v7 % 0x14u;
        *(a1 + 236) = v7;
        *(a1 + 234) = v8;
      }

      *(a1 + 228) = v6;
      *(a1 + 224) = v8 != 0;
      *(a1 + 225) = v7 != 0;
      *(a1 + 308) = v6 + v7 + v8 + *(a1 + 284);
      v4 = "&GlMeSrdMeasTimingMgr::wait4miadjustment_programming";
      v5 = BlueFin::GlMeSrdMeasTimingMgr::wait4miadjustment_programming;
    }

    BlueFin::QHsm::tran(a1, v5, v4);
    return 0;
  }

  if (v2 != 50)
  {
    return BlueFin::QHsm::top;
  }

  v3 = 0;
  *(a1 + 240) = 0;
  return v3;
}

void std::__function::__func<FireMessageHandler::createGlEngine(void)::$_1,std::allocator<FireMessageHandler::createGlEngine(void)::$_1>,void ()(unsigned char *,unsigned long)>::operator()(uint64_t a1, gnss::fire **a2, const unsigned __int8 **a3, char a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a1 + 8);
  v7 = *(v6 + 1356);
  if ((v7 - 1) >= 3)
  {
    gnss::fire::charToHex(&__p, *a2, *a3, 44);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    FireDeviceLog::DeviceLogBase(2, "chipData,outOfSession,state,%d,size,%zu,data,%s", v7, v5, p_p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    FireMessageHandler::ExclusiveEntryCheck::enter((v6 + 1008), 2u);
    if (v5)
    {
      v8 = 0;
      v9 = v5;
      do
      {
        v10 = v9 - 268;
        if (v9 >= 0x10C)
        {
          v11 = 268;
        }

        else
        {
          v11 = v9;
        }

        (*(**(v6 + 1296) + 184))(*(v6 + 1296), v4 + v8, v11);
        v8 += 268;
        v9 = v10;
      }

      while (v8 < v5);
    }

    FireMessageHandler::ExclusiveEntryCheck::exit((v6 + 1008));
  }
}

void sub_2987A0450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BlueFin::GlReqSm::ReceiveChipData(BlueFin::GlReqSm *this, void *a2, int a3)
{
  if (a3 < 0 || (v3 = a3, *(this + 169) + a3 >= 1609))
  {
    DeviceFaultNotify("glreqsm.cpp", 574, "ReceiveChipData", "(sSize >= 0) && (sSize+m_sPendingAsicDataSize <= (GlIntS16)sizeof(m_aucPendingAsicData))");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glreqsm.cpp", 574, "(sSize >= 0) && (sSize+m_sPendingAsicDataSize <= (GlIntS16)sizeof(m_aucPendingAsicData))");
  }

  memcpy(this + *(this + 169) + 340, a2, a3);
  *(this + 169) += v3;
  result = BlueFin::GlQueue::putFIFO((this + 40), 12, 0);
  *(this + 13710) = *(BlueFin::GlUtils::m_pInstance + 1092);
  return result;
}

char *BlueFin::GlDbgCodec::WriteArray(BlueFin::GlDbgCodec *this, char *a2, __int16 *a3)
{
  result = (*(*this + 120))(this);
  if (result)
  {
    if ((*(*this + 120))(this))
    {
      BlueFin::GlDbgCodec::Write(this, a3);
    }

    v7 = *a3;

    return BlueFin::GlDbgCodecBase::Encode(this, a2, v7, 0, 0);
  }

  return result;
}

__int16 *BlueFin::GlReqSm::ProcessChipData(__int16 *this, const char *a2)
{
  v2 = this[169];
  if (v2 >= 268)
  {
    v3 = 268;
  }

  else
  {
    v3 = this[169];
  }

  if (v2 >= 1)
  {
    v4 = this;
    v5 = this + 170;
    this = (*(**(this + 39) + 200))(*(this + 39), this + 170, v3);
    v6 = (v4[169] - v3);
    v4[169] -= v3;
    if (v6 >= 1)
    {
      this = memcpy(v4 + 170, v5 + v3, v6);
    }
  }

  if (*(BlueFin::GlUtils::m_pInstance + 1092) >= *(BlueFin::GlUtils::m_pInstance + 1232))
  {

    return BlueFin::GlUtils::Report("timeout_60s", a2);
  }

  return this;
}

uint64_t BlueFin::patch_dispatch(unint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v6 = BlueFin::ulglme_qstate_patch_table_size - 1;
  if (BlueFin::ulglme_qstate_patch_table_size - 1 < 0)
  {
    v10 = 0;
    return v10 & 1;
  }

  v18 = v4;
  v19 = v5;
  v7 = 0;
  while (1)
  {
    v8 = (v7 + v6) >> 1;
    v9 = *(BlueFin::glme_qstate_patch_table + 16 * v8);
    if (v9 >= a1)
    {
      break;
    }

    v7 = v8 + 1;
LABEL_7:
    if (v7 > v6)
    {
      goto LABEL_8;
    }
  }

  if (v9 > a1)
  {
    v6 = v8 - 1;
    goto LABEL_7;
  }

  v12 = *(BlueFin::glme_qstate_patch_table + 16 * v8 + 8);
  v13 = *(v12 + 1);
  if (!v13)
  {
LABEL_8:
    v10 = 0;
    return v10 & 1;
  }

  v14 = *a3;
  if (v14 != *v12)
  {
    v15 = v12 + 24;
    do
    {
      v13 = *v15;
      if (!*v15)
      {
        goto LABEL_8;
      }

      v16 = *(v15 - 8);
      v15 += 16;
    }

    while (v14 != v16);
  }

  v17 = 1;
  *a4 = v13(a2, a3, &v17);
  v10 = v17;
  return v10 & 1;
}

uint64_t BlueFin::GlActive::UpdateTimers(uint64_t this)
{
  v1 = (this + 96);
  v2 = *(this + 96);
  if (v2)
  {
    v3 = this;
    v4 = *(BlueFin::GlUtils::m_pInstance + 1092);
    do
    {
      v5 = v4 - *(v2 + 5);
      if (v5 < 0)
      {
        v11 = "slDeltaMs >= 0";
        DeviceFaultNotify("glhsm_active.cpp", 78, "UpdateTimers", "slDeltaMs >= 0");
        v12 = 78;
        goto LABEL_20;
      }

      v6 = *(v2 + 4);
      if (v5 - v6 > *(v3 + 104))
      {
        *(v3 + 104) = v5 - v6;
      }

      if (v5 > v6)
      {
        this = BlueFin::GlQueue::putFIFO((v3 + 40), *(v2 + 25), *(v2 + 26));
        if (!this)
        {
          v11 = "myQueue.putFIFO(t->myToutEvt.sig, t->myToutEvt.par)";
          DeviceFaultNotify("glhsm_active.cpp", 86, "UpdateTimers", "myQueue.putFIFO(t->myToutEvt.sig, t->myToutEvt.par)");
          v12 = 86;
          goto LABEL_20;
        }

        v7 = *(v2 + 24);
        if (v7 == 1)
        {
          v8 = v2[1];
          v9 = v1;
          if (v2 != *v1)
          {
            v10 = *v2;
            if (v8)
            {
              *v8 = v10;
            }

            v9 = (v10 + 8);
          }

          *v9 = v8;
          *(v2 + 24) = 0;
        }

        else
        {
          if (v7 != 2)
          {
            v11 = "0";
            DeviceFaultNotify("glhsm_active.cpp", 110, "UpdateTimers", "0");
            v12 = 110;
LABEL_20:
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glhsm_active.cpp", v12, v11);
          }

          *(v2 + 5) += *(v2 + 4);
        }
      }

      v2 = v2[1];
    }

    while (v2);
  }

  return this;
}

uint64_t *BlueFin::GlQueue::get@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 1);
    if (*(this + 21))
    {
      --*(this + 21);
      v4 = this[4];
      v5 = *v4++;
      *this = v5;
      this[4] = v4;
      if (v4 == this[2])
      {
        this[4] = this[1];
      }
    }

    else
    {
      *this = 0;
      *(this + 47) &= ~*(this + 46);
    }

    *a1 = v2;
  }

  else
  {
    *a1 = 0;
    v3 = *(this + 1);
  }

  *(a1 + 1) = v3;
  return this;
}

uint64_t (*BlueFin::GlReqSm::on(BlueFin::GlReqSm *this, const char *a2))()
{
  result = 0;
  v5 = this + 53561;
  v6 = (this + 33184);
  switch(*a2)
  {
    case 2:
    case 0x2A:
      return result;
    case 3:
      if (*v5 == 1)
      {
        (*(**(this + 39) + 280))(*(this + 39), 0, 0, 0, 0, 0, 0, 0);
        *v5 = 0;
        (*(**(this + 4149) + 120))(*(this + 4149), 0);
        GlCustomLog(14, "Burst mode disabled\n");
      }

      return 0;
    case 7:
    case 0xA:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x1A:
    case 0x1C:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x29:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
      GlCustomLog(14, "GlReqSm::Error: Substates of ON didnot handle the event %i\n");
      return 0;
    case 8:
      BlueFin::GlPeReqBag::TerminateRequest(this + 10880, *v6);
      BlueFin::GlPePendingBag::TerminateRequest(this + 6496, *v6);
      GlCustomLog(14, "GlReqSm::Error: Substates of ON didnot handle the event %i causing the ON to Handle StopRequest\n");
      return 0;
    case 9:
      BlueFin::GlPeReqBag::TerminateAll((this + 10880));
      BlueFin::GlPePendingBag::TerminateAll(this + 6496);
      BlueFin::GlTimer::disarm(this + 3948);
      BlueFin::GlPeReqBag::Cleanup(this + 10880);
      GlCustomLog(14, "GlReqSm::Error: Substates of ON didnot handle the event %i causing the ON to Handle Stop All requests\n", *a2);
      BlueFin::QHsm::tran(this, BlueFin::GlReqSm::standby, "&GlReqSm::standby");
      return 0;
    case 0xC:
      BlueFin::GlReqSm::ProcessChipData(this, a2);
      return 0;
    case 0x2D:
      if (BlueFin::GlPePendingBag::HasNILRReq((this + 6496)))
      {
        goto LABEL_27;
      }

      v10 = 0;
      v11 = 1;
      do
      {
        v12 = *(this + v10 + 1360);
        if (v12 && (*(*(v12 + 8) + 16) - 1) < 2)
        {
          break;
        }

        v11 = v10++ < 0x47;
      }

      while (v10 != 72);
      if (v11)
      {
LABEL_27:
        GlCustomLog(13, "GlReqSm::CheckRtiEmergencyActive (LMS:%d): still in NILR session!\n");
        return 0;
      }

      if (*(this + 54680) != 1)
      {
        return 0;
      }

      BlueFin::GlPeRtiRequestor::onRtiExitEmergencySession(*(this + 6854));
      result = 0;
      *(this + 54680) = 0;
      return result;
    case 0x2E:
      if (*(this + 54824) != 1 || (*(this + 54680) & 1) != 0)
      {
        return 0;
      }

      BlueFin::GlPeRtiRequestor::onRtiEnterEmergencySession(*(this + 6854), this + 3418);
      result = 0;
      *(this + 54680) = 1;
      return result;
    case 0x40:
      *(this + 53968) = 1;
      GlCustomLog(14, "MI2: enable timer\n");
      return 0;
    case 0x41:
      GlCustomLog(14, "MI2: check disable timer\n");
      if (!BlueFin::GlPePendingBag::HasPosReq((this + 6496)))
      {
        v7 = 0;
        v8 = 1;
        do
        {
          v9 = *(this + v7 + 1360);
          if (v9 && !*(*(v9 + 8) + 16))
          {
            break;
          }

          v8 = v7++ < 0x47;
        }

        while (v7 != 72);
        if (!v8)
        {
          *(this + 53968) = 0;
          BlueFin::GlTimer::disarm(this + 6741);
          GlCustomLog(14, "MI2: disable timer @Lms: %d\n");
        }
      }

      return 0;
    default:
      return BlueFin::QHsm::top;
  }
}

uint64_t (*(*BlueFin::GlReqSm::host_based_positioning(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlReqSm *this, const char *a2))()
{
  v3 = *a2;
  if (v3 == 3)
  {
    *(*(a1 + 31800) + 4068) &= ~0x20u;
    v7 = *(a1 + 33192);
    v8 = *(v7 + 160);
    if (v8)
    {
      v8(*(v7 + 8));
    }

    BlueFin::GlNvMemImpl::Write(*(a1 + 6336));
    BlueFin::GlPeCntinMgr::StopCntin(*(a1 + 6328));
  }

  else
  {
    result = BlueFin::GlReqSm::on;
    if (v3 != 2)
    {
      return result;
    }

    v5 = *(a1 + 33192);
    v6 = *(v5 + 256);
    if (v6)
    {
      v6(*(v5 + 8), 0, *(a1 + 31800));
    }
  }

  return 0;
}

uint64_t BlueFin::GlMeSrdCtrlSm::SetAsicData(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2, uint64_t a3)
{
  if (*(this + 219) != 1)
  {
    return BlueFin::GlMeSrdAsicinit::SetAsicData(this + 1760, a2, a3);
  }

  v4 = *(this + 15);
  if (!v4)
  {
    v4 = *(this + 14);
  }

  return (**v4)(v4, a2, a3);
}

uint64_t BlueFin::GlActive::GetCurrentTimeoutPeriod(BlueFin::GlActive *this)
{
  v1 = 99999999;
  v2 = *(this + 12);
  if (v2)
  {
    v3 = *(BlueFin::GlUtils::m_pInstance + 1092);
    while (1)
    {
      v4 = *(v2 + 20) + *(v2 + 16);
      if (v4 - v3 <= 0)
      {
        break;
      }

      if (v4 - v3 < v1)
      {
        v1 = v4 - v3;
      }

      v2 = *(v2 + 8);
      if (!v2)
      {
        return v1 + 1;
      }
    }

    v1 = v4 == v3;
  }

  return v1 + 1;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::rRxIfc(BlueFin::GlMeSrdReceiverParameters *this)
{
  result = *(this + 1);
  if (!result)
  {
    v3 = (*(**(this + 2) + 256))(*(this + 2));
    if ((*(**(this + 2) + 264))())
    {
      v4 = 84;
    }

    else
    {
      v4 = 70;
    }

    if (v3)
    {
      v5 = 84;
    }

    else
    {
      v5 = 70;
    }

    GlCustomLog(14, "DEF_4755x:%c DEF_MNW:%c  IsPikeAsicType:%c IsMinnowAsicType:%c\n", 70, 84, v5, v4);
    if ((*(**(this + 2) + 264))())
    {
      if ((*(**(this + 2) + 264))(*(this + 2)))
      {
        *(this + 12) = 5;
        *(this + 3) = &unk_2A1F0C5B8;
        *(this + 4) = this + 48;
        *(this + 7) = &BlueFin::GlMeRxParamMNWImp::m_stSrdRxParamData + 3397;
        *(this + 8) = &unk_29EEACA48;
        *(this + 9) = &BlueFin::GlMeRxParamMNWImp::m_stSrdRxParamData;
        *(this + 10) = &unk_29EEAC510;
        *(this + 11) = &BlueFin::GlMeRxParamMNWImp::m_oEditedConfig;
        *(this + 12) = &unk_29EEAC520;
        *(this + 13) = &unk_29EEACA4C;
        *(this + 14) = &BlueFin::GlMeRxParamMNWImp::m_stSrdRxParamData + 27177;
        *(this + 5) = this + 48;
        *(this + 15) = &BlueFin::GlMeRxParamMNWImp::m_stSrdRxParamData + 28137;
        *(this + 16) = &BlueFin::GlMeRxParamMNWImp::m_stSrdRxParamData + 28138;
        *(this + 1) = this + 24;
        v6 = BlueFin::GlMeRxParamStd::rMap(this + 3);
        v7 = **(this + 4);
        if (v7 >= 6)
        {
          v15 = "etRxType < GLME_RX_NUM_TYPES";
          DeviceFaultNotify("glme_receiver_parameters_ifc.h", 1008, "GetMaxAllowedGearIds", "etRxType < GLME_RX_NUM_TYPES");
          v16 = "glme_receiver_parameters_ifc.h";
          v17 = 1008;
        }

        else if (v7 >= 6)
        {
          v15 = "0";
          DeviceFaultNotify("glme_receiver_parameters_ifc.h", 1024, "GetMaxAllowedGearIds", "0");
          v16 = "glme_receiver_parameters_ifc.h";
          v17 = 1024;
        }

        else if (aFfZ[v7] < **(v6 + 2))
        {
          v15 = "*rMap().m_pucGsNum <= GetMaxAllowedGearIds()";
          DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 788, "CheckTrackIntegrity", "*rMap().m_pucGsNum <= GetMaxAllowedGearIds()");
          v16 = "glmesrd_receiver_parameters.cpp";
          v17 = 788;
        }

        else
        {
          v8 = *(this + 1);
          v9 = BlueFin::GlMeRxParamStd::rMap(v8);
          v10 = BlueFin::GlMeRxParamStd::rMap(v8);
          v11 = *v8[1];
          if (v11 >= 6)
          {
            v15 = "etRxType < GLME_RX_NUM_TYPES";
            DeviceFaultNotify("glme_receiver_parameters_ifc.h", 1080, "GetMaxAllowedBinningSteps", "etRxType < GLME_RX_NUM_TYPES");
            v16 = "glme_receiver_parameters_ifc.h";
            v17 = 1080;
          }

          else if (v11 >= 6)
          {
            v15 = "0";
            DeviceFaultNotify("glme_receiver_parameters_ifc.h", 1096, "GetMaxAllowedBinningSteps", "0");
            v16 = "glme_receiver_parameters_ifc.h";
            v17 = 1096;
          }

          else if (**(v10 + 2) > ((0xA0628A8A9090uLL >> (8 * v11)) & 0x1FE))
          {
            v15 = "*rMap().m_pucGsNum <= GetMaxAllowedBinningSteps()";
            DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 797, "CheckSearchIntegrity", "*rMap().m_pucGsNum <= GetMaxAllowedBinningSteps()");
            v16 = "glmesrd_receiver_parameters.cpp";
            v17 = 797;
          }

          else
          {
            v12 = *(*(v9 + 3) + 16);
            MaxAllowedSrchParamIds = BlueFin::GlMeRxParamLimits::GetMaxAllowedSrchParamIds(v11);
            v14 = *v8[1];
            if (v14 >= 6)
            {
              v15 = "etRxType < GLME_RX_NUM_TYPES";
              DeviceFaultNotify("glme_receiver_parameters_ifc.h", 1032, "GetMaxAllowedSrchMgrs", "etRxType < GLME_RX_NUM_TYPES");
              v16 = "glme_receiver_parameters_ifc.h";
              v17 = 1032;
            }

            else if (v14 >= 6)
            {
              v15 = "0";
              DeviceFaultNotify("glme_receiver_parameters_ifc.h", 1048, "GetMaxAllowedSrchMgrs", "0");
              v16 = "glme_receiver_parameters_ifc.h";
              v17 = 1048;
            }

            else
            {
              if (BlueFin::GlMeRxParamUtl::CheckSearchIntegrity(v12, MaxAllowedSrchParamIds, *(*(v9 + 3) + 24), **(v9 + 1), 9u))
              {
                return *(this + 1);
              }

              v15 = "m_poRxParamImp->CheckSearchIntegrity()";
              DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 91, "rRxIfc", "m_poRxParamImp->CheckSearchIntegrity()");
              v16 = "glmesrd_receiver_parameters.cpp";
              v17 = 91;
            }
          }
        }
      }

      else
      {
        v15 = "0";
        DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 86, "rRxIfc", "0");
        v16 = "glmesrd_receiver_parameters.cpp";
        v17 = 86;
      }
    }

    else
    {
      v15 = "bIsAsicConfigConsistent";
      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 54, "rRxIfc", "bIsAsicConfigConsistent");
      v16 = "glmesrd_receiver_parameters.cpp";
      v17 = 54;
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v16, v17, v15);
  }

  return result;
}

int *BlueFin::GlMeRxParamStd::rMap(int **this)
{
  if (*this[1] >= 6)
  {
    DeviceFaultNotify("glmesrd_receiver_parameters.h", 153, "rMap", "IsValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.h", 153, "IsValid()");
  }

  return this[2];
}

unint64_t BlueFin::GlMeRxParamLimits::GetMaxAllowedSrchParamIds(unsigned int a1)
{
  if (a1 >= 6)
  {
    v2 = "etRxType < GLME_RX_NUM_TYPES";
    DeviceFaultNotify("glme_receiver_parameters_ifc.h", 1056, "GetMaxAllowedSrchParamIds", "etRxType < GLME_RX_NUM_TYPES");
    v3 = 1056;
    goto LABEL_5;
  }

  if (a1 >= 6)
  {
    v2 = "0";
    DeviceFaultNotify("glme_receiver_parameters_ifc.h", 1072, "GetMaxAllowedSrchParamIds", "0");
    v3 = 1072;
LABEL_5:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_receiver_parameters_ifc.h", v3, v2);
  }

  return (0x7E45683E6F59uLL >> (8 * a1)) & 0x7F;
}

__n128 BlueFin::GlPeTimeManager::GetTime@<Q0>(BlueFin::GlPeTimeManager *this@<X0>, int a2@<W1>, __n128 *a3@<X8>)
{
  if (a2 && *(this + 1201) != -7200001)
  {
    a3->n128_u64[0] = *(this + 601);
    a3->n128_u32[2] = *(this + 1204);
    result = *(this + 4824);
    a3[1] = result;
  }

  else
  {
    v3 = *(this + 642);
    v4 = v3;
    if (v3 <= 0xFF9222FE)
    {
      v4 = v3;
    }

    BlueFin::GlPeTimeManager::GetTime(this, v4, a2, a3);
  }

  return result;
}

uint64_t BlueFin::GlSetBase::OperatorBinaryAnd(uint64_t this, int **a2, int **a3)
{
  v3 = *(this + 8);
  v4 = *(a3 + 8);
  if (v3 != v4 || *(a2 + 8) != v4)
  {
    DeviceFaultNotify("glutl_set.cpp", 498, "OperatorBinaryAnd", "m_ucUlongSize == otRightOperand.m_ucUlongSize && otResult.m_ucUlongSize == otRightOperand.m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 498, "m_ucUlongSize == otRightOperand.m_ucUlongSize && otResult.m_ucUlongSize == otRightOperand.m_ucUlongSize");
  }

  if (*(this + 8))
  {
    v6 = *this;
    v7 = *a3;
    v8 = *a2;
    do
    {
      v10 = *v6++;
      v9 = v10;
      v11 = *v7++;
      *v8++ = v11 & v9;
      --v3;
    }

    while (v3);
  }

  return this;
}

void *BlueFin::QHsm::tran(void *a1, uint64_t (*a2)(), uint64_t a3)
{
  v33 = *MEMORY[0x29EDCA608];
  if (a2 == BlueFin::QHsm::top)
  {
    v18 = "target != &QHsm::top";
    DeviceFaultNotify("glhsm_dyn.cpp", 32, "tran", "target != &QHsm::top");
    v19 = 32;
    goto LABEL_85;
  }

  v4 = a2;
  v6 = a1[1];
  v7 = a1[4];
  if (v6 != v7)
  {
    do
    {
      if (!v6)
      {
        v18 = "s != 0";
        DeviceFaultNotify("glhsm_dyn.cpp", 38, "tran", "s != 0");
        v19 = 38;
        goto LABEL_85;
      }

      if (BlueFin::patch_trigger(v6, a1, byte_298A32C8E, &BlueFin::_patched_state))
      {
        v8 = BlueFin::_patched_state;
        if (!BlueFin::_patched_state)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v8 = v6(a1, byte_298A32C8E);
        if (!v8)
        {
LABEL_8:
          if (BlueFin::patch_trigger(v6, a1, BlueFin::__pkgStdEvt, &BlueFin::_patched_state))
          {
            v8 = BlueFin::_patched_state;
          }

          else
          {
            v8 = v6(a1, BlueFin::__pkgStdEvt);
          }
        }
      }

      v7 = a1[4];
      v6 = v8;
    }

    while (v8 != v7);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0;
  v30 = v4;
  if (v7 == v4)
  {
LABEL_33:
    v12 = 8;
    if (BlueFin::patch_trigger(v7, a1, byte_298A32C8E, &BlueFin::_patched_state))
    {
      goto LABEL_59;
    }

    goto LABEL_34;
  }

  if (BlueFin::patch_trigger(v4, a1, BlueFin::__pkgStdEvt, &BlueFin::_patched_state))
  {
    v9 = BlueFin::_patched_state;
  }

  else
  {
    v9 = (v4)(a1, BlueFin::__pkgStdEvt);
  }

  v10 = a1[4];
  if (v10 == v9)
  {
    v12 = 8;
    goto LABEL_59;
  }

  if (BlueFin::patch_trigger(v10, a1, BlueFin::__pkgStdEvt, &BlueFin::_patched_state))
  {
    v11 = BlueFin::_patched_state;
  }

  else
  {
    v11 = (a1[4])(a1, BlueFin::__pkgStdEvt);
  }

  if (v11 == v9)
  {
    v7 = a1[4];
    goto LABEL_33;
  }

  if (v11 == v4)
  {
    v12 = 0;
    if (BlueFin::patch_trigger(a1[4], a1, byte_298A32C8E, &BlueFin::_patched_state))
    {
      goto LABEL_59;
    }

LABEL_34:
    (a1[4])(a1, byte_298A32C8E);
    goto LABEL_59;
  }

  *&v31 = v9;
  if (BlueFin::patch_trigger(v9, a1, BlueFin::__pkgStdEvt, &BlueFin::_patched_state))
  {
    v13 = BlueFin::_patched_state;
    if (BlueFin::_patched_state)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v13 = (v9)(a1, BlueFin::__pkgStdEvt);
    if (v13)
    {
LABEL_25:
      v14 = 24;
      while (a1[4] != v13)
      {
        v9 = v13;
        *(&v29 + v14) = v13;
        if (BlueFin::patch_trigger(v13, a1, BlueFin::__pkgStdEvt, &BlueFin::_patched_state))
        {
          v13 = BlueFin::_patched_state;
        }

        else
        {
          v13 = (v9)(a1, BlueFin::__pkgStdEvt);
        }

        v14 += 8;
        if (!v13)
        {
          v15 = v14 - 8;
          goto LABEL_39;
        }
      }

      v12 = v14 - 8;
      goto LABEL_58;
    }
  }

  v15 = 16;
LABEL_39:
  if ((BlueFin::patch_trigger(a1[4], a1, byte_298A32C8E, &BlueFin::_patched_state) & 1) == 0)
  {
    (a1[4])(a1, byte_298A32C8E);
  }

  if (v9)
  {
    v12 = v15 - 8;
    v16 = v9;
    while (v11 != v16)
    {
      v16 = *(&v29 + v12);
      v12 -= 8;
      if (!v16)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
LABEL_45:
    if (!v11)
    {
LABEL_56:
      v18 = "0";
      DeviceFaultNotify("glhsm_dyn.cpp", 101, "tran", "0");
      v19 = 101;
      goto LABEL_85;
    }

    while (!v9)
    {
LABEL_50:
      if ((BlueFin::patch_trigger(v11, a1, byte_298A32C8E, &BlueFin::_patched_state) & 1) == 0)
      {
        (v11)(a1, byte_298A32C8E);
      }

      if (BlueFin::patch_trigger(v11, a1, BlueFin::__pkgStdEvt, &BlueFin::_patched_state))
      {
        v11 = BlueFin::_patched_state;
        if (!BlueFin::_patched_state)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v11 = (v11)(a1, BlueFin::__pkgStdEvt);
        if (!v11)
        {
          goto LABEL_56;
        }
      }
    }

    v12 = v15 - 8;
    v17 = v9;
    while (v11 != v17)
    {
      v17 = *(&v29 + v12);
      v12 -= 8;
      if (!v17)
      {
        goto LABEL_50;
      }
    }
  }

LABEL_58:
  if (v12 > 47)
  {
    v18 = "e < &entry[_DIM(entry)]";
    DeviceFaultNotify("glhsm_dyn.cpp", 104, "tran", "e < &entry[_DIM(entry)]");
    v19 = 104;
    goto LABEL_85;
  }

LABEL_59:
  v20 = &v29 + v12;
  v21 = *(&v29 + v12);
  if (v21)
  {
    do
    {
      if ((BlueFin::patch_trigger(v21, a1, byte_298A32C8C, &BlueFin::_patched_state) & 1) == 0)
      {
        (*v20)(a1, byte_298A32C8C);
      }

      v22 = *(v20 - 1);
      v20 -= 8;
      v21 = v22;
    }

    while (v22);
  }

  a1[1] = v4;
  v23 = a1[2];
  if (a1[3] != v23)
  {
    a1[3] = v23;
  }

  a1[2] = a3;
  if (!v4)
  {
    v18 = "s";
    DeviceFaultNotify("glhsm_dyn.cpp", 119, "tran", "s");
    v19 = 119;
LABEL_85:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glhsm_dyn.cpp", v19, v18);
  }

  while (BlueFin::patch_trigger(v4, a1, byte_298A32C8A, &BlueFin::_patched_state))
  {
    result = BlueFin::_patched_state;
    if (BlueFin::_patched_state)
    {
      return result;
    }

LABEL_70:
    v25 = a1[1];
    v30 = v25;
    if (BlueFin::patch_trigger(v25, a1, BlueFin::__pkgStdEvt, &BlueFin::_patched_state))
    {
      v26 = BlueFin::_patched_state;
    }

    else
    {
      v26 = (v25)(a1, BlueFin::__pkgStdEvt);
    }

    v27 = &v30;
    if (v26 != v4)
    {
      do
      {
        v27[1] = v26;
        ++v27;
        if (BlueFin::patch_trigger(v26, a1, BlueFin::__pkgStdEvt, &BlueFin::_patched_state))
        {
          v26 = BlueFin::_patched_state;
        }

        else
        {
          v26 = (v26)(a1, BlueFin::__pkgStdEvt);
        }
      }

      while (v26 != v4);
      v25 = *v27;
    }

    do
    {
      if ((BlueFin::patch_trigger(v25, a1, byte_298A32C8C, &BlueFin::_patched_state) & 1) == 0)
      {
        (*v27)(a1, byte_298A32C8C);
      }

      v28 = *--v27;
      v25 = v28;
    }

    while (v28);
    v4 = a1[1];
  }

  result = (v4)(a1, byte_298A32C8A);
  if (!result)
  {
    goto LABEL_70;
  }

  return result;
}

uint64_t *BlueFin::GlTimer::disarm(uint64_t *this)
{
  if (*(this + 24))
  {
    v1 = this[4];
    if (v1)
    {
      if (*(this + 24) - 3 <= 0xFFFFFFFD)
      {
        DeviceFaultNotify("glhsm_timer.cpp", 150, "disarm", "myState == GL_TIMER_ST_ONE_SHOT || myState == GL_TIMER_ST_PERIODIC");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glhsm_timer.cpp", 150, "myState == GL_TIMER_ST_ONE_SHOT || myState == GL_TIMER_ST_PERIODIC");
      }

      v3 = *(v1 + 96);
      v2 = (v1 + 96);
      v4 = this[1];
      if (v3 != this)
      {
        v5 = *this;
        if (v4)
        {
          *v4 = v5;
        }

        v2 = (v5 + 8);
      }

      *v2 = v4;
      *(this + 24) = 0;
    }
  }

  return this;
}

uint64_t BlueFin::GlTimer::arm(BlueFin::GlTimer *this, char a2, char a3, unsigned int a4)
{
  if (*(this + 24) >= 3u)
  {
    v13 = "GL_TIMER_ST_FREE == myState || GL_TIMER_ST_ONE_SHOT == myState || GL_TIMER_ST_PERIODIC == myState";
    DeviceFaultNotify("glhsm_timer.cpp", 51, "arm", "GL_TIMER_ST_FREE == myState || GL_TIMER_ST_ONE_SHOT == myState || GL_TIMER_ST_PERIODIC == myState");
    v14 = 51;
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glhsm_timer.cpp", v14, v13);
  }

  if (!*(this + 4))
  {
    v13 = "mypActive";
    DeviceFaultNotify("glhsm_timer.cpp", 52, "arm", "mypActive");
    v14 = 52;
    goto LABEL_11;
  }

  if (a4 >= 0x7FFFFFFF)
  {
    v13 = "deltaT < ulMaxDeltaT";
    DeviceFaultNotify("glhsm_timer.cpp", 54, "arm", "deltaT < ulMaxDeltaT");
    v14 = 54;
    goto LABEL_11;
  }

  v8 = BlueFin::GlUtils::m_pInstance;
  ++*(BlueFin::GlUtils::m_pInstance + 1088);
  result = (*(**v8 + 48))();
  v8[273] = result;
  *(this + 25) = a2;
  *(this + 26) = a3;
  v10 = *(BlueFin::GlUtils::m_pInstance + 1092);
  *(this + 4) = a4;
  *(this + 5) = v10;
  if (!*(this + 24))
  {
    v11 = *(this + 4);
    v12 = *(v11 + 96);
    *this = 0;
    *(this + 1) = v12;
    if (v12)
    {
      *v12 = this;
    }

    *(v11 + 96) = this;
  }

  return result;
}

void FireMessageHandler::Tick::appendCallback(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    if (a3 <= 100)
    {
      v5 = 100;
    }

    else
    {
      v5 = a3;
    }

    DeviceCommon::GetMachContinuousTime(a1);
    v7 = v6;
    if (*(a2 + 24))
    {
      v8 = *(a1 + 40);
      if (v8 >= *(a1 + 48))
      {
        v9 = std::vector<std::function<void ()(void)>>::__emplace_back_slow_path<std::function<void ()(void)>&>((a1 + 32), a2);
      }

      else
      {
        std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](*(a1 + 40), a2);
        v9 = v8 + 32;
        *(a1 + 40) = v8 + 32;
      }

      *(a1 + 40) = v9;
      v12 = *(a2 + 24);
      if (v12)
      {
        v13 = (*(*v12 + 64))(v12);
      }

      else
      {
        v13 = MEMORY[0x29EDC9500];
      }

      FireDeviceLog::DeviceLogBase(6, "timer,appendCallback,%s,tickTimeMs,%d", (*(v13 + 8) & 0x7FFFFFFFFFFFFFFFLL), v5);
    }

    v14 = v7 * 1000.0 + v5;
    if (v14 + 100.0 >= *(a1 + 56))
    {
      FireDeviceLog::DeviceLogBase(8, "timer,appendCallback,alreadyScheduled,%.2f,current,%.2f,timeout,%d");
    }

    else
    {
      *(a1 + 56) = v14;
      if (!FireResourceMgr::fInstance)
      {
        operator new();
      }

      (*(**(FireResourceMgr::fInstance + 8) + 24))(*(FireResourceMgr::fInstance + 8), v5, 0);
      FireDeviceLog::DeviceLogBase(6, "timer,appendCallback,startTimer,%d");
    }
  }

  else if (*(a2 + 24))
  {
    v10 = *(a1 + 40);
    if (v10 >= *(a1 + 48))
    {
      v11 = std::vector<std::function<void ()(void)>>::__emplace_back_slow_path<std::function<void ()(void)>&>((a1 + 32), a2);
    }

    else
    {
      std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](*(a1 + 40), a2);
      v11 = v10 + 32;
      *(a1 + 40) = v10 + 32;
    }

    *(a1 + 40) = v11;
    if (!FireResourceMgr::fInstance)
    {
      operator new();
    }

    (*(**(FireResourceMgr::fInstance + 8) + 24))(*(FireResourceMgr::fInstance + 8), 0, 0);
    v15 = *(a2 + 24);
    if (v15)
    {
      (*(*v15 + 64))(v15);
    }

    FireDeviceLog::DeviceLogBase(6, "timer,appendCallback,bounce,%s,tickTimeMs,%d");
  }

  else
  {
    FireDeviceLog::DeviceLogBase(1, "timer,appendCallback,bounce,nullptr");

    DeviceFaultNotify("FireMessageHandler.cpp", 1567, "appendCallback", "timer,appendCallback,bounce,nullptr");
  }
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL BlueFin::GlMeSrdAsicConfig::IsPikeAsicType(BlueFin::GlMeSrdAsicConfig *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    DeviceFaultNotify("glmesrd_asic_config.cpp", 4436, "IsPikeAsicType", "m_eAsicType != ASIC_TYPE_UNKNOWN");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", 4436, "m_eAsicType != ASIC_TYPE_UNKNOWN");
  }

  return v1 == 3;
}

uint64_t BlueFin::GlMeSrdAsicConfig::VERIFY(uint64_t result, int a2)
{
  if ((*(result + 1423) & 1) == 0)
  {
    if (*(result + 8))
    {
      return result;
    }

    v2 = "IsAsicTypeValid()";
    DeviceFaultNotify("glmesrd_asic_config.cpp", 4862, "VERIFY", "IsAsicTypeValid()");
    v3 = 4862;
    goto LABEL_10;
  }

  if (!a2)
  {
    result = (*(*result + 232))(result);
    if (result)
    {
      return result;
    }

    v2 = "IsAsicCfgValid()";
    DeviceFaultNotify("glmesrd_asic_config.cpp", 4870, "VERIFY", "IsAsicCfgValid()");
    v3 = 4870;
LABEL_10:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", v3, v2);
  }

  if (!*(result + 8))
  {
    v2 = "IsAsicTypeValid()";
    DeviceFaultNotify("glmesrd_asic_config.cpp", 4875, "VERIFY", "IsAsicTypeValid()");
    v3 = 4875;
    goto LABEL_10;
  }

  return result;
}

BOOL BlueFin::GlMeSrdAsicConfig::IsMinnowAsicType(BlueFin::GlMeSrdAsicConfig *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    DeviceFaultNotify("glmesrd_asic_config.cpp", 4442, "IsMinnowAsicType", "m_eAsicType != ASIC_TYPE_UNKNOWN");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", 4442, "m_eAsicType != ASIC_TYPE_UNKNOWN");
  }

  return v1 == 5;
}

void DeviceFaultNotify(char *__s, int a2, char *a3, const char *a4)
{
  std::string::basic_string[abi:ne200100]<0>(v14, __s);
  v16 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, a3);
  v12 = 0;
  v13 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v11 = 0;
  v9 = std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__emplace_back_slow_path<GnssHal::ExtensionsFire::RecoveryPoint&>(&v8, v14);
  FireDeviceLog::DeviceLogBase(2, "DeviceFaultNotify,msg,%s,file,%s,line,%d,func,%s", a4, __s, a2, a3);
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  (*(**(FireResourceMgr::fInstance + 40) + 144))(*(FireResourceMgr::fInstance + 40), &v8);
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  (*(**(FireResourceMgr::fInstance + 16) + 48))(*(FireResourceMgr::fInstance + 16));
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  (*(**(FireResourceMgr::fInstance + 24) + 56))(*(FireResourceMgr::fInstance + 24));
  usleep(0xC350u);
  v19 = &v8;
  std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__destroy_vector::operator()[abi:ne200100](&v19);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_2987A265C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*BlueFin::GlMeSrdAsicinit::bri_startup_asic(BlueFin::GlMeSrdAsicinit *this, unsigned __int8 *a2))()
{
  result = 0;
  v38 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (v4 <= 5)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        return BlueFin::QHsm::top;
      }

      return result;
    }

    v5 = *(*(this + 16) + 1418);
    if ((v5 | 4) == 4)
    {
LABEL_40:
      *(this + 86) = this;
      BlueFin::GlTimer::arm((this + 656), 6, 0, 0xFu);
      result = 0;
      *(this + 680) = 1;
      return result;
    }

    *(this + 732) = 0;
    v36[2] = xmmword_298A3414F;
    v36[3] = unk_298A3415F;
    v37[0] = xmmword_298A3416F;
    *(v37 + 9) = *(&xmmword_298A3416F + 9);
    v36[0] = xmmword_298A3412F;
    v36[1] = unk_298A3413F;
    v34[6] = xmmword_298A341E8;
    v34[7] = unk_298A341F8;
    v34[8] = xmmword_298A34208;
    v34[2] = xmmword_298A341A8;
    v34[3] = unk_298A341B8;
    v34[5] = unk_298A341D8;
    v34[4] = xmmword_298A341C8;
    v34[1] = unk_298A34198;
    v34[0] = xmmword_298A34188;
    v35 = 28350213;
    memcpy(__dst, &unk_298A3421C, sizeof(__dst));
    memcpy(v32, &unk_298A34357, 0x13FuLL);
    v28 = xmmword_298A34516;
    v29 = unk_298A34526;
    v30 = xmmword_298A34536;
    v31 = unk_298A34546;
    v24 = xmmword_298A344D6;
    v25 = unk_298A344E6;
    v26 = xmmword_298A344F6;
    v27 = unk_298A34506;
    *v20 = xmmword_298A34496;
    v21 = unk_298A344A6;
    v22 = xmmword_298A344B6;
    v23 = unk_298A344C6;
    v18[8] = xmmword_298A345D6;
    v18[9] = unk_298A345E6;
    v18[10] = xmmword_298A345F6;
    v18[4] = xmmword_298A34596;
    v18[5] = unk_298A345A6;
    v18[6] = xmmword_298A345B6;
    v18[7] = unk_298A345C6;
    v18[0] = xmmword_298A34556;
    v18[1] = unk_298A34566;
    v19 = 432;
    v18[2] = xmmword_298A34576;
    v18[3] = unk_298A34586;
    if ((v5 - 4) > 0xFFFFFFFC)
    {
      v6 = "A0";
      if (v5 == 2)
      {
        v6 = "B1";
      }

      if (v5 == 1)
      {
        v6 = "B0";
      }

      GlCustomLog(15, "GlMeSrdAsicinit::Mcu_SendAutobaudBypassSequnce() MCU %s Bypass Enabled\n", v6);
      v7 = (*(**(this + 16) + 1368))();
      if (v5 == 1 && v7)
      {
        v8 = v34;
        v9 = this;
      }

      else if (v5 == 1)
      {
        v8 = v36;
        v9 = this;
      }

      else
      {
        v17 = (*(**(this + 16) + 1368))(*(this + 16));
        if (v5 == 2 && v17)
        {
          v8 = v32;
          v9 = this;
        }

        else if (v5 == 2)
        {
          v8 = __dst;
          v9 = this;
        }

        else
        {
          if ((*(**(this + 16) + 1368))(*(this + 16)))
          {
            v8 = v18;
          }

          else
          {
            v8 = v20;
          }

          v9 = this;
        }
      }

      BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(v9, v8);
      goto LABEL_40;
    }

    v12 = "ucMcuByass == MCU_BYPASS_75B0 || ucMcuByass == MCU_BYPASS_75B1 || ucMcuByass == MCU_BYPASS_76A0";
    DeviceFaultNotify("glmesrd_asicinit.cpp", 3103, "Mcu_SendAutobaudBypassSequnce", "ucMcuByass == MCU_BYPASS_75B0 || ucMcuByass == MCU_BYPASS_75B1 || ucMcuByass == MCU_BYPASS_76A0");
    v13 = 3103;
LABEL_19:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", v13, v12);
  }

  if (v4 == 6)
  {
    v10 = *(this + 16);
    v11 = *(v10 + 8);
    if ((v11 - 1) >= 3)
    {
      if (v11 == 5)
      {
        *(this + 638) = 0;
        *(this + 696) = *(v10 + 356);
        *(this + 697) = *(v10 + 357);
        v14 = *(v10 + 352) == 2;
        *(this + 698) = v14;
        if (v14)
        {
          (*(**(this + 15) + 16))(*(this + 15));
        }

        *(this + 737) = 1;
        memset(v32, 128, 16);
        *(this + 732) = 0;
        BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v32);
        if ((*(*(this + 16) + 352) - 1) > 1)
        {
          v15 = "&GlMeSrdAsicinit::bri_wait4version";
          v16 = BlueFin::GlMeSrdAsicinit::bri_wait4version;
        }

        else
        {
          v15 = "&GlMeSrdAsicinit::bri_wait4flowcontrol";
          v16 = BlueFin::GlMeSrdAsicinit::bri_wait4flowcontrol;
        }

        BlueFin::QHsm::tran(this, v16, v15);
        return 0;
      }

      v12 = "ERROR :Asic Type Not Supported: Check your RfType\n";
      DeviceFaultNotify("glmesrd_asicinit.cpp", 490, "bri_startup_asic", "ERROR :Asic Type Not Supported: Check your RfType\n");
      v13 = 490;
    }

    else
    {
      v12 = "ERROR :Asic Type Not Supported: Check your RfType\n";
      DeviceFaultNotify("glmesrd_asicinit.cpp", 508, "bri_startup_asic", "ERROR :Asic Type Not Supported: Check your RfType\n");
      v13 = 508;
    }

    goto LABEL_19;
  }

  if (v4 != 12)
  {
    return BlueFin::QHsm::top;
  }

  return result;
}

uint64_t (*(*(*BlueFin::GlReqSm::wait4me(BlueFin::GlReqSm *this, _BYTE *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlReqSm *this, const char *a2))()
{
  result = 0;
  switch(*a2)
  {
    case 2:
      *(this + 54569) = 0;
      v8 = *(this + 54596);
      *(this + 6705) = this;
      if (v8 == 1)
      {
        v9 = 20000;
      }

      else
      {
        v9 = 10000;
      }

      BlueFin::GlTimer::arm((this + 53608), 31, 0, v9);
      result = 0;
      *(this + 53632) = 1;
      return result;
    case 3:
      v10 = 53608;
      goto LABEL_17;
    case 6:
    case 7:
    case 0xB:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x26:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
      return result;
    case 8:
      BlueFin::GlPePendingBag::TerminateRequest(this + 6496, *(this + 4148));
      return 0;
    case 9:
      GlCustomLog(14, "GlReqSm: remove all requests\n");
      BlueFin::GlPePendingBag::TerminateAll(this + 6496);
      v10 = 31584;
LABEL_17:
      BlueFin::GlTimer::disarm((this + v10));
      return 0;
    case 0xA:
      BlueFin::GlReqSm::SetAsstFromPend(this, 0, 0);
      return 0;
    case 0x11:
      if (*(this + 54569) == 1)
      {
        goto LABEL_20;
      }

      BlueFin::GlPePendingBag::GetPendingRequestTypes(&v13, this + 812);
      if ((v13 & 0xFFFFCFFF) == 0 && (v13 & 0x3000) != 0 && (*(*(this + 784) + 1318) & 1) == 0)
      {
        goto LABEL_20;
      }

      if (*(this + 5132) <= 0 && !*(this + 31608) && !*(this + 31648) && !*(this + 31688))
      {
        BlueFin::GlReqSm::SetAsstFromPend(this, 1, 0);
LABEL_20:
        v11 = "&GlReqSm::standby";
        v12 = BlueFin::GlReqSm::standby;
        goto LABEL_34;
      }

      BlueFin::GlReqSm::CreateMeJob(this);
      if ((*(**(this + 784) + 1128))(*(this + 784)) && ((*(**(this + 784) + 1112))(*(this + 784)) & 1) == 0)
      {
        goto LABEL_20;
      }

      v11 = "&GlReqSm::processing";
      v12 = BlueFin::GlReqSm::processing;
LABEL_34:
      BlueFin::QHsm::tran(this, v12, v11);
      return 0;
    case 0x1A:
      BlueFin::GlTimer::disarm(this + 3948);
      result = 0;
      *(this + 2712) = 0;
      return result;
    case 0x1F:
    case 0x25:
      v4 = *(this + 3048);
      v13 = &v15;
      v14 = 3;
      v15 = v4;
      v16 = 0;
      if ((v4 & 0x100) != 0 || BlueFin::GlPePendingBag::HasReq(this + 6496, 8))
      {
        v5 = *(this + 4131);
        GlCustomLog(14, "GlReqSm::wait4me calling HandleFactoryTestFailure\n");
        if ((*(v13 + 1) & 1) == 0)
        {
          BlueFin::GlReqSm::CreateNewReqFromPend(this);
        }

        BlueFin::GlPeReqBag::HandleFactoryTestFailure((this + 10880), v5);
        BlueFin::GlPeReqBag::TerminateAll((this + 10880));
        BlueFin::GlPeReqBag::Cleanup(this + 10880);
      }

      *(this + 2712) = 0;
      v6 = *(this + 4149);
      if (*(v6 + 296) == 1)
      {
        v7 = *(v6 + 80);
        if (v7)
        {
          v7(*(v6 + 8), 0);
          *(v6 + 296) = 0;
        }
      }

      BlueFin::QHsm::tran(this, BlueFin::GlReqSm::restart, "&GlReqSm::restart");
      (*(**(this + 4149) + 80))(*(this + 4149), 6, 0);
      GlCustomLog(11, "GlReqSm::communication breakdown at %s: %d. GLL will be restarted!\n", "wait4me", 3336);
      return 0;
    default:
      return BlueFin::GlReqSm::host_based_positioning;
  }
}

BOOL BlueFin::GlPeTimeManager::TimeKnown(uint64_t a1, int a2, unsigned int a3)
{
  if (*(a1 + 2616) == -1 || *(a1 + 2632) == 4294967300.0)
  {
    return 0;
  }

  v3 = 2632;
  if (*(a1 + 2736) != 4294967300.0)
  {
    v3 = 2736;
  }

  v4 = *(a1 + v3);
  return v4 + *(BlueFin::GlPeGnssTime::GetConversionTable((a1 + 2608)) + 4 * a2 + 48) <= a3;
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

uint64_t gnss::FireGnssDevice::injectAssistanceFile(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v17[3] = *MEMORY[0x29EDCA608];
  v9 = *(a4 + 24);
  if (v9)
  {
    if (v9 == a4)
    {
      v16 = v15;
      (*(*v9 + 24))(v9, v15);
    }

    else
    {
      v16 = (*(*v9 + 16))(v9);
    }
  }

  else
  {
    v16 = 0;
  }

  v10 = a1 + 264;
  if (v15 != (a1 + 264))
  {
    v11 = v16;
    v12 = *(a1 + 288);
    if (v16 == v15)
    {
      if (v12 == v10)
      {
        (*(*v16 + 24))();
        (*(*v16 + 32))(v16);
        v16 = 0;
        (*(**(a1 + 288) + 24))(*(a1 + 288), v15);
        (*(**(a1 + 288) + 32))(*(a1 + 288));
        *(a1 + 288) = 0;
        v16 = v15;
        (*(v17[0] + 24))(v17, a1 + 264);
        (*(v17[0] + 32))(v17);
      }

      else
      {
        (*(*v16 + 24))();
        (*(*v16 + 32))(v16);
        v16 = *(a1 + 288);
      }

      *(a1 + 288) = v10;
    }

    else if (v12 == v10)
    {
      (*(*v12 + 24))(*(a1 + 288), v15);
      (*(**(a1 + 288) + 32))(*(a1 + 288));
      *(a1 + 288) = v16;
      v16 = v15;
    }

    else
    {
      v16 = *(a1 + 288);
      *(a1 + 288) = v11;
    }
  }

  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v15);
  FireDeviceLog::DeviceLogBase(6, "injectAssistanceFile,size,%zu,type,%d", a2->n128_u64[1] - a2->n128_u64[0], v6);
  v13 = FireMessageHandler::sendInjectAssistanceFile(*(a1 + 40), v6, a2);

  return std::function<void ()(gnss::Result)>::operator()(a5, v13);
}

void sub_2987A34FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t FireMessageHandler::sendInjectAssistanceFile(uint64_t a1, char a2, __n128 *a3)
{
  v7 = a2;
  v8 = &v7;
  v5 = std::__hash_table<std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>,std::__unordered_map_hasher<gnss::SvPositionSource,std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>,std::hash<gnss::SvPositionSource>,std::equal_to<gnss::SvPositionSource>,true>,std::__unordered_map_equal<gnss::SvPositionSource,std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>,std::equal_to<gnss::SvPositionSource>,std::hash<gnss::SvPositionSource>,true>,std::allocator<std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>>>::__emplace_unique_key_args<gnss::SvPositionSource,std::piecewise_construct_t const&,std::tuple<gnss::SvPositionSource const&>,std::tuple<>>((a1 + 2152), &v7, &std::piecewise_construct, &v8);
  std::vector<unsigned char>::__move_assign((v5 + 3), a3);
  FireMessageHandler::send(a1, 1073741830);
  return 1;
}

uint64_t BlueFin::GlPosEng::readLtoFile(BlueFin::GlPosEng *this, unsigned int *a2, uint64_t a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (!BlueFin::GlPeTimeManager::TimeKnown(this + 121216, 0, 0x3938700u) || (v6 = this + 374912, (*(this + 374913) & 1) != 0))
  {
    v7 = 0;
    result = 1;
    if (!a2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if ((*(*(this + 2) + 829) & 0x20) != 0)
  {
    v30 = "LTO";
    if (a3)
    {
      v30 = "RTO";
    }

    GlCustomLog(14, "%s file is ignored\n", v30);
    return 2;
  }

  *(this + 374913) = 1;
  if ((*v6 & 1) == 0)
  {
    v9 = "LTO";
    if (a3)
    {
      v9 = "RTO";
    }

    GlCustomLog(14, " Start reading %s ...\n", v9);
  }

  BlueFin::GlPeTimeManager::GetTime((this + 121216), 1, v34);
  v35 = &off_2A1F0B5F0;
  v36 = 0;
  Gps = BlueFin::GlPeGnssTime::GetGps(v34, &v35);
  v11 = (v35[4])(&v35, Gps);
  v13.i32[0] = v36;
  *v13.i64 = v13.u64[0] * 2.32830644e-10 + v11;
  *v14.i64 = *v13.i64 + trunc(*v13.i64 * 2.32830644e-10) * -4294967300.0;
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  v16 = vnegq_f64(v15);
  v17 = vbslq_s8(v16, v14, v13).u64[0];
  if (*v13.i64 <= 4294967300.0)
  {
    v18 = *v13.i64;
  }

  else
  {
    v18 = *&v17;
  }

  if (v18 < -4294967300.0)
  {
    *v13.i64 = -v18;
    *v12.i64 = -(v18 - trunc(v18 * -2.32830644e-10) * -4294967300.0);
    v18 = -*vbslq_s8(v16, v12, v13).i64;
  }

  v19 = *(this + 2);
  v20 = (v35[4])(&v35);
  BlueFin::GlSettingsImpl::UpdateLtOcbeeQaData(v19, v20 / 0x93A80);
  v33 = 6;
  v21 = (*(**(this + 4) + 88))(*(this + 4));
  v34[0].n128_u64[1] = (*(**(this + 4) + 96))(*(this + 4));
  v22 = v21(102560);
  v34[0].n128_u64[0] = v22;
  if (!v22)
  {
    DeviceFaultNotify("glmemalloc.h", 74, "GlStackAlloc", "m_ptr != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmemalloc.h", 74, "m_ptr != nullptr");
  }

  v23 = v22;
  if (v18 < 0.0)
  {
    v24 = --v18;
  }

  else
  {
    v24 = v18;
  }

  BlueFin::GlPeLtoReader::GlPeLtoReader(v22, this + 7648, 0, v24, &v33, *(*(this + 4) + 8), this + 224, this + 121216, *(this + 4), this + 350608, this + 264320, this + 181312, this + 181056, this + 56, this + 373088, this + 160);
  if (*(*(this + 2) + 26012))
  {
    *(v23 + 50704) = *(*(this + 2) + 26012);
  }

  v25 = *(this + 4);
  v26 = *(v25 + 152);
  if (v26)
  {
    v26(*(v25 + 8), v23, a3);
  }

  v27 = (this + 158164);
  v28 = (this + 123784);
  v7 = *(v23 + 9748);
  BlueFin::GlStackAlloc<BlueFin::GlPeLtoReader>::~GlStackAlloc(v34);
  v29 = v33;
  if (*v6)
  {
    GlCustomLog(14, "readLtoFile::%s reading complete  Pass:%c  NumBytes:%u\n");
  }

  else
  {
    GlCustomLog(14, "readLtoFile::%s reading complete  Pass:%c  NumBytes:%u LMS: %u\n");
  }

  if (!v29)
  {
    if (a3)
    {
      if (*(this + 9281) != 1 || BlueFin::GlGnssSet::IsEmpty((this + 8864)))
      {
        goto LABEL_41;
      }
    }

    else if (*(this + 93730) != -7200001 && *(this + 9264) != 1)
    {
      goto LABEL_41;
    }

    *(this + 93730) = *v28;
LABEL_41:
    result = 0;
    if (v7)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2;
    }

    goto LABEL_44;
  }

  v7 = 0;
  v31 = 2;
  result = 3;
LABEL_44:
  v32 = *v27;
  *v27 = v31;
  if (v32 != v31)
  {
    *(this + 158184) = 1;
  }

  *(this + 31564) = *v28;
  *(this + 374913) = 0;
  if (a2)
  {
LABEL_6:
    *a2 = v7;
  }

  return result;
}

void sub_2987A3A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  BlueFin::GlStackAlloc<BlueFin::GlPeLtoReader>::~GlStackAlloc(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlMeSrdAsicinit::SetAsicData(uint64_t this, unsigned __int8 *a2, int a3)
{
  v5 = this;
  if (*(this + 737) != 1)
  {
    v30 = ***(this + 120);

    return v30();
  }

  v6 = *(this + 128);
  if (*(v6 + 8) != 3 || !*(v6 + 1418) || (this = BlueFin::QHsm::isIn(this, BlueFin::GlMeSrdAsicinit::wait4Mcuversion), !this))
  {
    v73 = &unk_2A1F0D5D8;
    v74 = a3;
    v75 = a2;
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      this = off_2A1F0D5F0(&v73, 0, 0);
    }

    *(v5 + 752) += a3;
    if (!a3)
    {
      return this;
    }

    v31 = 0;
    v32 = (v5 + 700);
    v33 = (v5 + 705);
    v34 = v5 + 701;
    while (1)
    {
      v35 = *(v5 + 732);
      if (v35 == 32)
      {
        v36 = 701;
        v35 = 1;
        while (*(v5 + v36) != 254)
        {
          ++v35;
          if (++v36 == 732)
          {
            LOBYTE(v35) = 0;
            goto LABEL_74;
          }
        }

        v37 = 0;
        do
        {
          v32[v37] = v32[(v35 + v37)];
          ++v37;
          v38 = *(v5 + 732);
        }

        while (v37 < (v38 - v35));
        LOBYTE(v35) = v38 - v35;
LABEL_74:
        *(v5 + 732) = v35;
      }

      if (!v35 && a2[v31] != 254)
      {
        ++*(v5 + 760);
        goto LABEL_145;
      }

      if (*(v5 + 698) != 1)
      {
        LOBYTE(v40) = a2[v31];
        goto LABEL_92;
      }

      if (*(v5 + 735) != 1)
      {
        v40 = a2[v31];
        if (v40 == 224)
        {
          *(v5 + 735) = 1;
          goto LABEL_145;
        }

        goto LABEL_91;
      }

      *(v5 + 735) = 0;
      v39 = a2[v31];
      switch(v39)
      {
        case 4:
          LOBYTE(v40) = *(v5 + 697);
          break;
        case 3:
          LOBYTE(v40) = *(v5 + 696);
          break;
        case 2:
          LOBYTE(v40) = -32;
          break;
        default:
          this = GlCustomLog(11, "GlMeSrdAsicinit::Bri_EswLoadSetAsicData received unknown escaped character!\n");
          *(v5 + 732) = 0;
          ++*(v5 + 760);
          LOBYTE(v40) = a2[v31];
          goto LABEL_91;
      }

      a2[v31] = v40;
LABEL_91:
      LOBYTE(v35) = *(v5 + 732);
LABEL_92:
      *(v5 + 732) = v35 + 1;
      v32[v35] = v40;
      v41 = *(*(v5 + 128) + 8);
      if ((v41 - 2) >= 2)
      {
        if (v41 == 1)
        {
          v47 = *(v5 + 732);
          if (v47 != 10)
          {
            if (v47 >= 0x20)
            {
              v54 = 0;
              v55 = 0;
              *(v5 + 732) = 0;
              ++*(v5 + 760);
              do
              {
                v56 = *(v34 + v54);
                v55 |= v56 == 254;
                if (v55)
                {
                  v57 = *(v5 + 732);
                  *(v5 + 732) = v57 + 1;
                  v32[v57] = v56;
                }

                ++v54;
              }

              while (v54 != 31);
            }

            goto LABEL_145;
          }

          if (*v32 == 254 && !*(v5 + 701) && *(v5 + 702) == 253 && *(v5 + 709) == 252)
          {
            v48 = *(v5 + 703);
            v49 = *(v5 + 704);
            if (v48 == 47 && v49 == 21)
            {
              *(v5 + 768) = 0;
              *(v5 + 772) = *(v5 + 705) | (*(v5 + 707) << 16);
              *(v5 + 776) = *(v5 + 708);
              v76 = 3596;
              v50 = *(v5 + 32);
              this = *(v5 + 8);
              *(v5 + 32) = this;
              do
              {
                v77 = 0;
                if (BlueFin::patch_dispatch(this, v5, &v76, &v77))
                {
                  this = v77;
                }

                else
                {
                  this = (*(v5 + 32))(v5, &v76);
                }

                *(v5 + 32) = this;
              }

              while (this);
LABEL_154:
              *(v5 + 32) = v50;
LABEL_182:
              *(v5 + 732) = 0;
              ++*(v5 + 756);
              goto LABEL_145;
            }

            if (v48 != 31)
            {
              if (!*(v5 + 703))
              {
                *(v5 + 768) = v49;
                v59 = *v33;
                goto LABEL_180;
              }

              if (v48 != 33 || *(v5 + 704))
              {
                goto LABEL_182;
              }

              *(v5 + 768) = *v33;
              v67 = 3852;
LABEL_181:
              LOWORD(v77) = v67;
              this = BlueFin::QHsm::dispatch(v5, &v77);
              goto LABEL_182;
            }

            *(v5 + 768) = v49;
            *(v5 + 769) = *(v5 + 705);
LABEL_174:
            v67 = 3340;
            goto LABEL_181;
          }

          goto LABEL_145;
        }

        if (v41 != 5)
        {
          v68 = "0";
          DeviceFaultNotify("glmesrd_asicinit.cpp", 3545, "Bri_EswLoadSetAsicData", "0");
          v69 = 3545;
          goto LABEL_185;
        }
      }

      v42 = *(v5 + 732);
      if (v42 > 0x20)
      {
        v68 = "m_aucEswLoadAsicDataSize <= _DIM(m_aucEswLoadAsicData)";
        DeviceFaultNotify("glmesrd_asicinit.cpp", 3587, "Bri_CheckForReceivedPacket_Carp", "m_aucEswLoadAsicDataSize <= _DIM(m_aucEswLoadAsicData)");
        v69 = 3587;
        goto LABEL_185;
      }

      if (v42 == 9)
      {
        if (*v32 != 254 || *(v5 + 701) || *(v5 + 702) != 253 || *(v5 + 708) != 252)
        {
          goto LABEL_145;
        }

        v53 = *(v5 + 703);
        if (v53 == 14)
        {
          v76 = 7436;
          v52 = *(v5 + 32);
          this = *(v5 + 8);
          *(v5 + 32) = this;
          do
          {
            v77 = 0;
            if (BlueFin::patch_dispatch(this, v5, &v76, &v77))
            {
              this = v77;
            }

            else
            {
              this = (*(v5 + 32))(v5, &v76);
            }

            *(v5 + 32) = this;
          }

          while (this);
          goto LABEL_163;
        }

        if (v53 == 15)
        {
          *(v5 + 772) = 0;
          *(v5 + 768) = *(v5 + 704);
          v76 = 3852;
          v52 = *(v5 + 32);
          this = *(v5 + 8);
          *(v5 + 32) = this;
          do
          {
            v77 = 0;
            if (BlueFin::patch_dispatch(this, v5, &v76, &v77))
            {
              this = v77;
            }

            else
            {
              this = (*(v5 + 32))(v5, &v76);
            }

            *(v5 + 32) = this;
          }

          while (this);
LABEL_163:
          *(v5 + 32) = v52;
          *(v5 + 732) = 0;
          ++*(v5 + 756);
        }
      }

      else
      {
        if (v42 != 13)
        {
          if (v42 == 32)
          {
            v43 = 0;
            v44 = 0;
            *(v5 + 732) = 0;
            ++*(v5 + 760);
            do
            {
              v45 = *(v34 + v43);
              v44 |= v45 == 254;
              if (v44)
              {
                v46 = *(v5 + 732);
                *(v5 + 732) = v46 + 1;
                v32[v46] = v45;
              }

              ++v43;
            }

            while (v43 != 31);
          }

          goto LABEL_145;
        }

        if (*v32 == 254 && !*(v5 + 701) && *(v5 + 702) == 253 && *(v5 + 712) == 252)
        {
          v51 = *(v5 + 703);
          if (v51 != 31)
          {
            v58 = v51 & 0xF;
            if (v58 != 9)
            {
              if (v58 == 10)
              {
                *(v5 + 772) = *(v5 + 708) | (*(v5 + 710) << 16);
                *(v5 + 776) = *(v5 + 711);
                *(v5 + 768) = *(v5 + 704);
                v76 = 3596;
                v50 = *(v5 + 32);
                this = *(v5 + 8);
                *(v5 + 32) = this;
                do
                {
                  v77 = 0;
                  if (BlueFin::patch_dispatch(this, v5, &v76, &v77))
                  {
                    this = v77;
                  }

                  else
                  {
                    this = (*(v5 + 32))(v5, &v76);
                  }

                  *(v5 + 32) = this;
                }

                while (this);
                goto LABEL_154;
              }

              goto LABEL_182;
            }

            v60 = *(v5 + 704);
            v61 = v60 | (*(v5 + 705) << 8);
            v62 = *(v5 + 707);
            v63 = (v62 << 24) | (*(v5 + 706) << 16) | v61;
            v64 = *(v5 + 708);
            v65 = (*(v5 + 709) << 8) | (*(v5 + 710) << 16) | (*(v5 + 711) << 24);
            v66 = v63 < 0xC0000400 && v62 > 0xBF;
            if (v66 || v63 == -1073739156)
            {
              if ((v60 & 3) != 0)
              {
                v68 = "(usOffsetInBytes & 0x03) == 0";
                DeviceFaultNotify("glmesrd_asicinit.cpp", 3686, "Bri_CheckForReceivedPacket_Carp", "(usOffsetInBytes & 0x03) == 0");
                v69 = 3686;
                goto LABEL_185;
              }

              *(v5 + 768) = v61 >> 2;
              v59 = v65 | v64;
LABEL_180:
              *(v5 + 772) = v59;
              v67 = 3084;
              goto LABEL_181;
            }

            if (((v62 << 24) | (*(v5 + 706) << 16) | v61 & 0xFFFFFC00) != 0xC0000800)
            {
              v68 = "0";
              DeviceFaultNotify("glmesrd_asicinit.cpp", 3721, "Bri_CheckForReceivedPacket_Carp", "0");
              v69 = 3721;
LABEL_185:
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", v69, v68);
            }

            if ((v60 & 3) != 0)
            {
              v68 = "(usOffsetInBytes & 0x03) == 0";
              DeviceFaultNotify("glmesrd_asicinit.cpp", 3703, "Bri_CheckForReceivedPacket_Carp", "(usOffsetInBytes & 0x03) == 0");
              v69 = 3703;
              goto LABEL_185;
            }

            if (v65)
            {
              v68 = "(ulData & 0xff) == ulData";
              DeviceFaultNotify("glmesrd_asicinit.cpp", 3704, "Bri_CheckForReceivedPacket_Carp", "(ulData & 0xff) == ulData");
              v69 = 3704;
              goto LABEL_185;
            }

            *(v5 + 768) = v61 >> 2;
            *(v5 + 769) = v64;
            goto LABEL_174;
          }

          *(v5 + 772) = 1;
          *(v5 + 768) = *(v5 + 704);
          *(v5 + 773) = *(v5 + 708);
          v76 = 3852;
          v52 = *(v5 + 32);
          this = *(v5 + 8);
          *(v5 + 32) = this;
          do
          {
            v77 = 0;
            if (BlueFin::patch_dispatch(this, v5, &v76, &v77))
            {
              this = v77;
            }

            else
            {
              this = (*(v5 + 32))(v5, &v76);
            }

            *(v5 + 32) = this;
          }

          while (this);
          goto LABEL_163;
        }
      }

LABEL_145:
      if (++v31 == a3)
      {
        return this;
      }
    }
  }

  v73 = &unk_2A1F0D5D8;
  v74 = a3;
  v75 = a2;
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    this = off_2A1F0D5F0(&v73, 0, 0);
  }

  *(v5 + 752) += a3;
  if (a3)
  {
    v7 = 0;
    v8 = (v5 + 700);
    v9 = xmmword_298A34030;
    v10 = xmmword_298A34040;
    v11 = xmmword_298A34050;
    do
    {
      v12 = *(v5 + 732);
      v13 = a2[v7];
      if (*(v5 + 732))
      {
        if ((v13 | 2) == 0x13)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v13 != 176)
        {
          goto LABEL_56;
        }

        v16 = v7 > a3 - 2 ? v7 : v7 + 1;
        if (a3 != 1 && a2[v16])
        {
          goto LABEL_56;
        }
      }

      *(v5 + 732) = v12 + 1;
      v8[v12] = v13;
      v14 = *(v5 + 732);
      if (v14 >= 0x21)
      {
        v68 = "m_aucEswLoadAsicDataSize <= _DIM(m_aucEswLoadAsicData)";
        DeviceFaultNotify("glmesrd_asicinit.cpp", 3574, "Mcu_EswLoadSetMcuData", "m_aucEswLoadAsicDataSize <= _DIM(m_aucEswLoadAsicData)");
        v69 = 3574;
        goto LABEL_185;
      }

      if (v14 == 2)
      {
        if (*v8 == 176 && !*(v5 + 701))
        {
          goto LABEL_56;
        }

LABEL_27:
        *(v5 + 732) = 0;
        goto LABEL_56;
      }

      if (v14 == 32)
      {
        if (*(v5 + 730) != 176 || *(v5 + 731) == 1)
        {
          goto LABEL_27;
        }

        v15 = 32;
      }

      else
      {
        v15 = *(v5 + 732);
        if (v14 < 4)
        {
          goto LABEL_56;
        }
      }

      if (v8[v15 - 2] == 176)
      {
        v17 = v8[v15 - 1] - 3;
        if (v17 <= 2)
        {
          *(v5 + 732) = v14 - 1;
          v8[v14 - 2] = 0x1311B0u >> (8 * (v17 & 0x1F));
          LODWORD(v14) = *(v5 + 732);
        }
      }

      if (v14 < 0x16 || v8[(v14 - 2)] != 176 || v8[(v14 - 1)] != 1)
      {
        goto LABEL_56;
      }

      if (*(v5 + 704))
      {
        v18 = vdupq_n_s32(*(v5 + 704));
        v19 = vbicq_s8(v11, vuzp1q_s16(vceqzq_s32(vandq_s8(v18, v9)), vceqzq_s32(vandq_s8(v18, v10))));
        v19.i32[0] = vaddvq_s16(v19);
        *v19.i8 = vcnt_s8(*v19.i8);
        v19.i16[0] = vaddlv_u8(*v19.i8);
        v20 = v19.i32[0] + 5;
      }

      else
      {
        v20 = 5;
      }

      if (v8[v20] != 3)
      {
        goto LABEL_27;
      }

      v21 = &v8[v20];
      v22 = v21[3];
      v71 = v10;
      v72 = v9;
      v70 = v11;
      if (v22 == 160)
      {
        v23 = 3;
      }

      else if (v22 == 177)
      {
        v23 = 2;
      }

      else
      {
        if (v21[2] != 176)
        {
          v68 = "m_aucEswLoadAsicData[5 + flag_payload_size + 3] == 0xA0 || m_aucEswLoadAsicData[5 + flag_payload_size + 3] == 0xB1 || m_aucEswLoadAsicData[5 + flag_payload_size + 2] == 0xB0";
          DeviceFaultNotify("glmesrd_asicinit.cpp", 3884, "mcuCheckForReceivedPacket_Pike", "m_aucEswLoadAsicData[5 + flag_payload_size + 3] == 0xA0 || m_aucEswLoadAsicData[5 + flag_payload_size + 3] == 0xB1 || m_aucEswLoadAsicData[5 + flag_payload_size + 2] == 0xB0");
          v69 = 3884;
          goto LABEL_185;
        }

        v23 = 1;
      }

      (*(**(v5 + 128) + 1248))(*(v5 + 128), v23);
      v76 = 7692;
      v24 = *(v5 + 32);
      v25 = *(v5 + 8);
      *(v5 + 32) = v25;
      do
      {
        v77 = 0;
        if (BlueFin::patch_dispatch(v25, v5, &v76, &v77))
        {
          v25 = v77;
        }

        else
        {
          v25 = (*(v5 + 32))(v5, &v76);
        }

        *(v5 + 32) = v25;
      }

      while (v25);
      *(v5 + 32) = v24;
      *(v5 + 732) = 0;
      ++*(v5 + 756);
      v26 = *(*(v5 + 128) + 1418);
      if (v26 == 2)
      {
        v27 = "B1";
      }

      else
      {
        v27 = "A0";
      }

      v28 = v26 == 1;
      v29 = "B0";
      if (!v28)
      {
        v29 = v27;
      }

      this = GlCustomLog(15, "Received Mcu Version %s in response to Mcu Version Query\n", v29);
      v10 = v71;
      v9 = v72;
      v11 = v70;
LABEL_56:
      ++v7;
    }

    while (v7 != a3);
  }

  return this;
}

uint64_t std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_2,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_2>,void ()(unsigned char *,short)>::operator()()
{
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  v1 = *(**FireResourceMgr::fInstance + 96);

  return v1();
}

void FireCallback::GlEngineOnAsicData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (FireCallback::pInstance)
  {
    v4 = *(FireCallback::pInstance + 504);
    if (v4)
    {
      v7 = a2;
      v6 = a3;
      (*(*v4 + 48))(v4, &v7, &v6);
      return;
    }

    v5 = "fcb,fEngineOnAsicDataCb,nullptr";
  }

  else
  {
    v5 = "fcb,GlEngineOnAsicData,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v5, a3);
}

uint64_t BlueFin::GlDbgProxy::HalGlEngineOnAsicData(uint64_t this, char *a2, uint64_t a3)
{
  v8 = a3;
  if (!*(this + 808))
  {
    v5 = this;
    *(this + 580) = 1;
    if (*(this + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteStart(this, 522);
      BlueFin::GlDbgCodec::WriteArray(v5, a2, &v8);
      this = (*(*v5 + 32))(v5, 1);
    }

    v6 = *(v5 + 784);
    if (v6)
    {
      this = v6(v5 + 608, a2, a3);
    }

    *(v5 + 580) = 1;
    if (*(v5 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteFinal(v5, 522);
      v7 = *(*v5 + 32);

      return v7(v5, 1);
    }
  }

  return this;
}

uint64_t BlueFin::GlDbgProxyGlEngineOnAsicData(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnAsicData(v5, a2, a3);
}

uint64_t BlueFin::GlPeEngineCallBacks::OnAsicData(uint64_t this, unsigned __int8 *a2, int a3)
{
  v3 = *(this + 40);
  if (v3)
  {
    v4 = a3;
    v6 = this;
    if (a3 >= 2049)
    {
      do
      {
        (*(v6 + 40))(*(v6 + 8), a2, 2048);
        a2 += 2048;
        v7 = v4;
        v4 -= 2048;
      }

      while (v7 > 0x1000);
      v3 = *(v6 + 40);
    }

    v8 = *(v6 + 8);

    return v3(v8, a2, v4);
  }

  return this;
}

uint64_t BlueFin::GlPosEng::SendAsicData(uint64_t this, unsigned __int8 *a2, __int16 a3)
{
  if ((*(*(this + 16) + 25964) & 1) == 0)
  {
    return (*(**(this + 32) + 16))(*(this + 32), a2, a3);
  }

  return this;
}

uint64_t (*(*(*BlueFin::GlMeSrdAsicinit::bri_wait4patchblockload(BlueFin::GlMeSrdAsicinit *this, BlueFin::GlMeSrdAsicinit *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7))(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v52 = *MEMORY[0x29EDCA608];
  v8 = *a2;
  v9 = BlueFin::GlMeSrdAsicinit::bri_wait4patchload;
  if (v8 <= 4)
  {
    if (v8 != 2)
    {
      if (v8 == 3)
      {
        BlueFin::GlQueue::Remove(this + 5, 5);
        BlueFin::GlTimer::disarm(this + 82);
        return 0;
      }

      return v9;
    }

    v46 = this + 296;
LABEL_13:
    if (!BlueFin::GlMeSrdAsicInitPatchLoader::QueuePacketIntoBuffer((this + 200)))
    {
      return 0;
    }

    v14 = &v46[40 * *(this + 619)];
    v15 = *(v14 + 1);
    v16 = *(v14 + 6) - v15;
    v17 = *(this + 118);
    if (v16 - v17 >= 4)
    {
      v18 = *(this + 118);
    }

    else
    {
      v18 = v17 - 4;
    }

    if (v16 > v17)
    {
      LOWORD(v16) = v18;
    }

    v19 = v16;
    if (v16 <= 3u)
    {
      v39 = "ulSize >= 4";
      DeviceFaultNotify("glmesrd_asicinit.cpp", 2680, "Bri_EswLoadBlockAndRequestCrc", "ulSize >= 4");
      v40 = 2680;
      goto LABEL_58;
    }

    v47 = v16;
    v20 = *(v14 + 2) + v15;
    v21 = *(v14 + 3) + v15;
    *(this + 732) = 0;
    v22 = v21;
    while (1)
    {
      if (v19 >= 0x3FC)
      {
        v23 = 1020;
      }

      else
      {
        v23 = v19;
      }

      if (v19 <= 3)
      {
        v39 = "ulLen >= 4";
        DeviceFaultNotify("glmesrd_asicinit.cpp", 2700, "Bri_EswLoadBlockAndRequestCrc", "ulLen >= 4");
        v40 = 2700;
        goto LABEL_58;
      }

      v24 = v23 & 0x3FC;
      v25 = *(*(this + 16) + 8);
      if ((v25 - 2) >= 2)
      {
        if (v25 == 1)
        {
          v49[0] = -2;
          v49[1] = v23 >> 2;
          *&v49[2] = -568892931;
          v49[6] = -64;
          *v50 = v22;
          BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v49);
          if ((v23 & 0x3FC) != 0)
          {
            do
            {
              if (v24 >= 0x800)
              {
                v27 = 2048;
              }

              else
              {
                v27 = v24;
              }

              BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, (v20 + (v22 - v21)));
              v22 += v27;
              v24 -= v27;
            }

            while (v24);
          }

          goto LABEL_39;
        }

        if (v25 != 5)
        {
          v39 = "0";
          DeviceFaultNotify("glmesrd_asicinit.cpp", 2761, "Bri_EswLoadBlockAndRequestCrc", "0");
          v40 = 2761;
          goto LABEL_58;
        }
      }

      v49[0] = -2;
      v49[1] = (v23 >> 2) - 1;
      *&v49[2] = 19709;
      *&v49[4] = v22;
      v49[6] = BYTE2(v22);
      v50[0] = HIBYTE(v22);
      BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v49);
      if ((v23 & 0x3FC) != 0)
      {
        do
        {
          if (v24 >= 0x800)
          {
            v26 = 2048;
          }

          else
          {
            v26 = v24;
          }

          BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, (v20 + (v22 - v21)));
          v22 += v26;
          v24 -= v26;
        }

        while (v24);
      }

LABEL_39:
      v48 = -4;
      BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, &v48);
      ++*(this + 187);
      if ((v23 & 3) != 0)
      {
        v28 = *(*(this + 16) + 8);
        if ((v28 - 2) < 2 || v28 == 5)
        {
          *v49 = 1291649278;
          *&v49[4] = v22 + (v23 | 0xFFFC);
          v49[6] = BYTE2(v22);
          v50[0] = HIBYTE(v22);
          v48 = -4;
          v30 = this;
        }

        else
        {
          if (v28 != 1)
          {
            v39 = "0";
            DeviceFaultNotify("glmesrd_asicinit.cpp", 2793, "Bri_EswLoadBlockAndRequestCrc", "0");
            v40 = 2793;
            goto LABEL_58;
          }

          *v49 = 1643971070;
          *&v49[4] = -8681;
          v49[6] = -64;
          *v50 = v22 + (v23 | 0xFFFC);
          v48 = -4;
          v30 = this;
        }

        BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(v30, v49);
        BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, (v20 + v22 + (v23 | 0xFFFFFFFC) - v21));
        BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, &v48);
        ++*(this + 187);
      }

      v19 -= v23;
      if (!v19)
      {
        v31 = *(*(this + 16) + 8);
        if ((v31 - 2) < 2)
        {
          goto LABEL_53;
        }

        if (v31 != 1)
        {
          if (v31 == 5)
          {
LABEL_53:
            *v49 = 1258094846;
            *&v49[4] = v21;
            v49[6] = BYTE2(v21);
            v50[0] = HIBYTE(v21);
            *&v50[1] = v47;
            v51 = -4;
            v32 = this;
            goto LABEL_55;
          }

          v39 = "0";
          DeviceFaultNotify("glmesrd_asicinit.cpp", 2819, "Bri_EswLoadBlockAndRequestCrc", "0");
          v40 = 2819;
LABEL_58:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", v40, v39);
        }

        *v49 = 570228990;
        v49[4] = 24;
        *&v49[5] = v21;
        *v50 = v47;
        v50[2] = -4;
        v32 = this;
LABEL_55:
        BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(v32, v49);
        ++*(this + 187);
        BlueFin::GlMeSrdAsicInitPatchLoader::IncLastPacketSent((this + 200), v33, v34, v35, v36, v37, v38);
        *(this + 86) = this;
        BlueFin::GlTimer::arm((this + 656), 5, 0, 0x5DCu);
        *(this + 680) = 1;
        if (*(this + 617) + *(this + 620) == 8)
        {
          return 0;
        }

        goto LABEL_13;
      }
    }
  }

  if (v8 == 5)
  {
    goto LABEL_64;
  }

  if (v8 != 12)
  {
    return v9;
  }

  if (*(a2 + 1) != 14)
  {
    return 0;
  }

  v10 = *(this + 618);
  v11 = this + 296;
  if (*(this + 40 * v10 + 324) != *(this + 776))
  {
    goto LABEL_64;
  }

  v12 = *&v11[40 * *(this + 618) + 32];
  v13 = *(this + 193);
  if ((*(this + 638) & 1) == 0 && v12 == v13)
  {
    v12 = *&v11[40 * *(this + 618) + 4] + *&v11[40 * *(this + 618) + 12];
    v13 = *(this + 192);
    goto LABEL_60;
  }

  if (!*(this + 638))
  {
LABEL_64:
    BlueFin::GlMeSrdAsicinit::RetryBri(this, a2);
    return 0;
  }

LABEL_60:
  if (v12 != v13)
  {
    goto LABEL_64;
  }

  v41 = v11[40 * *(this + 618) + 8];
  v42 = *(this + 620) - 1;
  *(this + 620) = v42;
  *(this + 618) = (v10 + 1) & 7;
  *(this + 192) = 0;
  if (*(this + 639))
  {
    if (v42)
    {
      return 0;
    }

    v9 = 0;
    *(this + 639) = 0;
  }

  else
  {
    if (BlueFin::GlMeSrdAsicInitPatchLoader::SetNextBlock((this + 200), a2, a3, a4, a5, a6, a7))
    {
      if (v41 != *(this + 272))
      {
        return 0;
      }

      v44 = "&GlMeSrdAsicinit::bri_wait4patchblockload";
      v45 = BlueFin::GlMeSrdAsicinit::bri_wait4patchblockload;
    }

    else
    {
      if (*(this + 620))
      {
        return 0;
      }

      if ((*(**(this + 16) + 256))(*(this + 16)) && ((*(**(this + 16) + 32))(*(this + 16)) & 1) == 0)
      {
        *(*(this + 16) + 555) = 1;
      }

      BlueFin::GlMeSrdAsicinit::Bri_GetOutOfLegacy(this);
      v44 = "&GlMeSrdAsicinit::esw_wait4version";
      v45 = BlueFin::GlMeSrdAsicinit::esw_wait4version;
    }

    BlueFin::QHsm::tran(this, v45, v44);
    return 0;
  }

  return v9;
}

uint64_t BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(BlueFin::GlMeSrdAsicinit *this, const unsigned __int8 *a2)
{
  v2 = MEMORY[0x2A1C7C4A8](this, a2);
  LOWORD(v4) = v3;
  v6 = v5;
  v7 = v2;
  v17 = *MEMORY[0x29EDCA608];
  if (v2[698] == 1)
  {
    if (v3)
    {
      v8 = v3;
      v4 = 0;
      do
      {
        v10 = *v6++;
        v9 = v10;
        if (v10 == 224)
        {
          *&v16[v4] = 736;
        }

        else
        {
          if (v9 != v2[696])
          {
            v11 = v4 + 1;
            if (v9 == v2[697])
            {
              v16[v4] = -32;
              v4 += 2;
              v16[v11] = 4;
            }

            else
            {
              v16[v4] = v9;
              v4 = v4 + 1;
            }

            goto LABEL_9;
          }

          *&v16[v4] = 992;
        }

        v4 += 2;
LABEL_9:
        if (v4 >= 0x1000u)
        {
          DeviceFaultNotify("glmesrd_asicinit.cpp", 3433, "Bri_SendAsicData", "usEscSize < sizeof(aucBuffer)");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", 3433, "usEscSize < sizeof(aucBuffer)");
        }

        --v8;
      }

      while (v8);
    }

    v6 = v16;
  }

  if (v2[736] == 1)
  {
    v13 = &unk_2A1F0D590;
    v14 = v4;
    v15 = v6;
    if (BlueFin::GlUtils::m_pInstance)
    {
      if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        off_2A1F0D5A8(&v13, 0, 0);
      }
    }
  }

  *(v7 + 186) += v4;
  return (*(**(v7 + 14) + 40))(*(v7 + 14), v6, v4);
}

uint64_t BlueFin::GlMeSrdAsicInitPatchLoader::CopyPacketIntoBuffer(BlueFin::GlMeSrdAsicInitPatchLoader *this, unsigned int a2)
{
  v4 = this + 40 * a2;
  *(v4 + 12) = *(this + 8);
  v4[104] = *(this + 72);
  *(v4 + 27) = *(this + 19);
  *(v4 + 14) = *(this + 10);
  *(v4 + 30) = *(this + 22);
  v4[124] = BlueFin::GlMeSrdAsicInitPatchLoader::GetBlockCRCBuf(this, a2);
  result = BlueFin::GlMeSrdAsicInitPatchLoader::GetBlockCheckSumBuf(this, a2);
  *(v4 + 32) = result;
  return result;
}

uint64_t BlueFin::GlMeSrdAsicInitPatchLoader::QueuePacketIntoBuffer(BlueFin::GlMeSrdAsicInitPatchLoader *this)
{
  v1 = this;
  if (!*(this + 417))
  {
    if (*(this + 421))
    {
      if (*(this + 72) == *(this + 40 * *(this + 418) + 104))
      {
        if (!BlueFin::GlMeSrdAsicInitPatchLoader::IsSamePacket(this) && *(v1 + 16) < *(v1 + 10))
        {
          goto LABEL_7;
        }
      }

      else if (!*(this + 420))
      {
        for (i = 0; i != 320; i += 40)
        {
          v5 = this + i;
          *(v5 + 27) = 0;
          *(v5 + 30) = 0;
          *(v5 + 12) = 0;
          v5[104] = 0;
        }

        *(this + 209) = 0;
        *(this + 420) = 0;
        *(this + 422) = 0;
        v2 = 1;
        *(this + 416) = 1;
        v3 = 0;
        goto LABEL_13;
      }

      return 0;
    }

LABEL_7:
    v3 = *(v1 + 419);
    v2 = 1;
    *(v1 + 416) = 1;
    this = v1;
LABEL_13:
    BlueFin::GlMeSrdAsicInitPatchLoader::CopyPacketIntoBuffer(this, v3);
    return v2;
  }

  --*(this + 417);
  return 1;
}

BOOL BlueFin::GlMeSrdAsicInitPatchLoader::SetNextBlock(BlueFin::GlMeSrdAsicInitPatchLoader *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  if (*(this + 416) == 1)
  {
    v8 = *(this + 22);
    v9 = *(this + 17);
    v10 = v8 - v9;
    v11 = *(this + 18);
    if (v8 - v9 - v11 >= 4)
    {
      v12 = *(this + 18);
    }

    else
    {
      v12 = v11 - 4;
    }

    if (v10 > v11)
    {
      LOWORD(v10) = v12;
    }

    v13 = v9 + v10;
    *(this + 17) = v13;
    if (v13 >= v8)
    {
      v14 = *(this + 16) + 1;
      *(this + 16) = v14;
      if (v14 < *(this + 10))
      {
        BlueFin::GlMeSrdAsicInitPatchLoader::InitSegment(this, a2, a3, a4, a5, a6, a7);
      }
    }

    *(this + 416) = 0;
  }

  return *(this + 16) < *(this + 10);
}

uint64_t *BlueFin::GlQueue::Remove(uint64_t *this, int a2)
{
  if (*this)
  {
    v2 = this;
    v3 = *(this + 21) + 1;
    if ((v3 & 0x10000) == 0)
    {
      v5 = 0;
      do
      {
        this = BlueFin::GlQueue::get(&v6, v2);
        if (v6 != a2)
        {
          this = BlueFin::GlQueue::putLIFO(v2, v6, SBYTE1(v6));
        }

        ++v5;
      }

      while (v5 < v3);
    }
  }

  return this;
}

BOOL BlueFin::GlMeSrdAsicInitPatchLoader::IsSamePacket(BlueFin::GlMeSrdAsicInitPatchLoader *this)
{
  v1 = *(this + 419) - 1;
  if (v1 < 0)
  {
    v1 = 7;
  }

  v2 = this + 40 * v1;
  return *(v2 + 25) == *(this + 17) && v2[104] == *(this + 72) && *(v2 + 24) == *(this + 16) && *(v2 + 27) == *(this + 19) && *(v2 + 30) == *(this + 22);
}

uint64_t BlueFin::GlMeSrdAsicInitPatchLoader::GetBlockCRCBuf(BlueFin::GlMeSrdAsicInitPatchLoader *this, unsigned int a2)
{
  v2 = this + 96;
  v3 = this + 40 * a2 + 96;
  v4 = *(v3 + 1);
  v5 = *(v3 + 6) - v4;
  v6 = *(this + 18);
  if (v5 - v6 >= 4)
  {
    v7 = *(this + 18);
  }

  else
  {
    v7 = v6 + 65532;
  }

  if (v5 > v6)
  {
    v5 = v7;
  }

  if (!v5)
  {
    return 0;
  }

  LOBYTE(result) = 0;
  v9 = (*&v2[40 * a2 + 16] + v4);
  do
  {
    v10 = *v9++;
    --v5;
    result = BlueFin::GlUtlCrc::ucCrcTable[(v10 ^ result)];
  }

  while (v5);
  return result;
}

uint64_t BlueFin::GlMeSrdAsicInitPatchLoader::GetBlockCheckSumBuf(BlueFin::GlMeSrdAsicInitPatchLoader *this, unsigned int a2)
{
  v2 = this + 40 * a2;
  v3 = *(v2 + 25);
  LODWORD(v4) = *(v2 + 30) - v3;
  v5 = *(this + 18);
  if (v4 - v5 >= 4)
  {
    v6 = *(this + 18);
  }

  else
  {
    v6 = v5 - 4;
  }

  if (v4 > v5)
  {
    LOWORD(v4) = v6;
  }

  result = 0;
  v4 = v4;
  if (v4)
  {
    v8 = (*(v2 + 14) + v3);
    do
    {
      v9 = *v8++;
      result = (result + v9);
      --v4;
    }

    while (v4);
  }

  return result;
}

BlueFin::GlMeSrdAsicInitPatchLoader *BlueFin::GlMeSrdAsicInitPatchLoader::IncLastPacketSent(BlueFin::GlMeSrdAsicInitPatchLoader *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  ++*(this + 420);
  ++*(this + 421);
  v7 = ++*(this + 422);
  *(this + 419) = (*(this + 419) + 1) & 7;
  if (v7 <= 7 && !*(this + 417))
  {
    return BlueFin::GlMeSrdAsicInitPatchLoader::SetNextBlock(this, a2, a3, a4, a5, a6, a7);
  }

  return this;
}

char *BlueFin::GlDbgCodec::Write(BlueFin::GlDbgCodec *this, unsigned int *a2)
{
  result = (*(*this + 120))(this);
  if (result)
  {
    *v5 = bswap32(*a2);
    return BlueFin::GlDbgCodecBase::Encode(this, v5, 4, 0, 0);
  }

  return result;
}

{
  result = (*(*this + 120))(this);
  if (result)
  {

    return BlueFin::GlDbgCodec::Write(this, a2);
  }

  return result;
}

{
  result = (*(*this + 120))(this);
  if (result)
  {

    return BlueFin::GlDbgCodec::Write(this, a2);
  }

  return result;
}

void *BlueFin::GlDbgCodec::Write(BlueFin::GlDbgCodec *this, const BlueFin::GlRequestImpl *a2)
{
  result = (*(*this + 120))(this);
  if (result)
  {
    *(this + 143) = 2;
    v5 = a2;
    return BlueFin::GlDbgCodec::Rvw(this, &v5);
  }

  return result;
}

BlueFin::GlSettingsImpl *BlueFin::GlPeObjFactory::MakeGlSettingImpl(uint64_t (**this)(uint64_t))
{
  result = BlueFin::GlMemAlloc::glAllocateMemory(39, 26400, *this);
  if (result)
  {
    return BlueFin::GlSettingsImpl::GlSettingsImpl(result);
  }

  return result;
}

BlueFin::GlSettingsImpl *BlueFin::GlSettingsImpl::GlSettingsImpl(BlueFin::GlSettingsImpl *this)
{
  *this = &unk_2A1F17E10;
  *(this + 1) = &unk_2A1F17DE0;
  *(this + 2) = 1;
  *(this + 12) = 257;
  v2 = this + 25868;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  *(this + 60) = 0;
  *(this + 34) = 2049;
  *(this + 70) = 1;
  *(this + 24) = 0;
  *(this + 72) = 0u;
  *(this + 85) = 0;
  *(this + 30) = 10000000;
  *(this + 69) = 1000;
  *(this + 140) = xmmword_298A45700;
  *(this + 39) = 127;
  *(this + 20) = this + 172;
  v3 = (this + 160);
  *(this + 168) = 3;
  *(this + 45) = 0;
  *(this + 172) = 0;
  *(this + 196) = 0;
  *(this + 23) = this + 196;
  *(this + 192) = 3;
  *(this + 51) = 0;
  *(this + 220) = 0u;
  *(this + 26) = this + 220;
  v4 = (this + 208);
  *(this + 216) = 8;
  *(this + 236) = 0u;
  *(this + 263) = 0;
  *(this + 266) = 0;
  *(this + 68) = 100;
  *(this + 283) = 0;
  *(this + 796) = 1;
  *(this + 829) = 0;
  *(this + 50) = xmmword_298A45710;
  *(this + 51) = 0u;
  *(this + 837) = 168;
  *(this + 211) = 16000;
  *(this + 856) = 0;
  *(this + 106) = 0;
  *(this + 109) = this + 864;
  *(this + 220) = 0;
  *(this + 432) = 0;
  *(this + 896) = 0;
  *(this + 113) = 0x3FF0000000000000;
  *(this + 114) = 1092616192;
  *(this + 919) = 0;
  *(this + 923) = 1;
  *(this + 925) = 0;
  *(this + 1296) = 0;
  *(this + 125) = 0;
  *(this + 984) = 0u;
  *(this + 1298) = vdup_n_s16(0x3E8u);
  *(this + 1306) = 0;
  *(this + 1308) = 0x100000000;
  *(this + 658) = 4881;
  *(this + 1318) = 0;
  *(this + 5784) = 1;
  *(this + 1445) = 0;
  *(this + 12934) = 0;
  *(this + 6488) = 0;
  *(this + 12978) = 0;
  *(this + 11578) = 0;
  *(this + 11572) = 0;
  *(this + 25968) = 0;
  *(this + 3245) = 0;
  *(this + 25972) = 0u;
  *(this + 25996) = 0u;
  *(this + 25986) = 0;
  *(this + 13006) = 3;
  *(this + 26014) = 0;
  *(this + 1626) = 0u;
  *(this + 1627) = 0u;
  *(this + 26045) = 0;
  *(this + 26054) = 0xFFFF;
  *(this + 6515) = 0;
  *(this + 26064) = 0;
  *(this + 26163) = 0;
  *(this + 6542) = 0;
  *(this + 26172) = 0;
  *(this + 26174) = 0;
  *(this + 6545) = 0;
  *(this + 13092) = 14;
  __asm { FMOV            V0.4S, #-1.0 }

  *(this + 26188) = _Q0;
  *(this + 6551) = -1082130432;
  *(this + 13104) = 0;
  *(this + 13110) = 0;
  *(this + 26212) = 0;
  *(this + 13111) = 255;
  *(this + 26224) = 25;
  *(this + 3279) = this + 26244;
  *(this + 26240) = 2;
  *(this + 26244) = 0;
  *(this + 26256) = 0;
  *(this + 6572) = 300;
  *(this + 6573) = 0x10000;
  *(this + 13148) = 1;
  *(this + 26298) = 0;
  *(this + 6575) = 0;
  *(this + 13152) = 0;
  *(this + 3289) = 0;
  *(this + 13160) = 75;
  *(this + 6586) = 0;
  *(this + 26339) = 0;
  *(this + 6584) = 0;
  *(this + 36) = 5;
  (*(*this + 40))(this, *(this + 4));
  bzero(*(this + 23), ((4 * *(this + 192) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  BlueFin::GlSetBase::Remove(v3, 1);
  v10 = 0;
  **v3 |= 0x4012608u;
  *(this + 764) = 0u;
  *(this + 780) = 0u;
  *(this + 732) = 0u;
  *(this + 748) = 0u;
  *(this + 700) = 0u;
  *(this + 716) = 0u;
  *(this + 668) = 0u;
  *(this + 684) = 0u;
  *(this + 636) = 0u;
  *(this + 652) = 0u;
  *(this + 604) = 0u;
  *(this + 620) = 0u;
  *(this + 572) = 0u;
  *(this + 588) = 0u;
  *(this + 540) = 0u;
  *(this + 556) = 0u;
  *(this + 508) = 0u;
  *(this + 524) = 0u;
  *(this + 476) = 0u;
  *(this + 492) = 0u;
  *(this + 444) = 0u;
  *(this + 460) = 0u;
  *(this + 412) = 0u;
  *(this + 428) = 0u;
  *(this + 380) = 0u;
  *(this + 396) = 0u;
  *(this + 348) = 0u;
  *(this + 364) = 0u;
  *(this + 316) = 0u;
  *(this + 332) = 0u;
  *(this + 284) = 0u;
  *(this + 300) = 0u;
  **(this + 109) = 0;
  *(this + 220) = 0;
  *(this + 7) = 1356803128;
  BlueFin::GlSettingsImpl::m_ulActiveBuildFct = 1356803128;
  *(this + 259) = 0;
  *(this + 64) = 0;
  *(this + 279) = 0;
  *(this + 69) = 0;
  *(this + 122) = 0;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 58) = 0u;
  do
  {
    v11 = this + v10;
    *(v11 + 552) = 0;
    *(v11 + 277) = 0;
    v10 += 8;
  }

  while (v10 != 192);
  bzero(this + 11588, 0x37C8uLL);
  strcpy(this + 25870, "untitled");
  bzero(this + 1319, 0x2800uLL);
  *(this + 63) = xmmword_298A45720;
  *(this + 64) = unk_298A45730;
  *(this + 65) = xmmword_298A45740;
  *(this + 66) = unk_298A45750;
  *(this + 67) = xmmword_298A45760;
  *(this + 1087) = *(&xmmword_298A45760 + 15);
  *(this + 26065) = xmmword_298A45720;
  *(this + 26081) = unk_298A45730;
  *(this + 1634) = *(&xmmword_298A45760 + 15);
  *(this + 26113) = unk_298A45750;
  *(this + 26129) = xmmword_298A45760;
  *(this + 26097) = xmmword_298A45740;
  memset(*(this + 26), 255, 4 * *(this + 216));
  ULong = BlueFin::GlSetBase::GetULong(v4, 0);
  BlueFin::GlSetBase::SetULong(v4, 0, ULong & 0xFFFFFFFE);
  v13 = (32 * (*(this + 216) & 0x3F) - 1);
  if (v13 >= 0xBE)
  {
    v14 = 189;
    v15 = -67;
    do
    {
      v16 = v15 & 0x1F;
      if ((v15 & 0x1F) != 0)
      {
        v17 = BlueFin::GlSetBase::GetULong(v4, (v14 >> 5));
        BlueFin::GlSetBase::SetULong(v4, (v14 >> 5), v17 & ~(-1 << v16));
        LOWORD(v14) = v14 - v16;
      }

      else
      {
        BlueFin::GlSetBase::SetULong(v4, (v14 >> 5), 0);
      }

      v15 = v14 + 32;
      v14 = (v14 + 32);
    }

    while (v14 < v13);
  }

  *(v2 + 196) = 0;
  *(this + 3291) = 0;
  *(this + 3283) = 0;
  *(this + 3285) = 0;
  *(this + 3284) = 0;
  *(v2 + 228) = 0;
  *(this + 26348) = xmmword_298A4577F;
  *(this + 26360) = *(&xmmword_298A4577F + 12);
  return this;
}

uint64_t BlueFin::GlSettingsImpl::SetFrequencyPlan(uint64_t result, int a2)
{
  v2 = 0;
  v3 = 10000000;
  v4 = 0x3E7AD7F29ABCAF48;
  v5 = 0x3EC0C6F7A0B5ED8DLL;
  v6 = 104;
  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = 0;
      v3 = 12000000;
      goto LABEL_64;
    case 3:
      v2 = 0;
      v3 = 13000000;
      goto LABEL_64;
    case 4:
      v2 = 0;
      v3 = 14400000;
      goto LABEL_64;
    case 5:
      v2 = 0;
      v3 = 15360000;
      goto LABEL_64;
    case 6:
      v2 = 0;
      v3 = 16200000;
      goto LABEL_64;
    case 7:
      v2 = 0;
      v3 = 16367667;
      goto LABEL_64;
    case 8:
      v2 = 0;
      v3 = 16369000;
      goto LABEL_64;
    case 9:
      v2 = 0;
      v3 = 16800000;
      goto LABEL_64;
    case 10:
      v2 = 0;
      v3 = 19200000;
      goto LABEL_64;
    case 11:
      v2 = 0;
      v3 = 19680000;
      goto LABEL_64;
    case 12:
      v2 = 0;
      v3 = 19800000;
      goto LABEL_64;
    case 13:
      v2 = 0;
      v3 = 20000000;
      goto LABEL_64;
    case 14:
      v2 = 0;
      v3 = 26000000;
      goto LABEL_64;
    case 15:
      v2 = 0;
      v3 = 33600000;
      goto LABEL_64;
    case 16:
      v2 = 0;
      v3 = 38400000;
      goto LABEL_64;
    case 17:
      v2 = 0;
      v3 = 52000000;
      goto LABEL_64;
    case 18:
      goto LABEL_11;
    case 19:
      v3 = 26000000;
      v9 = 16367667;
      goto LABEL_54;
    case 20:
      v3 = 26000000;
      v9 = 16369000;
      goto LABEL_54;
    case 21:
      goto LABEL_41;
    case 22:
      v3 = 13000000;
      goto LABEL_41;
    case 23:
      v3 = 26000000;
LABEL_41:
      v9 = 16800000;
      goto LABEL_54;
    case 24:
      v3 = 26000000;
      v9 = 19200000;
      goto LABEL_54;
    case 25:
      goto LABEL_53;
    case 26:
      *(result + 104) = 26000000;
      v2 = 1;
      v3 = 19660800;
      goto LABEL_62;
    case 27:
      v3 = 19200000;
      goto LABEL_53;
    case 28:
      v3 = 26000000;
LABEL_11:
      *(result + 104) = v3;
      goto LABEL_55;
    case 29:
      v3 = 38400000;
      goto LABEL_53;
    case 30:
      v3 = 52000000;
LABEL_53:
      v9 = 26000000;
      goto LABEL_54;
    case 31:
      v3 = 26000000;
      v9 = 33600000;
LABEL_54:
      *(result + 104) = v9;
LABEL_55:
      v2 = 1;
      goto LABEL_62;
    case 32:
      goto LABEL_45;
    case 33:
      v3 = 26000000;
      v7 = 16367667;
      goto LABEL_50;
    case 34:
      goto LABEL_13;
    case 35:
      v3 = 26000000;
LABEL_13:
      v7 = 16369000;
      goto LABEL_50;
    case 36:
      goto LABEL_9;
    case 37:
      v3 = 13000000;
      goto LABEL_9;
    case 38:
      v3 = 26000000;
LABEL_9:
      v7 = 16800000;
      goto LABEL_50;
    case 39:
      v3 = 26000000;
      v7 = 19200000;
      goto LABEL_50;
    case 40:
      v8 = 19200000;
      goto LABEL_60;
    case 41:
      goto LABEL_39;
    case 42:
      v3 = 13000000;
      goto LABEL_39;
    case 43:
      v3 = 26000000;
LABEL_45:
      *(result + 104) = v3;
      goto LABEL_51;
    case 44:
      *(result + 104) = 26000000;
      v2 = 1;
      v3 = 1625000;
      goto LABEL_61;
    case 45:
      *(result + 104) = 26000000;
      v2 = 1;
      v3 = 23040000;
      goto LABEL_61;
    case 46:
      v3 = 38400000;
LABEL_39:
      v7 = 26000000;
      goto LABEL_50;
    case 47:
      v8 = 26000000;
      goto LABEL_60;
    case 48:
      v3 = 26000000;
      v7 = 33600000;
LABEL_50:
      *(result + 104) = v7;
LABEL_51:
      v2 = 1;
      goto LABEL_61;
    case 49:
      v8 = 52000000;
      goto LABEL_60;
    case 50:
      *(result + 104) = 10000000;
      v2 = 1;
      v4 = 0x3EA0C6F7A0B5ED8DLL;
      goto LABEL_62;
    case 51:
      v2 = 0;
      v3 = 26000000;
      v5 = 0x3ED92A737110E454;
      goto LABEL_64;
    case 52:
      v2 = 0;
      v3 = 12655000;
      goto LABEL_64;
    case 53:
      v2 = 0;
      v3 = 18260000;
      goto LABEL_64;
    case 54:
      v2 = 0;
      v3 = 25310000;
      goto LABEL_64;
    case 55:
      v2 = 0;
      v3 = 37400000;
LABEL_64:
      v6 = 104;
      break;
    case 56:
      v8 = 38400000;
LABEL_60:
      *(result + 104) = v8;
      v2 = 1;
      v3 = 49152000;
LABEL_61:
      v4 = 0x3E9421F5F40D8376;
LABEL_62:
      v6 = 120;
      break;
    default:
      DeviceFaultNotify("glsettings.cpp", 944, "SetFrequencyPlan", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsettings.cpp", 944, "0");
  }

  *(result + v6) = v3;
  *(result + 112) = v5;
  *(result + 128) = v4;
  *(result + 100) = 3;
  *(result + 136) = v2;
  *(result + 16) = a2;
  return result;
}

uint64_t BlueFin::GlDbgProxyGlEngineOnStart(uint64_t a1, BlueFin::GlSettingsImpl *a2)
{
  v3 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnStart(v3, a2);
}

void FireDeviceLog::DeviceLogLine(FireDeviceLog *this, const char *a2)
{
  FireDeviceLog::GetLineLeading(0x53, 3, &v12);
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  v3 = *(FireResourceMgr::fInstance + 16);
  v4 = SHIBYTE(v12.__r_.__value_.__r.__words[2]);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  v6 = strlen(this);
  v7 = __p;
  std::string::basic_string[abi:ne200100](__p, size + v6);
  if (v11 < 0)
  {
    v7 = __p[0];
  }

  if (size)
  {
    if (v4 >= 0)
    {
      v8 = &v12;
    }

    else
    {
      v8 = v12.__r_.__value_.__r.__words[0];
    }

    memmove(v7, v8, size);
  }

  v9 = v7 + size;
  if (v6)
  {
    memmove(v9, this, v6);
  }

  v9[v6] = 0;
  (*(*v3 + 16))(v3, 3, __p);
  if ((v11 & 0x80000000) == 0)
  {
    if ((v4 & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(v12.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if (v4 < 0)
  {
    goto LABEL_19;
  }
}

void sub_2987A6B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

uint64_t BlueFin::GlEngineImplStd::setOnChipMeSetting(uint64_t result, int *a2, char a3)
{
  if (*(result + 4928) != 1)
  {
    v4 = result;
    v5 = *a2;
    v6 = *(result + 24);
    if (v6)
    {
      BlueFin::GlPeReqBag::GetNonInstantaneousRequests((&v20 + 4), (v6 + 137024));
      v7 = HIDWORD(v20);
      BlueFin::GlPePendingBag::GetNonInstantaneousRequests(&v20, (*(v4 + 24) + 132640));
      v5 |= v7 | v20;
    }

    if (v5 || (a3 & 1) != 0)
    {
      v10 = *(v4 + 24);
      if (!v10 || !*(v10 + 157792) && !*(v10 + 157832))
      {
        goto LABEL_19;
      }

      v11 = 0;
      LOBYTE(v12) = 0;
      v13 = v10 + 137024;
      do
      {
        v14 = *(v13 + v11);
        if (v14)
        {
          v15 = *(v14 + 8);
          if (*(v15 + 16) == 13)
          {
            v12 = *(v15 + 172) >> 7;
          }
        }

        v11 += 8;
      }

      while (v11 != 576);
      if (v12)
      {
        v16 = 0;
      }

      else
      {
LABEL_19:
        v16 = v5 == 4096 || (v5 & 0xFFFFEFFF) == 0x2000;
      }

      if (*(v4 + 8))
      {
        v17 = "FALSE";
        if (v16)
        {
          v17 = "TRUE";
        }

        GlCustomLog(15, "GlEngineImplStd::ShouldBeUsingOnChipMe %s\n", v17);
        v18 = *(**(v4 + 8) + 1120);

        return v18();
      }

      else
      {
        v19 = "FALSE";
        if (v16)
        {
          v19 = "TRUE";
        }

        result = GlCustomLog(15, "GlEngineImplStd:: Store ShouldBeUsingOnChipMe %s\n", v19);
        *(v4 + 593) = v16;
      }
    }

    else
    {
      v8 = (*(**(v4 + 8) + 1112))(*(v4 + 8));
      v9 = "host";
      if (v8)
      {
        v9 = "chip";
      }

      return GlCustomLog(15, "Remain in on-%s mode\n", v9);
    }
  }

  return result;
}

uint64_t BlueFin::GlSetBase::GetULong(BlueFin::GlSetBase *this, unsigned int a2)
{
  if (*(this + 8) <= a2)
  {
    DeviceFaultNotify("glutl_set.cpp", 239, "GetULong", "ucIndex < m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 239, "ucIndex < m_ucUlongSize");
  }

  return *(*this + 4 * a2);
}

unint64_t BlueFin::GlFormat::gl_format(BlueFin::GlFormat *this, char *a2, unsigned __int8 *a3, const char *a4, char *__s, char *a6, _BOOL8 a7)
{
  result = 0;
  v85 = a4;
  if (!a2 || !this || !a3)
  {
    return result;
  }

  v10 = *a3;
  if (!*a3)
  {
    v14 = 0;
    result = 0;
    if (!a7)
    {
      return result;
    }

    goto LABEL_172;
  }

  v11 = a6;
  v14 = 0;
  while (2)
  {
    if (v10 != 37)
    {
      v15 = a3 + 1;
      if (!a7)
      {
        goto LABEL_160;
      }

      *this = v10;
      this = (this + 1);
      goto LABEL_12;
    }

    v15 = a3 + 2;
    v16 = a3[1];
    if (v16 == 37)
    {
      if (!a7)
      {
        goto LABEL_160;
      }

      *this = 37;
      this = (this + 1);
LABEL_12:
      v14 = (v14 + 1);
      goto LABEL_160;
    }

    v17 = 0;
    while (v16 <= 0x29u)
    {
      switch(v16)
      {
        case ' ':
          v17 |= 8u;
          break;
        case '#':
          v17 |= 1u;
          break;
        case '\'':
          break;
        default:
          goto LABEL_62;
      }

LABEL_28:
      v18 = *v15++;
      LOBYTE(v16) = v18;
      if (!v18)
      {
        v19 = 0;
        v20 = 0;
        goto LABEL_30;
      }
    }

    if (v16 > 0x2Cu)
    {
      if (v16 == 45)
      {
        v17 |= 4u;
      }

      else
      {
        if (v16 != 48)
        {
          goto LABEL_62;
        }

        v17 |= 2u;
      }

      goto LABEL_28;
    }

    if (v16 == 43)
    {
      v17 |= 0x10u;
      goto LABEL_28;
    }

    if (v16 == 42)
    {
      if (v11)
      {
        v27 = v85;
        v85 += 8;
        v28 = *v27;
      }

      else
      {
        v47 = *__s;
        v48 = __s[1];
        __s += 2;
        v28 = v47 | (v48 << 8);
      }

      if (v28 >= 0)
      {
        v20 = v28;
      }

      else
      {
        v20 = -v28;
      }

      v17 |= 4 * (v28 >> 31);
      v19 = 0;
      if (!a7)
      {
        *this = v20;
        v49 = (this + 1);
        v50 = (v14 + 1);
        if (v50 < a2)
        {
          BYTE1(v51) = BYTE1(v20);
          goto LABEL_115;
        }

LABEL_154:
        LOBYTE(v16) = 42;
        v14 = v50;
        this = v49;
        goto LABEL_30;
      }

      goto LABEL_151;
    }

LABEL_62:
    if ((v16 - 48) > 9u)
    {
      v20 = 0;
    }

    else
    {
      v20 = 0;
      do
      {
        v20 = 10 * v20 + v16 - 48;
        v29 = *v15++;
        LOBYTE(v16) = v29;
      }

      while ((v29 - 48) < 0xA);
    }

    if (v16 != 46)
    {
      goto LABEL_131;
    }

    v17 |= 0x20u;
    v52 = *v15++;
    v16 = v52;
    if (v52 == 42)
    {
      if (v11)
      {
        v53 = v85;
        v85 += 8;
        v54 = *v53;
      }

      else
      {
        v54 = 0;
        v67 = *__s;
        v68 = __s[1];
        __s += 2;
        v20 = v67 | (v68 << 16);
      }

      v19 = v54 & ~(v54 >> 31);
      if (!a7)
      {
        *this = v19;
        v49 = (this + 1);
        v50 = (v14 + 1);
        if (v50 >= a2)
        {
          goto LABEL_154;
        }

        v51 = v54 & ~(v54 >> 31);
LABEL_115:
        *(this + 1) = BYTE1(v51);
        this = (this + 2);
        v14 = (v14 + 2);
      }

LABEL_151:
      LOBYTE(v16) = 42;
      goto LABEL_30;
    }

    if ((v16 - 48) > 9)
    {
LABEL_131:
      v19 = 0;
      goto LABEL_30;
    }

    v19 = 0;
    do
    {
      v19 = 10 * v19 + v16 - 48;
      v59 = *v15++;
      LOBYTE(v16) = v59;
    }

    while ((v59 - 48) < 0xA);
LABEL_30:
    if (v16 <= 0x67u)
    {
      if (v16 > 0x57u)
      {
        if (v16 <= 0x64u)
        {
          if (v16 != 88)
          {
            if (v16 == 99)
            {
              if (v11)
              {
                v55 = v85;
                v85 += 8;
                v56 = *v55;
              }

              else
              {
                v60 = *__s;
                __s += 2;
                LOBYTE(v56) = v60;
              }

              if (a2 == v14)
              {
                v61 = 0;
              }

              else
              {
                *this = v56;
                v61 = 1;
                if (&a2[-v14] != 1 && !a7)
                {
                  *(this + 1) = 0;
                  v61 = 2;
                }
              }

              v14 = v61 + v14;
              this = (this + v61);
              goto LABEL_160;
            }

            if (v16 == 100)
            {
              goto LABEL_102;
            }

            goto LABEL_47;
          }

          goto LABEL_95;
        }
      }

      else
      {
        if (v16 == 76)
        {
          goto LABEL_46;
        }

        if (v16 != 69 && v16 != 71)
        {
          goto LABEL_47;
        }
      }

      *v84 = 0;
      if (v11)
      {
        v30 = v85;
        v85 += 8;
        v31 = *v30;
      }

      else
      {
        v32 = *__s;
        __s += 8;
        v31 = v32;
      }

      *v84 = v31;
      if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        if (v16 == 102)
        {
          if (fabs(v31) <= 1.0e17)
          {
            LOBYTE(v16) = 102;
          }

          else if (v14 >= a2)
          {
            LOBYTE(v16) = 103;
          }

          else
          {
            v38 = 45;
            v39 = "[%f -> %g as number too big!]-";
            do
            {
              *this = v38;
              this = (this + 1);
              v14 = (v14 + 1);
              v40 = *v39++;
              v38 = v40;
              if (v40)
              {
                v41 = v14 >= a2;
              }

              else
              {
                v41 = 1;
              }
            }

            while (!v41);
            LOBYTE(v16) = 103;
          }
        }

        goto LABEL_158;
      }

      v33 = a1Finite[0];
      if (a1Finite[0])
      {
        v34 = v14 >= a2;
      }

      else
      {
        v34 = 1;
      }

      if (!v34)
      {
        v35 = ".!FINITE";
        do
        {
          *this = v33;
          this = (this + 1);
          v14 = (v14 + 1);
          v36 = *v35++;
          v33 = v36;
          if (v36)
          {
            v37 = v14 >= a2;
          }

          else
          {
            v37 = 1;
          }
        }

        while (!v37);
      }

      goto LABEL_160;
    }

    if (v16 > 0x6Bu)
    {
      if (v16 <= 0x6Eu)
      {
        if (v16 != 108)
        {
          goto LABEL_47;
        }

        if ((v17 & 0x400) != 0)
        {
          v17 = v17 & 0xFFFFF3FF | 0x800;
        }

        else
        {
          if ((v17 & 0x800) != 0)
          {
            goto LABEL_47;
          }

          v17 |= 0x400u;
        }

        goto LABEL_46;
      }

      if (v16 <= 0x74u)
      {
        if (v16 == 111)
        {
          goto LABEL_95;
        }

        if (v16 != 115)
        {
          goto LABEL_47;
        }

        if (v11)
        {
          v22 = v85;
          v85 += 8;
          v23 = *v22;
          v24 = &a2[-v14];
          v25 = this;
          v26 = 115;
          goto LABEL_159;
        }

        v63 = BlueFin::GlFormat::gl_format_param(this, &a2[-v14], 0x73uLL, v17, v20, v19, __s, a7, v84[0]);
        LODWORD(v64) = *__s;
        if (*__s)
        {
          v64 = 0;
            ;
          }
        }

        v14 = v63 + v14;
        this = (this + v63);
        if (v64)
        {
          v66 = 1;
        }

        else
        {
          v66 = 2;
        }

        __s += (v66 + v64);
LABEL_160:
        v10 = *v15;
        if (*v15)
        {
          v71 = v14 >= a2;
        }

        else
        {
          v71 = 1;
        }

        a3 = v15;
        if (v71)
        {
          if (a7)
          {
            if (v14 >= a2)
            {
              goto LABEL_170;
            }

LABEL_172:
            *this = 0;
          }

          return v14;
        }

        continue;
      }

      if (v16 != 117 && v16 != 120)
      {
        goto LABEL_47;
      }

LABEL_95:
      *v84 = 0;
      if (v11)
      {
        if ((v17 & 0x800) == 0)
        {
          v42 = v85;
          v85 += 8;
          v43 = *v42;
          goto LABEL_157;
        }

        goto LABEL_124;
      }

      if ((v17 & 0x800) == 0)
      {
        *v84 = *__s;
        v44 = *v84 & 0xFFFFFFFFFFFF00FFLL | (__s[1] << 8);
        *v84 = v44;
        if ((v17 & 0x400) == 0)
        {
          __s += 2;
          goto LABEL_158;
        }

        goto LABEL_156;
      }

      goto LABEL_125;
    }

    break;
  }

  if (v16 == 104)
  {
    if ((v17 & 0x200) != 0)
    {
      v17 |= 0x100u;
    }

    else
    {
      if ((v17 & 0x100) != 0)
      {
        goto LABEL_47;
      }

      v17 |= 0x200u;
    }

LABEL_46:
    v21 = *v15++;
    LOBYTE(v16) = v21;
    if (!v21)
    {
      goto LABEL_47;
    }

    goto LABEL_30;
  }

  if (v16 == 105)
  {
LABEL_102:
    *v84 = 0;
    if ((v17 & 0x800) == 0)
    {
      if ((v17 & 0x400) == 0)
      {
        if ((v17 & 0x200) == 0 && (v17 & 0x100) != 0)
        {
          if (v11)
          {
            goto LABEL_140;
          }

          v72 = *__s;
          __s += 2;
          v43 = v72;
        }

        else
        {
          if (!v11)
          {
            v45 = *__s;
            v46 = __s[1];
            __s += 2;
            v43 = (v46 << 8) | v45;
            goto LABEL_157;
          }

LABEL_140:
          v62 = v85;
          v85 += 8;
          v43 = *v62;
        }

LABEL_157:
        *v84 = v43;
LABEL_158:
        v24 = &a2[-v14];
        v26 = v16;
        v23 = v84;
        v25 = this;
LABEL_159:
        v70 = BlueFin::GlFormat::gl_format_param(v25, v24, v26, v17, v20, v19, v23, a7, v84[0]);
        v14 = v70 + v14;
        this = (this + v70);
        goto LABEL_160;
      }

      if (v11)
      {
        goto LABEL_140;
      }

      *v84 = *__s;
      v44 = *v84 & 0xFFFFFFFFFFFF00FFLL | (__s[1] << 8);
      *v84 = v44;
LABEL_156:
      *v84 = v44 & 0xFFFFFFFFFF00FFFFLL | (__s[2] << 16);
      v69 = __s[3];
      __s += 4;
      v43 = *v84 & 0xFFFFFFFF00FFFFFFLL | (v69 << 24);
      goto LABEL_157;
    }

    if (v11)
    {
LABEL_124:
      v57 = v85;
      v85 += 8;
      v43 = *v57;
      goto LABEL_157;
    }

LABEL_125:
    *v84 = *__s;
    *v84 = *v84 & 0xFFFFFFFFFFFF00FFLL | (__s[1] << 8);
    *v84 = *v84 & 0xFFFFFFFFFF00FFFFLL | (__s[2] << 16);
    *v84 = *v84 & 0xFFFFFFFF00FFFFFFLL | (__s[3] << 24);
    *v84 = *v84 & 0xFFFFFF00FFFFFFFFLL | (__s[4] << 32);
    *v84 = *v84 & 0xFFFF00FFFFFFFFFFLL | (__s[5] << 40);
    *v84 = *v84 & 0xFF00FFFFFFFFFFFFLL | (__s[6] << 48);
    v58 = __s[7];
    __s += 8;
    v43 = *v84 | (v58 << 56);
    goto LABEL_157;
  }

LABEL_47:
  if (!a7)
  {
    goto LABEL_160;
  }

  if (v14 < a2)
  {
    v73 = v14 + 26;
    v74 = 26;
    v75 = "***Unsupported format***:'";
    while (v74)
    {
      v76 = *v75++;
      *this = v76;
      this = (this + 1);
      v14 = (v14 + 1);
      --v74;
      if (v14 >= a2)
      {
        goto LABEL_182;
      }
    }

    LODWORD(v14) = v73;
  }

LABEL_182:
  v77 = 0;
  do
  {
    v78 = v15[v77-- - 2];
  }

  while (v78 != 37);
  v79 = v14;
  if (v14 < a2)
  {
    LODWORD(v79) = v14;
    do
    {
      *this = v15[v77 - 1];
      this = (this + 1);
      v79 = (v79 + 1);
      v80 = v79 >= a2 || v77++ == 0;
      LODWORD(v14) = v79;
    }

    while (!v80);
  }

  if (v79 >= a2)
  {
LABEL_170:
    *(this - 1) = 0;
    return (v14 - 1);
  }

  result = (v14 + 2);
  v81 = "'\n";
  v82 = 2;
  while (v82)
  {
    v83 = *v81++;
    *this = v83;
    this = (this + 1);
    v14 = (v14 + 1);
    --v82;
    if (v14 >= a2)
    {
      goto LABEL_170;
    }
  }

  *this = 0;
  return result;
}

uint64_t BlueFin::GlGnssSetIterator::Reset(uint64_t this)
{
  v1 = this;
  v2 = 0;
  v3 = 1;
  do
  {
    while (1)
    {
      while ((v3 & 1) == 0)
      {
        v3 = 0;
        if (++v2 == 7)
        {
          goto LABEL_20;
        }
      }

      v4 = *(this + 168) + 24 * v2;
      v5 = *v4;
      if (**v4)
      {
        v6 = 1;
        goto LABEL_15;
      }

      v7 = *(v4 + 8);
      v8 = v7 >= 2;
      v9 = v7 - 2;
      if (v8)
      {
        break;
      }

      ++v2;
      v3 = 1;
      if (v2 == 7)
      {
        goto LABEL_25;
      }
    }

    v10 = v5 + 1;
    do
    {
      v11 = *v10++;
      v6 = v11 != 0;
      if (v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = v9 == 0;
      }

      --v9;
    }

    while (!v12);
LABEL_15:
    v3 = !v6;
    ++v2;
  }

  while (v2 != 7);
  if (!v6)
  {
LABEL_25:
    *(this + 192) = 6;
    *(this + 196) = 14;
    return this;
  }

LABEL_20:
  v13 = 0;
  *(this + 192) = 0;
  v14 = (this + 192);
  *(this + 196) = 1;
  while (v13 != 6 || *(v1 + 196) != 14)
  {
    this = BlueFin::GlGnssSet::Has(v1, (v1 + 192));
    if (this)
    {
      break;
    }

    this = BlueFin::GlGnss::operator++(v1 + 192);
    v13 = *v14;
  }

  return this;
}

void *BlueFin::GlDbgMemory::Allocate(BlueFin::GlDbgMemory *this)
{
  v1 = this;
  result = (*BlueFin::GlDbgMemory::m_pInstance)();
  if (result)
  {

    return memset(result, 129, v1);
  }

  return result;
}

unint64_t BlueFin::GlFormat::gl_format_param(BlueFin::GlFormat *this, char *a2, unint64_t a3, unsigned int a4, int a5, unsigned int a6, char *__s, _BOOL8 a8, BOOL a9)
{
  v134 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    return 0;
  }

  v9 = a8;
  v12 = a5;
  v14 = a3;
  result = 0;
  if (a3 > 100)
  {
    if (a3 <= 110)
    {
      if ((a3 - 101) >= 3)
      {
        if (a3 != 105)
        {
          return result;
        }

        goto LABEL_12;
      }

LABEL_36:
      v28 = *__s;
      __src = *__s;
      if (a8)
      {
        if (v28 < 0.0)
        {
          v29 = -v28;
        }

        else
        {
          v29 = v28;
        }

        if (a6 >= 0x11)
        {
          v30 = 17;
        }

        else
        {
          v30 = a6;
        }

        v31 = a4 & 0xDF;
        if (a6 > 0)
        {
          v31 = a4;
        }

        else
        {
          v30 = 0;
        }

        if ((a4 & 0x20) != 0)
        {
          v32 = v30;
        }

        else
        {
          v32 = 6;
        }

        if ((a4 & 0x20) != 0)
        {
          v33 = v31;
        }

        else
        {
          v33 = a4 | 0x20;
        }

        v127 = v33;
        __y = 0.0;
        v34 = a3 & 0xFFFFFFDF;
        if ((a3 & 0xFFFFFFDF) == 0x47)
        {
          if (v29 >= 1000000.0 || (v35 = pow(0.1, (v32 / 3u)), v36 = 102, v28 != 0.0) && v29 < v35)
          {
            v36 = v14 - 2;
          }

          if (v32)
          {
            v37 = v36 == 102;
          }

          else
          {
            v37 = 1;
          }

          v38 = !v37;
          v32 -= v38;
          v14 = v36;
        }

        if ((v14 & 0xDF) == 0x45)
        {
          if (v28 == 0.0)
          {
            v39 = 0;
          }

          else
          {
            v39 = vcvtmd_s64_f64(log10(v29));
            if (v39 < -299)
            {
              v29 = v29 * __exp10((-100 - v39)) * 1.0e100;
            }

            else
            {
              v29 = v29 * __exp10(-v39);
            }
          }

          v12 -= 5;
        }

        else
        {
          v39 = 0;
        }

        *v59.i64 = modf(v29, &__y);
        v57.i64[0] = BlueFin::dPow10[v32];
        *v58.i64 = *v57.i64 * (*v59.i64 + 0.5 / *v57.i64);
        *v59.i64 = __y;
        if (*v58.i64 >= *v57.i64)
        {
          *v59.i64 = __y + 1.0;
          if ((v14 & 0xDF) == 0x45 && *v59.i64 >= 10.0)
          {
            v58.i64[0] = 0;
            v122 = v58;
            ++v39;
            *v59.i64 = *v59.i64 / 10.0;
          }

          else
          {
            v57.i64[0] = 0;
            v122 = v57;
          }
        }

        else
        {
          v122 = v58;
        }

        v125 = v14 & 0xDF;
        v126 = v39;
        if (*v59.i64 <= 1000000000.0)
        {
          *v55.i64 = *v59.i64 + trunc(*v59.i64 * 2.32830644e-10) * -4294967300.0;
          v74.f64[0] = NAN;
          v74.f64[1] = NAN;
          v75 = vnegq_f64(v74);
          v55.i64[0] = vbslq_s8(v75, v55, v59).u64[0];
          if (*v59.i64 > 4294967300.0)
          {
            v59.i64[0] = v55.i64[0];
          }

          if (*v59.i64 < -4294967300.0)
          {
            *v58.i64 = -*v59.i64;
            *v59.i64 = -(*v59.i64 - trunc(*v59.i64 * -2.32830644e-10) * -4294967300.0);
            *v59.i64 = -*vbslq_s8(v75, v59, v58).i64;
          }

          if (*v59.i64 < 0.0)
          {
            v76 = --*v59.i64;
          }

          else
          {
            v76 = *v59.i64;
          }

          v69 = BlueFin::GlFormat::gl_output_num(v133, 0x14, 117, 0, 0, v76, 1);
        }

        else
        {
          *v58.i64 = *v59.i64 * 0.000000001;
          *v56.i64 = *v59.i64 * 0.000000001 + trunc(*v59.i64 * 0.000000001 * 2.32830644e-10) * -4294967300.0;
          v60.f64[0] = NAN;
          v60.f64[1] = NAN;
          v61 = vnegq_f64(v60);
          v56.i64[0] = vbslq_s8(v61, v56, v58).u64[0];
          if (*v59.i64 * 0.000000001 > 4294967300.0)
          {
            v58.i64[0] = v56.i64[0];
          }

          if (*v58.i64 < -4294967300.0)
          {
            *v55.i64 = -*v58.i64;
            *v58.i64 = -(*v58.i64 - trunc(*v58.i64 * -2.32830644e-10) * -4294967300.0);
            v58 = vbslq_s8(v61, v58, v55);
            *v58.i64 = -*v58.i64;
          }

          if (*v58.i64 < 0.0)
          {
            v62 = --*v58.i64;
          }

          else
          {
            v62 = *v58.i64;
          }

          *v59.i64 = *v59.i64 + v62 * -1000000000.0;
          *v58.i64 = *v59.i64 + trunc(*v59.i64 * 2.32830644e-10) * -4294967300.0;
          v63 = vbslq_s8(v61, v58, v59);
          if (*v59.i64 > 4294967300.0)
          {
            v59.i64[0] = v63.i64[0];
          }

          v64 = v34;
          if (*v59.i64 < -4294967300.0)
          {
            *v63.i64 = -*v59.i64;
            *v59.i64 = -(*v59.i64 - trunc(*v59.i64 * -2.32830644e-10) * -4294967300.0);
            v65.f64[0] = NAN;
            v65.f64[1] = NAN;
            *v59.i64 = -*vbslq_s8(vnegq_f64(v65), v59, v63).i64;
          }

          if (*v59.i64 < 0.0)
          {
            v66 = --*v59.i64;
          }

          else
          {
            v66 = *v59.i64;
          }

          if (v66 > 0x3B9AC9FF)
          {
            v67 = v66 + 1000000000;
          }

          else
          {
            v67 = v66;
          }

          v68 = BlueFin::GlFormat::gl_output_num(v133, 0x14, 117, 0, 0, v62 - (v66 > 0x3B9AC9FF), 1);
          v69 = BlueFin::GlFormat::gl_output_num(&v133[v68], (20 - v68), 117, 2, 9, v67, 1) + v68;
          v34 = v64;
        }

        if (*v122.i64 <= 1000000000.0)
        {
          *v70.i64 = *v122.i64 + trunc(*v122.i64 * 2.32830644e-10) * -4294967300.0;
          v87.f64[0] = NAN;
          v87.f64[1] = NAN;
          v88 = vnegq_f64(v87);
          v89 = vbslq_s8(v88, v70, v122);
          if (*v122.i64 <= 4294967300.0)
          {
            v89.i64[0] = v122.i64[0];
          }

          if (*v89.i64 < -4294967300.0)
          {
            *v72.i64 = -*v89.i64;
            *v89.i64 = -(*v89.i64 - trunc(*v89.i64 * -2.32830644e-10) * -4294967300.0);
            *v89.i64 = -*vbslq_s8(v88, v89, v72).i64;
          }

          if (*v89.i64 < 0.0)
          {
            v90 = --*v89.i64;
          }

          else
          {
            v90 = *v89.i64;
          }

          v86 = BlueFin::GlFormat::gl_output_num(v132, 0x14, 117, 0, 0, v90, 1);
        }

        else
        {
          *v71.i64 = *v122.i64 * 0.000000001;
          *v73.i64 = *v122.i64 * 0.000000001 + trunc(*v122.i64 * 0.000000001 * 2.32830644e-10) * -4294967300.0;
          v77.f64[0] = NAN;
          v77.f64[1] = NAN;
          v78 = vnegq_f64(v77);
          v73.i64[0] = vbslq_s8(v78, v73, v71).u64[0];
          if (*v122.i64 * 0.000000001 > 4294967300.0)
          {
            v71.i64[0] = v73.i64[0];
          }

          if (*v71.i64 < -4294967300.0)
          {
            *v72.i64 = -*v71.i64;
            *v71.i64 = -(*v71.i64 - trunc(*v71.i64 * -2.32830644e-10) * -4294967300.0);
            v71 = vbslq_s8(v78, v71, v72);
            *v71.i64 = -*v71.i64;
          }

          if (*v71.i64 < 0.0)
          {
            v79 = --*v71.i64;
          }

          else
          {
            v79 = *v71.i64;
          }

          *v71.i64 = *v122.i64 + v79 * -1000000000.0;
          *v72.i64 = *v71.i64 + trunc(*v71.i64 * 2.32830644e-10) * -4294967300.0;
          v80 = vbslq_s8(v78, v72, v71);
          if (*v71.i64 <= 4294967300.0)
          {
            *v80.i64 = *v122.i64 + v79 * -1000000000.0;
          }

          v81 = v34;
          if (*v80.i64 < -4294967300.0)
          {
            *v71.i64 = -*v80.i64;
            *v80.i64 = -(*v80.i64 - trunc(*v80.i64 * -2.32830644e-10) * -4294967300.0);
            v82.f64[0] = NAN;
            v82.f64[1] = NAN;
            *v80.i64 = -*vbslq_s8(vnegq_f64(v82), v80, v71).i64;
          }

          if (*v80.i64 < 0.0)
          {
            v83 = --*v80.i64;
          }

          else
          {
            v83 = *v80.i64;
          }

          if (v83 > 0x3B9AC9FF)
          {
            v84 = v83 + 1000000000;
          }

          else
          {
            v84 = v83;
          }

          v85 = BlueFin::GlFormat::gl_output_num(v132, 0x14, 117, 0, 0, v79 - (v83 > 0x3B9AC9FF), 1);
          v86 = BlueFin::GlFormat::gl_output_num(&v132[v85], (20 - v85), 117, 2, 9, v84, 1) + v85;
          v34 = v81;
        }

        if (v32)
        {
          v91 = v86;
        }

        else
        {
          v91 = 0;
        }

        if (v32)
        {
          v92 = v32 - v86;
        }

        else
        {
          v92 = 0;
        }

        v93 = v12 - (v69 + v91 + v92);
        if (v34 == 71)
        {
          if (v91 < 1)
          {
            v96 = v12 - (v69 + v91 + v92);
            v97 = v127;
LABEL_215:
            if (v97 & 1 | v91)
            {
              v93 = v96;
            }

            else
            {
              v97 &= 0xDEu;
              v93 = v92 + v96 - 1;
              v91 = 0;
              if (v92 < 1)
              {
                v93 = v96;
              }

              else
              {
                v92 = 1;
              }
            }
          }

          else
          {
            v94 = v91 - 2;
            v95 = &v132[v91 - 1];
            v96 = v12 - v69 - v92;
            v97 = v127;
            while (*v95 == 48)
            {
              if ((v94 & 0x80000000) == 0)
              {
                --v95;
                ++v93;
                --v94;
                v46 = v86-- <= 1;
                if (!v46)
                {
                  continue;
                }
              }

              v91 = 0;
              goto LABEL_215;
            }

            v91 = v86;
          }
        }

        else
        {
          v97 = v127;
        }

        v98 = 0;
        v99 = (v97 & 0x18) == 0 && v28 >= 0.0;
        v100 = v93 + ((v97 & 0x20) == 0) + v99 - 2;
        v101 = v100 & ~(v100 >> 31);
        v102 = v97 & 6;
        if ((v97 & 6) == 0 && v100 >= 1)
        {
          if ((a2 - 1) >= (v101 - 1))
          {
            v103 = (v101 - 1);
          }

          else
          {
            v103 = a2 - 1;
          }

          v128 = v97;
          v123 = v14;
          v104 = v97 & 6;
          memset(this, 32, (v103 + 1));
          v102 = v104;
          v14 = v123;
          this = &v103[this + 1];
          v101 = v101 - v103 - 2;
          v98 = (v103 + 1);
          v97 = v128;
        }

        v105 = v98 >= a2 || v99;
        if ((v105 & 1) == 0)
        {
          if ((v97 & 0x10) != 0)
          {
            v106 = 43;
          }

          else
          {
            v106 = 32;
          }

          if (v28 < 0.0)
          {
            v106 = 45;
          }

          *this = v106;
          this = (this + 1);
          v98 = (v98 + 1);
        }

        v107 = v97 & 0x20;
        if (v102 == 2 && v101 >= 1)
        {
          if (v98 >= a2)
          {
            --v101;
          }

          else
          {
            if (&a2[~v98] >= (v101 - 1))
            {
              v108 = (v101 - 1);
            }

            else
            {
              v108 = &a2[~v98];
            }

            v129 = v97;
            v124 = v97 & 0x20;
            memset(this, 48, v108 + 1);
            v107 = v124;
            this = (this + v108 + 1);
            v97 = v129;
            v101 = v101 - v108 - 2;
            v98 = (v98 + v108 + 1);
          }
        }

        v109 = v98 < a2;
        if (v69 >= 1 && v98 < a2)
        {
          v110 = v133;
          do
          {
            v111 = *v110++;
            *this = v111;
            this = (this + 1);
            v98 = (v98 + 1);
            v109 = v98 < a2;
            if (v69 < 2)
            {
              break;
            }

            --v69;
          }

          while (v98 < a2);
        }

        if (v107)
        {
          v112 = v126;
          if (v109)
          {
            *this = 46;
            this = (this + 1);
            v113 = (v98 + 1);
            v114 = v113;
            if (v92 < 1)
            {
              i = v125;
            }

            else
            {
              for (i = v125; v113 < a2; --v92)
              {
                *this = 48;
                this = (this + 1);
                v113 = (v114 + 1);
                v114 = v113;
                if (v92 < 2)
                {
                  break;
                }
              }
            }

            if (v91 >= 1 && v113 < a2)
            {
              v116 = v132;
              do
              {
                v117 = *v116++;
                *this = v117;
                this = (this + 1);
                v114 = (v114 + 1);
                if (v91 < 2)
                {
                  break;
                }

                --v91;
              }

              while (v114 < a2);
            }
          }

          else
          {
            v114 = v98;
            i = v125;
          }
        }

        else
        {
          v114 = v98;
          i = v125;
          v112 = v126;
        }

        if (i != 69)
        {
          goto LABEL_285;
        }

        v118 = v114;
        if (v114 < a2)
        {
          *this = v14;
          this = (this + 1);
          v118 = (v114 + 1);
          v114 = v118;
        }

        if (v118 < a2)
        {
          if (v112 >= 0)
          {
            v119 = 43;
          }

          else
          {
            v119 = 45;
          }

          if (v112 < 0)
          {
            v112 = -v112;
          }

          *this = v119;
          this = (this + 1);
          v118 = (v114 + 1);
          v114 = v118;
        }

        if (v118 < a2 && v112 >= 100)
        {
          *this = v112 / 0x64u + 48;
          this = (this + 1);
          v118 = (v114 + 1);
          v112 %= 0x64u;
          v114 = v118;
        }

        if (v118 < a2)
        {
          *this = v112 / 10 + 48;
          this = (this + 1);
          v118 = (v114 + 1);
          v112 %= 10;
          v114 = v118;
        }

        if (v118 < a2)
        {
          *this = v112 + 48;
          this = (this + 1);
          result = (v114 + 1);
        }

        else
        {
LABEL_285:
          result = v114;
        }

        if ((v97 & 4) != 0 && v101 >= 1 && result < a2)
        {
          do
          {
            *this = 32;
            this = (this + 1);
            result = (result + 1);
            if (v101 < 2)
            {
              break;
            }

            --v101;
          }

          while (result < a2);
        }
      }

      else
      {
        if ((a2 - 1) >= 7)
        {
          v40 = 7;
        }

        else
        {
          v40 = (a2 - 1);
        }

        memcpy(this, &__src, v40 + 1);
        return (v40 + 1);
      }

      return result;
    }

    if (a3 > 116)
    {
      if (a3 != 117 && a3 != 120)
      {
        return result;
      }
    }

    else if (a3 != 111)
    {
      if (a3 != 115)
      {
        return result;
      }

      v22 = strlen(__s);
      v23 = 0;
      v24 = a6;
      if (a6 >= a2)
      {
        v24 = a2;
      }

      if ((((a6 & 0x80000000) == 0) & (a4 >> 5)) != 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = a2;
      }

      if (v12 < 1 || (v26 = v12 - v22, v12 <= v22))
      {
        v26 = 0;
      }

      else
      {
        v23 = 0;
        if ((a4 & 4) == 0 && v26 && v25)
        {
          v23 = 0;
          do
          {
            v27 = v23;
            *this = 32;
            this = (this + 1);
            ++v23;
          }

          while (v26 - 1 != v27 && v25 > v23);
          v26 -= v23;
        }
      }

      v44 = *__s;
      v45 = v23;
      if (*__s)
      {
        v46 = v25 > v23;
      }

      else
      {
        v46 = 0;
      }

      if (v46)
      {
        v47 = __s + 1;
        LODWORD(v45) = v23;
        do
        {
          *this = v44;
          this = (this + 1);
          v45 = (v45 + 1);
          v48 = *v47++;
          v44 = v48;
          if (v48)
          {
            v49 = v25 > v45;
          }

          else
          {
            v49 = 0;
          }

          v23 = v45;
        }

        while (v49);
      }

      if (v26 && v25 > v45)
      {
        v50 = v26 - 1;
        do
        {
          *this = 32;
          this = (this + 1);
          v45 = (v23 + 1);
          v23 = v45;
          v51 = v50-- != 0;
        }

        while (v51 && v25 > v45);
      }

      if (!v9)
      {
        if (v45 < a2)
        {
          *this = 0;
          result = (v23 + 1);
          if ((v23 & 1) == 0 && result < a2)
          {
            *(this + 1) = 0;
            return (v23 + 2);
          }

          return result;
        }

        *(this - 1) = 0;
        if (v23)
        {
          *(this - 2) = 0;
          return (v23 - 1);
        }
      }

      return v23;
    }

    goto LABEL_75;
  }

  if (a3 <= 87)
  {
    if (a3 != 69 && a3 != 71)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (a3 == 88)
  {
LABEL_75:
    v19 = *__s;
    if (a8)
    {
      v21 = this;
      v20 = 1;
LABEL_77:

      return BlueFin::GlFormat::gl_output_num(v21, a2, a3, a4, a5, v19, v20);
    }

    *this = v19;
    v41 = this + 1;
    if (a2 == 1)
    {
      result = 1;
    }

    else
    {
      if ((a4 & 0x100) != 0)
      {
        v42 = 0;
      }

      else
      {
        v42 = BYTE1(v19);
      }

      v41 = this + 2;
      *(this + 1) = v42;
      result = 2;
    }

    v43 = result;
    if ((a4 & 0x400) != 0 && result < a2)
    {
      *v41 = BYTE2(v19);
      v43 = (result + 1);
      if (v43 >= a2)
      {
        result = (result + 1);
        ++v41;
      }

      else
      {
        v41[1] = BYTE3(v19);
        v41 += 2;
        v43 = (result + 2);
        result = v43;
      }
    }

    if ((a4 & 0x800) == 0 || v43 >= a2)
    {
      return result;
    }

    *v41 = BYTE4(v19);
    v52 = v41 + 1;
    v53 = (result + 1);
    if (v53 < a2)
    {
      v52 = v41 + 2;
      v41[1] = BYTE5(v19);
      v53 = (result + 2);
    }

    result = v53;
    if (v53 < a2)
    {
      *v52++ = BYTE6(v19);
      v53 = (v53 + 1);
      result = (result + 1);
    }

    if (v53 >= a2)
    {
      return result;
    }

    v54 = HIBYTE(v19);
LABEL_127:
    *v52 = v54;
    return (result + 1);
  }

  if (a3 == 99)
  {
    *this = *__s;
    result = 1;
    if (a2 == 1 || a8)
    {
      return result;
    }

    goto LABEL_130;
  }

  if (a3 != 100)
  {
    return result;
  }

LABEL_12:
  v18 = *__s;
  if (a8)
  {
    if (v18 >= 0)
    {
      v19 = *__s;
    }

    else
    {
      v19 = -v18;
    }

    v20 = v18 >= 0;
    v21 = this;
    goto LABEL_77;
  }

  if ((a4 & 0x100) != 0)
  {
    *this = v18;
    if (a2 == 1)
    {
      return 1;
    }

LABEL_130:
    *(this + 1) = 0;
    return 2;
  }

  if ((a4 & 0x400) != 0)
  {
    *this = v18;
    v52 = this + 1;
    if (a2 == 1)
    {
      result = 1;
    }

    else
    {
      v52 = this + 2;
      *(this + 1) = BYTE1(v18);
      result = 2;
    }

    v120 = result;
    if (result < a2)
    {
      *v52++ = BYTE2(v18);
      v120 = (result + 1);
      result = v120;
    }

    if (v120 >= a2)
    {
      return result;
    }

    v54 = v18 >> 24;
    goto LABEL_127;
  }

  if ((a4 & 0x800) == 0)
  {
    *this = v18;
    if (a2 != 1)
    {
      *(this + 1) = BYTE1(v18);
      return 2;
    }

    return 1;
  }

  *this = v18;
  v52 = this + 1;
  if (a2 == 1)
  {
    result = 1;
  }

  else
  {
    v52 = this + 2;
    *(this + 1) = BYTE1(v18);
    result = 2;
  }

  v121 = result;
  if (result < a2)
  {
    *v52++ = BYTE2(v18);
    v121 = (result + 1);
    result = v121;
  }

  if (v121 < a2)
  {
    *v52++ = BYTE3(v18);
    v121 = (result + 1);
    result = v121;
  }

  if (v121 < a2)
  {
    *v52++ = BYTE4(v18);
    v121 = (result + 1);
    result = v121;
  }

  if (v121 < a2)
  {
    *v52++ = BYTE5(v18);
    v121 = (result + 1);
    result = v121;
  }

  if (v121 < a2)
  {
    *v52++ = BYTE6(v18);
    v121 = (result + 1);
    result = v121;
  }

  if (v121 < a2)
  {
    v54 = HIBYTE(v18);
    goto LABEL_127;
  }

  return result;
}

uint64_t BlueFin::GlSetBase::SetULong(uint64_t this, unsigned int a2, int a3)
{
  if (*(this + 8) <= a2)
  {
    DeviceFaultNotify("glutl_set.cpp", 246, "SetULong", "ucIndex < m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 246, "ucIndex < m_ucUlongSize");
  }

  *(*this + 4 * a2) = a3;
  return this;
}

BlueFin::GlGnssSetIterator *BlueFin::GlGnssSetIterator::GlGnssSetIterator(BlueFin::GlGnssSetIterator *this, const BlueFin::GlGnssSet *a2)
{
  v4 = 0;
  *(this + 21) = this;
  do
  {
    BlueFin::GlSetBase::GlSetBase((*(this + 21) + v4), (*(this + 21) + v4 + 12), 2u, (*(a2 + 21) + v4));
    v4 += 24;
  }

  while (v4 != 168);
  *(this + 48) = 7;
  *(this + 196) = 0;
  *(this + 50) = 7;
  *(this + 204) = 0;
  BlueFin::GlGnssSetIterator::Reset(this);
  return this;
}

uint64_t BlueFin::GlGnssSet::Has(uint64_t a1, unsigned int *a2)
{
  if (*a2 > 6 || (v2 = *(a2 + 4), (v2 - 1) >= 0x3F))
  {
    DeviceFaultNotify("glgnss.cpp", 286, "Has", "rtGnss.isValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.cpp", 286, "rtGnss.isValid()");
  }

  return (*(*(*(a1 + 168) + 24 * *a2) + ((v2 >> 3) & 0x1C)) >> (v2 & 0x1F)) & 1;
}

char *BlueFin::GlDbgCodec::WriteArray(BlueFin::GlDbgCodec *this, char *a2, unsigned int *a3)
{
  result = (*(*this + 120))(this);
  if (result)
  {
    if ((*(*this + 120))(this))
    {
      BlueFin::GlDbgCodec::Write(this, a3);
    }

    v7 = *a3;

    return BlueFin::GlDbgCodecBase::Encode(this, a2, v7, 0, 0);
  }

  return result;
}

uint64_t BlueFin::GlEngineImplStd::LoadComponents(BlueFin::GlEngineImplStd *this, int a2)
{
  if (*(this + 32))
  {
    return *(this + 32);
  }

  if (*(this + 2) || *(this + 3))
  {
    v15 = "m_ptGlEventPump == nullptr && m_ptGlPosEng == nullptr";
    DeviceFaultNotify("glengine_std.cpp", 538, "LoadComponents", "m_ptGlEventPump == nullptr && m_ptGlPosEng == nullptr");
    v16 = 538;
    goto LABEL_43;
  }

  v3 = (this + 72);
  BlueFin::GlPeObjFactory::m_potGlPeObjFactory = this + 72;
  v4 = *(this + 1);
  if (v4)
  {
    goto LABEL_5;
  }

  GlSettingImpl = BlueFin::GlPeObjFactory::MakeGlSettingImpl(this + 9);
  *(this + 1) = GlSettingImpl;
  *(this + 4409) = 1;
  v19 = *(this + 1232);
  if (v19 != 2)
  {
    if (v19)
    {
      (*(*GlSettingImpl + 416))(GlSettingImpl, 48);
      BlueFin::GlSetBase::Remove(*(this + 1) + 26232, 1);
      v20 = *(this + 1);
      goto LABEL_33;
    }

    v15 = "m_eEngineType != GL_ENGINE_TYPE_UNSET";
    DeviceFaultNotify("glengine_std.cpp", 551, "LoadComponents", "m_eEngineType != GL_ENGINE_TYPE_UNSET");
    v16 = 551;
LABEL_43:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glengine_std.cpp", v16, v15);
  }

  if (a2)
  {
    *(this + 593) = 0;
  }

  (*(*GlSettingImpl + 1088))(GlSettingImpl, 1);
  (*(**(this + 1) + 1120))();
  (*(**(this + 1) + 416))();
  v20 = *(this + 1);
  **(v20 + 26232) |= 2u;
LABEL_33:
  v21 = *(this + 35);
  if (!v21 || v21(*(this + 34), v20))
  {
    goto LABEL_35;
  }

LABEL_5:
  if ((*(this + 560) & 1) == 0 && (*(*(this + 1) + 25964) & 1) == 0)
  {
    v5 = *(this + 42);
    if (v5)
    {
      if (!v5(*(this + 34), 0))
      {
        *(this + 560) = 1;
        goto LABEL_10;
      }

LABEL_35:
      v22 = *(this + 36);
      if (v22)
      {
        v22(*(this + 34), 1, 0);
      }

      if (*(this + 4409) == 1)
      {
        v23 = *(this + 10);
        if (v23)
        {
          v23(*(this + 1));
        }

        *(this + 1) = 0;
        *(this + 4409) = 0;
      }

      return *(this + 32);
    }
  }

LABEL_10:
  GlCustomLog(14, "PE SIZE %d\n", 536088);
  if (!BlueFin::GlUtils::m_pInstance)
  {
    BlueFin::GlUtils::m_pInstance = BlueFin::GlPeObjFactory::MakeGlUtils(this + 9, *(this + 1), (this + 264));
    *(this + 4408) = 1;
  }

  GlCustomLog(14, "GlEngineImplStd::verifyCpuWordSizeAndEndian: GLL is built as Little Endian running on a Little Endian CPU\n");
  v6 = *(this + 1231) + 1;
  *(this + 1231) = v6;
  v7 = *(this + 1);
  *(v7 + 6542) = v6;
  BlueFin::GlSettingsImpl::Print(v7);
  v8 = *(this + 1);
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    (*(v8[1] + 24))(v8 + 1, 0, 0);
    v8 = *(this + 1);
  }

  v9 = (*(*v8 + 1128))(v8);
  (*(*v8 + 1104))(v8, v9);
  Memory = BlueFin::GlMemAlloc::glAllocateMemory(1, 112, *v3);
  if (Memory)
  {
    *(Memory + 5) = 0u;
    *(Memory + 6) = 0u;
    *(Memory + 3) = 0u;
    *(Memory + 4) = 0u;
    *(Memory + 1) = 0u;
    *(Memory + 2) = 0u;
    *Memory = 0u;
  }

  *(this + 2) = Memory;
  *(this + 3) = BlueFin::GlPeObjFactory::MakePosEng(this + 9, this, *(this + 1), Memory, (this + 264), *(this + 4410));
  *(this + 32) = 1;
  if (!v4)
  {
    v11 = (*(**(this + 1) + 1112))(*(this + 1));
    v12 = "host";
    if (v11)
    {
      v12 = "chip";
    }

    GlCustomLog(13, "GlEngineImplStd::LoadComponents: Starting with ME on-%s\n", v12);
  }

  GlCustomLog(15, "GlEngineImplStd::LoadComponents: Finished loading components\n");
  v13 = *(this + 41);
  if (v13)
  {
    v13(*(this + 34));
  }

  if (*(this + 1232) == 2)
  {
    v14 = *(*(this + 1) + 88);
    if (v14 > 0x26 || ((1 << v14) & 0x7460000000) == 0)
    {
      v15 = "(etRfType == GL_RF_47531_BRCM) || (etRfType == GL_RF_47531_BRCM_EXT_LNA) || (etRfType == GL_RF_4776_BRCM) || (etRfType == GL_RF_4776_BRCM_1P3V) || (etRfType == GL_RF_4755_BRCM) || (etRfType == GL_RF_4755_BRCM_1P3V)";
      DeviceFaultNotify("glengine_std.cpp", 645, "LoadComponents", "(etRfType == GL_RF_47531_BRCM) || (etRfType == GL_RF_47531_BRCM_EXT_LNA) || (etRfType == GL_RF_4776_BRCM) || (etRfType == GL_RF_4776_BRCM_1P3V) || (etRfType == GL_RF_4755_BRCM) || (etRfType == GL_RF_4755_BRCM_1P3V)");
      v16 = 645;
      goto LABEL_43;
    }
  }

  return *(this + 32);
}

uint64_t BlueFin::GlGnssSet::SetAll(uint64_t a1, unsigned int a2)
{
  if (a2 >= 7)
  {
    DeviceFaultNotify("glgnss.cpp", 221, "SetAll", "(GlIntU32)eGnss < NUM_GNSS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.cpp", 221, "(GlIntU32)eGnss < NUM_GNSS");
  }

  result = *(a1 + 168) + 24 * a2;
  v3 = ~(-1 << qword_298A31920[a2]);
  *(result + 12) = 2 * v3;
  *result = result + 12;
  *(result + 8) = 2;
  *(result + 16) = v3 >> 31;
  return result;
}

uint64_t FireCallback::GlEngineOnStart(uint64_t a1, uint64_t a2)
{
  if (FireCallback::pInstance)
  {
    v3 = *(FireCallback::pInstance + 376);
    if (v3)
    {
      v5 = a2;
      v6 = a1;
      return (*(*v3 + 48))(v3, &v6, &v5);
    }

    FireDeviceLog::DeviceLogBase(2, "fcb,fEngineOnStartCb,nullptr");
  }

  else
  {
    FireDeviceLog::DeviceLogBase(2, "fcb,GlEngineOnStart,nullptr");
  }

  return 0;
}

uint64_t BlueFin::GlPeAlmanacPlainOldData::AlmId2Gnss@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (result > 6)
  {
    goto LABEL_11;
  }

  v3 = a2 - 119;
  if (result != 1)
  {
    v3 = a2 + 64;
  }

  v4 = ((1 << result) & 0x75) != 0 ? a2 : v3;
  if (!v4)
  {
LABEL_11:
    DeviceFaultNotify("glpe_almmgr.cpp", 137, "AlmId2Gnss", "ucGnssId != INVALID_GNSS_ID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_almmgr.cpp", 137, "ucGnssId != INVALID_GNSS_ID");
  }

  if (((0xE243F0A181320uLL >> (8 * result)) & 0x3F) < v4)
  {
    v4 = 0;
  }

  *a3 = result;
  *(a3 + 4) = v4;
  return result;
}

uint64_t BlueFin::GlGnssSetIterator::operator++(uint64_t a1)
{
  for (i = a1 + 192; ; i = a1 + 192)
  {
    result = BlueFin::GlGnss::operator++(i);
    if (*(a1 + 192) == 6 && *(a1 + 196) == 14)
    {
      break;
    }

    result = BlueFin::GlGnssSet::Has(a1, (a1 + 192));
    if (result)
    {
      break;
    }
  }

  return result;
}

uint64_t BlueFin::GlGnss::operator++(uint64_t result)
{
  v1 = *result;
  if (*result > 6 || (v2 = *(result + 4), (v2 - 1) >= 0x3F))
  {
    *result = 0;
LABEL_13:
    v5 = 1;
    goto LABEL_14;
  }

  if (v1 > 6 || v2 >= ((0xE243F0A181320uLL >> (8 * v1)) & 0x3F))
  {
    if (v1 == 6)
    {
      v4 = 0;
    }

    else
    {
      v4 = v1 + 1;
    }

    *result = v4;
    goto LABEL_13;
  }

  v5 = v2 + 1;
LABEL_14:
  *(result + 4) = v5;
  return result;
}

uint64_t BlueFin::GlGnssSet::Add(uint64_t result, unsigned int *a2)
{
  if (*a2 > 6 || (v2 = *(a2 + 4), (v2 - 1) >= 0x3F))
  {
    DeviceFaultNotify("glgnss.cpp", 272, "Add", "rtGnss.isValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.cpp", 272, "rtGnss.isValid()");
  }

  v3 = *(*(result + 168) + 24 * *a2);
  *(v3 + ((v2 >> 3) & 0x1C)) |= 1 << v2;
  return result;
}

_WORD *BlueFin::GlPeAlmMgr::GetDefaultAlm(unsigned int *a1)
{
  v2 = *a1;
  if (v2 > 6)
  {
    return 0;
  }

  v3 = *(&off_29EEB35A8)[v2];
  if (v3)
  {
    v4 = **(&off_29EEB3570 + v2);
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          BlueFin::GlPeAlmanacPlainOldData::AlmId2Gnss(v2, *v3, &v6);
          v2 = v6;
          if (v6 == *a1)
          {
            if (v7 == *(a1 + 4))
            {
              return v3;
            }
          }

          else
          {
            v2 = *a1;
          }
        }

        v3 += 52;
        --v4;
      }

      while (v4);
    }

    return 0;
  }

  return v3;
}