@interface PSUICoreTelephonyDataCache
+ (PSUICoreTelephonyDataCache)sharedInstance;
- (BOOL)getInternationalDataAccessStatus;
- (BOOL)getInternationalDataAccessStatus:(id)status;
- (BOOL)hideDataRoaming:(id)roaming;
- (BOOL)isAirplaneModeEnabled;
- (BOOL)isCellularDataEnabled;
- (BOOL)isCellularUsageStatisticsEnabled;
- (BOOL)isDataFallbackEnabled;
- (BOOL)isPrivacyProxyEnabled:(id)enabled;
- (BOOL)isPrivateNetworkSIM:(id)m;
- (BOOL)isUserSubscribedToPrivacyProxy:(id)proxy;
- (PSUICoreTelephonyDataCache)init;
- (id)copyStartDateOfCellularDataUsageRecords;
- (id)getDataStatus:(id)status;
- (id)initPrivate;
- (void)airplaneModeChanged;
- (void)dataRoamingSettingsChanged:(id)changed status:(BOOL)status;
- (void)dataSettingsChanged:(id)changed;
- (void)dataStatus:(id)status dataStatusInfo:(id)info;
- (void)dealloc;
- (void)eraseCellularDataUsageRecords;
- (void)fetchCellularDataEnabled;
- (void)fetchCellularUsageStatisticsSetting;
- (void)fetchDataStatus;
- (void)fetchInternationalDataAccessStatus:(id)status;
- (void)fetchPrivacyProxyStatus:(id)status;
- (void)fetchPrivateNetworkCapabilities:(id)capabilities;
- (void)preferPrivateNetworkCellularOverWiFiDidChange;
- (void)setCellularDataEnabled:(BOOL)enabled;
- (void)setCellularUsageStatisticsEnabled:(BOOL)enabled completion:(id)completion;
- (void)setDataFallbackEnabled:(BOOL)enabled;
- (void)setInternationalDataAccessStatus:(BOOL)status;
- (void)setInternationalDataAccessStatus:(id)status status:(BOOL)a4;
- (void)setPrivacyProxy:(id)proxy enabled:(BOOL)enabled;
- (void)simStatusDidChange:(id)change status:(id)status;
- (void)willEnterForeground;
@end

@implementation PSUICoreTelephonyDataCache

+ (PSUICoreTelephonyDataCache)sharedInstance
{
  if (qword_28156A7E0 != -1)
  {
    dispatch_once(&qword_28156A7E0, &__block_literal_global_23);
  }

  v3 = _MergedGlobals_77;

  return v3;
}

uint64_t __44__PSUICoreTelephonyDataCache_sharedInstance__block_invoke()
{
  _MergedGlobals_77 = [[PSUICoreTelephonyDataCache alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v14.receiver = self;
  v14.super_class = PSUICoreTelephonyDataCache;
  v2 = [(PSUICoreTelephonyDataCache *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CC37B0]);
    v4 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"data_cache"];
    v5 = [v3 initWithQueue:v4];
    client = v2->_client;
    v2->_client = v5;

    [(CoreTelephonyClient *)v2->_client setDelegate:v2];
    [(PSUICoreTelephonyDataCache *)v2 setCtConnection:_CTServerConnectionCreateOnTargetQueue()];
    [(PSUICoreTelephonyDataCache *)v2 setCellularDataSettingInitialized:0];
    [(PSUICoreTelephonyDataCache *)v2 setCellularDataSetting:0];
    [(PSUICoreTelephonyDataCache *)v2 setDataStatusDict:0];
    v7 = objc_opt_new();
    [(PSUICoreTelephonyDataCache *)v2 setIntlDataAccessStatus:v7];

    v8 = objc_alloc_init(MEMORY[0x277CEC5D0]);
    radioPreferences = v2->_radioPreferences;
    v2->_radioPreferences = v8;

    [(RadiosPreferences *)v2->_radioPreferences setNotifyForExternalChangeOnly:1];
    [(RadiosPreferences *)v2->_radioPreferences setDelegate:v2];
    [(PSUICoreTelephonyDataCache *)v2 setPrivacyProxySettingsFetched:0];
    [(PSUICoreTelephonyDataCache *)v2 privacyProxySetting];
    [(PSUICoreTelephonyDataCache *)v2 setPrivacyProxySetting:0];
    v10 = objc_opt_new();
    privateNetworkCapabilities = v2->_privateNetworkCapabilities;
    v2->_privateNetworkCapabilities = v10;

    [(PSUICoreTelephonyDataCache *)v2 setCellularStatisticsSetting:0];
    [(PSUICoreTelephonyDataCache *)v2 setCellularStatisticsSettingFetched:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v2;
}

- (PSUICoreTelephonyDataCache)init
{
  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Unsupported initializer called", v3, 2u);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSUICoreTelephonyDataCache;
  [(PSUICoreTelephonyDataCache *)&v4 dealloc];
}

- (void)willEnterForeground
{
  [(PSUICoreTelephonyDataCache *)self setCellularDataSettingInitialized:0];
  [(PSUICoreTelephonyDataCache *)self setCellularStatisticsSettingFetched:0];
  intlDataAccessStatus = [(PSUICoreTelephonyDataCache *)self intlDataAccessStatus];
  [intlDataAccessStatus removeAllObjects];

  [(PSUICoreTelephonyDataCache *)self setDataStatusDict:0];
}

- (void)fetchDataStatus
{
  v30 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Executing fetch for data status", buf, 2u);
  }

  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  subscriptionContexts = [mEMORY[0x277D4D868] subscriptionContexts];

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = subscriptionContexts;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v7)
  {
    v9 = *v22;
    *&v8 = 138412546;
    v18 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        client = self->_client;
        v20 = 0;
        v13 = [(CoreTelephonyClient *)client getDataStatus:v11 error:&v20, v18];
        v14 = v20;
        getLogger2 = [(PSUICoreTelephonyDataCache *)self getLogger];
        v16 = getLogger2;
        if (v14)
        {
          if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v26 = v11;
            v27 = 2112;
            v28 = v14;
            _os_log_error_impl(&dword_2658DE000, v16, OS_LOG_TYPE_ERROR, "Data status fetch failed: %@, %@", buf, 0x16u);
          }
        }

        else
        {
          if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v26 = v11;
            v27 = 2112;
            v28 = v13;
            _os_log_impl(&dword_2658DE000, v16, OS_LOG_TYPE_DEFAULT, "Data status fetched succeeded: %@, %@", buf, 0x16u);
          }

          v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "slotID")}];
          [v19 setObject:v13 forKeyedSubscript:v16];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v7);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICoreTelephonyDataCache *)selfCopy setDataStatusDict:v19];
  objc_sync_exit(selfCopy);
}

- (id)getDataStatus:(id)status
{
  statusCopy = status;
  dataStatusDict = [(PSUICoreTelephonyDataCache *)self dataStatusDict];

  if (!dataStatusDict)
  {
    [(PSUICoreTelephonyDataCache *)self fetchDataStatus];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  dataStatusDict2 = [(PSUICoreTelephonyDataCache *)selfCopy dataStatusDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(statusCopy, "slotID")}];
  v9 = [dataStatusDict2 objectForKeyedSubscript:v8];

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)dataStatus:(id)status dataStatusInfo:(id)info
{
  v15 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  infoCopy = info;
  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = statusCopy;
    v13 = 2112;
    v14 = infoCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Updating data status: %@, %@", &v11, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  dataStatusDict = [(PSUICoreTelephonyDataCache *)selfCopy dataStatusDict];
  [dataStatusDict setObject:infoCopy forKeyedSubscript:statusCopy];

  objc_sync_exit(selfCopy);
}

- (void)dataSettingsChanged:(id)changed
{
  v18 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = changedCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Updating data settings: %@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  cellularDataSetting = [(PSUICoreTelephonyDataCache *)selfCopy cellularDataSetting];
  if (cellularDataSetting != [(__CFString *)changedCopy isCellularDataEnabled])
  {
    getLogger2 = [(PSUICoreTelephonyDataCache *)selfCopy getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      cellularDataSetting2 = [(PSUICoreTelephonyDataCache *)selfCopy cellularDataSetting];
      isCellularDataEnabled = [(__CFString *)changedCopy isCellularDataEnabled];
      v11 = @"NO";
      if (cellularDataSetting2)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (isCellularDataEnabled)
      {
        v11 = @"YES";
      }

      *buf = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Cellular data changing from %@ to %@", buf, 0x16u);
    }
  }

  [(PSUICoreTelephonyDataCache *)selfCopy setCellularDataSettingInitialized:0];
  objc_sync_exit(selfCopy);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PSUICoreTelephonyDataCache_dataSettingsChanged___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = selfCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __50__PSUICoreTelephonyDataCache_dataSettingsChanged___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "[PSUICoreTelephonyDataCache dataSettingsChanged:]_block_invoke";
    v5 = 2112;
    v6 = @"PSCellularDataSettingChangedNotification";
    _os_log_impl(&dword_2658DE000, v1, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v3, 0x16u);
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"PSCellularDataSettingChangedNotification" object:0];
}

- (void)fetchInternationalDataAccessStatus:(id)status
{
  v21 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  intlDataAccessStatus = [(PSUICoreTelephonyDataCache *)selfCopy intlDataAccessStatus];
  instance = [statusCopy instance];
  v8 = [intlDataAccessStatus objectForKey:instance];

  objc_sync_exit(selfCopy);
  if (!v8)
  {
    getLogger = [(PSUICoreTelephonyDataCache *)selfCopy getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Executing fetch for international data access status", buf, 2u);
    }

    client = selfCopy->_client;
    v18 = 0;
    v11 = [(CoreTelephonyClient *)client getInternationalDataAccessSync:statusCopy error:&v18];
    v12 = v18;
    getLogger2 = [(PSUICoreTelephonyDataCache *)selfCopy getLogger];
    intlDataAccessStatus2 = getLogger2;
    if (v12)
    {
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v12;
        _os_log_error_impl(&dword_2658DE000, intlDataAccessStatus2, OS_LOG_TYPE_ERROR, "International data access status fetch failed: %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
      {
        v15 = @"NO";
        if (v11)
        {
          v15 = @"YES";
        }

        *buf = 138412290;
        v20 = v15;
        _os_log_impl(&dword_2658DE000, intlDataAccessStatus2, OS_LOG_TYPE_DEFAULT, "Fetch for international data access status succeeded: %@", buf, 0xCu);
      }

      intlDataAccessStatus2 = [(PSUICoreTelephonyDataCache *)selfCopy intlDataAccessStatus];
      v16 = [MEMORY[0x277CCABB0] numberWithBool:v11];
      instance2 = [statusCopy instance];
      [intlDataAccessStatus2 setObject:v16 forKey:instance2];
    }
  }
}

- (BOOL)getInternationalDataAccessStatus
{
  if (+[SettingsCellularUtils isUIDualSIM])
  {
    getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Need a service descriptor, use getInternationalDataAccessStatus:", v7, 2u);
    }
  }

  v4 = +[SettingsCellularUtils singleSIMUIServiceDescriptor];
  v5 = [(PSUICoreTelephonyDataCache *)self getInternationalDataAccessStatus:v4];

  return v5;
}

- (BOOL)getInternationalDataAccessStatus:(id)status
{
  statusCopy = status;
  [(PSUICoreTelephonyDataCache *)self fetchInternationalDataAccessStatus:statusCopy];
  intlDataAccessStatus = [(PSUICoreTelephonyDataCache *)self intlDataAccessStatus];
  instance = [statusCopy instance];

  v7 = [intlDataAccessStatus objectForKey:instance];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (void)setInternationalDataAccessStatus:(BOOL)status
{
  statusCopy = status;
  if (+[SettingsCellularUtils isUIDualSIM])
  {
    getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Need a service descriptor, use setInternationalDataAccessStatus:status:", v7, 2u);
    }
  }

  v6 = +[SettingsCellularUtils singleSIMUIServiceDescriptor];
  [(PSUICoreTelephonyDataCache *)self setInternationalDataAccessStatus:v6 status:statusCopy];
}

- (void)setInternationalDataAccessStatus:(id)status status:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v4)
    {
      v8 = @"YES";
    }

    v14 = 138412290;
    v15 = v8;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Setting international data access status to %@", &v14, 0xCu);
  }

  v9 = [(CoreTelephonyClient *)self->_client setInternationalDataAccessSync:statusCopy status:v4];
  getLogger2 = [(PSUICoreTelephonyDataCache *)self getLogger];
  intlDataAccessStatus = getLogger2;
  if (v9)
  {
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v9;
      _os_log_error_impl(&dword_2658DE000, intlDataAccessStatus, OS_LOG_TYPE_ERROR, "Setting international data access status failed: %@", &v14, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_2658DE000, intlDataAccessStatus, OS_LOG_TYPE_DEFAULT, "Setting international data access status successful", &v14, 2u);
    }

    intlDataAccessStatus = [(PSUICoreTelephonyDataCache *)self intlDataAccessStatus];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    instance = [statusCopy instance];
    [intlDataAccessStatus setObject:v12 forKey:instance];
  }
}

- (void)dataRoamingSettingsChanged:(id)changed status:(BOOL)status
{
  statusCopy = status;
  v16 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (statusCopy)
    {
      v8 = @"YES";
    }

    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Changing international data access status: %@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  intlDataAccessStatus = [(PSUICoreTelephonyDataCache *)selfCopy intlDataAccessStatus];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:statusCopy];
  instance = [changedCopy instance];
  [intlDataAccessStatus setObject:v11 forKey:instance];

  objc_sync_exit(selfCopy);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__PSUICoreTelephonyDataCache_dataRoamingSettingsChanged_status___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = selfCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__PSUICoreTelephonyDataCache_dataRoamingSettingsChanged_status___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "[PSUICoreTelephonyDataCache dataRoamingSettingsChanged:status:]_block_invoke";
    v5 = 2112;
    v6 = @"PSCellularDataSettingChangedNotification";
    _os_log_impl(&dword_2658DE000, v1, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v3, 0x16u);
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"PSCellularDataSettingChangedNotification" object:0];
}

- (void)fetchCellularDataEnabled
{
  *&v9[5] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cellularDataSettingInitialized = [(PSUICoreTelephonyDataCache *)selfCopy cellularDataSettingInitialized];
  objc_sync_exit(selfCopy);

  if (!cellularDataSettingInitialized)
  {
    cellularDataSetting = [(PSUICoreTelephonyDataCache *)selfCopy cellularDataSetting];
    [(PSUICoreTelephonyDataCache *)selfCopy ctConnection];
    IsEnabled = _CTServerConnectionGetCellularDataIsEnabled();
    if (IsEnabled)
    {
      getLogger = [(PSUICoreTelephonyDataCache *)selfCopy getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v9[0] = IsEnabled;
        LOWORD(v9[1]) = 1024;
        *(&v9[1] + 2) = HIDWORD(IsEnabled);
        _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Querying cellular data is enabled setting failed %d (%d)", buf, 0xEu);
      }
    }

    else
    {
      [(PSUICoreTelephonyDataCache *)selfCopy setCellularDataSetting:cellularDataSetting];
      [(PSUICoreTelephonyDataCache *)selfCopy setCellularDataSettingInitialized:1];
      getLogger = [(PSUICoreTelephonyDataCache *)selfCopy getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
      {
        if (cellularDataSetting)
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        *buf = 138412290;
        *v9 = v6;
        _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Cellular data is enabled is %@", buf, 0xCu);
      }
    }
  }
}

- (BOOL)isCellularDataEnabled
{
  [(PSUICoreTelephonyDataCache *)self fetchCellularDataEnabled];

  return [(PSUICoreTelephonyDataCache *)self cellularDataSetting];
}

- (void)setCellularDataEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  ctConnection = [(PSUICoreTelephonyDataCache *)self ctConnection];

  MEMORY[0x282113368](ctConnection, enabledCopy);
}

- (BOOL)isAirplaneModeEnabled
{
  radioPreferences = [(PSUICoreTelephonyDataCache *)self radioPreferences];
  airplaneMode = [radioPreferences airplaneMode];

  return airplaneMode;
}

- (BOOL)isDataFallbackEnabled
{
  v14 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Fetching dynamic data SIM switching support", buf, 2u);
  }

  client = self->_client;
  v11 = 0;
  v5 = [(CoreTelephonyClient *)client getSupportDynamicDataSimSwitchSync:&v11];
  v6 = v11;
  getLogger2 = [(PSUICoreTelephonyDataCache *)self getLogger];
  v8 = getLogger2;
  if (v6)
  {
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_error_impl(&dword_2658DE000, v8, OS_LOG_TYPE_ERROR, "Fetch dynamic data SIM switching failed: %@", buf, 0xCu);
    }

    LOBYTE(v5) = 0;
  }

  else if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (v5)
    {
      v9 = @"YES";
    }

    *buf = 138412290;
    v13 = v9;
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "Fetching dynamic data SIM switching succeeded: %@", buf, 0xCu);
  }

  return v5;
}

- (void)setDataFallbackEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (enabledCopy)
    {
      v6 = @"YES";
    }

    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Setting dynamic data SIM switching to %@", &v10, 0xCu);
  }

  v7 = [(CoreTelephonyClient *)self->_client setSupportDynamicDataSimSwitch:enabledCopy];
  getLogger2 = [(PSUICoreTelephonyDataCache *)self getLogger];
  v9 = getLogger2;
  if (v7)
  {
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "Setting dynamic data SIM switching failed: %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEFAULT, "Setting dynamic data SIM switching successful", &v10, 2u);
  }
}

- (void)airplaneModeChanged
{
  v10 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    radioPreferences = [(PSUICoreTelephonyDataCache *)self radioPreferences];
    airplaneMode = [radioPreferences airplaneMode];
    v6 = @"NO";
    if (airplaneMode)
    {
      v6 = @"YES";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Airplane mode changed to %@", &v8, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"PSCellularAirplaneModeChangedNotification" object:0];
}

- (void)fetchPrivacyProxyStatus:(id)status
{
  v20 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  client = self->_client;
  v6 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:statusCopy];
  v15 = 0;
  LOWORD(v7) = [(CoreTelephonyClient *)client getPrivacyProxyState:v6 error:&v15];
  v8 = v15;

  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  v10 = getLogger;
  if (v8)
  {
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_error_impl(&dword_2658DE000, v10, OS_LOG_TYPE_ERROR, "Fetch PrivacyProxy status failed: %@", buf, 0xCu);
    }

    v11 = 0;
    v7 = 0;
  }

  else
  {
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"NO";
      if (v7)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      if ((v7 & 0x100) != 0)
      {
        v12 = @"YES";
      }

      *buf = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2658DE000, v10, OS_LOG_TYPE_DEFAULT, "Fetch PrivacyProxy status success, feature enabled: %@, user enabled: %@", buf, 0x16u);
    }

    v11 = v7 & 0xFF00;
    v7 = v7;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICoreTelephonyDataCache *)selfCopy setPrivacyProxySetting:v7 | v11];
  objc_sync_exit(selfCopy);
}

- (BOOL)isUserSubscribedToPrivacyProxy:(id)proxy
{
  proxyCopy = proxy;
  if (![(PSUICoreTelephonyDataCache *)self privacyProxySettingsFetched])
  {
    [(PSUICoreTelephonyDataCache *)self fetchPrivacyProxyStatus:proxyCopy];
  }

  privacyProxySetting = [(PSUICoreTelephonyDataCache *)self privacyProxySetting];

  return privacyProxySetting & 1;
}

- (BOOL)isPrivacyProxyEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (![(PSUICoreTelephonyDataCache *)self privacyProxySettingsFetched])
  {
    [(PSUICoreTelephonyDataCache *)self fetchPrivacyProxyStatus:enabledCopy];
  }

  v5 = ([(PSUICoreTelephonyDataCache *)self privacyProxySetting]>> 8) & 1;

  return v5;
}

- (void)setPrivacyProxy:(id)proxy enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x277D85DE8];
  client = self->_client;
  v7 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:proxy];
  v8 = [(CoreTelephonyClient *)client setPrivacyProxyState:v7 enabled:enabledCopy];

  if (v8)
  {
    getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v8;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Set PrivacyProxy state failed: %@", &v10, 0xCu);
    }
  }
}

- (void)fetchPrivateNetworkCapabilities:(id)capabilities
{
  v19 = *MEMORY[0x277D85DE8];
  capabilitiesCopy = capabilities;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(capabilitiesCopy, "slotID")}];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  privateNetworkCapabilities = [(PSUICoreTelephonyDataCache *)selfCopy privateNetworkCapabilities];
  v8 = [privateNetworkCapabilities objectForKeyedSubscript:v5];

  if (!v8)
  {
    client = selfCopy->_client;
    v14 = 0;
    v10 = [(CoreTelephonyClient *)client getPrivateNetworkCapabilitiesForContext:capabilitiesCopy error:&v14];
    v11 = v14;
    if (v11)
    {
      getLogger = [(PSUICoreTelephonyDataCache *)selfCopy getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v11;
        _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Checking Private Network capabilities failed: %@", buf, 0xCu);
      }
    }

    else
    {
      getLogger2 = [(PSUICoreTelephonyDataCache *)selfCopy getLogger];
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v16 = v5;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Private Network Capabilities for context slot id [%@]: %@", buf, 0x16u);
      }

      getLogger = [(PSUICoreTelephonyDataCache *)selfCopy privateNetworkCapabilities];
      [getLogger setObject:v10 forKeyedSubscript:v5];
    }
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)isPrivateNetworkSIM:(id)m
{
  mCopy = m;
  v5 = [MEMORY[0x277CC3798] contextWithServiceDescriptor:mCopy];
  [(PSUICoreTelephonyDataCache *)self fetchPrivateNetworkCapabilities:v5];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  privateNetworkCapabilities = [(PSUICoreTelephonyDataCache *)selfCopy privateNetworkCapabilities];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "slotID")}];
  v9 = [privateNetworkCapabilities objectForKeyedSubscript:v8];

  if (v9)
  {
    privateNetworkCapabilities2 = [(PSUICoreTelephonyDataCache *)selfCopy privateNetworkCapabilities];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "slotID")}];
    v12 = [privateNetworkCapabilities2 objectForKeyedSubscript:v11];
    isPrivateNetworkSIM = [v12 isPrivateNetworkSIM];
  }

  else
  {
    isPrivateNetworkSIM = 0;
  }

  objc_sync_exit(selfCopy);

  return isPrivateNetworkSIM;
}

- (BOOL)hideDataRoaming:(id)roaming
{
  roamingCopy = roaming;
  v5 = [MEMORY[0x277CC3798] contextWithServiceDescriptor:roamingCopy];
  [(PSUICoreTelephonyDataCache *)self fetchPrivateNetworkCapabilities:v5];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  privateNetworkCapabilities = [(PSUICoreTelephonyDataCache *)selfCopy privateNetworkCapabilities];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "slotID")}];
  v9 = [privateNetworkCapabilities objectForKeyedSubscript:v8];

  if (v9)
  {
    privateNetworkCapabilities2 = [(PSUICoreTelephonyDataCache *)selfCopy privateNetworkCapabilities];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "slotID")}];
    v12 = [privateNetworkCapabilities2 objectForKeyedSubscript:v11];
    hideDataRoaming = [v12 hideDataRoaming];
  }

  else
  {
    hideDataRoaming = 0;
  }

  objc_sync_exit(selfCopy);

  return hideDataRoaming;
}

- (id)copyStartDateOfCellularDataUsageRecords
{
  [(PSUICoreTelephonyDataCache *)self ctConnection];
  _CTServerConnectionCopyStartDateOfCellularDataUsageRecords();
  return 0;
}

- (void)eraseCellularDataUsageRecords
{
  ctConnection = [(PSUICoreTelephonyDataCache *)self ctConnection];

  MEMORY[0x282113248](ctConnection);
}

- (void)fetchCellularUsageStatisticsSetting
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cellularStatisticsSettingFetched = [(PSUICoreTelephonyDataCache *)selfCopy cellularStatisticsSettingFetched];
  objc_sync_exit(selfCopy);

  if (!cellularStatisticsSettingFetched)
  {
    client = selfCopy->_client;
    v12 = 0;
    v5 = [(CoreTelephonyClient *)client usageCollectionEnabledSync:&v12];
    v6 = v12;
    if (v6)
    {
      getLogger = [(PSUICoreTelephonyDataCache *)selfCopy getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
      {
        domain = [v6 domain];
        *buf = 138412546;
        v14 = domain;
        v15 = 2112;
        v16 = v6;
        _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Failed to fetch cellular usage statistics setting %@ (%@)", buf, 0x16u);
      }
    }

    else
    {
      bOOLValue = [v5 BOOLValue];
      getLogger2 = [(PSUICoreTelephonyDataCache *)selfCopy getLogger];
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
      {
        v10 = @"NO";
        if (bOOLValue)
        {
          v10 = @"YES";
        }

        *buf = 138412290;
        v14 = v10;
        _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Cellular usage statistics enabled: %@", buf, 0xCu);
      }

      [(PSUICoreTelephonyDataCache *)selfCopy setCellularStatisticsSetting:bOOLValue];
      [(PSUICoreTelephonyDataCache *)selfCopy setCellularStatisticsSettingFetched:1];
    }
  }
}

- (BOOL)isCellularUsageStatisticsEnabled
{
  [(PSUICoreTelephonyDataCache *)self fetchCellularUsageStatisticsSetting];

  return [(PSUICoreTelephonyDataCache *)self cellularStatisticsSetting];
}

- (void)setCellularUsageStatisticsEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  completionCopy = completion;
  objc_initWeak(&location, self);
  client = self->_client;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__PSUICoreTelephonyDataCache_setCellularUsageStatisticsEnabled_completion___block_invoke;
  v9[3] = &unk_279BAAC18;
  objc_copyWeak(&v11, &location);
  v12 = enabledCopy;
  v8 = completionCopy;
  v10 = v8;
  [(CoreTelephonyClient *)client setUsageCollectionEnabled:enabledCopy completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __75__PSUICoreTelephonyDataCache_setCellularUsageStatisticsEnabled_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained getLogger];

  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 48))
      {
        v11 = @"ENABLED";
      }

      else
      {
        v11 = @"DISABLED";
      }

      v12 = [v3 domain];
      v13 = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      v17 = 2112;
      v18 = v3;
      _os_log_error_impl(&dword_2658DE000, v5, OS_LOG_TYPE_ERROR, "Failed to set cellular usage statistics to %@, error: %@ (%@)", &v13, 0x20u);
    }

    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 setCellularStatisticsSettingFetched:0];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 48))
      {
        v7 = @"ENABLED";
      }

      else
      {
        v7 = @"DISABLED";
      }

      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Successfully set cellular usage statistics to %@", &v13, 0xCu);
    }

    v8 = *(a1 + 48);
    v9 = objc_loadWeakRetained((a1 + 40));
    [v9 setCellularStatisticsSetting:v8];

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))();
    }
  }
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  v14 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  statusCopy = status;
  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = changeCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Clearing Private network SIM info for context %@", &v12, 0xCu);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(changeCopy, "slotID")}];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  privateNetworkCapabilities = [(PSUICoreTelephonyDataCache *)selfCopy privateNetworkCapabilities];
  [privateNetworkCapabilities setObject:0 forKeyedSubscript:v9];

  objc_sync_exit(selfCopy);
}

- (void)preferPrivateNetworkCellularOverWiFiDidChange
{
  v19 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonyDataCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Clearing Private network SIM infos due to profile update", buf, 2u);
  }

  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  subscriptionContexts = [mEMORY[0x277D4D868] subscriptionContexts];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = subscriptionContexts;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v13 + 1) + 8 * v10), "slotID", v13)}];
        privateNetworkCapabilities = [(PSUICoreTelephonyDataCache *)selfCopy privateNetworkCapabilities];
        [privateNetworkCapabilities setObject:0 forKeyedSubscript:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  objc_sync_exit(selfCopy);
}

@end