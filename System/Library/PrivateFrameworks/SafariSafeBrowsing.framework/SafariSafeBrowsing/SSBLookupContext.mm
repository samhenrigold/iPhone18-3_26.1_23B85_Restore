@interface SSBLookupContext
+ (id)sharedLookupContext;
- (SSBLookupContext)init;
- (id).cxx_construct;
- (id)init;
- (uint64_t)_lookUpURL:isMainFrame:hasHighConfidenceOfSafety:ignoreEnableState:completionHandler:;
- (void)_deleteAllDatabasesWithCompletionHandler:(id)handler;
- (void)_fetchCellularDataPlanWithCompletionHandler:(id)handler;
- (void)_forceDatabaseUpdateWithCompletionHandler:(id)handler;
- (void)_forceDeviceIdentificationTokenUpdateWithCompletionHandler:(id)handler;
- (void)_forceLoadRemoteConfigurationFromDiskWithCompletionHandler:(id)handler;
- (void)_forceUpdateRemoteConfigurationFromServerWithCompletionHandler:(id)handler;
- (void)_getDatabaseStatusWithCompletionHandler:(id)handler;
- (void)_getLastDatabaseUpdateTimeWithCompletionHandler:(id)handler;
- (void)_getSafeBrowsingEnabledState:(id)state;
- (void)_getServiceStatusWithCompletionHandler:(id)handler;
- (void)_lookUpURL:(id)l isMainFrame:(BOOL)frame hasHighConfidenceOfSafety:(BOOL)safety ignoreEnableState:(int)state completionHandler:(id)handler;
- (void)_lookUpURL:isMainFrame:hasHighConfidenceOfSafety:ignoreEnableState:completionHandler:;
- (void)_lookUpURLs:(id)ls forProtectionType:(int64_t)type completionHandler:(id)handler;
- (void)_setSafeBrowsingEnabledStateNeedsUpdate;
- (void)dealloc;
- (void)init;
@end

@implementation SSBLookupContext

+ (id)sharedLookupContext
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = __39__SSBLookupContext_sharedLookupContext__block_invoke;
  block[3] = &__block_descriptor_33_ea8_32c52_ZTSKZ39__SSBLookupContext_sharedLookupContext_E3__2_e5_v8__0l;
  if (+[SSBLookupContext sharedLookupContext]::onceToken != -1)
  {
    dispatch_once(&+[SSBLookupContext sharedLookupContext]::onceToken, block);
  }

  v2 = +[SSBLookupContext sharedLookupContext]::lookupContext;

  return v2;
}

uint64_t __39__SSBLookupContext_sharedLookupContext__block_invoke()
{
  +[SSBLookupContext sharedLookupContext]::lookupContext = objc_alloc_init(SSBLookupContext);

  return MEMORY[0x2821F96F8]();
}

- (SSBLookupContext)init
{
  v16 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SSBLookupContext;
  v2 = [(SSBLookupContext *)&v12 init];
  if (v2)
  {
    _ZNSt3__115allocate_sharedB8sn200100IN12SafeBrowsing13LookupContextENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(location);
    v3 = *location;
    location[0] = 0;
    location[1] = 0;
    v4 = *(v2 + 2);
    *(v2 + 8) = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      if (location[1])
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](location[1]);
      }
    }

    objc_initWeak(location, v2);
    v5 = *(v2 + 1);
    objc_copyWeak(&to, location);
    v15 = 0;
    v13 = &unk_2838CF3E0;
    objc_moveWeak(&v14, &to);
    v15 = &v13;
    objc_destroyWeak(&to);
    *(v2 + 6) = SafeBrowsing::LookupContext::addDatabaseUpdateObserver(v5, &v13);
    std::__function::__value_func<void ()(Backend::Google::DatabaseConfiguration)>::~__value_func[abi:sn200100](&v13);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, safeBrowsingEnabledStateChanged, @"SafeBrowsingEnabledStateDidChangeNotification", 0, 1028);
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] addObserver:v2];

    v8 = v2;
    objc_destroyWeak(location);
  }

  return v2;
}

- (void)dealloc
{
  SafeBrowsing::LookupContext::removeDatabaseUpdateObserver(self->_lookupContext.__ptr_, self->_observerToken);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SafeBrowsingEnabledStateDidChangeNotification", 0);
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] removeObserver:self];

  v5.receiver = self;
  v5.super_class = SSBLookupContext;
  [(SSBLookupContext *)&v5 dealloc];
}

- (void)_lookUpURL:(id)l isMainFrame:(BOOL)frame hasHighConfidenceOfSafety:(BOOL)safety ignoreEnableState:(int)state completionHandler:(id)handler
{
  safetyCopy = safety;
  frameCopy = frame;
  v23[4] = *MEMORY[0x277D85DE8];
  lCopy = l;
  handlerCopy = handler;
  v15 = SSBOSLogLookup(handlerCopy, v14);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v16)
  {
    *v22 = 0;
    _os_log_impl(&dword_2255EE000, v15, OS_LOG_TYPE_INFO, "Look up a url", v22, 2u);
  }

  v18 = SSBOSLogLookup(v16, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [SSBLookupContext _lookUpURL:lCopy isMainFrame:v18 hasHighConfidenceOfSafety:? ignoreEnableState:? completionHandler:?];
  }

  ptr = self->_lookupContext.__ptr_;
  v20 = lCopy;
  v21 = MEMORY[0x22AA67A70](handlerCopy);
  v23[0] = &unk_2838CF458;
  v23[1] = v20;
  v23[2] = v21;
  v23[3] = v23;
  SafeBrowsing::LookupContext::lookUpURL(ptr, v20, !frameCopy, safetyCopy, state, v23);
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](v23);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)_forceDatabaseUpdateWithCompletionHandler:(id)handler
{
  v4[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v4[0] = &unk_2838CF4A0;
  v4[1] = MEMORY[0x22AA67A70](handler, a2);
  v4[3] = v4;
  SafeBrowsing::LookupContext::forceDatabaseUpdate(ptr, v4);
  std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](v4);
}

- (void)_forceDeviceIdentificationTokenUpdateWithCompletionHandler:(id)handler
{
  v4[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v4[0] = &unk_2838CF4E8;
  v4[1] = MEMORY[0x22AA67A70](handler, a2);
  v4[3] = v4;
  SafeBrowsing::LookupContext::forceDeviceIdentificationTokenUpdate(ptr, v4);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v4);
}

- (void)_getDatabaseStatusWithCompletionHandler:(id)handler
{
  v4[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v4[0] = &unk_2838CF530;
  v4[1] = MEMORY[0x22AA67A70](handler, a2);
  v4[3] = v4;
  SafeBrowsing::LookupContext::getDatabaseStatus(ptr, v4);
  std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::~__value_func[abi:sn200100](v4);
}

- (void)_getServiceStatusWithCompletionHandler:(id)handler
{
  v4[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v4[0] = &unk_2838CF578;
  v4[1] = MEMORY[0x22AA67A70](handler, a2);
  v4[3] = v4;
  SafeBrowsing::LookupContext::getServiceStatus(ptr, v4);
  std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::~__value_func[abi:sn200100](v4);
}

- (void)_forceLoadRemoteConfigurationFromDiskWithCompletionHandler:(id)handler
{
  v4[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v4[0] = &unk_2838CF5C0;
  v4[1] = MEMORY[0x22AA67A70](handler, a2);
  v4[3] = v4;
  SafeBrowsing::LookupContext::forceLoadRemoteConfigurationFromDisk(ptr, v4);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v4);
}

- (void)_forceUpdateRemoteConfigurationFromServerWithCompletionHandler:(id)handler
{
  v4[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v4[0] = &unk_2838CF608;
  v4[1] = MEMORY[0x22AA67A70](handler, a2);
  v4[3] = v4;
  SafeBrowsing::LookupContext::forceUpdateRemoteConfigurationFromServer(ptr, v4);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v4);
}

- (void)_deleteAllDatabasesWithCompletionHandler:(id)handler
{
  v4[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v4[0] = &unk_2838CF650;
  v4[1] = MEMORY[0x22AA67A70](handler, a2);
  v4[3] = v4;
  SafeBrowsing::LookupContext::deleteAllDatabases(ptr, v4);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v4);
}

- (void)_fetchCellularDataPlanWithCompletionHandler:(id)handler
{
  v4[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v4[0] = &unk_2838CF698;
  v4[1] = MEMORY[0x22AA67A70](handler, a2);
  v4[3] = v4;
  SafeBrowsing::LookupContext::fetchCellularDataPlan(ptr, v4);
  std::__function::__value_func<void ()(char const*,std::error_code)>::~__value_func[abi:sn200100](v4);
}

- (void)_getLastDatabaseUpdateTimeWithCompletionHandler:(id)handler
{
  v4[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v4[0] = &unk_2838CF6E0;
  v4[1] = MEMORY[0x22AA67A70](handler, a2);
  v4[3] = v4;
  SafeBrowsing::LookupContext::getLastDatabaseUpdateTime(ptr, v4);
  std::__function::__value_func<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>::~__value_func[abi:sn200100](v4);
}

- (void)_lookUpURLs:(id)ls forProtectionType:(int64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  if (type == 1)
  {
    v8 = handlerCopy;
    v7 = objc_alloc_init(SSBLookupResult);
    v8[2](v8, v7, 0);

    handlerCopy = v8;
  }
}

- (void)_setSafeBrowsingEnabledStateNeedsUpdate
{
  v3 = SSBOSLogEnabledState(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_2255EE000, v3, OS_LOG_TYPE_INFO, "Set safe browsing enabled state needs update", v4, 2u);
  }

  SafeBrowsing::LookupContext::setSafeBrowsingEnabledStateNeedsUpdate(self->_lookupContext.__ptr_);
}

- (void)_getSafeBrowsingEnabledState:(id)state
{
  v4[4] = *MEMORY[0x277D85DE8];
  ptr = self->_lookupContext.__ptr_;
  v4[0] = &unk_2838CF728;
  v4[1] = MEMORY[0x22AA67A70](state, a2);
  v4[3] = v4;
  SafeBrowsing::LookupContext::getSafeBrowsingEnabledState(ptr, v4);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v4);
}

- (void)init
{
  v2 = *a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZZ24__SSBLookupContext_init_ENK3__0clEN7Backend6Google21DatabaseConfigurationE_block_invoke;
  block[3] = &__block_descriptor_48_ea8_32c89_ZTSKZZ24__SSBLookupContext_init_ENK3__0clEN7Backend6Google21DatabaseConfigurationEEUlvE__e5_v8__0l;
  v3 = v2;
  objc_copyWeak(&v4, (self + 8));
  block[4] = v3;
  objc_copyWeak(&v6, &v4);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
}

- (id)init
{
  v2 = operator new(0x10uLL);
  *v2 = &unk_2838CF3E0;
  objc_copyWeak(v2 + 1, (self + 8));
  return v2;
}

- (void)_lookUpURL:isMainFrame:hasHighConfidenceOfSafety:ignoreEnableState:completionHandler:
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (*&a3->__val_)
  {
    v6 = nsErrorFromReplyErrorCode(*a3);
  }

  else
  {
    v6 = 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  if (v4 != v5)
  {
    v8 = v4;
    do
    {
      v9 = [[SSBServiceLookupResult alloc] _initWithLookupResult:*v8];
      [array addObject:v9];

      ++v8;
    }

    while (v8 != v5);
  }

  v10 = -[SSBLookupResult _initWithServiceLookUpResults:URLContainsUserInfo:]([SSBLookupResult alloc], "_initWithServiceLookUpResults:URLContainsUserInfo:", array, [*(self + 8) ssb_hasUserInfo]);
  (*(*(self + 16) + 16))();

  if (v4)
  {

    operator delete(v4);
  }
}

- (uint64_t)_lookUpURL:isMainFrame:hasHighConfidenceOfSafety:ignoreEnableState:completionHandler:
{
  *a2 = &unk_2838CF458;
  a2[1] = *(self + 8);
  result = MEMORY[0x22AA67A70](*(self + 16));
  a2[2] = result;
  return result;
}

- (void)_lookUpURL:(uint64_t)a1 isMainFrame:(NSObject *)a2 hasHighConfidenceOfSafety:ignoreEnableState:completionHandler:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_2255EE000, a2, OS_LOG_TYPE_DEBUG, "Look up a url %@", &v2, 0xCu);
}

@end