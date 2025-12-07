@interface WFSettingsController
- (WFSettingsController)initWithDetailsContext:(id)context;
- (WFSettingsController)initWithDetailsContext:(id)context appearanceProxy:(id)proxy;
- (id)_baseConfigForNetwork:(id)network current:(BOOL)current;
- (void)_applySetupAppearances;
- (void)_currentNetworkDidChange:(id)change;
- (void)_ipStateDidChange:(id)change;
- (void)_refreshSettingsConfig:(id)config;
- (void)_startMontoringIPChanges;
- (void)_stopMonitoringIPChanges;
- (void)dealloc;
- (void)networkSettingsViewController:(id)controller saveConfig:(id)config errorHandler:(id)handler;
@end

@implementation WFSettingsController

- (WFSettingsController)initWithDetailsContext:(id)context
{
  v4 = MEMORY[0x277D7B980];
  contextCopy = context;
  defaultAppearanceProxy = [v4 defaultAppearanceProxy];
  v7 = [(WFSettingsController *)self initWithDetailsContext:contextCopy appearanceProxy:defaultAppearanceProxy];

  return v7;
}

- (WFSettingsController)initWithDetailsContext:(id)context appearanceProxy:(id)proxy
{
  v42 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  proxyCopy = proxy;
  v38.receiver = self;
  v38.super_class = WFSettingsController;
  v9 = [(WFSettingsController *)&v38 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_24;
  }

  if (!contextCopy)
  {
    [WFSettingsController initWithDetailsContext:buf appearanceProxy:?];
LABEL_23:

LABEL_24:
    v10 = 0;
    goto LABEL_19;
  }

  objc_storeStrong(&v9->_detailsContext, context);
  objc_storeStrong(&v10->_appearanceProxy, proxy);
  [(WFAppearanceProxy *)v10->_appearanceProxy apply];
  network = [(WFDetailsContext *)v10->_detailsContext network];

  if (!network)
  {
    [WFSettingsController initWithDetailsContext:buf appearanceProxy:?];
    goto LABEL_23;
  }

  network2 = [(WFDetailsContext *)v10->_detailsContext network];
  network = v10->_network;
  v10->_network = network2;

  v14 = WFLogForCategory(0);
  v15 = OSLogForWFLogLevel(3uLL);
  v16 = v15;
  if (WFCurrentLogLevel(v15, v17) >= 3 && v14)
  {
    v18 = v14;
    if (os_log_type_enabled(v18, v16))
    {
      profile = [(WFDetailsContext *)v10->_detailsContext profile];
      *buf = 136315394;
      *&buf[4] = "[WFSettingsController initWithDetailsContext:appearanceProxy:]";
      v40 = 2112;
      v41 = profile;
      _os_log_impl(&dword_273ECD000, v18, v16, "%s: provided profile %@", buf, 0x16u);
    }
  }

  v20 = objc_alloc_init(MEMORY[0x277CCABD8]);
  queue = v10->_queue;
  v10->_queue = v20;

  v22 = v10->_queue;
  if (!v22)
  {
    goto LABEL_24;
  }

  [(NSOperationQueue *)v22 setName:@"WFSettingsController Queue"];
  [(NSOperationQueue *)v10->_queue setMaxConcurrentOperationCount:1];
  [(NSOperationQueue *)v10->_queue setQualityOfService:-1];
  v10->_cloudSyncRunning = WiFiCloudSyncEngineIsRunning() != 0;
  v23 = WFLogForCategory(0);
  v24 = OSLogForWFLogLevel(3uLL);
  v25 = v24;
  if (WFCurrentLogLevel(v24, v26) >= 3 && v23 && os_log_type_enabled(v23, v25))
  {
    cloudSyncRunning = v10->_cloudSyncRunning;
    *buf = 136315394;
    *&buf[4] = "[WFSettingsController initWithDetailsContext:appearanceProxy:]";
    v40 = 1024;
    LODWORD(v41) = cloudSyncRunning;
    _os_log_impl(&dword_273ECD000, v23, v25, "%s: cloudSyncRunning %d", buf, 0x12u);
  }

  ipMonitor = [(WFDetailsContext *)v10->_detailsContext ipMonitor];
  ipMonitor = v10->_ipMonitor;
  v10->_ipMonitor = ipMonitor;

  if (!v10->_ipMonitor)
  {
    [WFSettingsController initWithDetailsContext:buf appearanceProxy:?];
    goto LABEL_23;
  }

  v10->_currentNetwork = [(WFDetailsContext *)v10->_detailsContext isCurrent];
  v30 = [(WFSettingsController *)v10 _baseConfigForNetwork:v10->_network current:[(WFDetailsContext *)v10->_detailsContext isCurrent]];
  config = v10->_config;
  v10->_config = v30;

  if (!v10->_config)
  {
    goto LABEL_24;
  }

  [(WFSettingsController *)v10 _refreshSettingsConfig:?];
  hardwareMACAddress = [contextCopy hardwareMACAddress];
  hardwareMACAddress = v10->_hardwareMACAddress;
  v10->_hardwareMACAddress = hardwareMACAddress;

  v34 = [objc_alloc(MEMORY[0x277D7B9E8]) initWithConfig:v10->_config detailsContext:v10->_detailsContext hardwareMACAddress:v10->_hardwareMACAddress appearanceProxy:v10->_appearanceProxy];
  settingsViewController = v10->_settingsViewController;
  v10->_settingsViewController = v34;

  [(WFNetworkSettingsViewController *)v10->_settingsViewController setDeviceCapability:WFCurrentDeviceCapability()];
  [(WFNetworkSettingsViewController *)v10->_settingsViewController setDataCoordinator:v10];
  if (!v10->_settingsViewController)
  {
    goto LABEL_24;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v10 selector:sel__currentNetworkDidChange_ name:@"WFInterfaceNetworkChangedNotification" object:0];

  if ([(WFDetailsContext *)v10->_detailsContext isCurrent])
  {
    [(WFSettingsController *)v10 _startMontoringIPChanges];
  }

LABEL_19:

  return v10;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"WFInterfaceNetworkChangedNotification" object:0];

  [(WFSettingsController *)self _stopMonitoringIPChanges];
  [(NSOperationQueue *)self->_queue cancelAllOperations];
  v4.receiver = self;
  v4.super_class = WFSettingsController;
  [(WFSettingsController *)&v4 dealloc];
}

- (void)_currentNetworkDidChange:(id)change
{
  userInfo = [change userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"WFInterfaceNetworkKey"];

  detailsContext = [(WFSettingsController *)self detailsContext];
  network = [detailsContext network];
  v7 = [network isEquivalentRecord:v10];

  if (v7 != [(WFSettingsController *)self isCurrentNetwork])
  {
    self->_currentNetwork = v7;
    network2 = [(WFSettingsController *)self network];
    v9 = [(WFSettingsController *)self _baseConfigForNetwork:network2 current:v10 != 0];

    [(WFSettingsController *)self _refreshSettingsConfig:v9];
    if (self->_currentNetwork)
    {
      if (!self->_monitorIPChanges)
      {
        [(WFSettingsController *)self _startMontoringIPChanges];
LABEL_7:

        goto LABEL_8;
      }
    }

    else if (!self->_monitorIPChanges)
    {
      goto LABEL_7;
    }

    [(WFSettingsController *)self _stopMonitoringIPChanges];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_stopMonitoringIPChanges
{
  if (self->_monitorIPChanges)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"WFIPMonitorStateChangedNotification" object:0];

    self->_monitorIPChanges = 0;
  }
}

- (void)_startMontoringIPChanges
{
  if (!self->_monitorIPChanges)
  {
    self->_monitorIPChanges = 1;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    ipMonitor = [(WFSettingsController *)self ipMonitor];
    [defaultCenter addObserver:self selector:sel__ipStateDidChange_ name:@"WFIPMonitorStateChangedNotification" object:ipMonitor];
  }
}

- (void)_ipStateDidChange:(id)change
{
  v17 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(4uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 4 && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      userInfo = [changeCopy userInfo];
      v13 = 136315394;
      v14 = "[WFSettingsController _ipStateDidChange:]";
      v15 = 2112;
      v16 = userInfo;
      _os_log_impl(&dword_273ECD000, v9, v7, "%s- %@", &v13, 0x16u);
    }
  }

  if ([(WFSettingsController *)self isCurrentNetwork])
  {
    network = [(WFSettingsController *)self network];
    v12 = [(WFSettingsController *)self _baseConfigForNetwork:network current:[(WFSettingsController *)self isCurrentNetwork]];

    [(WFSettingsController *)self _refreshSettingsConfig:v12];
  }
}

- (id)_baseConfigForNetwork:(id)network current:(BOOL)current
{
  currentCopy = current;
  v110 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  v7 = objc_alloc_init(MEMORY[0x277D7B9E0]);
  detailsContext = [(WFSettingsController *)self detailsContext];
  if ([detailsContext entryContext] != 2)
  {

    goto LABEL_6;
  }

  isHotspot20 = [networkCopy isHotspot20];

  if (!isHotspot20)
  {
LABEL_6:
    ssid = [networkCopy ssid];
    [v7 setSsid:ssid];
    goto LABEL_9;
  }

  ssid = [(WFSettingsController *)self detailsContext];
  profile = [ssid profile];
  displayedOperatorName = [profile displayedOperatorName];
  if (displayedOperatorName)
  {
    detailsContext2 = [(WFSettingsController *)self detailsContext];
    profile2 = [detailsContext2 profile];
    displayedOperatorName2 = [profile2 displayedOperatorName];
    [v7 setSsid:displayedOperatorName2];
  }

  else
  {
    detailsContext2 = [networkCopy ssid];
    [v7 setSsid:detailsContext2];
  }

LABEL_9:
  detailsContext3 = [(WFSettingsController *)self detailsContext];
  profile3 = [detailsContext3 profile];
  displayFriendlyName = [profile3 displayFriendlyName];
  if (displayFriendlyName)
  {
    detailsContext4 = [(WFSettingsController *)self detailsContext];
    profile4 = [detailsContext4 profile];
    displayFriendlyName2 = [profile4 displayFriendlyName];
    [v7 setDisplayFriendlyName:displayFriendlyName2];
  }

  else
  {
    detailsContext4 = [v7 ssid];
    [v7 setDisplayFriendlyName:detailsContext4];
  }

  ipMonitor = [(WFSettingsController *)self ipMonitor];
  [v7 setHttpProxyConfigurable:{objc_msgSend(ipMonitor, "globalProxyIsEnabled") ^ 1}];

  [v7 setCurrent:currentCopy];
  detailsContext5 = [(WFSettingsController *)self detailsContext];
  v24 = detailsContext5;
  if (currentCopy)
  {
    [v7 setDiagnosable:{objc_msgSend(detailsContext5, "diagnosable")}];

    detailsContext6 = [(WFSettingsController *)self detailsContext];
    recommendations = [detailsContext6 recommendations];
    [v7 setHealthRecommendations:recommendations];

    [v7 setForgetable:1];
    v27 = WFLogForCategory(0);
    v28 = OSLogForWFLogLevel(3uLL);
    v29 = v28;
    if (WFCurrentLogLevel(v28, v30) >= 3 && v27)
    {
      v31 = v27;
      if (os_log_type_enabled(v31, v29))
      {
        healthRecommendations = [v7 healthRecommendations];
        *buf = 138412290;
        *v100 = healthRecommendations;
        _os_log_impl(&dword_273ECD000, v31, v29, "Health recommendations %@", buf, 0xCu);
      }
    }
  }

  else
  {
    [v7 setJoinable:{objc_msgSend(detailsContext5, "isJoinable")}];

    [v7 setCanRenewLease:0];
  }

  profile5 = [(WFDetailsContext *)self->_detailsContext profile];
  v34 = WFLogForCategory(0);
  v35 = OSLogForWFLogLevel(3uLL);
  v36 = v35;
  v39 = WFCurrentLogLevel(v35, v37) > 2 && v34 != 0;
  if (profile5)
  {
    v98 = networkCopy;
    if (v39 && os_log_type_enabled(v34, v36))
    {
      *buf = 138412290;
      *v100 = profile5;
      _os_log_impl(&dword_273ECD000, v34, v36, "Found profile %@", buf, 0xCu);
    }

    [v7 setAutoJoinConfigurable:{objc_msgSend(profile5, "autoJoinConfigurable")}];
    if ([v7 autoJoinConfigurable])
    {
      [v7 setAutoJoinEnabled:{objc_msgSend(profile5, "isAutoJoinDisabled") ^ 1}];
      if ([(WFDetailsContext *)self->_detailsContext autoJoinEnabled])
      {
        [v7 setAutoJoinEnabled:1];
      }

      v40 = +[WFMetricsManager sharedManager];
      v41 = [WFUserEvent eventWithType:7];
      [v40 processEvent:v41];

      v42 = WFLogForCategory(0);
      v43 = OSLogForWFLogLevel(3uLL);
      v44 = v43;
      if (WFCurrentLogLevel(v43, v45) >= 3 && v42)
      {
        v46 = v42;
        if (os_log_type_enabled(v46, v44))
        {
          autoJoinEnabled = [v7 autoJoinEnabled];
          *buf = 67109120;
          *v100 = autoJoinEnabled;
          _os_log_impl(&dword_273ECD000, v46, v44, "Auto join enabled %d", buf, 8u);
        }
      }
    }

    [v7 setAutoLoginConfigurable:{objc_msgSend(profile5, "autoLoginConfigurable")}];
    if ([v7 autoLoginConfigurable])
    {
      [v7 setAutoLoginEnabled:{objc_msgSend(profile5, "bypassCaptive") ^ 1}];
      v48 = +[WFMetricsManager sharedManager];
      v49 = [WFUserEvent eventWithType:8];
      [v48 processEvent:v49];

      v50 = WFLogForCategory(0);
      v51 = OSLogForWFLogLevel(3uLL);
      v52 = v51;
      if (WFCurrentLogLevel(v51, v53) >= 3 && v50)
      {
        v54 = v50;
        if (os_log_type_enabled(v54, v52))
        {
          autoLoginEnabled = [v7 autoLoginEnabled];
          *buf = 67109120;
          *v100 = autoLoginEnabled;
          _os_log_impl(&dword_273ECD000, v54, v52, "Auto login enabled %d", buf, 8u);
        }
      }
    }

    [v7 setSaveDataModeConfigurable:{objc_msgSend(profile5, "saveDataModeConfigurable")}];
    if ([v7 saveDataModeConfigurable])
    {
      if ([profile5 lowDataMode] == 1)
      {
        v56 = 1;
      }

      else if ([profile5 isPersonalHotspot])
      {
        v56 = [profile5 lowDataMode] == 0;
      }

      else
      {
        v56 = 0;
      }

      [v7 setIsInSaveDataMode:v56];
      v57 = WFLogForCategory(0);
      v58 = OSLogForWFLogLevel(3uLL);
      v59 = v58;
      if (WFCurrentLogLevel(v58, v60) >= 3 && v57)
      {
        v61 = v57;
        if (os_log_type_enabled(v61, v59))
        {
          isInSaveDataMode = [v7 isInSaveDataMode];
          *buf = 67109120;
          *v100 = isInSaveDataMode;
          _os_log_impl(&dword_273ECD000, v61, v59, "Data-saver mode enabled %d", buf, 8u);
        }
      }
    }

    detailsContext7 = [(WFSettingsController *)self detailsContext];
    [v7 setPrivacyProxyTierStatus:{objc_msgSend(detailsContext7, "privacyProxyTierStatus")}];

    if ([v7 privacyProxyTierStatus])
    {
      [v7 setPrivacyProxyEnabled:{objc_msgSend(profile5, "isPrivacyProxyEnabled")}];
      v64 = WFLogForCategory(0);
      v65 = OSLogForWFLogLevel(3uLL);
      v66 = v65;
      if (WFCurrentLogLevel(v65, v67) >= 3 && v64)
      {
        v68 = v64;
        if (os_log_type_enabled(v68, v66))
        {
          privacyProxyEnabled = [v7 privacyProxyEnabled];
          *buf = 67109120;
          *v100 = privacyProxyEnabled;
          _os_log_impl(&dword_273ECD000, v68, v66, "Privacy Proxy enabled %d", buf, 8u);
        }
      }
    }

    [v7 setNetworkQualityVisible:{objc_msgSend(profile5, "networkQualityVisible")}];
    if ([v7 networkQualityVisible])
    {
      [profile5 networkQualityResponsiveness];
      [v7 setNetworkQualityResponsiveness:?];
      networkQualityDate = [profile5 networkQualityDate];
      v71 = [networkQualityDate copy];
      [v7 setNetworkQualityDate:v71];
    }

    [v7 setForgetable:{objc_msgSend(profile5, "forgetable")}];
    v34 = WFLogForCategory(0);
    v72 = OSLogForWFLogLevel(3uLL);
    v73 = v72;
    if (WFCurrentLogLevel(v72, v74) >= 3 && v34)
    {
      v34 = v34;
      if (os_log_type_enabled(v34, v73))
      {
        autoJoinConfigurable = [v7 autoJoinConfigurable];
        autoLoginConfigurable = [v7 autoLoginConfigurable];
        saveDataModeConfigurable = [v7 saveDataModeConfigurable];
        forgetable = [v7 forgetable];
        privacyProxyTierStatus = [v7 privacyProxyTierStatus];
        networkQualityVisible = [v7 networkQualityVisible];
        portalURL = [(WFDetailsContext *)self->_detailsContext portalURL];
        *buf = 67110658;
        *v100 = autoJoinConfigurable;
        *&v100[4] = 1024;
        *&v100[6] = autoLoginConfigurable;
        *v101 = 1024;
        *&v101[2] = saveDataModeConfigurable;
        v102 = 1024;
        v103 = forgetable;
        v104 = 2048;
        v105 = privacyProxyTierStatus;
        networkCopy = v98;
        v106 = 1024;
        v107 = networkQualityVisible;
        v108 = 2112;
        v109 = portalURL;
        _os_log_impl(&dword_273ECD000, v34, v73, "Network Details: Auto join configurable=%d, Auto login configurable=%d, Data-saver configurable=%d, Forgetable=%d, Privacy Proxy Configurable=%ld, Network Quality Visible=%d, portalURL='%@'", buf, 0x34u);
      }
    }
  }

  else if (v39 && os_log_type_enabled(v34, v36))
  {
    *buf = 138412290;
    *v100 = networkCopy;
    _os_log_impl(&dword_273ECD000, v34, v36, "No existing profile for network %@", buf, 0xCu);
  }

  if ([networkCopy isAirPortBaseStation])
  {
    v80 = networkCopy;
    detailsContext8 = [(WFSettingsController *)self detailsContext];
    [v7 setManageable:{objc_msgSend(detailsContext8, "supportsAirportManagement")}];

    v82 = WFLogForCategory(0);
    v83 = OSLogForWFLogLevel(3uLL);
    v84 = v83;
    if (WFCurrentLogLevel(v83, v85) >= 3 && v82)
    {
      v86 = v82;
      if (os_log_type_enabled(v86, v84))
      {
        manageable = [v7 manageable];
        *buf = 136315394;
        *v100 = "[WFSettingsController _baseConfigForNetwork:current:]";
        *&v100[8] = 1024;
        *v101 = manageable;
        _os_log_impl(&dword_273ECD000, v86, v84, "%s: airport management supported %d", buf, 0x12u);
      }
    }

    networkCopy = v80;
  }

  if ([networkCopy isCloudSyncable])
  {
    cloudSyncRunning = [(WFSettingsController *)self cloudSyncRunning];
  }

  else
  {
    cloudSyncRunning = 0;
  }

  [v7 setCloudSyncable:cloudSyncRunning];
  v89 = WFLogForCategory(0);
  v90 = OSLogForWFLogLevel(3uLL);
  v91 = v90;
  if (WFCurrentLogLevel(v90, v92) >= 3 && v89)
  {
    v93 = v89;
    if (os_log_type_enabled(v93, v91))
    {
      cloudSyncable = [v7 cloudSyncable];
      *buf = 136315394;
      *v100 = "[WFSettingsController _baseConfigForNetwork:current:]";
      *&v100[8] = 1024;
      *v101 = cloudSyncable;
      _os_log_impl(&dword_273ECD000, v93, v91, "%s: network cloudSyncable %d", buf, 0x12u);
    }
  }

  return v7;
}

- (void)_refreshSettingsConfig:(id)config
{
  configCopy = config;
  detailsContext = [(WFSettingsController *)self detailsContext];
  interface = [detailsContext interface];
  interfaceName = [interface interfaceName];

  v8 = [WFGetSettingsOperation alloc];
  network = [(WFSettingsController *)self network];
  ssid = [network ssid];
  v11 = [(WFGetSettingsOperation *)v8 initWithSSID:ssid interfaceName:interfaceName];

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__10;
  v26[4] = __Block_byref_object_dispose__10;
  v12 = v11;
  v27 = v12;
  v13 = [configCopy copy];
  objc_initWeak(&location, self);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __47__WFSettingsController__refreshSettingsConfig___block_invoke;
  v19 = &unk_279EBE660;
  v23 = v26;
  objc_copyWeak(&v24, &location);
  v20 = v13;
  selfCopy = self;
  v14 = v20;
  v22 = v14;
  [(WFGetSettingsOperation *)v12 setCompletionBlock:&v16];
  v15 = [(WFSettingsController *)self queue:v16];
  [v15 addOperation:v12];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  _Block_object_dispose(v26, 8);
}

void __47__WFSettingsController__refreshSettingsConfig___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WFSettingsController__refreshSettingsConfig___block_invoke_2;
  block[3] = &unk_279EBE660;
  v9 = *(a1 + 56);
  objc_copyWeak(&v10, (a1 + 64));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v10);
}

void __47__WFSettingsController__refreshSettingsConfig___block_invoke_2(uint64_t a1)
{
  v241 = *MEMORY[0x277D85DE8];
  v2 = a1 + 56;
  v225 = [*(*(*(a1 + 56) + 8) + 40) settings];
  v3 = *(*v2 + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v226 = [WeakRetained ipMonitor];
  v5 = [WeakRetained isCurrentNetwork];
  v6 = [v225 ipv4Settings];
  v223 = v6;
  v7 = v6 != 0;
  if (v6)
  {
    v8 = [v6 method];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  if (((v8 == 0x7FFFFFFFFFFFFFFFLL) & v5) == 1)
  {
    v9 = [v226 ipv4ConfigMethod];
  }

  v221 = v7;
  if (v9 <= 3)
  {
    if (v9 != 1 && v9 != 3)
    {
      goto LABEL_94;
    }

    goto LABEL_15;
  }

  if (v9 == 4)
  {
    [*(a1 + 32) setIpv4Config:2];
    v61 = WFLogForCategory(0);
    v62 = OSLogForWFLogLevel(4uLL);
    v63 = v62;
    if (WFCurrentLogLevel(v62, v64) >= 4 && v61)
    {
      v65 = v61;
      if (os_log_type_enabled(v65, v63))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v65, v63, "IPv4 config is manual", buf, 2u);
      }
    }

    if (v223)
    {
      v66 = [v223 addresses];

      if (v66)
      {
        v67 = [v223 addresses];
        v22 = [v67 firstObject];
      }

      else
      {
        v22 = 0;
      }

      v70 = [v223 subnetMasks];

      if (v70)
      {
        v71 = [v223 subnetMasks];
        v41 = [v71 firstObject];
      }

      else
      {
        v41 = 0;
      }

      v72 = [v223 router];
    }

    else
    {
      if (!v5)
      {
        v41 = 0;
        v32 = 0;
        v22 = 0;
        goto LABEL_85;
      }

      v68 = [v226 ipv4Addresses];

      if (v68)
      {
        v69 = [v226 ipv4Addresses];
        v22 = [v69 firstObject];
      }

      else
      {
        v22 = 0;
      }

      v73 = [v226 ipv4SubnetMasks];

      if (v73)
      {
        v74 = [v226 ipv4SubnetMasks];
        v41 = [v74 firstObject];
      }

      else
      {
        v41 = 0;
      }

      v72 = [v226 ipv4Router];
    }

    v32 = v72;
LABEL_85:
    v75 = WFLogForCategory(0);
    v76 = OSLogForWFLogLevel(4uLL);
    v77 = v76;
    if (WFCurrentLogLevel(v76, v78) >= 4 && v75)
    {
      v79 = v75;
      if (os_log_type_enabled(v79, v77))
      {
        v80 = @"Setup:";
        *buf = 138413058;
        if (v223)
        {
          v80 = @"Custom:";
        }

        v236 = v80;
        v237 = 2112;
        v238 = v22;
        v239 = 2112;
        *v240 = v32;
        *&v240[8] = 2112;
        *&v240[10] = v41;
        _os_log_impl(&dword_273ECD000, v79, v77, "IPv4 (%@) Manual address %@, router %@, subnet mask: %@", buf, 0x2Au);
      }
    }

    [*(a1 + 32) setIpv4AddressManual:v22];
    [*(a1 + 32) setIpv4RouterAddressManual:v32];
    [*(a1 + 32) setIpv4SubnetMaskManual:v41];
    goto LABEL_93;
  }

  if (v9 != 5)
  {
    goto LABEL_94;
  }

LABEL_15:
  [*(a1 + 32) setIpv4Config:v9 == 5];
  if (v9 == 5 || ![WeakRetained isCurrentNetwork])
  {
    v15 = WFLogForCategory(0);
    v16 = OSLogForWFLogLevel(4uLL);
    v17 = v16;
    if (WFCurrentLogLevel(v16, v18) >= 4 && v15)
    {
      v19 = v15;
      if (os_log_type_enabled(v19, v17))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v19, v17, "IPv4 config is BootP", buf, 2u);
      }
    }
  }

  else
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(4uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) >= 4 && v10)
    {
      v14 = v10;
      if (os_log_type_enabled(v14, v12))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v14, v12, "IPv4 config is automatic/DHCP", buf, 2u);
      }
    }

    [*(a1 + 32) setCanRenewLease:1];
  }

  if (v5)
  {
    v20 = [*(a1 + 40) detailsContext];
    v21 = [v20 interface];
    v22 = [v21 IPv4Addresses];

    if (v22)
    {
      v23 = [v22 firstObject];
      [*(a1 + 32) setIpv4Address:v23];

      v24 = WFLogForCategory(0);
      v25 = OSLogForWFLogLevel(4uLL);
      v26 = v25;
      if (WFCurrentLogLevel(v25, v27) >= 4 && v24)
      {
        v28 = v24;
        if (os_log_type_enabled(v28, v26))
        {
          v29 = [*(a1 + 32) ipv4Address];
          *buf = 138412290;
          v236 = v29;
          _os_log_impl(&dword_273ECD000, v28, v26, "IPv4 Address %@", buf, 0xCu);
        }
      }
    }

    v30 = [*(a1 + 40) detailsContext];
    v31 = [v30 interface];
    v32 = [v31 IPv4RouterAddress];

    if (v32)
    {
      [*(a1 + 32) setIpv4RouterAddress:v32];
      v33 = WFLogForCategory(0);
      v34 = OSLogForWFLogLevel(4uLL);
      v35 = v34;
      if (WFCurrentLogLevel(v34, v36) >= 4 && v33)
      {
        v37 = v33;
        if (os_log_type_enabled(v37, v35))
        {
          v38 = [*(a1 + 32) ipv4RouterAddress];
          *buf = 138412290;
          v236 = v38;
          _os_log_impl(&dword_273ECD000, v37, v35, "IPv4 Router %@", buf, 0xCu);
        }
      }
    }

    v39 = [*(a1 + 40) detailsContext];
    v40 = [v39 interface];
    v41 = [v40 IPv4SubnetMasks];

    if (v41)
    {
      v42 = [v41 firstObject];
      [*(a1 + 32) setIpv4SubnetMask:v42];

      v43 = WFLogForCategory(0);
      v44 = OSLogForWFLogLevel(4uLL);
      v45 = v44;
      if (WFCurrentLogLevel(v44, v46) >= 4 && v43)
      {
        v47 = v43;
        if (os_log_type_enabled(v47, v45))
        {
          v48 = [*(a1 + 32) ipv4SubnetMask];
          *buf = 138412290;
          v236 = v48;
          _os_log_impl(&dword_273ECD000, v47, v45, "IPv4 Subnet Mask %@", buf, 0xCu);
        }
      }
    }

    v49 = v9 == 5;
    v50 = [v226 ipv4DHCPClientID];
    if (!v50)
    {
      v49 = 1;
    }

    if (!v49)
    {
      v51 = [v226 ipv4DHCPClientID];
      [*(a1 + 32) setDhcpClientID:v51];

      v52 = WFLogForCategory(0);
      v53 = OSLogForWFLogLevel(4uLL);
      v54 = v53;
      if (WFCurrentLogLevel(v53, v55) >= 4 && v52)
      {
        v56 = v52;
        if (os_log_type_enabled(v56, v54))
        {
          v57 = [*(a1 + 32) dhcpClientID];
          *buf = 138412290;
          v236 = v57;
          _os_log_impl(&dword_273ECD000, v56, v54, "IPv4 DHCP Client ID %@", buf, 0xCu);
        }
      }
    }

    v58 = [*(a1 + 40) network];
    v59 = [v58 carPlayType] == 2;

    if (v59)
    {
      v60 = [v226 DHCPLeaseExpirationDate];
      [*(a1 + 32) setDhcpLeaseExpirationDate:v60];
    }

LABEL_93:
  }

LABEL_94:
  v81 = [v225 ipv6Settings];
  v222 = v81;
  if (v81)
  {
    v82 = [v81 method];
  }

  else
  {
    v82 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v82 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v83 = v5;
  }

  else
  {
    v83 = 0;
  }

  if (v83 == 1)
  {
    v82 = [v226 ipv6ConfigMethod];
  }

  else if (!v5)
  {
    goto LABEL_155;
  }

  if (!v82)
  {
    goto LABEL_155;
  }

  v84 = +[WFMetricsManager sharedManager];
  v85 = [WFUserEvent eventWithType:9];
  [v84 processEvent:v85];

  switch(v82)
  {
    case 3:
      [*(a1 + 32) setIpv6Config:1];
      v95 = WFLogForCategory(0);
      v96 = OSLogForWFLogLevel(4uLL);
      v97 = v96;
      if (WFCurrentLogLevel(v96, v98) >= 4 && v95)
      {
        v99 = v95;
        if (os_log_type_enabled(v99, v97))
        {
          *buf = 0;
          _os_log_impl(&dword_273ECD000, v99, v97, "IPv6 config is manual", buf, 2u);
        }
      }

      if (!v222)
      {
        goto LABEL_136;
      }

      v100 = [v222 addresses];

      if (v100)
      {
        v101 = [v222 addresses];
        v102 = [v101 firstObject];
        [*(a1 + 32) setIpv6AddressManual:v102];
      }

      v103 = [v222 router];

      if (v103)
      {
        v104 = [v222 router];
        [*(a1 + 32) setIpv6RouterAddressManual:v104];
      }

      v105 = [v222 prefixLengths];

      if (!v105)
      {
        goto LABEL_136;
      }

      v86 = [v222 prefixLengths];
      v89 = [v86 firstObject];
      [*(a1 + 32) setIpv6PrefixLengthManual:v89];
      goto LABEL_134;
    case 2:
      [*(a1 + 32) setIpv6Config:2];
      v86 = WFLogForCategory(0);
      v87 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel(v87, v91) < 4 || !v86)
      {
        goto LABEL_135;
      }

      v89 = v86;
      if (!os_log_type_enabled(v89, v87))
      {
        goto LABEL_133;
      }

      *buf = 0;
      v90 = "IPv6 config is link local";
      break;
    case 1:
      [*(a1 + 32) setIpv6Config:0];
      v86 = WFLogForCategory(0);
      v87 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel(v87, v88) < 4 || !v86)
      {
        goto LABEL_135;
      }

      v89 = v86;
      if (!os_log_type_enabled(v89, v87))
      {
        goto LABEL_133;
      }

      *buf = 0;
      v90 = "IPv6 config is automatic";
      break;
    default:
      v86 = WFLogForCategory(0);
      v106 = OSLogForWFLogLevel(1uLL);
      if (!WFCurrentLogLevel(v106, v107) || !v86)
      {
        goto LABEL_135;
      }

      v89 = v86;
      if (!os_log_type_enabled(v89, v106))
      {
        goto LABEL_133;
      }

      v108 = [v226 ipv6ConfigMethod];
      *buf = 134349056;
      v236 = v108;
      v90 = "Unknown IPv6 configuration method %{public}lu";
      v92 = v89;
      v93 = v106;
      v94 = 12;
      goto LABEL_132;
  }

  v92 = v89;
  v93 = v87;
  v94 = 2;
LABEL_132:
  _os_log_impl(&dword_273ECD000, v92, v93, v90, buf, v94);
LABEL_133:
  v86 = v89;
LABEL_134:

LABEL_135:
LABEL_136:
  v109 = [v226 ipv6Addresses];
  if (v109)
  {
  }

  else
  {
    v110 = [v226 ipv6Router];
    v111 = v110 == 0;

    if (v111)
    {
      goto LABEL_155;
    }
  }

  v112 = [v226 ipv6Addresses];
  [*(a1 + 32) setIpv6Addresses:v112];

  v113 = [v226 ipv6PrefixLengths];
  [*(a1 + 32) setIpv6PrefixLengths:v113];

  v114 = [v226 ipv6Router];
  [*(a1 + 32) setIpv6RouterAddress:v114];

  v115 = WFLogForCategory(0);
  v116 = OSLogForWFLogLevel(4uLL);
  v117 = v116;
  if (WFCurrentLogLevel(v116, v118) >= 4 && v115)
  {
    v119 = v115;
    if (os_log_type_enabled(v119, v117))
    {
      v120 = [*(a1 + 32) ipv6Addresses];
      *buf = 138412290;
      v236 = v120;
      _os_log_impl(&dword_273ECD000, v119, v117, "IPv6 addresses %@", buf, 0xCu);
    }
  }

  v121 = WFLogForCategory(0);
  v122 = OSLogForWFLogLevel(4uLL);
  v123 = v122;
  if (WFCurrentLogLevel(v122, v124) >= 4 && v121)
  {
    v125 = v121;
    if (os_log_type_enabled(v125, v123))
    {
      v126 = [*(a1 + 32) ipv6PrefixLengths];
      *buf = 138412290;
      v236 = v126;
      _os_log_impl(&dword_273ECD000, v125, v123, "IPv6 prefix lengths %@", buf, 0xCu);
    }
  }

  v127 = WFLogForCategory(0);
  v128 = OSLogForWFLogLevel(4uLL);
  v129 = v128;
  if (WFCurrentLogLevel(v128, v130) >= 4 && v127)
  {
    v131 = v127;
    if (os_log_type_enabled(v131, v129))
    {
      v132 = [*(a1 + 32) ipv6RouterAddress];
      *buf = 138412290;
      v236 = v132;
      _os_log_impl(&dword_273ECD000, v131, v129, "IPv6 router address %@", buf, 0xCu);
    }
  }

LABEL_155:
  v133 = [v225 dnsSettings];
  v134 = v133;
  if (v133)
  {
    v135 = [v133 searchDomains];

    if (v135)
    {
      v220 = [v134 searchDomains];
    }

    else
    {
      v220 = 0;
    }

    v146 = [v134 serverAddresses];

    if (v146)
    {
      v219 = [v134 serverAddresses];
    }

    else
    {
      v219 = 0;
    }

    v136 = 1;
    v221 = 1;
    goto LABEL_182;
  }

  if (!v5)
  {
    v136 = 0;
    v219 = 0;
    v220 = 0;
    goto LABEL_182;
  }

  LODWORD(v136) = [v226 isUsingCustomDNSSettings];
  v137 = [v226 dnsSearchDomains];
  v138 = [v226 dnsDomainName];
  v139 = v138;
  if (v137)
  {
    v140 = v137;

    v141 = WFLogForCategory(0);
    v142 = OSLogForWFLogLevel(4uLL);
    v143 = v142;
    if (WFCurrentLogLevel(v142, v144) < 4 || !v141)
    {
      goto LABEL_177;
    }

    v141 = v141;
    if (!os_log_type_enabled(v141, v143))
    {
LABEL_176:

LABEL_177:
      goto LABEL_178;
    }

    *buf = 138412290;
    v236 = v140;
    v145 = "Using dnsSearchDomains (%@) for dns info";
LABEL_175:
    _os_log_impl(&dword_273ECD000, v141, v143, v145, buf, 0xCu);
    goto LABEL_176;
  }

  if (v138)
  {
    v234 = v138;
    v140 = [MEMORY[0x277CBEA60] arrayWithObjects:&v234 count:1];
    v141 = WFLogForCategory(0);
    v147 = OSLogForWFLogLevel(4uLL);
    v143 = v147;
    if (WFCurrentLogLevel(v147, v148) < 4 || !v141)
    {
      goto LABEL_177;
    }

    v141 = v141;
    if (!os_log_type_enabled(v141, v143))
    {
      goto LABEL_176;
    }

    *buf = 138412290;
    v236 = v139;
    v145 = "Using dnsDomainName (%@) for dns info";
    goto LABEL_175;
  }

LABEL_178:
  v149 = [v226 dnsServerAddresses];

  if (v149)
  {
    v219 = [v226 dnsServerAddresses];
  }

  else
  {
    v219 = 0;
  }

  v220 = 0;
  v136 = v136;
LABEL_182:
  v150 = WFLogForCategory(0);
  v151 = OSLogForWFLogLevel(4uLL);
  v152 = v151;
  if (WFCurrentLogLevel(v151, v153) >= 4 && v150)
  {
    v154 = v150;
    if (os_log_type_enabled(v154, v152))
    {
      v155 = [*(a1 + 32) dnsConfig];
      v156 = @"Manual";
      if (!v155)
      {
        v156 = @"Automatic";
      }

      *buf = 138412290;
      v236 = v156;
      _os_log_impl(&dword_273ECD000, v154, v152, "DNS config is %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) setDnsConfig:v136];
  v157 = WFLogForCategory(0);
  v158 = OSLogForWFLogLevel(4uLL);
  v159 = v158;
  if (WFCurrentLogLevel(v158, v160) >= 4 && v157)
  {
    v161 = v157;
    if (os_log_type_enabled(v161, v159))
    {
      v162 = [*(a1 + 32) dnsSearchDomains];
      *buf = 138412290;
      v236 = v162;
      _os_log_impl(&dword_273ECD000, v161, v159, "DNS search domains %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) setDnsSearchDomains:v220];
  v163 = WFLogForCategory(0);
  v164 = OSLogForWFLogLevel(4uLL);
  v165 = v164;
  if (WFCurrentLogLevel(v164, v166) >= 4 && v163)
  {
    v167 = v163;
    if (os_log_type_enabled(v167, v165))
    {
      v168 = [*(a1 + 32) dnsServerAddresses];
      *buf = 138412290;
      v236 = v168;
      _os_log_impl(&dword_273ECD000, v167, v165, "DNS server addresses %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) setDnsServerAddresses:v219];
  v169 = [v225 proxySettings];
  v170 = v169;
  if (!v169)
  {
    if (!v5 || ![v226 isUsingCustomProxySetting])
    {
      goto LABEL_215;
    }

    v217 = [v226 httpProxyAutoConfigured];
    if (v217)
    {
      v218 = [v226 httpProxyAutoConfigURL];
      v177 = WFLogForCategory(0);
      v178 = OSLogForWFLogLevel(4uLL);
      v179 = v178;
      if (WFCurrentLogLevel(v178, v180) >= 4 && v177)
      {
        v177 = v177;
        if (os_log_type_enabled(v177, v179))
        {
          *buf = 0;
          v171 = 2;
          _os_log_impl(&dword_273ECD000, v177, v179, "Using automatic HTTP proxy settings", buf, 2u);
        }

        else
        {
          v171 = 2;
        }

LABEL_234:

        goto LABEL_235;
      }

      v171 = 2;
    }

    else
    {
      v177 = WFLogForCategory(0);
      v191 = OSLogForWFLogLevel(4uLL);
      v192 = v191;
      v218 = 0;
      if (WFCurrentLogLevel(v191, v193) >= 4 && v177)
      {
        v177 = v177;
        if (os_log_type_enabled(v177, v192))
        {
          *buf = 0;
          _os_log_impl(&dword_273ECD000, v177, v192, "Using manual HTTP proxy settings", buf, 2u);
        }

        v218 = 0;
        v171 = 1;
        goto LABEL_234;
      }

      v171 = 1;
    }

LABEL_235:

    v194 = [v226 httpProxyServer];

    if (v194)
    {
      v172 = [v226 httpProxyServer];
    }

    else
    {
      v172 = 0;
    }

    v195 = [v226 httpProxyPort];
    v196 = v195 == 0;

    if (v196)
    {
      v197 = [v226 httpProxyPort];
      v173 = [v197 stringValue];
    }

    else
    {
      v173 = 0;
    }

    if ([v226 httpProxyIsAuthenticated])
    {
      v174 = [v226 httpProxyIsAuthenticated];
    }

    else
    {
      v174 = 0;
    }

    v175 = [v226 httpProxyUsername];

    if (v175)
    {
      v175 = [v226 httpProxyUsername];
    }

    v198 = WFLogForCategory(0);
    v199 = OSLogForWFLogLevel(4uLL);
    type = v199;
    if (WFCurrentLogLevel(v199, v200) >= 4 && v198)
    {
      v201 = v198;
      if (os_log_type_enabled(v201, type))
      {
        v202 = [*(a1 + 32) httpProxyAuthenticationRequired];
        *buf = 138413058;
        v236 = v172;
        v237 = 2112;
        v238 = v173;
        v239 = 1024;
        *v240 = v202;
        *&v240[4] = 2112;
        *&v240[6] = v175;
        _os_log_impl(&dword_273ECD000, v201, type, "HTTP proxy server %@ port %@ authenticated %d username %@", buf, 0x26u);
      }
    }

    if ((v174 & (v217 ^ 1)) == 1)
    {
      v203 = WFLogForCategory(0);
      v204 = OSLogForWFLogLevel(4uLL);
      v205 = v204;
      if (WFCurrentLogLevel(v204, v206) >= 4 && v203)
      {
        v207 = v203;
        if (os_log_type_enabled(v207, v205))
        {
          *buf = 0;
          _os_log_impl(&dword_273ECD000, v207, v205, "Fetching HTTP proxy password from keychain", buf, 2u);
        }
      }

      v208 = [WFProxyKeychainOperation getPasswordOperationForHost:v172 port:v173 username:v175];
      if (v208)
      {
        objc_initWeak(buf, v208);
        v227[0] = MEMORY[0x277D85DD0];
        v227[1] = 3221225472;
        v227[2] = __47__WFSettingsController__refreshSettingsConfig___block_invoke_31;
        v227[3] = &unk_279EBE638;
        objc_copyWeak(&v232, buf);
        objc_copyWeak(&v233, (a1 + 64));
        v228 = *(a1 + 48);
        v229 = v172;
        v230 = v173;
        v231 = v175;
        [v208 setCompletionBlock:v227];
        v209 = objc_loadWeakRetained((a1 + 64));
        v210 = [v209 queue];
        [v210 addOperation:v208];

        objc_destroyWeak(&v233);
        objc_destroyWeak(&v232);
        objc_destroyWeak(buf);
      }

      else
      {
        v211 = WFLogForCategory(0);
        v212 = OSLogForWFLogLevel(1uLL);
        v213 = v212;
        if (WFCurrentLogLevel(v212, v214) && v211)
        {
          v215 = v211;
          if (os_log_type_enabled(v215, v213))
          {
            *buf = 138412802;
            v236 = v172;
            v237 = 2112;
            v238 = v173;
            v239 = 2112;
            *v240 = v175;
            _os_log_impl(&dword_273ECD000, v215, v213, "Failed to create WFProxyKeychainOperation for host: %@ port: %@ username: %@", buf, 0x20u);
          }
        }
      }

      v176 = 0;
      v171 = 1;
      v174 = 1;
    }

    else
    {
      v176 = 0;
    }

LABEL_205:
    [*(a1 + 32) setHttpProxyConfig:v171];
    [*(a1 + 32) setHttpProxyServerAddress:v172];
    [*(a1 + 32) setHttpProxyServerPort:v173];
    [*(a1 + 32) setHttpProxyAuthenticationRequired:v174];
    [*(a1 + 32) setHttpProxyUsername:v175];
    [*(a1 + 32) setHttpProxyPassword:v176];
    [*(a1 + 32) setHttpProxyConfigPAC:v218];
    if (!v221)
    {
      goto LABEL_223;
    }

    goto LABEL_216;
  }

  if ([v169 customProxy])
  {
    if ([v170 isAutomatic])
    {
      v171 = 2;
    }

    else
    {
      v171 = 1;
    }

    v172 = [v170 server];
    v173 = [v170 port];
    v174 = [v170 authenticated];
    v175 = [v170 username];
    v176 = [v170 password];
    v218 = [v170 autoConfigureURL];
    v221 = 1;
    goto LABEL_205;
  }

  LOBYTE(v221) = 1;
LABEL_215:
  [*(a1 + 32) setHttpProxyConfig:0];
  [*(a1 + 32) setHttpProxyServerAddress:0];
  [*(a1 + 32) setHttpProxyServerPort:0];
  [*(a1 + 32) setHttpProxyAuthenticationRequired:0];
  [*(a1 + 32) setHttpProxyUsername:0];
  [*(a1 + 32) setHttpProxyPassword:0];
  [*(a1 + 32) setHttpProxyConfigPAC:0];
  v176 = 0;
  v218 = 0;
  v175 = 0;
  v173 = 0;
  v172 = 0;
  if ((v221 & 1) == 0)
  {
    goto LABEL_223;
  }

LABEL_216:
  if ([*(a1 + 40) cloudSyncRunning])
  {
    v181 = WFLogForCategory(0);
    v182 = OSLogForWFLogLevel(3uLL);
    v183 = v182;
    if (WFCurrentLogLevel(v182, v184) >= 3 && v181)
    {
      v185 = v181;
      if (os_log_type_enabled(v185, v183))
      {
        *buf = 136315138;
        v236 = "[WFSettingsController _refreshSettingsConfig:]_block_invoke";
        _os_log_impl(&dword_273ECD000, v185, v183, "%s: network has custom settings and is not cloud syncable", buf, 0xCu);
      }
    }

    v186 = [WeakRetained config];
    [v186 setCloudSyncable:0];
  }

LABEL_223:
  v187 = *(a1 + 32);
  v188 = [WeakRetained config];
  LOBYTE(v187) = [v187 isEqual:v188];

  if ((v187 & 1) == 0)
  {
    [WeakRetained setConfig:*(a1 + 32)];
    v189 = [WeakRetained settingsViewController];
    [v189 refreshConfig:*(a1 + 32)];

    v190 = [MEMORY[0x277CCAB98] defaultCenter];
    [v190 postNotificationName:@"WFSettingsControllerDidRefreshConfigNotificationName" object:*(a1 + 40)];
  }
}

void __47__WFSettingsController__refreshSettingsConfig___block_invoke_31(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained error];
  if (v3)
  {

LABEL_3:
    v4 = objc_loadWeakRetained((a1 + 64));
    v5 = [v4 error];

    if (v5)
    {
      v6 = WFLogForCategory(0);
      v7 = OSLogForWFLogLevel(1uLL);
      v8 = v7;
      if (WFCurrentLogLevel(v7, v9) && v6)
      {
        v10 = v6;
        if (os_log_type_enabled(v10, v8))
        {
          v11 = objc_loadWeakRetained((a1 + 64));
          v12 = [v11 error];
          *buf = 138543362;
          v31 = v12;
          _os_log_impl(&dword_273ECD000, v10, v8, "WFProxyKeychainOperation errro %{public}@", buf, 0xCu);
        }
      }
    }

    v13 = WFLogForCategory(0);
    v14 = OSLogForWFLogLevel(1uLL);
    v15 = v14;
    if (WFCurrentLogLevel(v14, v16) && v13 && os_log_type_enabled(v13, v15))
    {
      v17 = *(a1 + 40);
      v18 = *(a1 + 48);
      v19 = *(a1 + 56);
      *buf = 138412802;
      v31 = v17;
      v32 = 2112;
      v33 = v18;
      v34 = 2112;
      v35 = v19;
      _os_log_impl(&dword_273ECD000, v13, v15, "Failed to get password for host: %@ port: %@ username: %@", buf, 0x20u);
    }

    return;
  }

  v20 = objc_loadWeakRetained((a1 + 64));
  v21 = [v20 password];

  if (!v21)
  {
    goto LABEL_3;
  }

  v22 = WFLogForCategory(0);
  v23 = OSLogForWFLogLevel(3uLL);
  v24 = v23;
  if (WFCurrentLogLevel(v23, v25) >= 3 && v22 && os_log_type_enabled(v22, v24))
  {
    *buf = 0;
    _os_log_impl(&dword_273ECD000, v22, v24, "Successfully fetched HTTP proxy password from keychain, updating config", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WFSettingsController__refreshSettingsConfig___block_invoke_32;
  block[3] = &unk_279EBD3A8;
  objc_copyWeak(&v28, (a1 + 72));
  objc_copyWeak(&v29, (a1 + 64));
  v27 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v28);
}

void __47__WFSettingsController__refreshSettingsConfig___block_invoke_32(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained config];
  v4 = [v3 httpProxyPassword];
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [v5 password];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = objc_loadWeakRetained((a1 + 48));
    v9 = [v8 password];
    v10 = objc_loadWeakRetained((a1 + 40));
    v11 = [v10 config];
    [v11 setHttpProxyPassword:v9];

    v13 = objc_loadWeakRetained((a1 + 40));
    v12 = [v13 settingsViewController];
    [v12 refreshConfig:*(a1 + 32)];
  }
}

- (void)networkSettingsViewController:(id)controller saveConfig:(id)config errorHandler:(id)handler
{
  v222 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  configCopy = config;
  handlerCopy = handler;
  val = self;
  config = [(WFSettingsController *)self config];
  v190 = [config changesBetweenConfig:configCopy];

  if ([v190 count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    obj = v190;
    v204 = [obj countByEnumeratingWithState:&v210 objects:v218 count:16];
    if (v204)
    {
      v207 = 0;
      v202 = *MEMORY[0x277D7BA20];
      v203 = *v211;
      v200 = *MEMORY[0x277D7BA28];
      v197 = *MEMORY[0x277D7BA18];
      v195 = *MEMORY[0x277D7BA30];
      v196 = vdupq_n_s64(2uLL);
      v194 = vdupq_n_s64(5uLL);
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v211 != v203)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v210 + 1) + 8 * v9);
        if ([v10 isEqualToString:v202])
        {
          break;
        }

        if ([v10 isEqualToString:v200])
        {
          v11 = [obj objectForKey:v10];
          v23 = WFLogForCategory(0);
          v24 = OSLogForWFLogLevel(4uLL);
          v25 = v24;
          if (WFCurrentLogLevel(v24, v26) >= 4 && v23 && os_log_type_enabled(v23, v25))
          {
            *buf = 138412290;
            *v220 = v11;
            _os_log_impl(&dword_273ECD000, v23, v25, "IPv6 changes: %@", buf, 0xCu);
          }

          if (([configCopy validIPv6Configuration] & 1) == 0)
          {
            v27 = WFLogForCategory(0);
            v56 = OSLogForWFLogLevel(3uLL);
            v57 = v56;
            if (WFCurrentLogLevel(v56, v58) >= 3 && v27 && os_log_type_enabled(v27, v57))
            {
              *buf = 138412290;
              *v220 = v11;
              _os_log_impl(&dword_273ECD000, v27, v57, "Disregarding ipv6 edits %@, invalid configuration", buf, 0xCu);
            }

            goto LABEL_165;
          }

          v27 = [v11 objectForKey:@"ipv6Config"];
          if (v27 || (ipv6Config = [0 integerValue], ipv6Config == -1))
          {
            ipv6Config = [configCopy ipv6Config];
          }

          switch(ipv6Config)
          {
            case 2:
              ipv6AddressManual = +[WFSettingsIPV6 linkLocalConfig];
              [array addObject:ipv6AddressManual];
              break;
            case 1:
              ipv6AddressManual = [configCopy ipv6AddressManual];
              v73 = [v11 objectForKey:@"ipv6AddressManual"];

              if (v73)
              {
                v74 = [v11 objectForKey:@"ipv6AddressManual"];

                ipv6AddressManual = v74;
              }

              ipv6PrefixLengthManual = [configCopy ipv6PrefixLengthManual];
              v76 = [v11 objectForKey:@"ipv6PrefixLengthManual"];

              if (v76)
              {
                v77 = [v11 objectForKey:@"ipv6PrefixLengthManual"];

                ipv6PrefixLengthManual = v77;
              }

              ipv6RouterAddressManual = [configCopy ipv6RouterAddressManual];
              v79 = [v11 objectForKey:@"ipv6RouterAddressManual"];

              if (v79)
              {
                v80 = [v11 objectForKey:@"ipv6RouterAddressManual"];

                ipv6RouterAddressManual = v80;
              }

              v81 = [WFSettingsIPV6 alloc];
              if (ipv6AddressManual)
              {
                v215 = ipv6AddressManual;
                v192 = [MEMORY[0x277CBEA60] arrayWithObjects:&v215 count:1];
                v82 = v192;
                if (ipv6PrefixLengthManual)
                {
                  goto LABEL_93;
                }

LABEL_147:
                v84 = [(WFSettingsIPV6 *)v81 initWithMethod:3 addresses:v82 prefixLengths:0 router:ipv6RouterAddressManual];
                if (ipv6AddressManual)
                {
                  goto LABEL_148;
                }
              }

              else
              {
                v82 = 0;
                if (!ipv6PrefixLengthManual)
                {
                  goto LABEL_147;
                }

LABEL_93:
                v214 = ipv6PrefixLengthManual;
                v83 = [MEMORY[0x277CBEA60] arrayWithObjects:&v214 count:1];
                v84 = [(WFSettingsIPV6 *)v81 initWithMethod:3 addresses:v82 prefixLengths:v83 router:ipv6RouterAddressManual];

                if (ipv6AddressManual)
                {
LABEL_148:
                }
              }

              if (v84)
              {
                [array addObject:v84];
              }

              else
              {
                v122 = WFLogForCategory(0);
                v123 = OSLogForWFLogLevel(1uLL);
                v124 = v123;
                if (WFCurrentLogLevel(v123, v125) && v122 && os_log_type_enabled(v122, v124))
                {
                  *buf = 138412290;
                  *v220 = v11;
                  _os_log_impl(&dword_273ECD000, v122, v124, "Failed to create WFSettingsIPV6 from ipv6Changes %@", buf, 0xCu);
                }
              }

              break;
            case 0:
              ipv6AddressManual = +[WFSettingsIPV6 automaticConfig];
              [array addObject:ipv6AddressManual];
              break;
            default:
LABEL_158:
              config2 = [(WFSettingsController *)val config];
              ipv6Config2 = [config2 ipv6Config];
              v128.i64[0] = ipv6Config;
              v128.i64[1] = ipv6Config2;
              v129 = vdupq_n_s64(1uLL);
              v130 = vdupq_n_s64(2uLL);
              v131 = vcgtq_u64(v130, vaddq_s64(v128, v129));
              v132 = vceqq_s64(v128, v130);
              v133 = vbslq_s8(v131, vdupq_n_s64(3uLL), vbslq_s8(vceqq_s64(v128, v129), vdupq_n_s64(4uLL), vornq_s8(vandq_s8(v132, v194), v132)));
              v134 = v133.i64[1];
              v135 = v133.i64[0];
              if (v133.i64[0] == v133.i64[1])
              {
                v136 = WFLogForCategory(0);
                v137 = OSLogForWFLogLevel(4uLL);
                v138 = v137;
                if (WFCurrentLogLevel(v137, v139) >= 4 && v136 && os_log_type_enabled(v136, v138))
                {
                  *buf = 67109376;
                  *v220 = v135;
                  *&v220[4] = 1024;
                  *&v220[6] = v135;
                  _os_log_impl(&dword_273ECD000, v136, v138, "Dropping IPv6 configure event as the types didn't change %d -> %d", buf, 0xEu);
                }
              }

              else
              {
                v136 = +[WFMetricsManager sharedManager];
                v140 = [WFUserConfigureEvent configureEventWithType:1 new:v135 old:v134];
                [v136 processEvent:v140];
              }

LABEL_165:
              goto LABEL_166;
          }

          goto LABEL_158;
        }

        if ([v10 isEqualToString:v197])
        {
          v11 = [obj objectForKey:v10];
          v29 = WFLogForCategory(0);
          v30 = OSLogForWFLogLevel(4uLL);
          v31 = v30;
          if (WFCurrentLogLevel(v30, v32) >= 4 && v29 && os_log_type_enabled(v29, v31))
          {
            *buf = 138412290;
            *v220 = v11;
            _os_log_impl(&dword_273ECD000, v29, v31, "DNS changes: %@", buf, 0xCu);
          }

          dnsConfig = [configCopy dnsConfig];
          v34 = [v11 objectForKey:@"dnsConfig"];

          if (v34)
          {
            v35 = [v11 objectForKey:@"dnsConfig"];
            dnsConfig = [v35 integerValue];
          }

          if (dnsConfig)
          {
            dnsServerAddresses = [v11 objectForKey:@"dnsServerAddresses"];
            if (!dnsServerAddresses)
            {
              dnsServerAddresses = [configCopy dnsServerAddresses];
            }

            dnsSearchDomains = [v11 objectForKey:@"dnsSearchDomains"];
            if (!dnsSearchDomains)
            {
              dnsSearchDomains = [configCopy dnsSearchDomains];
            }

            v38 = [[WFSettingsDNS alloc] initWithServerAddresses:dnsServerAddresses searchDomains:dnsSearchDomains];
            if (v38)
            {
              [array addObject:v38];
            }

            else
            {
              v89 = WFLogForCategory(0);
              v90 = OSLogForWFLogLevel(1uLL);
              v91 = v90;
              if (WFCurrentLogLevel(v90, v92) && v89 && os_log_type_enabled(v89, v91))
              {
                *buf = 138412290;
                *v220 = v11;
                _os_log_impl(&dword_273ECD000, v89, v91, "Failed to create WFSettingsDNS from dnsChanges %@", buf, 0xCu);
              }
            }

            v72 = 7;
          }

          else
          {
            dnsServerAddresses = +[WFSettingsDNS automaticConfig];
            [array addObject:dnsServerAddresses];
            v72 = 6;
          }

          config3 = [(WFSettingsController *)val config];
          if ([config3 dnsConfig])
          {
            v94 = 7;
          }

          else
          {
            v94 = 6;
          }

          if (v72 == v94)
          {
            v95 = WFLogForCategory(0);
            v96 = OSLogForWFLogLevel(4uLL);
            v97 = v96;
            if (WFCurrentLogLevel(v96, v98) >= 4 && v95 && os_log_type_enabled(v95, v97))
            {
              *buf = 67109376;
              *v220 = v72;
              *&v220[4] = 1024;
              *&v220[6] = v72;
              _os_log_impl(&dword_273ECD000, v95, v97, "Dropping DNS configure event as the types didn't change %d -> %d", buf, 0xEu);
            }
          }

          else
          {
            v95 = +[WFMetricsManager sharedManager];
            v99 = [WFUserConfigureEvent configureEventWithType:2 new:v72 old:v94];
            [v95 processEvent:v99];
          }

          goto LABEL_166;
        }

        if ([v10 isEqualToString:v195])
        {
          v11 = [obj objectForKey:v10];
          v44 = [v11 mutableCopy];
          allKeys = [v44 allKeys];
          v46 = [allKeys containsObject:@"httpProxyPassword"];

          if (v46)
          {
            [v44 setObject:@"<REDACTED>" forKey:@"httpProxyPassword"];
          }

          v47 = WFLogForCategory(0);
          v48 = OSLogForWFLogLevel(4uLL);
          v49 = v48;
          if (WFCurrentLogLevel(v48, v50) >= 4 && v47 && os_log_type_enabled(v47, v49))
          {
            *buf = 138412290;
            *v220 = v44;
            _os_log_impl(&dword_273ECD000, v47, v49, "Proxy changes: %@", buf, 0xCu);
          }

          if (([configCopy validProxyConfiguration] & 1) == 0)
          {
            config4 = WFLogForCategory(0);
            v86 = OSLogForWFLogLevel(3uLL);
            v87 = v86;
            if (WFCurrentLogLevel(v86, v88) >= 3 && config4 && os_log_type_enabled(config4, v87))
            {
              *buf = 138412290;
              *v220 = v11;
              _os_log_impl(&dword_273ECD000, config4, v87, "Disregarding proxy edits %@, invalid configuration", buf, 0xCu);
            }

            goto LABEL_210;
          }

          v51 = [v11 objectForKey:@"httpProxyConfig"];

          if (!v51 || ([v11 objectForKey:@"httpProxyConfig"], v52 = objc_claimAutoreleasedReturnValue(), httpProxyConfig = objc_msgSend(v52, "integerValue"), v52, httpProxyConfig == -1))
          {
            httpProxyConfig = [configCopy httpProxyConfig];
          }

          switch(httpProxyConfig)
          {
            case 2:
              httpProxyServerAddress = [v11 objectForKey:@"httpProxyConfigPAC"];
              if (![httpProxyServerAddress length])
              {
                v144 = WFLogForCategory(0);
                v145 = OSLogForWFLogLevel(3uLL);
                v146 = v145;
                if (WFCurrentLogLevel(v145, v147) >= 3 && v144 && os_log_type_enabled(v144, v146))
                {
                  *buf = 0;
                  _os_log_impl(&dword_273ECD000, v144, v146, "No httpProxyConfigPAC supplied, using auto discovery", buf, 2u);
                }
              }

              v148 = [[WFSettingsProxy alloc] initWithAutoConfigureURL:httpProxyServerAddress];
              [array addObject:v148];

              v55 = 9;
              break;
            case 1:
              httpProxyServerAddress = [v11 objectForKey:@"httpProxyServerAddress"];
              if (!httpProxyServerAddress)
              {
                httpProxyServerAddress = [configCopy httpProxyServerAddress];
              }

              httpProxyServerPort = [v11 objectForKey:@"httpProxyServerPort"];
              if (!httpProxyServerPort)
              {
                httpProxyServerPort = [configCopy httpProxyServerPort];
              }

              httpProxyUsername = [v11 objectForKey:@"httpProxyUsername"];
              if (!httpProxyUsername)
              {
                httpProxyUsername = [configCopy httpProxyUsername];
              }

              httpProxyPassword = [v11 objectForKey:@"httpProxyPassword"];
              if (!httpProxyPassword)
              {
                httpProxyPassword = [configCopy httpProxyPassword];
              }

              if (![httpProxyServerAddress length] || !objc_msgSend(httpProxyServerPort, "length") || objc_msgSend(configCopy, "httpProxyAuthenticationRequired") && (!objc_msgSend(httpProxyUsername, "length") || !objc_msgSend(httpProxyPassword, "length")))
              {
                v185 = WFLogForCategory(0);
                v186 = OSLogForWFLogLevel(1uLL);
                v187 = v186;
                if (WFCurrentLogLevel(v186, v188) && v185 && os_log_type_enabled(v185, v187))
                {
                  *buf = 0;
                  _os_log_impl(&dword_273ECD000, v185, v187, "Can't save proxy settings, missing fields", buf, 2u);
                }

                interfaceName = obj;
                goto LABEL_235;
              }

              v143 = [[WFSettingsProxy alloc] initWithManualServer:httpProxyServerAddress port:httpProxyServerPort username:httpProxyUsername password:httpProxyPassword];
              if (array)
              {
                [array addObject:v143];
              }

              else
              {
                v149 = WFLogForCategory(0);
                v150 = OSLogForWFLogLevel(1uLL);
                v151 = v150;
                if (WFCurrentLogLevel(v150, v152) && v149 && os_log_type_enabled(v149, v151))
                {
                  *buf = 138412290;
                  *v220 = v11;
                  _os_log_impl(&dword_273ECD000, v149, v151, "Failed to create WFSettingsProxy from proxyChanges %@", buf, 0xCu);
                }
              }

              v55 = 10;
              break;
            case 0:
              httpProxyServerAddress = +[WFSettingsProxy offConfig];
              [array addObject:httpProxyServerAddress];
              v55 = 8;
              break;
            default:
              v55 = -1;
LABEL_200:
              config4 = [(WFSettingsController *)val config];
              httpProxyConfig2 = [config4 httpProxyConfig];
              if (httpProxyConfig2 > 2)
              {
                v154 = -1;
              }

              else
              {
                v154 = qword_273F75CC8[httpProxyConfig2];
              }

              if (v55 == v154)
              {
                v155 = WFLogForCategory(0);
                v156 = OSLogForWFLogLevel(4uLL);
                v157 = v156;
                if (WFCurrentLogLevel(v156, v158) >= 4 && v155 && os_log_type_enabled(v155, v157))
                {
                  *buf = 67109376;
                  *v220 = v55;
                  *&v220[4] = 1024;
                  *&v220[6] = v55;
                  _os_log_impl(&dword_273ECD000, v155, v157, "Dropping HTTP Proxy configure event as the types didn't change %d -> %d", buf, 0xEu);
                }
              }

              else
              {
                v155 = +[WFMetricsManager sharedManager];
                v159 = [WFUserConfigureEvent configureEventWithType:3 new:v55 old:v154];
                [v155 processEvent:v159];
              }

LABEL_210:
LABEL_166:
              v43 = v207;
LABEL_167:

              v207 = v43;
              goto LABEL_168;
          }

          goto LABEL_200;
        }

LABEL_168:
        if (v204 == ++v9)
        {
          v160 = [obj countByEnumeratingWithState:&v210 objects:v218 count:16];
          v204 = v160;
          if (v160)
          {
            goto LABEL_4;
          }

          goto LABEL_219;
        }
      }

      v11 = [obj objectForKey:v10];
      v12 = WFLogForCategory(0);
      v13 = OSLogForWFLogLevel(4uLL);
      v14 = v13;
      if (WFCurrentLogLevel(v13, v15) >= 4 && v12 && os_log_type_enabled(v12, v14))
      {
        *buf = 138412290;
        *v220 = v11;
        _os_log_impl(&dword_273ECD000, v12, v14, "IPv4 changes: %@", buf, 0xCu);
      }

      if (([configCopy validIPv4Configuration] & 1) == 0)
      {
        v39 = WFLogForCategory(0);
        v40 = OSLogForWFLogLevel(3uLL);
        v41 = v40;
        if (WFCurrentLogLevel(v40, v42) >= 3 && v39 && os_log_type_enabled(v39, v41))
        {
          *buf = 138412290;
          *v220 = v11;
          _os_log_impl(&dword_273ECD000, v39, v41, "Disregarding ipv4 edits %@, invalid configuration", buf, 0xCu);
        }

        v43 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wifikit.error" code:1 userInfo:v11];

        handlerCopy[2](handlerCopy, v43);
        goto LABEL_167;
      }

      v16 = [v11 objectForKey:@"ipv4Config"];
      v17 = v16;
      if (!v16 || (ipv4Config = [v16 integerValue], ipv4Config == -1))
      {
        ipv4Config = [configCopy ipv4Config];
      }

      if (ipv4Config != 2)
      {
        if (ipv4Config == 1)
        {
          ipv4AddressManual = +[WFSettingsIPV4 bootPConfig];
          if (!ipv4AddressManual)
          {
            v100 = WFLogForCategory(0);
            v101 = OSLogForWFLogLevel(1uLL);
            v102 = v101;
            if (WFCurrentLogLevel(v101, v103) && v100 && os_log_type_enabled(v100, v102))
            {
              *buf = 138412290;
              *v220 = v11;
              _os_log_impl(&dword_273ECD000, v100, v102, "Failed to create WFSettingsIPV4 from ipv4Changes %@", buf, 0xCu);
            }

            goto LABEL_133;
          }
        }

        else
        {
          if (ipv4Config)
          {
LABEL_134:
            config5 = [(WFSettingsController *)val config];
            ipv4Config2 = [config5 ipv4Config];
            v110.i64[0] = ipv4Config;
            v110.i64[1] = ipv4Config2;
            v111 = vdupq_n_s64(1uLL);
            v112 = vceqq_s64(v110, v111);
            v113 = vbicq_s8(vbslq_s8(vceqq_s64(v110, v196), v196, vornq_s8(vandq_s8(v112, v111), v112)), vcgtq_u64(v196, vaddq_s64(v110, v111)));
            v114 = v113.i64[1];
            v115 = v113.i64[0];
            if (v113.i64[0] == v113.i64[1])
            {
              v116 = WFLogForCategory(0);
              v117 = OSLogForWFLogLevel(4uLL);
              v118 = v117;
              if (WFCurrentLogLevel(v117, v119) >= 4 && v116 && os_log_type_enabled(v116, v118))
              {
                *buf = 67109376;
                *v220 = v115;
                *&v220[4] = 1024;
                *&v220[6] = v115;
                _os_log_impl(&dword_273ECD000, v116, v118, "Dropping IPv4 configure event as the types didn't change %d -> %d", buf, 0xEu);
              }
            }

            else
            {
              v116 = +[WFMetricsManager sharedManager];
              if (v115 == 2)
              {
                v121 = [WFUserConfigureEvent configureEventWithType:2 new:2 old:v114];
                [v116 processEvent:v121];
              }

              else
              {
                if (v115 == 1)
                {
                  [WFUserConfigureEvent configureEventWithType:1 new:1 old:v114];
                }

                else
                {
                  [WFUserConfigureEvent configureEventWithType:0 new:v115 old:v114];
                }
                v120 = ;
                [v116 processEvent:v120];
              }
            }

            goto LABEL_166;
          }

          v19 = [v11 objectForKey:@"dhcpClientID"];

          if (v19)
          {
            v20 = [WFSettingsIPV4 alloc];
            v21 = [v11 objectForKey:@"dhcpClientID"];
            ipv4AddressManual = [(WFSettingsIPV4 *)v20 initWithMethod:1 addresses:0 subnetMasks:0 router:0 dhcpClientID:v21];
          }

          else
          {
            ipv4AddressManual = +[WFSettingsIPV4 automaticConfig];
          }
        }

        [array addObject:ipv4AddressManual];
LABEL_133:

        goto LABEL_134;
      }

      ipv4AddressManual = [configCopy ipv4AddressManual];
      v59 = [v11 objectForKey:@"ipv4AddressManual"];

      if (v59)
      {
        v60 = [v11 objectForKey:@"ipv4AddressManual"];

        ipv4AddressManual = v60;
      }

      ipv4SubnetMaskManual = [configCopy ipv4SubnetMaskManual];
      v62 = [v11 objectForKey:@"ipv4SubnetMaskManual"];

      if (v62)
      {
        v63 = [v11 objectForKey:@"ipv4SubnetMaskManual"];

        ipv4SubnetMaskManual = v63;
      }

      ipv4RouterAddressManual = [configCopy ipv4RouterAddressManual];
      v65 = [v11 objectForKey:@"ipv4RouterAddressManual"];

      if (v65)
      {
        v66 = [v11 objectForKey:@"ipv4RouterAddressManual"];

        ipv4RouterAddressManual = v66;
      }

      v67 = [WFSettingsIPV4 alloc];
      if (ipv4AddressManual)
      {
        v217 = ipv4AddressManual;
        v193 = [MEMORY[0x277CBEA60] arrayWithObjects:&v217 count:1];
        v68 = v193;
        if (ipv4SubnetMaskManual)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v68 = 0;
        if (ipv4SubnetMaskManual)
        {
LABEL_77:
          v216 = ipv4SubnetMaskManual;
          v69 = [MEMORY[0x277CBEA60] arrayWithObjects:&v216 count:1];
          v70 = [(WFSettingsIPV4 *)v67 initWithMethod:4 addresses:v68 subnetMasks:v69 router:ipv4RouterAddressManual dhcpClientID:0];

          if (!ipv4AddressManual)
          {
            goto LABEL_125;
          }

          goto LABEL_124;
        }
      }

      v70 = [(WFSettingsIPV4 *)v67 initWithMethod:4 addresses:v68 subnetMasks:0 router:ipv4RouterAddressManual dhcpClientID:0];
      if (!ipv4AddressManual)
      {
LABEL_125:
        if (v70)
        {
          [array addObject:v70];
        }

        else
        {
          v104 = WFLogForCategory(0);
          v105 = OSLogForWFLogLevel(1uLL);
          v106 = v105;
          if (WFCurrentLogLevel(v105, v107) && v104 && os_log_type_enabled(v104, v106))
          {
            *buf = 138412290;
            *v220 = v11;
            _os_log_impl(&dword_273ECD000, v104, v106, "Failed to create WFSettingsIPV4 from ipv4Changes %@", buf, 0xCu);
          }
        }

        goto LABEL_133;
      }

LABEL_124:

      goto LABEL_125;
    }

    v207 = 0;
LABEL_219:

    if ([array count])
    {
      detailsContext = [(WFSettingsController *)val detailsContext];
      interface = [detailsContext interface];
      interfaceName = [interface interfaceName];

      v170 = [WFSaveSettingsOperation alloc];
      network = [(WFSettingsController *)val network];
      ssid = [network ssid];
      v173 = [(WFSaveSettingsOperation *)v170 initWithSSID:ssid interfaceName:interfaceName settings:array];

      v174 = WFLogForCategory(0);
      v175 = OSLogForWFLogLevel(4uLL);
      v176 = v175;
      if (WFCurrentLogLevel(v175, v177) >= 4 && v174)
      {
        v178 = v174;
        if (os_log_type_enabled(v178, v176))
        {
          network2 = [(WFSettingsController *)val network];
          ssid2 = [network2 ssid];
          *buf = 138412546;
          *v220 = array;
          *&v220[8] = 2112;
          v221 = ssid2;
          _os_log_impl(&dword_273ECD000, v178, v176, "Saving new network settings %@ for %@", buf, 0x16u);
        }
      }

      [(WFSaveSettingsOperation *)v173 setCurrentNetwork:[(WFSettingsController *)val isCurrentNetwork]];
      objc_initWeak(buf, val);
      v208[0] = MEMORY[0x277D85DD0];
      v208[1] = 3221225472;
      v208[2] = __78__WFSettingsController_networkSettingsViewController_saveConfig_errorHandler___block_invoke;
      v208[3] = &unk_279EBCEA0;
      objc_copyWeak(&v209, buf);
      [(WFSaveSettingsOperation *)v173 setCompletionBlock:v208];
      queue = [(WFSettingsController *)val queue];
      [queue addOperation:v173];

      objc_destroyWeak(&v209);
      objc_destroyWeak(buf);
    }

    else
    {
      interfaceName = WFLogForCategory(0);
      v182 = OSLogForWFLogLevel(4uLL);
      v183 = v182;
      if (WFCurrentLogLevel(v182, v184) >= 4 && interfaceName && os_log_type_enabled(interfaceName, v183))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, interfaceName, v183, "Bailing of saving, no setting changes to persist", buf, 2u);
      }
    }

LABEL_235:

    v165 = array;
    goto LABEL_236;
  }

  v161 = WFLogForCategory(0);
  v162 = OSLogForWFLogLevel(3uLL);
  v163 = v162;
  if (WFCurrentLogLevel(v162, v164) >= 3 && v161)
  {
    v165 = v161;
    if (os_log_type_enabled(v165, v163))
    {
      config6 = [(WFSettingsController *)val config];
      *buf = 138412546;
      *v220 = config6;
      *&v220[8] = 2112;
      v221 = configCopy;
      _os_log_impl(&dword_273ECD000, v165, v163, "No changes between configs (existing %@, new %@), nothing to do.", buf, 0x16u);
    }

    v207 = v165;
LABEL_236:

    v161 = v207;
  }
}

void __78__WFSettingsController_networkSettingsViewController_saveConfig_errorHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained config];
  [WeakRetained _refreshSettingsConfig:v1];
}

- (void)_applySetupAppearances
{
  appearance = [MEMORY[0x277D75B48] appearance];
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [appearance setBackgroundColor:secondarySystemBackgroundColor];
}

- (void)initWithDetailsContext:(NSObject *)a1 appearanceProxy:.cold.1(NSObject **a1)
{
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
  {
    LODWORD(v12) = 136315138;
    *(&v12 + 4) = "[WFSettingsController initWithDetailsContext:appearanceProxy:]";
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v6, v7, "%s: ipmonitor is nil", v8, v9, v10, v11, v12, DWORD2(v12));
  }

  *a1 = v2;
}

- (void)initWithDetailsContext:(NSObject *)a1 appearanceProxy:.cold.2(NSObject **a1)
{
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
  {
    LODWORD(v12) = 136315138;
    *(&v12 + 4) = "[WFSettingsController initWithDetailsContext:appearanceProxy:]";
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v6, v7, "%s: network is nil", v8, v9, v10, v11, v12, DWORD2(v12));
  }

  *a1 = v2;
}

- (void)initWithDetailsContext:(NSObject *)a1 appearanceProxy:.cold.3(NSObject **a1)
{
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
  {
    LODWORD(v12) = 136315138;
    *(&v12 + 4) = "[WFSettingsController initWithDetailsContext:appearanceProxy:]";
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v6, v7, "%s: details context is nil", v8, v9, v10, v11, v12, DWORD2(v12));
  }

  *a1 = v2;
}

@end