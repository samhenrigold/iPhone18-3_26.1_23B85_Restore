@interface WFClient
+ (WFClient)sharedInstance;
- (BOOL)_updateWiFiUIFlagsState;
- (BOOL)hasShownSBPickerDontAsk;
- (NSString)hardwareMACAddress;
- (OS_dispatch_queue)stateMonitorQueue;
- (WFClient)init;
- (WFClient)initWithCallbackRunLoop:(id)loop;
- (WFInterface)interface;
- (id)newRandomMACAddressForSSID:(id)d;
- (int64_t)_askToJoinModeFromCoreWiFiAskToJoinMode:(int64_t)mode;
- (int64_t)_coreWiFiAskToJoinModeFromAskToJoinMode:(int64_t)mode;
- (int64_t)_coreWiFiHotspotJoinOptionFromAutoHotspotMode:(int64_t)mode;
- (int64_t)_hotspotJoinOptionFromCoreWiFiAutoHotspotMode:(int64_t)mode;
- (void)_askToJoinNotification:(unsigned int)notification;
- (void)_joinRecommendationWithID:(unsigned int)d network:(__WiFiNetwork *)network;
- (void)_logWiFiManagerPropertyChange:(id)change value:(BOOL)value;
- (void)_managedConfigurationDidChange:(id)change;
- (void)_notifyWiFiPropertyChanged:(id)changed value:(id)value;
- (void)_registerForCellularRankingStateNotification;
- (void)_scheduleCallbacksWithManager:(__WiFiManagerClient *)manager runLoop:(id)loop;
- (void)_setupDefaultInterfaceWithManager:(__WiFiManagerClient *)manager coreWiFiInterface:(id)interface;
- (void)_startMonitoringCoreWiFiEventsWithInterface:(id)interface;
- (void)_trustNotificationWithID:(unsigned int)d network:(__WiFiNetwork *)network data:(id)data;
- (void)_unscheduleCallbacksWithManager:(__WiFiManagerClient *)manager;
- (void)_updateAirplaneModeStickiness;
- (void)_updateCellularRankingState;
- (void)_updateManagedAppleIDState;
- (void)_updateNetworkRestrictionActive;
- (void)_updateOSSpecificAttributes:(id)attributes;
- (void)_updatePowerModificationDisableState;
- (void)_updatePowerState;
- (void)_updateWPA3Properties:(__WiFiManagerClient *)properties;
- (void)_updateWithDeviceAttachment:(__WiFiDeviceClient *)attachment;
- (void)_userAutoJoinStateDidChange:(BOOL)change info:(id)info;
- (void)asyncMISDiscoveryState:(id)state;
- (void)asyncMISState:(id)state;
- (void)asyncPowered:(id)powered;
- (void)asyncUserAutoJoinState:(id)state;
- (void)dealloc;
- (void)dispatchAskToJoinAction:(unint64_t)action notificationId:(unsigned int)id network:(id)network;
- (void)dispatchCertificateTrustAction:(int64_t)action profile:(id)profile;
- (void)dispatchJoinRecommendationAction:(int64_t)action profile:(id)profile;
- (void)reloadConfiguration;
- (void)setAirplaneModeBehavior:(unint64_t)behavior;
- (void)setAskToJoinMode:(int64_t)mode;
- (void)setAutoInstantHotspotJoinOption:(int64_t)option;
- (void)setAutoJoinEnabled:(BOOL)enabled;
- (void)setClientTypeAsForeground;
- (void)setEnableRandomMACForNetwork:(id)network enable:(BOOL)enable randomMAC:(id)c;
- (void)setHasShownSBPickerDontAsk:(BOOL)ask;
- (void)setMISDiscoveryState:(BOOL)state immediateDisable:(BOOL)disable;
- (void)setMISState:(BOOL)state;
- (void)setManagedAppleID:(BOOL)d;
- (void)setNetworkRestrictionActive:(BOOL)active;
- (void)setPowerModificationDisableState:(BOOL)state;
- (void)setPowered:(BOOL)powered;
- (void)setPoweredToggle:(BOOL)toggle handler:(id)handler;
- (void)setRandomAddressModeForNetwork:(id)network mode:(unint64_t)mode randomMAC:(id)c;
- (void)setUserAutoJoinState:(BOOL)state completion:(id)completion;
- (void)setWAPIEnabled:(BOOL)enabled;
@end

@implementation WFClient

- (WFInterface)interface
{
  v21 = *MEMORY[0x277D85DE8];
  interface = self->_interface;
  if (!interface)
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(1uLL);
    v6 = v5;
    if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
    {
      v19 = 136315138;
      v20 = "[WFClient interface]";
      _os_log_impl(&dword_273ECD000, v4, v6, "%s: recreating WFInterface in WFClient because it's nil when trying to access", &v19, 0xCu);
    }

    if (self->_manager)
    {
      v8 = self->_cInterface;
      if (!v8)
      {
        v9 = WFLogForCategory(0);
        v10 = OSLogForWFLogLevel(1uLL);
        v11 = v10;
        if (WFCurrentLogLevel(v10, v12) && v9 && os_log_type_enabled(v9, v11))
        {
          v19 = 136315138;
          v20 = "[WFClient interface]";
          _os_log_impl(&dword_273ECD000, v9, v11, "%s: recreating cInterface to recreate WFInterface", &v19, 0xCu);
        }

        v8 = [objc_alloc(MEMORY[0x277D02B18]) initWithServiceType:1];
        requestParameters = [(CWFInterface *)v8 requestParameters];
        [requestParameters setTimeout:120000000000];

        objc_storeStrong(&self->_cInterface, v8);
        [(CWFInterface *)v8 resume];
        [(WFClient *)self _startMonitoringCoreWiFiEventsWithInterface:v8];
      }

      [(WFClient *)self _setupDefaultInterfaceWithManager:self->_manager coreWiFiInterface:v8];
    }

    else
    {
      v8 = WFLogForCategory(0);
      v16 = OSLogForWFLogLevel(1uLL);
      v17 = v16;
      if (WFCurrentLogLevel(v16, v18) && v8 && os_log_type_enabled(v8, v17))
      {
        v19 = 136315138;
        v20 = "[WFClient interface]";
        _os_log_impl(&dword_273ECD000, v8, v17, "%s: cannot recreate WFInterface in WFClient because WiFiManagerClientRef is nil", &v19, 0xCu);
      }
    }

    interface = self->_interface;
  }

  v14 = interface;

  return v14;
}

+ (WFClient)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[WFClient sharedInstance];
  }

  v3 = _sharedWFClient;

  return v3;
}

void __26__WFClient_sharedInstance__block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(WFClient);
  v1 = _sharedWFClient;
  _sharedWFClient = v0;

  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
  {
    v6 = 136315138;
    v7 = "+[WFClient sharedInstance]_block_invoke";
    _os_log_impl(&dword_273ECD000, v2, v4, "%s: WFClient sharedInstance is deprecated and should be removed.", &v6, 0xCu);
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  notify_cancel(self->_cellularOutrankWiFiNotificationToken);
  self->_cellularOutrankWiFiNotificationToken = -1;
  if (self->_manager)
  {
    [(WFClient *)self _unscheduleCallbacksWithManager:?];
    manager = self->_manager;
    if (manager)
    {
      CFRelease(manager);
      self->_manager = 0;
    }
  }

  interface = self->_interface;
  if (interface)
  {
    self->_interface = 0;
  }

  cInterface = self->_cInterface;
  if (cInterface)
  {
    [(CWFInterface *)cInterface invalidate];
    v7 = self->_cInterface;
    self->_cInterface = 0;
  }

  v8.receiver = self;
  v8.super_class = WFClient;
  [(WFClient *)&v8 dealloc];
}

- (WFClient)initWithCallbackRunLoop:(id)loop
{
  v33 = *MEMORY[0x277D85DE8];
  loopCopy = loop;
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) >= 3 && v6 && os_log_type_enabled(v6, v8))
  {
    *buf = 0;
    _os_log_impl(&dword_273ECD000, v6, v8, "initializing WFClient with callback run loop", buf, 2u);
  }

  v10 = [objc_alloc(MEMORY[0x277D02B18]) initWithServiceType:1];
  requestParameters = [v10 requestParameters];
  [requestParameters setTimeout:120000000000];

  v29.receiver = self;
  v29.super_class = WFClient;
  v12 = [(WFClient *)&v29 init];
  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = WiFiManagerClientCreate();
  if (!v13)
  {
    [WFClient initWithCallbackRunLoop:buf];
LABEL_20:

LABEL_21:
    [WFClient initWithCallbackRunLoop:v12];
    v12 = 0;
    goto LABEL_17;
  }

  v12->_manager = v13;
  v12->_cellularOutrankWiFiNotificationToken = -1;
  [(WFClient *)v12 _registerForCellularRankingStateNotification];
  objc_storeStrong(&v12->_callbackRunLoop, loop);
  [(WFClient *)v12 _scheduleCallbacksWithManager:v12->_manager runLoop:loopCopy];
  if (!v10)
  {
    [WFClient initWithCallbackRunLoop:buf];
    goto LABEL_20;
  }

  [v10 resume];
  [(WFClient *)v12 setCInterface:v10];
  v12->_powered = [v10 powerOn];
  manager = v12->_manager;
  cInterface = [(WFClient *)v12 cInterface];
  [(WFClient *)v12 _setupDefaultInterfaceWithManager:manager coreWiFiInterface:cInterface];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v12 selector:sel__managedConfigurationDidChange_ name:*MEMORY[0x277D25CA0] object:0];

  v17 = WFLogForCategory(0);
  v18 = OSLogForWFLogLevel(3uLL);
  v19 = v18;
  if (WFCurrentLogLevel(v18, v20) >= 3 && v17 && os_log_type_enabled(v17, v19))
  {
    *buf = 136315394;
    *&buf[4] = "[WFClient initWithCallbackRunLoop:]";
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&dword_273ECD000, v17, v19, "%s %@", buf, 0x16u);
  }

  v21 = dispatch_queue_create("com.apple.wifikit.wfclient-serial", 0);
  serialClientQueue = v12->_serialClientQueue;
  v12->_serialClientQueue = v21;

  v23 = dispatch_queue_create("WFWiFiStateMonitorQueue", 0);
  stateMonitorQueue = v12->_stateMonitorQueue;
  v12->_stateMonitorQueue = v23;

  if (objc_opt_class())
  {
    mEMORY[0x277D243A0] = [MEMORY[0x277D243A0] shared];
    v12->_lockdownModeEnabled = [mEMORY[0x277D243A0] enabled];
  }

  v26 = 2;
  if (v12->_lockdownModeEnabled)
  {
    v26 = -1;
  }

  v12->_askToJoinMode = v26;
  v12->_autoInstantHotspotJoinOption = 1;
  [(WFClient *)v12 reloadConfiguration];
  cInterface2 = [(WFClient *)v12 cInterface];
  [(WFClient *)v12 _startMonitoringCoreWiFiEventsWithInterface:cInterface2];

LABEL_17:
  return v12;
}

- (WFClient)init
{
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  v4 = [(WFClient *)self initWithCallbackRunLoop:mainRunLoop];

  return v4;
}

- (void)_startMonitoringCoreWiFiEventsWithInterface:(id)interface
{
  interfaceCopy = interface;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke;
  v12[3] = &unk_279EBCEA0;
  objc_copyWeak(&v13, &location);
  [interfaceCopy setInterruptionHandler:v12];
  cInterface = [(WFClient *)self cInterface];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_2;
  v10[3] = &unk_279EBDEB0;
  objc_copyWeak(&v11, &location);
  [cInterface setEventHandler:v10];

  stateMonitorQueue = [(WFClient *)self stateMonitorQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_2_91;
  v8[3] = &unk_279EBCFE0;
  v9 = interfaceCopy;
  v7 = interfaceCopy;
  dispatch_async(stateMonitorQueue, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 3 && v2 && os_log_type_enabled(v2, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_273ECD000, v2, v4, "Core WiFi Service restarted.", v6, 2u);
  }

  [WeakRetained reloadConfiguration];
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_77);
}

void __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_75()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"WFClientServerRestartedNotification" object:0];
}

void __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_2(uint64_t a1, void *a2)
{
  v87[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 type];
  if (v5 > 18)
  {
    if (v5 > 27)
    {
      if (v5 != 30)
      {
        if (v5 != 28)
        {
          goto LABEL_74;
        }

        v30 = WFLogForCategory(0);
        v31 = OSLogForWFLogLevel(3uLL);
        v32 = v31;
        if (WFCurrentLogLevel(v31, v33) >= 3 && v30 && os_log_type_enabled(v30, v32))
        {
          *buf = 138412290;
          v83 = v3;
          _os_log_impl(&dword_273ECD000, v30, v32, "CWFEventTypeWiFiUIStateFlagsChanged - event %@", buf, 0xCu);
        }

        if (![WeakRetained _updateWiFiUIFlagsState])
        {
          goto LABEL_74;
        }

LABEL_72:
        v10 = [WeakRetained interface];
        [v10 asyncCurrentNetwork:0];
LABEL_73:

        goto LABEL_74;
      }

      v38 = WFLogForCategory(0);
      v39 = OSLogForWFLogLevel(3uLL);
      v40 = v39;
      if (WFCurrentLogLevel(v39, v41) >= 3 && v38 && os_log_type_enabled(v38, v40))
      {
        *buf = 138412290;
        v83 = v3;
        _os_log_impl(&dword_273ECD000, v38, v40, "CWFEventTypeKnownNetworkProfileChanged - event %@", buf, 0xCu);
      }

      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_89;
      v75[3] = &unk_279EBD290;
      v75[4] = WeakRetained;
      v76 = v3;
      dispatch_async(MEMORY[0x277D85CD0], v75);
      v15 = v76;
    }

    else
    {
      if ((v5 - 19) >= 2)
      {
        if (v5 == 27)
        {
          v34 = WFLogForCategory(0);
          v35 = OSLogForWFLogLevel(3uLL);
          v36 = v35;
          if (WFCurrentLogLevel(v35, v37) >= 3 && v34 && os_log_type_enabled(v34, v36))
          {
            *buf = 138412290;
            v83 = v3;
            _os_log_impl(&dword_273ECD000, v34, v36, "CWFEventTypeUserSettingsChanged - event='%@'", buf, 0xCu);
          }

          [WeakRetained reloadConfiguration];
        }

        goto LABEL_74;
      }

      v11 = WFLogForCategory(0);
      v12 = OSLogForWFLogLevel(3uLL);
      v13 = v12;
      if (WFCurrentLogLevel(v12, v14) >= 3 && v11 && os_log_type_enabled(v11, v13))
      {
        *buf = 138412290;
        v83 = v3;
        _os_log_impl(&dword_273ECD000, v11, v13, "CWFEventTypeIPChanged - event='%@'", buf, 0xCu);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_88;
      block[3] = &unk_279EBCFE0;
      v78 = v3;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v15 = v78;
    }

    goto LABEL_74;
  }

  if (v5 > 5)
  {
    if (v5 == 6)
    {
      v68 = WFLogForCategory(0);
      v69 = OSLogForWFLogLevel(3uLL);
      v70 = v69;
      if (WFCurrentLogLevel(v69, v71) >= 3 && v68 && os_log_type_enabled(v68, v70))
      {
        *buf = 138412290;
        v83 = v3;
        _os_log_impl(&dword_273ECD000, v68, v70, "CWFEventTypeLinkChanged - event %@", buf, 0xCu);
      }

      v72 = [WeakRetained interface];
      [v72 asyncCurrentNetwork:0];

      v73 = dispatch_time(0, 1000000000);
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_78;
      v81[3] = &unk_279EBCFE0;
      v81[4] = WeakRetained;
      dispatch_after(v73, MEMORY[0x277D85CD0], v81);
      goto LABEL_74;
    }

    if (v5 != 7)
    {
      if (v5 == 13)
      {
        v16 = [v3 info];
        v10 = [v16 objectForKey:@"JoinStatus"];

        v17 = WFLogForCategory(0);
        v18 = OSLogForWFLogLevel(3uLL);
        v19 = v18;
        if (WFCurrentLogLevel(v18, v20) >= 3 && v17 && os_log_type_enabled(v17, v19))
        {
          *buf = 138412290;
          v83 = v3;
          _os_log_impl(&dword_273ECD000, v17, v19, "CWFEventTypeJoinStatusChanged - event='%@'", buf, 0xCu);
        }

        if (v10)
        {
          v21 = [v10 error];
          v22 = [v21 code];

          if (v22)
          {
            v23 = WFLogForCategory(0);
            v24 = OSLogForWFLogLevel(1uLL);
            v25 = v24;
            if (WFCurrentLogLevel(v24, v26) && v23)
            {
              v27 = v23;
              if (os_log_type_enabled(v27, v25))
              {
                v28 = [v10 error];
                *buf = 136315394;
                v83 = "[WFClient _startMonitoringCoreWiFiEventsWithInterface:]_block_invoke";
                v84 = 2112;
                v85 = v28;
                _os_log_impl(&dword_273ECD000, v27, v25, "%s: updating asyncCurrentNetwork on join error %@", buf, 0x16u);
              }
            }

            v29 = [WeakRetained interface];
            [v29 asyncCurrentNetwork:0];
          }
        }

        goto LABEL_73;
      }

      goto LABEL_74;
    }

    v46 = WFLogForCategory(0);
    v47 = OSLogForWFLogLevel(3uLL);
    v48 = v47;
    if (WFCurrentLogLevel(v47, v49) >= 3 && v46 && os_log_type_enabled(v46, v48))
    {
      *buf = 138412290;
      v83 = v3;
      _os_log_impl(&dword_273ECD000, v46, v48, "CWFEventTypeLinkQuality - event='%@'", buf, 0xCu);
    }

    v50 = [v3 info];
    v51 = [v50 objectForKey:@"LinkQualityMetric"];

    v52 = [WeakRetained interface];
    v53 = [v52 currentNetwork];

    if (v53)
    {
      v54 = [v51 RSSI];
      v55 = WFScaleRSSI(v54);
      v56 = 0;
      if (!v54)
      {
        v58 = 0;
        goto LABEL_83;
      }

      v57 = v55;
      v58 = 0;
      if (v55 == 0.0)
      {
LABEL_83:
        v79[0] = MEMORY[0x277D85DD0];
        v79[1] = 3221225472;
        v79[2] = __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_84;
        v79[3] = &unk_279EBCFE0;
        v80 = v58;
        v74 = v58;
        dispatch_async(MEMORY[0x277D85CD0], v79);

        goto LABEL_74;
      }

      v59 = [WFLinkQuality alloc];
      v60 = [WeakRetained interface];
      v61 = [v60 currentNetwork];
      v62 = [v61 ssid];
      *&v63 = v57;
      v56 = [(WFLinkQuality *)v59 initWithSSID:v62 rssi:v54 scaledRSSI:v63];

      if (v56)
      {
        v86 = @"WFInterfaceLinkQualityKey";
        v87[0] = v56;
        v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:&v86 count:1];
        goto LABEL_83;
      }
    }

    else
    {
      v56 = 0;
    }

    v58 = 0;
    goto LABEL_83;
  }

  switch(v5)
  {
    case 1:
      v64 = WFLogForCategory(0);
      v65 = OSLogForWFLogLevel(3uLL);
      v66 = v65;
      if (WFCurrentLogLevel(v65, v67) >= 3 && v64 && os_log_type_enabled(v64, v66))
      {
        *buf = 138412290;
        v83 = v3;
        _os_log_impl(&dword_273ECD000, v64, v66, "CWFEventTypePowerChanged - event %@", buf, 0xCu);
      }

      [WeakRetained _updatePowerState];
      goto LABEL_72;
    case 2:
      v42 = WFLogForCategory(0);
      v43 = OSLogForWFLogLevel(3uLL);
      v44 = v43;
      if (WFCurrentLogLevel(v43, v45) >= 3 && v42 && os_log_type_enabled(v42, v44))
      {
        *buf = 138412290;
        v83 = v3;
        _os_log_impl(&dword_273ECD000, v42, v44, "CWFEventTypeSSIDChanged - event %@", buf, 0xCu);
      }

      goto LABEL_72;
    case 4:
      v6 = WFLogForCategory(0);
      v7 = OSLogForWFLogLevel(3uLL);
      v8 = v7;
      if (WFCurrentLogLevel(v7, v9) >= 3 && v6 && os_log_type_enabled(v6, v8))
      {
        *buf = 138412290;
        v83 = v3;
        _os_log_impl(&dword_273ECD000, v6, v8, "CWFEventTypeCountryCodeChanged - event %@", buf, 0xCu);
      }

      v10 = [WeakRetained interface];
      [v10 updateDeviceScanChannelsPerCurLocale];
      goto LABEL_73;
  }

LABEL_74:
}

void __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_78(uint64_t a1)
{
  v1 = [*(a1 + 32) interface];
  [v1 asyncCurrentNetwork:0];
}

void __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_84(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFInterfaceLinkQualityNotification" object:0 userInfo:*(a1 + 32)];
}

void __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_88(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = [*(a1 + 32) info];
  [v3 postNotificationName:@"WFInterfaceIPAddressChangedNotification" object:0 userInfo:v2];
}

void __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_89(uint64_t a1)
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) info];
  [v4 postNotificationName:@"WFClientPreferredNetworksDidChangeNotification" object:v2 userInfo:v3];
}

void __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_2_91(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(4uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 4 && v2 && os_log_type_enabled(v2, v4))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[WFClient _startMonitoringCoreWiFiEventsWithInterface:]_block_invoke_2";
    _os_log_impl(&dword_273ECD000, v2, v4, "%s: Entering WFClient stateMonitorQueue", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  v13 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_115;
  v6[3] = &unk_279EBDED8;
  v7 = *(a1 + 32);
  p_buf = &buf;
  [&unk_288304F30 enumerateObjectsUsingBlock:v6];

  _Block_object_dispose(&buf, 8);
}

void __56__WFClient__startMonitoringCoreWiFiEventsWithInterface___block_invoke_115(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 integerValue];
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  LOBYTE(v4) = [v4 startMonitoringEventType:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if ((v4 & 1) == 0)
  {
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(1uLL);
    v9 = v8;
    if (WFCurrentLogLevel(v8, v10) && v7)
    {
      v11 = v7;
      if (os_log_type_enabled(v11, v9))
      {
        v12 = [v3 integerValue];
        v13 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 136315650;
        v16 = "[WFClient _startMonitoringCoreWiFiEventsWithInterface:]_block_invoke";
        v17 = 2048;
        v18 = v12;
        v19 = 2112;
        v20 = v13;
        _os_log_impl(&dword_273ECD000, v11, v9, "%s: unable to register for event %lu - error %@", buf, 0x20u);
      }
    }
  }
}

- (void)_setupDefaultInterfaceWithManager:(__WiFiManagerClient *)manager coreWiFiInterface:(id)interface
{
  v27 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  v6 = WiFiManagerClientCopyDevices();
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(1uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) && v7 && os_log_type_enabled(v7, v9))
  {
    v23 = 136315394;
    v24 = "[WFClient _setupDefaultInterfaceWithManager:coreWiFiInterface:]";
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_273ECD000, v7, v9, "%s: devices %@", &v23, 0x16u);
  }

  if (v6)
  {
    v11 = [[WFInterface alloc] initWithDevice:[(WFInterface *)v6 objectAtIndex:0] coreWiFiInterface:interfaceCopy];
    interface = self->_interface;
    self->_interface = v11;

    [(WFInterface *)self->_interface setWifiClient:self];
    v13 = WFLogForCategory(0);
    v14 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel(v14, v15) && v13 && os_log_type_enabled(v13, v14))
    {
      v16 = self->_interface;
      v23 = 136315394;
      v24 = "[WFClient _setupDefaultInterfaceWithManager:coreWiFiInterface:]";
      v25 = 2112;
      v26 = v16;
      v17 = "%s: Setting up WFInterface %@ in WFClient";
      v18 = v13;
      v19 = v14;
      v20 = 22;
LABEL_14:
      _os_log_impl(&dword_273ECD000, v18, v19, v17, &v23, v20);
    }
  }

  else
  {
    v13 = WFLogForCategory(0);
    v21 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel(v21, v22) && v13 && os_log_type_enabled(v13, v21))
    {
      v23 = 136315138;
      v24 = "[WFClient _setupDefaultInterfaceWithManager:coreWiFiInterface:]";
      v17 = "%s: failed to acquire WiFiDeviceClientRef";
      v18 = v13;
      v19 = v21;
      v20 = 12;
      goto LABEL_14;
    }
  }
}

- (void)_scheduleCallbacksWithManager:(__WiFiManagerClient *)manager runLoop:(id)loop
{
  [loop getCFRunLoop];
  WiFiManagerClientScheduleWithRunLoop();
  WiFiManagerClientRegisterNotificationCallback();
  WiFiManagerClientRegisterDeviceAttachmentCallback();

  MEMORY[0x282187820](manager, _WiFiManagerClientManagedAppleIDCabllack, self);
}

- (void)_updateWithDeviceAttachment:(__WiFiDeviceClient *)attachment
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    *buf = 136315138;
    v18 = "[WFClient _updateWithDeviceAttachment:]";
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: Device became available", buf, 0xCu);
  }

  interface = [(WFClient *)self interface];

  if (interface)
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(1uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) && v10 && os_log_type_enabled(v10, v12))
    {
      *buf = 136315138;
      v18 = "[WFClient _updateWithDeviceAttachment:]";
      _os_log_impl(&dword_273ECD000, v10, v12, "%s: interface already exists", buf, 0xCu);
    }

    interface2 = [(WFClient *)self interface];
    [interface2 setDevice:attachment];
  }

  else
  {
    interface2 = dispatch_get_global_queue(21, 0);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __40__WFClient__updateWithDeviceAttachment___block_invoke;
    v16[3] = &unk_279EBCFB8;
    v16[4] = self;
    v16[5] = attachment;
    dispatch_async(interface2, v16);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"WFClientInterfaceAvailableNotification" object:self];
}

void __40__WFClient__updateWithDeviceAttachment___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cInterface];
  v3 = [v2 interfaceName];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__WFClient__updateWithDeviceAttachment___block_invoke_2;
  block[3] = &unk_279EBD5D0;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __40__WFClient__updateWithDeviceAttachment___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [WFInterface alloc];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) cInterface];
  v6 = [(WFInterface *)v3 initWithDevice:v4 coreWiFiInterface:v5 interfaceName:v2];
  [*(a1 + 40) setInterface:v6];

  v7 = *(a1 + 40);
  v8 = [v7 interface];
  [v8 setWifiClient:v7];
}

- (void)_updateWPA3Properties:(__WiFiManagerClient *)properties
{
  v17 = *MEMORY[0x277D85DE8];
  [(WFClient *)self setWPA3PersonalEnabled:WiFiManagerClientIsWPA3PersonalSupported() != 0];
  [(WFClient *)self setWPA3EnterpriseEnabled:WiFiManagerClientIsWPA3EnterpriseSupported() != 0];
  [(WFClient *)self setMfpCapable:WiFiManagerClientIsMfpCapableDevice() != 0];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4)
  {
    v8 = v4;
    if (os_log_type_enabled(v8, v6))
    {
      v9 = 136315906;
      v10 = "[WFClient _updateWPA3Properties:]";
      v11 = 1024;
      isWPA3PersonalEnabled = [(WFClient *)self isWPA3PersonalEnabled];
      v13 = 1024;
      isWPA3EnterpriseEnabled = [(WFClient *)self isWPA3EnterpriseEnabled];
      v15 = 1024;
      isMfpCapable = [(WFClient *)self isMfpCapable];
      _os_log_impl(&dword_273ECD000, v8, v6, "%s: WPA3 personal (%d) WPA3 enterprise (%d) MFP Capable (%d)", &v9, 0x1Eu);
    }
  }
}

void __35__WFClient__updateWiFiUIFlagsState__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFClientWiFiUIFlagsStateChangedNotification" object:*(a1 + 32)];
}

void __29__WFClient__updatePowerState__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFClientPowerStateChangedNotification" object:*(a1 + 32)];
}

- (OS_dispatch_queue)stateMonitorQueue
{
  stateMonitorQueue = self->_stateMonitorQueue;
  if (!stateMonitorQueue)
  {
    v4 = dispatch_queue_create("WFWiFiStateMonitorQueue", 0);
    v5 = self->_stateMonitorQueue;
    self->_stateMonitorQueue = v4;

    stateMonitorQueue = self->_stateMonitorQueue;
  }

  return stateMonitorQueue;
}

- (void)setPowered:(BOOL)powered
{
  poweredCopy = powered;
  v23 = *MEMORY[0x277D85DE8];
  if ([(WFClient *)self powered]== powered)
  {
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(1uLL);
    v13 = v12;
    if (WFCurrentLogLevel(v12, v14) && v11 && os_log_type_enabled(v11, v13))
    {
      v15 = @"OFF";
      if (poweredCopy)
      {
        v15 = @"ON";
      }

      *buf = 136315394;
      v20 = "[WFClient setPowered:]";
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_273ECD000, v11, v13, "%s: no change to power state (%@)", buf, 0x16u);
    }
  }

  else
  {
    self->_powered = poweredCopy;
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(1uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
    {
      v9 = @"OFF";
      if (poweredCopy)
      {
        v9 = @"ON";
      }

      *buf = 136315394;
      v20 = "[WFClient setPowered:]";
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_273ECD000, v5, v7, "%s: setting power to %@", buf, 0x16u);
    }

    v10 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __23__WFClient_setPowered___block_invoke;
    block[3] = &unk_279EBDF00;
    block[4] = self;
    v18 = poweredCopy;
    dispatch_async(v10, block);

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __23__WFClient_setPowered___block_invoke_124;
    v16[3] = &unk_279EBCFE0;
    v16[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v16);
  }
}

void __23__WFClient_setPowered___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) cInterface];
  v3 = *(a1 + 40);
  v11 = 0;
  v4 = [v2 setPower:v3 error:&v11];
  v5 = v11;

  if ((v4 & 1) == 0)
  {
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(1uLL);
    v8 = v7;
    if (WFCurrentLogLevel(v7, v9) && v6 && os_log_type_enabled(v6, v8))
    {
      v10 = @"OFF";
      if (*(a1 + 40))
      {
        v10 = @"ON";
      }

      *buf = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_273ECD000, v6, v8, "failed to set power to %@, error: %@", buf, 0x16u);
    }
  }
}

void __23__WFClient_setPowered___block_invoke_124(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFClientPowerStateChangedNotification" object:*(a1 + 32)];
}

- (void)setPoweredToggle:(BOOL)toggle handler:(id)handler
{
  toggleCopy = toggle;
  v25 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if ([(WFClient *)self powered]== toggleCopy)
  {
    v13 = WFLogForCategory(0);
    v14 = OSLogForWFLogLevel(1uLL);
    v15 = v14;
    if (WFCurrentLogLevel(v14, v16) && v13 && os_log_type_enabled(v13, v15))
    {
      v17 = @"OFF";
      if (toggleCopy)
      {
        v17 = @"ON";
      }

      *buf = 136315394;
      v22 = "[WFClient setPoweredToggle:handler:]";
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_273ECD000, v13, v15, "%s: no change to power state (%@)", buf, 0x16u);
    }
  }

  else
  {
    self->_powered = toggleCopy;
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(1uLL);
    v9 = v8;
    if (WFCurrentLogLevel(v8, v10) && v7 && os_log_type_enabled(v7, v9))
    {
      v11 = @"OFF";
      if (toggleCopy)
      {
        v11 = @"ON";
      }

      *buf = 136315394;
      v22 = "[WFClient setPoweredToggle:handler:]";
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_273ECD000, v7, v9, "%s: setting power to %@", buf, 0x16u);
    }

    v12 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__WFClient_setPoweredToggle_handler___block_invoke;
    block[3] = &unk_279EBDF50;
    v20 = toggleCopy;
    block[4] = self;
    v19 = handlerCopy;
    dispatch_async(v12, block);
  }
}

void __37__WFClient_setPoweredToggle_handler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = *(a1 + 48);
  v2 = [*(a1 + 32) cInterface];
  v3 = *(a1 + 48);
  v14 = 0;
  v4 = [v2 setPower:v3 error:&v14];
  v5 = v14;

  if ((v4 & 1) == 0)
  {
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(1uLL);
    v8 = v7;
    if (WFCurrentLogLevel(v7, v9) && v6 && os_log_type_enabled(v6, v8))
    {
      v10 = @"OFF";
      if (*(a1 + 48))
      {
        v10 = @"ON";
      }

      *buf = 138412546;
      v20 = v10;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_273ECD000, v6, v8, "failed to set power to %@, error: %@", buf, 0x16u);
    }

    v16[3] = *(a1 + 48) ^ 1;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__WFClient_setPoweredToggle_handler___block_invoke_125;
  v11[3] = &unk_279EBDF28;
  v12 = *(a1 + 40);
  v13 = &v15;
  v11[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v11);

  _Block_object_dispose(&v15, 8);
}

void __37__WFClient_setPoweredToggle_handler___block_invoke_125(void *a1)
{
  (*(a1[5] + 16))(a1[5], *(*(a1[6] + 8) + 24) != 0);
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFClientPowerStateChangedNotification" object:a1[4]];
}

- (void)asyncPowered:(id)powered
{
  poweredCopy = powered;
  objc_initWeak(&location, self);
  stateMonitorQueue = [(WFClient *)self stateMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__WFClient_asyncPowered___block_invoke;
  block[3] = &unk_279EBDF78;
  objc_copyWeak(&v9, &location);
  v8 = poweredCopy;
  v6 = poweredCopy;
  dispatch_async(stateMonitorQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __25__WFClient_asyncPowered___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(4uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 4 && v2 && os_log_type_enabled(v2, v4))
  {
    *buf = 136315138;
    v11 = "[WFClient asyncPowered:]_block_invoke";
    _os_log_impl(&dword_273ECD000, v2, v4, "%s: Entering WFClient stateMonitorQueue", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updatePowerState];
  if (*(a1 + 32))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __25__WFClient_asyncPowered___block_invoke_126;
    v8[3] = &unk_279EBDA98;
    v7 = *(a1 + 32);
    v8[4] = WeakRetained;
    v9 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

uint64_t __25__WFClient_asyncPowered___block_invoke_126(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) powered];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)reloadConfiguration
{
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__WFClient_reloadConfiguration__block_invoke;
  block[3] = &unk_279EBCFE0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __31__WFClient_reloadConfiguration__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 3 && v2 && os_log_type_enabled(v2, v4))
  {
    v32 = 136315138;
    v33 = "[WFClient reloadConfiguration]_block_invoke";
    _os_log_impl(&dword_273ECD000, v2, v4, "%s: reloading WFClient configuration", &v32, 0xCu);
  }

  v6 = [*(a1 + 32) cInterface];
  v7 = [v6 userSettings];

  v8 = [*(a1 + 32) _askToJoinModeFromCoreWiFiAskToJoinMode:{objc_msgSend(v7, "askToJoinMode")}];
  v9 = *(a1 + 32);
  if (*(v9 + 24))
  {
    v10 = -1;
  }

  else
  {
    v10 = v8;
  }

  if (v10 != *(v9 + 56))
  {
    *(v9 + 56) = v10;
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v11 _notifyWiFiPropertyChanged:@"kWFClientUserInterfacePropertyATJKey" value:v12];

    v9 = *(a1 + 32);
  }

  v13 = [v9 _hotspotJoinOptionFromCoreWiFiAutoHotspotMode:{objc_msgSend(v7, "autoHotspotMode")}];
  v14 = *(a1 + 32);
  if (v13 != *(v14 + 64))
  {
    *(v14 + 64) = v13;
    v15 = *(a1 + 32);
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
    [v15 _notifyWiFiPropertyChanged:@"kWFClientUserInterfacePropertyHotspotAJKey" value:v16];
  }

  v17 = [v7 OSSpecificAttributes];

  if (v17)
  {
    v18 = [v7 OSSpecificAttributes];
    v19 = [v18 objectForKeyedSubscript:@"WAPIEnabled"];
    *(*(a1 + 32) + 11) = [v19 BOOLValue];

    v20 = [v7 OSSpecificAttributes];
    v21 = [v20 objectForKeyedSubscript:@"DiagnosticsEnabled"];
    *(*(a1 + 32) + 12) = [v21 BOOLValue];

    v22 = [v7 OSSpecificAttributes];
    v23 = [v22 objectForKeyedSubscript:*MEMORY[0x277D29960]];
    *(*(a1 + 32) + 18) = [v23 BOOLValue];

    v24 = [v7 OSSpecificAttributes];
    v25 = [v24 objectForKeyedSubscript:*MEMORY[0x277D29820]];
    *(*(a1 + 32) + 20) = [v25 BOOLValue];

    v26 = [v7 OSSpecificAttributes];
    v27 = [v26 objectForKeyedSubscript:@"WiFiMobileAssetIsHealthMonitorDisabled"];
    *(*(a1 + 32) + 19) = [v27 BOOLValue];

    *(*(a1 + 32) + 21) = CFPreferencesGetAppBooleanValue(@"ShowWiFiUI", @"com.apple.wifi.ui", 0) != 0;
    *(*(a1 + 32) + 22) = CFPreferencesGetAppBooleanValue(@"ShowWiFiAwareUI", @"com.apple.wifi.ui", 0) != 0;
  }

  else
  {
    v28 = WFLogForCategory(0);
    v29 = OSLogForWFLogLevel(1uLL);
    v30 = v29;
    if (WFCurrentLogLevel(v29, v31) && v28 && os_log_type_enabled(v28, v30))
    {
      v32 = 138412290;
      v33 = v7;
      _os_log_impl(&dword_273ECD000, v28, v30, "nil OSSpecificAttributes from user settings='%@'", &v32, 0xCu);
    }
  }

  [*(a1 + 32) _updateNetworkRestrictionActive];
  [*(a1 + 32) _updateAirplaneModeStickiness];
  [*(a1 + 32) _updateWPA3Properties:*(*(a1 + 32) + 88)];
  [*(a1 + 32) _updatePowerModificationDisableState];
  [*(a1 + 32) _updateManagedAppleIDState];
  [*(a1 + 32) _updateCellularRankingState];
}

- (void)setWAPIEnabled:(BOOL)enabled
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (enabled)
  {
    v5 = MEMORY[0x277CBEC38];
  }

  else
  {
    v5 = MEMORY[0x277CBEC28];
  }

  v7 = @"WAPIEnabled";
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(WFClient *)self _updateOSSpecificAttributes:v6];

  self->_WAPIEnabled = enabled;
}

- (int64_t)_askToJoinModeFromCoreWiFiAskToJoinMode:(int64_t)mode
{
  if (mode >= 4)
  {
    return 0;
  }

  else
  {
    return mode - 1;
  }
}

- (int64_t)_coreWiFiAskToJoinModeFromAskToJoinMode:(int64_t)mode
{
  if ((mode + 1) < 4)
  {
    return mode + 1;
  }

  else
  {
    return 1;
  }
}

- (void)setAskToJoinMode:(int64_t)mode
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277D02B60]);
  [v5 setAskToJoinMode:{-[WFClient _coreWiFiAskToJoinModeFromAskToJoinMode:](self, "_coreWiFiAskToJoinModeFromAskToJoinMode:", mode)}];
  cInterface = [(WFClient *)self cInterface];
  v7 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_288304A20, 0}];
  v14 = 0;
  v8 = [cInterface applyUserSettings:v5 properties:v7 error:&v14];
  v9 = v14;

  if (v8)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
    [(WFClient *)self _notifyWiFiPropertyChanged:@"kWFClientUserInterfacePropertyATJKey" value:v10];
  }

  else
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(1uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) && v10 && os_log_type_enabled(v10, v12))
    {
      *buf = 134218242;
      modeCopy = mode;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_273ECD000, v10, v12, "failed to set ask to join to %ld, error='%@'", buf, 0x16u);
    }
  }

  self->_askToJoinMode = mode;
}

- (BOOL)hasShownSBPickerDontAsk
{
  cInterface = [(WFClient *)self cInterface];
  userSettings = [cInterface userSettings];

  oSSpecificAttributes = [userSettings OSSpecificAttributes];
  v5 = [oSSpecificAttributes objectForKeyedSubscript:*MEMORY[0x277D298F8]];

  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setHasShownSBPickerDontAsk:(BOOL)ask
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (ask)
  {
    v4 = MEMORY[0x277CBEC38];
  }

  else
  {
    v4 = MEMORY[0x277CBEC28];
  }

  v6 = *MEMORY[0x277D298F8];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(WFClient *)self _updateOSSpecificAttributes:v5];
}

- (void)_updateNetworkRestrictionActive
{
  v12 = *MEMORY[0x277D85DE8];
  [(WFClient *)self manager];
  IsRestrictionPolicyActive = WiFiManagerClientIsRestrictionPolicyActive();
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = 136315394;
    v9 = "[WFClient _updateNetworkRestrictionActive]";
    v10 = 1024;
    v11 = IsRestrictionPolicyActive != 0;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: restrictionState %d", &v8, 0x12u);
  }

  [(WFClient *)self setNetworkRestrictionActive:IsRestrictionPolicyActive != 0];
}

- (void)setNetworkRestrictionActive:(BOOL)active
{
  activeCopy = active;
  v24 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    *buf = 136315394;
    *v22 = "[WFClient setNetworkRestrictionActive:]";
    *&v22[8] = 1024;
    *v23 = activeCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: restriction %d", buf, 0x12u);
  }

  if (self->_networkRestrictionActive != activeCopy)
  {
    if (activeCopy)
    {
      cInterface = [(WFClient *)self cInterface];
      userSettings = [cInterface userSettings];

      oSSpecificAttributes = [userSettings OSSpecificAttributes];
      v12 = [oSSpecificAttributes objectForKeyedSubscript:*MEMORY[0x277D29970]];
      whitelistingUUID = self->_whitelistingUUID;
      self->_whitelistingUUID = v12;
    }

    else
    {
      userSettings = self->_whitelistingUUID;
      self->_whitelistingUUID = 0;
    }

    if (self->_networkRestrictionActive != activeCopy)
    {
      v14 = WFLogForCategory(0);
      v15 = OSLogForWFLogLevel(3uLL);
      v16 = v15;
      if (WFCurrentLogLevel(v15, v17) >= 3 && v14 && os_log_type_enabled(v14, v16))
      {
        networkRestrictionActive = self->_networkRestrictionActive;
        v19 = self->_whitelistingUUID;
        *buf = 67109634;
        *v22 = networkRestrictionActive;
        *&v22[4] = 1024;
        *&v22[6] = activeCopy;
        *v23 = 2112;
        *&v23[2] = v19;
        _os_log_impl(&dword_273ECD000, v14, v16, "Restriction policy changed (was %d is %d) policyUUID='%@'", buf, 0x18u);
      }

      self->_networkRestrictionActive = activeCopy;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__WFClient_setNetworkRestrictionActive___block_invoke;
      block[3] = &unk_279EBCFE0;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __40__WFClient_setNetworkRestrictionActive___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFClientNetworkRestrictionPolicyDidChangeNotification" object:*(a1 + 32)];
}

- (void)_updatePowerModificationDisableState
{
  v13 = *MEMORY[0x277D85DE8];
  [(WFClient *)self manager];
  IsPowerModificationDisabled = WiFiManagerClientIsPowerModificationDisabled();
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = "Enabled";
    if (IsPowerModificationDisabled)
    {
      v8 = "Disabled";
    }

    v9 = 136315394;
    v10 = "[WFClient _updatePowerModificationDisableState]";
    v11 = 2080;
    v12 = v8;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: PowerModification is %s", &v9, 0x16u);
  }

  [(WFClient *)self setPowerModificationDisableState:IsPowerModificationDisabled != 0];
}

- (void)setPowerModificationDisableState:(BOOL)state
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_powerModificationDisabled == state)
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
    {
      *buf = 136315138;
      v9 = "[WFClient setPowerModificationDisableState:]";
      _os_log_impl(&dword_273ECD000, v3, v5, "%s: No change in state", buf, 0xCu);
    }
  }

  else
  {
    self->_powerModificationDisabled = state;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__WFClient_setPowerModificationDisableState___block_invoke;
    block[3] = &unk_279EBCFE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __45__WFClient_setPowerModificationDisableState___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFClientPowerModificationStateChangedNotification" object:*(a1 + 32)];
}

- (void)_updateCellularRankingState
{
  v34 = *MEMORY[0x277D85DE8];
  cellularOutrankWiFiSymtpomsState = [(WFClient *)self cellularOutrankWiFiSymtpomsState];
  if (notify_get_state([(WFClient *)self cellularOutrankWiFiNotificationToken], &self->_cellularOutrankWiFiSymtpomsState))
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(1uLL);
    v6 = v5;
    if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
    {
      *buf = 136315138;
      v27 = "[WFClient _updateCellularRankingState]";
      _os_log_impl(&dword_273ECD000, v4, v6, "%s: notify_get_state returned error", buf, 0xCu);
    }
  }

  else
  {
    cellularOutrankWiFiSymtpomsState = self->_cellularOutrankWiFiSymtpomsState;
    if (cellularOutrankWiFiSymtpomsState == cellularOutrankWiFiSymtpomsState)
    {
      v9 = WFLogForCategory(0);
      v10 = OSLogForWFLogLevel(3uLL);
      v11 = v10;
      if (WFCurrentLogLevel(v10, v12) >= 3 && v9 && os_log_type_enabled(v9, v11))
      {
        v13 = self->_cellularOutrankWiFiSymtpomsState;
        *buf = 136315394;
        v27 = "[WFClient _updateCellularRankingState]";
        v28 = 2048;
        v29 = v13;
        _os_log_impl(&dword_273ECD000, v9, v11, "%s: no change to cellular outranking state: %llu", buf, 0x16u);
      }
    }

    else
    {
      if (cellularOutrankWiFiSymtpomsState)
      {
        if ((cellularOutrankWiFiSymtpomsState & 0x40000000) != 0)
        {
          v14 = 5;
        }

        else
        {
          v15 = 3;
          v16 = 4;
          if ((cellularOutrankWiFiSymtpomsState & 0x800) == 0)
          {
            v16 = 2;
          }

          if ((cellularOutrankWiFiSymtpomsState & 0x8000) == 0)
          {
            v15 = v16;
          }

          if ((cellularOutrankWiFiSymtpomsState & 0x2000000) != 0)
          {
            v14 = 1;
          }

          else
          {
            v14 = v15;
          }
        }
      }

      else
      {
        v14 = 0;
      }

      [(WFClient *)self setCellularOutrankState:v14];
      v17 = WFLogForCategory(0);
      v18 = OSLogForWFLogLevel(3uLL);
      v19 = v18;
      if (WFCurrentLogLevel(v18, v20) >= 3 && v17)
      {
        v21 = v17;
        if (os_log_type_enabled(v21, v19))
        {
          if ([(WFClient *)self isCellularOutrankingWiFi])
          {
            v22 = "TRUE";
          }

          else
          {
            v22 = "FALSE";
          }

          cellularOutrankState = [(WFClient *)self cellularOutrankState];
          v24 = self->_cellularOutrankWiFiSymtpomsState;
          *buf = 136315906;
          v27 = "[WFClient _updateCellularRankingState]";
          v28 = 2080;
          v29 = v22;
          v30 = 2048;
          v31 = cellularOutrankState;
          v32 = 2048;
          v33 = v24;
          _os_log_impl(&dword_273ECD000, v21, v19, "%s: symptoms cellular outrank recommendation is set to %s (%lu - %llu)", buf, 0x2Au);
        }
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__WFClient__updateCellularRankingState__block_invoke;
      block[3] = &unk_279EBCFE0;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __39__WFClient__updateCellularRankingState__block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);
  v6 = @"kWFClientCellularOutrankWiFiStateKey";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "cellularOutrankState")}];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"WFClientCellularOutrankWiFiNotification" object:v3 userInfo:v5];
}

- (void)_registerForCellularRankingStateNotification
{
  if ([(WFClient *)self cellularOutrankWiFiNotificationToken]== -1)
  {
    objc_initWeak(&location, self);
    v3 = dispatch_get_global_queue(21, 0);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __56__WFClient__registerForCellularRankingStateNotification__block_invoke;
    v4[3] = &unk_279EBDFA0;
    objc_copyWeak(&v5, &location);
    notify_register_dispatch("com.apple.symptoms.celloutrankrecommendation", &self->_cellularOutrankWiFiNotificationToken, v3, v4);

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __56__WFClient__registerForCellularRankingStateNotification__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 3 && v2 && os_log_type_enabled(v2, v4))
  {
    v7 = 136315138;
    v8 = "[WFClient _registerForCellularRankingStateNotification]_block_invoke";
    _os_log_impl(&dword_273ECD000, v2, v4, "%s: cellular outranking state notification", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCellularRankingState];
}

- (void)_updateManagedAppleIDState
{
  v13 = *MEMORY[0x277D85DE8];
  [(WFClient *)self manager];
  IsManagedAppleID = WiFiManagerClientIsManagedAppleID();
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = "Non-Managed";
    if (IsManagedAppleID)
    {
      v8 = "Managed";
    }

    v9 = 136315394;
    v10 = "[WFClient _updateManagedAppleIDState]";
    v11 = 2080;
    v12 = v8;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: %s Account", &v9, 0x16u);
  }

  [(WFClient *)self setManagedAppleID:IsManagedAppleID != 0];
}

- (void)setManagedAppleID:(BOOL)d
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_managedAppleID == d)
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
    {
      *buf = 136315138;
      v9 = "[WFClient setManagedAppleID:]";
      _os_log_impl(&dword_273ECD000, v3, v5, "%s: No change in state", buf, 0xCu);
    }
  }

  else
  {
    self->_managedAppleID = d;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__WFClient_setManagedAppleID___block_invoke;
    block[3] = &unk_279EBCFE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __30__WFClient_setManagedAppleID___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFClientManagedAppleIDStateChangedNotification" object:*(a1 + 32)];
}

- (void)_logWiFiManagerPropertyChange:(id)change value:(BOOL)value
{
  valueCopy = value;
  v16 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) >= 3 && v6 && os_log_type_enabled(v6, v8))
  {
    v10 = 136315650;
    v11 = "[WFClient _logWiFiManagerPropertyChange:value:]";
    v12 = 2112;
    v13 = changeCopy;
    v14 = 1024;
    v15 = valueCopy;
    _os_log_impl(&dword_273ECD000, v6, v8, "%s: wifi manager property %@ changed to %d", &v10, 0x1Cu);
  }
}

- (void)_updateAirplaneModeStickiness
{
  v20 = *MEMORY[0x277D85DE8];
  [(WFClient *)self manager];
  v3 = WiFiManagerClientCopyProperty();
  v4 = *MEMORY[0x277CBED28];
  if (v3)
  {
    v5 = v3 == v4;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  if (v3)
  {
    CFRelease(v3);
  }

  if (v6)
  {
    [(WFClient *)self manager];
    v7 = WiFiManagerClientCopyProperty();
    if (v7 != v4 || v7 == 0)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    v9 = 0;
  }

  if (v9 != self->_airplaneModeBehavior)
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(3uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) >= 3 && v10)
    {
      v14 = v10;
      if (os_log_type_enabled(v14, v12))
      {
        v15 = off_279EBE060[v9];
        v16 = 136315394;
        v17 = "[WFClient _updateAirplaneModeStickiness]";
        v18 = 2112;
        v19 = v15;
        _os_log_impl(&dword_273ECD000, v14, v12, "%s: updating to %@", &v16, 0x16u);
      }
    }

    self->_airplaneModeBehavior = v9;
  }
}

- (void)setAirplaneModeBehavior:(unint64_t)behavior
{
  v33 = *MEMORY[0x277D85DE8];
  airplaneModeBehavior = self->_airplaneModeBehavior;
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  v8 = v7;
  v11 = WFCurrentLogLevel(v7, v9) > 2 && v6 != 0;
  if (airplaneModeBehavior != behavior)
  {
    if (v11 && os_log_type_enabled(v6, v8))
    {
      if (behavior > 2)
      {
        v13 = &stru_2882E4AD8;
      }

      else
      {
        v13 = off_279EBE060[behavior];
      }

      *buf = 136315394;
      v30 = "[WFClient setAirplaneModeBehavior:]";
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_273ECD000, v6, v8, "%s: new state %@", buf, 0x16u);
    }

    if (behavior == 2)
    {
      v21 = @"KeepWiFiPoweredAirplaneModeEnabled";
      v22 = @"KeepWiFiPoweredAirplaneMode";
      v23 = MEMORY[0x277CBEC38];
      v24 = MEMORY[0x277CBEC38];
      v14 = MEMORY[0x277CBEAC0];
      v15 = &v23;
      v16 = &v21;
    }

    else if (behavior == 1)
    {
      v17 = @"KeepWiFiPoweredAirplaneModeEnabled";
      v18 = @"KeepWiFiPoweredAirplaneMode";
      v19 = MEMORY[0x277CBEC38];
      v20 = MEMORY[0x277CBEC28];
      v14 = MEMORY[0x277CBEAC0];
      v15 = &v19;
      v16 = &v17;
    }

    else
    {
      if (behavior)
      {
        v6 = 0;
        goto LABEL_28;
      }

      v25 = @"KeepWiFiPoweredAirplaneModeEnabled";
      v26 = @"KeepWiFiPoweredAirplaneMode";
      v27 = MEMORY[0x277CBEC28];
      v28 = MEMORY[0x277CBEC28];
      v14 = MEMORY[0x277CBEAC0];
      v15 = &v27;
      v16 = &v25;
    }

    v6 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:{2, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28}];
LABEL_28:
    [(WFClient *)self _updateOSSpecificAttributes:v6];
    self->_airplaneModeBehavior = behavior;
    goto LABEL_29;
  }

  if (v11 && os_log_type_enabled(v6, v8))
  {
    if (behavior > 2)
    {
      v12 = &stru_2882E4AD8;
    }

    else
    {
      v12 = off_279EBE060[behavior];
    }

    *buf = 136315394;
    v30 = "[WFClient setAirplaneModeBehavior:]";
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&dword_273ECD000, v6, v8, "%s: stickiness already equal to %@", buf, 0x16u);
  }

LABEL_29:
}

- (void)setAutoJoinEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  v10 = WFCurrentLogLevel(v6, v8) > 2 && v5 != 0;
  if (enabledCopy)
  {
    if (v10 && os_log_type_enabled(v5, v7))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v5, v7, "Enabled Auto Join", buf, 2u);
    }

    [(WFClient *)self manager];
    WiFiManagerClientEnable();
  }

  else
  {
    if (v10 && os_log_type_enabled(v5, v7))
    {
      *v11 = 0;
      _os_log_impl(&dword_273ECD000, v5, v7, "Disabled Auto Join", v11, 2u);
    }

    [(WFClient *)self manager];
    WiFiManagerClientDisable();
  }
}

- (void)setAutoInstantHotspotJoinOption:(int64_t)option
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277D02B60]);
  [v5 setAutoHotspotMode:{-[WFClient _coreWiFiHotspotJoinOptionFromAutoHotspotMode:](self, "_coreWiFiHotspotJoinOptionFromAutoHotspotMode:", option)}];
  cInterface = [(WFClient *)self cInterface];
  v7 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_288304A80, 0}];
  v14 = 0;
  v8 = [cInterface applyUserSettings:v5 properties:v7 error:&v14];
  v9 = v14;

  if (v8)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:option];
    [(WFClient *)self _notifyWiFiPropertyChanged:@"kWFClientUserInterfacePropertyHotspotAJKey" value:v10];
  }

  else
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(1uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) && v10 && os_log_type_enabled(v10, v12))
    {
      *buf = 134218242;
      optionCopy = option;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_273ECD000, v10, v12, "failed to set auto hotspot join option to %ld, error='%@'", buf, 0x16u);
    }
  }

  self->_autoInstantHotspotJoinOption = option;
}

- (int64_t)_hotspotJoinOptionFromCoreWiFiAutoHotspotMode:(int64_t)mode
{
  if (mode > 3)
  {
    return 1;
  }

  else
  {
    return qword_273F75C00[mode];
  }
}

- (int64_t)_coreWiFiHotspotJoinOptionFromAutoHotspotMode:(int64_t)mode
{
  v3 = 1;
  if (mode)
  {
    v3 = 2;
  }

  if (mode == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (void)asyncUserAutoJoinState:(id)state
{
  stateCopy = state;
  stateMonitorQueue = [(WFClient *)self stateMonitorQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__WFClient_asyncUserAutoJoinState___block_invoke;
  v7[3] = &unk_279EBD9A8;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(stateMonitorQueue, v7);
}

void __35__WFClient_asyncUserAutoJoinState___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(4uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 4 && v2 && os_log_type_enabled(v2, v4))
  {
    *buf = 136315138;
    v17 = "[WFClient asyncUserAutoJoinState:]_block_invoke";
    _os_log_impl(&dword_273ECD000, v2, v4, "%s: Entering WFClient stateMonitorQueue", buf, 0xCu);
  }

  v6 = [*(a1 + 32) cInterface];
  v7 = [v6 userAutoJoinDisabled];

  if (v7 == [*(a1 + 32) userAutoJoinState])
  {
    v8 = v7 ^ 1;
    v9 = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(1uLL);
    v11 = v10;
    if (WFCurrentLogLevel(v10, v12) && v9 && os_log_type_enabled(v9, v11))
    {
      *buf = 136315394;
      v17 = "[WFClient asyncUserAutoJoinState:]_block_invoke";
      v18 = 1024;
      v19 = v8;
      _os_log_impl(&dword_273ECD000, v9, v11, "%s: user auto join state changed to %d", buf, 0x12u);
    }

    *(*(a1 + 32) + 23) = v8;
  }

  if (*(a1 + 40))
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __35__WFClient_asyncUserAutoJoinState___block_invoke_161;
    v14[3] = &unk_279EBDA98;
    v13 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v13;
    dispatch_async(MEMORY[0x277D85CD0], v14);
  }
}

uint64_t __35__WFClient_asyncUserAutoJoinState___block_invoke_161(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) userAutoJoinState];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)setUserAutoJoinState:(BOOL)state completion:(id)completion
{
  completionCopy = completion;
  v7 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__WFClient_setUserAutoJoinState_completion___block_invoke;
  block[3] = &unk_279EBDF50;
  stateCopy = state;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, block);
}

void __44__WFClient_setUserAutoJoinState_completion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
  {
    v6 = *(a1 + 48);
    v7 = *(*(a1 + 32) + 23);
    *buf = 136315650;
    v18 = "[WFClient setUserAutoJoinState:completion:]_block_invoke";
    v19 = 1024;
    v20 = v6;
    v21 = 1024;
    v22 = v7;
    _os_log_impl(&dword_273ECD000, v2, v4, "%s: setting user auto join state to %d (current state=%d)", buf, 0x18u);
  }

  *(*(a1 + 32) + 23) = *(a1 + 48);
  v8 = [*(a1 + 32) cInterface];
  v9 = *(a1 + 48);
  v16 = 0;
  [v8 setUserAutoJoinDisabled:(v9 & 1) == 0 error:&v16];
  v10 = v16;

  if (v10)
  {
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(1uLL);
    v13 = v12;
    if (WFCurrentLogLevel(v12, v14) && v11 && os_log_type_enabled(v11, v13))
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_273ECD000, v11, v13, "Failed to set user auto join state, error: %@", buf, 0xCu);
    }
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))();
  }
}

- (void)_userAutoJoinStateDidChange:(BOOL)change info:(id)info
{
  changeCopy = change;
  v18 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(1uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) && v7 && os_log_type_enabled(v7, v9))
  {
    v12 = 136315650;
    v13 = "[WFClient _userAutoJoinStateDidChange:info:]";
    v14 = 1024;
    v15 = changeCopy;
    v16 = 2112;
    v17 = infoCopy;
    _os_log_impl(&dword_273ECD000, v7, v9, "%s: enabled %d info %@", &v12, 0x1Cu);
  }

  self->_userAutoJoinState = changeCopy;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"WFClientUserAutoJoinStateChangedNotification" object:self];
}

- (void)_managedConfigurationDidChange:(id)change
{
  v21 = *MEMORY[0x277D85DE8];
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
      *buf = 136315394;
      v18 = "[WFClient _managedConfigurationDidChange:]";
      v19 = 2112;
      v20 = userInfo;
      _os_log_impl(&dword_273ECD000, v9, v7, "%s- userInfo %@", buf, 0x16u);
    }
  }

  v11 = dispatch_time(0, 500000000);
  serialClientQueue = [(WFClient *)self serialClientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__WFClient__managedConfigurationDidChange___block_invoke;
  block[3] = &unk_279EBCFE0;
  block[4] = self;
  dispatch_after(v11, serialClientQueue, block);

  v13 = dispatch_time(0, 100000000);
  serialClientQueue2 = [(WFClient *)self serialClientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43__WFClient__managedConfigurationDidChange___block_invoke_2;
  v15[3] = &unk_279EBCFE0;
  v15[4] = self;
  dispatch_after(v13, serialClientQueue2, v15);
}

- (void)_askToJoinNotification:(unsigned int)notification
{
  v3 = *&notification;
  v18 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    *buf = 136315394;
    v15 = "[WFClient _askToJoinNotification:]";
    v16 = 1024;
    v17 = v3;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s- notificationId %d", buf, 0x12u);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{v3, @"WFClientNotificationIdKey"}];
  v13 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"WFClientAskToJoinNotification" object:self userInfo:v10];
}

- (void)_trustNotificationWithID:(unsigned int)d network:(__WiFiNetwork *)network data:(id)data
{
  v6 = *&d;
  v25 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(3uLL);
  v11 = v10;
  if (WFCurrentLogLevel(v10, v12) >= 3 && v9 && os_log_type_enabled(v9, v11))
  {
    *buf = 136315906;
    v18 = "[WFClient _trustNotificationWithID:network:data:]";
    v19 = 1024;
    v20 = v6;
    v21 = 2112;
    networkCopy = network;
    v23 = 2112;
    v24 = dataCopy;
    _os_log_impl(&dword_273ECD000, v9, v11, "%s- notificationId %d network %@ data %@", buf, 0x26u);
  }

  v13 = MEMORY[0x277CBEB38];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
  v15 = [v13 dictionaryWithObjectsAndKeys:{v14, @"WFClientNotificationIdKey", 0}];

  if (network)
  {
    [v15 setObject:network forKey:@"WFClientNotificationNetworkKey"];
  }

  if (dataCopy)
  {
    [v15 setObject:dataCopy forKey:@"WFClientEAPTrustNotificationRequestedDataKey"];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"WFClientEAPTrustNotification" object:self userInfo:v15];
}

- (void)asyncMISState:(id)state
{
  stateCopy = state;
  stateMonitorQueue = [(WFClient *)self stateMonitorQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__WFClient_asyncMISState___block_invoke;
  v7[3] = &unk_279EBD9A8;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(stateMonitorQueue, v7);
}

void __26__WFClient_asyncMISState___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(4uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 4 && v2 && os_log_type_enabled(v2, v4))
  {
    *buf = 136315138;
    v15 = "[WFClient asyncMISState:]_block_invoke";
    _os_log_impl(&dword_273ECD000, v2, v4, "%s: Entering WFClient stateMonitorQueue", buf, 0xCu);
  }

  [*(a1 + 32) manager];
  MISState = WiFiManagerClientGetMISState();
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
  {
    *buf = 136315394;
    v15 = "[WFClient asyncMISState:]_block_invoke";
    v16 = 1024;
    v17 = MISState != 0;
    _os_log_impl(&dword_273ECD000, v7, v9, "%s: MIS state %d", buf, 0x12u);
  }

  if (*(a1 + 40))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __26__WFClient_asyncMISState___block_invoke_163;
    v11[3] = &unk_279EBD980;
    v12 = *(a1 + 40);
    v13 = MISState != 0;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }
}

- (void)setMISState:(BOOL)state
{
  stateCopy = state;
  v16 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    *buf = 136315394;
    v13 = "[WFClient setMISState:]";
    v14 = 1024;
    v15 = stateCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: setting MIS state %d", buf, 0x12u);
  }

  v9 = dispatch_get_global_queue(21, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __24__WFClient_setMISState___block_invoke;
  v10[3] = &unk_279EBDF00;
  v10[4] = self;
  v11 = stateCopy;
  dispatch_async(v9, v10);
}

uint64_t __24__WFClient_setMISState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v3 = *(a1 + 40);

  return MEMORY[0x282187888](v2, v3);
}

- (void)asyncMISDiscoveryState:(id)state
{
  stateCopy = state;
  stateMonitorQueue = [(WFClient *)self stateMonitorQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__WFClient_asyncMISDiscoveryState___block_invoke;
  v7[3] = &unk_279EBD9A8;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(stateMonitorQueue, v7);
}

void __35__WFClient_asyncMISDiscoveryState___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(4uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 4 && v2 && os_log_type_enabled(v2, v4))
  {
    *buf = 136315138;
    v15 = "[WFClient asyncMISDiscoveryState:]_block_invoke";
    _os_log_impl(&dword_273ECD000, v2, v4, "%s: Entering WFClient stateMonitorQueue", buf, 0xCu);
  }

  [*(a1 + 32) manager];
  MISDiscoveryState = WiFiManagerClientGetMISDiscoveryState();
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
  {
    *buf = 136315394;
    v15 = "[WFClient asyncMISDiscoveryState:]_block_invoke";
    v16 = 1024;
    v17 = MISDiscoveryState != 0;
    _os_log_impl(&dword_273ECD000, v7, v9, "%s: MIS discovery state %d", buf, 0x12u);
  }

  if (*(a1 + 40))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __35__WFClient_asyncMISDiscoveryState___block_invoke_164;
    v11[3] = &unk_279EBD980;
    v12 = *(a1 + 40);
    v13 = MISDiscoveryState != 0;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }
}

- (void)setMISDiscoveryState:(BOOL)state immediateDisable:(BOOL)disable
{
  disableCopy = disable;
  stateCopy = state;
  v21 = *MEMORY[0x277D85DE8];
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
  {
    *buf = 136315650;
    v16 = "[WFClient setMISDiscoveryState:immediateDisable:]";
    v17 = 1024;
    v18 = stateCopy;
    v19 = 1024;
    v20 = disableCopy;
    _os_log_impl(&dword_273ECD000, v7, v9, "%s: setting MIS discovery state %d (immediateDisable %d)", buf, 0x18u);
  }

  v11 = dispatch_get_global_queue(21, 0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__WFClient_setMISDiscoveryState_immediateDisable___block_invoke;
  v12[3] = &unk_279EBD620;
  v12[4] = self;
  v13 = stateCopy;
  v14 = disableCopy;
  dispatch_async(v11, v12);
}

uint64_t __50__WFClient_setMISDiscoveryState_immediateDisable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);

  return MEMORY[0x282187878](v2, v3, v4);
}

- (void)dispatchCertificateTrustAction:(int64_t)action profile:(id)profile
{
  v19 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7)
  {
    v11 = v7;
    if (os_log_type_enabled(v11, v9))
    {
      ssid = [profileCopy ssid];
      *v14 = 136315650;
      *&v14[4] = "[WFClient dispatchCertificateTrustAction:profile:]";
      v15 = 2048;
      actionCopy = action;
      v17 = 2112;
      v18 = ssid;
      _os_log_impl(&dword_273ECD000, v11, v9, "%s: dispatching trust action %lu for network %@", v14, 0x20u);
    }
  }

  if (profileCopy)
  {
    networkAttributes = [profileCopy networkAttributes];
    [(WFClient *)self manager];
    WiFiManagerClientDispatchNotificationResponse();
  }

  else
  {
    [WFClient dispatchCertificateTrustAction:v14 profile:?];
    networkAttributes = *v14;
  }
}

- (void)_joinRecommendationWithID:(unsigned int)d network:(__WiFiNetwork *)network
{
  v6 = MEMORY[0x277CBEB38];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&d];
  v10 = [v6 dictionaryWithObjectsAndKeys:{v7, @"WFClientNotificationIdKey", 0}];

  if (network)
  {
    v8 = [[WFNetworkProfile alloc] initWithNetworkRef:network];
    [v10 setObject:v8 forKey:@"WFClientNotificationNetworkProfileKey"];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"WFClientAutoJoinRecommendationNotification" object:self userInfo:v10];
}

- (void)dispatchJoinRecommendationAction:(int64_t)action profile:(id)profile
{
  actionCopy = action;
  v19 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7)
  {
    v11 = v7;
    if (os_log_type_enabled(v11, v9))
    {
      ssid = [profileCopy ssid];
      *v14 = 136315650;
      *&v14[4] = "[WFClient dispatchJoinRecommendationAction:profile:]";
      v15 = 1024;
      v16 = actionCopy;
      v17 = 2112;
      v18 = ssid;
      _os_log_impl(&dword_273ECD000, v11, v9, "%s: dispatching auto join action %d for network %@", v14, 0x1Cu);
    }
  }

  if (profileCopy)
  {
    networkAttributes = [profileCopy networkAttributes];
    [(WFClient *)self manager];
    WiFiManagerClientDispatchNotificationResponse();
  }

  else
  {
    [WFClient dispatchJoinRecommendationAction:v14 profile:?];
    networkAttributes = *v14;
  }
}

- (void)dispatchAskToJoinAction:(unint64_t)action notificationId:(unsigned int)id network:(id)network
{
  v24 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(3uLL);
  v11 = v10;
  if (WFCurrentLogLevel(v10, v12) >= 3 && v9 && os_log_type_enabled(v9, v11))
  {
    v18 = 136315650;
    v19 = "[WFClient dispatchAskToJoinAction:notificationId:network:]";
    v20 = 2048;
    actionCopy = action;
    v22 = 1024;
    idCopy = id;
    _os_log_impl(&dword_273ECD000, v9, v11, "%s: dispatching ask to join action %lu for notificationId %d", &v18, 0x1Cu);
  }

  if (action <= 2)
  {
    if (networkCopy)
    {
      goto LABEL_7;
    }

LABEL_13:
    attributes = 0;
    goto LABEL_14;
  }

  if (!networkCopy)
  {
    goto LABEL_13;
  }

LABEL_7:
  attributes = [networkCopy attributes];
  v14 = WFLogForCategory(0);
  v15 = OSLogForWFLogLevel(3uLL);
  v16 = v15;
  if (WFCurrentLogLevel(v15, v17) >= 3 && v14 && os_log_type_enabled(v14, v16))
  {
    v18 = 136315394;
    v19 = "[WFClient dispatchAskToJoinAction:notificationId:network:]";
    v20 = 2112;
    actionCopy = networkCopy;
    _os_log_impl(&dword_273ECD000, v14, v16, "%s: network %@", &v18, 0x16u);
  }

LABEL_14:
  [(WFClient *)self manager];
  WiFiManagerClientDispatchNotificationResponse();
}

- (void)setClientTypeAsForeground
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    v7 = 136315138;
    v8 = "[WFClient setClientTypeAsForeground]";
    _os_log_impl(&dword_273ECD000, v3, v5, "%s: Setting client type as foreground", &v7, 0xCu);
  }

  [(WFClient *)self manager];
  WiFiManagerClientSetType();
}

- (void)_notifyWiFiPropertyChanged:(id)changed value:(id)value
{
  v23 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  valueCopy = value;
  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(3uLL);
  v10 = v9;
  if (WFCurrentLogLevel(v9, v11) >= 3 && v8 && os_log_type_enabled(v8, v10))
  {
    *buf = 136315650;
    v18 = "[WFClient _notifyWiFiPropertyChanged:value:]";
    v19 = 2112;
    v20 = changedCopy;
    v21 = 2112;
    v22 = valueCopy;
    _os_log_impl(&dword_273ECD000, v8, v10, "%s: key='%@' value='%@'", buf, 0x20u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__WFClient__notifyWiFiPropertyChanged_value___block_invoke;
  block[3] = &unk_279EBD268;
  block[4] = self;
  v15 = changedCopy;
  v16 = valueCopy;
  v12 = valueCopy;
  v13 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __45__WFClient__notifyWiFiPropertyChanged_value___block_invoke(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = a1[4];
  v4 = a1[6];
  v6 = a1[5];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"WFClientUserInterfacePropertyChangedNotification" object:v3 userInfo:v5];
}

- (NSString)hardwareMACAddress
{
  [(WFClient *)self manager];
  v2 = WiFiManagerClientCopyProperty();
  if (!v2 || (v3 = v2, WFConvertEthernetNetworkAddressToString(v2), v4 = objc_claimAutoreleasedReturnValue(), CFRelease(v3), !v4))
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(1uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
    {
      *v10 = 0;
      _os_log_impl(&dword_273ECD000, v5, v7, "Fail to get hardware MAC Address!", v10, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (void)setRandomAddressModeForNetwork:(id)network mode:(unint64_t)mode randomMAC:(id)c
{
  networkCopy = network;
  cCopy = c;
  v10 = dispatch_get_global_queue(21, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__WFClient_setRandomAddressModeForNetwork_mode_randomMAC___block_invoke;
  v13[3] = &unk_279EBDFC8;
  v14 = cCopy;
  selfCopy = self;
  v16 = networkCopy;
  modeCopy = mode;
  v11 = networkCopy;
  v12 = cCopy;
  dispatch_async(v10, v13);
}

void __58__WFClient_setRandomAddressModeForNetwork_mode_randomMAC___block_invoke(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (!v2)
  {
    v16 = WiFiManagerClientSetPrivateMacPrefForScanRecord();
    v6 = WFLogForCategory(8uLL);
    v17 = OSLogForWFLogLevel(1uLL);
    v8 = v17;
    if (WFCurrentLogLevel(v17, v18))
    {
      v19 = v6 == 0;
    }

    else
    {
      v19 = 1;
    }

    v20 = !v19;
    if (v16)
    {
      if (v20 && os_log_type_enabled(v6, v8))
      {
        goto LABEL_13;
      }

      goto LABEL_31;
    }

    if (!v20 || !os_log_type_enabled(v6, v8))
    {
      goto LABEL_31;
    }

LABEL_29:
    v21 = a1[6];
    v22 = a1[7];
    v23 = a1[4];
    v24 = 138412802;
    v25 = v21;
    v26 = 2048;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    v15 = "failed to save private address for '%@' (mode=%lu, address='%@')";
    goto LABEL_30;
  }

  v3 = ether_aton([v2 UTF8String]);
  v4 = CFDataCreate(0, v3->octet, 6);
  v5 = WiFiManagerClientSetPrivateMacPrefForScanRecord();
  if (v4)
  {
    CFRelease(v4);
  }

  v6 = WFLogForCategory(8uLL);
  v7 = OSLogForWFLogLevel(1uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9))
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (!v5)
  {
    if (!v11 || !os_log_type_enabled(v6, v8))
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (v11 && os_log_type_enabled(v6, v8))
  {
LABEL_13:
    v12 = a1[6];
    v13 = a1[7];
    v14 = a1[4];
    v24 = 138412802;
    v25 = v12;
    v26 = 2048;
    v27 = v13;
    v28 = 2112;
    v29 = v14;
    v15 = "saved private address for '%@' (mode=%lu, address='%@')";
LABEL_30:
    _os_log_impl(&dword_273ECD000, v6, v8, v15, &v24, 0x20u);
  }

LABEL_31:
}

- (void)setEnableRandomMACForNetwork:(id)network enable:(BOOL)enable randomMAC:(id)c
{
  if (enable)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  [(WFClient *)self setRandomAddressModeForNetwork:network mode:v5 randomMAC:c];
}

- (id)newRandomMACAddressForSSID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(WFClient *)self manager];
  v5 = WiFiManagerClientCopyProperty();
  if (!v5)
  {
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(1uLL);
    v8 = v7;
    if (WFCurrentLogLevel(v7, v9) && v6 && os_log_type_enabled(v6, v8))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_273ECD000, v6, v8, "Fail to read hardwareData", &v24, 2u);
    }
  }

  [(WFClient *)self manager];
  v10 = WiFiManagerClientCopyProperty();
  if (!v10)
  {
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(1uLL);
    v13 = v12;
    if (WFCurrentLogLevel(v12, v14) && v11 && os_log_type_enabled(v11, v13))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_273ECD000, v11, v13, "Fail to read specifierData", &v24, 2u);
    }
  }

  [(WFClient *)self manager];
  v15 = WiFiManagerClientCopyProperty();
  PrivateMacAddress = WiFiManagerClientCreatePrivateMacAddress();
  v17 = PrivateMacAddress;
  if (PrivateMacAddress)
  {
    v18 = WFConvertEthernetNetworkAddressToString(PrivateMacAddress);
    if (!v5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v20 = WFLogForCategory(0);
  v21 = OSLogForWFLogLevel(1uLL);
  v22 = v21;
  if (WFCurrentLogLevel(v21, v23) && v20 && os_log_type_enabled(v20, v22))
  {
    v24 = 138412290;
    v25 = dCopy;
    _os_log_impl(&dword_273ECD000, v20, v22, "Fail to generate random MAC for ssid: %@", &v24, 0xCu);
  }

  v18 = 0;
  if (v5)
  {
LABEL_15:
    CFRelease(v5);
  }

LABEL_16:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v18;
}

- (void)_updateOSSpecificAttributes:(id)attributes
{
  v18 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v5 = objc_alloc_init(MEMORY[0x277D02B60]);
  [v5 setOSSpecificAttributes:attributesCopy];
  cInterface = [(WFClient *)self cInterface];
  v13 = 0;
  v7 = [cInterface applyUserSettings:v5 properties:0 error:&v13];
  v8 = v13;

  if ((v7 & 1) == 0)
  {
    v9 = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(1uLL);
    v11 = v10;
    if (WFCurrentLogLevel(v10, v12) && v9 && os_log_type_enabled(v9, v11))
    {
      *buf = 138412546;
      v15 = attributesCopy;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_273ECD000, v9, v11, "failed to set OSSpecificAttributes for %@, error='%@'", buf, 0x16u);
    }
  }
}

- (void)_unscheduleCallbacksWithManager:(__WiFiManagerClient *)manager
{
  if (manager)
  {
    callbackRunLoop = [(WFClient *)self callbackRunLoop];
    [callbackRunLoop getCFRunLoop];
    WiFiManagerClientUnscheduleFromRunLoop();

    [(WFClient *)self setCallbackRunLoop:0];
    OUTLINED_FUNCTION_0_7();
    WiFiManagerClientRegisterNotificationCallback();
    OUTLINED_FUNCTION_0_7();
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    OUTLINED_FUNCTION_0_7();
    WiFiManagerClientRegisterUserAutoJoinStateChangedCallback();
    OUTLINED_FUNCTION_0_7();
    WiFiManagerClientRegisterPreferredNetworksChangedCallback();
    v5 = OUTLINED_FUNCTION_0_7();

    MEMORY[0x282187820](v5, v6, v7);
  }
}

- (BOOL)_updateWiFiUIFlagsState
{
  v22 = *MEMORY[0x277D85DE8];
  if (!self->_manager)
  {
    return 0;
  }

  cInterface = [(WFClient *)self cInterface];
  wifiUIStateFlags = [cInterface wifiUIStateFlags];

  if (self->_wifiUIStateFlags == wifiUIStateFlags)
  {
    return 0;
  }

  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) >= 3 && v6 && os_log_type_enabled(v6, v8))
  {
    wifiUIStateFlags = self->_wifiUIStateFlags;
    *buf = 136315650;
    v17 = "[WFClient _updateWiFiUIFlagsState]";
    v18 = 2048;
    v19 = wifiUIStateFlags;
    v20 = 2048;
    v21 = wifiUIStateFlags;
    _os_log_impl(&dword_273ECD000, v6, v8, "%s: wifiUIStateFlags changed from %lu to %lu", buf, 0x20u);
  }

  self->_wifiUIStateFlags = wifiUIStateFlags;
  OUTLINED_FUNCTION_1_4();
  v12 = 3221225472;
  v13 = __35__WFClient__updateWiFiUIFlagsState__block_invoke;
  v14 = &unk_279EBCFE0;
  selfCopy = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  return 1;
}

- (void)_updatePowerState
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_manager)
  {
    cInterface = [(WFClient *)self cInterface];
    powerOn = [cInterface powerOn];

    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
    {
      *buf = 136315394;
      v15 = "[WFClient _updatePowerState]";
      v16 = 1024;
      v17 = powerOn;
      _os_log_impl(&dword_273ECD000, v5, v7, "%s: current power %d", buf, 0x12u);
    }

    if (self->_powered != powerOn)
    {
      self->_powered = powerOn;
      OUTLINED_FUNCTION_1_4();
      v10 = 3221225472;
      v11 = __29__WFClient__updatePowerState__block_invoke;
      v12 = &unk_279EBCFE0;
      selfCopy = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)initWithCallbackRunLoop:(void *)a1 .cold.1(void *a1)
{
  WFLogForCategory(0);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel(v3, v4) && v1 && OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_2_3();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
  }

  *a1 = v1;
}

- (void)initWithCallbackRunLoop:(void *)a1 .cold.2(void *a1)
{
  WFLogForCategory(0);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel(v3, v4) && v1 && OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_2_3();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
  }

  *a1 = v1;
}

- (void)initWithCallbackRunLoop:(void *)a1 .cold.3(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    CFRelease(v2);
    a1[11] = 0;
  }
}

- (void)dispatchCertificateTrustAction:(void *)a1 profile:.cold.1(void *a1)
{
  WFLogForCategory(0);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel(v3, v4) && v1 && OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_2_3();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  *a1 = v1;
}

- (void)dispatchJoinRecommendationAction:(void *)a1 profile:.cold.1(void *a1)
{
  WFLogForCategory(0);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel(v3, v4) && v1 && OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_2_3();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  *a1 = v1;
}

@end