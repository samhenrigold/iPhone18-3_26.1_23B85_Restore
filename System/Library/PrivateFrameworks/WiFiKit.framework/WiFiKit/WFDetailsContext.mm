@interface WFDetailsContext
- (BOOL)shouldHideCredentials;
- (NSString)description;
- (NSString)portalURL;
- (WFDetailsContext)initWithNetwork:(id)network profile:(id)profile ipMonitor:(id)monitor interface:(id)interface privateMACConfig:(id)config wifiModeConfig:(id)modeConfig;
- (WFDiagnosticsContext)diagnosticsContext;
- (WFNetworkView)provider;
- (unint64_t)networkOrigin;
- (void)cancel;
- (void)cancelNetworkQualityRun;
- (void)dealloc;
- (void)disableRandomMAC;
- (void)enableRandomMAC:(BOOL)c;
- (void)forget;
- (void)join;
- (void)manage;
- (void)openPortalURL;
- (void)openRecommendationLink;
- (void)overrideWiFiOutrank;
- (void)renewLease;
- (void)runNetworkQualityWithCompletionHandler:(id)handler;
- (void)setAutoJoinEnabled:(BOOL)enabled;
- (void)setAutoLoginEnabled:(BOOL)enabled;
- (void)setIsInSaveDataMode:(BOOL)mode;
- (void)setIsPrivacyProxyEnabled:(BOOL)enabled;
- (void)setWiFiOutranked:(BOOL)outranked;
- (void)setWiFiOutranked:(BOOL)outranked privateCellular:(BOOL)cellular;
- (void)setWiFiOutrankedDev:(BOOL)dev;
- (void)setWifiMode:(int64_t)mode;
- (void)setWifiModeConfig:(id)config;
- (void)updatePrivateAddressMode:(unint64_t)mode;
@end

@implementation WFDetailsContext

- (WFDetailsContext)initWithNetwork:(id)network profile:(id)profile ipMonitor:(id)monitor interface:(id)interface privateMACConfig:(id)config wifiModeConfig:(id)modeConfig
{
  v156 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  profileCopy = profile;
  obj = monitor;
  monitorCopy = monitor;
  interfaceCopy = interface;
  interfaceCopy2 = interface;
  configCopy = config;
  modeConfigCopy = modeConfig;
  v146.receiver = self;
  v146.super_class = WFDetailsContext;
  v17 = [(WFDetailsContext *)&v146 init];

  if (!v17)
  {
    goto LABEL_141;
  }

  if (!networkCopy)
  {
    [WFDetailsContext initWithNetwork:buf profile:? ipMonitor:? interface:? privateMACConfig:? wifiModeConfig:?];
LABEL_139:
    v136 = *buf;
    goto LABEL_140;
  }

  objc_storeStrong(&v17->_network, network);
  v144 = configCopy;
  if (profileCopy)
  {
    objc_storeStrong(&v17->_profile, profile);
    v17->_knownNetwork = 1;
    v19 = interfaceCopy2;
    v18 = monitorCopy;
    if ([profileCopy autoJoinConfigurable])
    {
      v20 = WFLogForCategory(0);
      v21 = OSLogForWFLogLevel(3uLL);
      v22 = v21;
      if (WFCurrentLogLevel(v21, v23) >= 3 && v20)
      {
        v24 = v20;
        if (os_log_type_enabled(v24, v22))
        {
          ssid = [networkCopy ssid];
          *buf = 138412290;
          *&buf[4] = ssid;
          _os_log_impl(&dword_273ECD000, v24, v22, "'%@' is autoJoinConfigurable", buf, 0xCu);
        }
      }

      v17->_requestedFields |= 0x20uLL;
    }

    if ([profileCopy autoLoginConfigurable])
    {
      v26 = WFLogForCategory(0);
      v27 = OSLogForWFLogLevel(3uLL);
      v28 = v27;
      if (WFCurrentLogLevel(v27, v29) >= 3 && v26)
      {
        v30 = v26;
        if (os_log_type_enabled(v30, v28))
        {
          ssid2 = [networkCopy ssid];
          *buf = 138412290;
          *&buf[4] = ssid2;
          _os_log_impl(&dword_273ECD000, v30, v28, "'%@' is autoLoginConfigurable", buf, 0xCu);
        }
      }

      v17->_requestedFields |= 0x40uLL;
    }

    if ([profileCopy saveDataModeConfigurable])
    {
      v32 = WFLogForCategory(0);
      v33 = OSLogForWFLogLevel(3uLL);
      v34 = v33;
      if (WFCurrentLogLevel(v33, v35) >= 3 && v32)
      {
        v36 = v32;
        if (os_log_type_enabled(v36, v34))
        {
          ssid3 = [networkCopy ssid];
          *buf = 138412290;
          *&buf[4] = ssid3;
          _os_log_impl(&dword_273ECD000, v36, v34, "'%@' is saveDataModeConfigurable", buf, 0xCu);
        }
      }

      v17->_requestedFields |= 0x200uLL;
    }

    networkQualityVisible = [profileCopy networkQualityVisible];
    v39 = WFLogForCategory(0);
    v40 = OSLogForWFLogLevel(3uLL);
    v41 = v40;
    v44 = WFCurrentLogLevel(v40, v42) > 2 && v39 != 0;
    if (networkQualityVisible)
    {
      if (v44)
      {
        networkQualityVisible = v39;
        if (os_log_type_enabled(networkQualityVisible, v41))
        {
          ssid4 = [networkCopy ssid];
          *buf = 138412290;
          *&buf[4] = ssid4;
          _os_log_impl(&dword_273ECD000, networkQualityVisible, v41, "NetQuality: '%@' is networkQualityVisible", buf, 0xCu);
        }
      }

      v17->_requestedFields |= 0x800uLL;
    }

    else
    {
      if (v44)
      {
        networkQualityVisible = v39;
        if (os_log_type_enabled(networkQualityVisible, v41))
        {
          ssid5 = [networkCopy ssid];
          *buf = 138412290;
          *&buf[4] = ssid5;
          _os_log_impl(&dword_273ECD000, networkQualityVisible, v41, "NetQuality: %@ is NOT networkQualityVisible", buf, 0xCu);
        }
      }
    }

    configCopy = v144;
    if ([profileCopy forgetable])
    {
      v51 = WFLogForCategory(0);
      networkQualityVisible = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel(networkQualityVisible, v52) >= 3 && v51)
      {
        v53 = v51;
        if (os_log_type_enabled(v53, networkQualityVisible))
        {
          ssid6 = [networkCopy ssid];
          *buf = 138412290;
          *&buf[4] = ssid6;
          _os_log_impl(&dword_273ECD000, v53, networkQualityVisible, "'%@' is forgettable", buf, 0xCu);

          configCopy = v144;
        }
      }

      v17->_requestedFields |= 0x10uLL;
    }
  }

  else
  {
    v46 = WFLogForCategory(0);
    networkQualityVisible = OSLogForWFLogLevel(3uLL);
    v19 = interfaceCopy2;
    v18 = monitorCopy;
    if (WFCurrentLogLevel(networkQualityVisible, v47) >= 3 && v46)
    {
      v48 = v46;
      if (os_log_type_enabled(v48, networkQualityVisible))
      {
        ssid7 = [networkCopy ssid];
        *buf = 136315394;
        *&buf[4] = "[WFDetailsContext initWithNetwork:profile:ipMonitor:interface:privateMACConfig:wifiModeConfig:]";
        v148 = 2112;
        *v149 = ssid7;
        _os_log_impl(&dword_273ECD000, v48, networkQualityVisible, "%s: not a known network %@, nil profile", buf, 0x16u);

        configCopy = v144;
      }
    }

    v17->_knownNetwork = 0;
  }

  if (_os_feature_enabled_impl())
  {
    if ([profileCopy privateMACAddressModeConfigurationProfileSetting] == 1)
    {
      cInterface = [(WFInterface *)v17->_interface cInterface];
      isDeviceSupervised = [cInterface isDeviceSupervised];
      if ((isDeviceSupervised & 1) != 0 || ([(WFInterface *)v17->_interface cInterface], networkQualityVisible = objc_claimAutoreleasedReturnValue(), [networkQualityVisible isNetworkManagedByMDM:profileCopy]))
      {
        cInterface2 = [(WFInterface *)v17->_interface cInterface];
        isRandomMACAddressEnabled = [cInterface2 privateMACAddressModeForNetworkProfile:profileCopy] != 1;

        if (isDeviceSupervised)
        {
          goto LABEL_67;
        }
      }

      else
      {
        isRandomMACAddressEnabled = 1;
      }

LABEL_67:
      configCopy = v144;
      goto LABEL_68;
    }

    goto LABEL_64;
  }

  if (![networkCopy isPrivateMACDisabledByProfile] || !objc_msgSend(networkCopy, "isSupervised"))
  {
LABEL_64:
    isRandomMACAddressEnabled = 1;
    goto LABEL_68;
  }

  isRandomMACAddressEnabled = [networkCopy isRandomMACAddressEnabled];
LABEL_68:
  v17->_randomMACAddressConfigurable = isRandomMACAddressEnabled;
  isAutoJoinDisabled = [profileCopy isAutoJoinDisabled];
  v17->_autoJoinEnabled = isAutoJoinDisabled ^ 1;
  if (((isAutoJoinDisabled ^ 1) & 1) == 0)
  {
    hasDisabledUntilDate = [profileCopy hasDisabledUntilDate];

    if (hasDisabledUntilDate)
    {
      v61 = WFLogForCategory(0);
      v62 = OSLogForWFLogLevel(3uLL);
      v63 = v62;
      if (WFCurrentLogLevel(v62, v64) >= 3 && v61)
      {
        v65 = v61;
        if (os_log_type_enabled(v65, v63))
        {
          sSID = [profileCopy SSID];
          hasDisabledUntilDate2 = [profileCopy hasDisabledUntilDate];
          *buf = 136315650;
          *&buf[4] = "[WFDetailsContext initWithNetwork:profile:ipMonitor:interface:privateMACConfig:wifiModeConfig:]";
          v148 = 2112;
          *v149 = sSID;
          *&v149[8] = 2112;
          v150 = hasDisabledUntilDate2;
          _os_log_impl(&dword_273ECD000, v65, v63, "%s: %@ autojoin temporarily disabled until %@, overriding UI switch to show enabled", buf, 0x20u);
        }

        configCopy = v144;
      }

      v17->_autoJoinEnabled = 1;
    }
  }

  v17->_autoLoginEnabled = [profileCopy bypassCaptive] ^ 1;
  if ([profileCopy lowDataMode] == 1)
  {
    v68 = 1;
  }

  else if ([profileCopy isPersonalHotspot])
  {
    v68 = [profileCopy lowDataMode] == 0;
  }

  else
  {
    v68 = 0;
  }

  v17->_isInSaveDataMode = v68;
  v17->_isPrivacyProxyEnabled = [profileCopy isPrivacyProxyEnabled];
  if (MEMORY[0x282239978])
  {
    v17->_greenTeaLogger = ct_green_tea_logger_create();
  }

  v69 = WFLogForCategory(0);
  v70 = OSLogForWFLogLevel(3uLL);
  v71 = v70;
  if (WFCurrentLogLevel(v70, v72) >= 3 && v69)
  {
    v73 = v69;
    if (os_log_type_enabled(v73, v71))
    {
      hardwareMACAddress = [configCopy hardwareMACAddress];
      *buf = 138412290;
      *&buf[4] = hardwareMACAddress;
      _os_log_impl(&dword_273ECD000, v73, v71, "hardwareMAC is '%@'", buf, 0xCu);
    }
  }

  hardwareMACAddress2 = [configCopy hardwareMACAddress];
  formattedWiFiAddress = [hardwareMACAddress2 formattedWiFiAddress];
  hardwareMACAddress = v17->_hardwareMACAddress;
  v17->_hardwareMACAddress = formattedWiFiAddress;

  if (v17->_greenTeaLogger)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];

    v80 = getCTGreenTeaOsLogHandle();
    v81 = v80;
    if (v80)
    {
      v82 = v80;
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        v83 = v17->_hardwareMACAddress;
        *buf = 138413058;
        *&buf[4] = processName;
        v148 = 2080;
        *v149 = "com.apple.wifikit";
        *&v149[8] = 2112;
        v150 = processName;
        *v151 = 2112;
        *&v151[2] = v83;
        _os_log_impl(&dword_273ECD000, v82, OS_LOG_TYPE_INFO, "<%@>[%s][%@]:WLAN hardware MAC address..%@", buf, 0x2Au);
      }
    }
  }

  randomMACAddress = [configCopy randomMACAddress];
  formattedWiFiAddress2 = [randomMACAddress formattedWiFiAddress];
  randomMACAddress = v17->_randomMACAddress;
  v17->_randomMACAddress = formattedWiFiAddress2;

  if (v17->_greenTeaLogger)
  {
    processInfo2 = [MEMORY[0x277CCAC38] processInfo];
    processName2 = [processInfo2 processName];

    v89 = getCTGreenTeaOsLogHandle();
    v90 = v89;
    if (v89)
    {
      v91 = v89;
      if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
      {
        v92 = v17->_randomMACAddress;
        *buf = 138413058;
        *&buf[4] = processName2;
        v148 = 2080;
        *v149 = "com.apple.wifikit";
        *&v149[8] = 2112;
        v150 = processName2;
        *v151 = 2112;
        *&v151[2] = v92;
        _os_log_impl(&dword_273ECD000, v91, OS_LOG_TYPE_INFO, "<%@>[%s][%@]:WLAN random MAC address..%@", buf, 0x2Au);
      }
    }
  }

  v17->_randomMACFeatureEnabled = [configCopy isPrivateAddressSupported];
  v93 = WFLogForCategory(0);
  v94 = OSLogForWFLogLevel(3uLL);
  v95 = v94;
  if (WFCurrentLogLevel(v94, v96) >= 3 && v93)
  {
    v97 = v93;
    if (os_log_type_enabled(v97, v95))
    {
      isConnectedWithHardwareAddress = [configCopy isConnectedWithHardwareAddress];
      *buf = 67109120;
      *&buf[4] = isConnectedWithHardwareAddress;
      _os_log_impl(&dword_273ECD000, v97, v95, "Network connected with hardware Address: %d", buf, 8u);
    }
  }

  v17->_connectedWithHardwareAddress = [configCopy isConnectedWithHardwareAddress];
  if (v17->_randomMACFeatureEnabled)
  {
    v17->_requestedFields |= 0x400uLL;
  }

  privateAddressMode = [configCopy privateAddressMode];
  v17->_privateAddressMode = privateAddressMode;
  v17->_randomMACAddressDisabled = privateAddressMode != 2;
  v17->_randomMACSwitchOn = privateAddressMode == 2;
  v100 = WFLogForCategory(0);
  v101 = OSLogForWFLogLevel(1uLL);
  v102 = v101;
  if (WFCurrentLogLevel(v101, v103) && v100)
  {
    v104 = v100;
    if (os_log_type_enabled(v104, v102))
    {
      ssid8 = [networkCopy ssid];
      autoJoinEnabled = v17->_autoJoinEnabled;
      autoLoginEnabled = v17->_autoLoginEnabled;
      isInSaveDataMode = v17->_isInSaveDataMode;
      isPrivacyProxyEnabled = v17->_isPrivacyProxyEnabled;
      privateAddressMode = v17->_privateAddressMode;
      randomMACAddress2 = [networkCopy randomMACAddress];
      randomMACAddressConfigurable = v17->_randomMACAddressConfigurable;
      *buf = 138414082;
      *&buf[4] = ssid8;
      v148 = 1024;
      *v149 = autoJoinEnabled;
      *&v149[4] = 1024;
      *&v149[6] = autoLoginEnabled;
      LOWORD(v150) = 1024;
      *(&v150 + 2) = isInSaveDataMode;
      v19 = interfaceCopy2;
      v18 = monitorCopy;
      HIWORD(v150) = 1024;
      *v151 = isPrivacyProxyEnabled;
      *&v151[4] = 2048;
      *&v151[6] = privateAddressMode;
      v152 = 2112;
      v153 = randomMACAddress2;
      v154 = 1024;
      v155 = randomMACAddressConfigurable;
      _os_log_impl(&dword_273ECD000, v104, v102, "%@ - autoJoinEnabled=%d autoLoginEnabled=%d isInSaveDataMode=%d isPrivacyProxyEnabled=%d _privateAddressMode=%ld randomMAC='%@' _randomMACAddressConfigurable=%d", buf, 0x3Eu);
    }
  }

  if (!v18)
  {
    [WFDetailsContext initWithNetwork:buf profile:? ipMonitor:? interface:? privateMACConfig:? wifiModeConfig:?];
    v136 = *buf;
    configCopy = v144;
LABEL_140:

LABEL_141:
    v17 = 0;
    v19 = interfaceCopy2;
    v18 = monitorCopy;
    goto LABEL_135;
  }

  objc_storeStrong(&v17->_ipMonitor, obj);
  objc_storeStrong(&v17->_interface, interfaceCopy);
  configCopy = v144;
  if (!v19)
  {
    [WFDetailsContext initWithNetwork:buf profile:? ipMonitor:? interface:? privateMACConfig:? wifiModeConfig:?];
    goto LABEL_139;
  }

  v17->_supportsAirportManagement = 0;
  v17->_wifiModeConfigurable = [modeConfigCopy isWifiModeConfigurable];
  v17->_wifiMode = [modeConfigCopy wifiMode];
  mEMORY[0x277D29518] = [MEMORY[0x277D29518] sharedInstance];
  v17->_demoModeEnabled = [mEMORY[0x277D29518] isStoreDemoModeEnabled:0];

  if (v17->_demoModeEnabled)
  {
    v112 = WFLogForCategory(0);
    v113 = OSLogForWFLogLevel(1uLL);
    v114 = v113;
    if (WFCurrentLogLevel(v113, v115) && v112)
    {
      v116 = v112;
      if (os_log_type_enabled(v116, v114))
      {
        *buf = 136315138;
        *&buf[4] = "[WFDetailsContext initWithNetwork:profile:ipMonitor:interface:privateMACConfig:wifiModeConfig:]";
        _os_log_impl(&dword_273ECD000, v116, v114, "%s: demo mode enabled", buf, 0xCu);
      }
    }
  }

  credentialsTappedHandler = v17->_credentialsTappedHandler;
  v17->_credentialsTappedHandler = &__block_literal_global_3;

  v118 = [WFPortalContext alloc];
  captiveProfile = [profileCopy captiveProfile];
  scanResult = [networkCopy scanResult];
  venueURLList = [scanResult venueURLList];
  v122 = [(WFPortalContext *)v118 initWithCaptiveProfile:captiveProfile anqpVenueURLs:venueURLList];
  portalContext = v17->_portalContext;
  v17->_portalContext = v122;

  if (objc_opt_class())
  {
    mEMORY[0x277D243A0] = [MEMORY[0x277D243A0] shared];
    enabled = [mEMORY[0x277D243A0] enabled];
  }

  else
  {
    enabled = 0;
  }

  v126 = WFLogForCategory(0);
  v127 = OSLogForWFLogLevel(3uLL);
  v128 = v127;
  if (WFCurrentLogLevel(v127, v129) >= 3 && v126)
  {
    v130 = v126;
    if (os_log_type_enabled(v130, v128))
    {
      v131 = "disabled";
      if (enabled)
      {
        v131 = "enabled";
      }

      *buf = 136315394;
      *&buf[4] = "[WFDetailsContext initWithNetwork:profile:ipMonitor:interface:privateMACConfig:wifiModeConfig:]";
      v148 = 2080;
      *v149 = v131;
      _os_log_impl(&dword_273ECD000, v130, v128, "%s: Lockdown mode is %s", buf, 0x16u);
    }
  }

  scanResult2 = [networkCopy scanResult];
  isAllowedInLockdownMode = [scanResult2 isAllowedInLockdownMode];

  v17->_autoJoinConfigurable = enabled && (isAllowedInLockdownMode & 1) == 0;
LABEL_135:
  v134 = v17;

  return v134;
}

void __96__WFDetailsContext_initWithNetwork_profile_ipMonitor_interface_privateMACConfig_wifiModeConfig___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 12;
  }

  else
  {
    if (a2 != 2)
    {
      return;
    }

    v2 = 13;
  }

  v4 = +[WFMetricsManager sharedManager];
  v3 = [WFUserEvent eventWithType:v2];
  [v4 processEvent:v3];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  if (MEMORY[0x282239980])
  {
    ct_green_tea_logger_destroy();
  }

  self->_greenTeaLogger = 0;
  v4.receiver = self;
  v4.super_class = WFDetailsContext;
  [(WFDetailsContext *)&v4 dealloc];
}

- (void)setAutoJoinEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  autoJoinHandler = [(WFDetailsContext *)self autoJoinHandler];

  if (autoJoinHandler)
  {
    autoJoinHandler2 = [(WFDetailsContext *)self autoJoinHandler];
    autoJoinHandler2[2](autoJoinHandler2, enabledCopy);
  }

  self->_autoJoinEnabled = enabledCopy;
}

- (void)setWifiMode:(int64_t)mode
{
  wiFiModeChangedHandler = [(WFDetailsContext *)self WiFiModeChangedHandler];

  if (wiFiModeChangedHandler)
  {
    wiFiModeChangedHandler2 = [(WFDetailsContext *)self WiFiModeChangedHandler];
    wiFiModeChangedHandler2[2](wiFiModeChangedHandler2, mode);
  }

  self->_wifiMode = mode;
}

- (void)setWifiModeConfig:(id)config
{
  configCopy = config;
  self->_wifiModeConfigurable = [configCopy isWifiModeConfigurable];
  wifiMode = [configCopy wifiMode];

  self->_wifiMode = wifiMode;
}

- (void)setAutoLoginEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  autoLoginHandler = [(WFDetailsContext *)self autoLoginHandler];

  if (autoLoginHandler)
  {
    autoLoginHandler2 = [(WFDetailsContext *)self autoLoginHandler];
    autoLoginHandler2[2](autoLoginHandler2, enabledCopy);
  }

  self->_autoLoginEnabled = enabledCopy;
}

- (void)setIsInSaveDataMode:(BOOL)mode
{
  modeCopy = mode;
  lowDataModeHandler = [(WFDetailsContext *)self lowDataModeHandler];

  if (lowDataModeHandler)
  {
    lowDataModeHandler2 = [(WFDetailsContext *)self lowDataModeHandler];
    lowDataModeHandler2[2](lowDataModeHandler2, modeCopy);
  }

  self->_isInSaveDataMode = modeCopy;
}

- (void)setWiFiOutranked:(BOOL)outranked
{
  self->_WiFiOutranked = outranked;
  v3 = 4096;
  if (!outranked)
  {
    v3 = 0;
  }

  self->_requestedFields = self->_requestedFields & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setWiFiOutranked:(BOOL)outranked privateCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  outrankedCopy = outranked;
  v21 = *MEMORY[0x277D85DE8];
  if (cellular)
  {
    self->_WiFiOutranked = outranked;
    requestedFields = self->_requestedFields;
    if (outranked)
    {
      v8 = requestedFields | 0x4000;
    }

    else
    {
      v8 = requestedFields & 0xFFFFFFFFFFFFBFFFLL;
    }

    self->_requestedFields = v8;
  }

  else
  {
    [(WFDetailsContext *)self setWiFiOutranked:outranked];
  }

  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(3uLL);
  v11 = v10;
  if (WFCurrentLogLevel(v10, v12) >= 3 && v9)
  {
    v13 = v9;
    if (os_log_type_enabled(v13, v11))
    {
      network = [(WFDetailsContext *)self network];
      ssid = [network ssid];
      v16[0] = 67109634;
      v16[1] = outrankedCopy;
      v17 = 1024;
      v18 = cellularCopy;
      v19 = 2112;
      v20 = ssid;
      _os_log_impl(&dword_273ECD000, v13, v11, "setting WiFiOutranked=%d privateCellular=%d for %@", v16, 0x18u);
    }
  }
}

- (void)setWiFiOutrankedDev:(BOOL)dev
{
  v16 = *MEMORY[0x277D85DE8];
  self->_WiFiOutrankedDev = dev;
  v4 = 0x2000;
  if (!dev)
  {
    v4 = 0;
  }

  self->_requestedFields = self->_requestedFields & 0xFFFFFFFFFFFFDFFFLL | v4;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      network = [(WFDetailsContext *)self network];
      ssid = [network ssid];
      v12 = 134218242;
      v13 = 0x2000;
      v14 = 2112;
      v15 = ssid;
      _os_log_impl(&dword_273ECD000, v9, v7, "setting WiFiOutrankedDev=%ld for %@", &v12, 0x16u);
    }
  }
}

- (void)setIsPrivacyProxyEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  privacyProxyHandler = [(WFDetailsContext *)self privacyProxyHandler];

  if (privacyProxyHandler)
  {
    privacyProxyHandler2 = [(WFDetailsContext *)self privacyProxyHandler];
    privacyProxyHandler2[2](privacyProxyHandler2, enabledCopy);
  }

  self->_isPrivacyProxyEnabled = enabledCopy;
}

- (void)runNetworkQualityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v5 = objc_alloc_init(MEMORY[0x277D2C9A0]);
  ipMonitor = [(WFDetailsContext *)self ipMonitor];
  interfaceName = [ipMonitor interfaceName];
  [v5 setNetworkInterfaceName:interfaceName];

  v8 = objc_alloc(MEMORY[0x277D2C990]);
  v9 = objc_alloc_init(MEMORY[0x277D2C9A0]);
  v10 = [v8 initWithConfiguration:v9];
  [(WFDetailsContext *)self setNetworkQualityAssessment:v10];

  networkQualityAssessment = [(WFDetailsContext *)self networkQualityAssessment];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__WFDetailsContext_runNetworkQualityWithCompletionHandler___block_invoke;
  v13[3] = &unk_279EBDC68;
  v15 = v16;
  v13[4] = self;
  v12 = handlerCopy;
  v14 = v12;
  [networkQualityAssessment runWithCompletionHandler:v13];

  _Block_object_dispose(v16, 8);
}

void __59__WFDetailsContext_runNetworkQualityWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 downlinkResponsiveness];
  v8 = [v7 value];

  if (v8)
  {
    v9 = [v5 downlinkResponsiveness];
    v10 = [v9 value];
    *(*(*(a1 + 48) + 8) + 24) = [v10 unsignedLongValue];

    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(3uLL);
    v13 = v12;
    if (WFCurrentLogLevel(v12, v14) >= 3 && v11 && os_log_type_enabled(v11, v13))
    {
      v15 = *(*(*(a1 + 48) + 8) + 24);
      v23 = 136315394;
      v24 = "[WFDetailsContext runNetworkQualityWithCompletionHandler:]_block_invoke";
      v25 = 2048;
      v26 = v15;
      _os_log_impl(&dword_273ECD000, v11, v13, "NetQuality: %s: Got responsiveness %lu", &v23, 0x16u);
    }
  }

  v16 = WFLogForCategory(0);
  v17 = OSLogForWFLogLevel(3uLL);
  v18 = v17;
  if (WFCurrentLogLevel(v17, v19) >= 3 && v16 && os_log_type_enabled(v16, v18))
  {
    v23 = 136315394;
    v24 = "[WFDetailsContext runNetworkQualityWithCompletionHandler:]_block_invoke";
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_273ECD000, v16, v18, "NetQuality: %s: Completed! Error: %@", &v23, 0x16u);
  }

  if (v6)
  {
    v20 = 0;
  }

  else
  {
    v20 = [MEMORY[0x277CBEAA8] now];
    v21 = [*(a1 + 32) networkQualityHandler];

    if (v21)
    {
      v22 = [*(a1 + 32) networkQualityHandler];
      (v22)[2](v22, v20, *(*(*(a1 + 48) + 8) + 24));
    }
  }

  [*(a1 + 32) setNetworkQualityAssessment:0];
  (*(*(a1 + 40) + 16))(*(*(*(a1 + 48) + 8) + 24));
}

- (void)cancelNetworkQualityRun
{
  networkQualityAssessment = [(WFDetailsContext *)self networkQualityAssessment];

  if (networkQualityAssessment)
  {
    networkQualityAssessment2 = [(WFDetailsContext *)self networkQualityAssessment];
    [networkQualityAssessment2 cancel];

    [(WFDetailsContext *)self setNetworkQualityAssessment:0];
  }
}

- (void)forget
{
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    *v8 = 0;
    _os_log_impl(&dword_273ECD000, v3, v5, "User tapped forget in network details", v8, 2u);
  }

  actionHandler = [(WFDetailsContext *)self actionHandler];
  actionHandler[2](actionHandler, 0);
}

- (void)openRecommendationLink
{
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    *v8 = 0;
    _os_log_impl(&dword_273ECD000, v3, v5, "User tapped recommendation link in network details", v8, 2u);
  }

  actionHandler = [(WFDetailsContext *)self actionHandler];
  actionHandler[2](actionHandler, 4);
}

- (void)renewLease
{
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    *v8 = 0;
    _os_log_impl(&dword_273ECD000, v3, v5, "User tapped remew lease in network details", v8, 2u);
  }

  actionHandler = [(WFDetailsContext *)self actionHandler];
  actionHandler[2](actionHandler, 3);
}

- (void)join
{
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    *v8 = 0;
    _os_log_impl(&dword_273ECD000, v3, v5, "User tapped join network in details", v8, 2u);
  }

  actionHandler = [(WFDetailsContext *)self actionHandler];
  actionHandler[2](actionHandler, 2);
}

- (void)manage
{
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    *v8 = 0;
    _os_log_impl(&dword_273ECD000, v3, v5, "User tapped manage network in details", v8, 2u);
  }

  actionHandler = [(WFDetailsContext *)self actionHandler];
  actionHandler[2](actionHandler, 1);
}

- (void)disableRandomMAC
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3)
  {
    v7 = v3;
    if (os_log_type_enabled(v7, v5))
    {
      network = [(WFDetailsContext *)self network];
      ssid = [network ssid];
      v12 = 138412290;
      v13 = ssid;
      _os_log_impl(&dword_273ECD000, v7, v5, "user disabled using random mac address for '%@'", &v12, 0xCu);
    }
  }

  privateMACHandler = [(WFDetailsContext *)self privateMACHandler];

  if (privateMACHandler)
  {
    privateMACHandler2 = [(WFDetailsContext *)self privateMACHandler];
    privateMACHandler2[2](privateMACHandler2, 3);
  }
}

- (void)enableRandomMAC:(BOOL)c
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4)
  {
    v8 = v4;
    if (os_log_type_enabled(v8, v6))
    {
      network = [(WFDetailsContext *)self network];
      ssid = [network ssid];
      v13 = 138412290;
      v14 = ssid;
      _os_log_impl(&dword_273ECD000, v8, v6, "user enabled using random mac address for '%@'", &v13, 0xCu);
    }
  }

  privateMACHandler = [(WFDetailsContext *)self privateMACHandler];

  if (privateMACHandler)
  {
    privateMACHandler2 = [(WFDetailsContext *)self privateMACHandler];
    privateMACHandler2[2](privateMACHandler2, 2);
  }
}

- (void)updatePrivateAddressMode:(unint64_t)mode
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v11 = 134217984;
    modeCopy = mode;
    _os_log_impl(&dword_273ECD000, v5, v7, "User tried to set private address mode to : %ld", &v11, 0xCu);
  }

  privateMACHandler = [(WFDetailsContext *)self privateMACHandler];

  if (privateMACHandler)
  {
    privateMACHandler2 = [(WFDetailsContext *)self privateMACHandler];
    privateMACHandler2[2](privateMACHandler2, mode);
  }

  [(WFDetailsContext *)self setPrivateAddressMode:mode];
}

- (BOOL)shouldHideCredentials
{
  v41 = *MEMORY[0x277D85DE8];
  profile = [(WFDetailsContext *)self profile];
  addReason = [profile addReason];

  profile2 = [(WFDetailsContext *)self profile];
  addReason2 = [profile2 addReason];

  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7)
  {
    v11 = v7;
    if (os_log_type_enabled(v11, v9))
    {
      network = [(WFDetailsContext *)self network];
      ssid = [network ssid];
      network2 = [(WFDetailsContext *)self network];
      v21 = [network2 securityMode] == 0;
      network3 = [(WFDetailsContext *)self network];
      isSupervised = [network3 isSupervised];
      profile3 = [(WFDetailsContext *)self profile];
      *buf = 136316930;
      v26 = "[WFDetailsContext shouldHideCredentials]";
      v27 = 2112;
      v28 = ssid;
      v29 = 1024;
      v30 = v21;
      v31 = 1024;
      v32 = isSupervised;
      v33 = 1024;
      isProfileBased = [profile3 isProfileBased];
      v35 = 1024;
      v36 = addReason2 == 11;
      v37 = 1024;
      demoModeEnabled = [(WFDetailsContext *)self demoModeEnabled];
      v39 = 1024;
      v40 = addReason == 10;
      _os_log_impl(&dword_273ECD000, v11, v9, "%s: Network %@ is open:%d supervised:%d profile-based:%d shared:%d demo-mode-enabled:%d carrier-based:%d", buf, 0x3Au);
    }
  }

  network4 = [(WFDetailsContext *)self network];
  if ([network4 securityMode])
  {
    network5 = [(WFDetailsContext *)self network];
    if ([network5 isSupervised])
    {
      v17 = 1;
    }

    else
    {
      profile4 = [(WFDetailsContext *)self profile];
      v17 = 1;
      if (([profile4 isProfileBased] & 1) == 0 && addReason2 != 11)
      {
        demoModeEnabled2 = [(WFDetailsContext *)self demoModeEnabled];
        v17 = addReason == 10 || demoModeEnabled2;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (WFDiagnosticsContext)diagnosticsContext
{
  diagnosticsContext = self->_diagnosticsContext;
  if (diagnosticsContext)
  {
    self->_diagnosticsContext = 0;
  }

  v4 = [WFNetworkProfile alloc];
  profile = [(WFDetailsContext *)self profile];
  v6 = [(WFNetworkProfile *)v4 initWithCoreWiFiProfile:profile];

  v7 = [WFDiagnosticsContext alloc];
  network = [(WFDetailsContext *)self network];
  v9 = [(WFDiagnosticsContext *)v7 initWithNetwork:network profile:v6 detailsContext:self];
  v10 = self->_diagnosticsContext;
  self->_diagnosticsContext = v9;

  v11 = self->_diagnosticsContext;
  v12 = v11;

  return v11;
}

- (void)cancel
{
  networkQualityAssessment = [(WFDetailsContext *)self networkQualityAssessment];

  if (networkQualityAssessment)
  {
    networkQualityAssessment2 = [(WFDetailsContext *)self networkQualityAssessment];
    [networkQualityAssessment2 cancel];

    [(WFDetailsContext *)self setNetworkQualityAssessment:0];
  }

  diagnosticsContext = self->_diagnosticsContext;
  self->_diagnosticsContext = 0;
}

- (void)overrideWiFiOutrank
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3)
  {
    v7 = v3;
    if (os_log_type_enabled(v7, v5))
    {
      network = [(WFDetailsContext *)self network];
      ssid = [network ssid];
      v11 = 138412290;
      v12 = ssid;
      _os_log_impl(&dword_273ECD000, v7, v5, "User is overriding WiFi outrank for network='%@'", &v11, 0xCu);
    }
  }

  [(WFDetailsContext *)self setWiFiOutranked:0];
  actionHandler = [(WFDetailsContext *)self actionHandler];
  actionHandler[2](actionHandler, 5);
}

- (unint64_t)networkOrigin
{
  profile = [(WFDetailsContext *)self profile];
  addReason = [profile addReason];

  if (addReason == 10)
  {
    return 1;
  }

  else
  {
    return 2 * (addReason == 9);
  }
}

- (NSString)portalURL
{
  portalContext = [(WFDetailsContext *)self portalContext];
  portalHostnameForDisplay = [portalContext portalHostnameForDisplay];

  return portalHostnameForDisplay;
}

- (void)openPortalURL
{
  actionHandler = [(WFDetailsContext *)self actionHandler];
  actionHandler[2](actionHandler, 6);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  network = [(WFDetailsContext *)self network];
  ssid = [network ssid];
  v8 = [v3 stringWithFormat:@"<%@: %p SSID: %@ Current: %d Known: %d Context: %ld>", v5, self, ssid, -[WFDetailsContext isCurrent](self, "isCurrent"), -[WFDetailsContext isKnownNetwork](self, "isKnownNetwork"), -[WFDetailsContext entryContext](self, "entryContext")];

  return v8;
}

- (WFNetworkView)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (void)initWithNetwork:(NSObject *)a1 profile:ipMonitor:interface:privateMACConfig:wifiModeConfig:.cold.1(NSObject **a1)
{
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
  {
    LODWORD(v12) = 136315138;
    *(&v12 + 4) = "[WFDetailsContext initWithNetwork:profile:ipMonitor:interface:privateMACConfig:wifiModeConfig:]";
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v6, v7, "%s: nil interface", v8, v9, v10, v11, v12, DWORD2(v12));
  }

  *a1 = v2;
}

- (void)initWithNetwork:(NSObject *)a1 profile:ipMonitor:interface:privateMACConfig:wifiModeConfig:.cold.2(NSObject **a1)
{
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
  {
    LODWORD(v12) = 136315138;
    *(&v12 + 4) = "[WFDetailsContext initWithNetwork:profile:ipMonitor:interface:privateMACConfig:wifiModeConfig:]";
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v6, v7, "%s: nil ipmonitor", v8, v9, v10, v11, v12, DWORD2(v12));
  }

  *a1 = v2;
}

- (void)initWithNetwork:(NSObject *)a1 profile:ipMonitor:interface:privateMACConfig:wifiModeConfig:.cold.3(NSObject **a1)
{
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
  {
    LODWORD(v12) = 136315138;
    *(&v12 + 4) = "[WFDetailsContext initWithNetwork:profile:ipMonitor:interface:privateMACConfig:wifiModeConfig:]";
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v6, v7, "%s: nil network", v8, v9, v10, v11, v12, DWORD2(v12));
  }

  *a1 = v2;
}

@end