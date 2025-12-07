@interface PSDeviceManager
+ (PSDeviceManager)sharedInstance;
- (BOOL)shouldSendContextUpdateNotification:()basic_string<char forServiceState:()std:(std::allocator<char>> *)std :char_traits<char>;
- (id).cxx_construct;
- (id)getAvailableResourceKeys;
- (id)getAvailableResourceKeysForDevice:(id)device;
- (int)startServiceMatching;
- (unsigned)getServiceForResourceKey:(id)key;
- (void)dealloc;
- (void)getDeviceCapabilities:(unsigned int)capabilities;
- (void)serviceMatched:(unsigned int)matched;
- (void)serviceTerminated:(unsigned int)terminated;
- (void)set3PRExecutionSession:(id)session with3PRTransitionManager:(id)manager;
- (void)setExecutionSession:(id)session withTransitionManager:(id)manager;
- (void)setNotificationPort;
- (void)startServiceMatching;
@end

@implementation PSDeviceManager

+ (PSDeviceManager)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__PSDeviceManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[PSDeviceManager sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[PSDeviceManager sharedInstance]::onceToken, block);
  }

  v2 = +[PSDeviceManager sharedInstance]::instance;

  return v2;
}

uint64_t __33__PSDeviceManager_sharedInstance__block_invoke(uint64_t a1)
{
  +[PSDeviceManager sharedInstance]::instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)setExecutionSession:(id)session withTransitionManager:(id)manager
{
  sessionCopy = session;
  managerCopy = manager;
  v9 = managerCopy;
  if (self)
  {
    objc_storeStrong(&self->_executionSession, session);
    objc_storeStrong(&self->_transitionManager, manager);
    executionSession3PR = self->_executionSession3PR;
    self->_executionSession3PR = 0;

    transitionManager3PR = self->_transitionManager3PR;
    self->_transitionManager3PR = 0;

    [(PSDeviceManager *)self setNotificationPort];
  }

  else
  {
    v12 = __PLSLogSharedInstance(managerCopy);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_ERROR, "No instance of device manager has been created", v13, 2u);
    }
  }
}

- (void)set3PRExecutionSession:(id)session with3PRTransitionManager:(id)manager
{
  sessionCopy = session;
  managerCopy = manager;
  v9 = managerCopy;
  if (self)
  {
    objc_storeStrong(&self->_executionSession3PR, session);
    objc_storeStrong(&self->_transitionManager3PR, manager);
    executionSession = self->_executionSession;
    self->_executionSession = 0;

    transitionManager = self->_transitionManager;
    self->_transitionManager = 0;

    [(PSDeviceManager *)self setNotificationPort];
  }

  else
  {
    v12 = __PLSLogSharedInstance(managerCopy);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_ERROR, "No instance of device manager has been created", v13, 2u);
    }
  }
}

- (void)setNotificationPort
{
  v2 = __PLSLogSharedInstance(self);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }

  v9 = __PLSLogSharedInstance(v8);
  if (OUTLINED_FUNCTION_1_1(v9))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_ERROR, "Failed to initialize device manager", buf, 2u);
  }
}

- (void)dealloc
{
  driverNotifyPort = self->_driverNotifyPort;
  if (driverNotifyPort)
  {
    IONotificationPortDestroy(driverNotifyPort);
  }

  v4.receiver = self;
  v4.super_class = PSDeviceManager;
  [(PSDeviceManager *)&v4 dealloc];
}

- (int)startServiceMatching
{
  driverNotifyPort = self->_driverNotifyPort;
  v4 = IOServiceMatching("IOFastPathHIDService");
  v5 = IOServiceAddMatchingNotification(driverNotifyPort, "IOServicePublish", v4, __serviceMatched, self, &self->_services);
  if (v5)
  {
    v9 = v5;
    [(PSDeviceManager *)v5 startServiceMatching];
  }

  else
  {
    [(PSDeviceManager *)self serviceMatched:self->_services];
    v6 = self->_driverNotifyPort;
    v7 = IOServiceMatching("IOFastPathHIDService");
    v8 = IOServiceAddMatchingNotification(v6, "IOServiceTerminate", v7, __serviceTerminated, self, &self->_services);
    v9 = v8;
    if (v8)
    {
      [(PSDeviceManager *)v8 startServiceMatching];
    }

    else
    {
      [(PSDeviceManager *)self serviceTerminated:self->_services];
    }
  }

  return v9;
}

- (void)getDeviceCapabilities:(unsigned int)capabilities
{
  v3 = *&capabilities;
  v25 = *MEMORY[0x277D85DE8];
  properties = 0;
  IORegistryEntryCreateCFProperties(capabilities, &properties, *MEMORY[0x277CBECE8], 0);
  v22 = 42;
  MEMORY[0x25F8C7790](v3, "PhysicalDeviceUniqueID", __s, &v22);
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>>>::find<std::string>(&self->_deviceCapabilities.__table_.__bucket_list_.__ptr_, __p);
  v6 = v5;
  if (v18 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_29;
    }
  }

  else if (v5)
  {
    goto LABEL_29;
  }

  Value = CFDictionaryGetValue(properties, @"SupportsAccelEvents");
  v8 = CFDictionaryGetValue(properties, @"SupportsGyroEvents");
  v9 = CFDictionaryGetValue(properties, @"SupportsLEDConstellation");
  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  if (Value)
  {
    v10 = CFGetTypeID(Value);
    if (v10 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(Value))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "accel");
        v15[0] = __p;
        *(std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20, __p, &std::piecewise_construct, v15) + 10) = 1;
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }
      }

      CFRelease(Value);
    }
  }

  if (v8)
  {
    v11 = CFGetTypeID(v8);
    if (v11 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v8))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "gyro");
        v15[0] = __p;
        *(std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20, __p, &std::piecewise_construct, v15) + 10) = 1;
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }
      }

      CFRelease(v8);
    }
  }

  if (v9)
  {
    v12 = CFGetTypeID(v9);
    if (v12 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v9))
      {
        v13 = +[PLSSettings currentSettings];
        enableIOHIDLEDsync = [v13 enableIOHIDLEDsync];

        if (enableIOHIDLEDsync)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "leds");
          v15[0] = __p;
          *(std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20, __p, &std::piecewise_construct, v15) + 10) = 1;
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      CFRelease(v9);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v15, __s);
  std::pair<std::string,std::unordered_map<std::string,service_support>>::pair[abi:ne200100]<std::string,std::unordered_map<std::string,service_support>&,0>(__p, v15, v20);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::unordered_map<std::string,service_support>>>(&self->_deviceCapabilities.__table_.__bucket_list_.__ptr_, __p, __p);
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(&v19);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(v20);
LABEL_29:
  CFRelease(properties);
}

- (BOOL)shouldSendContextUpdateNotification:()basic_string<char forServiceState:()std:(std::allocator<char>> *)std :char_traits<char>
{
  v4 = v3;
  if (*(&std->var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, std->var0.var1.var0, std->var0.var1.var1);
  }

  else
  {
    __p = *std;
  }

  v6 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>>>::find<std::string>(&self->_deviceCapabilities.__table_.__bucket_list_.__ptr_, &__p);
  v7 = v6;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v7)
    {
      return 1;
    }
  }

  else if (!v6)
  {
    return 1;
  }

  v8 = v7[7];
  if (!v8)
  {
    return 1;
  }

  v9 = 1;
  do
  {
    if (v8[39] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v8 + 2), *(v8 + 3));
    }

    else
    {
      __p = *(v8 + 16);
    }

    v13 = *(v8 + 10);
    v10 = v13 == v4;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v9 &= v10;
    v8 = *v8;
  }

  while (v8);
  return v9;
}

- (void)serviceMatched:(unsigned int)matched
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = IOIteratorNext(matched);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  while (1)
  {
    v7 = __PLSLogSharedInstance(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "IOService matched: 0x%x", buf, 8u);
    }

    parent = 0;
    ParentEntry = IORegistryEntryGetParentEntry(v6, "IOService", &parent);
    if (ParentEntry)
    {
      [PSDeviceManager serviceMatched:?];
      return;
    }

    [(PSDeviceManager *)self getDeviceCapabilities:parent];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    *buf = 0u;
    v44 = 0u;
    v9 = MEMORY[0x25F8C7770](v6, buf);
    if (v9)
    {
      [PSDeviceManager serviceMatched:v9];
      return;
    }

    if (*buf == 1935959404)
    {
      v10 = +[PLSSettings currentSettings];
      enableIOHIDLEDsync = [v10 enableIOHIDLEDsync];

      if ((enableIOHIDLEDsync & 1) == 0)
      {
        v32 = __PLSLogSharedInstance(v12);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *v42 = 0;
          _os_log_impl(&dword_25EA3A000, v32, OS_LOG_TYPE_ERROR, "LED sync service matching is disabled", v42, 2u);
        }

        goto LABEL_38;
      }
    }

    v36 = 42;
    v13 = MEMORY[0x25F8C7790](v6, "PhysicalDeviceUniqueID", v42, &v36);
    v14 = v13;
    if (v13)
    {
      break;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%s.%s", PLSResourceKeyAccessoryTrackingPrefix[0], v42, buf];
    v16 = IOFastPathClientCreateWithType();
    v17 = MEMORY[0x25F8C75B0]();
    v35 = xmmword_25EB77130;
    v18 = [MEMORY[0x277D3E690] dataStreamWithResourceKey:v15 type:6 options:&v35 length:40 descriptor:v17];
    [v18 setCategory:1];
    CFRelease(v16);
    executionSession = self->_executionSession;
    if (executionSession || (executionSession = self->_executionSession3PR) != 0)
    {
      context = [executionSession context];
      [context addResourceStream:v18];
    }

    v21 = v15;
    std::string::basic_string[abi:ne200100]<0>(&v39, [v15 UTF8String]);
    __p = v39;
    memset(&v39, 0, sizeof(v39));
    v41 = v6;
    v22 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,unsigned int>>(&self->_availableServices.__table_.__bucket_list_.__ptr_, &__p, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    v23 = __PLSLogSharedInstance(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 138412290;
      *(__p.__r_.__value_.__r.__words + 4) = v15;
      _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_DEFAULT, "Added '%@' to the context", &__p, 0xCu);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, v42);
    v24 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>>>::find<std::string>(&self->_deviceCapabilities.__table_.__bucket_list_.__ptr_, &__p);
    if (v24)
    {
      std::string::basic_string[abi:ne200100]<0>(&v39, buf);
      v38 = &v39;
      *(std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v24 + 5, &v39, &std::piecewise_construct, &v38) + 10) = 2;
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v34, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v34 = __p;
    }

    v25 = [(PSDeviceManager *)self shouldSendContextUpdateNotification:&v34 forServiceState:2];
    v26 = v25;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
      if (v26)
      {
LABEL_29:
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:v42];
        v28 = [(PSDeviceManager *)self getAvailableResourceKeysForDevice:v27];

        v30 = __PLSLogSharedInstance(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v39.__r_.__value_.__l.__data_) = 138412290;
          *(v39.__r_.__value_.__r.__words + 4) = v28;
          _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_DEFAULT, "Sending callback with added resources: %@", &v39, 0xCu);
        }

        transitionManager = self->_transitionManager;
        if (transitionManager || (transitionManager = self->_transitionManager3PR) != 0)
        {
          [transitionManager deliverDynamicResourcesAvailableNotification:v28];
        }
      }
    }

    else if (v25)
    {
      goto LABEL_29;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_38:
    v5 = IOIteratorNext(matched);
    v6 = v5;
    if (!v5)
    {
      return;
    }
  }

  v33 = __PLSLogSharedInstance(v13);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v14;
    _os_log_impl(&dword_25EA3A000, v33, OS_LOG_TYPE_ERROR, "Failed to get device uuid with error: 0x%x", &__p, 8u);
  }
}

- (void)serviceTerminated:(unsigned int)terminated
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = IOIteratorNext(terminated);
  if (!v5)
  {
    return;
  }

  v7 = v5;
  *&v6 = 138412290;
  v31 = v6;
  while (1)
  {
    v8 = __PLSLogSharedInstance(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEFAULT, "IOService terminated: 0x%x", buf, 8u);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    *buf = 0u;
    v45 = 0u;
    v9 = MEMORY[0x25F8C7770](v7, buf);
    if (v9)
    {
      [PSDeviceManager serviceTerminated:v9];
      return;
    }

    if (*buf == 1935959404)
    {
      v10 = +[PLSSettings currentSettings];
      enableIOHIDLEDsync = [v10 enableIOHIDLEDsync];

      if ((enableIOHIDLEDsync & 1) == 0)
      {
        v29 = __PLSLogSharedInstance(v12);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *v43 = 0;
          _os_log_impl(&dword_25EA3A000, v29, OS_LOG_TYPE_ERROR, "LED sync service matching is disabled", v43, 2u);
        }

        goto LABEL_39;
      }
    }

    v37 = 42;
    v13 = MEMORY[0x25F8C7790](v7, "PhysicalDeviceUniqueID", v43, &v37);
    v14 = v13;
    if (v13)
    {
      break;
    }

    std::string::basic_string[abi:ne200100]<0>(&v42, v43);
    v15 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>>>::find<std::string>(&self->_deviceCapabilities.__table_.__bucket_list_.__ptr_, &v42);
    if (v15)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, buf);
      v38 = __p;
      *(std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v15 + 5, __p, &std::piecewise_construct, &v38) + 10) = 3;
      if (v41 < 0)
      {
        operator delete(*__p);
      }
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v36, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
    }

    else
    {
      v36 = v42;
    }

    v16 = [(PSDeviceManager *)self shouldSendContextUpdateNotification:&v36 forServiceState:3, v31];
    v17 = v16;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
      if (v17)
      {
LABEL_19:
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:v43];
        v19 = [(PSDeviceManager *)self getAvailableResourceKeysForDevice:v18];

        v21 = __PLSLogSharedInstance(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *__p = v31;
          *&__p[4] = v19;
          _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_DEFAULT, "Sending callback with removed resources: %@", __p, 0xCu);
        }

        transitionManager = self->_transitionManager;
        if (transitionManager || (transitionManager = self->_transitionManager3PR) != 0)
        {
          [transitionManager deliverDynamicResourcesNoLongerAvailableNotification:v19];
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v23 = v19;
        v24 = [v23 countByEnumeratingWithState:&v32 objects:v39 count:16];
        if (v24)
        {
          v25 = *v33;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v33 != v25)
              {
                objc_enumerationMutation(v23);
              }

              v27 = *(*(&v32 + 1) + 8 * i);
              v28 = v27;
              std::string::basic_string[abi:ne200100]<0>(__p, [v27 UTF8String]);
              std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__erase_unique<std::string>(&self->_availableServices.__table_.__bucket_list_.__ptr_, __p);
              if (v41 < 0)
              {
                operator delete(*__p);
              }
            }

            v24 = [v23 countByEnumeratingWithState:&v32 objects:v39 count:16];
          }

          while (v24);
        }
      }
    }

    else if (v16)
    {
      goto LABEL_19;
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

LABEL_39:
    v5 = IOIteratorNext(terminated);
    v7 = v5;
    if (!v5)
    {
      return;
    }
  }

  v30 = __PLSLogSharedInstance(v13);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v42.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(v42.__r_.__value_.__r.__words[0]) = v14;
    _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_ERROR, "Failed to get device uuid with error: 0x%x", &v42, 8u);
  }
}

- (id)getAvailableResourceKeys
{
  v3 = [MEMORY[0x277CBEB58] set];
  for (i = self->_availableServices.__table_.__first_node_.__next_; i; i = *i)
  {
    if (i[39] < 0)
    {
      std::string::__init_copy_ctor_external(__p, *(i + 2), *(i + 3));
    }

    else
    {
      *__p = *(i + 1);
      *&v9 = *(i + 4);
    }

    DWORD2(v9) = *(i + 10);
    if ((SBYTE7(v9) & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v5, *__p, v9}];
    [v3 addObject:v6];

    if (SBYTE7(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v3;
}

- (id)getAvailableResourceKeysForDevice:(id)device
{
  deviceCopy = device;
  v20 = [MEMORY[0x277CBEB58] set];
  for (i = self->_availableServices.__table_.__first_node_.__next_; i; i = *i)
  {
    if (i[39] < 0)
    {
      std::string::__init_copy_ctor_external(&v21, *(i + 2), *(i + 3));
    }

    else
    {
      v21 = *(i + 16);
    }

    v22 = *(i + 10);
    uTF8String = [deviceCopy UTF8String];
    v7 = uTF8String;
    v8 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v21;
    }

    else
    {
      v9 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v21.__r_.__value_.__l.__size_;
    }

    v11 = strlen(uTF8String);
    if (v11)
    {
      v12 = v11;
      if (size >= v11)
      {
        v13 = v9 + size;
        v14 = *v7;
        v15 = v9;
        do
        {
          if (size - v12 == -1)
          {
            break;
          }

          v16 = memchr(v15, v14, size - v12 + 1);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          if (!memcmp(v16, v7, v12))
          {
            if (v17 == v13 || v17 - v9 == -1)
            {
              break;
            }

            goto LABEL_21;
          }

          v15 = (v17 + 1);
          size = v13 - (v17 + 1);
        }

        while (size >= v12);
      }
    }

    else
    {
LABEL_21:
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
      [v20 addObject:v18];

      v8 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    if (v8 < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  return v20;
}

- (unsigned)getServiceForResourceKey:(id)key
{
  v13 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  std::string::basic_string[abi:ne200100]<0>(__p, [keyCopy UTF8String]);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>>>::find<std::string>(&self->_availableServices.__table_.__bucket_list_.__ptr_, __p);
  if (v5)
  {
    v6 = *(v5 + 10);
  }

  else
  {
    v7 = __PLSLogSharedInstance(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = keyCopy;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "Could not find service for key: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  return self;
}

- (void)startServiceMatching
{
  v2 = __PLSLogSharedInstance(self);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }
}

- (void)serviceMatched:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }
}

- (void)serviceMatched:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }
}

- (void)serviceTerminated:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }
}

@end