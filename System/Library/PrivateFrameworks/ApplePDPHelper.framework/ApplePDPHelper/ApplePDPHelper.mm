uint64_t ApplePDPHelperInterface::callback(ApplePDPHelperInterface *this, void *a2, int a3, uint64_t a4, void *a5)
{
  result = *(this + 11);
  if (result)
  {
    if (a3 == -469794559)
    {
      return (*(*result + 24))(result, a4);
    }

    else if (a3 == -469794560)
    {
      return (*(*result + 16))(result, a4);
    }
  }

  return result;
}

uint64_t ApplePDPHelperInterface::callStructMethod(ApplePDPHelperInterface *this, uint32_t a2, const char *a3, void *a4, unsigned int a5, void *a6, unsigned int *a7)
{
  std::mutex::lock((this + 8));
  v14 = *(this + 20);
  if (v14)
  {
    if (a7)
    {
      outputStructCnt = *a7;
      v15 = IOConnectCallStructMethod(v14, a2, a4, a5, a6, &outputStructCnt);
      *a7 = outputStructCnt;
    }

    else
    {
      v15 = IOConnectCallStructMethod(v14, a2, a4, a5, a6, 0);
    }

    if (!v15)
    {
      v16 = 1;
      goto LABEL_10;
    }

    syslog(3, "ApplePDPHelper: Performing '%s' failed: 0x%x\n", a3, v15);
  }

  else
  {
    syslog(3, "ApplePDPHelper: service is not open\n");
  }

  v16 = 0;
LABEL_10:
  std::mutex::unlock((this + 8));
  return v16;
}

void AppleCellularDataPlaneHelperInterface::AppleCellularDataPlaneHelperInterface(AppleCellularDataPlaneHelperInterface *this)
{
  ApplePDPHelperInterface::ApplePDPHelperInterface(this);
  *v2 = &unk_2852CAFF8;
  *(v2 + 152) = 1018212795;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0;
  *(v2 + 200) = 850045863;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0;
  *(v2 + 280) = v2 + 288;
  *(v2 + 288) = 0;
  *(v2 + 312) = 0;
  *(v2 + 320) = 0;
  *(v2 + 296) = 0;
  *(v2 + 304) = v2 + 312;
  *(v2 + 336) = 0;
  *(v2 + 344) = 0;
  *(v2 + 328) = v2 + 336;
  *(v2 + 72) = 4;
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v4 = dispatch_queue_create("ApplePDPHelperDataPlane", v3);
  *(this + 17) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CD3C00](exception, "Unable to allocate DispatchQueue");
    goto LABEL_6;
  }

  SystemConfigStore = AppleCellularDataPlaneHelperInterface::createSystemConfigStore(this, v4);
  *(this + 18) = SystemConfigStore;
  if (!SystemConfigStore)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CD3C00](exception, "Unable to allocate SystemConfigStore");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

void sub_240EFDCCC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v4);
  std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::destroy(v1 + 328, *(v1 + 42));
  std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::destroy(v1 + 304, *(v1 + 39));
  std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::destroy(v1 + 280, *(v1 + 36));
  std::mutex::~mutex(v3);
  std::condition_variable::~condition_variable(v2);
  ApplePDPHelperInterface::~ApplePDPHelperInterface(v1);
  _Unwind_Resume(a1);
}

const __SCDynamicStore *AppleCellularDataPlaneHelperInterface::createSystemConfigStore(AppleCellularDataPlaneHelperInterface *this, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  context.version = 0;
  context.info = this + 152;
  memset(&context.retain, 0, 24);
  v3 = SCDynamicStoreCreate(0, @"ApplePDPHelperDataPlane", handleInterfaceChange, &context);
  if (v3)
  {
    NetworkInterface = getNetworkInterfaceKey(void)::key;
    if (!getNetworkInterfaceKey(void)::key)
    {
      NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(0, *MEMORY[0x277CE1648]);
      getNetworkInterfaceKey(void)::key = NetworkInterface;
    }

    *values = NetworkInterface;
    v5 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    SCDynamicStoreSetNotificationKeys(v3, v5, 0);
    SCDynamicStoreSetDispatchQueue(v3, a2);
    CFRelease(v5);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = SCError();
    v7 = SCErrorString(v6);
    *values = 136315394;
    *&values[4] = "createSystemConfigStore";
    v11 = 2080;
    v12 = v7;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: SCDOpen failed: %s", values, 0x16u);
  }

  return v3;
}

void AppleCellularDataPlaneHelperInterface::~AppleCellularDataPlaneHelperInterface(AppleCellularDataPlaneHelperInterface *this)
{
  *this = &unk_2852CAFF8;
  CFRelease(*(this + 18));
  dispatch_release(*(this + 17));
  std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::destroy(this + 328, *(this + 42));
  std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::destroy(this + 304, *(this + 39));
  std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::destroy(this + 280, *(this + 36));
  std::mutex::~mutex((this + 200));
  std::condition_variable::~condition_variable((this + 152));

  ApplePDPHelperInterface::~ApplePDPHelperInterface(this);
}

{
  AppleCellularDataPlaneHelperInterface::~AppleCellularDataPlaneHelperInterface(this);

  JUMPOUT(0x245CD3CC0);
}

uint64_t AppleCellularDataPlaneHelperInterface::connect(AppleCellularDataPlaneHelperInterface *this, unsigned int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v22 = a2;
  v3 = *(this + 36);
  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = (this + 288);
  do
  {
    v5 = v3[16];
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *&v3[4 * v7];
  }

  while (v3);
  if (v4 == (this + 288) || v4[16] > a2)
  {
LABEL_21:
    *buf = &v22;
    v15 = (std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(this + 280, &v22, &std::piecewise_construct, buf, &cf) + 5);
    IOACIPCBBNetCfgClass::setLogLevel(v15);
    cf = IOServiceMatching("AppleCellularDataPlane");
    v16 = (*(*v15 + 16))(v15);
    v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v17)
      {
        *buf = 136315394;
        *&buf[4] = "connect";
        v24 = 1024;
        v25 = v22;
        _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: started IOACIPCNetCfgClass (context = %u)\n", buf, 0x12u);
      }

      IOACIPCBBNetCfgClass::registerFilterRuleCallBack();
      v18 = (*(*v15 + 32))(v15);
      v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!v18)
      {
        if (v19)
        {
          *buf = 136315394;
          *&buf[4] = "connect";
          v24 = 1024;
          v25 = v22;
          _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: opened IOACIPCNetCfgClass (context = %u)\n", buf, 0x12u);
        }

        v9 = 1;
        goto LABEL_31;
      }

      if (v19)
      {
        *buf = 136315394;
        *&buf[4] = "connect";
        v24 = 1024;
        v25 = v22;
        _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: failed to open IOACIPCNetCfgClass (context = %u)\n", buf, 0x12u);
      }
    }

    else if (v17)
    {
      *buf = 136315394;
      *&buf[4] = "connect";
      v24 = 1024;
      v25 = v22;
      _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: failed to start IOACIPCNetCfgClass (context = %u)\n", buf, 0x12u);
    }

    std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__erase_unique<unsigned short>(this + 280, &v22);
    v9 = 0;
LABEL_31:
    CFRelease(cf);
    return v9;
  }

  *buf = &v22;
  v8 = std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(this + 280, &v22, &std::piecewise_construct, buf, &cf);
  if (((*(v8[5] + 40))() & 1) == 0)
  {
    std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__erase_unique<unsigned short>(this + 280, &v22);
    v10 = *(this + 41);
    if (v10 != (this + 336))
    {
      v11 = v22;
      do
      {
        if (*(v10 + 16) == v11)
        {
          v12 = std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__remove_node_pointer(this + 41, v10);
          operator delete(v10);
        }

        else
        {
          v13 = *(v10 + 1);
          if (v13)
          {
            do
            {
              v12 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v12 = *(v10 + 2);
              v14 = *v12 == v10;
              v10 = v12;
            }

            while (!v14);
          }
        }

        v10 = v12;
      }

      while (v12 != (this + 336));
    }

    goto LABEL_21;
  }

  return 1;
}

void sub_240EFE3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  ACDPHelperSentry<AppleCellularDataPlaneHelperInterface::connect(unsigned short)::$_1>::~ACDPHelperSentry(va);
  _Unwind_Resume(a1);
}

void ___ZN37AppleCellularDataPlaneHelperInterface7connectEt_block_invoke(uint64_t a1, unsigned __int16 *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    v7 = a2[4];
    v8 = a2[5];
    v9 = *(a1 + 40);
    *buf = 136316418;
    *&buf[4] = "connect_block_invoke";
    LOWORD(v25) = 1024;
    *(&v25 + 2) = v5;
    HIWORD(v25) = 1024;
    LODWORD(v26) = v6;
    WORD2(v26) = 1024;
    *(&v26 + 6) = v7;
    WORD5(v26) = 1024;
    HIDWORD(v26) = v8;
    v27 = 1024;
    v28 = v9;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: [EVENT] new Filter Rule: rule: %u, rule-id: %u, interface-id: %u, queueset-id: %u, context: %u)\n", buf, 0x2Au);
  }

  v10 = a2[1] << 16;
  v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v10 == 0x10000)
  {
    if (!v11)
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    *&buf[4] = "connect_block_invoke";
    v12 = MEMORY[0x277D86220];
    v13 = "::%s: [EVENT] Filter Rule State: added\n";
  }

  else
  {
    if (!v11)
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    *&buf[4] = "connect_block_invoke";
    v12 = MEMORY[0x277D86220];
    v13 = "::%s: [EVENT] Filter Rule State: removed\n";
  }

  _os_log_impl(&dword_240EFD000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
LABEL_9:
  std::mutex::lock((v4 + 8));
  if (*(v4 + 360))
  {
    v14 = (a2 + 2);
    v15 = *(v4 + 336);
    if (v15)
    {
      v16 = *v14;
      v17 = v4 + 336;
      do
      {
        v18 = *(v15 + 28);
        v19 = v18 >= v16;
        v20 = v18 < v16;
        if (v19)
        {
          v17 = v15;
        }

        v15 = *(v15 + 8 * v20);
      }

      while (v15);
      if (v17 != v4 + 336 && v16 >= *(v17 + 28))
      {
        __assert_rtn("connect_block_invoke", "AppleCellularDataPlaneHelper.cpp", 262, "!pendingFilterRuleRequests_.contains(acdpFilterRuleInfo->ruleID)");
      }
    }

    v21 = *(a1 + 40);
    *buf = a2 + 2;
    *(std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4 + 328, v14, &std::piecewise_construct, buf) + 16) = v21;
    *buf = *a2;
    *&buf[8] = a2[4];
    v25 = a2[5];
    v26 = (a2 + 6);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "connect_block_invoke";
      _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: [EVENT] Invoking client callback\n", &v22, 0xCu);
    }

    (*(v4 + 360))(buf, *(v4 + 368));
  }

  std::mutex::unlock((v4 + 8));
}

uint64_t AppleCellularDataPlaneHelperInterface::ipcConfigSet(uint64_t a1, int *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *a2;
    v4 = *(a2 + 1);
    v5 = *(a2 + 16);
    v6 = a2[5];
    v7 = a2[6];
    v8 = a2[7];
    v10 = 136316674;
    v11 = "ipcConfigSet";
    v12 = 1024;
    v13 = v3;
    v14 = 2080;
    v15 = v4;
    v16 = 1024;
    v17 = v5;
    v18 = 1024;
    v19 = v6;
    v20 = 1024;
    v21 = v7;
    v22 = 1024;
    v23 = v8;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: context = %u, config = %s, active = %u, TrafficTypeMask = %x, DataPathType = %x, MaxQueueSets = %d\n", &v10, 0x34u);
  }

  return ApplePDPHelperInterface::ipcConfigSet();
}

uint64_t AppleCellularDataPlaneHelperInterface::ipcInterfaceConfig(uint64_t a1, unsigned __int16 *a2, unsigned int *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    v7 = *(a2 + 1);
    v8 = *(a2 + 24);
    v9 = *(a2 + 4);
    v10 = *(a2 + 5);
    v11 = *(a2 + 4);
    *buf = 136316674;
    *&buf[4] = "ipcInterfaceConfig";
    v42 = 1024;
    v43 = v9;
    v44 = 1024;
    v45 = v6;
    v46 = 2080;
    v47 = v7;
    v48 = 1024;
    v49 = v8;
    v50 = 1024;
    v51 = v10;
    v52 = 2048;
    v53 = v11;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: interface = %u, context = %u, config = %s, active = %u, bearerId = 0x%x, qset-id = %llu \n", buf, 0x38u);
  }

  std::mutex::lock((a1 + 8));
  if ((*a2 - 1) < 2)
  {
    if (!*(a2 + 1))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "ipcInterfaceConfig";
        v13 = MEMORY[0x277D86220];
        v14 = "::%s: ERROR: config set not assigned\n";
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    v12 = (a2 + 8);
    if (*(a2 + 4) >= 0x20u)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "ipcInterfaceConfig";
        v13 = MEMORY[0x277D86220];
        v14 = "::%s: ERROR: interface index out of range\n";
LABEL_12:
        _os_log_impl(&dword_240EFD000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    snprintf(__str, 9uLL, "pdp_ip%u", *(a2 + 4));
    v17 = a1 + 312;
    v18 = *(a1 + 312);
    if (*(a2 + 24) == 1)
    {
      if (!v18)
      {
        goto LABEL_24;
      }

      v19 = *v12;
      v20 = a1 + 312;
      do
      {
        v21 = *(v18 + 32);
        v22 = v21 >= v19;
        v23 = v21 < v19;
        if (v22)
        {
          v20 = v18;
        }

        v18 = *(v18 + 8 * v23);
      }

      while (v18);
      if (v20 == v17 || v19 < *(v20 + 32))
      {
LABEL_24:
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 0x40000000;
        v37[2] = ___ZN37AppleCellularDataPlaneHelperInterface18ipcInterfaceConfigERK38AppleIPAppenderIPCInterfaceInputParamsR39AppleIPAppenderIPCInterfaceOutputParams_block_invoke;
        v37[3] = &__block_descriptor_tmp_9;
        v37[4] = a1;
        v37[5] = a2;
        if (AppleCellularDataPlaneHelperInterface::waitForDevicePresence(a1, __str, 0x4E20u, 0, v37))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v24 = *v12;
            *buf = 136315394;
            *&buf[4] = "ipcInterfaceConfig";
            v42 = 1024;
            v43 = v24;
            _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Forcefully removing Network Interface %u\n", buf, 0x12u);
          }

          if (AppleCellularDataPlaneHelperInterface::connect(a1, *a2))
          {
            LOWORD(v39) = *a2;
            *buf = &v39;
            v25 = std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(a1 + 280, &v39, &std::piecewise_construct, buf, &v38);
            (*(*(v25 + 5) + 64))();
            std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__erase_unique<unsigned int>(a1 + 304, a2 + 4);
            goto LABEL_13;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_13;
          }

          *buf = 136315138;
          *&buf[4] = "ipcInterfaceConfig";
          v13 = MEMORY[0x277D86220];
          v14 = "::%s: ERROR: Failed to connect to ACDP-Driver. Device Reset needed\n";
          goto LABEL_12;
        }

        v19 = *v12;
      }

      v30 = *(a2 + 5);
      if (v30 != -1)
      {
        if (!AppleCellularDataPlaneHelperInterface::addBearer(a1, v19, v30))
        {
          goto LABEL_13;
        }

        v19 = *(a2 + 4);
        v30 = *(a2 + 5);
      }
    }

    else
    {
      if (v18)
      {
        v26 = *v12;
        v27 = a1 + 312;
        do
        {
          v28 = *(v18 + 32);
          v22 = v28 >= v26;
          v29 = v28 < v26;
          if (v22)
          {
            v27 = v18;
          }

          v18 = *(v18 + 8 * v29);
        }

        while (v18);
        if (v27 != v17 && v26 >= *(v27 + 32))
        {
          v31 = *(a2 + 5);
          if (v31 == -1)
          {
            v32 = 1;
            v33 = -1;
          }

          else
          {
            *buf = a2 + 8;
            v32 = v31 == *(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 304, a2 + 4, &std::piecewise_construct, buf) + 18);
            v26 = *(a2 + 4);
            v33 = *(a2 + 5);
          }

          AppleCellularDataPlaneHelperInterface::removeBearer(a1, v26, v33);
          if (v32)
          {
            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 0x40000000;
            v36[2] = ___ZN37AppleCellularDataPlaneHelperInterface18ipcInterfaceConfigERK38AppleIPAppenderIPCInterfaceInputParamsR39AppleIPAppenderIPCInterfaceOutputParams_block_invoke_10;
            v36[3] = &__block_descriptor_tmp_11;
            v36[4] = a1;
            v36[5] = a2;
            AppleCellularDataPlaneHelperInterface::waitForDevicePresence(a1, __str, 0x4E20u, 1, v36);
            if (std::map<unsigned int,ACDPNetIFConfig>::contains[abi:ne200100](a1 + 304, a2 + 4))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                v34 = *v12;
                v39 = v12;
                v35 = *(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 304, v12, &std::piecewise_construct, &v39) + 40);
                *buf = 136315650;
                *&buf[4] = "ipcInterfaceConfig";
                v42 = 1024;
                v43 = v34;
                v44 = 1024;
                v45 = v35;
                _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Enforcing Configuration Removal (interface = %u, rss = %u)\n", buf, 0x18u);
              }

              std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__erase_unique<unsigned int>(a1 + 304, v12);
            }
          }

          AppleCellularDataPlaneHelperInterface::generateOutputParamsForBearerID(a1, 0xFFFFFFFF, -1, a3);
          goto LABEL_39;
        }
      }

      v19 = -1;
      v30 = -1;
    }

    AppleCellularDataPlaneHelperInterface::generateOutputParamsForBearerID(a1, v19, v30, a3);
LABEL_39:
    v15 = 1;
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "ipcInterfaceConfig";
    v13 = MEMORY[0x277D86220];
    v14 = "::%s: ERROR: wrong ICP Context\n";
    goto LABEL_12;
  }

LABEL_13:
  v15 = 0;
LABEL_14:
  std::mutex::unlock((a1 + 8));
  return v15;
}

BOOL std::map<unsigned int,ACDPNetIFConfig>::contains[abi:ne200100](uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *a2;
  v6 = v2;
  do
  {
    v7 = *(v3 + 32);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2 || v5 < *(v6 + 32))
  {
LABEL_9:
    v6 = v2;
  }

  return v6 != v2;
}

uint64_t AppleCellularDataPlaneHelperInterface::waitForDevicePresence(uint64_t a1, const char *a2, unsigned int a3, int a4, uint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "waitForDevicePresence";
      _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: invalid interface name", buf, 0xCu);
    }

    return 1;
  }

  v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (a4)
  {
    if (!v10)
    {
      goto LABEL_11;
    }

    *buf = 136315650;
    v24 = "waitForDevicePresence";
    v25 = 2080;
    v26 = a2;
    v27 = 1024;
    v28 = a3;
    v11 = MEMORY[0x277D86220];
    v12 = "::%s: Waiting for interface absence (%s, timeout = %ums)";
  }

  else
  {
    if (!v10)
    {
      goto LABEL_11;
    }

    *buf = 136315650;
    v24 = "waitForDevicePresence";
    v25 = 2080;
    v26 = a2;
    v27 = 1024;
    v28 = a3;
    v11 = MEMORY[0x277D86220];
    v12 = "::%s: Waiting for interface presence (%s, timeout = %ums)";
  }

  _os_log_impl(&dword_240EFD000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0x1Cu);
LABEL_11:
  v22.__m_ = (a1 + 200);
  v22.__owns_ = 1;
  std::mutex::lock((a1 + 200));
  if (AppleCellularDataPlaneHelperInterface::checkForDevicePresence(a1, a2, a4 == 0) || *(a1 + 276) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "waitForDevicePresence";
      _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Structor called in wrong state", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (!(*(a5 + 16))(a5))
  {
LABEL_39:
    v13 = 1;
LABEL_40:
    std::mutex::unlock(v22.__m_);
    return v13;
  }

  *(a1 + 264) = a2;
  *(a1 + 272) = a4;
  v14.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * a3;
  do
  {
    if (*(a1 + 276))
    {
      goto LABEL_34;
    }

    if (v14.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      break;
    }

    v15.__d_.__rep_ = v14.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v15.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v16.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v16.__d_.__rep_)
      {
        v17 = 0;
        goto LABEL_30;
      }

      if (v16.__d_.__rep_ < 1)
      {
        if (v16.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v17 = 0x8000000000000000;
          goto LABEL_30;
        }
      }

      else if (v16.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_28;
      }

      v17 = 1000 * v16.__d_.__rep_;
LABEL_28:
      if (v17 > (v15.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v18.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_31:
        std::condition_variable::__do_timed_wait((a1 + 152), &v22, v18);
        std::chrono::steady_clock::now();
        continue;
      }

LABEL_30:
      v18.__d_.__rep_ = v17 + v15.__d_.__rep_;
      goto LABEL_31;
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v14.__d_.__rep_);
  if (*(a1 + 276))
  {
LABEL_34:
    if (a4)
    {
      if (a4 == 1 && (*(a1 + 277) & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v24 = "waitForDevicePresence";
          v25 = 2080;
          v26 = a2;
          v19 = MEMORY[0x277D86220];
          v20 = "::%s: Interface successfully removed (%s)";
          goto LABEL_48;
        }

        goto LABEL_49;
      }
    }

    else if (*(a1 + 277) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v24 = "waitForDevicePresence";
        v25 = 2080;
        v26 = a2;
        v19 = MEMORY[0x277D86220];
        v20 = "::%s: Interface successfully attached (%s)";
LABEL_48:
        _os_log_impl(&dword_240EFD000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x16u);
      }

LABEL_49:
      v13 = 0;
      goto LABEL_51;
    }

    v13 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v24 = "waitForDevicePresence";
      v25 = 2080;
      v26 = a2;
      v27 = 1024;
      v28 = a3;
      _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Timeout Waiting for interface (%s, timeout = %ums)", buf, 0x1Cu);
    }

    v13 = 2;
  }

LABEL_51:
  *(a1 + 264) = 0;
  *(a1 + 276) = 0;
  if (v22.__owns_)
  {
    goto LABEL_40;
  }

  return v13;
}

uint64_t ___ZN37AppleCellularDataPlaneHelperInterface18ipcInterfaceConfigERK38AppleIPAppenderIPCInterfaceInputParamsR39AppleIPAppenderIPCInterfaceOutputParams_block_invoke(AppleCellularDataPlaneHelperInterface *a1)
{
  v3 = *(a1 + 4);
  v2 = *(a1 + 5);
  v4 = *(v2 + 4);
  v5 = *v2;
  HasRSS = AppleCellularDataPlaneHelperInterface::ipcConfigSetHasRSS(a1, *(v2 + 1));
  v7 = HasRSS;
  HasPrioUL = AppleCellularDataPlaneHelperInterface::ipcConfigSetHasPrioUL(HasRSS, *(*(a1 + 5) + 8));

  return AppleCellularDataPlaneHelperInterface::addInterface(v3, v4, v5, v7, HasPrioUL);
}

uint64_t AppleCellularDataPlaneHelperInterface::addInterface(AppleCellularDataPlaneHelperInterface *this, unsigned int a2, unsigned int a3, int a4, int a5)
{
  v75 = *MEMORY[0x277D85DE8];
  v60 = a2;
  v59 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    *&buf[4] = "addInterface";
    v66 = 1024;
    v67 = a2;
    v68 = 1024;
    v69 = a3;
    v70 = 1024;
    v71 = a4;
    v72 = 1024;
    v73 = a5;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Adding Network Interface %u (context %u, rss = %u, prioUL = %u)\n", buf, 0x24u);
  }

  if ((AppleCellularDataPlaneHelperInterface::connect(this, a3) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "addInterface";
      v20 = MEMORY[0x277D86220];
      v21 = "::%s: ERROR: Failed to connect to ACDP-Driver. Device Reset needed or Device in Reset\n";
      v22 = 12;
LABEL_24:
      _os_log_impl(&dword_240EFD000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
    }

    return 0;
  }

  v10 = *(this + 39);
  v11 = v60;
  if (v10)
  {
    v12 = (this + 312);
    do
    {
      v13 = v10[8];
      v14 = v13 >= v60;
      v15 = v13 < v60;
      if (v14)
      {
        v12 = v10;
      }

      v10 = *&v10[2 * v15];
    }

    while (v10);
    if (v12 != (this + 312) && v60 >= v12[8])
    {
      *buf = &v60;
      if (*(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v60, &std::piecewise_construct, buf) + 21) == a3)
      {
        *buf = &v60;
        if (*(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v60, &std::piecewise_construct, buf) + 40) == a4)
        {
          *buf = &v60;
          if (*(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v60, &std::piecewise_construct, buf) + 41) == a5)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "addInterface";
              v66 = 1024;
              v67 = v60;
              _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Compatible Network Interface %u is already configured by ACDP-Helper.\n", buf, 0x12u);
            }

            return 1;
          }
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "addInterface";
        v66 = 1024;
        v67 = v60;
        v20 = MEMORY[0x277D86220];
        v21 = "::%s: ERROR: Incompatible Network Interface %u is already configured by ACDP-Helper.\n";
        v22 = 18;
        goto LABEL_24;
      }

      return 0;
    }
  }

  bzero(buf, 0x1DEuLL);
  bzero(&v51, 0x1CuLL);
  v51 = v11;
  v52 = a5;
  v53 = a4;
  if (a5)
  {
    v16 = 1024;
  }

  else
  {
    v16 = 256;
  }

  v57 = v16;
  if (a4)
  {
    v56 = 0x2000;
    v58 = 0x2000;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v62 = 136315906;
    *&v62[4] = "addInterface";
    *&v62[12] = 1024;
    *&v62[14] = v54;
    *&v62[18] = 1024;
    *&v62[20] = v55;
    LOWORD(v63) = 1024;
    *(&v63 + 2) = v16;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: rxPacingTimerUS = %u, rxPacketPacingThresold = %u TRSize = %u)\n", v62, 0x1Eu);
  }

  *v62 = &v59;
  v17 = std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(this + 280, &v59, &std::piecewise_construct, v62, v49);
  v18 = (*(v17[5] + 56))();
  v19 = v18 == 0;
  if (v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v62 = 136315138;
      *&v62[4] = "addInterface";
      _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: ERROR: failed to add network interface\n", v62, 0xCu);
    }

    return v19;
  }

  v23 = 0;
  v24 = 0;
  v25 = MEMORY[0x277D86220];
  while (1)
  {
    v26 = *(&v72 + v23);
    if (v26 == 2)
    {
      v32 = v49 + 12 * v24 + 4;
      *v32 = 0xFF00000003;
      v33 = *&v74[v23];
      *(v32 + 2) = v33;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v62 = 136315394;
        *&v62[4] = "addInterface";
        *&v62[12] = 1024;
        *&v62[14] = v33;
        _os_log_impl(&dword_240EFD000, v25, OS_LOG_TYPE_DEFAULT, "::%s: DL Pipe configured (id = %u)\n", v62, 0x12u);
      }

      v29 = (v24 + 1);
      if (v29 > 0xF)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (v26 != 1)
    {
      v29 = v24;
      goto LABEL_42;
    }

    v27 = v49 + 12 * v24 + 4;
    *v27 = 0;
    v28 = *&v74[v23];
    *(v27 + 2) = v28;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v62 = 136315394;
      *&v62[4] = "addInterface";
      *&v62[12] = 1024;
      *&v62[14] = v28;
      _os_log_impl(&dword_240EFD000, v25, OS_LOG_TYPE_DEFAULT, "::%s: UL.Default Pipe configured (id = %u)\n", v62, 0x12u);
    }

    v29 = (v24 + 1);
    if (v29 > 0xF)
    {
      goto LABEL_43;
    }

    v30 = *&v74[v23 + 2];
    if (v30 != 0xFFFF)
    {
      v31 = v49 + 12 * v29 + 4;
      *v31 = 0x100000000;
      *(v31 + 2) = v30;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v62 = 136315394;
        *&v62[4] = "addInterface";
        *&v62[12] = 1024;
        *&v62[14] = v30;
        _os_log_impl(&dword_240EFD000, v25, OS_LOG_TYPE_DEFAULT, "::%s: UL.Prio Pipe configured (id = %u)\n", v62, 0x12u);
      }

      v29 = (v24 + 2);
      if (v29 > 0xF)
      {
        break;
      }
    }

LABEL_42:
    v23 += 28;
    v24 = v29;
    if (v23 == 448)
    {
      goto LABEL_43;
    }
  }

  LODWORD(v29) = 16;
LABEL_43:
  LODWORD(v49[0]) = v29;
  *&v64[148] = v49[9];
  *&v64[164] = v49[10];
  *&v64[180] = v49[11];
  *&v64[84] = v49[5];
  *&v64[100] = v49[6];
  *&v64[116] = v49[7];
  *&v64[132] = v49[8];
  *&v64[20] = v49[1];
  *&v64[36] = v49[2];
  *&v64[52] = v49[3];
  *&v64[68] = v49[4];
  v62[0] = a4;
  v62[1] = a5;
  *&v62[2] = v59;
  v63 = 0;
  *&v62[16] = 0;
  *&v62[8] = &v62[16];
  *v64 = -1;
  *&v64[196] = v50;
  *&v64[4] = v49[0];
  v61 = &v60;
  v34 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v60, &std::piecewise_construct, &v61);
  *(v34 + 10) = *v62;
  v35 = v34 + 7;
  std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::destroy((v34 + 6), v34[7]);
  v36 = *&v62[16];
  v34[6] = *&v62[8];
  v34[7] = v36;
  v37 = v63;
  v34[8] = v63;
  if (v37)
  {
    v36[2] = v35;
    *&v62[8] = &v62[16];
    *&v62[16] = 0;
    v63 = 0;
    v36 = 0;
  }

  else
  {
    v34[6] = v35;
  }

  v38 = *&v64[192];
  v40 = *&v64[160];
  v39 = *&v64[176];
  v41 = *&v64[128];
  *(v34 + 27) = *&v64[144];
  *(v34 + 29) = v40;
  *(v34 + 31) = v39;
  v43 = *&v64[96];
  v42 = *&v64[112];
  v44 = *&v64[64];
  *(v34 + 19) = *&v64[80];
  *(v34 + 21) = v43;
  *(v34 + 23) = v42;
  *(v34 + 25) = v41;
  v46 = *&v64[32];
  v45 = *&v64[48];
  v47 = *v64;
  *(v34 + 11) = *&v64[16];
  *(v34 + 13) = v46;
  v34[33] = v38;
  *(v34 + 15) = v45;
  *(v34 + 17) = v44;
  *(v34 + 9) = v47;
  std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::destroy(&v62[8], v36);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v62 = 136315394;
    *&v62[4] = "addInterface";
    *&v62[12] = 1024;
    *&v62[14] = v60;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Network Interface %u added.\n", v62, 0x12u);
  }

  return 1;
}

uint64_t AppleCellularDataPlaneHelperInterface::ipcConfigSetHasRSS(AppleCellularDataPlaneHelperInterface *this, char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "ipcConfigSetHasRSS";
    *&buf[12] = 2080;
    *&buf[14] = a2;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: config = %s\n", buf, 0x16u);
  }

  if (!a2)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "__Internet__");
  std::string::basic_string[abi:ne200100]<0>(__p, "__Internet2__");
  v3 = v17;
  std::string::basic_string[abi:ne200100]<0>(v17, a2);
  v4 = v18;
  v5 = v17[0];
  if ((v18 & 0x80u) == 0)
  {
    v6 = v18;
  }

  else
  {
    v6 = v17[1];
  }

  if ((v18 & 0x80u) != 0)
  {
    v3 = v17[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v7 = v22;
  }

  else
  {
    v7 = *&buf[8];
  }

  if ((v22 & 0x80u) == 0)
  {
    v8 = buf;
  }

  else
  {
    v8 = *buf;
  }

  if (v7 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v3, v8, v9);
  if (v7 != v6 || v10)
  {
    v12 = v20;
    if ((v20 & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v12 = __p[1];
      v13 = __p[0];
    }

    if (v12 >= v6)
    {
      v14 = v6;
    }

    else
    {
      v14 = v12;
    }

    v15 = v12 == v6;
    v11 = !memcmp(v3, v13, v14) && v15;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v11 = 1;
  if (v4 < 0)
  {
LABEL_33:
    operator delete(v5);
  }

LABEL_34:
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v22 < 0)
  {
    operator delete(*buf);
  }

  return v11;
}

void sub_240EFFDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AppleCellularDataPlaneHelperInterface::ipcConfigSetHasPrioUL(AppleCellularDataPlaneHelperInterface *this, char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "ipcConfigSetHasPrioUL";
    *&buf[12] = 2080;
    *&buf[14] = a2;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: config = %s\n", buf, 0x16u);
  }

  if (!a2)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "__Internet__");
  std::string::basic_string[abi:ne200100]<0>(__p, "__Internet2__");
  v3 = v17;
  std::string::basic_string[abi:ne200100]<0>(v17, a2);
  v4 = v18;
  v5 = v17[0];
  if ((v18 & 0x80u) == 0)
  {
    v6 = v18;
  }

  else
  {
    v6 = v17[1];
  }

  if ((v18 & 0x80u) != 0)
  {
    v3 = v17[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v7 = v22;
  }

  else
  {
    v7 = *&buf[8];
  }

  if ((v22 & 0x80u) == 0)
  {
    v8 = buf;
  }

  else
  {
    v8 = *buf;
  }

  if (v7 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v3, v8, v9);
  if (v7 != v6 || v10)
  {
    v12 = v20;
    if ((v20 & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v12 = __p[1];
      v13 = __p[0];
    }

    if (v12 >= v6)
    {
      v14 = v6;
    }

    else
    {
      v14 = v12;
    }

    v15 = v12 == v6;
    v11 = !memcmp(v3, v13, v14) && v15;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v11 = 1;
  if (v4 < 0)
  {
LABEL_33:
    operator delete(v5);
  }

LABEL_34:
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v22 < 0)
  {
    operator delete(*buf);
  }

  return v11;
}

void sub_240EFFFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AppleCellularDataPlaneHelperInterface::addBearer(AppleCellularDataPlaneHelperInterface *this, unsigned int a2, unsigned int a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v47 = a3;
  v48 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "addBearer";
    *&buf[12] = 1024;
    *&buf[14] = a3;
    *&buf[18] = 1024;
    *&buf[20] = a2;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Adding Bearer %u to Network Interface %u.\n", buf, 0x18u);
  }

  v6 = *(this + 39);
  if (v6)
  {
    v7 = (this + 312);
    do
    {
      v8 = v6[8];
      v9 = v8 >= v48;
      v10 = v8 < v48;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *&v6[2 * v10];
    }

    while (v6);
    if (v7 != (this + 312) && v48 >= v7[8])
    {
      *buf = &v48;
      v13 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v48, &std::piecewise_construct, buf);
      v16 = v13[7];
      v14 = v13 + 7;
      v15 = v16;
      if (v16)
      {
        v17 = v14;
        do
        {
          v18 = *(v15 + 32);
          v9 = v18 >= v47;
          v19 = v18 < v47;
          if (v9)
          {
            v17 = v15;
          }

          v15 = *(v15 + 8 * v19);
        }

        while (v15);
        if (v17 != v14 && v47 >= *(v17 + 8))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "addBearer";
            *&buf[12] = 1024;
            *&buf[14] = v47;
            _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Bearer %u is already configured. Returning Success.\n", buf, 0x12u);
          }

          return 1;
        }
      }

      v44 = 0;
      v45 = 0;
      v46 = 0;
      __p = 0;
      v42 = 0;
      v43 = 0;
      v40 = 0;
      *buf = &v48;
      v20 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v48, &std::piecewise_construct, buf)[8];
      v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v20)
      {
        if (v21)
        {
          *buf = 136315650;
          *&buf[4] = "addBearer";
          *&buf[12] = 1024;
          *&buf[14] = v47;
          *&buf[18] = 1024;
          *&buf[20] = v48;
          _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: ERROR: Failed to add Bearer %u on Interface %u. Out of radio resources. Redirecting to Default Bearer\n", buf, 0x18u);
        }

        *buf = &v48;
        LODWORD(v49) = *(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v48, &std::piecewise_construct, buf) + 18);
        if (v49 == -1)
        {
          __assert_rtn("addBearer", "AppleCellularDataPlaneHelper.cpp", 745, "defaultBearerID != kACDPHelperNoBearer");
        }

        *buf = &v48;
        v22 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v48, &std::piecewise_construct, buf);
        *buf = &v49;
        v23 = std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v22 + 6), &v49, &std::piecewise_construct, buf);
        *buf = &v48;
        v24 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v48, &std::piecewise_construct, buf);
        *buf = &v47;
        v25 = std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v24 + 6), &v47, &std::piecewise_construct, buf);
        std::__memberwise_copy_assign[abi:ne200100]<std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>,0ul,1ul,2ul>(v25 + 5, (v23 + 5));
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_46;
        }

        *buf = 136315650;
        *&buf[4] = "addBearer";
        *&buf[12] = 1024;
        *&buf[14] = v47;
        *&buf[18] = 1024;
        *&buf[20] = v49;
        v26 = MEMORY[0x277D86220];
        v27 = "::%s: Bearer %u redirected to %u\n";
        v28 = 24;
      }

      else
      {
        if (v21)
        {
          *buf = 136315394;
          *&buf[4] = "addBearer";
          *&buf[12] = 1024;
          *&buf[14] = v47;
          _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Bearer %u becomes Default Bearer\n", buf, 0x12u);
        }

        *buf = &v48;
        if (*(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v48, &std::piecewise_construct, buf) + 18) != -1)
        {
          __assert_rtn("addBearer", "AppleCellularDataPlaneHelper.cpp", 714, "config_[interface].defaultBearer == kACDPHelperNoBearer");
        }

        *buf = &v48;
        v29 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v48, &std::piecewise_construct, buf);
        v30 = v29;
        if (*(v29 + 19))
        {
          v31 = 0;
          v32 = (v29 + 10);
          do
          {
            v34 = *v32;
            v32 += 3;
            v33 = v34;
            if (v34 == 3)
            {
              *buf = v31;
              std::vector<unsigned short>::push_back[abi:ne200100](&v44, buf);
            }

            else if (!v33)
            {
              *buf = v31;
              std::vector<unsigned short>::push_back[abi:ne200100](&__p, buf);
            }

            ++v31;
          }

          while (v31 < *(v30 + 19));
        }

        v35 = v47;
        *buf = &v48;
        *(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v48, &std::piecewise_construct, buf) + 18) = v35;
        _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorItNS_9allocatorItEEEES6_tEEC2B8ne200100IJLm0ELm1ELm2EEJS6_S6_tEJEJEJRS6_S9_RtEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(buf, &v44, &__p, &v40);
        v49 = &v48;
        v36 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v48, &std::piecewise_construct, &v49);
        v49 = &v47;
        v37 = std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v36 + 6), &v47, &std::piecewise_construct, &v49);
        v38 = v37[5];
        if (v38)
        {
          v37[6] = v38;
          operator delete(v38);
          v37[5] = 0;
          v37[6] = 0;
          v37[7] = 0;
        }

        v39 = v37[8];
        *(v37 + 5) = *buf;
        v37[7] = *&buf[16];
        memset(buf, 0, sizeof(buf));
        if (v39)
        {
          v37[9] = v39;
          operator delete(v39);
          v37[8] = 0;
          v37[9] = 0;
          v37[10] = 0;
          v39 = *buf;
        }

        *(v37 + 4) = v51;
        v37[10] = v52;
        v52 = 0;
        v51 = 0uLL;
        *(v37 + 44) = v53;
        if (v39)
        {
          *&buf[8] = v39;
          operator delete(v39);
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_46;
        }

        *buf = 136315394;
        *&buf[4] = "addBearer";
        *&buf[12] = 1024;
        *&buf[14] = v47;
        v26 = MEMORY[0x277D86220];
        v27 = "::%s: Bearer %u added\n";
        v28 = 18;
      }

      _os_log_impl(&dword_240EFD000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, v28);
LABEL_46:
      if (__p)
      {
        v42 = __p;
        operator delete(__p);
      }

      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }

      return 1;
    }
  }

  v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v11)
  {
    *buf = 136315394;
    *&buf[4] = "addBearer";
    *&buf[12] = 1024;
    *&buf[14] = v48;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Error: Network Interface %u not configured by ACDP-Helper.\n", buf, 0x12u);
    return 0;
  }

  return result;
}

void sub_240F00730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AppleCellularDataPlaneHelperInterface::generateOutputParamsForBearerID(uint64_t a1, unsigned int a2, int a3, unsigned int *a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v47 = a2;
  *a4 = 0;
  if (a2 == -1)
  {
    goto LABEL_46;
  }

  v4 = a3;
  if (a3 == -1)
  {
    goto LABEL_46;
  }

  v6 = *(a1 + 312);
  if (!v6)
  {
    goto LABEL_46;
  }

  v8 = a1 + 312;
  do
  {
    v9 = *(v6 + 32);
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * v11);
  }

  while (v6);
  if (v8 == a1 + 312 || *(v8 + 32) > a2)
  {
LABEL_46:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "generateOutputParamsForBearerID";
      v12 = MEMORY[0x277D86220];
      v13 = "::%s: returning 0 pipes\n";
      v14 = 12;
LABEL_13:
      _os_log_impl(&dword_240EFD000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, v14);
    }
  }

  else
  {
    *buf = &v47;
    v16 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 304, &v47, &std::piecewise_construct, buf);
    v17 = v16[6];
    v45 = v16 + 7;
    if (v17 != v16 + 7)
    {
      v18 = a4 + 1;
      v46 = v4;
      do
      {
        if (*(v17 + 8) == v4)
        {
          v19 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "generateOutputParamsForBearerID";
            v49 = 1024;
            v50 = v46;
            v51 = 1024;
            LODWORD(v52) = v47;
            _os_log_impl(&dword_240EFD000, v19, OS_LOG_TYPE_DEFAULT, "::%s: BearerID %u found on Interface %u\n", buf, 0x18u);
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = (v17[6] - v17[5]) >> 1;
            *buf = 136315650;
            *&buf[4] = "generateOutputParamsForBearerID";
            v49 = 1024;
            v50 = v46;
            v51 = 2048;
            v52 = v20;
            _os_log_impl(&dword_240EFD000, v19, OS_LOG_TYPE_DEFAULT, "::%s: BearerID %u has %lu RX Pipes\n", buf, 0x1Cu);
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v21 = (v17[9] - v17[8]) >> 1;
            *buf = 136315650;
            *&buf[4] = "generateOutputParamsForBearerID";
            v49 = 1024;
            v50 = v46;
            v51 = 2048;
            v52 = v21;
            _os_log_impl(&dword_240EFD000, v19, OS_LOG_TYPE_DEFAULT, "::%s: BearerID %u has %lu TX Pipes\n", buf, 0x1Cu);
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v22 = *(v17 + 44);
            *buf = 136315650;
            *&buf[4] = "generateOutputParamsForBearerID";
            v49 = 1024;
            v50 = v46;
            v51 = 1024;
            LODWORD(v52) = v22;
            _os_log_impl(&dword_240EFD000, v19, OS_LOG_TYPE_DEFAULT, "::%s: BearerID %u is using QueueSet ID %u\n", buf, 0x18u);
          }

          v24 = v17[5];
          v23 = v17[6];
          while (v24 != v23)
          {
            v25 = *v24;
            *buf = &v47;
            v26 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 304, &v47, &std::piecewise_construct, buf);
            v25 *= 3;
            AppleCellularDataPlaneHelperInterface::printIPCPipeConfig(v26, v26 + v25 + 20);
            *buf = &v47;
            v27 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 304, &v47, &std::piecewise_construct, buf) + 4 * v25;
            v28 = *a4;
            v29 = *a4 + 1;
            *a4 = v29;
            v30 = &v18[3 * v28];
            v31 = *(v27 + 10);
            v30[2] = *(v27 + 22);
            *v30 = v31;
            if (v29 >= 0x11)
            {
              AppleCellularDataPlaneHelperInterface::generateOutputParamsForBearerID();
            }

            ++v24;
          }

          v32 = v17[8];
          v33 = v17[9];
          while (v32 != v33)
          {
            v34 = *v32;
            *buf = &v47;
            v35 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 304, &v47, &std::piecewise_construct, buf);
            v34 *= 3;
            AppleCellularDataPlaneHelperInterface::printIPCPipeConfig(v35, v35 + v34 + 20);
            *buf = &v47;
            v36 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 304, &v47, &std::piecewise_construct, buf) + 4 * v34;
            v37 = *a4;
            v38 = *a4 + 1;
            *a4 = v38;
            v39 = &v18[3 * v37];
            v40 = *(v36 + 10);
            v39[2] = *(v36 + 22);
            *v39 = v40;
            if (v38 >= 0x11)
            {
              AppleCellularDataPlaneHelperInterface::generateOutputParamsForBearerID();
            }

            ++v32;
          }
        }

        v41 = v17[1];
        if (v41)
        {
          do
          {
            v42 = v41;
            v41 = *v41;
          }

          while (v41);
        }

        else
        {
          do
          {
            v42 = v17[2];
            v43 = *v42 == v17;
            v17 = v42;
          }

          while (!v43);
        }

        v17 = v42;
        v4 = v46;
      }

      while (v42 != v45);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v44 = *a4;
      *buf = 136315394;
      *&buf[4] = "generateOutputParamsForBearerID";
      v49 = 1024;
      v50 = v44;
      v12 = MEMORY[0x277D86220];
      v13 = "::%s: returning %u pipes\n";
      v14 = 18;
      goto LABEL_13;
    }
  }

  return 1;
}

uint64_t AppleCellularDataPlaneHelperInterface::removeBearer(AppleCellularDataPlaneHelperInterface *this, unsigned int a2, unsigned int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v25 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "removeBearer";
    v27 = 1024;
    v28 = a3;
    v29 = 1024;
    v30 = a2;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Removing Bearer 0x%x from Network Interface %u.\n", buf, 0x18u);
  }

  v6 = *(this + 39);
  if (v6)
  {
    v7 = (this + 312);
    do
    {
      v8 = v6[8];
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *&v6[2 * v10];
    }

    while (v6);
    if (v7 != (this + 312) && v7[8] <= a2)
    {
      *buf = &v25;
      v13 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v25, &std::piecewise_construct, buf);
      v16 = v13[7];
      v14 = v13 + 7;
      v15 = v16;
      if (!v16)
      {
        goto LABEL_21;
      }

      v17 = v14;
      do
      {
        v18 = *(v15 + 32);
        v9 = v18 >= a3;
        v19 = v18 < a3;
        if (v9)
        {
          v17 = v15;
        }

        v15 = *(v15 + 8 * v19);
      }

      while (v15);
      if (v17 != v14 && *(v17 + 8) <= a3)
      {
        *buf = &v25;
        v22 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v25, &std::piecewise_construct, buf);
        std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::__erase_unique<unsigned int>(v22 + 6, &v24);
        v23 = v24;
        *buf = &v25;
        if (v23 == *(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v25, &std::piecewise_construct, buf) + 18))
        {
          *buf = &v25;
          *(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v25, &std::piecewise_construct, buf) + 18) = -1;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 1;
          }

          *buf = 136315394;
          *&buf[4] = "removeBearer";
          v27 = 1024;
          v28 = v24;
          v20 = MEMORY[0x277D86220];
          v21 = "::%s: Default Bearer %u removed\n";
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 1;
          }

          *buf = 136315394;
          *&buf[4] = "removeBearer";
          v27 = 1024;
          v28 = v24;
          v20 = MEMORY[0x277D86220];
          v21 = "::%s: Bearer %u removed\n";
        }
      }

      else
      {
LABEL_21:
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 1;
        }

        *buf = 136315394;
        *&buf[4] = "removeBearer";
        v27 = 1024;
        v28 = a3;
        v20 = MEMORY[0x277D86220];
        v21 = "::%s: Bearer 0x%x is not configured. Returning Success.\n";
      }

      _os_log_impl(&dword_240EFD000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0x12u);
      return 1;
    }
  }

  v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v11)
  {
    *buf = 136315394;
    *&buf[4] = "removeBearer";
    v27 = 1024;
    v28 = a2;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Error: Network Interface %u not configured by ACDP-Helper.\n", buf, 0x12u);
    return 0;
  }

  return result;
}

uint64_t AppleCellularDataPlaneHelperInterface::removeInterface(AppleCellularDataPlaneHelperInterface *this, unsigned int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v3 = *(this + 39);
  if (v3)
  {
    v5 = (this + 312);
    do
    {
      v6 = v3[8];
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *&v3[2 * v8];
    }

    while (v3);
    if (v5 != (this + 312) && v5[8] <= a2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v18;
        v11 = *(std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v18, &std::piecewise_construct, buf) + 40);
        *buf = 136315650;
        *&buf[4] = "removeInterface";
        v21 = 1024;
        v22 = a2;
        v23 = 1024;
        v24 = v11;
        _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Removing Network Interface %u (rss = %u)\n", buf, 0x18u);
      }

      *buf = &v18;
      v12 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v18, &std::piecewise_construct, buf);
      if (AppleCellularDataPlaneHelperInterface::connect(this, *(v12 + 21)))
      {
        *buf = &v18;
        *buf = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, &v18, &std::piecewise_construct, buf) + 42;
        v13 = std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(this + 280, *buf, &std::piecewise_construct, buf, &v19);
        v14 = (*(v13[5] + 64))();
        v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (!v14)
        {
          if (v15)
          {
            *buf = 136315394;
            *&buf[4] = "removeInterface";
            v21 = 1024;
            v22 = v18;
            _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Network Interface %u removed\n", buf, 0x12u);
          }

          v9 = 1;
          goto LABEL_23;
        }

        if (v15)
        {
          *buf = 136315138;
          *&buf[4] = "removeInterface";
          v16 = MEMORY[0x277D86220];
          v17 = "::%s: Failed to remove network interface. Device Reset needed.\n";
LABEL_21:
          _os_log_impl(&dword_240EFD000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "removeInterface";
        v16 = MEMORY[0x277D86220];
        v17 = "::%s: ERROR: Failed to connect to ACDP-Driver. Device Reset needed\n";
        goto LABEL_21;
      }

      v9 = 0;
LABEL_23:
      std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__erase_unique<unsigned int>(this + 304, &v18);
      return v9;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "removeInterface";
    v21 = 1024;
    v22 = a2;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Network Interface %u not configured by ACDP-Helper. Returning Success.\n", buf, 0x12u);
  }

  return 1;
}

void AppleCellularDataPlaneHelperInterface::printIPCPipeConfig(uint64_t a1, int *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return;
  }

  v3 = *a2;
  if (*a2 > 1)
  {
    if (v3 != 2)
    {
      if (v3 != 3 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v8 = 136315138;
      v9 = "printIPCPipeConfig";
      v4 = MEMORY[0x277D86220];
      v5 = "::%s: Type = kAppleIPAppenderIPCPipeType_DL_CR\n";
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "printIPCPipeConfig";
      v4 = MEMORY[0x277D86220];
      v5 = "::%s: Type = kAppleIPAppenderIPCPipeType_DL_TR\n";
      goto LABEL_15;
    }
  }

  else
  {
    if (v3)
    {
      if (v3 != 1 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v8 = 136315138;
      v9 = "printIPCPipeConfig";
      v4 = MEMORY[0x277D86220];
      v5 = "::%s: Type = kAppleIPAppenderIPCPipeType_UL_CR\n";
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "printIPCPipeConfig";
      v4 = MEMORY[0x277D86220];
      v5 = "::%s: Type = kAppleIPAppenderIPCPipeType_UL_TR\n";
LABEL_15:
      _os_log_impl(&dword_240EFD000, v4, OS_LOG_TYPE_DEFAULT, v5, &v8, 0xCu);
    }
  }

LABEL_16:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = a2[1];
    v8 = 136315394;
    v9 = "printIPCPipeConfig";
    v10 = 1024;
    v11 = v6;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Priority = %u\n", &v8, 0x12u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = a2[2];
    v8 = 136315394;
    v9 = "printIPCPipeConfig";
    v10 = 1024;
    v11 = v7;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: ID = %u\n", &v8, 0x12u);
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

void std::vector<unsigned short>::push_back[abi:ne200100](const void **a1, unsigned __int16 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t AppleCellularDataPlaneHelperInterface::blockPDPTraffic(AppleCellularDataPlaneHelperInterface *this, unsigned int a2, char a3)
{
  v26 = *MEMORY[0x277D85DE8];
  *v21 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "blockPDPTraffic";
    v24 = 1024;
    v25 = a2;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Blocking PDP Traffic on Network Interface %u.\n", buf, 0x12u);
  }

  std::mutex::lock((this + 8));
  v6 = *(this + 39);
  if (v6)
  {
    v7 = (this + 312);
    do
    {
      v8 = v6[8];
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *&v6[2 * v10];
    }

    while (v6);
    if (v7 != (this + 312) && v7[8] <= a2)
    {
      *buf = v21;
      v16 = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, v21, &std::piecewise_construct, buf);
      if ((AppleCellularDataPlaneHelperInterface::connect(this, *(v16 + 21)) & 1) == 0)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *buf = 136315138;
        *&buf[4] = "blockPDPTraffic";
        v11 = MEMORY[0x277D86220];
        v12 = "::%s: ERROR: Failed to connect to ACDP-Driver. Device Reset needed\n";
        v13 = 12;
        goto LABEL_13;
      }

      if (a3)
      {
        *buf = v21;
        *buf = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, v21, &std::piecewise_construct, buf) + 42;
        v17 = std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(this + 280, *buf, &std::piecewise_construct, buf, &v22);
        IOACIPCBBNetCfgClass::stopNetIfTx((v17 + 5));
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "blockPDPTraffic";
          v24 = 1024;
          v25 = *v21;
          v18 = MEMORY[0x277D86220];
          v19 = "::%s: Network Interface %u blocked\n";
LABEL_24:
          _os_log_impl(&dword_240EFD000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0x12u);
        }
      }

      else
      {
        *buf = v21;
        *buf = std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 304, v21, &std::piecewise_construct, buf) + 42;
        v20 = std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(this + 280, *buf, &std::piecewise_construct, buf, &v22);
        IOACIPCBBNetCfgClass::startNetIfTx((v20 + 5));
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "blockPDPTraffic";
          v24 = 1024;
          v25 = *v21;
          v18 = MEMORY[0x277D86220];
          v19 = "::%s: Network Interface %u resumed\n";
          goto LABEL_24;
        }
      }

      v14 = 1;
      goto LABEL_15;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "blockPDPTraffic";
    v24 = 1024;
    v25 = a2;
    v11 = MEMORY[0x277D86220];
    v12 = "::%s: Error: Network Interface %u not configured by ACDP-Helper.\n";
    v13 = 18;
LABEL_13:
    _os_log_impl(&dword_240EFD000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, v13);
  }

LABEL_14:
  v14 = 0;
LABEL_15:
  std::mutex::unlock((this + 8));
  return v14;
}

uint64_t AppleCellularDataPlaneHelperInterface::registerFilterRuleCallBack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 8));
  *(a1 + 360) = a2;
  *(a1 + 368) = a3;
  std::mutex::unlock((a1 + 8));
  return 1;
}

void AppleCellularDataPlaneHelperInterface::completeFilterRule(uint64_t a1, unsigned int a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "completeFilterRule";
    v16 = 1024;
    v17 = a2;
    v18 = 1024;
    v19 = a3;
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: Completing Filter Rule (rule-id: %u, result: %u)\n", buf, 0x18u);
  }

  std::mutex::lock((a1 + 8));
  v6 = *(a1 + 336);
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = a1 + 336;
  do
  {
    v8 = *(v6 + 28);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == a1 + 336 || *(v7 + 28) > a2)
  {
LABEL_22:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "completeFilterRule";
      v16 = 1024;
      v17 = a2;
      _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: ERROR: invalid Filter Rule (rule-id: %u)\n", buf, 0x12u);
    }
  }

  *buf = &v13;
  v12 = *(std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 328, &v13, &std::piecewise_construct, buf) + 16);
  std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::__erase_unique<unsigned int>((a1 + 328), &v13);
  if (AppleCellularDataPlaneHelperInterface::connect(a1, v12))
  {
    *buf = &v12;
    v11 = std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a1 + 280, &v12, &std::piecewise_construct, buf, &v14);
    if (a3 == 1)
    {
      IOACIPCBBNetCfgClass::completeFilterRule((v11 + 5));
    }

    else
    {
      IOACIPCBBNetCfgClass::cancelFilterRuleCompletion((v11 + 5));
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "completeFilterRule";
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: ERROR: Failed to connect to ACDP-Driver. Device Reset needed or Device in Reset\n", buf, 0xCu);
  }

  std::mutex::unlock((a1 + 8));
}

void handleInterfaceChange(const __SCDynamicStore *a1, const __CFArray *a2, char *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    std::mutex::lock((a3 + 48));
    *(a3 + 62) = 0;
    v5 = *(a3 + 14);
    if (!v5)
    {
      goto LABEL_7;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "handleInterfaceChange";
      v12 = 2080;
      v13 = v5;
      _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: checking for %s", &v10, 0x16u);
      v5 = *(a3 + 14);
    }

    v6 = checkSCStoreForIfNet(a1, v5);
    a3[125] = v6;
    v7 = *(a3 + 30);
    v8 = v7 == 0 && v6;
    v9 = v7 != 1;
    if (v8 || !v9 && !v6)
    {
      a3[124] = 1;
      std::mutex::unlock((a3 + 48));
      std::condition_variable::notify_all(a3);
    }

    else
    {
LABEL_7:
      std::mutex::unlock((a3 + 48));
    }
  }
}

BOOL AppleCellularDataPlaneHelperInterface::checkForDevicePresence(SCDynamicStoreRef *this, const char *a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!a2)
  {
    if (!result)
    {
      return result;
    }

    v9 = 136315138;
    v10 = "checkForDevicePresence";
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: invalid interface name", &v9, 0xCu);
    return 0;
  }

  if (a3)
  {
    if (!result)
    {
      goto LABEL_10;
    }

    v9 = 136315394;
    v10 = "checkForDevicePresence";
    v11 = 2080;
    v12 = a2;
    v7 = MEMORY[0x277D86220];
    v8 = "::%s: Check for interface presence (%s)";
  }

  else
  {
    if (!result)
    {
      goto LABEL_10;
    }

    v9 = 136315394;
    v10 = "checkForDevicePresence";
    v11 = 2080;
    v12 = a2;
    v7 = MEMORY[0x277D86220];
    v8 = "::%s: Check for interface absence (%s)";
  }

  _os_log_impl(&dword_240EFD000, v7, OS_LOG_TYPE_DEFAULT, v8, &v9, 0x16u);
LABEL_10:
  if (checkSCStoreForIfNet(this[18], a2) != a3)
  {
    return 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "checkForDevicePresence";
    _os_log_impl(&dword_240EFD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "::%s: condition already met", &v9, 0xCu);
  }

  return 1;
}

BOOL checkSCStoreForIfNet(SCDynamicStoreRef store, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  NetworkInterface = getNetworkInterfaceKey(void)::key;
  if (!getNetworkInterfaceKey(void)::key)
  {
    NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(0, *MEMORY[0x277CE1648]);
    getNetworkInterfaceKey(void)::key = NetworkInterface;
  }

  v5 = SCDynamicStoreCopyValue(store, NetworkInterface);
  p_theDict = &theDict;
  theDict = v5;
  TypeID = CFDictionaryGetTypeID();
  if (v5)
  {
    if (CFGetTypeID(v5) == TypeID)
    {
      Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CE1798]);
      v8 = CFArrayGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == v8)
        {
          theString2 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x600u);
          if (theString2)
          {
            Count = CFArrayGetCount(Value);
            if (Count < 1)
            {
              v11 = 0;
LABEL_16:
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_21;
              }

              *buf = 136315394;
              v20 = "checkSCStoreForIfNet";
              v21 = 2080;
              v22 = a2;
              v14 = MEMORY[0x277D86220];
              v15 = "::%s: %s not found";
            }

            else
            {
              v10 = 0;
              v11 = 1;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(Value, v10);
                if (CFStringCompare(ValueAtIndex, theString2, 0) == kCFCompareEqualTo)
                {
                  break;
                }

                v11 = ++v10 < Count;
                if (Count == v10)
                {
                  goto LABEL_16;
                }
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_21;
              }

              *buf = 136315394;
              v20 = "checkSCStoreForIfNet";
              v21 = 2080;
              v22 = a2;
              v14 = MEMORY[0x277D86220];
              v15 = "::%s: %s found";
            }

            _os_log_impl(&dword_240EFD000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0x16u);
LABEL_21:
            CFRelease(theString2);
            goto LABEL_14;
          }
        }
      }
    }
  }

  v11 = 0;
LABEL_14:
  ACDPHelperSentry<checkSCStoreForIfNet(__SCDynamicStore const*,char const*)::$_0>::~ACDPHelperSentry(&p_theDict);
  return v11;
}

void sub_240F02360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278CBC2C0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,0>(a2 + 4);

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,0>(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__memberwise_copy_assign[abi:ne200100]<std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>,0ul,1ul,2ul>(void **result, uint64_t a2)
{
  v3 = result;
  if (result != a2)
  {
    std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short *,unsigned short *>(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
    result = std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short *,unsigned short *>(v3 + 3, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 1);
  }

  *(v3 + 24) = *(a2 + 48);
  return result;
}

void **std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short *,unsigned short *>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned short>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorItNS_9allocatorItEEEES6_tEEC2B8ne200100IJLm0ELm1ELm2EEJS6_S6_tEJEJEJRS6_S9_RtEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>((a1 + 24), *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 1);
  *(a1 + 48) = *a4;
  return a1;
}

void sub_240F027B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_240F02834(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

const void ***ACDPHelperSentry<checkSCStoreForIfNet(__SCDynamicStore const*,char const*)::$_0>::~ACDPHelperSentry(const void ***a1)
{
  v2 = **a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::destroy(a1, a2[1]);
    MEMORY[0x245CD3BE0](a2 + 5);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::destroy((a2 + 6), a2[7]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
LABEL_8:
    std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>();
  }

  v6 = *a2;
  while (1)
  {
    while (1)
    {
      v7 = v5;
      v8 = *(v5 + 32);
      if (v6 >= v8)
      {
        break;
      }

      v5 = *v7;
      if (!*v7)
      {
        goto LABEL_8;
      }
    }

    if (v8 >= v6)
    {
      return v7;
    }

    v5 = v7[1];
    if (!v5)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

char **std::unique_ptr<std::__tree_node<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      MEMORY[0x245CD3BE0](v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__erase_unique<unsigned short>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__remove_node_pointer(a1, v4);
  MEMORY[0x245CD3BE0](v4 + 40);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (*(v23 + 24))
  {
    v24 = *(v7 + 8);
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    *(v7 + 8) = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = *(v7 + 16);
    *(v24 + 16) = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    *(v7 + 16) = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 28);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

char *std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
LABEL_8:
    std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>();
  }

  v6 = *a2;
  while (1)
  {
    while (1)
    {
      v7 = v5;
      v8 = *(v5 + 32);
      if (v6 >= v8)
      {
        break;
      }

      v5 = *v7;
      if (!*v7)
      {
        goto LABEL_8;
      }
    }

    if (v8 >= v6)
    {
      return v7;
    }

    v5 = v7[1];
    if (!v5)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__erase_unique<unsigned int>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__remove_node_pointer(a1, a2);
  std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::destroy(a2 + 48, *(a2 + 56));
  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<unsigned int,ACDPNetIFConfig>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ACDPNetIFConfig>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ACDPNetIFConfig>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,0>(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>>>::__erase_unique<unsigned int>(uint64_t **a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 1;
  do
  {
    v5 = *(v2 + 8);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == a1 + 1 || v3 < *(v4 + 8))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__remove_node_pointer(a1, v4);
  std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,std::tuple<std::vector<unsigned short>,std::vector<unsigned short>,unsigned short>>,0>(v4 + 4);
  operator delete(v4);
  return 1;
}

uint64_t std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::__erase_unique<unsigned int>(uint64_t **a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 1;
  do
  {
    v5 = *(v2 + 7);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == a1 + 1 || v3 < *(v4 + 7))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IOACIPCBBNetCfgClass>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IOACIPCBBNetCfgClass>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

void ApplePDPHelperInterface::ApplePDPHelperInterface(ApplePDPHelperInterface *this)
{
  *this = &unk_2852CB068;
  *(this + 1) = 850045863;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = this + 104;
  *(this + 14) = this + 104;
  *(this + 15) = 0;
  *(this + 16) = 0;
}

{
  *this = &unk_2852CB068;
  *(this + 1) = 850045863;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = this + 104;
  *(this + 14) = this + 104;
  *(this + 15) = 0;
  *(this + 16) = 0;
}

void ApplePDPHelperInterface::~ApplePDPHelperInterface(ApplePDPHelperInterface *this)
{
  *this = &unk_2852CB068;
  v2 = (this + 8);
  std::mutex::lock((this + 8));
  ApplePDPHelperInterface::cleanup_nl(this);
  std::mutex::unlock(v2);
  std::__list_imp<__CFRunLoop *>::clear(this + 13);
  std::mutex::~mutex(v2);
}

{
  ApplePDPHelperInterface::~ApplePDPHelperInterface(this);

  JUMPOUT(0x245CD3CC0);
}

uint64_t ApplePDPHelperInterface::cleanup_nl(ApplePDPHelperInterface *this)
{
  if (*(this + 15))
  {
    v2 = this + 104;
    v3 = *(this + 14);
    if (v3 != this + 104)
    {
      v4 = *MEMORY[0x277CBF048];
      do
      {
        v5 = *(v3 + 2);
        if (CFRunLoopContainsSource(v5, *(this + 12), v4))
        {
          CFRunLoopRemoveSource(v5, *(this + 12), v4);
        }

        CFRelease(v5);
        v3 = *(v3 + 1);
      }

      while (v3 != v2);
    }

    std::__list_imp<__CFRunLoop *>::clear(this + 13);
  }

  v6 = *(this + 16);
  if (v6)
  {
    IONotificationPortDestroy(v6);
    *(this + 16) = 0;
  }

  v7 = *(this + 20);
  if (v7)
  {
    IOServiceClose(v7);
    *(this + 20) = 0;
  }

  result = *(this + 19);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 19) = 0;
  }

  return result;
}

uint64_t ApplePDPHelperInterface::init(ApplePDPHelperInterface *this)
{
  std::mutex::lock((this + 8));
  v2 = IOServiceMatching("AppleIPAppender");
  v3 = *MEMORY[0x277CD2898];
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v2);
  *(this + 19) = MatchingService;
  if (MatchingService)
  {
    LODWORD(v5) = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, this + 20);
    if (v5 || (v5 = IONotificationPortCreate(v3), (*(this + 16) = v5) == 0))
    {
      syslog(3, "Could not open service (0x%x)\n", v5);
    }

    else
    {
      notification = 0;
      v8 = IOServiceAddInterestNotification(v5, *(this + 19), "IOGeneralInterest", ApplePDPHelperInterface::callback, this, &notification);
      *(this + 12) = IONotificationPortGetRunLoopSource(*(this + 16));
      if (!v8)
      {
        v6 = 1;
        goto LABEL_6;
      }
    }
  }

  else
  {
    syslog(3, "Could not find %s service\n", "AppleIPAppender");
  }

  ApplePDPHelperInterface::cleanup_nl(this);
  v6 = 0;
LABEL_6:
  std::mutex::unlock((this + 8));
  return v6;
}

uint64_t ApplePDPHelperInterface::getInstance(ApplePDPHelperInterface *this)
{
  if (ApplePDPHelperInterface::getInstance(void)::onceToken != -1)
  {
    ApplePDPHelperInterface::getInstance();
  }

  return ApplePDPHelperInterface::getInstance(void)::sInstance;
}

void ApplePDPHelperInterface::create(ApplePDPHelperInterface *this)
{
  if (ApplePDPHelperInterface::probeVariant(void)::sOnce != -1)
  {
    ApplePDPHelperInterface::create();
  }

  if (ApplePDPHelperInterface::probeVariant(void)::ret == 1)
  {
    operator new();
  }

  operator new();
}

uint64_t ApplePDPHelperInterface::callMethod(ApplePDPHelperInterface *this, uint32_t a2, const char *a3, unint64_t *a4, uint32_t a5, void *a6, size_t a7, unint64_t *a8, uint32_t *outputCnt, void *outputStruct, unint64_t *a11)
{
  std::mutex::lock((this + 8));
  v19 = *(this + 20);
  if (v19)
  {
    v20 = IOConnectCallMethod(v19, a2, a4, a5, a6, a7, a8, outputCnt, outputStruct, a11);
    if (!v20)
    {
      v21 = 1;
      goto LABEL_7;
    }

    syslog(3, "ApplePDPHelper: Performing '%s' failed: %d (0x%x)\n", a3, v20, v20);
  }

  else
  {
    syslog(3, "ApplePDPHelper: service is not open\n");
  }

  v21 = 0;
LABEL_7:
  std::mutex::unlock((this + 8));
  return v21;
}

uint64_t ApplePDPHelperInterface::callScalarMethod(ApplePDPHelperInterface *this, uint32_t a2, const char *a3, unint64_t *a4, uint32_t a5, unint64_t *a6, unsigned int *a7)
{
  std::mutex::lock((this + 8));
  v14 = *(this + 20);
  if (v14)
  {
    v15 = IOConnectCallScalarMethod(v14, a2, a4, a5, a6, a7);
    if (!v15)
    {
      v16 = 1;
      goto LABEL_7;
    }

    syslog(3, "ApplePDPHelper: Performing '%s' failed: 0x%x\n", a3, v15);
  }

  else
  {
    syslog(3, "ApplePDPHelper: service is not open\n");
  }

  v16 = 0;
LABEL_7:
  std::mutex::unlock((this + 8));
  return v16;
}

BOOL ApplePDPHelperInterface::callAsyncScalarMethod(ApplePDPHelperInterface *this, uint32_t a2, const char *a3, uint64_t a4, unint64_t a5, unint64_t *a6, uint32_t a7, unint64_t *a8, uint32_t *outputCnt)
{
  v27 = *MEMORY[0x277D85DE8];
  std::mutex::lock((this + 8));
  v17 = *(this + 20);
  if (!v17)
  {
    syslog(3, "ApplePDPHelper: service is not open\n");
LABEL_7:
    v21 = 0;
    goto LABEL_8;
  }

  v18 = *(this + 16);
  if (!v18)
  {
    syslog(3, "ApplePDPHelper: IONotification port is NULL\n");
    goto LABEL_7;
  }

  reference[0] = 0;
  v25 = 0u;
  v26 = 0u;
  reference[1] = a4;
  v24 = a5;
  MachPort = IONotificationPortGetMachPort(v18);
  v20 = IOConnectCallAsyncScalarMethod(v17, a2, MachPort, reference, 3u, a6, a7, a8, outputCnt);
  v21 = v20 == 0;
  if (v20)
  {
    syslog(3, "ApplePDPHelper: Performing '%s' failed: 0x%x\n", a3, v20);
  }

LABEL_8:
  std::mutex::unlock((this + 8));
  return v21;
}

uint64_t ApplePDPHelperInterface::enable(ApplePDPHelperInterface *this, unsigned int a2, BOOL *a3)
{
  v7 = 1;
  v5 = a2;
  v6 = 0;
  result = ApplePDPHelperInterface::callScalarMethod(this, 3u, "Enable QoS header prepend", &v5, 1u, &v6, &v7);
  if (a3)
  {
    if (result)
    {
      *a3 = v6 != 0;
    }
  }

  return result;
}

uint64_t ApplePDPHelperInterface::addFlow(ApplePDPHelperInterface *a1, int a2, int a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return ApplePDPHelperInterface::callStructMethod(a1, 0, "Add Traffic class to flow Id mapping", v4, 8u, 0, 0);
}

uint64_t ApplePDPHelperInterface::getFlow(ApplePDPHelperInterface *a1, unsigned int a2, _DWORD *a3)
{
  v7 = 1;
  v5 = a2;
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  result = ApplePDPHelperInterface::callScalarMethod(a1, 2u, "Get flow Id mapping for traffic class", &v5, 1u, &v6, &v7);
  if (result)
  {
    *a3 = v6;
    return 1;
  }

  return result;
}

uint64_t ApplePDPHelperInterface::enableMetadataTrailer(ApplePDPHelperInterface *this, unsigned int a2, BOOL *a3)
{
  v7 = 1;
  v5 = a2;
  v6 = 0;
  result = ApplePDPHelperInterface::callScalarMethod(this, 0x11u, "Enable metadata trailer append", &v5, 1u, &v6, &v7);
  if (a3)
  {
    if (result)
    {
      *a3 = v6 != 0;
    }
  }

  return result;
}

uint64_t ApplePDPHelperInterface::setDormancyInterval(ApplePDPHelperInterface *this, int a2, int a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return ApplePDPHelperInterface::callStructMethod(this, 4u, "Set dormancy", v4, 8u, 0, 0);
}

uint64_t ApplePDPHelperInterface::getDormancyTime(ApplePDPHelperInterface *this, unsigned int *a2)
{
  v5 = 1;
  v4 = 0;
  result = ApplePDPHelperInterface::callScalarMethod(this, 5u, "Get dormancy time", 0, 0, &v4, &v5);
  if (result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t ApplePDPHelperInterface::reportLinkThroughput(ApplePDPHelperInterface *a1, void *a2)
{
  if (a2)
  {
    return ApplePDPHelperInterface::callStructMethod(a1, 0xBu, "Report throughput for network interfaces", a2, 0x20u, 0, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t ApplePDPHelperInterface::copyWakeBuffer(ApplePDPHelperInterface *this, unsigned __int8 *a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  outputCnt = 1;
  v6 = a3;
  *a4 = a3;
  return ApplePDPHelperInterface::callMethod(this, 0xAu, "Copy wake buffer", &v6, 1u, 0, 0, a5, &outputCnt, a2, a4);
}

uint64_t ApplePDPHelperInterface::fillupPortLists(ApplePDPHelperInterface *this, unsigned __int16 *a2, unsigned int a3, const unsigned __int8 *a4, unint64_t a5, unsigned int *a6, __int16 a7)
{
  if (!a5)
  {
    return 1;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = a4[v7];
    if (v9)
    {
      break;
    }

LABEL_11:
    v7 = ++v8;
    if (v8 >= a5)
    {
      return 1;
    }
  }

  v10 = 0;
  v11 = (a7 << 15) + 8 * v8;
  while (1)
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }

    v12 = *a6;
    if (v12 >= a3)
    {
      break;
    }

    *a6 = v12 + 1;
    a2[v12] = v11;
LABEL_8:
    if (v9 >= 2)
    {
      v9 >>= 1;
      ++v11;
      if (v10++ < 7)
      {
        continue;
      }
    }

    goto LABEL_11;
  }

  syslog(3, "%s: the number of port lists (%u) is more than max number of port lists (%u)\n", "BOOL ApplePDPHelperInterface::fillupPortLists(uint16_t *, const unsigned int, const uint8_t *, const size_t, unsigned int *, const unsigned int)", v12, a3);
  return 0;
}

uint64_t ApplePDPHelperInterface::getOpenPortsExt(ApplePDPHelperInterface *this, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, unint64_t *a6)
{
  v6 = MEMORY[0x28223BE20](this, a2, a3, a4, a5, a6);
  v24[3] = *MEMORY[0x277D85DE8];
  if (v9 && (v12 = v11) != 0)
  {
    v13 = v10;
    *v11 = 0;
    if (v10 <= 0x10000)
    {
      v15 = v9;
      v16 = v6;
      v17 = 0;
      v24[0] = v7;
      v24[1] = v8;
      v22 = 4096;
      v21 = 0;
      *v11 = 0;
      for (i = 1; ; i = 0)
      {
        v19 = i;
        bzero(v23, 0x1000uLL);
        v24[2] = v17;
        v20 = ApplePDPHelperInterface::callMethod(v16, 0xCu, "Get open ports (Extension)", v24, 3u, 0, 0, 0, 0, v23, &v22);
        if ((v20 & 1) == 0)
        {
          break;
        }

        if ((ApplePDPHelperInterface::fillupPortLists(v20, v15, v13, v23, 0x1000uLL, &v21, v17) & 1) == 0)
        {
          return 0;
        }

        v17 = 1;
        if ((v19 & 1) == 0)
        {
          *v12 = 2 * v21;
          return 1;
        }
      }

      syslog(3, "%s: Failed on getting raw bit buffer.\n");
    }

    else
    {
      syslog(3, "%s: Max number of port lists (%u) cannot be exceeded more than %u\n");
    }
  }

  else
  {
    syslog(3, "%s: portLists/copiedBytes should not be NULL\n");
  }

  return 0;
}

uint64_t ApplePDPHelperInterface::blockPDPTraffic(ApplePDPHelperInterface *this, unsigned int a2, unsigned int a3)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = a2;
  v4[1] = a3;
  return ApplePDPHelperInterface::callScalarMethod(this, 0x10u, "Block PDP traffic", v4, 2u, 0, 0);
}

uint64_t ApplePDPHelperInterface::getKeepaliveOffloadFrames(ApplePDPHelperInterface *a1, unsigned int a2, void *a3, _DWORD *a4)
{
  v4 = 0;
  v9[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a4)
    {
      v4 = *a4;
      if (v4)
      {
        v8 = 132 * v4;
        v9[0] = a2;
        *a4 = 0;
        v6 = ApplePDPHelperInterface::callMethod(a1, 0x12u, "Get Keepalive Offload Frames", v9, 1u, 0, 0, 0, 0, a3, &v8);
        v4 = 0;
        if (v6)
        {
          if (v8 % 0x84)
          {
            syslog(3, "%s: Returned size %zu is not a multiple of frame size %lu\n", "BOOL ApplePDPHelperInterface::getKeepaliveOffloadFrames(unsigned int, AppleIPAppenderKeepaliveOffloadFrame_t *, unsigned int *)", v8, 132);
            return 0;
          }

          else
          {
            *a4 = v8 / 0x84;
            return 1;
          }
        }
      }
    }
  }

  return v4;
}

unint64_t ApplePDPHelperInterface::registerFilterRuleCallBack(ApplePDPHelperInterface *a1, const void *a2, const void *a3)
{
  v3 = a2;
  v8[2] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    syslog(6, "client callback: %p, context: %p\n", a2, a3);
    v8[0] = v3;
    v8[1] = a3;
    v7 = 0;
    v3 = ApplePDPHelperInterface::callAsyncScalarMethod(a1, 0x14u, "register filter rule callback", ApplePDPHelperInterface::filterRuleNotification, v3, v8, 2u, 0, &v7);
    if ((v3 & 1) == 0)
    {
      syslog(3, "Filter rule callback registration failed\n");
    }
  }

  else
  {
    syslog(3, "filter rule callback is NULL\n");
  }

  return v3;
}

void ApplePDPHelperInterface::filterRuleNotification(ApplePDPHelperInterface *this, void *a2, const void *a3, void *a4, void *a5)
{
  if (a2)
  {
    syslog(3, "Error - FilterRule notification, result: 0x%08x\n", a3, a4, a5);
  }

  else
  {
    syslog(6, "refCon: %p, frInfo: %p, context: %p\n", this, a3, a4);
    if (this)
    {
      v8 = dispatch_queue_create("filter rule queue", 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZN23ApplePDPHelperInterface22filterRuleNotificationEPviS0_S0__block_invoke;
      block[3] = &__block_descriptor_tmp_42;
      block[4] = this;
      block[5] = a3;
      block[6] = a4;
      dispatch_sync(v8, block);
      dispatch_release(v8);
    }

    else
    {
      syslog(3, "NULL client callback reference\n");
    }
  }
}

void ___ZN23ApplePDPHelperInterface22filterRuleNotificationEPviS0_S0__block_invoke(void *a1)
{
  if (a1[5])
  {
    v3 = a1[4];
    v4 = a1[6];
    v5 = a1[5];

    v3(v5, v4);
  }

  else
  {
    syslog(3, "NULL filter rule info\n", v1, v2);
  }
}

uint64_t ApplePDPHelperInterface::notifyDedicatedBearer(ApplePDPHelperInterface *a1, unsigned __int8 *a2, void *a3)
{
  if (!a2)
  {
    syslog(3, "NULL Input args\n");
    return 0;
  }

  if (!a3)
  {
    syslog(3, "NULL Output args\n");
    return 0;
  }

  if (*(a2 + 2) >= 0xFFu)
  {
    syslog(3, "Invalid bearerID %u\n");
    return 0;
  }

  if (*(a2 + 3) >= 3)
  {
    syslog(3, "Invalid service %u\n");
    return 0;
  }

  v6 = 16;
  v4 = ApplePDPHelperInterface::callStructMethod(a1, 0x13u, "Notify Dedicated bearer up or down", a2, 0x10u, a3, &v6);
  if ((v4 & 1) == 0)
  {
    syslog(3, "Notification of dedicated bearer to driver failed, enable %u, interfaceID: %u, bearerID: %u, service: %u\n", *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3));
  }

  return v4;
}

uint64_t ApplePDPHelperInterface::ipcInterfaceConfig(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((ApplePDPHelperInterface::ipcInterfaceConfig(AppleIPAppenderIPCInterfaceInputParams const&,AppleIPAppenderIPCInterfaceOutputParams &)::defaultBearerIdsInitialized & 1) == 0)
  {
    *&v3 = -1;
    *(&v3 + 1) = -1;
    xmmword_27E51D088 = v3;
    unk_27E51D098 = v3;
    ApplePDPHelperInterface::ipcInterfaceConfig(AppleIPAppenderIPCInterfaceInputParams const&,AppleIPAppenderIPCInterfaceOutputParams &)::defaultBearerIds = v3;
    unk_27E51D078 = v3;
    ApplePDPHelperInterface::ipcInterfaceConfig(AppleIPAppenderIPCInterfaceInputParams const&,AppleIPAppenderIPCInterfaceOutputParams &)::defaultBearerIdsInitialized = 1;
  }

  if (*(a2 + 24))
  {
    v4 = *(a2 + 16);
    if (*(a2 + 32))
    {
      v5 = 63;
      if (v4 <= 0xF)
      {
        if (*(&ApplePDPHelperInterface::ipcInterfaceConfig(AppleIPAppenderIPCInterfaceInputParams const&,AppleIPAppenderIPCInterfaceOutputParams &)::defaultBearerIds + v4) == *(a2 + 20))
        {
          v5 = 127;
        }

        else
        {
          v5 = 63;
        }
      }
    }

    else
    {
      if (v4 <= 0xF)
      {
        *(&ApplePDPHelperInterface::ipcInterfaceConfig(AppleIPAppenderIPCInterfaceInputParams const&,AppleIPAppenderIPCInterfaceOutputParams &)::defaultBearerIds + v4) = *(a2 + 20);
      }

      v5 = 255;
    }

    *a3 = 2;
    v7 = 3 * v4;
    *(a3 + 8) = v5;
    *(a3 + 12) = (2 * v7) | 1;
    *(a3 + 16) = 3;
    *(a3 + 20) = v5;
    *(a3 + 24) = 2 * v7 + 2;
  }

  else
  {
    v6 = *(a2 + 16);
    if (v6 <= 0xF)
    {
      *(&ApplePDPHelperInterface::ipcInterfaceConfig(AppleIPAppenderIPCInterfaceInputParams const&,AppleIPAppenderIPCInterfaceOutputParams &)::defaultBearerIds + v6) = -1;
    }

    *a3 = 0;
  }

  return 1;
}

void ApplePDPHelperInterface::registerHandlerInternal(ApplePDPHelperInterface *this, ApplePDPHelperInterface::Handler *a2)
{
  std::mutex::lock((this + 8));
  if (*(this + 19))
  {
    if (*(this + 11))
    {
      v5 = "fHandler == NULL";
      v6 = 754;
    }

    else
    {
      if (a2)
      {
        *(this + 11) = a2;
        Current = CFRunLoopGetCurrent();
        if (Current)
        {
          CFRetain(Current);
          operator new();
        }

        __assert_rtn("registerHandlerInternal", "ApplePDPHelper.cpp", 760, "rl");
      }

      v5 = "handler != NULL";
      v6 = 755;
    }
  }

  else
  {
    v5 = "fService != MACH_PORT_NULL";
    v6 = 753;
  }

  __assert_rtn("registerHandlerInternal", "ApplePDPHelper.cpp", v6, v5);
}

BOOL ApplePDPHelperInterface::isServicePresent(ApplePDPHelperInterface *this, const char *a2)
{
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceMatching(this);
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  return v5 != 0;
}

uint64_t ApplePDPHelperInterface::probeVariant(ApplePDPHelperInterface *this)
{
  if (ApplePDPHelperInterface::probeVariant(void)::sOnce != -1)
  {
    ApplePDPHelperInterface::create();
  }

  return ApplePDPHelperInterface::probeVariant(void)::ret;
}

void ___ZN23ApplePDPHelperInterface12probeVariantEv_block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  v8[2] = xmmword_278CBC3A8;
  v8[3] = *&off_278CBC3B8;
  v8[4] = xmmword_278CBC3C8;
  v8[0] = xmmword_278CBC388;
  v8[1] = *&off_278CBC398;
  std::map<char const*,ApplePDPHelperInterface::variant>::map[abi:ne200100](&v6, v8, 5);
  v1 = v6;
  if (v6 == v7)
  {
LABEL_9:
    v5 = 1;
  }

  else
  {
    while (!ApplePDPHelperInterface::isServicePresent(v1[4], v0))
    {
      v2 = v1[1];
      if (v2)
      {
        do
        {
          v3 = v2;
          v2 = *v2;
        }

        while (v2);
      }

      else
      {
        do
        {
          v3 = v1[2];
          v4 = *v3 == v1;
          v1 = v3;
        }

        while (!v4);
      }

      v1 = v3;
      if (v3 == v7)
      {
        goto LABEL_9;
      }
    }

    v5 = *(v1 + 10);
  }

  ApplePDPHelperInterface::probeVariant(void)::ret = v5;
  std::__tree<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AppleCellularDataPlaneHelperInterface::PendingFilterRuleRequestMetaData>>>::destroy(&v6, v7[0]);
}

void *std::__list_imp<__CFRunLoop *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t **std::map<char const*,ApplePDPHelperInterface::variant>::map[abi:ne200100](uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      std::__tree<std::__value_type<char const*,ApplePDPHelperInterface::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,ApplePDPHelperInterface::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,ApplePDPHelperInterface::variant>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,ApplePDPHelperInterface::variant> const&>(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<char const*,ApplePDPHelperInterface::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,ApplePDPHelperInterface::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,ApplePDPHelperInterface::variant>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,ApplePDPHelperInterface::variant> const&>(uint64_t **a1, void *a2, unint64_t *a3, _OWORD *a4)
{
  v4 = *std::__tree<std::__value_type<char const*,ApplePDPHelperInterface::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,ApplePDPHelperInterface::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,ApplePDPHelperInterface::variant>>>::__find_equal<char const*>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *std::__tree<std::__value_type<char const*,ApplePDPHelperInterface::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,ApplePDPHelperInterface::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,ApplePDPHelperInterface::variant>>>::__find_equal<char const*>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void AppleCellularDataPlaneHelperInterface::generateOutputParamsForBearerID()
{
  __assert_rtn("generateOutputParamsForBearerID", "AppleCellularDataPlaneHelper.cpp", 466, "outputParams.pipesNum <= kAppleIPAppenderMaxIPCPipesParamsNum");
}

{
  __assert_rtn("generateOutputParamsForBearerID", "AppleCellularDataPlaneHelper.cpp", 474, "outputParams.pipesNum <= kAppleIPAppenderMaxIPCPipesParamsNum");
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}