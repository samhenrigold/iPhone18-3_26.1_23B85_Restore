@interface WFHealthManager
- (BOOL)currentNetworkHasNoInternetConnection;
- (WFHealthManager)initWithInterface:(id)interface;
- (void)_updateCurrentNetworkIssues;
- (void)currentNetworkDidChange:(id)change;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)runNoInternetDiagnostics;
- (void)runNoInternetDiagnosticsAfter:(int64_t)after;
- (void)setNetwork:(id)network;
@end

@implementation WFHealthManager

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  evaluator = [(WFHealthManager *)self evaluator];
  [evaluator removeObserver:self forKeyPath:@"path"];

  v5.receiver = self;
  v5.super_class = WFHealthManager;
  [(WFHealthManager *)&v5 dealloc];
}

- (void)setNetwork:(id)network
{
  v23 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  v6 = [networkCopy isEqual:self->_network];
  v7 = WFLogForCategory(0);
  if (v6)
  {
    v8 = OSLogForWFLogLevel(4uLL);
    v9 = v8;
    if (WFCurrentLogLevel(v8, v10) >= 4 && v7)
    {
      v11 = v7;
      if (os_log_type_enabled(v11, v9))
      {
        networkName = [networkCopy networkName];
        v19 = 136315394;
        v20 = "[WFHealthManager setNetwork:]";
        v21 = 2112;
        v22 = networkName;
        _os_log_impl(&dword_273ECD000, v11, v9, "%s-No change to network, current network: %@", &v19, 0x16u);
      }
    }
  }

  else
  {
    v13 = OSLogForWFLogLevel(3uLL);
    v14 = v13;
    if (WFCurrentLogLevel(v13, v15) >= 3 && v7 && os_log_type_enabled(v7, v14))
    {
      v19 = 136315394;
      v20 = "[WFHealthManager setNetwork:]";
      v21 = 2112;
      v22 = networkCopy;
      _os_log_impl(&dword_273ECD000, v7, v14, "%s- %@", &v19, 0x16u);
    }

    [(WFHealthManager *)self setFailNoInternetDiagnosticsTests:0];
    if (!networkCopy)
    {
      noInternetTestQueue = [(WFHealthManager *)self noInternetTestQueue];
      [noInternetTestQueue cancelAllOperations];
    }

    objc_storeStrong(&self->_network, network);
    self->_failNoInternetDiagnosticsTests = 0;
    currentNetworkIssues = self->_currentNetworkIssues;
    self->_currentNetworkIssues = 0;

    failedTestsIDs = self->_failedTestsIDs;
    self->_failedTestsIDs = MEMORY[0x277CBEBF8];

    [(WFHealthManager *)self _updateCurrentNetworkIssues];
  }
}

- (void)runNoInternetDiagnosticsAfter:(int64_t)after
{
  v23 = *MEMORY[0x277D85DE8];
  noInternetTestQueue = [(WFHealthManager *)self noInternetTestQueue];
  operationCount = [noInternetTestQueue operationCount];

  if (!operationCount)
  {
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(3uLL);
    v9 = v8;
    if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
    {
      *buf = 136315394;
      v20 = "[WFHealthManager runNoInternetDiagnosticsAfter:]";
      v21 = 2048;
      afterCopy = after;
      _os_log_impl(&dword_273ECD000, v7, v9, "%s: queuing no internet test after %lusecs", buf, 0x16u);
    }

    [(WFHealthManager *)self forceUpdateNetworkIssues];
    v11 = objc_alloc_init(MEMORY[0x277CCA8C8]);
    objc_initWeak(buf, self);
    objc_initWeak(&location, v11);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __49__WFHealthManager_runNoInternetDiagnosticsAfter___block_invoke;
    v15 = &unk_279EBDDB0;
    v17[1] = after;
    objc_copyWeak(&v16, &location);
    objc_copyWeak(v17, buf);
    [v11 addExecutionBlock:&v12];
    [(NSOperationQueue *)self->_noInternetTestQueue addOperation:v11, v12, v13, v14, v15];
    objc_destroyWeak(v17);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }
}

void __49__WFHealthManager_runNoInternetDiagnosticsAfter___block_invoke(uint64_t a1)
{
  sleep(*(a1 + 48));
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isCancelled];

  if (v3)
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(4uLL);
    v6 = v5;
    if (WFCurrentLogLevel(v5, v7) >= 4 && v4 && os_log_type_enabled(v4, v6))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v4, v6, "no internet test cancelled", buf, 2u);
    }
  }

  else
  {
    v8 = objc_loadWeakRetained((a1 + 40));
    [v8 runNoInternetDiagnostics];
  }
}

- (void)runNoInternetDiagnostics
{
  interface = [(WFHealthManager *)self interface];
  isReadyForConnectionVelocityTest = [interface isReadyForConnectionVelocityTest];

  if (isReadyForConnectionVelocityTest)
  {
    interface2 = [(WFHealthManager *)self interface];
    currentNetwork = [interface2 currentNetwork];
    ssid = [currentNetwork ssid];

    if (!ssid)
    {
      network = [(WFHealthManager *)self network];
      ssid = [network networkName];
    }

    [(WFHealthManager *)self setFailNoInternetDiagnosticsTests:0];
    network2 = [(WFHealthManager *)self network];
    isCarPlay = [network2 isCarPlay];

    if ((isCarPlay & 1) == 0)
    {
      if (ssid)
      {
        objc_initWeak(location, self);
        diagnosticsManager = [(WFHealthManager *)self diagnosticsManager];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __43__WFHealthManager_runNoInternetDiagnostics__block_invoke_21;
        v20[3] = &unk_279EBDDD8;
        objc_copyWeak(&v21, location);
        [diagnosticsManager runNoInternetDiagnosticsFor:ssid withUpdate:&__block_literal_global_4 result:v20];

        objc_destroyWeak(&v21);
        objc_destroyWeak(location);
      }

      else
      {
        v16 = WFLogForCategory(0);
        v17 = OSLogForWFLogLevel(1uLL);
        v18 = v17;
        if (WFCurrentLogLevel(v17, v19) && v16 && os_log_type_enabled(v16, v18))
        {
          LOWORD(location[0]) = 0;
          _os_log_impl(&dword_273ECD000, v16, v18, "Not running no internet test because ssid is nil!", location, 2u);
        }

        [(WFHealthManager *)self forceUpdateNetworkIssues];
      }
    }
  }

  else
  {
    v12 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(1uLL);
    v14 = v13;
    if (WFCurrentLogLevel(v13, v15) && v12 && os_log_type_enabled(v12, v14))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_273ECD000, v12, v14, "Not ready for velocity test, updating other health issues.", location, 2u);
    }

    [(WFHealthManager *)self forceUpdateNetworkIssues];
  }
}

void __43__WFHealthManager_runNoInternetDiagnostics__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    v7 = 138412290;
    v8 = v2;
    _os_log_impl(&dword_273ECD000, v3, v5, "Diagnostics event received: %@", &v7, 0xCu);
  }
}

void __43__WFHealthManager_runNoInternetDiagnostics__block_invoke_21(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (!v7)
  {
    v18 = WFLogForCategory(0);
    v19 = OSLogForWFLogLevel(3uLL);
    v20 = v19;
    if (WFCurrentLogLevel(v19, v21) < 3 || !v18 || !os_log_type_enabled(v18, v20))
    {
      goto LABEL_20;
    }

    v28 = 0;
    v22 = "Not connected to a network, canceling following tests...";
    v23 = &v28;
    goto LABEL_19;
  }

  v10 = [WeakRetained network];
  v11 = [v10 networkName];
  v12 = [v7 isEqualToString:v11];

  if ((v12 & 1) == 0)
  {
    v18 = WFLogForCategory(0);
    v24 = OSLogForWFLogLevel(1uLL);
    v20 = v24;
    if (!WFCurrentLogLevel(v24, v25) || !v18 || !os_log_type_enabled(v18, v20))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v22 = "Network has changed before no internet test result comes back! Discarding test results...";
    v23 = buf;
LABEL_19:
    _os_log_impl(&dword_273ECD000, v18, v20, v22, v23, 2u);
LABEL_20:

    goto LABEL_21;
  }

  if (v6 && ([v6 didPassTest] & 1) == 0)
  {
    [v9 setFailNoInternetDiagnosticsTests:1];
    v13 = WFLogForCategory(0);
    v14 = OSLogForWFLogLevel(3uLL);
    v15 = v14;
    if (WFCurrentLogLevel(v14, v16) >= 3 && v13 && os_log_type_enabled(v13, v15))
    {
      *v26 = 0;
      _os_log_impl(&dword_273ECD000, v13, v15, "Velocity no internet failed, reschedule another one after 10 second!", v26, 2u);
    }

    [v9 runNoInternetDiagnosticsAfter:10];
    [v9 setCompletedVelocityTestTimes:{objc_msgSend(v9, "completedVelocityTestTimes") + 1}];
    [v9 setShouldFileNewMetrics:1];
    v17 = [v6 failedTests];
    [v9 setFailedTestsIDs:v17];
  }

  [v9 _updateCurrentNetworkIssues];
LABEL_21:
}

- (void)currentNetworkDidChange:(id)change
{
  interface = [(WFHealthManager *)self interface];
  currentNetwork = [interface currentNetwork];
  scanResult = [currentNetwork scanResult];
  [(WFHealthManager *)self setNetwork:scanResult];
}

void __46__WFHealthManager__updateCurrentNetworkIssues__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFHealthManagerHealthIssuesDidChangeNotification" object:*(a1 + 32)];
}

- (BOOL)currentNetworkHasNoInternetConnection
{
  v50 = *MEMORY[0x277D85DE8];
  if (![(WFHealthManager *)self failNoInternetDiagnosticsTests])
  {
    interface = [(WFHealthManager *)self interface];
    if ([interface ipv4SelfAssigned])
    {
      hasNoGatewayIP = 1;
    }

    else
    {
      interface2 = [(WFHealthManager *)self interface];
      hasNoGatewayIP = [interface2 hasNoGatewayIP];
    }

    v16 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(4uLL);
    v18 = v17;
    if (WFCurrentLogLevel(v17, v19) >= 4 && v16 && os_log_type_enabled(v16, v18))
    {
      v20 = "yes";
      if (hasNoGatewayIP)
      {
        v20 = "no";
      }

      v44 = 136315394;
      v45 = "[WFHealthManager currentNetworkHasNoInternetConnection]";
      v46 = 2080;
      v47 = v20;
      _os_log_impl(&dword_273ECD000, v16, v18, "%s using ipv4 state internet connection -> %s", &v44, 0x16u);
    }

    if ((hasNoGatewayIP & 1) == 0)
    {
      network = [(WFHealthManager *)self network];
      carPlayNetworkType = [network carPlayNetworkType];

      if (carPlayNetworkType != 2)
      {
        LOBYTE(hasNoGatewayIP) = 0;
        return hasNoGatewayIP;
      }
    }

    evaluator = [(WFHealthManager *)self evaluator];
    path = [evaluator path];

    status = [path status];
    if (status == 2)
    {
      v31 = +[WFMetricsManager sharedManager];
      completedVelocityTestTimes = [(WFHealthManager *)self completedVelocityTestTimes];
      network2 = [(WFHealthManager *)self network];
      networkName = [network2 networkName];
      LOBYTE(hasNoGatewayIP) = 1;
      v35 = [WFHealthUIEvent noInternetEventWithTestTimes:completedVelocityTestTimes didPassTest:1 failedVelocityTests:MEMORY[0x277CBEBF8] ssid:networkName];
      [v31 processEvent:v35];

      v27 = WFLogForCategory(0);
      v36 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel(v36, v37) < 3 || !v27 || !os_log_type_enabled(v27, v36))
      {
        goto LABEL_37;
      }

      v44 = 136315650;
      v45 = "[WFHealthManager currentNetworkHasNoInternetConnection]";
      v46 = 2048;
      v47 = 2;
      v48 = 2112;
      v49 = path;
      v38 = "%s NWPathEvalutaor state unsatisfied - %lu (path: %@)";
      v39 = v27;
      v40 = v36;
    }

    else
    {
      v26 = status;
      if (status == 1)
      {
        v27 = WFLogForCategory(0);
        v28 = OSLogForWFLogLevel(3uLL);
        v29 = v28;
        LOBYTE(hasNoGatewayIP) = 0;
        if (WFCurrentLogLevel(v28, v30) >= 3 && v27)
        {
          if (os_log_type_enabled(v27, v29))
          {
            v44 = 136315138;
            v45 = "[WFHealthManager currentNetworkHasNoInternetConnection]";
            _os_log_impl(&dword_273ECD000, v27, v29, "%s falling back to NWPathEvaluator for internet connection -> YES", &v44, 0xCu);
          }

          LOBYTE(hasNoGatewayIP) = 0;
        }

        goto LABEL_37;
      }

      v27 = WFLogForCategory(0);
      v41 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel(v41, v42) < 3 || !v27 || !os_log_type_enabled(v27, v41))
      {
LABEL_37:

        return hasNoGatewayIP;
      }

      v44 = 136315650;
      v45 = "[WFHealthManager currentNetworkHasNoInternetConnection]";
      v46 = 2048;
      v47 = v26;
      v48 = 2112;
      v49 = path;
      v38 = "%s NWPathEvalutaor state invalid - %lu (path: %@)";
      v39 = v27;
      v40 = v41;
    }

    _os_log_impl(&dword_273ECD000, v39, v40, v38, &v44, 0x20u);
    goto LABEL_37;
  }

  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(1uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) && v3 && os_log_type_enabled(v3, v5))
  {
    LOWORD(v44) = 0;
    _os_log_impl(&dword_273ECD000, v3, v5, "No internet warning generated becuase Velocity tests failed", &v44, 2u);
  }

  if ([(WFHealthManager *)self shouldFileNewMetrics])
  {
    v7 = +[WFMetricsManager sharedManager];
    completedVelocityTestTimes2 = [(WFHealthManager *)self completedVelocityTestTimes];
    failedTestsIDs = [(WFHealthManager *)self failedTestsIDs];
    network3 = [(WFHealthManager *)self network];
    networkName2 = [network3 networkName];
    v12 = [WFHealthUIEvent noInternetEventWithTestTimes:completedVelocityTestTimes2 didPassTest:0 failedVelocityTests:failedTestsIDs ssid:networkName2];
    [v7 processEvent:v12];
  }

  [(WFHealthManager *)self setShouldFileNewMetrics:0];
  LOBYTE(hasNoGatewayIP) = 1;
  return hasNoGatewayIP;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v25 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (context == &kWFHealthManagerContext)
  {
    if ([path isEqualToString:@"path"])
    {
      v11 = [changeCopy valueForKey:*MEMORY[0x277CCA300]];
      v12 = [changeCopy valueForKey:*MEMORY[0x277CCA2F0]];
      status = [v11 status];
      if (status != [v12 status])
      {
        v14 = WFLogForCategory(0);
        v15 = OSLogForWFLogLevel(3uLL);
        v16 = v15;
        if (WFCurrentLogLevel(v15, v17) >= 3 && v14)
        {
          v18 = v14;
          if (os_log_type_enabled(v18, v16))
          {
            *buf = 134218240;
            status2 = [v11 status];
            v23 = 2048;
            status3 = [v12 status];
            _os_log_impl(&dword_273ECD000, v18, v16, "Network Evaluator Path Changed: oldValue.status %ld, newValue.status %ld", buf, 0x16u);
          }
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __66__WFHealthManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
        block[3] = &unk_279EBCFE0;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = WFHealthManager;
    [(WFHealthManager *)&v20 observeValueForKeyPath:path ofObject:object change:changeCopy context:context];
  }
}

- (WFHealthManager)initWithInterface:(id)interface
{
  interfaceCopy = interface;
  v26.receiver = self;
  v26.super_class = WFHealthManager;
  v6 = [(WFHealthManager *)&v26 init];
  v7 = v6;
  if (!v6)
  {
    v11 = 0;
    defaultCenter2 = 0;
    goto LABEL_7;
  }

  objc_storeStrong(&v6->_interface, interface);
  interface = v7->_interface;
  if (!interface)
  {
    v11 = 0;
LABEL_10:
    defaultCenter2 = v7;
    v7 = 0;
    goto LABEL_7;
  }

  currentNetwork = [(WFInterface *)interface currentNetwork];
  scanResult = [currentNetwork scanResult];
  [(WFHealthManager *)v7 setNetwork:scanResult];

  v11 = objc_alloc_init(MEMORY[0x277CD91F0]);
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = objc_alloc(MEMORY[0x277CD91D8]);
  interfaceName = [(WFInterface *)v7->_interface interfaceName];
  v14 = [v12 initWithInterfaceName:interfaceName];
  [v11 setRequiredInterface:v14];

  v15 = [objc_alloc(MEMORY[0x277CD9200]) initWithEndpoint:0 parameters:v11];
  evaluator = v7->_evaluator;
  v7->_evaluator = v15;

  v17 = v7->_evaluator;
  if (!v17)
  {
    goto LABEL_10;
  }

  [(NWPathEvaluator *)v17 addObserver:v7 forKeyPath:@"path" options:3 context:kWFHealthManagerContext];
  v18 = objc_alloc_init(MEMORY[0x277CCABD8]);
  noInternetTestQueue = v7->_noInternetTestQueue;
  v7->_noInternetTestQueue = v18;

  v20 = v7->_noInternetTestQueue;
  if (!v20)
  {
    goto LABEL_10;
  }

  [(NSOperationQueue *)v20 setMaxConcurrentOperationCount:1];
  v7->_completedVelocityTestTimes = 0;
  v21 = objc_alloc_init(WFDiagnosticsManager);
  diagnosticsManager = v7->_diagnosticsManager;
  v7->_diagnosticsManager = v21;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v7 selector:sel_currentNetworkDidChange_ name:@"WFInterfaceNetworkChangedNotification" object:v7->_interface];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:v7 selector:sel_linkQualityDidChange_ name:@"WFInterfaceLinkQualityNotification" object:v7->_interface];
LABEL_7:

  return v7;
}

- (void)_updateCurrentNetworkIssues
{
  v52 = *MEMORY[0x277D85DE8];
  interface = [(WFHealthManager *)self interface];
  currentNetwork = [interface currentNetwork];
  matchingKnownNetworkProfile = [currentNetwork matchingKnownNetworkProfile];

  network = [(WFHealthManager *)self network];

  if (!network)
  {
LABEL_48:
    v9 = 0;
    currentNetworkIssues = self->_currentNetworkIssues;
    if (!currentNetworkIssues)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

  network2 = [(WFHealthManager *)self network];
  supportsWiFiHealth = [network2 supportsWiFiHealth];

  if (!supportsWiFiHealth)
  {
    if ([0 count])
    {
      goto LABEL_48;
    }

    v9 = 0;
    goto LABEL_47;
  }

  v9 = [MEMORY[0x277CBEB58] set];
  network3 = [(WFHealthManager *)self network];
  configurationIssues = [network3 configurationIssues];

  if ([configurationIssues count])
  {
    [configurationIssues allObjects];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_5() addObjectsFromArray:?];
  }

  if ([(WFHealthManager *)self currentNetworkHasNoInternetConnection])
  {
    [MEMORY[0x277D7B9C0] issueWithType:1];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_5() addObject:?];
  }

  acceptedEAPTypes = [matchingKnownNetworkProfile acceptedEAPTypes];
  if ([acceptedEAPTypes count] == 1)
  {
    acceptedEAPTypes2 = [matchingKnownNetworkProfile acceptedEAPTypes];
    v14 = [acceptedEAPTypes2 containsObject:&unk_288304A08];
  }

  else
  {
    v14 = 0;
  }

  network4 = [(WFHealthManager *)self network];
  if (![network4 isEAP] || !matchingKnownNetworkProfile || objc_msgSend(matchingKnownNetworkProfile, "addReason") != 10)
  {
    goto LABEL_18;
  }

  if (v14)
  {
    network4 = [matchingKnownNetworkProfile TLSTrustedServerNames];

    if (!network4)
    {
      [MEMORY[0x277D7B9C0] issueWithType:0x40000];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_5() addObject:?];
LABEL_18:
    }
  }

  interface2 = [(WFHealthManager *)self interface];
  currentNetwork2 = [interface2 currentNetwork];
  matchingKnownNetworkProfile2 = [currentNetwork2 matchingKnownNetworkProfile];
  isStandalone6G = [matchingKnownNetworkProfile2 isStandalone6G];

  if (isStandalone6G)
  {
    if ([(WFHealthManager *)self isChinaDevice])
    {
      [MEMORY[0x277D7B9D0] limitedNetwork_CH];
    }

    else
    {
      [MEMORY[0x277D7B9D0] limitedNetwork];
    }

    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_5() addObject:?];
  }

  interface3 = [(WFHealthManager *)self interface];
  if ([interface3 currentNetworkIsDirected])
  {

    goto LABEL_29;
  }

  network5 = [(WFHealthManager *)self network];
  isHidden = [network5 isHidden];

  if ((isHidden & 1) != 0 || (-[WFHealthManager interface](self, "interface"), v23 = objc_claimAutoreleasedReturnValue(), [v23 currentNetwork], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "matchingKnownNetworkProfile"), v25 = objc_claimAutoreleasedReturnValue(), v25, v24, v23, v25) && (-[WFHealthManager interface](self, "interface"), interface3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(interface3, "currentNetwork"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "matchingKnownNetworkProfile"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "hiddenState"), v27, v26, interface3, v28 == 1))
  {
LABEL_29:
    [MEMORY[0x277D7B9C0] issueWithType:8];
    objc_claimAutoreleasedReturnValue();
    v29 = [OUTLINED_FUNCTION_0_5() containsObject:?];

    if (v29)
    {
      [MEMORY[0x277D7B9C0] issueWithType:64];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_5() addObject:?];

      v30 = MEMORY[0x277D7B9C0];
      v31 = 8;
    }

    else
    {
      [MEMORY[0x277D7B9C0] issueWithType:2];
      objc_claimAutoreleasedReturnValue();
      v32 = [OUTLINED_FUNCTION_0_5() containsObject:?];

      if (v32)
      {
        [MEMORY[0x277D7B9C0] issueWithType:256];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_0_5() addObject:?];

        v30 = MEMORY[0x277D7B9C0];
        v31 = 2;
      }

      else
      {
        [MEMORY[0x277D7B9C0] issueWithType:4];
        objc_claimAutoreleasedReturnValue();
        v33 = [OUTLINED_FUNCTION_0_5() containsObject:?];

        if (v33)
        {
          [MEMORY[0x277D7B9C0] issueWithType:128];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_0_5() addObject:?];

          v30 = MEMORY[0x277D7B9C0];
          v31 = 4;
        }

        else
        {
          [MEMORY[0x277D7B9C0] issueWithType:2048];
          objc_claimAutoreleasedReturnValue();
          v34 = [OUTLINED_FUNCTION_0_5() containsObject:?];

          if (!v34)
          {
            [MEMORY[0x277D7B9C0] issueWithType:0x4000];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_0_5() addObject:?];
            goto LABEL_38;
          }

          [MEMORY[0x277D7B9C0] issueWithType:4096];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_0_5() addObject:?];

          v30 = MEMORY[0x277D7B9C0];
          v31 = 2048;
        }
      }
    }

    [v30 issueWithType:v31];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_5() removeObject:?];
LABEL_38:
  }

  interface4 = [(WFHealthManager *)self interface];
  currentNetwork3 = [interface4 currentNetwork];
  matchingKnownNetworkProfile3 = [currentNetwork3 matchingKnownNetworkProfile];
  deploymentIssues = [matchingKnownNetworkProfile3 deploymentIssues];

  if (deploymentIssues)
  {
    if (deploymentIssues)
    {
      v39 = [MEMORY[0x277D7B9C0] issueWithType:0x100000];
      [v9 addObject:v39];
    }

    if ((deploymentIssues & 4) != 0)
    {
      [MEMORY[0x277D7B9C0] issueWithType:0x400000];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_5() addObject:?];
    }
  }

  if (![v9 count])
  {
LABEL_47:

    goto LABEL_48;
  }

  if (!v9)
  {
    goto LABEL_48;
  }

  currentNetworkIssues = self->_currentNetworkIssues;
LABEL_49:
  if (([v9 isEqualToSet:currentNetworkIssues] & 1) == 0)
  {
    v41 = WFLogForCategory(0);
    v42 = OSLogForWFLogLevel(3uLL);
    v43 = v42;
    if (WFCurrentLogLevel(v42, v44) >= 3 && v41 && os_log_type_enabled(v41, v43))
    {
      *buf = 136315394;
      v49 = "[WFHealthManager _updateCurrentNetworkIssues]";
      v50 = 2112;
      v51 = v9;
      _os_log_impl(&dword_273ECD000, v41, v43, "%s- change to health issues %@", buf, 0x16u);
    }

    v45 = [v9 count];
    if (v45)
    {
      v45 = v9;
    }

    v46 = self->_currentNetworkIssues;
    self->_currentNetworkIssues = v45;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__WFHealthManager__updateCurrentNetworkIssues__block_invoke;
    block[3] = &unk_279EBCFE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

LABEL_57:
}

@end