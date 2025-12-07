@interface WFNetworkListController
- (BOOL)_canPromptForCarPlay;
- (BOOL)_canPromptForInstantHotspot;
- (BOOL)_canStartAssociationToNetwork:(id)network;
- (BOOL)_canStartAssociationToUserSuppliedNetwork:(id)network;
- (BOOL)_disablePersonalHotspot;
- (BOOL)_handleAccessoryDetailURL:(id)l;
- (BOOL)_handleCurrentNetworkDetailsURL:(id)l;
- (BOOL)_isActiveCarPlaySession;
- (BOOL)_isChannelAllowedForScanPerCurrentLocale:(int64_t)locale;
- (BOOL)_shouldPauseScanning;
- (BOOL)_shouldShowLowDataModeForProfile:(id)profile;
- (BOOL)_supportsWiFiPasswordSharing;
- (BOOL)_useLegacySettingsUI;
- (BOOL)airportSettingsViewControllerCurrentNetworkConnectionIsProblematic:(id)problematic;
- (BOOL)airportSettingsViewControllerShouldShowDiagnosticsMode:(id)mode;
- (BOOL)airportSettingsViewControllerShouldShowKnownNetworks:(id)networks;
- (BOOL)airportSettingsViewControllerShouldShowNANUI:(id)i;
- (BOOL)handleURL:(id)l;
- (BOOL)isAirPortSettings;
- (BOOL)isAssociating;
- (BOOL)isSetup;
- (BOOL)networkListViewControllerCurrentPowerState:(id)state;
- (BOOL)networkListViewControllerIsManagedAppleID:(id)d;
- (BOOL)networkListViewControllerNetworkRestrictionActive:(id)active;
- (BOOL)networkListViewControllerPowerModificationDisabled:(id)disabled;
- (BOOL)networkListViewControllerWAPIEnabled:(id)enabled;
- (BOOL)removeKnownNetworks:(id)networks;
- (WFKnownNetworksProvider)knownNetworksManager;
- (WFNetworkListController)init;
- (WFNetworkListController)initWithViewController:(id)controller viewProvider:(id)provider client:(id)client;
- (WFNetworkListController)initWithViewController:(id)controller viewProvider:(id)provider client:(id)client knownNetworksManager:(id)manager;
- (id)_convertToHexString:(id)string;
- (id)_hardwareMACAddress;
- (id)_sortedHealthRecommendations;
- (id)_sortedHealthRecommendations:(BOOL)recommendations;
- (id)airportSettingsViewController:(id)controller unconfiguredAccessoriesGroupHeaderTitle:(id)title;
- (id)editableKnownNetworks;
- (id)healthRecommendations:(BOOL)recommendations;
- (id)keyValueDictionaryForURL:(id)l;
- (id)managedKnownNetworks;
- (id)networkListViewController:(id)controller showSettingsForNetwork:(id)network context:(int64_t)context scrollToCellType:(unint64_t)type controller:(id)a7;
- (id)passwordToDisplayForSSID:(id)d;
- (id)scanManager:(id)manager filterScanResults:(id)results;
- (int64_t)_defaultAuthTraits;
- (int64_t)airportSettingsViewControllerAskToJoinMode:(id)mode;
- (int64_t)networkListViewControllerAutoInstantHotspotOption:(id)option;
- (unint64_t)_getLockdownModeSecurityType:(id)type;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_applicationWillResignActive:(id)active;
- (void)_associateToEnterpriseNetwork:(id)network profile:(id)profile;
- (void)_associateToHS20Network:(id)network;
- (void)_associateToHotspotDevice:(id)device;
- (void)_associateToNetwork:(id)network profile:(id)profile;
- (void)_associateToScanRecord:(id)record;
- (void)_associateToScanRecord:(id)record profile:(id)profile;
- (void)_associateToUnconfiguredAccessory:(id)accessory;
- (void)_associateToUserSuppliedNetwork:(id)network;
- (void)_associateToUserSuppliedNetworkHelper:(id)helper networks:(id)networks;
- (void)_associationDidFinish:(BOOL)finish error:(id)error network:(id)network;
- (void)_associationWillStart:(id)start;
- (void)_cellularOutrankNotification:(id)notification;
- (void)_cleanUpStatesForDismissal;
- (void)_clientRestartedNotification:(id)notification;
- (void)_dismissCredentialsViewControllerWithContext:(id)context;
- (void)_dismissDetailsViewControllerWithContext:(id)context;
- (void)_dismissErrorViewControllerWithContext:(id)context;
- (void)_dismissLockdownModeViewControllerWithContext:(id)context;
- (void)_dismissOtherNetworkViewControllerWithContext:(id)context;
- (void)_dismissTrustViewControllerWithContext:(id)context;
- (void)_dismissViewControllerForContext:(id)context;
- (void)_dismissVisibleContext;
- (void)_downloadHomeApp;
- (void)_handleAssociationError:(id)error network:(id)network profile:(id)profile securityMode:(int64_t)mode associationContext:(id)context;
- (void)_handleAssociationResult:(BOOL)result error:(id)error network:(id)network profile:(id)profile shouldSaveProfile:(BOOL)saveProfile;
- (void)_interfaceDidBecomeAvailable:(id)available;
- (void)_ipStateDidChange:(id)change;
- (void)_managedAppleIDStateDidChange:(id)change;
- (void)_networkDidChangeNotification:(id)notification;
- (void)_networkHealthIssuesDidChange:(id)change;
- (void)_networkLinkQualityDidChangeNotification:(id)notification;
- (void)_networkRestrictionStateDidChange:(id)change;
- (void)_openHomeAppForNetwork:(id)network;
- (void)_openURL:(id)l;
- (void)_pauseScanning;
- (void)_powerModificationDisableStateDidChange:(id)change;
- (void)_powerStateChanged;
- (void)_preferredNetworksDidChange:(id)change;
- (void)_presentCellularOutrankAlertForNetwork:(id)network privateCellular:(BOOL)cellular;
- (void)_presentContext:(id)context contextType:(unint64_t)type;
- (void)_presentDeveloperOutrankAlertForNetwork:(id)network;
- (void)_presentHotspotErrorContextWithDevice:(id)device hotspotError:(id)error failure:(int64_t)failure;
- (void)_promptCredentialsForNetwork:(id)network profile:(id)profile;
- (void)_promptCredentialsForNetworkCancelled:(id)cancelled;
- (void)_promptForSecureWACDevice:(id)device;
- (void)_promptToDisableCarPlayForNetworkName:(id)name handler:(id)handler;
- (void)_promptTrustCertificateForNetwork:(id)network certificateChain:(id)chain profile:(id)profile autoJoin:(BOOL)join;
- (void)_refreshKnownHiddenNetworkNamesCache;
- (void)_registerForApplicationNotifications;
- (void)_resumeScanning;
- (void)_runUnconfiguredJoinOperationForNetwork:(id)network;
- (void)_saveLogsWithComment:(id)comment diagnosticsViewController:(id)controller;
- (void)_scanNetworkForAssociation:(id)association profile:(id)profile;
- (void)_setupGASControllerWithInterface:(id)interface;
- (void)_setupWithInterface:(id)interface;
- (void)_setupWithoutInterface;
- (void)_startHotspotScan;
- (void)_stateMonitorChangedStates:(int64_t)states oldState:(int64_t)state;
- (void)_stopHotspotScan;
- (void)_updateCurrentNetworkIPState:(id)state;
- (void)_updateHS20NetworksWithProfiles:(id)profiles names:(id)names;
- (void)_updateHealthSubtitle;
- (void)_updatePowerState;
- (void)_updatePrivacyProxyFeatureEnabled;
- (void)_updateViewControllerConnectedNetwork;
- (void)_updateViewControllerConnectedNetwork:(id)network;
- (void)_updateViewControllerDisabled;
- (void)_updateViewControllerScanResults;
- (void)_updateViewsForNetworks:(id)networks;
- (void)_wifiPropertyDidChanged:(id)changed;
- (void)airportSettingsViewController:(id)controller setAskToJoinMode:(int64_t)mode;
- (void)airportSettingsViewControllerDidFinishEditingKnownNetworks:(id)networks;
- (void)airportSettingsViewControllerDidStartEditingKnownNetworks:(id)networks;
- (void)airportSettingsViewControllerDidTapDataUsage:(id)usage;
- (void)airportSettingsViewControllerDidTapDiagnosticsMode:(id)mode showNANUI:(BOOL)i;
- (void)dealloc;
- (void)hotspotInterfaceDidUpdateNetworks:(id)networks;
- (void)networkListViewController:(id)controller didTapRecord:(id)record;
- (void)networkListViewController:(id)controller setAutoInstantOption:(int64_t)option;
- (void)networkListViewController:(id)controller setWAPIEnabled:(BOOL)enabled;
- (void)networkListViewController:(id)controller userDidChangePower:(BOOL)power;
- (void)networkListViewController:(id)controller userDidChangePowerToggle:(unint64_t)toggle;
- (void)networkListViewControllerDidAppear:(id)appear;
- (void)networkListViewControllerDidDisappear:(id)disappear;
- (void)networkListViewControllerDidFinish:(id)finish;
- (void)networkListViewControllerDidTapOtherNetwork:(id)network;
- (void)pushDataUsageViewController;
- (void)removeScanCache;
- (void)scanManager:(id)manager didFindHotspotHelperNetworks:(id)networks;
- (void)scanManager:(id)manager didFinishScanRequest:(id)request results:(id)results error:(id)error timeElapsed:(double)elapsed;
- (void)scanManager:(id)manager stateDidChange:(int64_t)change;
- (void)scanManager:(id)manager updatedPartialResults:(id)results;
- (void)scanManager:(id)manager willStartScanRequest:(id)request;
- (void)scanManagerScanningDidFinish:(id)finish withResults:(id)results error:(id)error;
- (void)scanManagerScanningWillStart:(id)start;
- (void)setPowerState:(unint64_t)state;
- (void)startScanning;
- (void)stopScanning;
@end

@implementation WFNetworkListController

- (WFNetworkListController)initWithViewController:(id)controller viewProvider:(id)provider client:(id)client knownNetworksManager:(id)manager
{
  managerCopy = manager;
  v11 = [(WFNetworkListController *)self initWithViewController:controller viewProvider:provider client:client];
  v12 = v11;
  if (v11)
  {
    [(WFNetworkListController *)v11 setKnownNetworksManager:managerCopy];
  }

  return v12;
}

- (WFNetworkListController)initWithViewController:(id)controller viewProvider:(id)provider client:(id)client
{
  v50 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  providerCopy = provider;
  clientCopy = client;
  v45.receiver = self;
  v45.super_class = WFNetworkListController;
  v12 = [(WFNetworkListController *)&v45 init];
  v13 = v12;
  interface = 0;
  if (!controllerCopy || !v12)
  {
    contentCachesContext = v12;
    v21 = clientCopy;
    v13 = 0;
    goto LABEL_25;
  }

  v15 = NSProtocolFromString(&cfstr_Wfnetworklisti.isa);
  v16 = [controllerCopy conformsToProtocol:v15];

  if ((v16 & 1) == 0)
  {
    [WFNetworkListController initWithViewController:viewProvider:client:];
    interface = 0;
    contentCachesContext = v13;
    v21 = clientCopy;
    v13 = 0;
    goto LABEL_25;
  }

  objc_storeStrong(&v13->_viewController, controller);
  [(WFNetworkListing *)v13->_viewController setListDelegate:v13];
  objc_storeStrong(&v13->_viewProvider, provider);
  v13->_shouldShowDetailTapOnCurrentNetwork = 1;
  v13->_isRandomMACManageFeatureEnabled = _os_feature_enabled_impl();
  if (!v13->_viewProvider)
  {
    v17 = NSProtocolFromString(&cfstr_Wfnetworkviewp.isa);
    v18 = [0 conformsToProtocol:v17];

    if ((v18 & 1) == 0)
    {
      objc_opt_class();
      objc_opt_isKindOfClass();
      v19 = objc_alloc_init(objc_opt_class());
      viewProvider = v13->_viewProvider;
      v13->_viewProvider = v19;
    }
  }

  if (![(WFNetworkListing *)v13->_viewController deviceCapability])
  {
    [(WFNetworkListing *)v13->_viewController setDeviceCapability:WFCurrentDeviceCapability()];
  }

  v21 = clientCopy;
  if (!clientCopy)
  {
    v21 = objc_alloc_init(WFClient);
  }

  objc_storeStrong(&v13->_wifiClient, v21);
  v22 = objc_alloc_init(WFDiagnosticsManager);
  diagnosticsManager = v13->_diagnosticsManager;
  v13->_diagnosticsManager = v22;

  v24 = [[WFNetworkListRandomMACManager alloc] initWithClient:v13->_wifiClient];
  randomMACManager = v13->_randomMACManager;
  v13->_randomMACManager = v24;

  interface = [(WFClient *)v13->_wifiClient interface];
  if (interface)
  {
    objc_storeStrong(&v13->_interface, interface);
    [(WFNetworkListController *)v13 _setupWithInterface:v13->_interface];
    [(WFNetworkListController *)v13 _updateViewControllerConnectedNetwork];
  }

  else
  {
    v41 = WFLogForCategory(0);
    v42 = OSLogForWFLogLevel(1uLL);
    v43 = v42;
    if (WFCurrentLogLevel(v42, v44) && v41 && os_log_type_enabled(v41, v43))
    {
      *buf = 136315138;
      v47 = "[WFNetworkListController initWithViewController:viewProvider:client:]";
      _os_log_impl(&dword_273ECD000, v41, v43, "%s: can't get WFInterface instance", buf, 0xCu);
    }
  }

  if (!v13->_interface)
  {
    [(WFNetworkListController *)v13 _setupWithoutInterface];
  }

  v26 = objc_alloc_init(WFAssociationContextQueue);
  associationContextQueue = v13->_associationContextQueue;
  v13->_associationContextQueue = v26;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v13 selector:sel__interfaceDidBecomeAvailable_ name:@"WFClientInterfaceAvailableNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:v13 selector:sel__clientRestartedNotification_ name:@"WFClientServerRestartedNotification" object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:v13 selector:sel__cellularOutrankNotification_ name:@"WFClientCellularOutrankWiFiNotification" object:0];

  if (objc_opt_class())
  {
    mEMORY[0x277D243A0] = [MEMORY[0x277D243A0] shared];
    v13->_lockdownModeEnabled = [mEMORY[0x277D243A0] enabled];
  }

  v32 = WFLogForCategory(0);
  v33 = OSLogForWFLogLevel(3uLL);
  v34 = v33;
  if (WFCurrentLogLevel(v33, v35) >= 3 && v32 && os_log_type_enabled(v32, v34))
  {
    v36 = "disabled";
    if (v13->_lockdownModeEnabled)
    {
      v36 = "enabled";
    }

    *buf = 136315394;
    v47 = "[WFNetworkListController initWithViewController:viewProvider:client:]";
    v48 = 2080;
    v49 = v36;
    _os_log_impl(&dword_273ECD000, v32, v34, "%s: Lockdown mode is %s", buf, 0x16u);
  }

  if (_os_feature_enabled_impl())
  {
    v37 = objc_alloc_init(WFContentCachesContext);
    contentCachesContext = v13->_contentCachesContext;
    v13->_contentCachesContext = v37;
LABEL_25:
  }

  v39 = v13;

  return v39;
}

- (WFNetworkListController)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"-[WFNetworkListController init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (void)_setupWithInterface:(id)interface
{
  v63 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    *buf = 136315394;
    v60 = "[WFNetworkListController _setupWithInterface:]";
    v61 = 2112;
    v62 = interfaceCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: interface %@", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  v9 = [WFWiFiStateMonitor alloc];
  wifiClient = [(WFNetworkListController *)self wifiClient];
  v53 = MEMORY[0x277D85DD0];
  v54 = 3221225472;
  v55 = __47__WFNetworkListController__setupWithInterface___block_invoke;
  v56 = &unk_279EBD110;
  objc_copyWeak(&v57, &location);
  v11 = [(WFWiFiStateMonitor *)v9 initWithClient:wifiClient handler:&v53];
  stateMonitor = self->_stateMonitor;
  self->_stateMonitor = v11;

  [(WFWiFiStateMonitor *)self->_stateMonitor setIdentifier:@"com.apple.WiFiSettings", v53, v54, v55, v56];
  v13 = objc_alloc_init(MEMORY[0x277CCABD8]);
  backgroundQueue = self->_backgroundQueue;
  self->_backgroundQueue = v13;

  v15 = self->_backgroundQueue;
  if (v15)
  {
    [(NSOperationQueue *)v15 setQualityOfService:9];
    [(WFNetworkListController *)self _setupGASControllerWithInterface:interfaceCopy];
    v16 = [WFScanManager alloc];
    wifiClient2 = [(WFNetworkListController *)self wifiClient];
    v18 = [WFScanProxy scanProxyWithClient:wifiClient2];
    v19 = [(WFScanManager *)v16 initWithScanProxy:v18 delegate:self];
    scanManager = self->_scanManager;
    self->_scanManager = v19;

    if (self->_scanManager)
    {
      v21 = objc_alloc_init(WFHotspotInterface);
      hotspotInterface = self->_hotspotInterface;
      self->_hotspotInterface = v21;

      v23 = self->_hotspotInterface;
      if (v23)
      {
        [(WFHotspotInterface *)v23 setDelegate:self];
        v24 = [[WFHealthManager alloc] initWithInterface:interfaceCopy];
        healthManager = self->_healthManager;
        self->_healthManager = v24;

        if (self->_healthManager)
        {
          v26 = objc_alloc_init(WFScanMetricsManager);
          scanMetricsManager = self->_scanMetricsManager;
          self->_scanMetricsManager = v26;

          if (self->_scanMetricsManager)
          {
            self->_privacyProxyFeatureTier = 0;
            if ([(WFNetworkListController *)self isAirPortSettings])
            {
              self->_scanForPersonalHotspots = 1;
              [(WFNetworkListController *)self _updatePrivacyProxyFeatureEnabled];
            }

            self->_canScanForPersonalHotspots = 1;
            wifiClient3 = [(WFNetworkListController *)self wifiClient];
            -[WFNetworkListing setShowOtherNetwork:](self->_viewController, "setShowOtherNetwork:", [wifiClient3 isNetworkRestrictionActive] ^ 1);

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [(WFNetworkListController *)self _registerForApplicationNotifications];
            }

            defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter addObserver:self selector:sel__ipStateDidChange_ name:@"WFIPMonitorStateChangedNotification" object:0];

            defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter2 addObserver:self selector:sel__powerDidChangeNotification_ name:@"WFClientPowerStateChangedNotification" object:0];

            defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter3 addObserver:self selector:sel__networkDidChangeNotification_ name:@"WFInterfaceNetworkChangedNotification" object:0];

            defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter4 addObserver:self selector:sel__networkLinkQualityDidChangeNotification_ name:@"WFInterfaceLinkQualityNotification" object:0];

            defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter5 addObserver:self selector:sel__networkRestrictionStateDidChange_ name:@"WFClientNetworkRestrictionPolicyDidChangeNotification" object:0];

            defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter6 addObserver:self selector:sel__networkHealthIssuesDidChange_ name:@"WFHealthManagerHealthIssuesDidChangeNotification" object:self->_healthManager];

            defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter7 addObserver:self selector:sel__powerModificationDisableStateDidChange_ name:@"WFClientPowerModificationStateChangedNotification" object:0];

            defaultCenter8 = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter8 addObserver:self selector:sel__managedAppleIDStateDidChange_ name:@"WFClientManagedAppleIDStateChangedNotification" object:0];

            defaultCenter9 = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter9 addObserver:self selector:sel__wifiPropertyDidChanged_ name:@"WFClientUserInterfacePropertyChangedNotification" object:0];

            defaultCenter10 = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter10 addObserver:self selector:sel__preferredNetworksDidChange_ name:@"WFClientPreferredNetworksDidChangeNotification" object:0];

            defaultCenter11 = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter11 addObserver:self selector:sel__ipStateDidChange_ name:@"WFInterfaceIPAddressChangedNotification" object:0];

            if (![(WFNetworkListController *)self isSetup])
            {
              v40 = WFLogForCategory(0);
              v41 = OSLogForWFLogLevel(4uLL);
              v42 = v41;
              if (WFCurrentLogLevel(v41, v43) >= 4 && v40 && os_log_type_enabled(v40, v42))
              {
                *buf = 0;
                _os_log_impl(&dword_273ECD000, v40, v42, "Enabling auto join", buf, 2u);
              }

              wifiClient4 = [(WFNetworkListController *)self wifiClient];
              [wifiClient4 setAutoJoinEnabled:1];
            }

            [(WFNetworkListController *)self setViewControllerSupportsCurrentNetworkSubtitle:objc_opt_respondsToSelector() & 1];
            if (![(WFNetworkListController *)self viewControllerSupportsCurrentNetworkSubtitle])
            {
              v45 = WFLogForCategory(0);
              v46 = OSLogForWFLogLevel(3uLL);
              v47 = v46;
              if (WFCurrentLogLevel(v46, v48) >= 3 && v45 && os_log_type_enabled(v45, v47))
              {
                viewController = self->_viewController;
                *buf = 136315394;
                v60 = "[WFNetworkListController _setupWithInterface:]";
                v61 = 2112;
                v62 = viewController;
                _os_log_impl(&dword_273ECD000, v45, v47, "%s: %@ doesn't support currentNetworkSubtitle", buf, 0x16u);
              }
            }

            wifiClient5 = [(WFNetworkListController *)self wifiClient];
            powered = [wifiClient5 powered];

            if (self->_powerState == 3)
            {
              [(WFNetworkListController *)self setPowerState:powered];
            }

            else
            {
              self->_powerState = powered;
            }

            viewController = [(WFNetworkListController *)self viewController];
            [viewController deviceCapability];
            [(WFHealthManager *)self->_healthManager setIsChinaDevice:WFCapabilityIsChinaDevice()];

            [(WFNetworkListController *)self _refreshKnownHiddenNetworkNamesCache];
          }
        }
      }
    }
  }

  objc_destroyWeak(&v57);
  objc_destroyWeak(&location);
}

void __47__WFNetworkListController__setupWithInterface___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stateMonitorChangedStates:a3 oldState:a2];
}

- (void)_setupWithoutInterface
{
  self->_powerState = 3;
  [(WFNetworkListController *)self setPowerState:3];

  [(WFNetworkListController *)self _updateViewControllerDisabled];
}

- (void)_setupGASControllerWithInterface:(id)interface
{
  interfaceCopy = interface;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__WFNetworkListController__setupGASControllerWithInterface___block_invoke;
  v5[3] = &unk_279EBD138;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [interfaceCopy asyncHS20Supported:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __60__WFNetworkListController__setupGASControllerWithInterface___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
  {
    v16 = 136315394;
    v17 = "[WFNetworkListController _setupGASControllerWithInterface:]_block_invoke";
    v18 = 1024;
    v19 = a2;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: HS20Supported %d", &v16, 0x12u);
  }

  objc_copyWeak(&v16, (a1 + 40));
  WeakRetained = objc_loadWeakRetained(&v16);
  [WeakRetained setHS20Supported:a2];

  if (a2)
  {
    v9 = [WFGasQueryController alloc];
    v10 = [*(a1 + 32) wifiClient];
    v11 = [v10 cInterface];
    v12 = [(WFGasQueryController *)v9 initWithInterface:v11];
    v13 = *(a1 + 32);
    v14 = *(v13 + 112);
    *(v13 + 112) = v12;

    v15 = objc_loadWeakRetained(&v16);
    [*(*(a1 + 32) + 112) setDelegate:v15];
  }

  objc_destroyWeak(&v16);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = WFNetworkListController;
  [(WFNetworkListController *)&v4 dealloc];
}

- (void)_registerForApplicationNotifications
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    v11 = 136315138;
    v12 = "[WFNetworkListController _registerForApplicationNotifications]";
    _os_log_impl(&dword_273ECD000, v3, v5, "%s", &v11, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    *v13 = 0;
    _os_log_impl(&dword_273ECD000, v4, v6, "entered foreground", v13, 2u);
  }

  scanMetricsManager = [(WFNetworkListController *)self scanMetricsManager];
  [scanMetricsManager reset];

  viewController = [(WFNetworkListController *)self viewController];
  v10 = NSProtocolFromString(&cfstr_Wfknownnetwork.isa);
  if ([viewController conformsToProtocol:v10])
  {
    viewController2 = [(WFNetworkListController *)self viewController];
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      return;
    }

    viewController = [(WFNetworkListController *)self viewController];
    [viewController knownNetworksWillEnterForeground];
  }

  else
  {
  }
}

- (void)_applicationDidEnterBackground:(id)background
{
  v23 = *MEMORY[0x277D85DE8];
  backgroundCopy = background;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
  {
    *buf = 0;
    _os_log_impl(&dword_273ECD000, v5, v7, "entered background", buf, 2u);
  }

  scanMetricsManager = [(WFNetworkListController *)self scanMetricsManager];
  [scanMetricsManager submit];

  [(WFNetworkListController *)self _cleanUpStatesForDismissal];
  hotspotInterface = [(WFNetworkListController *)self hotspotInterface];
  isScanning = [hotspotInterface isScanning];

  if (isScanning)
  {
    v12 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(1uLL);
    v14 = v13;
    if (WFCurrentLogLevel(v13, v15) && v12 && os_log_type_enabled(v12, v14))
    {
      *buf = 136315138;
      v22 = "[WFNetworkListController _applicationDidEnterBackground:]";
      _os_log_impl(&dword_273ECD000, v12, v14, "%s: creating bg task to disable hotspot scanning", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v17 = [mEMORY[0x277D75128] beginBackgroundTaskWithExpirationHandler:&__block_literal_global_1];

    v18 = dispatch_get_global_queue(21, 0);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__WFNetworkListController__applicationDidEnterBackground___block_invoke_100;
    v19[3] = &unk_279EBD180;
    objc_copyWeak(v20, buf);
    v20[1] = v17;
    dispatch_async(v18, v19);

    objc_destroyWeak(v20);
    objc_destroyWeak(buf);
  }
}

void __58__WFNetworkListController__applicationDidEnterBackground___block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  v2 = v1;
  if (WFCurrentLogLevel(v1, v3) && v0 && os_log_type_enabled(v0, v2))
  {
    v4 = 136315138;
    v5 = "[WFNetworkListController _applicationDidEnterBackground:]_block_invoke";
    _os_log_impl(&dword_273ECD000, v0, v2, "%s: failed to stop scanning", &v4, 0xCu);
  }
}

void __58__WFNetworkListController__applicationDidEnterBackground___block_invoke_100(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopHotspotScan];

  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 endBackgroundTask:*(a1 + 40)];
}

- (void)_applicationDidBecomeActive:(id)active
{
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    *v13 = 0;
    _os_log_impl(&dword_273ECD000, v4, v6, "did become active", v13, 2u);
  }

  [(WFNetworkListController *)self _updatePowerState];
  wifiClient = [(WFNetworkListController *)self wifiClient];
  [wifiClient reloadConfiguration];

  viewController = [(WFNetworkListController *)self viewController];
  v10 = NSProtocolFromString(&cfstr_Wfknownnetwork.isa);
  if ([viewController conformsToProtocol:v10])
  {
    viewController2 = [(WFNetworkListController *)self viewController];
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      return;
    }

    viewController = [(WFNetworkListController *)self viewController];
    [viewController knownNetworksDidBecomeActive];
  }

  else
  {
  }
}

- (void)_applicationWillResignActive:(id)active
{
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    *v12 = 0;
    _os_log_impl(&dword_273ECD000, v4, v6, "will resign active", v12, 2u);
  }

  if ([(WFNetworkListController *)self _shouldPauseScanning])
  {
    [(WFNetworkListController *)self _pauseScanning];
  }

  [(WFNetworkListController *)self _stopHotspotScan];
  [(WFNetworkListController *)self removeScanCache];
  viewController = [(WFNetworkListController *)self viewController];
  v9 = NSProtocolFromString(&cfstr_Wfknownnetwork.isa);
  if ([viewController conformsToProtocol:v9])
  {
    viewController2 = [(WFNetworkListController *)self viewController];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      return;
    }

    viewController = [(WFNetworkListController *)self viewController];
    [viewController knownNetworksWillResignActive];
  }

  else
  {
  }
}

- (void)_cleanUpStatesForDismissal
{
  v30 = *MEMORY[0x277D85DE8];
  if (![(WFNetworkListController *)self isSetup])
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
    {
      v26 = 136315138;
      v27 = "[WFNetworkListController _cleanUpStatesForDismissal]";
      _os_log_impl(&dword_273ECD000, v3, v5, "%s: enabling autojoin", &v26, 0xCu);
    }

    wifiClient = [(WFNetworkListController *)self wifiClient];
    [wifiClient setAutoJoinEnabled:1];

    [(WFNetworkListController *)self _dismissVisibleContext];
    associationContext = [(WFNetworkListController *)self associationContext];

    if (associationContext)
    {
      v9 = WFLogForCategory(0);
      v10 = OSLogForWFLogLevel(1uLL);
      v11 = v10;
      if (WFCurrentLogLevel(v10, v12) && v9)
      {
        v13 = v9;
        if (os_log_type_enabled(v13, v11))
        {
          associationContext2 = [(WFNetworkListController *)self associationContext];
          v26 = 136315394;
          v27 = "[WFNetworkListController _cleanUpStatesForDismissal]";
          v28 = 2112;
          v29 = associationContext2;
          _os_log_impl(&dword_273ECD000, v13, v11, "%s: association context %@", &v26, 0x16u);
        }
      }

      associationContext3 = [(WFNetworkListController *)self associationContext];
      state = [associationContext3 state];

      if (state == 2)
      {
        v17 = WFLogForCategory(0);
        v18 = OSLogForWFLogLevel(1uLL);
        v19 = v18;
        if (WFCurrentLogLevel(v18, v20) && v17)
        {
          v21 = v17;
          if (os_log_type_enabled(v21, v19))
          {
            associationContext4 = [(WFNetworkListController *)self associationContext];
            networkName = [associationContext4 networkName];
            v26 = 136315394;
            v27 = "[WFNetworkListController _cleanUpStatesForDismissal]";
            v28 = 2112;
            v29 = networkName;
            _os_log_impl(&dword_273ECD000, v21, v19, "%s: canceling association to %@ waiting on user input due to backgrounding", &v26, 0x16u);
          }
        }

        v24 = [MEMORY[0x277CCA9B8] associationErrorWithReason:15];
        [(WFNetworkListController *)self _associationDidFinish:1 error:v24 network:0];
      }

      associationContextQueue = [(WFNetworkListController *)self associationContextQueue];
      [associationContextQueue removeAll];

      [(WFNetworkListController *)self setAssociationContext:0];
    }

    [(WFNetworkListController *)self setKnownHiddenNetworkNames:0];
    [(WFNetworkListController *)self setRetainedNetworkListController:0];
  }
}

- (void)_networkRestrictionStateDidChange:(id)change
{
  v27 = *MEMORY[0x277D85DE8];
  wifiClient = [(WFNetworkListController *)self wifiClient];
  isNetworkRestrictionActive = [wifiClient isNetworkRestrictionActive];

  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) >= 3 && v6 && os_log_type_enabled(v6, v8))
  {
    v23 = 136315394;
    v24 = "[WFNetworkListController _networkRestrictionStateDidChange:]";
    v25 = 1024;
    v26 = isNetworkRestrictionActive;
    _os_log_impl(&dword_273ECD000, v6, v8, "%s: network restriction did change (new state: %d)", &v23, 0x12u);
  }

  v10 = isNetworkRestrictionActive ^ 1u;
  viewController = [(WFNetworkListController *)self viewController];
  [viewController setShowOtherNetwork:v10];

  viewController2 = [(WFNetworkListController *)self viewController];
  [viewController2 refresh];

  scanManager = [(WFNetworkListController *)self scanManager];
  [scanManager pause];

  if (v10)
  {
    scanManager2 = [(WFNetworkListController *)self scanManager];
    [scanManager2 resume];

    [(WFNetworkListController *)self setCanScanForPersonalHotspots:v10];
    [(WFNetworkListController *)self _startHotspotScan];
  }

  else
  {
    gasController = [(WFNetworkListController *)self gasController];
    [gasController removeAllProfiles];

    viewController3 = [(WFNetworkListController *)self viewController];
    [viewController3 setNetworks:0];

    scanManager3 = [(WFNetworkListController *)self scanManager];
    [scanManager3 resume];

    scanManager4 = [(WFNetworkListController *)self scanManager];
    networks = [(WFNetworkListController *)self networks];
    v19 = [(WFNetworkListController *)self scanManager:scanManager4 filterScanResults:networks];
    [(WFNetworkListController *)self setNetworks:v19];

    viewController4 = [(WFNetworkListController *)self viewController];
    networks2 = [(WFNetworkListController *)self networks];
    [viewController4 setNetworks:networks2];

    [(WFNetworkListController *)self setCanScanForPersonalHotspots:v10];
    [(WFNetworkListController *)self _stopHotspotScan];
  }
}

- (void)_powerModificationDisableStateDidChange:(id)change
{
  v18 = *MEMORY[0x277D85DE8];
  wifiClient = [(WFNetworkListController *)self wifiClient];
  isPowerModificationDisabled = [wifiClient isPowerModificationDisabled];

  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) >= 3 && v6 && os_log_type_enabled(v6, v8))
  {
    v10 = "Enabled";
    if (isPowerModificationDisabled)
    {
      v10 = "Disabled";
    }

    v14 = 136315394;
    v15 = "[WFNetworkListController _powerModificationDisableStateDidChange:]";
    v16 = 2080;
    v17 = v10;
    _os_log_impl(&dword_273ECD000, v6, v8, "%s: Power Modification %s", &v14, 0x16u);
  }

  viewController = [(WFNetworkListController *)self viewController];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    viewController2 = [(WFNetworkListController *)self viewController];
    [viewController2 powerModificationStateDidChange:isPowerModificationDisabled];
  }
}

- (void)_managedAppleIDStateDidChange:(id)change
{
  v18 = *MEMORY[0x277D85DE8];
  wifiClient = [(WFNetworkListController *)self wifiClient];
  isManagedAppleID = [wifiClient isManagedAppleID];

  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) >= 3 && v6 && os_log_type_enabled(v6, v8))
  {
    v10 = "Non-Managed";
    if (isManagedAppleID)
    {
      v10 = "Managed";
    }

    v14 = 136315394;
    v15 = "[WFNetworkListController _managedAppleIDStateDidChange:]";
    v16 = 2080;
    v17 = v10;
    _os_log_impl(&dword_273ECD000, v6, v8, "%s: %s Account", &v14, 0x16u);
  }

  viewController = [(WFNetworkListController *)self viewController];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    viewController2 = [(WFNetworkListController *)self viewController];
    [viewController2 managedAppleIDStateChange:isManagedAppleID];
  }
}

- (void)removeScanCache
{
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    *v10 = 0;
    _os_log_impl(&dword_273ECD000, v3, v5, "removing scan cache", v10, 2u);
  }

  [(WFNetworkListController *)self setNetworks:0];
  viewController = [(WFNetworkListController *)self viewController];
  [viewController setNetworks:0];

  viewController2 = [(WFNetworkListController *)self viewController];
  [viewController2 refresh];

  gasController = [(WFNetworkListController *)self gasController];
  [gasController removeAllProfiles];

  [(WFNetworkListController *)self setFirstScanFinished:0];
}

- (void)_powerStateChanged
{
  v16 = *MEMORY[0x277D85DE8];
  wifiClient = [(WFNetworkListController *)self wifiClient];
  -[WFNetworkListController setPowerState:](self, "setPowerState:", [wifiClient powered]);

  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4)
  {
    v8 = v4;
    if (os_log_type_enabled(v8, v6))
    {
      [(WFNetworkListController *)self powerState];
      v9 = WFPowerStateToggleToString();
      v12 = 136315394;
      v13 = "[WFNetworkListController _powerStateChanged]";
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_273ECD000, v8, v6, "%s: power state changed to %@", &v12, 0x16u);
    }
  }

  [(WFNetworkListController *)self setPowerState:[(WFNetworkListController *)self powerState]];
  if ([(WFNetworkListController *)self powerState]== 1)
  {
    [(WFNetworkListController *)self _resumeScanning];
  }

  else
  {
    scanManager = [(WFNetworkListController *)self scanManager];
    [scanManager stop];

    [(WFNetworkListController *)self _stopHotspotScan];
    [(WFNetworkListController *)self setNetworks:0];
    [(WFNetworkListController *)self setFirstScanFinished:0];
    associationContextQueue = [(WFNetworkListController *)self associationContextQueue];
    [associationContextQueue removeAll];
  }
}

- (void)_updatePowerState
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    *buf = 136315138;
    v11 = "[WFNetworkListController _updatePowerState]";
    _os_log_impl(&dword_273ECD000, v3, v5, "%s: updating power state", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  wifiClient = [(WFNetworkListController *)self wifiClient];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__WFNetworkListController__updatePowerState__block_invoke;
  v8[3] = &unk_279EBD138;
  objc_copyWeak(&v9, buf);
  v8[4] = self;
  [wifiClient asyncPowered:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __44__WFNetworkListController__updatePowerState__block_invoke(uint64_t a1, unsigned int a2)
{
  v39 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    *buf = 136315394;
    v36 = "[WFNetworkListController _updatePowerState]_block_invoke";
    v37 = 1024;
    v38 = a2;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: powered %d", buf, 0x12u);
  }

  v9 = [WeakRetained interface];
  v10 = v9 == 0;

  if (v10)
  {
    v11 = 3;
  }

  else
  {
    v11 = a2;
  }

  [WeakRetained setPowerState:v11];
  v12 = [WeakRetained interface];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __44__WFNetworkListController__updatePowerState__block_invoke_114;
  v33[3] = &unk_279EBD1C8;
  objc_copyWeak(&v34, (a1 + 40));
  [v12 asyncCurrentNetwork:v33];

  if (a2)
  {
    v13 = [MEMORY[0x277D75128] sharedApplication];
    v14 = [v13 applicationState] == 0;

    if (!v14)
    {
      v15 = WFLogForCategory(0);
      v16 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel(v16, v17) < 3 || !v15 || !os_log_type_enabled(v15, v16))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v18 = "WiFi application status is not active";
      goto LABEL_19;
    }

    if ([WeakRetained isAssociating])
    {
      v15 = WFLogForCategory(0);
      v16 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel(v16, v19) < 3 || !v15 || !os_log_type_enabled(v15, v16))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v18 = "not resuming scans due to in progress association";
LABEL_19:
      v20 = v15;
      v21 = v16;
      v22 = 2;
LABEL_20:
      _os_log_impl(&dword_273ECD000, v20, v21, v18, buf, v22);
LABEL_21:

      goto LABEL_22;
    }

    v23 = [*(a1 + 32) viewController];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = [*(a1 + 32) viewController];
      v26 = [v25 networkListVisible];

      if ((v26 & 1) == 0)
      {
        v15 = WFLogForCategory(0);
        v31 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel(v31, v32) < 3 || !v15 || !os_log_type_enabled(v15, v31))
        {
          goto LABEL_21;
        }

        *buf = 136315138;
        v36 = "[WFNetworkListController _updatePowerState]_block_invoke";
        v18 = "%s: Skipping scanning for setup until wifi page is visible";
        v20 = v15;
        v21 = v31;
        v22 = 12;
        goto LABEL_20;
      }
    }

    v27 = WFLogForCategory(0);
    v28 = OSLogForWFLogLevel(3uLL);
    v29 = v28;
    if (WFCurrentLogLevel(v28, v30) >= 3 && v27 && os_log_type_enabled(v27, v29))
    {
      *buf = 136315138;
      v36 = "[WFNetworkListController _updatePowerState]_block_invoke";
      _os_log_impl(&dword_273ECD000, v27, v29, "%s: resuming scans due to power state", buf, 0xCu);
    }

    [WeakRetained _resumeScanning];
  }

LABEL_22:
  objc_destroyWeak(&v34);
}

void __44__WFNetworkListController__updatePowerState__block_invoke_114(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained isHS20Supported];
  if (v3)
  {
    if (v5)
    {
      if ([v3 isHotspot20])
      {
        v6 = [v3 matchingKnownNetworkProfile];

        if (!v6)
        {
          v7 = WFLogForCategory(0);
          v8 = OSLogForWFLogLevel(3uLL);
          v9 = v8;
          if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
          {
            v12 = 136315394;
            v13 = "[WFNetworkListController _updatePowerState]_block_invoke";
            v14 = 2112;
            v15 = v3;
            _os_log_impl(&dword_273ECD000, v7, v9, "%s: resolving profile for %@", &v12, 0x16u);
          }

          v11 = [WeakRetained gasController];
          [v11 resolveProfileForNetwork:v3 handler:&__block_literal_global_118 force:1];
        }
      }
    }
  }
}

void __44__WFNetworkListController__updatePowerState__block_invoke_115(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = WFLogForCategory(5uLL);
  v7 = OSLogForWFLogLevel(1uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) && v6 && os_log_type_enabled(v6, v8))
  {
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_273ECD000, v6, v8, "resolved profile %@ error %@", &v10, 0x16u);
  }
}

- (void)startScanning
{
  v3 = WFLogForCategory(6uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) && v3 && os_log_type_enabled(v3, v5))
  {
    *v8 = 0;
    _os_log_impl(&dword_273ECD000, v3, v5, "start scanning", v8, 2u);
  }

  [(WFNetworkListController *)self _startHotspotScan];
  scanManager = [(WFNetworkListController *)self scanManager];
  [scanManager start];
}

- (void)stopScanning
{
  v3 = WFLogForCategory(6uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) && v3 && os_log_type_enabled(v3, v5))
  {
    *v8 = 0;
    _os_log_impl(&dword_273ECD000, v3, v5, "stop scanning", v8, 2u);
  }

  [(WFNetworkListController *)self _stopHotspotScan];
  scanManager = [(WFNetworkListController *)self scanManager];
  [scanManager stop];
}

- (void)_resumeScanning
{
  v3 = WFLogForCategory(6uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) && v3 && os_log_type_enabled(v3, v5))
  {
    *v8 = 0;
    _os_log_impl(&dword_273ECD000, v3, v5, "resume scans", v8, 2u);
  }

  [(WFNetworkListController *)self _startHotspotScan];
  scanManager = [(WFNetworkListController *)self scanManager];
  [scanManager resume];
}

- (BOOL)_shouldPauseScanning
{
  scanManager = [(WFNetworkListController *)self scanManager];
  if ([scanManager state] == 1)
  {
    v4 = 1;
  }

  else
  {
    scanManager2 = [(WFNetworkListController *)self scanManager];
    v4 = [scanManager2 state] == 2;
  }

  return v4;
}

- (void)_pauseScanning
{
  scanManager = [(WFNetworkListController *)self scanManager];
  [scanManager pause];
}

- (void)_startHotspotScan
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(WFNetworkListController *)self scanForPersonalHotspots]&& [(WFNetworkListController *)self canScanForPersonalHotspots])
  {
    hotspotInterface = [(WFNetworkListController *)self hotspotInterface];
    [hotspotInterface startBrowsing];
  }

  else
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) >= 3 && v3)
    {
      v7 = v3;
      if (os_log_type_enabled(v7, v5))
      {
        *buf = 136315650;
        v10 = "[WFNetworkListController _startHotspotScan]";
        v11 = 1024;
        scanForPersonalHotspots = [(WFNetworkListController *)self scanForPersonalHotspots];
        v13 = 1024;
        canScanForPersonalHotspots = [(WFNetworkListController *)self canScanForPersonalHotspots];
        _os_log_impl(&dword_273ECD000, v7, v5, "%s: hotspot scanning disabled (scan %d, canScan %d)", buf, 0x18u);
      }
    }
  }
}

- (void)_stopHotspotScan
{
  hotspotInterface = [(WFNetworkListController *)self hotspotInterface];
  [hotspotInterface stopBrowsing];
}

- (void)_updateViewControllerScanResults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__WFNetworkListController__updateViewControllerScanResults__block_invoke;
  block[3] = &unk_279EBCFE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __59__WFNetworkListController__updateViewControllerScanResults__block_invoke(uint64_t a1)
{
  v159 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) networks];

  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = [v2 scanManager];
    v4 = [*(a1 + 32) networks];
    v5 = [v2 scanManager:v3 filterScanResults:v4];

    v6 = MEMORY[0x277CBEB98];
    v7 = [v5 allObjects];
    v8 = [v6 setWithArray:v7];
    v9 = [v8 allObjects];

    v118 = [MEMORY[0x277CBEB58] setWithArray:v9];
  }

  else
  {
    v118 = [MEMORY[0x277CBEB58] set];
  }

  v10 = [*(a1 + 32) hotspotInterface];
  v119 = [v10 networks];

  if (v119)
  {
    v122 = [v118 mutableCopy];
    v129 = [v122 mutableCopy];
    v130 = [v119 mutableCopy];
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    obj = v119;
    v123 = [obj countByEnumeratingWithState:&v144 objects:v158 count:16];
    if (v123)
    {
      v121 = *v145;
      do
      {
        v11 = 0;
        do
        {
          if (*v145 != v121)
          {
            v12 = v11;
            objc_enumerationMutation(obj);
            v11 = v12;
          }

          v125 = v11;
          v13 = MEMORY[0x277CCAC30];
          v131 = *(*(&v144 + 1) + 8 * v11);
          v14 = [v131 ssid];
          v15 = [v13 predicateWithFormat:@"ssid == %@", v14];
          v126 = [v130 filteredSetUsingPredicate:v15];

          if ([v126 count] >= 2)
          {
            v16 = WFLogForCategory(0);
            v17 = OSLogForWFLogLevel(3uLL);
            v18 = v17;
            if (WFCurrentLogLevel(v17, v19) >= 3 && v16 && os_log_type_enabled(v16, v18))
            {
              *buf = 0;
              _os_log_impl(&dword_273ECD000, v16, v18, "More than one HS of same name nearby!", buf, 2u);
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v155 = __Block_byref_object_copy_;
            v156 = __Block_byref_object_dispose_;
            v157 = &stru_2882E4AD8;
            v143[0] = MEMORY[0x277D85DD0];
            v143[1] = 3221225472;
            v143[2] = __59__WFNetworkListController__updateViewControllerScanResults__block_invoke_131;
            v143[3] = &unk_279EBD1F0;
            v143[4] = buf;
            [v126 enumerateObjectsUsingBlock:v143];
            v20 = WFLogForCategory(0);
            v21 = OSLogForWFLogLevel(4uLL);
            v22 = v21;
            if (WFCurrentLogLevel(v21, v23) >= 4 && v20 && os_log_type_enabled(v20, v22))
            {
              v24 = *(*&buf[8] + 40);
              *v149 = 138412290;
              v150 = v24;
              _os_log_impl(&dword_273ECD000, v20, v22, "Hotspot networks: %@", v149, 0xCu);
            }

            v141 = 0u;
            v142 = 0u;
            v139 = 0u;
            v140 = 0u;
            v25 = v126;
            v26 = [v25 countByEnumeratingWithState:&v139 objects:v153 count:16];
            if (v26)
            {
              v27 = 0;
              v28 = *v140;
              do
              {
                v29 = 0;
                v30 = -v27;
                v127 = v27 + v26;
                do
                {
                  if (*v140 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v31 = *(*(&v139 + 1) + 8 * v29);
                  if (v31)
                  {
                    v32 = v30 == v29;
                  }

                  else
                  {
                    v32 = 1;
                  }

                  if (v32)
                  {
                    v33 = WFLogForCategory(0);
                    v34 = OSLogForWFLogLevel(4uLL);
                    v35 = v34;
                    if (WFCurrentLogLevel(v34, v36) >= 4 && v33)
                    {
                      v37 = v33;
                      if (os_log_type_enabled(v37, v35))
                      {
                        v38 = [v31 ssid];
                        v39 = [v31 uniqueIdentifier];
                        *v149 = 138412546;
                        v150 = v38;
                        v151 = 2048;
                        v152 = v39;
                        _os_log_impl(&dword_273ECD000, v37, v35, "Shown hotspot: %@, uniqueidentifier: %lu\n", v149, 0x16u);
                      }
                    }
                  }

                  else
                  {
                    [v130 removeObject:*(*(&v139 + 1) + 8 * v29)];
                  }

                  ++v29;
                }

                while (v26 != v29);
                v26 = [v25 countByEnumeratingWithState:&v139 objects:v153 count:16];
                v27 = v127;
              }

              while (v26);
            }

            _Block_object_dispose(buf, 8);
          }

          v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v131, "uniqueIdentifier")];
          v41 = [WFNetworkProfile alloc];
          v42 = [*(a1 + 32) interface];
          v43 = [v42 currentNetwork];
          v44 = [v43 matchingKnownNetworkProfile];
          v128 = [(WFNetworkProfile *)v41 initWithCoreWiFiProfile:v44];

          if (v131)
          {
            if (v128)
            {
              v45 = [(WFNetworkProfile *)v128 hotspotDeviceIdentifier];
              v46 = [v45 isEqualToString:v40];

              if (v46)
              {
                v47 = WFLogForCategory(0);
                v48 = OSLogForWFLogLevel(4uLL);
                v49 = v48;
                if (WFCurrentLogLevel(v48, v50) >= 4 && v47 && os_log_type_enabled(v47, v49))
                {
                  *buf = 0;
                  _os_log_impl(&dword_273ECD000, v47, v49, "Removing current connected hotspot from scan results", buf, 2u);
                }

                [v130 removeObject:v131];
              }
            }
          }

          v138 = 0u;
          v136 = 0u;
          v137 = 0u;
          v135 = 0u;
          v51 = v122;
          v52 = [v51 countByEnumeratingWithState:&v135 objects:v148 count:16];
          if (v52)
          {
            v53 = *v136;
            do
            {
              for (i = 0; i != v52; ++i)
              {
                if (*v136 != v53)
                {
                  objc_enumerationMutation(v51);
                }

                v55 = *(*(&v135 + 1) + 8 * i);
                if (v55)
                {
                  v56 = [*(*(&v135 + 1) + 8 * i) ssid];
                  v57 = [v131 ssid];
                  if ([v56 isEqualToString:v57])
                  {
                    v58 = [v55 iOSHotspot];

                    if (v58)
                    {
                      v59 = WFLogForCategory(0);
                      v60 = OSLogForWFLogLevel(4uLL);
                      v61 = v60;
                      if (WFCurrentLogLevel(v60, v62) >= 4 && v59)
                      {
                        v63 = v59;
                        if (os_log_type_enabled(v63, v61))
                        {
                          v64 = [v131 ssid];
                          *buf = 138412290;
                          *&buf[4] = v64;
                          _os_log_impl(&dword_273ECD000, v63, v61, "Removing AP record for hotspot ssid: %@", buf, 0xCu);
                        }
                      }

                      [v129 removeObject:v55];
                    }
                  }

                  else
                  {
                  }
                }
              }

              v52 = [v51 countByEnumeratingWithState:&v135 objects:v148 count:16];
            }

            while (v52);
          }

          v11 = v125 + 1;
        }

        while (v125 + 1 != v123);
        v123 = [obj countByEnumeratingWithState:&v144 objects:v158 count:16];
      }

      while (v123);
    }

    v65 = WFLogForCategory(0);
    v66 = OSLogForWFLogLevel(4uLL);
    v67 = v66;
    if (WFCurrentLogLevel(v66, v68) >= 4 && v65)
    {
      v69 = v65;
      if (os_log_type_enabled(v69, v67))
      {
        v70 = [v130 count];
        v71 = [v129 count];
        *buf = 134218240;
        *&buf[4] = v70;
        *&buf[12] = 2048;
        *&buf[14] = v71;
        _os_log_impl(&dword_273ECD000, v69, v67, "Hotspots count: %lu, AP count: %lu", buf, 0x16u);
      }
    }

    v72 = [v129 mutableCopy];
    [v72 unionSet:v130];
  }

  else
  {
    v72 = v118;
  }

  if ([*(a1 + 32) isAssociating])
  {
    v73 = [*(a1 + 32) associationContext];
    v74 = v73 == 0;

    if (!v74)
    {
      v75 = WFLogForCategory(0);
      v76 = OSLogForWFLogLevel(1uLL);
      v77 = v76;
      if (WFCurrentLogLevel(v76, v78) && v75 && os_log_type_enabled(v75, v77))
      {
        *buf = 136315138;
        *&buf[4] = "[WFNetworkListController _updateViewControllerScanResults]_block_invoke";
        _os_log_impl(&dword_273ECD000, v75, v77, "%s: update during association", buf, 0xCu);
      }

      v79 = [*(a1 + 32) associationContext];
      v80 = [v79 network];
      if (v80)
      {
        if ([*(a1 + 32) isAirPortSettings])
        {
          v81 = [*(a1 + 32) associationContext];
          v82 = [v81 network];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            goto LABEL_109;
          }
        }

        else
        {
        }

        v105 = WFLogForCategory(0);
        v106 = OSLogForWFLogLevel(1uLL);
        v107 = v106;
        if (WFCurrentLogLevel(v106, v108) && v105)
        {
          v109 = v105;
          if (os_log_type_enabled(v109, v107))
          {
            v110 = [*(a1 + 32) associationContext];
            v111 = [v110 network];
            *buf = 136315394;
            *&buf[4] = "[WFNetworkListController _updateViewControllerScanResults]_block_invoke";
            *&buf[12] = 2114;
            *&buf[14] = v111;
            _os_log_impl(&dword_273ECD000, v109, v107, "%s: removing associationCtx network %{public}@ from scan results", buf, 0x16u);
          }
        }

        v79 = [*(a1 + 32) associationContext];
        v112 = [v79 network];
        [v72 removeObject:v112];
      }

      goto LABEL_108;
    }
  }

  v84 = [*(a1 + 32) interface];
  v85 = [v84 currentNetwork];

  if (v85)
  {
    v86 = [*(a1 + 32) interface];
    v79 = [v86 currentNetwork];

    if (v79)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v155 = __Block_byref_object_copy_;
      v156 = __Block_byref_object_dispose_;
      v157 = objc_opt_new();
      v134[0] = MEMORY[0x277D85DD0];
      v134[1] = 3221225472;
      v134[2] = __59__WFNetworkListController__updateViewControllerScanResults__block_invoke_142;
      v134[3] = &unk_279EBD218;
      v134[4] = *(a1 + 32);
      v134[5] = buf;
      [v72 enumerateObjectsUsingBlock:v134];
      if ([*(*&buf[8] + 40) count])
      {
        v87 = WFLogForCategory(0);
        v88 = OSLogForWFLogLevel(3uLL);
        v89 = v88;
        if (WFCurrentLogLevel(v88, v90) >= 3 && v87 && os_log_type_enabled(v87, v89))
        {
          v91 = *(*&buf[8] + 40);
          *v149 = 136315394;
          v150 = "[WFNetworkListController _updateViewControllerScanResults]_block_invoke_2";
          v151 = 2112;
          v152 = v91;
          _os_log_impl(&dword_273ECD000, v87, v89, "%s: networks to remove from scan list='%@'", v149, 0x16u);
        }
      }

      v92 = *(*&buf[8] + 40);
      v132[0] = MEMORY[0x277D85DD0];
      v132[1] = 3221225472;
      v132[2] = __59__WFNetworkListController__updateViewControllerScanResults__block_invoke_144;
      v132[3] = &unk_279EBD240;
      v133 = v72;
      [v92 enumerateObjectsUsingBlock:v132];
      if ([v79 isHotspot20])
      {
        v93 = [v79 matchingKnownNetworkProfile];
        v94 = v93;
        if (v93)
        {
          v95 = [v93 displayedOperatorName];
          v96 = [*(a1 + 32) viewController];
          v97 = [v96 currentNetwork];
          [v97 setHotspot20Name:v95];
        }

        else
        {
          v95 = WFLogForCategory(0);
          v115 = OSLogForWFLogLevel(4uLL);
          v116 = v115;
          if (WFCurrentLogLevel(v115, v117) >= 4 && v95 && os_log_type_enabled(v95, v116))
          {
            *v149 = 136315394;
            v150 = "[WFNetworkListController _updateViewControllerScanResults]_block_invoke_2";
            v151 = 2112;
            v152 = v79;
            _os_log_impl(&dword_273ECD000, v95, v116, "%s: no profile for network='%@'", v149, 0x16u);
          }
        }
      }

      v98 = [*(a1 + 32) viewController];
      v99 = [v98 currentNetwork];
      v100 = [v99 isEqual:v79];

      if ((v100 & 1) == 0)
      {
        v101 = WFLogForCategory(0);
        v102 = OSLogForWFLogLevel(3uLL);
        v103 = v102;
        if (WFCurrentLogLevel(v102, v104) >= 3 && v101 && os_log_type_enabled(v101, v103))
        {
          *v149 = 136315138;
          v150 = "[WFNetworkListController _updateViewControllerScanResults]_block_invoke";
          _os_log_impl(&dword_273ECD000, v101, v103, "%s: view controller current network mismatch, force update", v149, 0xCu);
        }

        [*(a1 + 32) _updateViewControllerConnectedNetwork:v79];
      }

      _Block_object_dispose(buf, 8);
    }

LABEL_108:
  }

LABEL_109:
  v113 = [*(a1 + 32) viewController];
  [v113 setNetworks:v72];

  v114 = [*(a1 + 32) scanMetricsManager];
  [v114 ingestScanResults:v72];
}

void __59__WFNetworkListController__updateViewControllerScanResults__block_invoke_131(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = MEMORY[0x277CCACA8];
  v5 = a2;
  v11 = [v5 ssid];
  v6 = [v5 uniqueIdentifier];

  v7 = [v4 stringWithFormat:@"network ssid: %@, uniqueidentifier: %lu\n", v11, v6];
  v8 = [v3 stringByAppendingString:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __59__WFNetworkListController__updateViewControllerScanResults__block_invoke_142(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) interface];
  v4 = [v3 currentNetwork];
  v5 = [v4 ssid];

  v6 = [v7 ssid];
  LODWORD(v4) = [v6 isEqualToString:v5];

  if (v4)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
  }
}

- (void)scanManagerScanningWillStart:(id)start
{
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    *v7 = 0;
    _os_log_impl(&dword_273ECD000, v3, v5, "scanning started", v7, 2u);
  }
}

- (void)scanManager:(id)manager stateDidChange:(int64_t)change
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__WFNetworkListController_scanManager_stateDidChange___block_invoke;
  v4[3] = &unk_279EBCFB8;
  v4[4] = self;
  v4[5] = change;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __54__WFNetworkListController_scanManager_stateDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40) == 2;
    v6 = [v4 viewController];
    [v6 setScanning:v5];
  }
}

- (void)scanManager:(id)manager updatedPartialResults:(id)results
{
  v43 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  selfCopy = self;
  networks = [(WFNetworkListController *)self networks];
  v7 = [networks mutableCopy];

  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB58] set];
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = resultsCopy;
  v10 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v38;
    v13 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        ssid = [v15 ssid];
        v17 = [v8 objectForKey:ssid];

        if (!v17)
        {
          ssid2 = [v15 ssid];
          [v8 setObject:v13 forKey:ssid2];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v11);
  }

  v31 = v7;
  allObjects = [v7 allObjects];
  v20 = [allObjects mutableCopy];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = allObjects;
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v33 + 1) + 8 * j);
        if (v26)
        {
          ssid3 = [*(*(&v33 + 1) + 8 * j) ssid];
          v28 = [v8 objectForKey:ssid3];

          if (v28)
          {
            [v20 removeObject:v26];
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v23);
  }

  v29 = [MEMORY[0x277CBEB58] setWithArray:v20];

  allObjects2 = [v9 allObjects];
  [v29 addObjectsFromArray:allObjects2];

  [(WFNetworkListController *)selfCopy setNetworks:v29];
  [(WFNetworkListController *)selfCopy _updateViewControllerScanResults];
}

- (void)scanManagerScanningDidFinish:(id)finish withResults:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__WFNetworkListController_scanManagerScanningDidFinish_withResults_error___block_invoke;
  block[3] = &unk_279EBD268;
  block[4] = self;
  v12 = resultsCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = resultsCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__WFNetworkListController_scanManagerScanningDidFinish_withResults_error___block_invoke(id *a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] viewController];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [a1[4] viewController];
    [v4 setScanning:0];
  }

  v5 = a1[5];
  if ([a1[6] code] == 16 || objc_msgSend(a1[6], "code") == 37)
  {
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(3uLL);
    v8 = v7;
    if (WFCurrentLogLevel(v7, v9) >= 3 && v6)
    {
      v10 = v6;
      if (os_log_type_enabled(v10, v8))
      {
        v11 = [a1[6] code];
        v39 = 136315394;
        v40 = "[WFNetworkListController scanManagerScanningDidFinish:withResults:error:]_block_invoke";
        v41 = 2048;
        *v42 = v11;
        _os_log_impl(&dword_273ECD000, v10, v8, "%s: scan error (%ld), not updating UI scan list", &v39, 0x16u);
      }
    }

    v12 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(3uLL);
    v14 = v13;
    if (WFCurrentLogLevel(v13, v15) >= 3 && v12)
    {
      v16 = v12;
      if (os_log_type_enabled(v16, v14))
      {
        v17 = [a1[4] networks];
        v39 = 136315394;
        v40 = "[WFNetworkListController scanManagerScanningDidFinish:withResults:error:]_block_invoke";
        v41 = 2112;
        *v42 = v17;
        _os_log_impl(&dword_273ECD000, v16, v14, "%s: current networks %@", &v39, 0x16u);
      }
    }

    v18 = [a1[4] networks];

    v5 = v18;
  }

  [a1[4] setNetworks:v5];
  v19 = [a1[5] hs20Networks];
  if ([a1[4] knownNetworksContainsHS20Networks])
  {
    v20 = 1;
  }

  else
  {
    v21 = [a1[4] wifiClient];
    v20 = [v21 showAllHS20Networks];
  }

  v22 = [a1[4] isHS20Supported];
  if (v19)
  {
    v23 = WFLogForCategory(0);
    v24 = OSLogForWFLogLevel(3uLL);
    v25 = v24;
    if (WFCurrentLogLevel(v24, v26) >= 3 && v23 && os_log_type_enabled(v23, v25))
    {
      v39 = 136315906;
      v40 = "[WFNetworkListController scanManagerScanningDidFinish:withResults:error:]_block_invoke";
      v41 = 1024;
      *v42 = v22;
      *&v42[4] = 1024;
      *&v42[6] = v20;
      v43 = 2112;
      v44 = v19;
      _os_log_impl(&dword_273ECD000, v23, v25, "%s: hs20Supported %d hs20ProfilesInstalled %d hs20 networks found in scan: %@", &v39, 0x22u);
    }
  }

  if (v22 && (([v19 count] != 0) & v20) == 1)
  {
    v27 = [a1[4] gasController];
    [v27 resolveProfilesForNetworks:v19];
  }

  [a1[4] _updateViewControllerScanResults];
  v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1[5], "count")}];
  [v28 setValue:v29 forKey:@"count"];

  v30 = [MEMORY[0x277CCAB98] defaultCenter];
  [v30 postNotificationName:@"WFNetworkListControllerScanDidFinishNotification" object:a1[4] userInfo:v28];

  if (!a1[6])
  {
    v31 = WFLogForCategory(0);
    v32 = OSLogForWFLogLevel(3uLL);
    v33 = v32;
    if (WFCurrentLogLevel(v32, v34) >= 3 && v31 && os_log_type_enabled(v31, v33))
    {
      LOWORD(v39) = 0;
      _os_log_impl(&dword_273ECD000, v31, v33, "Remove all cache request sent to random manager because of a successful full cycle of scan!", &v39, 2u);
    }

    v35 = [a1[4] randomMACManager];
    v36 = [a1[4] interface];
    v37 = [v36 currentNetwork];
    v38 = [v37 ssid];
    [v35 resetCacheWithCurrentNetworkName:v38];
  }
}

- (void)scanManager:(id)manager didFindHotspotHelperNetworks:(id)networks
{
  v39 = *MEMORY[0x277D85DE8];
  networksCopy = networks;
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) >= 3 && v6 && os_log_type_enabled(v6, v8))
  {
    *buf = 136315394;
    v36 = "[WFNetworkListController scanManager:didFindHotspotHelperNetworks:]";
    v37 = 2112;
    v38 = networksCopy;
    _os_log_impl(&dword_273ECD000, v6, v8, "%s: found hotspot helper networks %@", buf, 0x16u);
  }

  if (!networksCopy)
  {
    [WFNetworkListController scanManager:didFindHotspotHelperNetworks:];
LABEL_31:
    v11 = 0;
    goto LABEL_28;
  }

  networks = [(WFNetworkListController *)self networks];

  if (!networks)
  {
    [WFNetworkListController scanManager:didFindHotspotHelperNetworks:];
    goto LABEL_31;
  }

  v11 = [MEMORY[0x277CBEB58] set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v29 = networksCopy;
  v12 = networksCopy;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        networks2 = [(WFNetworkListController *)self networks];
        ssid = [v17 ssid];
        v20 = [networks2 scanRecordWithSSID:ssid];

        if (v20)
        {
          [v11 addObject:v20];
        }

        else
        {
          v21 = WFLogForCategory(0);
          v22 = OSLogForWFLogLevel(3uLL);
          v23 = v22;
          if (WFCurrentLogLevel(v22, v24) >= 3 && v21 && os_log_type_enabled(v21, v23))
          {
            *buf = 136315394;
            v36 = "[WFNetworkListController scanManager:didFindHotspotHelperNetworks:]";
            v37 = 2112;
            v38 = v17;
            _os_log_impl(&dword_273ECD000, v21, v23, "%s no matching scan record for helper network %@", buf, 0x16u);
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    v25 = WFLogForCategory(0);
    v26 = OSLogForWFLogLevel(3uLL);
    v27 = v26;
    if (WFCurrentLogLevel(v26, v28) >= 3 && v25 && os_log_type_enabled(v25, v27))
    {
      *buf = 136315394;
      v36 = "[WFNetworkListController scanManager:didFindHotspotHelperNetworks:]";
      v37 = 2112;
      v38 = v11;
      _os_log_impl(&dword_273ECD000, v25, v27, "%s: updating views for %@", buf, 0x16u);
    }

    [(WFNetworkListController *)self _updateViewsForNetworks:v11];
  }

  networksCopy = v29;
LABEL_28:
}

- (void)scanManager:(id)manager willStartScanRequest:(id)request
{
  v11 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = WFLogForCategory(6uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
  {
    v9 = 138412290;
    v10 = requestCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "scan request: %@ started", &v9, 0xCu);
  }
}

- (void)scanManager:(id)manager didFinishScanRequest:(id)request results:(id)results error:(id)error timeElapsed:(double)elapsed
{
  v38 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  resultsCopy = results;
  errorCopy = error;
  v14 = WFLogForCategory(6uLL);
  v15 = OSLogForWFLogLevel(1uLL);
  v16 = v15;
  if (WFCurrentLogLevel(v15, v17) && v14)
  {
    v18 = v14;
    if (os_log_type_enabled(v18, v16))
    {
      *buf = 138412802;
      v33 = requestCopy;
      v34 = 2048;
      v35 = [resultsCopy count];
      v36 = 2048;
      elapsedCopy = elapsed;
      _os_log_impl(&dword_273ECD000, v18, v16, "scan request: %@ finished with %lu results in %f sec", buf, 0x20u);
    }
  }

  ssid = [requestCopy ssid];

  if (ssid)
  {
    v20 = 2;
  }

  else
  {
    v20 = [requestCopy channelListIncludesTwoFour] ^ 1;
  }

  v30 = v20;
  v21 = +[WFMetricsManager sharedManager];
  v22 = [WFScanPerformanceEvent alloc];
  firstScanFinished = [(WFNetworkListController *)self firstScanFinished];
  v24 = [resultsCopy count];
  v31 = resultsCopy;
  selfCopy = self;
  if (errorCopy)
  {
    v26 = errorCopy;
    errorCopy = [errorCopy code];
  }

  else
  {
    v26 = 0;
  }

  lowPriorityScan = [requestCopy lowPriorityScan];
  LOBYTE(v29) = [requestCopy applyRssiThresholdFilter];
  v28 = [(WFScanPerformanceEvent *)v22 initWithScanReason:v30 timeElasped:elapsed firstScan:!firstScanFinished results:v24 errorCode:errorCopy lowPriority:lowPriorityScan rssiFilter:v29];
  [v21 processEvent:v28];

  [(WFNetworkListController *)selfCopy setFirstScanFinished:1];
}

- (BOOL)isAssociating
{
  associationContext = [(WFNetworkListController *)self associationContext];
  if (associationContext)
  {
    associationContext2 = [(WFNetworkListController *)self associationContext];
    if ([associationContext2 state] == 1)
    {
      v5 = 1;
    }

    else
    {
      associationContext3 = [(WFNetworkListController *)self associationContext];
      v5 = [associationContext3 state] == 2;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_associateToScanRecord:(id)record
{
  recordCopy = record;
  if ([(WFNetworkListController *)self _canStartAssociationToNetwork:?])
  {
    [(WFNetworkListController *)self _associateToScanRecord:recordCopy profile:0];
  }
}

- (void)_associateToScanRecord:(id)record profile:(id)profile
{
  v62 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  profileCopy = profile;
  v8 = WFLogForCategory(5uLL);
  v9 = OSLogForWFLogLevel(1uLL);
  v10 = v9;
  if (WFCurrentLogLevel(v9, v11) && v8)
  {
    v12 = v8;
    if (os_log_type_enabled(v12, v10))
    {
      ssid = [recordCopy ssid];
      *buf = 138412290;
      v57 = ssid;
      _os_log_impl(&dword_273ECD000, v12, v10, "{ASSOC+} association started to %@", buf, 0xCu);
    }
  }

  if ([(WFNetworkListController *)self isAssociating])
  {
    v14 = WFLogForCategory(0);
    v15 = OSLogForWFLogLevel(2uLL);
    v16 = v15;
    if (WFCurrentLogLevel(v15, v17) >= 2 && v14)
    {
      v18 = v14;
      if (os_log_type_enabled(v18, v16))
      {
        associationContext = [(WFNetworkListController *)self associationContext];
        stateDescription = [associationContext stateDescription];
        associationContext2 = [(WFNetworkListController *)self associationContext];
        networkName = [associationContext2 networkName];
        *buf = 136315650;
        v57 = "[WFNetworkListController _associateToScanRecord:profile:]";
        v58 = 2112;
        v59 = stateDescription;
        v60 = 2112;
        v61 = networkName;
        _os_log_impl(&dword_273ECD000, v18, v16, "%s association state is <%@> with network %@", buf, 0x20u);
      }
    }
  }

  _shouldPauseScanning = [(WFNetworkListController *)self _shouldPauseScanning];
  v24 = WFLogForCategory(0);
  v25 = OSLogForWFLogLevel(4uLL);
  v26 = v25;
  if (WFCurrentLogLevel(v25, v27) >= 4 && v24 && os_log_type_enabled(v24, v26))
  {
    *buf = 136315394;
    v57 = "[WFNetworkListController _associateToScanRecord:profile:]";
    v58 = 1024;
    LODWORD(v59) = _shouldPauseScanning;
    _os_log_impl(&dword_273ECD000, v24, v26, "%s- should pause scanning %d", buf, 0x12u);
  }

  if (_shouldPauseScanning)
  {
    [(WFNetworkListController *)self _pauseScanning];
  }

  viewController = [(WFNetworkListController *)self viewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  viewController2 = [(WFNetworkListController *)self viewController];
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    v50 = MEMORY[0x277D85DD0];
    v51 = 3221225472;
    v52 = __58__WFNetworkListController__associateToScanRecord_profile___block_invoke;
    v53 = &unk_279EBD290;
    selfCopy = self;
    v55 = recordCopy;
    dispatch_async(MEMORY[0x277D85CD0], &v50);
  }

  else
  {
    viewController3 = [(WFNetworkListController *)self viewController];
    [viewController3 setCurrentNetwork:recordCopy];
  }

  if ([(WFNetworkListController *)self viewControllerSupportsCurrentNetworkSubtitle:v50])
  {
    viewController4 = [(WFNetworkListController *)self viewController];
    [viewController4 setCurrentNetworkSubtitle:0];
  }

  viewController5 = [(WFNetworkListController *)self viewController];
  v35 = objc_opt_respondsToSelector();

  [recordCopy scaledRSSI];
  v37 = v36;
  if (v35)
  {
    v38 = WFSignalBarsFromScaledRSSI();
    viewController6 = [(WFNetworkListController *)self viewController];
    [viewController6 setCurrentNetworkSignalBars:v38];
  }

  else
  {
    viewController6 = [(WFNetworkListController *)self viewController];
    LODWORD(v40) = v37;
    [viewController6 setCurrentNetworkScaledRSSI:v40];
  }

  viewController7 = [(WFNetworkListController *)self viewController];
  [viewController7 setCurrentNetworkState:1];

LABEL_32:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = recordCopy;
    viewController8 = [(WFNetworkListController *)self viewController];
    currentNetworkState = [viewController8 currentNetworkState];

    if (currentNetworkState == 1)
    {
      v45 = WFLogForCategory(0);
      v46 = OSLogForWFLogLevel(3uLL);
      v47 = v46;
      if (WFCurrentLogLevel(v46, v48) >= 3 && v45 && os_log_type_enabled(v45, v47))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v45, v47, "Joining a hotspot while another association is in progress", buf, 2u);
      }
    }

    [(WFNetworkListController *)self _associateToHotspotDevice:v42];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_44;
    }

    v49 = recordCopy;
    if ([v49 isUnconfiguredAccessory])
    {
      [(WFNetworkListController *)self _associateToUnconfiguredAccessory:v49];
    }

    else if ([v49 isHotspot20] && -[WFNetworkListController isHS20Supported](self, "isHS20Supported"))
    {
      [(WFNetworkListController *)self _associateToHS20Network:v49];
    }

    else if ([v49 isEnterprise])
    {
      [(WFNetworkListController *)self _associateToEnterpriseNetwork:v49 profile:profileCopy];
    }

    else
    {
      [(WFNetworkListController *)self _associateToNetwork:v49 profile:profileCopy];
    }
  }

LABEL_44:
}

void __58__WFNetworkListController__associateToScanRecord_profile___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) viewController];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) interface];
  v4 = [v3 currentNetwork];
  [v5 setCurrentNetwork:v2 previousNetwork:v4 reason:1];
}

- (BOOL)_isChannelAllowedForScanPerCurrentLocale:(int64_t)locale
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  interface = [(WFNetworkListController *)self interface];
  deviceScanChannelsPerCurLocale = [interface deviceScanChannelsPerCurLocale];

  v6 = [deviceScanChannelsPerCurLocale countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(deviceScanChannelsPerCurLocale);
        }

        if ([*(*(&v12 + 1) + 8 * i) channel] == locale)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [deviceScanChannelsPerCurLocale countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)_associateToHotspotDevice:(id)device
{
  deviceCopy = device;
  [(WFNetworkListController *)self _associationWillStart:deviceCopy];
  v5 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__WFNetworkListController__associateToHotspotDevice___block_invoke;
  v7[3] = &unk_279EBD290;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(v5, v7);
}

void __53__WFNetworkListController__associateToHotspotDevice___block_invoke(uint64_t a1)
{
  v218 = *MEMORY[0x277D85DE8];
  v170 = [MEMORY[0x277CBEAA8] date];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
  {
    *buf = 136315394;
    *&buf[4] = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v170;
    _os_log_impl(&dword_273ECD000, v2, v4, "%s: TIME: start %@", buf, 0x16u);
  }

  v6 = +[WFMetricsManager sharedManager];
  v7 = [WFInstantHotspotJoinEvent joinEventWithType:0 latency:0 channel:0 error:0.0];
  [v6 processEvent:v7];

  v8 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v215 = __Block_byref_object_copy_;
  v216 = __Block_byref_object_dispose_;
  v217 = 0;
  while (1)
  {
    v9 = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(1uLL);
    v11 = v10;
    if (WFCurrentLogLevel(v10, v12) && v9 && os_log_type_enabled(v9, v11))
    {
      *v210 = 136315138;
      v211 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
      _os_log_impl(&dword_273ECD000, v9, v11, "%s: TIME: enabling remote hotspot", v210, 0xCu);
    }

    v13 = [*(a1 + 32) hotspotInterface];
    v14 = *(a1 + 40);
    v15 = *&buf[8];
    obj = 0;
    v16 = [v13 enableHotspot:v14 error:&obj];
    objc_storeStrong((v15 + 40), obj);

    if (!*(*&buf[8] + 40))
    {
      v205 = 0u;
      v206 = 0u;
      v203 = 0u;
      v204 = 0u;
      v27 = [*(a1 + 32) interface];
      v28 = [v27 deviceScanChannels];

      v29 = [v28 countByEnumeratingWithState:&v203 objects:v209 count:16];
      if (v29)
      {
        v30 = *v204;
        while (2)
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v204 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v203 + 1) + 8 * i);
            v33 = [v32 channel];
            v34 = [v16 channel];
            LODWORD(v33) = v33 == [v34 integerValue];

            if (v33)
            {
              v169 = v32;
              goto LABEL_40;
            }
          }

          v29 = [v28 countByEnumeratingWithState:&v203 objects:v209 count:16];
          if (v29)
          {
            continue;
          }

          break;
        }
      }

      v169 = 0;
LABEL_40:

      v45 = +[WFMetricsManager sharedManager];
      v46 = [MEMORY[0x277CBEAA8] date];
      [v46 timeIntervalSinceDate:v170];
      v48 = v47;
      if (v169)
      {
        v49 = [v169 channel];
      }

      else
      {
        v49 = 0;
      }

      v50 = [WFInstantHotspotJoinEvent joinEventWithType:1 latency:v49 channel:0 error:v48];
      [v45 processEvent:v50];

      v167 = [MEMORY[0x277CBEAA8] date];
      if (v169)
      {
        v208 = v169;
        v162 = [MEMORY[0x277CBEA60] arrayWithObjects:&v208 count:1];
      }

      else
      {
        v51 = [*(a1 + 32) interface];
        v162 = [v51 deviceScanChannels];
      }

      v52 = [v16 name];
      v168 = [WFScanRequest scanRequestForSSID:v52 channels:v162];

      if (!v168)
      {
        v128 = WFLogForCategory(0);
        v129 = OSLogForWFLogLevel(1uLL);
        v130 = v129;
        if (WFCurrentLogLevel(v129, v131) && v128 && os_log_type_enabled(v128, v130))
        {
          *v210 = 136315138;
          v211 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
          _os_log_impl(&dword_273ECD000, v128, v130, "%s: error creating scan request", v210, 0xCu);
        }

        [*(a1 + 32) _presentHotspotErrorContextWithDevice:*(a1 + 40) hotspotError:0 failure:4];
        v132 = [*(a1 + 32) wifiClient];
        [v132 setAutoJoinEnabled:1];

        v133 = +[WFMetricsManager sharedManager];
        v134 = [MEMORY[0x277CBEAA8] date];
        [v134 timeIntervalSinceDate:v167];
        v136 = v135;
        if (v169)
        {
          v137 = [v169 channel];
        }

        else
        {
          v137 = 0;
        }

        v148 = [WFInstantHotspotJoinEvent joinEventWithType:2 latency:v137 channel:10001 error:v136];
        [v133 processEvent:v148];

        v163 = WFLogForCategory(0);
        v149 = OSLogForWFLogLevel(1uLL);
        v150 = v149;
        v166 = 0;
        if (!WFCurrentLogLevel(v149, v151) || !v163)
        {
          goto LABEL_143;
        }

        v152 = v163;
        if (os_log_type_enabled(v152, v150))
        {
          v153 = [MEMORY[0x277CBEAA8] date];
          *v210 = 136315394;
          v211 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
          v212 = 2112;
          v213 = v153;
          _os_log_impl(&dword_273ECD000, v152, v150, "%s: TIME: end %@", v210, 0x16u);
        }

        v166 = 0;
        v163 = v152;
LABEL_142:

LABEL_143:
        v43 = v162;
        goto LABEL_144;
      }

      [v168 setDwellTime:110];
      v163 = [v162 mutableCopy];
      if (v169 && v163 && [v169 channel] >= 0x24)
      {
        if ([v169 channel] != 149 && objc_msgSend(*(a1 + 32), "_isChannelAllowedForScanPerCurrentLocale:", 149))
        {
          v53 = -[WFScanChannel initWithChannel:flags:]([WFScanChannel alloc], "initWithChannel:flags:", 149, [v169 flags]);
          [v163 addObject:v53];
        }

        if ([v169 channel] != 44 && objc_msgSend(*(a1 + 32), "_isChannelAllowedForScanPerCurrentLocale:", 44))
        {
          v54 = -[WFScanChannel initWithChannel:flags:]([WFScanChannel alloc], "initWithChannel:flags:", 44, [v169 flags]);
          [v163 addObject:v54];
        }
      }

      v55 = [v16 name];
      v56 = [v163 copy];
      v159 = [WFScanRequest scanRequestForSSID:v55 channels:v56];

      if (v159)
      {
        [v159 setDwellTime:110];
        v165 = dispatch_semaphore_create(0);
        v166 = 0;
        v197 = 0;
        v198 = &v197;
        v199 = 0x3032000000;
        v200 = __Block_byref_object_copy_;
        v201 = __Block_byref_object_dispose_;
        v202 = 0;
        do
        {
          v57 = WFLogForCategory(0);
          v58 = OSLogForWFLogLevel(1uLL);
          v59 = v58;
          if (WFCurrentLogLevel(v58, v60) && v57 && os_log_type_enabled(v57, v59))
          {
            *v210 = 136315138;
            v211 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
            _os_log_impl(&dword_273ECD000, v57, v59, "%s: TIME: scanning for remote hotspot", v210, 0xCu);
          }

          v193 = 0;
          v194 = &v193;
          v195 = 0x2020000000;
          v196 = 0;
          v61 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = 0;

          v62 = [*(a1 + 32) interface];
          v185[0] = MEMORY[0x277D85DD0];
          v185[1] = 3221225472;
          v185[2] = __53__WFNetworkListController__associateToHotspotDevice___block_invoke_167;
          v185[3] = &unk_279EBD2B8;
          v189 = buf;
          v63 = v16;
          v186 = v63;
          v190 = &v197;
          v191 = &v193;
          v64 = v170;
          v187 = v64;
          v192 = 0x403E000000000000;
          v65 = v165;
          v188 = v65;
          [v62 asyncScanRequest:v168 reply:v185];

          dispatch_semaphore_wait(v65, 0xFFFFFFFFFFFFFFFFLL);
          v66 = WFLogForCategory(0);
          v67 = OSLogForWFLogLevel(1uLL);
          v68 = v67;
          if (WFCurrentLogLevel(v67, v69) && v66 && os_log_type_enabled(v66, v68))
          {
            v70 = v198[5];
            *v210 = 136315394;
            v211 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke_2";
            v212 = 2112;
            v213 = v70;
            _os_log_impl(&dword_273ECD000, v66, v68, "%s: TIME: directed scan for instant hotspot found %@", v210, 0x16u);
          }

          if (*(v194 + 24) == 1)
          {
            v71 = WFLogForCategory(0);
            v72 = OSLogForWFLogLevel(1uLL);
            v73 = v72;
            v75 = 1;
            if (WFCurrentLogLevel(v72, v74) && v71 && os_log_type_enabled(v71, v73))
            {
              *v210 = 136315138;
              v211 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
              _os_log_impl(&dword_273ECD000, v71, v73, "%s: retrying scan ", v210, 0xCu);
            }
          }

          else if (*(*&buf[8] + 40) || !v198[5])
          {
            v76 = WFLogForCategory(0);
            v77 = OSLogForWFLogLevel(1uLL);
            v78 = v77;
            if (WFCurrentLogLevel(v77, v79) && v76 && os_log_type_enabled(v76, v78))
            {
              v80 = *(*&buf[8] + 40);
              *v210 = 136315394;
              v211 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
              v212 = 2112;
              v213 = v80;
              _os_log_impl(&dword_273ECD000, v76, v78, "%s: error on directed scan for hotspot %@", v210, 0x16u);
            }

            [*(a1 + 32) _presentHotspotErrorContextWithDevice:*(a1 + 40) hotspotError:0 failure:4];
            v81 = [*(a1 + 32) wifiClient];
            [v81 setAutoJoinEnabled:1];

            v82 = +[WFMetricsManager sharedManager];
            v83 = [MEMORY[0x277CBEAA8] date];
            [v83 timeIntervalSinceDate:v167];
            v85 = v84;
            if (v169)
            {
              v86 = [v169 channel];
            }

            else
            {
              v86 = 0;
            }

            v93 = *(*&buf[8] + 40);
            if (v93)
            {
              v94 = [v93 code];
            }

            else
            {
              v94 = 4;
            }

            v95 = [WFInstantHotspotJoinEvent joinEventWithType:2 latency:v86 channel:v94 error:v85];
            [v82 processEvent:v95];

            v71 = WFLogForCategory(0);
            v96 = OSLogForWFLogLevel(1uLL);
            v97 = v96;
            v75 = 0;
            if (WFCurrentLogLevel(v96, v98) && v71)
            {
              v71 = v71;
              if (os_log_type_enabled(v71, v97))
              {
                v99 = [MEMORY[0x277CBEAA8] date];
                *v210 = 136315394;
                v211 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
                v212 = 2112;
                v213 = v99;
                _os_log_impl(&dword_273ECD000, v71, v97, "%s: TIME: end %@", v210, 0x16u);
              }

              v75 = 0;
            }
          }

          else
          {
            v87 = +[WFMetricsManager sharedManager];
            v88 = [MEMORY[0x277CBEAA8] date];
            [v88 timeIntervalSinceDate:v167];
            v90 = v89;
            v91 = [v198[5] channel];
            if (v91)
            {
              v160 = [v198[5] channel];
              v92 = [v160 unsignedIntegerValue];
            }

            else
            {
              v92 = 0;
            }

            v100 = [WFInstantHotspotJoinEvent joinEventWithType:2 latency:v92 channel:0 error:v90];
            [v87 processEvent:v100];

            if (v91)
            {
            }

            v161 = [MEMORY[0x277CBEAA8] date];

            v101 = [v198[5] matchingKnownNetworkProfile];

            if (v101 && (v102 = [WFNetworkProfile alloc], [v198[5] matchingKnownNetworkProfile], v103 = objc_claimAutoreleasedReturnValue(), v164 = -[WFNetworkProfile initWithCoreWiFiProfile:](v102, "initWithCoreWiFiProfile:", v103), v103, v164))
            {
              v104 = [(WFNetworkProfile *)v164 mutableCopy];
            }

            else
            {
              v104 = [WFMutableNetworkProfile mutableProfileForNetwork:v198[5]];
              v164 = 0;
            }

            v105 = [v63 password];
            [v104 setPassword:v105];

            [v104 setInstantHotspotJoin:1];
            v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(*(a1 + 40), "uniqueIdentifier")];
            [v104 setHotspotDeviceIdentifier:v106];

            v107 = WFLogForCategory(0);
            v108 = OSLogForWFLogLevel(4uLL);
            v109 = v108;
            if (WFCurrentLogLevel(v108, v110) >= 4 && v107)
            {
              v111 = v107;
              if (os_log_type_enabled(v111, v109))
              {
                v112 = [v104 ssid];
                v113 = [v104 hotspotDeviceIdentifier];
                *v210 = 138412546;
                v211 = v112;
                v212 = 2112;
                v213 = v113;
                _os_log_impl(&dword_273ECD000, v111, v109, "Saving device identifier for hotspot: %@, deviceID: %@", v210, 0x16u);
              }
            }

            objc_initWeak(&location, *(a1 + 32));
            v180 = 0;
            v181 = &v180;
            v182 = 0x2020000000;
            v183 = 0;
            v114 = WFLogForCategory(0);
            v115 = OSLogForWFLogLevel(3uLL);
            v116 = v115;
            if (WFCurrentLogLevel(v115, v117) >= 3 && v114 && os_log_type_enabled(v114, v116))
            {
              *v210 = 0;
              _os_log_impl(&dword_273ECD000, v114, v116, "Hotspot has been enabled and directed scan has been completed. Associate to hotspot.", v210, 2u);
            }

            v118 = [*(a1 + 32) interface];
            v119 = v198[5];
            v171[0] = MEMORY[0x277D85DD0];
            v171[1] = 3221225472;
            v171[2] = __53__WFNetworkListController__associateToHotspotDevice___block_invoke_172;
            v171[3] = &unk_279EBD2E0;
            objc_copyWeak(v179, &location);
            v177 = &v180;
            v172 = v64;
            v179[1] = 0x403E000000000000;
            v173 = *(a1 + 40);
            v166 = v161;
            v174 = v166;
            v178 = &v197;
            v120 = v65;
            v175 = v120;
            v71 = v104;
            v176 = v71;
            [v118 asyncAssociateToNetwork:v119 profile:v71 reply:v171];

            dispatch_semaphore_wait(v120, 0xFFFFFFFFFFFFFFFFLL);
            v75 = *(v181 + 24);
            if ((v75 & 1) == 0)
            {
              v121 = WFLogForCategory(0);
              v122 = OSLogForWFLogLevel(1uLL);
              v123 = v122;
              if (WFCurrentLogLevel(v122, v124) && v121)
              {
                v125 = v121;
                if (os_log_type_enabled(v125, v123))
                {
                  v126 = [MEMORY[0x277CBEAA8] date];
                  *v210 = 136315394;
                  v211 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
                  v212 = 2112;
                  v213 = v126;
                  _os_log_impl(&dword_273ECD000, v125, v123, "%s: TIME: end %@", v210, 0x16u);
                }
              }
            }

            objc_destroyWeak(v179);
            _Block_object_dispose(&v180, 8);
            objc_destroyWeak(&location);
          }

          _Block_object_dispose(&v193, 8);
        }

        while ((v75 & 1) != 0);
        _Block_object_dispose(&v197, 8);
        v127 = v202;
      }

      else
      {
        v138 = WFLogForCategory(0);
        v139 = OSLogForWFLogLevel(1uLL);
        v140 = v139;
        if (WFCurrentLogLevel(v139, v141) && v138 && os_log_type_enabled(v138, v140))
        {
          *v210 = 136315138;
          v211 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
          _os_log_impl(&dword_273ECD000, v138, v140, "%s: error creating scan request for retry", v210, 0xCu);
        }

        [*(a1 + 32) _presentHotspotErrorContextWithDevice:*(a1 + 40) hotspotError:0 failure:4];
        v142 = [*(a1 + 32) wifiClient];
        [v142 setAutoJoinEnabled:1];

        v143 = +[WFMetricsManager sharedManager];
        v144 = [MEMORY[0x277CBEAA8] date];
        [v144 timeIntervalSinceDate:v167];
        v146 = v145;
        if (v169)
        {
          v147 = [v169 channel];
        }

        else
        {
          v147 = 0;
        }

        v154 = [WFInstantHotspotJoinEvent joinEventWithType:2 latency:v147 channel:10001 error:v146];
        [v143 processEvent:v154];

        v65 = WFLogForCategory(0);
        v155 = OSLogForWFLogLevel(1uLL);
        v156 = v155;
        v166 = 0;
        if (!WFCurrentLogLevel(v155, v157) || !v65)
        {
          goto LABEL_141;
        }

        v127 = v65;
        if (os_log_type_enabled(v127, v156))
        {
          v158 = [MEMORY[0x277CBEAA8] date];
          *v210 = 136315394;
          v211 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
          v212 = 2112;
          v213 = v158;
          _os_log_impl(&dword_273ECD000, v127, v156, "%s: TIME: end %@", v210, 0x16u);
        }

        v166 = 0;
        v65 = v127;
      }

LABEL_141:
      v152 = v159;
      goto LABEL_142;
    }

    v17 = WFLogForCategory(0);
    v18 = OSLogForWFLogLevel(1uLL);
    v19 = v18;
    if (WFCurrentLogLevel(v18, v20) && v17 && os_log_type_enabled(v17, v19))
    {
      v21 = *(*&buf[8] + 40);
      *v210 = 136315394;
      v211 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
      v212 = 2112;
      v213 = v21;
      _os_log_impl(&dword_273ECD000, v17, v19, "%s: error enabling hotspot: %@", v210, 0x16u);
    }

    if ([*(*&buf[8] + 40) code] == -71146)
    {
      break;
    }

    v22 = [*(a1 + 32) _shouldRetryRemoteHotspotEnableAfterError:{objc_msgSend(*(*&buf[8] + 40), "code")}];
    if (v8 < 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 != 1 || ([MEMORY[0x277CBEAA8] date], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "timeIntervalSinceDate:", v170), v26 = v25 < 30.0, v24, !v26))
    {
      [*(a1 + 32) _presentHotspotErrorContextWithDevice:*(a1 + 40) hotspotError:*(*&buf[8] + 40) failure:5];
      goto LABEL_33;
    }

    ++v8;
  }

  [*(a1 + 32) _presentHotspotErrorContextWithDevice:*(a1 + 40) hotspotError:*(*&buf[8] + 40) failure:19];
LABEL_33:
  v35 = [*(a1 + 32) wifiClient];
  [v35 setAutoJoinEnabled:1];

  v36 = +[WFMetricsManager sharedManager];
  v37 = [MEMORY[0x277CBEAA8] date];
  [v37 timeIntervalSinceDate:v170];
  v39 = +[WFInstantHotspotJoinEvent joinEventWithType:latency:channel:error:](WFInstantHotspotJoinEvent, "joinEventWithType:latency:channel:error:", 1, 0, [*(*&buf[8] + 40) code], v38);
  [v36 processEvent:v39];

  v169 = WFLogForCategory(0);
  v40 = OSLogForWFLogLevel(1uLL);
  v41 = v40;
  v166 = 0;
  if (!WFCurrentLogLevel(v40, v42) || !v169)
  {
    v167 = 0;
    goto LABEL_145;
  }

  v43 = v169;
  if (os_log_type_enabled(v43, v41))
  {
    v44 = [MEMORY[0x277CBEAA8] date];
    *v210 = 136315394;
    v211 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
    v212 = 2112;
    v213 = v44;
    _os_log_impl(&dword_273ECD000, v43, v41, "%s: TIME: end %@", v210, 0x16u);
  }

  v166 = 0;
  v167 = 0;
  v169 = v43;
LABEL_144:

LABEL_145:
  _Block_object_dispose(buf, 8);
}

void __53__WFNetworkListController__associateToHotspotDevice___block_invoke_167(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(*(a1 + 56) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v10 = MEMORY[0x277CCAC30];
    v11 = [*(a1 + 32) name];
    v9 = [v10 predicateWithFormat:@"ssid == %@", v11];

    v12 = [v6 filteredSetUsingPredicate:v9];
    v13 = [v12 anyObject];
    v14 = *(*(a1 + 64) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v16 = [MEMORY[0x277CBEAA8] date];
    [v16 timeIntervalSinceDate:*(a1 + 40)];
    *(*(*(a1 + 72) + 8) + 24) = v17 < *(a1 + 80);
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v18 = WFLogForCategory(0);
    v19 = OSLogForWFLogLevel(1uLL);
    v20 = v19;
    if (WFCurrentLogLevel(v19, v21) && v18 && os_log_type_enabled(v18, v20))
    {
      *buf = 136315138;
      v27 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
      _os_log_impl(&dword_273ECD000, v18, v20, "%s: scan failed, dispatch retry in 1 second", buf, 0xCu);
    }

    v22 = dispatch_time(0, 1000000000);
    v23 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__WFNetworkListController__associateToHotspotDevice___block_invoke_168;
    block[3] = &unk_279EBCFE0;
    v25 = *(a1 + 48);
    dispatch_after(v22, v23, block);
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 48));
  }
}

void __53__WFNetworkListController__associateToHotspotDevice___block_invoke_172(uint64_t a1, char a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v8 = WeakRetained;
  if (a2)
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    if ([WeakRetained viewControllerSupportsCurrentNetworkSubtitle])
    {
      v9 = [v8 viewController];
      [v9 setCurrentNetworkSubtitle:0];
    }

    [v8 _handleAssociationResult:1 error:0 network:*(*(*(a1 + 80) + 8) + 40) profile:*(a1 + 64) shouldSaveProfile:0];
    v10 = +[WFMetricsManager sharedManager];
    v11 = [MEMORY[0x277CBEAA8] date];
    [v11 timeIntervalSinceDate:*(a1 + 48)];
    v13 = v12;
    v14 = [*(*(*(a1 + 80) + 8) + 40) channel];
    if (v14)
    {
      v3 = [*(*(*(a1 + 80) + 8) + 40) channel];
      v15 = [v3 unsignedIntegerValue];
    }

    else
    {
      v15 = 0;
    }

    v33 = [WFInstantHotspotJoinEvent joinEventWithType:3 latency:v15 channel:0 error:v13];
    [v10 processEvent:v33];

    if (v14)
    {
    }

    v34 = +[WFMetricsManager sharedManager];
    v35 = [MEMORY[0x277CBEAA8] date];
    [v35 timeIntervalSinceDate:*(a1 + 32)];
    v37 = v36;
    v38 = [*(*(*(a1 + 80) + 8) + 40) channel];
    if (v38)
    {
      v3 = [*(*(*(a1 + 80) + 8) + 40) channel];
      v39 = [v3 unsignedIntegerValue];
    }

    else
    {
      v39 = 0;
    }

    v40 = [WFInstantHotspotJoinEvent joinEventWithType:4 latency:v39 channel:0 error:v37];
    [v34 processEvent:v40];

    if (v38)
    {
    }

    v41 = WFLogForCategory(0);
    v42 = OSLogForWFLogLevel(1uLL);
    v43 = v42;
    if (WFCurrentLogLevel(v42, v44) && v41)
    {
      v45 = v41;
      if (os_log_type_enabled(v45, v43))
      {
        v46 = [*(*(*(a1 + 80) + 8) + 40) ssid];
        *buf = 136315394;
        v51 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke_2";
        v52 = 2112;
        v53 = v46;
        _os_log_impl(&dword_273ECD000, v45, v43, "%s: TIME: associated to hotspot %@ sucessfully", buf, 0x16u);
      }
    }

    dispatch_semaphore_signal(*(a1 + 56));
  }

  else
  {
    v16 = [MEMORY[0x277CBEAA8] date];
    [v16 timeIntervalSinceDate:*(a1 + 32)];
    *(*(*(a1 + 72) + 8) + 24) = v17 < *(a1 + 96);
    v18 = *(*(*(a1 + 72) + 8) + 24);
    v19 = WFLogForCategory(0);
    v20 = OSLogForWFLogLevel(1uLL);
    v21 = v20;
    if (WFCurrentLogLevel(v20, v22))
    {
      v23 = v19 == 0;
    }

    else
    {
      v23 = 1;
    }

    v24 = !v23;
    if (v18)
    {
      if (v24 && os_log_type_enabled(v19, v21))
      {
        *buf = 136315138;
        v51 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
        _os_log_impl(&dword_273ECD000, v19, v21, "%s: association failed, dispatch retry in 1 second", buf, 0xCu);
      }

      v25 = dispatch_time(0, 1000000000);
      v26 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__WFNetworkListController__associateToHotspotDevice___block_invoke_173;
      block[3] = &unk_279EBCFE0;
      v49 = *(a1 + 56);
      dispatch_after(v25, v26, block);

      v27 = v49;
    }

    else
    {
      if (v24 && os_log_type_enabled(v19, v21))
      {
        *buf = 136315394;
        v51 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
        v52 = 2112;
        v53 = v6;
        _os_log_impl(&dword_273ECD000, v19, v21, "%s: error on associating to hotspot %@", buf, 0x16u);
      }

      [v8 _presentHotspotErrorContextWithDevice:*(a1 + 40) hotspotError:0 failure:13];
      v27 = +[WFMetricsManager sharedManager];
      v28 = [MEMORY[0x277CBEAA8] date];
      [v28 timeIntervalSinceDate:*(a1 + 48)];
      v30 = v29;
      v31 = [*(*(*(a1 + 80) + 8) + 40) channel];
      if (v31)
      {
        a1 = [*(*(*(a1 + 80) + 8) + 40) channel];
        v32 = [a1 unsignedIntegerValue];
      }

      else
      {
        v32 = 0;
      }

      v47 = +[WFInstantHotspotJoinEvent joinEventWithType:latency:channel:error:](WFInstantHotspotJoinEvent, "joinEventWithType:latency:channel:error:", 3, v32, [v6 code], v30);
      [v27 processEvent:v47];

      if (v31)
      {
      }
    }
  }
}

- (void)_associateToNetwork:(id)network profile:(id)profile
{
  v97 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  profileCopy = profile;
  [(WFNetworkListController *)self _associationWillStart:networkCopy];
  v85 = profileCopy;
  v8 = [profileCopy mutableCopy];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    matchingKnownNetworkProfile = [networkCopy matchingKnownNetworkProfile];

    if (!matchingKnownNetworkProfile || (v11 = [WFNetworkProfile alloc], [networkCopy matchingKnownNetworkProfile], v12 = objc_claimAutoreleasedReturnValue(), v13 = -[WFNetworkProfile initWithCoreWiFiProfile:](v11, "initWithCoreWiFiProfile:", v12), v9 = -[WFNetworkProfile mutableCopy](v13, "mutableCopy"), v13, v12, !v9))
    {
      v14 = [[WFNetworkProfile alloc] initWithNetwork:networkCopy];
      v9 = [(WFNetworkProfile *)v14 mutableCopy];
    }
  }

  ssid = [networkCopy ssid];
  randomMACManager = [(WFNetworkListController *)self randomMACManager];
  v17 = [randomMACManager isSSIDinCache:ssid];

  if (v17)
  {
    randomMACManager2 = [(WFNetworkListController *)self randomMACManager];
    v19 = [randomMACManager2 shouldEnableRandomMACForSSID:ssid];

    [v9 setRandomMACAddressEnabled:v19];
    randomMACManager3 = [(WFNetworkListController *)self randomMACManager];
    v21 = [randomMACManager3 cachedRandomMACForSSID:ssid];

    [v9 setRandomMACAddress:v21];
    v22 = WFLogForCategory(8uLL);
    v23 = OSLogForWFLogLevel(1uLL);
    v24 = v23;
    if (WFCurrentLogLevel(v23, v25) && v22 && os_log_type_enabled(v22, v24))
    {
      *buf = 138412802;
      v92 = v21;
      v93 = 2112;
      v94 = ssid;
      v95 = 1024;
      LODWORD(v96) = v19;
      _os_log_impl(&dword_273ECD000, v22, v24, "using cached address='%@' for association to '%@' (private address enabled=%d)", buf, 0x1Cu);
    }
  }

  password = [v9 password];
  v27 = password == 0;

  if (v27)
  {
    scanManager = [(WFNetworkListController *)self scanManager];
    v29 = [scanManager hotspotHelperForScanRecord:networkCopy];

    if (v29)
    {
      v30 = WFLogForCategory(0);
      v31 = OSLogForWFLogLevel(3uLL);
      v32 = v31;
      if (WFCurrentLogLevel(v31, v33) >= 3 && v30)
      {
        v34 = v30;
        if (os_log_type_enabled(v34, v32))
        {
          ssid2 = [v29 ssid];
          bundleIdentifier = [v29 bundleIdentifier];
          *buf = 138412546;
          v92 = ssid2;
          v93 = 2112;
          v94 = bundleIdentifier;
          _os_log_impl(&dword_273ECD000, v34, v32, "Found matching hotspot plugin network ssid: %@ (bundleIdentifier %@), using supplied password", buf, 0x16u);
        }
      }

      password2 = [v29 password];
      [v9 setPassword:password2];

      [v9 setUserProvidedPassword:1];
      bundleIdentifier2 = [v29 bundleIdentifier];
      [v9 setOriginatorBundleIdentifier:bundleIdentifier2];
    }
  }

  if ([v9 shouldBeRemovedIfApplicationIsNoLongerInstalled])
  {
    v39 = WFLogForCategory(0);
    v40 = OSLogForWFLogLevel(1uLL);
    v41 = v40;
    if (WFCurrentLogLevel(v40, v42) && v39)
    {
      v43 = v39;
      if (os_log_type_enabled(v43, v41))
      {
        originatorBundleIdentifier = [v9 originatorBundleIdentifier];
        *buf = 136315650;
        v92 = "[WFNetworkListController _associateToNetwork:profile:]";
        v93 = 2112;
        v94 = v9;
        v95 = 2114;
        v96 = originatorBundleIdentifier;
        _os_log_impl(&dword_273ECD000, v43, v41, "%s: removing application based network (%@) as it's host application (%{public}@) not installed", buf, 0x20u);
      }
    }

    matchingKnownNetworkProfile2 = [networkCopy matchingKnownNetworkProfile];

    if (matchingKnownNetworkProfile2)
    {
      wifiClient = [(WFNetworkListController *)self wifiClient];
      cInterface = [wifiClient cInterface];
      matchingKnownNetworkProfile3 = [networkCopy matchingKnownNetworkProfile];
      v90 = 0;
      v49 = [cInterface removeKnownNetworkProfile:matchingKnownNetworkProfile3 reason:2 error:&v90];
      v50 = v90;

      if (v49)
      {
LABEL_40:

        v61 = [[WFNetworkProfile alloc] initWithNetwork:networkCopy];
        v62 = [(WFNetworkProfile *)v61 mutableCopy];

        v9 = v62;
        goto LABEL_41;
      }

      v51 = WFLogForCategory(0);
      v52 = OSLogForWFLogLevel(1uLL);
      v53 = v52;
      if (WFCurrentLogLevel(v52, v54) && v51)
      {
        v55 = v51;
        if (os_log_type_enabled(v55, v53))
        {
          ssid3 = [networkCopy ssid];
          *buf = 138412546;
          v92 = ssid3;
          v93 = 2112;
          v94 = v50;
          _os_log_impl(&dword_273ECD000, v55, v53, "Failed to remove '%@' error='%@'", buf, 0x16u);
        }
      }
    }

    else
    {
      v50 = WFLogForCategory(0);
      v57 = OSLogForWFLogLevel(1uLL);
      v58 = v57;
      if (!WFCurrentLogLevel(v57, v59) || !v50)
      {
        goto LABEL_40;
      }

      v51 = v50;
      if (os_log_type_enabled(v51, v58))
      {
        ssid4 = [networkCopy ssid];
        *buf = 138412290;
        v92 = ssid4;
        _os_log_impl(&dword_273ECD000, v51, v58, "no matching known network profile for '%@'", buf, 0xCu);
      }

      v50 = v51;
    }

    goto LABEL_40;
  }

LABEL_41:
  if ([networkCopy securityMode] == 128 && (objc_msgSend(v9, "password"), v63 = objc_claimAutoreleasedReturnValue(), v64 = v63 == 0, v63, v64))
  {
    associationContext = [(WFNetworkListController *)self associationContext];
    [associationContext setState:2];

    [(WFNetworkListController *)self _promptCredentialsForNetwork:networkCopy profile:v9];
  }

  else
  {
    otherNetworkVC = [(WFNetworkListController *)self otherNetworkVC];

    if (otherNetworkVC)
    {
      v66 = WFLogForCategory(0);
      v67 = OSLogForWFLogLevel(3uLL);
      v68 = v67;
      if (WFCurrentLogLevel(v67, v69) >= 3 && v66)
      {
        v70 = v66;
        if (os_log_type_enabled(v70, v68))
        {
          otherNetworkVC2 = [(WFNetworkListController *)self otherNetworkVC];
          *buf = 138412290;
          v92 = otherNetworkVC2;
          _os_log_impl(&dword_273ECD000, v70, v68, "other network vc is visible %@", buf, 0xCu);
        }
      }

      otherNetworkVC3 = [(WFNetworkListController *)self otherNetworkVC];
      v73 = objc_opt_respondsToSelector();

      if (v73)
      {
        otherNetworkVC4 = [(WFNetworkListController *)self otherNetworkVC];
        [otherNetworkVC4 setJoining:1];
      }
    }

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      otherNetworkVC5 = [(WFNetworkListController *)self otherNetworkVC];
      v76 = objc_opt_respondsToSelector();

      if (v76)
      {
        v77 = MEMORY[0x277CCACA8];
        v78 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v79 = [v78 localizedStringForKey:@"kWFLocOtherNetworkJoiningPromptFormat" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
        ssid5 = [networkCopy ssid];
        v81 = [v77 stringWithFormat:v79, ssid5];
        otherNetworkVC6 = [(WFNetworkListController *)self otherNetworkVC];
        [otherNetworkVC6 setActivityString:v81];
      }
    }

    objc_initWeak(buf, self);
    interface = [(WFNetworkListController *)self interface];
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __55__WFNetworkListController__associateToNetwork_profile___block_invoke;
    v86[3] = &unk_279EBD308;
    objc_copyWeak(&v89, buf);
    v87 = networkCopy;
    v88 = v9;
    [interface asyncAssociateToNetwork:v87 profile:v88 reply:v86];

    objc_destroyWeak(&v89);
    objc_destroyWeak(buf);
  }
}

void __55__WFNetworkListController__associateToNetwork_profile___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleAssociationResult:a2 error:v5 network:*(a1 + 32) profile:*(a1 + 40) shouldSaveProfile:0];
}

- (void)_associateToEnterpriseNetwork:(id)network profile:(id)profile
{
  v54 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  profileCopy = profile;
  [(WFNetworkListController *)self _associationWillStart:networkCopy];
  v8 = [profileCopy mutableCopy];
  if (v8)
  {
LABEL_10:
    v13 = v8;
    goto LABEL_11;
  }

  matchingKnownNetworkProfile = [networkCopy matchingKnownNetworkProfile];

  if (!matchingKnownNetworkProfile || (v10 = [WFNetworkProfile alloc], [networkCopy matchingKnownNetworkProfile], v11 = objc_claimAutoreleasedReturnValue(), v12 = -[WFNetworkProfile initWithCoreWiFiProfile:](v10, "initWithCoreWiFiProfile:", v11), v13 = -[WFNetworkProfile mutableCopy](v12, "mutableCopy"), v12, v11, !v13))
  {
    v14 = WFLogForCategory(5uLL);
    v15 = OSLogForWFLogLevel(1uLL);
    v16 = v15;
    if (WFCurrentLogLevel(v15, v17) && v14)
    {
      v18 = v14;
      if (os_log_type_enabled(v18, v16))
      {
        ssid = [networkCopy ssid];
        *buf = 138412290;
        v49 = ssid;
        _os_log_impl(&dword_273ECD000, v18, v16, "no existing profile for %@", buf, 0xCu);
      }
    }

    v8 = [WFMutableNetworkProfile mutableProfileForNetwork:networkCopy];
    goto LABEL_10;
  }

LABEL_11:
  if ([v13 securityMode] == 1075)
  {
    v20 = WFLogForCategory(5uLL);
    v21 = OSLogForWFLogLevel(1uLL);
    v22 = v21;
    if (WFCurrentLogLevel(v21, v23) && v20)
    {
      v24 = v20;
      if (os_log_type_enabled(v24, v22))
      {
        ssid2 = [networkCopy ssid];
        securityMode = [networkCopy securityMode];
        *buf = 138543618;
        v49 = ssid2;
        v50 = 2048;
        v51 = securityMode;
        _os_log_impl(&dword_273ECD000, v24, v22, "%{public}@ security is any-encrpytion, proceeding with scanned network's security %ld", buf, 0x16u);
      }
    }

    [v13 setSecurityMode:{objc_msgSend(networkCopy, "securityMode")}];
  }

  canAttemptJoin = [v13 canAttemptJoin];
  v28 = WFLogForCategory(5uLL);
  v29 = OSLogForWFLogLevel(1uLL);
  v30 = v29;
  if (WFCurrentLogLevel(v29, v31))
  {
    v32 = v28 == 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = !v32;
  if (canAttemptJoin)
  {
    if (v33)
    {
      v34 = v28;
      if (os_log_type_enabled(v34, v30))
      {
        ssid3 = [networkCopy ssid];
        *buf = 138412546;
        v49 = ssid3;
        v50 = 2112;
        v51 = v13;
        _os_log_impl(&dword_273ECD000, v34, v30, "proceeding with join for %@ (profile: %@)", buf, 0x16u);
      }
    }

    v36 = WFLogForCategory(5uLL);
    v37 = OSLogForWFLogLevel(1uLL);
    v38 = v37;
    if (WFCurrentLogLevel(v37, v39) && v36 && os_log_type_enabled(v36, v38))
    {
      *buf = 136315650;
      v49 = "[WFNetworkListController _associateToEnterpriseNetwork:profile:]";
      v50 = 2112;
      v51 = networkCopy;
      v52 = 2112;
      v53 = profileCopy;
      _os_log_impl(&dword_273ECD000, v36, v38, "%s: Invoking asyncAssociateToNetwork with network %@ profile %@", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    interface = [(WFNetworkListController *)self interface];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __65__WFNetworkListController__associateToEnterpriseNetwork_profile___block_invoke;
    v44[3] = &unk_279EBD308;
    objc_copyWeak(&v47, buf);
    v45 = networkCopy;
    v46 = v13;
    [interface asyncAssociateToNetwork:v45 profile:v46 reply:v44];

    objc_destroyWeak(&v47);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v33)
    {
      v41 = v28;
      if (os_log_type_enabled(v41, v30))
      {
        ssid4 = [networkCopy ssid];
        *buf = 138412290;
        v49 = ssid4;
        _os_log_impl(&dword_273ECD000, v41, v30, "user credentials prompt required for %@", buf, 0xCu);
      }
    }

    associationContext = [(WFNetworkListController *)self associationContext];
    [associationContext setState:2];

    [(WFNetworkListController *)self _promptCredentialsForNetwork:networkCopy profile:v13];
  }
}

void __65__WFNetworkListController__associateToEnterpriseNetwork_profile___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleAssociationResult:a2 error:v5 network:*(a1 + 32) profile:*(a1 + 40) shouldSaveProfile:0];
}

- (void)_associateToHS20Network:(id)network
{
  v30 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  v5 = WFLogForCategory(5uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
  {
    *buf = 138412290;
    v29 = networkCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "associating to HS20 network %@", buf, 0xCu);
  }

  matchingKnownNetworkProfile = [networkCopy matchingKnownNetworkProfile];

  if (matchingKnownNetworkProfile)
  {
    v10 = WFLogForCategory(5uLL);
    v11 = OSLogForWFLogLevel(1uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) && v10)
    {
      v14 = v10;
      if (os_log_type_enabled(v14, v12))
      {
        matchingKnownNetworkProfile2 = [networkCopy matchingKnownNetworkProfile];
        *buf = 138412290;
        v29 = matchingKnownNetworkProfile2;
        _os_log_impl(&dword_273ECD000, v14, v12, "using matchingKnownNetworkProfile %@", buf, 0xCu);
      }
    }

    v16 = [WFNetworkProfile alloc];
    matchingKnownNetworkProfile3 = [networkCopy matchingKnownNetworkProfile];
    v18 = [(WFNetworkProfile *)v16 initWithCoreWiFiProfile:matchingKnownNetworkProfile3];
  }

  else
  {
    matchingKnownNetworkProfile3 = [(WFNetworkListController *)self gasController];
    v18 = [matchingKnownNetworkProfile3 profileForNetwork:networkCopy];
  }

  v19 = v18;

  if (v19)
  {
    v20 = WFLogForCategory(5uLL);
    v21 = OSLogForWFLogLevel(1uLL);
    v22 = v21;
    if (WFCurrentLogLevel(v21, v23) && v20 && os_log_type_enabled(v20, v22))
    {
      *buf = 138412290;
      v29 = v19;
      _os_log_impl(&dword_273ECD000, v20, v22, "using cached profile %@", buf, 0xCu);
    }

    [(WFNetworkListController *)self _associateToEnterpriseNetwork:networkCopy profile:v19];
  }

  else
  {
    objc_initWeak(buf, self);
    gasController = [(WFNetworkListController *)self gasController];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __51__WFNetworkListController__associateToHS20Network___block_invoke;
    v25[3] = &unk_279EBD330;
    objc_copyWeak(&v27, buf);
    v26 = networkCopy;
    [gasController resolveProfileForNetwork:v26 handler:v25 force:0];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }
}

void __51__WFNetworkListController__associateToHS20Network___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = WFLogForCategory(5uLL);
  v8 = OSLogForWFLogLevel(1uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) && v7 && os_log_type_enabled(v7, v9))
  {
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_273ECD000, v7, v9, "resolved profile %@ error %@", &v12, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _associateToEnterpriseNetwork:*(a1 + 32) profile:v5];
}

- (void)_associateToUnconfiguredAccessory:(id)accessory
{
  v11 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = WFLogForCategory(5uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
  {
    v9 = 138412290;
    v10 = accessoryCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "associating to unconfigured accessory %@", &v9, 0xCu);
  }

  if ([accessoryCopy unconfiguredAccessoryType] == 4)
  {
    [(WFNetworkListController *)self _promptForSecureWACDevice:accessoryCopy];
  }

  else
  {
    [(WFNetworkListController *)self _runUnconfiguredJoinOperationForNetwork:accessoryCopy];
  }
}

- (void)_promptForSecureWACDevice:(id)device
{
  v40 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    *buf = 136315394;
    v37 = "[WFNetworkListController _promptForSecureWACDevice:]";
    v38 = 2112;
    v39 = deviceCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: network %@", buf, 0x16u);
  }

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v30 = [v9 localizedStringForKey:@"kWFLocSecureWACPromptTitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];

  v10 = MEMORY[0x277CCACA8];
  unconfiguredDeviceName = [deviceCopy unconfiguredDeviceName];
  v29 = [v10 stringWithFormat:v30, unconfiguredDeviceName];

  viewController = [(WFNetworkListController *)self viewController];
  [viewController deviceCapability];
  IsChinaDevice = WFCapabilityIsChinaDevice();

  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = v14;
  if (IsChinaDevice)
  {
    v16 = @"kWFLocSecureWACPromptMessage_CH";
  }

  else
  {
    v16 = @"kWFLocSecureWACPromptMessage";
  }

  v28 = [v14 localizedStringForKey:v16 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];

  objc_initWeak(buf, self);
  v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v29 message:v28 preferredStyle:1];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (IsChinaDevice)
  {
    [v18 localizedStringForKey:@"kWFLocSecureWACPromptButtonAdd_CH" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  }

  else
  {
    [v18 localizedStringForKey:@"kWFLocSecureWACPromptButtonAdd" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  }
  v19 = ;

  v20 = MEMORY[0x277D750F8];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __53__WFNetworkListController__promptForSecureWACDevice___block_invoke;
  v33[3] = &unk_279EBD358;
  objc_copyWeak(&v35, buf);
  v21 = deviceCopy;
  v34 = v21;
  v22 = [v20 actionWithTitle:v19 style:0 handler:v33];
  [v17 addAction:v22];
  [v17 setPreferredAction:v22];
  v23 = MEMORY[0x277D750F8];
  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"kWFLocHomeAppRequiredButtonCancel" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __53__WFNetworkListController__promptForSecureWACDevice___block_invoke_2;
  v31[3] = &unk_279EBD380;
  objc_copyWeak(&v32, buf);
  v26 = [v23 actionWithTitle:v25 style:1 handler:v31];

  [v17 addAction:v26];
  viewController2 = [(WFNetworkListController *)self viewController];
  [viewController2 presentViewController:v17 animated:1 completion:0];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v35);

  objc_destroyWeak(buf);
}

void __53__WFNetworkListController__promptForSecureWACDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _openHomeAppForNetwork:*(a1 + 32)];
}

void __53__WFNetworkListController__promptForSecureWACDevice___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateViewControllerConnectedNetwork];
}

- (void)_downloadHomeApp
{
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 3 && v2 && os_log_type_enabled(v2, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_273ECD000, v2, v4, "Starting Home download", v6, 2u);
  }
}

- (void)_runUnconfiguredJoinOperationForNetwork:(id)network
{
  v30 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  v5 = MEMORY[0x277CBEB38];
  attributes = [networkCopy attributes];
  v7 = [v5 dictionaryWithObjectsAndKeys:{attributes, *MEMORY[0x277CEA3B8], 0}];

  if ([networkCopy isUnconfiguredAccessorySTAOnly])
  {
    array = [MEMORY[0x277CBEB18] array];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    networks = [(WFNetworkListController *)self networks];
    v10 = [networks countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = *v26;
      do
      {
        v12 = 0;
        do
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(networks);
          }

          attributes2 = [*(*(&v25 + 1) + 8 * v12) attributes];
          [array addObject:attributes2];

          ++v12;
        }

        while (v10 != v12);
        v10 = [networks countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    [v7 setObject:array forKey:*MEMORY[0x277CEA3B0]];
  }

  [(WFNetworkListController *)self _associationWillStart:networkCopy];
  v14 = [WFUnconfiguredJoinOperation alloc];
  viewController = [(WFNetworkListController *)self viewController];
  v16 = [(WFUnconfiguredJoinOperation *)v14 initWithParameters:v7 rootViewController:viewController];

  objc_initWeak(&location, v16);
  objc_initWeak(&from, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__WFNetworkListController__runUnconfiguredJoinOperationForNetwork___block_invoke;
  v19[3] = &unk_279EBD3A8;
  objc_copyWeak(&v21, &location);
  objc_copyWeak(&v22, &from);
  v17 = networkCopy;
  v20 = v17;
  [(WFUnconfiguredJoinOperation *)v16 setCompletionBlock:v19];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  [mainQueue addOperation:v16];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __67__WFNetworkListController__runUnconfiguredJoinOperationForNetwork___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained error];

  if (v3)
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(1uLL);
    v6 = v5;
    if (WFCurrentLogLevel(v5, v7) && v4)
    {
      v8 = v4;
      if (os_log_type_enabled(v8, v6))
      {
        v9 = [WeakRetained error];
        v13 = 138412290;
        v14 = v9;
        _os_log_impl(&dword_273ECD000, v8, v6, "Error joining unconfigured network %@", &v13, 0xCu);
      }
    }
  }

  v10 = objc_loadWeakRetained((a1 + 48));
  v11 = [WeakRetained error];
  v12 = [WeakRetained error];
  [v10 _associationDidFinish:v11 == 0 error:v12 network:*(a1 + 32)];
}

- (void)_openHomeAppForNetwork:(id)network
{
  v25 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      unconfiguredDeviceID = [networkCopy unconfiguredDeviceID];
      *v20 = 136315650;
      *&v20[4] = "[WFNetworkListController _openHomeAppForNetwork:]";
      v21 = 2112;
      v22 = networkCopy;
      v23 = 2112;
      v24 = unconfiguredDeviceID;
      _os_log_impl(&dword_273ECD000, v9, v7, "%s: network %@ (id: %{Public}@)", v20, 0x20u);
    }
  }

  if (!networkCopy)
  {
    [WFNetworkListController _openHomeAppForNetwork:v20];
LABEL_16:
    v15 = *v20;
    goto LABEL_13;
  }

  unconfiguredDeviceID2 = [networkCopy unconfiguredDeviceID];

  if (!unconfiguredDeviceID2)
  {
    [WFNetworkListController _openHomeAppForNetwork:v20];
    goto LABEL_16;
  }

  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"com.apple.Home://reprovisionDevice/"];
  unconfiguredDeviceID3 = [networkCopy unconfiguredDeviceID];
  v14 = [(WFNetworkListController *)self _convertToHexString:unconfiguredDeviceID3];
  v15 = [v12 URLByAppendingPathComponent:v14];

  v16 = WFLogForCategory(0);
  v17 = OSLogForWFLogLevel(4uLL);
  v18 = v17;
  if (WFCurrentLogLevel(v17, v19) >= 4 && v16 && os_log_type_enabled(v16, v18))
  {
    *v20 = 136315394;
    *&v20[4] = "[WFNetworkListController _openHomeAppForNetwork:]";
    v21 = 2112;
    v22 = v15;
    _os_log_impl(&dword_273ECD000, v16, v18, "%s: launchURL %@", v20, 0x16u);
  }

  [(WFNetworkListController *)self _openURL:v15];
LABEL_13:
}

- (id)_convertToHexString:(id)string
{
  stringCopy = string;
  v4 = objc_opt_new();
  v5 = [stringCopy length];
  if (v5 >= 1)
  {
    v6 = v5;
    for (i = 0; i < v6; i += 2)
    {
      v8 = [stringCopy substringWithRange:{i, 2}];
      [v4 addObject:v8];
    }
  }

  v9 = [v4 componentsJoinedByString:@":"];
  uppercaseString = [v9 uppercaseString];

  return uppercaseString;
}

- (void)_openURL:(id)l
{
  lCopy = l;
  v4 = objc_alloc_init(MEMORY[0x277CC1F00]);
  [v4 setSensitive:1];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__WFNetworkListController__openURL___block_invoke;
  v7[3] = &unk_279EBD3D0;
  v8 = lCopy;
  v6 = lCopy;
  [defaultWorkspace openURL:v6 configuration:v4 completionHandler:v7];
}

void __36__WFNetworkListController__openURL___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(1uLL);
    v6 = v5;
    if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
    {
      v8 = *(a1 + 32);
      v9 = 136315394;
      v10 = "[WFNetworkListController _openURL:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_273ECD000, v4, v6, "%s: failed to launch URL %@", &v9, 0x16u);
    }
  }
}

- (void)_associateToUserSuppliedNetwork:(id)network
{
  v24 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      ssid = [networkCopy ssid];
      *buf = 136315394;
      v21 = "[WFNetworkListController _associateToUserSuppliedNetwork:]";
      v22 = 2112;
      v23 = ssid;
      _os_log_impl(&dword_273ECD000, v9, v7, "%s: joining other network %@", buf, 0x16u);
    }
  }

  objc_initWeak(buf, self);
  ssid2 = [networkCopy ssid];
  interface = [(WFNetworkListController *)self interface];
  deviceScanChannels = [interface deviceScanChannels];
  v14 = [WFScanRequest scanRequestForSSID:ssid2 channels:deviceScanChannels];

  interface2 = [(WFNetworkListController *)self interface];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__WFNetworkListController__associateToUserSuppliedNetwork___block_invoke;
  v17[3] = &unk_279EBD420;
  v17[4] = self;
  objc_copyWeak(&v19, buf);
  v16 = networkCopy;
  v18 = v16;
  [interface2 asyncScanRequest:v14 reply:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

void __59__WFNetworkListController__associateToUserSuppliedNetwork___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 anyObject];
  v8 = v7;
  if (*(*(a1 + 32) + 17) == 1 && ([v7 scanResult], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isAllowedInLockdownMode"), v9, (v10 & 1) == 0))
  {
    v12 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(3uLL);
    v14 = v13;
    if (WFCurrentLogLevel(v13, v15) >= 3 && v12 && os_log_type_enabled(v12, v14))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v12, v14, "In Lockdown Mode, prompting user", buf, 2u);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__WFNetworkListController__associateToUserSuppliedNetwork___block_invoke_221;
    aBlock[3] = &unk_279EBD3F8;
    objc_copyWeak(&v27, (a1 + 48));
    v25 = *(a1 + 40);
    v26 = v6;
    v16 = _Block_copy(aBlock);
    if ([*(a1 + 40) security])
    {
      if ([*(a1 + 40) security] == 1)
      {
        v17 = 2;
      }

      else if ([*(a1 + 40) security] == 4)
      {
        v17 = 1;
      }

      else
      {
        v17 = 7;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = MEMORY[0x277D7B9D8];
    v19 = [*(a1 + 40) ssid];
    v20 = [v18 lockdownModeAlertControllerWithNetworkName:v19 securityType:v17 completionHandler:v16];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__WFNetworkListController__associateToUserSuppliedNetwork___block_invoke_223;
    block[3] = &unk_279EBD290;
    block[4] = *(a1 + 32);
    v23 = v20;
    v21 = v20;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v27);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _associateToUserSuppliedNetworkHelper:*(a1 + 40) networks:v6];
  }
}

void __59__WFNetworkListController__associateToUserSuppliedNetwork___block_invoke_221(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _associateToUserSuppliedNetworkHelper:*(a1 + 32) networks:*(a1 + 40)];
  }

  else
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v3, v5, "User declined joining non-secure network in Lockdown Mode- canceling association", buf, 2u);
    }

    [MEMORY[0x277CCA9B8] associationErrorWithReason:6];
  }
}

void __59__WFNetworkListController__associateToUserSuppliedNetwork___block_invoke_223(uint64_t a1)
{
  v2 = [*(a1 + 32) otherNetworkVC];

  if (v2)
  {
    v3 = [*(a1 + 32) otherNetworkVC];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v3 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)_associateToUserSuppliedNetworkHelper:(id)helper networks:(id)networks
{
  v43 = *MEMORY[0x277D85DE8];
  helperCopy = helper;
  networksCopy = networks;
  v8 = objc_initWeak(&location, self);
  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(3uLL);
  v11 = v10;
  if (WFCurrentLogLevel(v10, v12) >= 3 && v9 && os_log_type_enabled(v9, v11))
  {
    *buf = 136315394;
    v40 = "[WFNetworkListController _associateToUserSuppliedNetworkHelper:networks:]";
    v41 = 2112;
    v42 = networksCopy;
    _os_log_impl(&dword_273ECD000, v9, v11, "%s: scan results %@", buf, 0x16u);
  }

  v13 = [networksCopy count];
  if (v13 != 1)
  {
    anyObject = 0;
LABEL_14:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__WFNetworkListController__associateToUserSuppliedNetworkHelper_networks___block_invoke_2;
    block[3] = &unk_279EBD470;
    v33 = 0;
    v34 = v13 == 1;
    block[4] = self;
    block[5] = self;
    anyObject = anyObject;
    v31 = anyObject;
    v32 = helperCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);

    goto LABEL_20;
  }

  anyObject = [networksCopy anyObject];
  v15 = WFLogForCategory(0);
  v16 = OSLogForWFLogLevel(3uLL);
  v17 = v16;
  if (WFCurrentLogLevel(v16, v18) >= 3 && v15 && os_log_type_enabled(v15, v17))
  {
    *buf = 136315394;
    v40 = "[WFNetworkListController _associateToUserSuppliedNetworkHelper:networks:]";
    v41 = 2112;
    v42 = anyObject;
    _os_log_impl(&dword_273ECD000, v15, v17, "%s: found network %@", buf, 0x16u);
  }

  if (![anyObject isNetworkSecurityModeMatch:{objc_msgSend(helperCopy, "security")}])
  {
    goto LABEL_14;
  }

  self->_associatingToOtherNetwork = 1;
  anyObject2 = [networksCopy anyObject];
  matchingKnownNetworkProfile = [anyObject2 matchingKnownNetworkProfile];

  if (matchingKnownNetworkProfile)
  {
    v21 = [WFNetworkProfile alloc];
    matchingKnownNetworkProfile2 = [anyObject2 matchingKnownNetworkProfile];
    v23 = [(WFNetworkProfile *)v21 initWithCoreWiFiProfile:matchingKnownNetworkProfile2];
    v24 = [(WFNetworkProfile *)v23 mutableCopy];
  }

  else
  {
    v24 = [WFMutableNetworkProfile mutableProfileForNetwork:anyObject2];
  }

  [v24 setUserProvidedPassword:1];
  [v24 setHidden:1];
  if ([anyObject2 isEnterprise])
  {
    username = [helperCopy username];
    [v24 setUsername:username];

    password = [helperCopy password];
    [v24 setPassword:password];

    [v24 setTLSIdentity:{objc_msgSend(helperCopy, "TLSIdentity")}];
  }

  else
  {
    password2 = [helperCopy password];
    [v24 setPassword:password2];
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __74__WFNetworkListController__associateToUserSuppliedNetworkHelper_networks___block_invoke;
  v35[3] = &unk_279EBD268;
  v35[4] = self;
  v36 = anyObject2;
  v37 = v24;
  v28 = v24;
  v29 = anyObject2;
  dispatch_async(MEMORY[0x277D85CD0], v35);

LABEL_20:
  objc_destroyWeak(&location);
}

void __74__WFNetworkListController__associateToUserSuppliedNetworkHelper_networks___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) associationContext];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) associationContext];
    v5 = [v4 networkName];
    v6 = [*(a1 + 40) ssid];
    v7 = [v5 isEqualToString:v6];

    if ((v7 & 1) == 0)
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) associationContext];
      [v9 setNetwork:v8];
    }
  }

  [*(a1 + 32) _associateToScanRecord:*(a1 + 40) profile:*(a1 + 48)];
  v10 = [*(a1 + 32) associationContext];
  [v10 setOriginator:1];
}

void __74__WFNetworkListController__associateToUserSuppliedNetworkHelper_networks___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 3 && v2 && os_log_type_enabled(v2, v4))
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 65);
    *buf = 136315650;
    v27 = "[WFNetworkListController _associateToUserSuppliedNetworkHelper:networks:]_block_invoke_2";
    v28 = 1024;
    *v29 = v6;
    *&v29[4] = 1024;
    *&v29[6] = v7;
    _os_log_impl(&dword_273ECD000, v2, v4, "%s: other network not found (foundNetwork=%d mismatchedSecurity=%d)", buf, 0x18u);
  }

  if (*(a1 + 65))
  {
    v8 = 17;
  }

  else
  {
    v8 = 16;
  }

  v9 = [MEMORY[0x277CCA9B8] associationErrorWithReason:v8];
  v10 = WFLogForCategory(0);
  v11 = OSLogForWFLogLevel(3uLL);
  v12 = v11;
  if (WFCurrentLogLevel(v11, v13) >= 3 && v10)
  {
    v14 = v10;
    if (os_log_type_enabled(v14, v12))
    {
      v15 = [*(a1 + 32) credentialsContext];
      *buf = 136315650;
      v27 = "[WFNetworkListController _associateToUserSuppliedNetworkHelper:networks:]_block_invoke";
      v28 = 2112;
      *v29 = v9;
      *&v29[8] = 2112;
      v30 = v15;
      _os_log_impl(&dword_273ECD000, v14, v12, "%s: providing error %@ back to the credentials context %@", buf, 0x20u);
    }
  }

  v16 = [*(a1 + 40) credentialsContext];
  [v16 finishWithError:v9 forNetwork:*(a1 + 48) profile:0];

  v17 = [[WFErrorContext alloc] initWithAssociationError:v9 network:*(a1 + 56) diagnosticsResult:0];
  objc_initWeak(buf, *(a1 + 40));
  objc_initWeak(&location, v17);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __74__WFNetworkListController__associateToUserSuppliedNetworkHelper_networks___block_invoke_226;
  v22[3] = &unk_279EBD448;
  objc_copyWeak(&v23, buf);
  objc_copyWeak(&v24, &location);
  [(WFErrorContext *)v17 setCompletionHandler:v22];
  [*(a1 + 40) _presentContext:v17 contextType:0];
  v18 = +[WFMetricsManager sharedManager];
  v19 = [*(a1 + 56) security];
  v20 = [v9 code];
  v21 = [WFUserJoinEvent joinEventWithType:1 security:v19 error:v20 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
  [v18 processEvent:v21];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

void __74__WFNetworkListController__associateToUserSuppliedNetworkHelper_networks___block_invoke_226(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _dismissErrorViewControllerWithContext:v2];
}

- (void)_handleAssociationResult:(BOOL)result error:(id)error network:(id)network profile:(id)profile shouldSaveProfile:(BOOL)saveProfile
{
  v97 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  networkCopy = network;
  profileCopy = profile;
  if ([errorCopy code] != 11 || (-[WFNetworkListController associationContext](self, "associationContext"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "secondaryScanCompleted"), v14, (v15 & 1) != 0))
  {
    credentialsContext = [(WFNetworkListController *)self credentialsContext];

    if (!credentialsContext)
    {
      goto LABEL_26;
    }

    credentialsContext2 = [(WFNetworkListController *)self credentialsContext];
    network = [credentialsContext2 network];
    v19 = [network isEqual:networkCopy];

    if (v19)
    {
      v20 = WFLogForCategory(5uLL);
      v21 = OSLogForWFLogLevel(1uLL);
      v22 = v21;
      if (WFCurrentLogLevel(v21, v23) && v20)
      {
        v24 = v20;
        if (os_log_type_enabled(v24, v22))
        {
          credentialsContext3 = [(WFNetworkListController *)self credentialsContext];
          [(WFNetworkListController *)self associationContext];
          v26 = v89 = profileCopy;
          networkName = [v26 networkName];
          *buf = 138412546;
          v94 = credentialsContext3;
          v95 = 2112;
          v96 = networkName;
          _os_log_impl(&dword_273ECD000, v24, v22, "credentials context (%@) in progress for %@, reusing for association", buf, 0x16u);

          profileCopy = v89;
        }
      }

      credentialsContext4 = [(WFNetworkListController *)self credentialsContext];
      [credentialsContext4 finishWithError:errorCopy forNetwork:networkCopy profile:profileCopy];
    }

    else
    {
      credentialsContext5 = [(WFNetworkListController *)self credentialsContext];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_26:
        if (errorCopy)
        {
          code = [errorCopy code];
        }

        else
        {
          code = 0;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          securityMode = 8;
          if (!result)
          {
            goto LABEL_31;
          }
        }

        else
        {
          securityMode = [networkCopy securityMode];
          if (!result)
          {
LABEL_31:
            v54 = WFLogForCategory(5uLL);
            v55 = OSLogForWFLogLevel(1uLL);
            v56 = v55;
            if (WFCurrentLogLevel(v55, v57) && v54)
            {
              v58 = v54;
              if (os_log_type_enabled(v58, v56))
              {
                associationContext = [(WFNetworkListController *)self associationContext];
                [associationContext networkName];
                v60 = v91 = profileCopy;
                associationContext2 = [(WFNetworkListController *)self associationContext];
                *buf = 138412546;
                v94 = v60;
                v95 = 2112;
                v96 = associationContext2;
                _os_log_impl(&dword_273ECD000, v58, v56, "association failed for %@ (context: %@)", buf, 0x16u);

                profileCopy = v91;
              }
            }

            associationContext3 = [(WFNetworkListController *)self associationContext];
            [(WFNetworkListController *)self _handleAssociationError:errorCopy network:networkCopy profile:profileCopy securityMode:securityMode associationContext:associationContext3];

            goto LABEL_59;
          }
        }

        associationContext4 = [(WFNetworkListController *)self associationContext];
        originator = [associationContext4 originator];

        if (originator == 2)
        {
          v65 = +[WFMetricsManager sharedManager];
          v71 = MEMORY[0x277CBEBF8];
          v72 = 2;
        }

        else
        {
          if (originator != 1)
          {
            if (originator)
            {
              goto LABEL_46;
            }

            v65 = +[WFMetricsManager sharedManager];
            associationContext5 = [(WFNetworkListController *)self associationContext];
            sectionCounts = [associationContext5 sectionCounts];
            [(WFNetworkListController *)self associationContext];
            v68 = v92 = profileCopy;
            sectionNameJoined = [v68 sectionNameJoined];
            v70 = [WFUserJoinEvent joinEventWithSecurity:securityMode error:code sectionCounts:sectionCounts sectionName:sectionNameJoined didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
            [v65 processEvent:v70];

            profileCopy = v92;
LABEL_45:

LABEL_46:
            v73 = WFLogForCategory(5uLL);
            v74 = OSLogForWFLogLevel(1uLL);
            v75 = v74;
            if (WFCurrentLogLevel(v74, v76) && v73)
            {
              v77 = v73;
              if (os_log_type_enabled(v77, v75))
              {
                associationContext6 = [(WFNetworkListController *)self associationContext];
                networkName2 = [associationContext6 networkName];
                associationContext7 = [(WFNetworkListController *)self associationContext];
                *buf = 138412546;
                v94 = networkName2;
                v95 = 2112;
                v96 = associationContext7;
                _os_log_impl(&dword_273ECD000, v77, v75, "association completed for %@ (context: %@)", buf, 0x16u);
              }
            }

            if (self->_associatingToOtherNetwork)
            {
              v81 = WFLogForCategory(5uLL);
              v82 = OSLogForWFLogLevel(1uLL);
              v83 = v82;
              if (WFCurrentLogLevel(v82, v84) && v81)
              {
                v85 = v81;
                if (os_log_type_enabled(v85, v83))
                {
                  credentialsContext6 = [(WFNetworkListController *)self credentialsContext];
                  *buf = 138412290;
                  v94 = credentialsContext6;
                  _os_log_impl(&dword_273ECD000, v85, v83, "association originated from WFAssociationOriginatorOther, dismissing credentials context %@", buf, 0xCu);
                }
              }

              credentialsContext7 = [(WFNetworkListController *)self credentialsContext];
              [(WFNetworkListController *)self _dismissOtherNetworkViewControllerWithContext:credentialsContext7];
            }

            [(WFNetworkListController *)self _associationDidFinish:1 error:0 network:networkCopy];
            goto LABEL_59;
          }

          v65 = +[WFMetricsManager sharedManager];
          v71 = MEMORY[0x277CBEBF8];
          v72 = 1;
        }

        associationContext5 = [WFUserJoinEvent joinEventWithType:v72 security:securityMode error:code didRun:0 didPass:0 failedTests:v71];
        [v65 processEvent:associationContext5];
        goto LABEL_45;
      }

      v40 = profileCopy;
      credentialsContext4 = [(WFNetworkListController *)self credentialsContext];
      userSuppliedNetwork = [credentialsContext4 userSuppliedNetwork];
      ssid = [userSuppliedNetwork ssid];
      ssid2 = [networkCopy ssid];
      v44 = [ssid isEqual:ssid2];

      if (v44)
      {
        v45 = WFLogForCategory(5uLL);
        v46 = OSLogForWFLogLevel(1uLL);
        v47 = v46;
        profileCopy = v40;
        if (WFCurrentLogLevel(v46, v48) && v45)
        {
          v49 = v45;
          if (os_log_type_enabled(v49, v47))
          {
            credentialsContext8 = [(WFNetworkListController *)self credentialsContext];
            associationContext8 = [(WFNetworkListController *)self associationContext];
            [associationContext8 networkName];
            *buf = 138412546;
            v94 = credentialsContext8;
            v96 = v95 = 2112;
            v50 = v96;
            _os_log_impl(&dword_273ECD000, v49, v47, "credentials context (%@) in progress for other network %@, reusing for association", buf, 0x16u);

            profileCopy = v40;
          }
        }

        credentialsContext9 = [(WFNetworkListController *)self credentialsContext];
        [credentialsContext9 finishWithError:errorCopy forNetwork:networkCopy profile:profileCopy];
      }

      else
      {
        profileCopy = v40;
      }
    }

    goto LABEL_26;
  }

  v29 = WFLogForCategory(5uLL);
  v30 = OSLogForWFLogLevel(1uLL);
  v31 = v30;
  if (WFCurrentLogLevel(v30, v32) && v29)
  {
    v33 = v29;
    if (os_log_type_enabled(v33, v31))
    {
      associationContext9 = [(WFNetworkListController *)self associationContext];
      networkName3 = [associationContext9 networkName];
      [(WFNetworkListController *)self credentialsContext];
      v37 = v36 = profileCopy;
      *buf = 138412546;
      v94 = networkName3;
      v95 = 2112;
      v96 = v37;
      _os_log_impl(&dword_273ECD000, v33, v31, "%@ requires a scan before associating, preempting credentialsContext(%@) completion until scan is complete.", buf, 0x16u);

      profileCopy = v36;
    }
  }

  [(WFNetworkListController *)self _scanNetworkForAssociation:networkCopy profile:profileCopy];
LABEL_59:
}

- (void)_handleAssociationError:(id)error network:(id)network profile:(id)profile securityMode:(int64_t)mode associationContext:(id)context
{
  v139 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  networkCopy = network;
  profileCopy = profile;
  contextCopy = context;
  if (errorCopy)
  {
    code = [errorCopy code];
  }

  else
  {
    code = 0;
  }

  v115 = WFAssociationErrorCodeToString([errorCopy code]);
  v15 = WFLogForCategory(5uLL);
  v16 = OSLogForWFLogLevel(1uLL);
  v17 = v16;
  if (WFCurrentLogLevel(v16, v18) && v15 && os_log_type_enabled(v15, v17))
  {
    *buf = 138413058;
    *v134 = networkCopy;
    *&v134[8] = 2112;
    *&v134[10] = profileCopy;
    v135 = 2112;
    v136 = errorCopy;
    v137 = 2112;
    v138 = v115;
    _os_log_impl(&dword_273ECD000, v15, v17, "handling association failure for %@ (profile: %@) error: %@ (%@)", buf, 0x2Au);
  }

  code2 = [errorCopy code];
  if (code2 <= 6)
  {
    if (code2 < 2)
    {
      associationContext = [(WFNetworkListController *)self associationContext];
      [associationContext setState:2];

      if ([errorCopy code] == 1)
      {
        v21 = [[WFErrorContext alloc] initWithAssociationError:errorCopy network:networkCopy diagnosticsResult:0];
        objc_initWeak(buf, self);
        objc_initWeak(&location, v21);
        v125[0] = MEMORY[0x277D85DD0];
        v125[1] = 3221225472;
        v125[2] = __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke;
        v125[3] = &unk_279EBD498;
        v126 = networkCopy;
        v127 = profileCopy;
        v128 = errorCopy;
        v129 = v115;
        objc_copyWeak(&v130, buf);
        objc_copyWeak(&v131, &location);
        [(WFErrorContext *)v21 setCompletionHandler:v125];
        [(WFNetworkListController *)self _presentContext:v21 contextType:0];
        objc_destroyWeak(&v131);
        objc_destroyWeak(&v130);

        objc_destroyWeak(&location);
        objc_destroyWeak(buf);
      }

      else
      {
        [(WFNetworkListController *)self _promptCredentialsForNetwork:networkCopy profile:profileCopy];
      }

      associationContext2 = [(WFNetworkListController *)self associationContext];
      originator = [associationContext2 originator];

      switch(originator)
      {
        case 2:
          v64 = +[WFMetricsManager sharedManager];
          v65 = [WFUserJoinEvent joinEventWithType:2 security:mode error:code didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
          [v64 processEvent:v65];

          break;
        case 1:
          v62 = +[WFMetricsManager sharedManager];
          v63 = [WFUserJoinEvent joinEventWithType:1 security:mode error:code didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
          [v62 processEvent:v63];

          break;
        case 0:
          v52 = +[WFMetricsManager sharedManager];
          sectionCounts = [contextCopy sectionCounts];
          sectionNameJoined = [contextCopy sectionNameJoined];
          v55 = [WFUserJoinEvent joinEventWithSecurity:mode error:code sectionCounts:sectionCounts sectionName:sectionNameJoined didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
          [v52 processEvent:v55];

          break;
      }

      goto LABEL_79;
    }

    if (code2 == 6)
    {
      v28 = WFLogForCategory(5uLL);
      v29 = OSLogForWFLogLevel(1uLL);
      v30 = v29;
      if (WFCurrentLogLevel(v29, v31) && v28)
      {
        v32 = v28;
        if (os_log_type_enabled(v32, v30))
        {
          ssid = [networkCopy ssid];
          *buf = 138412290;
          *v134 = ssid;
          _os_log_impl(&dword_273ECD000, v32, v30, "User cancelled association to %@", buf, 0xCu);
        }
      }

      v34 = [MEMORY[0x277CCA9B8] associationErrorWithReason:6];
      [(WFNetworkListController *)self _associationDidFinish:0 error:v34 network:0];

      associationContext3 = [(WFNetworkListController *)self associationContext];
      originator2 = [associationContext3 originator];

      switch(originator2)
      {
        case 2:
          v97 = +[WFMetricsManager sharedManager];
          v98 = [WFUserJoinEvent joinEventWithType:2 security:mode error:code didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
          [v97 processEvent:v98];

          break;
        case 1:
          v95 = +[WFMetricsManager sharedManager];
          v96 = [WFUserJoinEvent joinEventWithType:1 security:mode error:code didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
          [v95 processEvent:v96];

          break;
        case 0:
          v37 = +[WFMetricsManager sharedManager];
          sectionCounts2 = [contextCopy sectionCounts];
          sectionNameJoined2 = [contextCopy sectionNameJoined];
          v40 = [WFUserJoinEvent joinEventWithSecurity:mode error:code sectionCounts:sectionCounts2 sectionName:sectionNameJoined2 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
          [v37 processEvent:v40];

          break;
      }

      goto LABEL_79;
    }

    goto LABEL_59;
  }

  if (code2 != 7)
  {
    if (code2 != 11)
    {
LABEL_59:
      associationContext4 = [(WFNetworkListController *)self associationContext];
      [associationContext4 setState:2];

      v73 = WFLogForCategory(5uLL);
      v74 = OSLogForWFLogLevel(1uLL);
      v75 = v74;
      if (WFCurrentLogLevel(v74, v76) && v73)
      {
        v77 = v73;
        if (os_log_type_enabled(v77, v75))
        {
          code3 = [errorCopy code];
          ssid2 = [networkCopy ssid];
          *buf = 67109378;
          *v134 = code3;
          *&v134[4] = 2112;
          *&v134[6] = ssid2;
          _os_log_impl(&dword_273ECD000, v77, v75, "unhandled errorCode (%d) while associating to %@", buf, 0x12u);
        }
      }

      objc_initWeak(&location, self);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || [networkCopy iOSHotspot])
      {
        v80 = +[WFMetricsManager sharedManager];
        sectionCounts3 = [contextCopy sectionCounts];
        sectionNameJoined3 = [contextCopy sectionNameJoined];
        v83 = [WFUserJoinEvent joinEventWithSecurity:mode error:code sectionCounts:sectionCounts3 sectionName:sectionNameJoined3 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
        [v80 processEvent:v83];

        v84 = WFLogForCategory(0);
        v85 = OSLogForWFLogLevel(3uLL);
        v86 = v85;
        if (WFCurrentLogLevel(v85, v87) >= 3 && v84)
        {
          v88 = v84;
          if (os_log_type_enabled(v88, v86))
          {
            ssid3 = [networkCopy ssid];
            *buf = 138412290;
            *v134 = ssid3;
            _os_log_impl(&dword_273ECD000, v88, v86, "Skip running velocity test as joining a personal hotspot network: %@", buf, 0xCu);
          }
        }

        v90 = [[WFErrorContext alloc] initWithAssociationError:errorCopy network:networkCopy diagnosticsResult:0];
        objc_initWeak(buf, v90);
        v122[0] = MEMORY[0x277D85DD0];
        v122[1] = 3221225472;
        v122[2] = __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke_229;
        v122[3] = &unk_279EBD4C0;
        v122[4] = self;
        objc_copyWeak(&v124, buf);
        v123 = errorCopy;
        [(WFErrorContext *)v90 setCompletionHandler:v122];
        [(WFNetworkListController *)self _presentContext:v90 contextType:0];

        objc_destroyWeak(&v124);
        objc_destroyWeak(buf);
      }

      else
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke_2_230;
        aBlock[3] = &unk_279EBD4E8;
        aBlock[4] = self;
        v121[1] = mode;
        v121[2] = code;
        v118 = contextCopy;
        v119 = errorCopy;
        v91 = networkCopy;
        v120 = v91;
        objc_copyWeak(v121, &location);
        v92 = _Block_copy(aBlock);
        if ([v91 supportsJoinFailureDiagnostics])
        {
          diagnosticsManager = [(WFNetworkListController *)self diagnosticsManager];
          ssid4 = [v91 ssid];
          [diagnosticsManager runJoinFailureDiagnosticsFor:ssid4 withUpdate:&__block_literal_global_236 result:v92];
        }

        else
        {
          diagnosticsManager = [v91 ssid];
          (*(v92 + 2))(v92, 0, 0, diagnosticsManager);
        }

        objc_destroyWeak(v121);
      }

      objc_destroyWeak(&location);
      goto LABEL_79;
    }

    associationContext5 = [(WFNetworkListController *)self associationContext];
    originator3 = [associationContext5 originator];

    if (originator3 == 2)
    {
      v24 = +[WFMetricsManager sharedManager];
      sectionCounts4 = [WFUserJoinEvent joinEventWithType:2 security:mode error:code didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
      [v24 processEvent:sectionCounts4];
    }

    else if (originator3 == 1)
    {
      v24 = +[WFMetricsManager sharedManager];
      sectionCounts4 = [WFUserJoinEvent joinEventWithType:1 security:mode error:code didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
      [v24 processEvent:sectionCounts4];
    }

    else
    {
      if (originator3)
      {
        goto LABEL_53;
      }

      v24 = +[WFMetricsManager sharedManager];
      sectionCounts4 = [contextCopy sectionCounts];
      sectionNameJoined4 = [contextCopy sectionNameJoined];
      v27 = [WFUserJoinEvent joinEventWithSecurity:mode error:code sectionCounts:sectionCounts4 sectionName:sectionNameJoined4 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
      [v24 processEvent:v27];
    }

LABEL_53:
    v66 = WFLogForCategory(5uLL);
    v67 = OSLogForWFLogLevel(1uLL);
    v68 = v67;
    if (WFCurrentLogLevel(v67, v69) && v66)
    {
      v70 = v66;
      if (os_log_type_enabled(v70, v68))
      {
        ssid5 = [networkCopy ssid];
        *buf = 138412290;
        *v134 = ssid5;
        _os_log_impl(&dword_273ECD000, v70, v68, "Scan required to continue association to %@", buf, 0xCu);
      }
    }

    goto LABEL_59;
  }

  v41 = WFLogForCategory(5uLL);
  v42 = OSLogForWFLogLevel(1uLL);
  v43 = v42;
  if (WFCurrentLogLevel(v42, v44) && v41)
  {
    v45 = v41;
    if (os_log_type_enabled(v45, v43))
    {
      ssid6 = [networkCopy ssid];
      *buf = 138412290;
      *v134 = ssid6;
      _os_log_impl(&dword_273ECD000, v45, v43, "User input required for %@", buf, 0xCu);
    }
  }

  associationContext6 = [(WFNetworkListController *)self associationContext];
  [associationContext6 setState:2];

  if ([networkCopy isEnterprise])
  {
    userInfo = [errorCopy userInfo];
    v49 = [userInfo objectForKey:@"kWFAssociationCertificateChainKey"];

    if (v49)
    {
      [(WFNetworkListController *)self _promptTrustCertificateForNetwork:networkCopy certificateChain:v49 profile:profileCopy autoJoin:0];
LABEL_36:

      goto LABEL_79;
    }

    userInfo2 = [errorCopy userInfo];
    v100 = [userInfo2 objectForKey:@"kWFAssociationUsernameRequiredKey"];
    if (v100)
    {
    }

    else
    {
      userInfo3 = [errorCopy userInfo];
      v102 = [userInfo3 objectForKey:@"kWFAssociationPasswordRequiredKey"];
      v103 = v102 == 0;

      if (v103)
      {
        goto LABEL_84;
      }
    }

    [(WFNetworkListController *)self _promptCredentialsForNetwork:networkCopy profile:profileCopy];
LABEL_84:
    associationContext7 = [(WFNetworkListController *)self associationContext];
    originator4 = [associationContext7 originator];

    switch(originator4)
    {
      case 2:
        v112 = +[WFMetricsManager sharedManager];
        v113 = [WFUserJoinEvent joinEventWithType:2 security:mode error:code didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
        [v112 processEvent:v113];

        break;
      case 1:
        v110 = +[WFMetricsManager sharedManager];
        v111 = [WFUserJoinEvent joinEventWithType:1 security:mode error:code didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
        [v110 processEvent:v111];

        break;
      case 0:
        v106 = +[WFMetricsManager sharedManager];
        sectionCounts5 = [contextCopy sectionCounts];
        sectionNameJoined5 = [contextCopy sectionNameJoined];
        v109 = [WFUserJoinEvent joinEventWithSecurity:mode error:code sectionCounts:sectionCounts5 sectionName:sectionNameJoined5 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
        [v106 processEvent:v109];

        break;
    }

    goto LABEL_36;
  }

  v56 = WFLogForCategory(5uLL);
  v57 = OSLogForWFLogLevel(1uLL);
  v58 = v57;
  if (WFCurrentLogLevel(v57, v59) && v56)
  {
    v60 = v56;
    if (os_log_type_enabled(v60, v58))
    {
      ssid7 = [networkCopy ssid];
      *buf = 138412290;
      *v134 = ssid7;
      _os_log_impl(&dword_273ECD000, v60, v58, "Recieved WFAssociationTrustRequiredErr for non-enterprise network %@", buf, 0xCu);
    }
  }

LABEL_79:
}

void __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke(id *a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke_2;
  v8[3] = &unk_279EBD498;
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v9 = v7;
  v10 = v6;
  objc_copyWeak(&v11, a1 + 8);
  objc_copyWeak(&v12, a1 + 9);
  dispatch_async(MEMORY[0x277D85CD0], v8);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
}

void __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(5uLL);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v13 = 138413058;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_273ECD000, v2, v4, "Dismissing error alert and prompting credentials for %@ (profile: %@) error: %@ (%@)", &v13, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v11 = objc_loadWeakRetained((a1 + 72));
  [WeakRetained _dismissErrorViewControllerWithContext:v11];

  v12 = objc_loadWeakRetained((a1 + 64));
  [v12 _promptCredentialsForNetwork:*(a1 + 32) profile:*(a1 + 40)];
}

uint64_t __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke_229(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v2 _dismissErrorViewControllerWithContext:WeakRetained];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _associationDidFinish:0 error:v5 network:0];
}

void __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke_2_230(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v33 = a4;
  if (v7)
  {
    v9 = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(1uLL);
    v11 = v10;
    if (WFCurrentLogLevel(v10, v12) && v9 && os_log_type_enabled(v9, v11))
    {
      *buf = 138412546;
      v39 = v33;
      v40 = 2112;
      v41 = v7;
      _os_log_impl(&dword_273ECD000, v9, v11, "Diagnostics Error for ssid: %@ received: %@", buf, 0x16u);
    }
  }

  if (v8)
  {
    v13 = [v8 didPassTest];
    v14 = [v8 failedTests];
  }

  else
  {
    v15 = WFLogForCategory(0);
    v16 = OSLogForWFLogLevel(1uLL);
    v17 = v16;
    if (WFCurrentLogLevel(v16, v18) && v15 && os_log_type_enabled(v15, v17))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v15, v17, "Empty diagnostics result returned", buf, 2u);
    }

    v13 = 0;
    v14 = MEMORY[0x277CBEBF8];
  }

  v19 = WFLogForCategory(0);
  v20 = OSLogForWFLogLevel(3uLL);
  v21 = v20;
  if (WFCurrentLogLevel(v20, v22) >= 3 && v19 && os_log_type_enabled(v19, v21))
  {
    *buf = 138412546;
    v39 = v33;
    v40 = 2112;
    v41 = v8;
    _os_log_impl(&dword_273ECD000, v19, v21, "Diagnostics result for ssid: %@ received: %@", buf, 0x16u);
  }

  v23 = [*(a1 + 32) associationContext];
  v24 = [v23 originator];

  switch(v24)
  {
    case 2:
      v25 = +[WFMetricsManager sharedManager];
      v28 = [WFUserJoinEvent joinEventWithType:2 security:*(a1 + 72) error:*(a1 + 80) didRun:1 didPass:v13 failedTests:v14];
      [v25 processEvent:v28];
      goto LABEL_24;
    case 1:
      v25 = +[WFMetricsManager sharedManager];
      v28 = [WFUserJoinEvent joinEventWithType:1 security:*(a1 + 72) error:*(a1 + 80) didRun:1 didPass:v13 failedTests:v14];
      [v25 processEvent:v28];
      goto LABEL_24;
    case 0:
      v25 = +[WFMetricsManager sharedManager];
      v27 = *(a1 + 72);
      v26 = *(a1 + 80);
      v28 = [*(a1 + 40) sectionCounts];
      v29 = [*(a1 + 40) sectionNameJoined];
      v30 = [WFUserJoinEvent joinEventWithSecurity:v27 error:v26 sectionCounts:v28 sectionName:v29 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
      [v25 processEvent:v30];

LABEL_24:
      break;
  }

  v31 = [[WFErrorContext alloc] initWithAssociationError:*(a1 + 48) network:*(a1 + 56) diagnosticsResult:v8];
  objc_initWeak(buf, v31);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke_231;
  v34[3] = &unk_279EBD3A8;
  objc_copyWeak(&v36, (a1 + 64));
  objc_copyWeak(&v37, buf);
  v35 = *(a1 + 48);
  [(WFErrorContext *)v31 setCompletionHandler:v34];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _presentContext:v31 contextType:0];

  objc_destroyWeak(&v37);
  objc_destroyWeak(&v36);
  objc_destroyWeak(buf);
}

void __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke_231(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _dismissErrorViewControllerWithContext:v3];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _associationDidFinish:0 error:*(a1 + 32) network:0];
}

void __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke_2_233(uint64_t a1, void *a2)
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

- (BOOL)_supportsWiFiPasswordSharing
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  viewController = self->_viewController;

  return [(WFNetworkListing *)viewController supportsWiFiPasswordSharing];
}

- (void)_promptCredentialsForNetwork:(id)network profile:(id)profile
{
  v72 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  profileCopy = profile;
  credentialsContext = [(WFNetworkListController *)self credentialsContext];

  if (credentialsContext)
  {
    v9 = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(3uLL);
    v11 = v10;
    if (WFCurrentLogLevel(v10, v12) >= 3 && v9)
    {
      v9 = v9;
      if (os_log_type_enabled(&v9->super, v11))
      {
        credentialsContext2 = [(WFNetworkListController *)self credentialsContext];
        *buf = 136315394;
        v67 = "[WFNetworkListController _promptCredentialsForNetwork:profile:]";
        v68 = 2112;
        v69 = credentialsContext2;
        _os_log_impl(&dword_273ECD000, &v9->super, v11, "%s: reusing existing credentials context (%@)", buf, 0x16u);
      }
    }
  }

  else if ([(WFCredentialsContext *)networkCopy securityMode]== 128)
  {
    v14 = [WFWAPICertificatePromptOperation alloc];
    viewController = [(WFNetworkListController *)self viewController];
    v9 = [(WFWAPICertificatePromptOperation *)v14 initWithRootViewController:viewController network:networkCopy];

    v16 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(3uLL);
    v18 = v17;
    if (WFCurrentLogLevel(v17, v19) >= 3 && v16 && os_log_type_enabled(v16, v18))
    {
      *buf = 136315650;
      v67 = "[WFNetworkListController _promptCredentialsForNetwork:profile:]";
      v68 = 2112;
      v69 = networkCopy;
      v70 = 2112;
      v71 = profileCopy;
      _os_log_impl(&dword_273ECD000, v16, v18, "%s: prompting WAPI cert for %@ (profile %@)", buf, 0x20u);
    }

    objc_initWeak(buf, v9);
    objc_initWeak(&location, self);
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __64__WFNetworkListController__promptCredentialsForNetwork_profile___block_invoke;
    v60[3] = &unk_279EBD530;
    objc_copyWeak(&v63, buf);
    objc_copyWeak(&v64, &location);
    v61 = profileCopy;
    v62 = networkCopy;
    [(WFNetworkProfile *)v9 setCompletionBlock:v60];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    [mainQueue addOperation:v9];

    objc_destroyWeak(&v64);
    objc_destroyWeak(&v63);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    v21 = profileCopy;
    v9 = v21;
    if (!v21)
    {
      matchingKnownNetworkProfile = [(WFCredentialsContext *)networkCopy matchingKnownNetworkProfile];

      if (!matchingKnownNetworkProfile || (v23 = [WFNetworkProfile alloc], [(WFCredentialsContext *)networkCopy matchingKnownNetworkProfile], v24 = objc_claimAutoreleasedReturnValue(), v25 = [(WFNetworkProfile *)v23 initWithCoreWiFiProfile:v24], v9 = [(WFNetworkProfile *)v25 mutableCopy], v25, v24, !v9))
      {
        v9 = [[WFNetworkProfile alloc] initWithNetwork:networkCopy];
        v26 = WFLogForCategory(0);
        v27 = OSLogForWFLogLevel(1uLL);
        v28 = v27;
        if (WFCurrentLogLevel(v27, v29) && v26 && os_log_type_enabled(v26, v28))
        {
          *buf = 136315394;
          v67 = "[WFNetworkListController _promptCredentialsForNetwork:profile:]";
          v68 = 2112;
          v69 = networkCopy;
          _os_log_impl(&dword_273ECD000, v26, v28, "%s: no existing profile for network %@", buf, 0x16u);
        }
      }
    }

    v30 = [[WFCredentialsContext alloc] initWithNetwork:networkCopy profile:v9 authTraits:[(WFNetworkListController *)self _defaultAuthTraits]];
    if ([(WFNetworkListController *)self _supportsWiFiPasswordSharing])
    {
      if ([MEMORY[0x277D54CB0] passwordSharingAvailability])
      {
        v31 = 0;
      }

      else
      {
        v31 = [(WFCredentialsContext *)networkCopy securityMode]== 4 || [(WFCredentialsContext *)networkCopy securityMode]== 8 || [(WFCredentialsContext *)networkCopy securityMode]== 512 || [(WFCredentialsContext *)networkCopy securityMode]== 520;
      }

      [(WFCredentialsContext *)v30 setPasswordSharingSupported:v31];
    }

    v32 = WFLogForCategory(0);
    v33 = OSLogForWFLogLevel(3uLL);
    v34 = v33;
    if (WFCurrentLogLevel(v33, v35) >= 3 && v32 && os_log_type_enabled(v32, v34))
    {
      *buf = 136315650;
      v67 = "[WFNetworkListController _promptCredentialsForNetwork:profile:]";
      v68 = 2112;
      v69 = networkCopy;
      v70 = 2112;
      v71 = v21;
      _os_log_impl(&dword_273ECD000, v32, v34, "%s: prompting for password (network %@ profile %@)", buf, 0x20u);
    }

    viewProvider = [(WFNetworkListController *)self viewProvider];
    v37 = objc_opt_respondsToSelector();

    viewProvider2 = [(WFNetworkListController *)self viewProvider];
    v39 = [viewProvider2 credentialsViewControllerWithContext:v30];

    if (v39)
    {
      [(WFCredentialsContext *)v30 setProvider:v39];
      if (v37)
      {
        v40 = WFLogForCategory(0);
        v41 = OSLogForWFLogLevel(3uLL);
        v42 = v41;
        if (WFCurrentLogLevel(v41, v43) >= 3 && v40 && os_log_type_enabled(v40, v42))
        {
          *buf = 138412546;
          v67 = v39;
          v68 = 2112;
          v69 = v30;
          _os_log_impl(&dword_273ECD000, v40, v42, "viewProvider will handle presentation of %@ (context %@)", buf, 0x16u);
        }

        viewProvider3 = [(WFNetworkListController *)self viewProvider];
        [viewProvider3 presentNetworkViewController:v39 forContext:v30];
      }

      else
      {
        viewProvider3 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v39];
        [viewProvider3 setModalPresentationStyle:2];
        if ([(WFNetworkListController *)self associatingToOtherNetwork])
        {
          [(WFNetworkListController *)self otherNetworkVC];
        }

        else
        {
          [(WFNetworkListController *)self viewController];
        }
        v49 = ;
        [v49 presentViewController:viewProvider3 animated:1 completion:0];
      }

      [(WFNetworkListController *)self setCredentialsContext:v30];
      [(WFNetworkListController *)self setVisibleContext:v30];
      objc_initWeak(buf, self);
      objc_initWeak(&location, v30);
      objc_initWeak(&from, v9);
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __64__WFNetworkListController__promptCredentialsForNetwork_profile___block_invoke_247;
      v56[3] = &unk_279EBD448;
      objc_copyWeak(&v57, buf);
      objc_copyWeak(&v58, &location);
      [(WFCredentialsContext *)v30 setCancellationHandler:v56];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __64__WFNetworkListController__promptCredentialsForNetwork_profile___block_invoke_2;
      v50[3] = &unk_279EBD558;
      objc_copyWeak(&v53, buf);
      objc_copyWeak(&v54, &from);
      v51 = v9;
      objc_copyWeak(&v55, &location);
      v52 = networkCopy;
      [(WFCredentialsContext *)v30 setCompletionHandler:v50];

      objc_destroyWeak(&v55);
      objc_destroyWeak(&v54);
      objc_destroyWeak(&v53);
      objc_destroyWeak(&v58);
      objc_destroyWeak(&v57);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }

    else
    {
      v45 = WFLogForCategory(0);
      v46 = OSLogForWFLogLevel(3uLL);
      v47 = v46;
      if (WFCurrentLogLevel(v46, v48) >= 3 && v45 && os_log_type_enabled(v45, v47))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v45, v47, "credentialsViewController is nil -- cancelling credentials prompt", buf, 2u);
      }

      [(WFNetworkListController *)self _promptCredentialsForNetworkCancelled:v30];
    }
  }
}

void __64__WFNetworkListController__promptCredentialsForNetwork_profile___block_invoke(id *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_loadWeakRetained(a1 + 7);
  if ([WeakRetained userCancelled])
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(3uLL);
    v6 = v5;
    if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
    {
      *buf = 136315138;
      v31 = "[WFNetworkListController _promptCredentialsForNetwork:profile:]_block_invoke";
      _os_log_impl(&dword_273ECD000, v4, v6, "%s: User cancelled association", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__WFNetworkListController__promptCredentialsForNetwork_profile___block_invoke_240;
    block[3] = &unk_279EBCFE0;
    block[4] = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
    goto LABEL_21;
  }

  v8 = [a1[4] mutableCopy];
  if (!v8)
  {
    v9 = [a1[5] matchingKnownNetworkProfile];

    if (v9)
    {
      v10 = [WFNetworkProfile alloc];
      v11 = [a1[5] matchingKnownNetworkProfile];
      v12 = [(WFNetworkProfile *)v10 initWithCoreWiFiProfile:v11];
      v13 = [(WFNetworkProfile *)v12 mutableCopy];

      if (v13)
      {
        goto LABEL_12;
      }
    }

    v8 = [WFMutableNetworkProfile mutableProfileForNetwork:a1[5]];
  }

  v13 = v8;
LABEL_12:
  v14 = [WeakRetained WAPIRootCertificate];
  v15 = [WeakRetained WAPIIdentityPEMBlob];
  v16 = WFWAPICertificateBlobString(v14, v15);
  [v13 setPassword:v16];

  [v13 setUserProvidedPassword:1];
  v17 = [v13 password];

  if (v17)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __64__WFNetworkListController__promptCredentialsForNetwork_profile___block_invoke_241;
    v26[3] = &unk_279EBD268;
    v26[4] = v3;
    v27 = a1[5];
    v28 = v13;
    dispatch_async(MEMORY[0x277D85CD0], v26);
  }

  else
  {
    v18 = WFLogForCategory(0);
    v19 = OSLogForWFLogLevel(1uLL);
    v20 = v19;
    if (WFCurrentLogLevel(v19, v21) && v18)
    {
      v22 = v18;
      if (os_log_type_enabled(v22, v20))
      {
        v23 = [WeakRetained WAPIRootCertificate];
        v24 = [WeakRetained WAPIIdentityPEMBlob];
        *buf = 138412546;
        v31 = v23;
        v32 = 2112;
        v33 = v24;
        _os_log_impl(&dword_273ECD000, v22, v20, "Unable to create WAPI password from Root: %@ IdentityBlob: %@", buf, 0x16u);
      }
    }

    v25 = [MEMORY[0x277CCA9B8] associationErrorWithReason:9];
    [v3 _associationDidFinish:0 error:v25 network:0];
  }

LABEL_21:
}

void __64__WFNetworkListController__promptCredentialsForNetwork_profile___block_invoke_240(uint64_t a1)
{
  [*(a1 + 32) setOtherNetworkVC:0];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] associationErrorWithReason:6];
  [v2 _associationDidFinish:0 error:v3 network:0];
}

void __64__WFNetworkListController__promptCredentialsForNetwork_profile___block_invoke_247(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _promptCredentialsForNetworkCancelled:v2];
}

void __64__WFNetworkListController__promptCredentialsForNetwork_profile___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
  {
    v25 = 136315650;
    v26 = "[WFNetworkListController _promptCredentialsForNetwork:profile:]_block_invoke_2";
    v27 = 2112;
    v28 = v5;
    v29 = 1024;
    v30 = a3;
    _os_log_impl(&dword_273ECD000, v7, v9, "%s: credentials prompt complete, provider %@, shouldDismiss %d", &v25, 0x1Cu);
  }

  v11 = objc_loadWeakRetained((a1 + 56));
  v12 = [v11 mutableCopy];

  v13 = [*(a1 + 32) password];
  [v12 setPreviousPassword:v13];

  [v12 setTLSIdentity:{objc_msgSend(v5, "TLSIdentity")}];
  v14 = [v5 username];
  [v12 setUsername:v14];

  v15 = [v5 password];
  [v12 setPassword:v15];

  [v12 setUserProvidedPassword:1];
  v16 = objc_loadWeakRetained((a1 + 64));
  v17 = [v16 passwordReceivedFromPasswordSharing];

  if (v17)
  {
    v18 = WFLogForCategory(0);
    v19 = OSLogForWFLogLevel(3uLL);
    v20 = v19;
    if (WFCurrentLogLevel(v19, v21) >= 3 && v18)
    {
      v22 = v18;
      if (os_log_type_enabled(v22, v20))
      {
        v23 = [v12 ssid];
        v25 = 136315394;
        v26 = "[WFNetworkListController _promptCredentialsForNetwork:profile:]_block_invoke";
        v27 = 2112;
        v28 = v23;
        _os_log_impl(&dword_273ECD000, v22, v20, "%s: password for '%@' received from password sharing", &v25, 0x16u);
      }
    }

    [v12 setAddedFromWiFiPasswordSharing:1];
  }

  [WeakRetained _associateToScanRecord:*(a1 + 40) profile:v12];
  if (a3)
  {
    v24 = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _dismissCredentialsViewControllerWithContext:v24];
  }
}

- (void)_promptCredentialsForNetworkCancelled:(id)cancelled
{
  v12 = *MEMORY[0x277D85DE8];
  cancelledCopy = cancelled;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v10 = 136315138;
    v11 = "[WFNetworkListController _promptCredentialsForNetworkCancelled:]";
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: user cancelled credentials prompt", &v10, 0xCu);
  }

  v9 = [MEMORY[0x277CCA9B8] associationErrorWithReason:6];
  [(WFNetworkListController *)self _associationDidFinish:0 error:v9 network:0];

  [(WFNetworkListController *)self _dismissCredentialsViewControllerWithContext:cancelledCopy];
}

- (void)_promptTrustCertificateForNetwork:(id)network certificateChain:(id)chain profile:(id)profile autoJoin:(BOOL)join
{
  joinCopy = join;
  v55 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  chainCopy = chain;
  profileCopy = profile;
  credentialsContext = [(WFNetworkListController *)self credentialsContext];
  if (credentialsContext)
  {
    associatingToOtherNetwork = [(WFNetworkListController *)self associatingToOtherNetwork];

    if (!associatingToOtherNetwork)
    {
      v15 = WFLogForCategory(0);
      v16 = OSLogForWFLogLevel(3uLL);
      v17 = v16;
      if (WFCurrentLogLevel(v16, v18) >= 3 && v15 && os_log_type_enabled(v15, v17))
      {
        *buf = 136315138;
        v50 = "[WFNetworkListController _promptTrustCertificateForNetwork:certificateChain:profile:autoJoin:]";
        _os_log_impl(&dword_273ECD000, v15, v17, "%s: dismissing credentials view controller", buf, 0xCu);
      }

      credentialsContext2 = [(WFNetworkListController *)self credentialsContext];
      [(WFNetworkListController *)self _dismissCredentialsViewControllerWithContext:credentialsContext2];
    }
  }

  v20 = WFLogForCategory(5uLL);
  v21 = OSLogForWFLogLevel(1uLL);
  v22 = v21;
  if (WFCurrentLogLevel(v21, v23) && v20)
  {
    v24 = v20;
    if (os_log_type_enabled(v24, v22))
    {
      associationContext = [(WFNetworkListController *)self associationContext];
      *buf = 138413058;
      v50 = networkCopy;
      v51 = 1024;
      *v52 = joinCopy;
      *&v52[4] = 2112;
      *&v52[6] = profileCopy;
      v53 = 2112;
      v54 = associationContext;
      _os_log_impl(&dword_273ECD000, v24, v22, "prompting trust cert for %@ autojoin=%d (profile %@) - associationCtx: %@", buf, 0x26u);
    }
  }

  v26 = [[WFCertificateContext alloc] initWithNetwork:networkCopy profile:profileCopy certificateChain:chainCopy];
  viewProvider = [(WFNetworkListController *)self viewProvider];
  v28 = [viewProvider certificateViewControllerWithContext:v26];

  [(WFCertificateContext *)v26 setProvider:v28];
  viewProvider2 = [(WFNetworkListController *)self viewProvider];
  v30 = objc_opt_respondsToSelector();

  if (v30)
  {
    v31 = WFLogForCategory(0);
    v32 = OSLogForWFLogLevel(3uLL);
    v33 = v32;
    if (WFCurrentLogLevel(v32, v34) >= 3 && v31 && os_log_type_enabled(v31, v33))
    {
      *buf = 138412546;
      v50 = v28;
      v51 = 2112;
      *v52 = v26;
      _os_log_impl(&dword_273ECD000, v31, v33, "viewProvider will handle presentation of %@ (context %@)", buf, 0x16u);
    }

    viewProvider3 = [(WFNetworkListController *)self viewProvider];
    [viewProvider3 presentNetworkViewController:v28 forContext:v26];
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [v28 setModalPresentationStyle:2];
    }

    if ([(WFNetworkListController *)self associatingToOtherNetwork])
    {
      [(WFNetworkListController *)self otherNetworkVC];
    }

    else
    {
      [(WFNetworkListController *)self viewController];
    }
    viewProvider3 = ;
    [viewProvider3 presentViewController:v28 animated:1 completion:0];
  }

  [(WFNetworkListController *)self setCertificateContext:v26];
  [(WFNetworkListController *)self setVisibleContext:v26];
  objc_initWeak(buf, self);
  objc_initWeak(&location, profileCopy);
  objc_initWeak(&from, v26);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __95__WFNetworkListController__promptTrustCertificateForNetwork_certificateChain_profile_autoJoin___block_invoke;
  v40[3] = &unk_279EBD580;
  objc_copyWeak(&v43, &location);
  v46 = joinCopy;
  objc_copyWeak(&v44, buf);
  v38 = chainCopy;
  v41 = v38;
  v39 = networkCopy;
  v42 = v39;
  objc_copyWeak(&v45, &from);
  [(WFCertificateContext *)v26 setCompletionHandler:v40];
  objc_destroyWeak(&v45);

  objc_destroyWeak(&v44);
  objc_destroyWeak(&v43);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

void __95__WFNetworkListController__promptTrustCertificateForNetwork_certificateChain_profile_autoJoin___block_invoke(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a2)
    {
      if (*(a1 + 72) == 1)
      {
        v5 = objc_loadWeakRetained((a1 + 56));
        v6 = [v5 wifiClient];
        [v6 dispatchCertificateTrustAction:0 profile:WeakRetained];
      }

      v7 = [WeakRetained mutableCopy];
      [v7 setCertificateChain:*(a1 + 32)];
      v8 = WFLogForCategory(5uLL);
      v9 = OSLogForWFLogLevel(1uLL);
      v10 = v9;
      if (WFCurrentLogLevel(v9, v11) && v8)
      {
        v12 = v8;
        if (os_log_type_enabled(v12, v10))
        {
          v13 = [v7 ssid];
          v27 = 138412290;
          v28 = v13;
          _os_log_impl(&dword_273ECD000, v12, v10, "user accepted trust prompt for %@", &v27, 0xCu);
        }
      }

      v14 = objc_loadWeakRetained((a1 + 56));
      [v14 _associateToEnterpriseNetwork:*(a1 + 40) profile:v7];
    }

    else
    {
      v15 = WFLogForCategory(5uLL);
      v16 = OSLogForWFLogLevel(1uLL);
      v17 = v16;
      if (WFCurrentLogLevel(v16, v18) && v15)
      {
        v19 = v15;
        if (os_log_type_enabled(v19, v17))
        {
          v20 = [WeakRetained ssid];
          v27 = 138412290;
          v28 = v20;
          _os_log_impl(&dword_273ECD000, v19, v17, "user did not accept trust prompt for %@", &v27, 0xCu);
        }
      }

      if (*(a1 + 72) == 1)
      {
        v21 = objc_loadWeakRetained((a1 + 56));
        v22 = [v21 wifiClient];
        [v22 dispatchCertificateTrustAction:1 profile:WeakRetained];
      }

      v23 = objc_loadWeakRetained((a1 + 56));
      v24 = [MEMORY[0x277CCA9B8] associationErrorWithReason:6];
      [v23 _associationDidFinish:0 error:v24 network:0];

      v7 = objc_loadWeakRetained((a1 + 56));
      v14 = [v7 interface];
      [v14 disassociateFromCurrentNetwork];
    }

    v25 = objc_loadWeakRetained((a1 + 56));
    v26 = objc_loadWeakRetained((a1 + 64));
    [v25 _dismissTrustViewControllerWithContext:v26];
  }
}

- (unint64_t)_getLockdownModeSecurityType:(id)type
{
  typeCopy = type;
  scanResult = [typeCopy scanResult];
  if ([scanResult isOpen])
  {

LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  scanResult2 = [typeCopy scanResult];
  isOWE = [scanResult2 isOWE];

  if (isOWE)
  {
    goto LABEL_4;
  }

  scanResult3 = [typeCopy scanResult];
  isWEP = [scanResult3 isWEP];

  if (isWEP)
  {
    v7 = 2;
  }

  else
  {
    scanResult4 = [typeCopy scanResult];
    isWAPI = [scanResult4 isWAPI];

    if (isWAPI)
    {
      v7 = 3;
    }

    else
    {
      scanResult5 = [typeCopy scanResult];
      hasTKIPCipher = [scanResult5 hasTKIPCipher];

      if (hasTKIPCipher)
      {
        v7 = 4;
      }

      else
      {
        scanResult6 = [typeCopy scanResult];
        isPasspoint = [scanResult6 isPasspoint];

        if (isPasspoint)
        {
          v7 = 5;
        }

        else
        {
          scanResult7 = [typeCopy scanResult];
          matchingKnownNetworkProfile = [scanResult7 matchingKnownNetworkProfile];
          isCaptive = [matchingKnownNetworkProfile isCaptive];

          if (isCaptive)
          {
            v7 = 6;
          }

          else
          {
            v7 = 7;
          }
        }
      }
    }
  }

LABEL_5:

  return v7;
}

- (BOOL)_canStartAssociationToNetwork:(id)network
{
  v98 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  if ([(WFNetworkListController *)self _canPromptForInstantHotspot])
  {
    interface = [(WFNetworkListController *)self interface];
    ipMonitor = [interface ipMonitor];
    personalHotspotHasClients = [ipMonitor personalHotspotHasClients];

    if (personalHotspotHasClients)
    {
      v8 = WFLogForCategory(0);
      v9 = OSLogForWFLogLevel(3uLL);
      v10 = v9;
      if (WFCurrentLogLevel(v9, v11) >= 3 && v8)
      {
        v12 = v8;
        if (os_log_type_enabled(v12, v10))
        {
          viewController = [(WFNetworkListController *)self viewController];
          *buf = 138412290;
          v93 = viewController;
          _os_log_impl(&dword_273ECD000, v12, v10, "Personal Hotspot has clients, %@ requires user to be prompted before associating", buf, 0xCu);
        }
      }

      objc_initWeak(buf, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __57__WFNetworkListController__canStartAssociationToNetwork___block_invoke;
      aBlock[3] = &unk_279EBD138;
      objc_copyWeak(&v91, buf);
      v14 = networkCopy;
      v90 = v14;
      v15 = _Block_copy(aBlock);
      v16 = MEMORY[0x277D7B9C8];
      ssid = [v14 ssid];
      v18 = [v16 hotspotAlertControllerWithNetworkName:ssid completionHandler:v15];

      viewController2 = [(WFNetworkListController *)self viewController];
      [viewController2 presentViewController:v18 animated:1 completion:0];

      objc_destroyWeak(&v91);
      objc_destroyWeak(buf);
      goto LABEL_41;
    }
  }

  if ([(WFNetworkListController *)self _canPromptForCarPlay])
  {
    if ([(WFNetworkListController *)self _isActiveCarPlaySession])
    {
      interface2 = [(WFNetworkListController *)self interface];
      currentNetwork = [interface2 currentNetwork];
      v22 = [currentNetwork isEqual:networkCopy];

      if ((v22 & 1) == 0)
      {
        v27 = WFLogForCategory(0);
        v28 = OSLogForWFLogLevel(3uLL);
        v29 = v28;
        if (WFCurrentLogLevel(v28, v30) >= 3 && v27 && os_log_type_enabled(v27, v29))
        {
          *buf = 0;
          _os_log_impl(&dword_273ECD000, v27, v29, "In active CarPlay session, prompting user", buf, 2u);
        }

        objc_initWeak(buf, self);
        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = __57__WFNetworkListController__canStartAssociationToNetwork___block_invoke_251;
        v86[3] = &unk_279EBD138;
        objc_copyWeak(&v88, buf);
        v31 = networkCopy;
        v87 = v31;
        v32 = _Block_copy(v86);
        ssid2 = [v31 ssid];
        [(WFNetworkListController *)self _promptToDisableCarPlayForNetworkName:ssid2 handler:v32];

        objc_destroyWeak(&v88);
        objc_destroyWeak(buf);
        goto LABEL_41;
      }
    }
  }

  if (self->_lockdownModeEnabled)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      scanResult = [networkCopy scanResult];
      isAllowedInLockdownMode = [scanResult isAllowedInLockdownMode];

      if ((isAllowedInLockdownMode & 1) == 0)
      {
        v51 = WFLogForCategory(0);
        v52 = OSLogForWFLogLevel(3uLL);
        v53 = v52;
        if (WFCurrentLogLevel(v52, v54) >= 3 && v51 && os_log_type_enabled(v51, v53))
        {
          *buf = 0;
          _os_log_impl(&dword_273ECD000, v51, v53, "In Lockdown Mode, prompting user", buf, 2u);
        }

        objc_initWeak(buf, self);
        v83[0] = MEMORY[0x277D85DD0];
        v83[1] = 3221225472;
        v83[2] = __57__WFNetworkListController__canStartAssociationToNetwork___block_invoke_252;
        v83[3] = &unk_279EBD138;
        objc_copyWeak(&v85, buf);
        v55 = networkCopy;
        v84 = v55;
        v56 = _Block_copy(v83);
        scanResult2 = [v55 scanResult];
        if ([scanResult2 isOpen])
        {
        }

        else
        {
          scanResult3 = [v55 scanResult];
          isOWE = [scanResult3 isOWE];

          if ((isOWE & 1) == 0)
          {
            scanResult4 = [v55 scanResult];
            isWEP = [scanResult4 isWEP];

            if (isWEP)
            {
              v60 = 2;
            }

            else
            {
              scanResult5 = [v55 scanResult];
              isWAPI = [scanResult5 isWAPI];

              if (isWAPI)
              {
                v60 = 3;
              }

              else
              {
                scanResult6 = [v55 scanResult];
                hasTKIPCipher = [scanResult6 hasTKIPCipher];

                if (hasTKIPCipher)
                {
                  v60 = 4;
                }

                else
                {
                  scanResult7 = [v55 scanResult];
                  isPasspoint = [scanResult7 isPasspoint];

                  if (isPasspoint)
                  {
                    v60 = 5;
                  }

                  else
                  {
                    scanResult8 = [v55 scanResult];
                    matchingKnownNetworkProfile = [scanResult8 matchingKnownNetworkProfile];
                    isCaptive = [matchingKnownNetworkProfile isCaptive];

                    if (isCaptive)
                    {
                      v60 = 6;
                    }

                    else
                    {
                      v60 = 7;
                    }
                  }
                }
              }
            }

            goto LABEL_40;
          }
        }

        v60 = 0;
LABEL_40:
        v61 = MEMORY[0x277D7B9D8];
        ssid3 = [v55 ssid];
        v63 = [v61 lockdownModeAlertControllerWithNetworkName:ssid3 securityType:v60 completionHandler:v56];

        viewController3 = [(WFNetworkListController *)self viewController];
        [viewController3 presentViewController:v63 animated:1 completion:0];

        objc_destroyWeak(&v85);
        objc_destroyWeak(buf);
LABEL_41:
        v50 = 0;
        goto LABEL_42;
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    matchingKnownNetworkProfile2 = [networkCopy matchingKnownNetworkProfile];
    if (matchingKnownNetworkProfile2)
    {
      matchingKnownNetworkProfile3 = [networkCopy matchingKnownNetworkProfile];
      if (([matchingKnownNetworkProfile3 supportedSecurityTypes] & 0x40) != 0)
      {
        securityMode = [networkCopy securityMode];

        if (securityMode == 520)
        {
          v35 = WFLogForCategory(5uLL);
          v36 = OSLogForWFLogLevel(1uLL);
          v37 = v36;
          if (WFCurrentLogLevel(v36, v38) && v35)
          {
            v39 = v35;
            if (os_log_type_enabled(v39, v37))
            {
              v40 = WFStringFromWFSecurityModeExt(512);
              v41 = WFStringFromWFSecurityModeExt([networkCopy securityMode]);
              *buf = 138412802;
              v93 = networkCopy;
              v94 = 2112;
              v95 = v40;
              v96 = 2112;
              v97 = v41;
              _os_log_impl(&dword_273ECD000, v39, v37, "mismatched security for %@ (expected='%@', actual='%@')", buf, 0x20u);
            }
          }

          objc_initWeak(buf, self);
          v77 = MEMORY[0x277D85DD0];
          v78 = 3221225472;
          v79 = __57__WFNetworkListController__canStartAssociationToNetwork___block_invoke_253;
          v80 = &unk_279EBD138;
          objc_copyWeak(&v82, buf);
          v42 = networkCopy;
          v81 = v42;
          v43 = _Block_copy(&v77);
          v44 = WFWiFiLocalizedStringFromSecurityMode(512);
          v45 = WFWiFiLocalizedStringFromSecurityMode([v42 securityMode]);
          v46 = MEMORY[0x277D7BA00];
          ssid4 = [v42 ssid];
          v48 = [v46 securityMismatchAlertControllerWithNetworkName:ssid4 previousSecurity:v44 newSecurity:v45 completionHandler:v43];

          viewController4 = [(WFNetworkListController *)self viewController];
          [viewController4 presentViewController:v48 animated:1 completion:0];

          objc_destroyWeak(&v82);
          objc_destroyWeak(buf);
          goto LABEL_41;
        }
      }

      else
      {
      }
    }
  }

  v50 = 1;
LABEL_42:

  return v50;
}

void __57__WFNetworkListController__canStartAssociationToNetwork___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!a2)
  {
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(3uLL);
    v8 = v7;
    if (WFCurrentLogLevel(v7, v9) < 3 || !v6 || !os_log_type_enabled(v6, v8))
    {
      goto LABEL_13;
    }

    v14 = 0;
    v10 = "User declined to stop personal hotspot- canceling association";
    v11 = &v14;
    goto LABEL_12;
  }

  if (![WeakRetained _disablePersonalHotspot])
  {
    v6 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(1uLL);
    v8 = v12;
    if (!WFCurrentLogLevel(v12, v13) || !v6 || !os_log_type_enabled(v6, v8))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v10 = "Failed to disable personal hotspot- canceling association";
    v11 = buf;
LABEL_12:
    _os_log_impl(&dword_273ECD000, v6, v8, v10, v11, 2u);
LABEL_13:

    goto LABEL_14;
  }

  [v5 _associateToScanRecord:*(a1 + 32) profile:0];
LABEL_14:
}

void __57__WFNetworkListController__canStartAssociationToNetwork___block_invoke_251(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  v10 = WFCurrentLogLevel(v6, v8) > 2 && v5 != 0;
  if (a2)
  {
    if (v10 && os_log_type_enabled(v5, v7))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v5, v7, "Disssociating from current CarPlay network", buf, 2u);
    }

    v11 = [WeakRetained interface];
    [v11 disassociateFromCurrentNetwork];

    [WeakRetained _associateToScanRecord:*(a1 + 32) profile:0];
  }

  else
  {
    if (v10 && os_log_type_enabled(v5, v7))
    {
      *v12 = 0;
      _os_log_impl(&dword_273ECD000, v5, v7, "User declined to stop CarPlay session- canceling association", v12, 2u);
    }
  }
}

void __57__WFNetworkListController__canStartAssociationToNetwork___block_invoke_252(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2)
  {
    v6 = [WeakRetained interface];
    [v6 disassociateFromCurrentNetwork];

    [v5 _associateToScanRecord:*(a1 + 32) profile:0];
  }

  else
  {
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(3uLL);
    v9 = v8;
    if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
    {
      *v11 = 0;
      _os_log_impl(&dword_273ECD000, v7, v9, "User declined joining non-secure network in Lockdown Mode- canceling association", v11, 2u);
    }
  }
}

void __57__WFNetworkListController__canStartAssociationToNetwork___block_invoke_253(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WFLogForCategory(5uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8))
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (a2)
  {
    if (v10 && os_log_type_enabled(v5, v7))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v5, v7, "user accepted confirmation", buf, 2u);
    }

    [WeakRetained _associateToScanRecord:*(a1 + 32) profile:0];
  }

  else
  {
    if (v10 && os_log_type_enabled(v5, v7))
    {
      *v11 = 0;
      _os_log_impl(&dword_273ECD000, v5, v7, "user cancelled confirmation", v11, 2u);
    }
  }
}

- (BOOL)_canStartAssociationToUserSuppliedNetwork:(id)network
{
  v43 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  if ([(WFNetworkListController *)self _canPromptForInstantHotspot])
  {
    interface = [(WFNetworkListController *)self interface];
    ipMonitor = [interface ipMonitor];
    personalHotspotHasClients = [ipMonitor personalHotspotHasClients];

    if (personalHotspotHasClients)
    {
      v8 = WFLogForCategory(0);
      v9 = OSLogForWFLogLevel(3uLL);
      v10 = v9;
      if (WFCurrentLogLevel(v9, v11) >= 3 && v8)
      {
        v12 = v8;
        if (os_log_type_enabled(v12, v10))
        {
          viewController = [(WFNetworkListController *)self viewController];
          *buf = 138412290;
          v42 = viewController;
          _os_log_impl(&dword_273ECD000, v12, v10, "Personal Hotspot has clients, %@ requires user to be prompted before associating", buf, 0xCu);
        }
      }

      objc_initWeak(buf, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__WFNetworkListController__canStartAssociationToUserSuppliedNetwork___block_invoke;
      aBlock[3] = &unk_279EBD138;
      objc_copyWeak(&v40, buf);
      v14 = networkCopy;
      v39 = v14;
      v15 = _Block_copy(aBlock);
      v16 = MEMORY[0x277D7B9C8];
      ssid = [v14 ssid];
      v18 = [v16 hotspotAlertControllerWithNetworkName:ssid completionHandler:v15];

      otherNetworkVC = [(WFNetworkListController *)self otherNetworkVC];
      [otherNetworkVC presentViewController:v18 animated:1 completion:0];

      objc_destroyWeak(&v40);
      objc_destroyWeak(buf);
LABEL_18:
      v23 = 0;
      goto LABEL_19;
    }
  }

  if ([(WFNetworkListController *)self _canPromptForCarPlay])
  {
    if ([(WFNetworkListController *)self _isActiveCarPlaySession])
    {
      interface2 = [(WFNetworkListController *)self interface];
      currentNetwork = [interface2 currentNetwork];
      v22 = [currentNetwork isEqual:networkCopy];

      if ((v22 & 1) == 0)
      {
        v24 = WFLogForCategory(0);
        v25 = OSLogForWFLogLevel(3uLL);
        v26 = v25;
        if (WFCurrentLogLevel(v25, v27) >= 3 && v24 && os_log_type_enabled(v24, v26))
        {
          *buf = 0;
          _os_log_impl(&dword_273ECD000, v24, v26, "In active CarPlay session, prompting user", buf, 2u);
        }

        objc_initWeak(buf, self);
        v32 = MEMORY[0x277D85DD0];
        v33 = 3221225472;
        v34 = __69__WFNetworkListController__canStartAssociationToUserSuppliedNetwork___block_invoke_255;
        v35 = &unk_279EBD138;
        objc_copyWeak(&v37, buf);
        v28 = networkCopy;
        v36 = v28;
        v29 = _Block_copy(&v32);
        ssid2 = [v28 ssid];
        [(WFNetworkListController *)self _promptToDisableCarPlayForNetworkName:ssid2 handler:v29];

        objc_destroyWeak(&v37);
        objc_destroyWeak(buf);
        goto LABEL_18;
      }
    }
  }

  v23 = 1;
LABEL_19:

  return v23;
}

void __69__WFNetworkListController__canStartAssociationToUserSuppliedNetwork___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!a2)
  {
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(3uLL);
    v8 = v7;
    if (WFCurrentLogLevel(v7, v9) < 3 || !v6 || !os_log_type_enabled(v6, v8))
    {
      goto LABEL_13;
    }

    v14 = 0;
    v10 = "User declined to stop personal hotspot- canceling association";
    v11 = &v14;
    goto LABEL_12;
  }

  if (![WeakRetained _disablePersonalHotspot])
  {
    v6 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(1uLL);
    v8 = v12;
    if (!WFCurrentLogLevel(v12, v13) || !v6 || !os_log_type_enabled(v6, v8))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v10 = "Failed to disable personal hotspot- canceling association";
    v11 = buf;
LABEL_12:
    _os_log_impl(&dword_273ECD000, v6, v8, v10, v11, 2u);
LABEL_13:

    goto LABEL_14;
  }

  [v5 _associateToUserSuppliedNetwork:*(a1 + 32)];
LABEL_14:
}

void __69__WFNetworkListController__canStartAssociationToUserSuppliedNetwork___block_invoke_255(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  v10 = WFCurrentLogLevel(v6, v8) > 2 && v5 != 0;
  if (a2)
  {
    if (v10 && os_log_type_enabled(v5, v7))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v5, v7, "Disssociating from current CarPlay network", buf, 2u);
    }

    v11 = [WeakRetained interface];
    [v11 disassociateFromCurrentNetwork];

    [WeakRetained _associateToUserSuppliedNetwork:*(a1 + 32)];
  }

  else
  {
    if (v10 && os_log_type_enabled(v5, v7))
    {
      *v12 = 0;
      _os_log_impl(&dword_273ECD000, v5, v7, "User declined to stop CarPlay session- canceling association", v12, 2u);
    }
  }
}

- (void)_associationWillStart:(id)start
{
  v67 = *MEMORY[0x277D85DE8];
  startCopy = start;
  v5 = WFLogForCategory(5uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
  {
    *buf = 138412290;
    v62 = startCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "association will start for %@", buf, 0xCu);
  }

  associationContext = [(WFNetworkListController *)self associationContext];
  if (associationContext && (v10 = associationContext, -[WFNetworkListController associationContext](self, "associationContext"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 state], v11, v10, v12 == 2))
  {
    v13 = WFLogForCategory(0);
    v14 = OSLogForWFLogLevel(2uLL);
    v15 = v14;
    if (WFCurrentLogLevel(v14, v16) >= 2 && v13)
    {
      v17 = v13;
      if (os_log_type_enabled(v17, v15))
      {
        associationContext2 = [(WFNetworkListController *)self associationContext];
        stateDescription = [associationContext2 stateDescription];
        associationContext3 = [(WFNetworkListController *)self associationContext];
        networkName = [associationContext3 networkName];
        *buf = 136315650;
        v62 = "[WFNetworkListController _associationWillStart:]";
        v63 = 2112;
        v64 = stateDescription;
        v65 = 2112;
        v66 = networkName;
        _os_log_impl(&dword_273ECD000, v17, v15, "%s association already in progress current state is <%@> with network %@", buf, 0x20u);
      }
    }

    associationContext4 = [(WFNetworkListController *)self associationContext];
    [associationContext4 setState:1];
  }

  else
  {
    if (startCopy)
    {
      v59 = @"network";
      v60 = startCopy;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    }

    else
    {
      v23 = 0;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__WFNetworkListController__associationWillStart___block_invoke;
    block[3] = &unk_279EBD290;
    block[4] = self;
    v56 = v23;
    v58 = v56;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v24 = [[WFAssociationContext alloc] initWithNetwork:startCopy];
    [(WFAssociationContext *)v24 setState:1];
    scanMetricsManager = [(WFNetworkListController *)self scanMetricsManager];
    v26 = [scanMetricsManager sectionNameForRecord:startCopy];
    [(WFAssociationContext *)v24 setSectionNameJoined:v26];

    scanMetricsManager2 = [(WFNetworkListController *)self scanMetricsManager];
    sectionCounts = [scanMetricsManager2 sectionCounts];
    [(WFAssociationContext *)v24 setSectionCounts:sectionCounts];

    associationContextQueue = [(WFNetworkListController *)self associationContextQueue];
    [associationContextQueue push:v24];

    associationContextQueue2 = [(WFNetworkListController *)self associationContextQueue];
    peek = [associationContextQueue2 peek];

    network = [peek network];
    v33 = [network isEqual:startCopy];

    if (v33)
    {
      peek2 = peek;
    }

    else
    {
      do
      {
        v35 = WFLogForCategory(0);
        v36 = OSLogForWFLogLevel(1uLL);
        v37 = v36;
        if (WFCurrentLogLevel(v36, v38) && v35)
        {
          v39 = v35;
          if (os_log_type_enabled(v39, v37))
          {
            ssid = [startCopy ssid];
            *buf = 138412546;
            v62 = ssid;
            v63 = 2112;
            v64 = peek;
            _os_log_impl(&dword_273ECD000, v39, v37, "top association context in queue doesn't match current association attempt network: %@, skipping context: %@", buf, 0x16u);
          }
        }

        associationContextQueue3 = [(WFNetworkListController *)self associationContextQueue];
        v42 = [associationContextQueue3 pop];

        associationContextQueue4 = [(WFNetworkListController *)self associationContextQueue];
        peek2 = [associationContextQueue4 peek];

        network2 = [peek2 network];
        v45 = [network2 isEqual:startCopy];

        peek = peek2;
      }

      while (!v45);
    }

    associationContextQueue5 = [(WFNetworkListController *)self associationContextQueue];
    peek3 = [associationContextQueue5 peek];
    [(WFNetworkListController *)self setAssociationContext:peek3];

    [(WFNetworkListController *)self _pauseScanning];
    wifiClient = [(WFNetworkListController *)self wifiClient];
    [wifiClient setAutoJoinEnabled:0];

    v49 = WFLogForCategory(5uLL);
    v50 = OSLogForWFLogLevel(1uLL);
    v51 = v50;
    if (WFCurrentLogLevel(v50, v52) && v49)
    {
      v53 = v49;
      if (os_log_type_enabled(v53, v51))
      {
        associationContext5 = [(WFNetworkListController *)self associationContext];
        ssid2 = [startCopy ssid];
        *buf = 138412546;
        v62 = associationContext5;
        v63 = 2112;
        v64 = ssid2;
        _os_log_impl(&dword_273ECD000, v53, v51, "association context: %@ for %@", buf, 0x16u);
      }
    }

    associationContext4 = v56;
  }
}

void __49__WFNetworkListController__associationWillStart___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFNetworkListControllerAssociationDidStartNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

- (void)_associationDidFinish:(BOOL)finish error:(id)error network:(id)network
{
  errorCopy = error;
  networkCopy = network;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__WFNetworkListController__associationDidFinish_error_network___block_invoke;
  v12[3] = &unk_279EBD5A8;
  finishCopy = finish;
  v12[4] = self;
  v13 = errorCopy;
  v14 = networkCopy;
  v10 = networkCopy;
  v11 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __63__WFNetworkListController__associationDidFinish_error_network___block_invoke(uint64_t a1)
{
  v93 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) associationContext];
  v3 = [v2 networkName];

  v4 = WFLogForCategory(5uLL);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = *(a1 + 56);
    *buf = 138412546;
    v90 = v3;
    v91 = 1024;
    LODWORD(v92) = v8;
    _os_log_impl(&dword_273ECD000, v4, v6, "{ASSOC-} association finished for %@ - success %d", buf, 0x12u);
  }

  if (*(a1 + 40))
  {
    v9 = WFLogForCategory(5uLL);
    v10 = OSLogForWFLogLevel(1uLL);
    v11 = v10;
    if (WFCurrentLogLevel(v10, v12) && v9)
    {
      v13 = v9;
      if (os_log_type_enabled(v13, v11))
      {
        v14 = WFAssociationErrorCodeToString([*(a1 + 40) code]);
        v15 = *(a1 + 40);
        *buf = 138412546;
        v90 = v14;
        v91 = 2112;
        v92 = v15;
        _os_log_impl(&dword_273ECD000, v13, v11, "association failure: <%@> (error %@)", buf, 0x16u);
      }
    }
  }

  v16 = [*(a1 + 32) credentialsContext];

  if (v16)
  {
    v17 = WFLogForCategory(5uLL);
    v18 = OSLogForWFLogLevel(1uLL);
    v19 = v18;
    if (WFCurrentLogLevel(v18, v20) && v17 && os_log_type_enabled(v17, v19))
    {
      *buf = 138412290;
      v90 = v3;
      _os_log_impl(&dword_273ECD000, v17, v19, "dismissing credentials view controller for %@", buf, 0xCu);
    }

    v21 = *(a1 + 32);
    v22 = [v21 credentialsContext];
    [v21 _dismissCredentialsViewControllerWithContext:v22];
  }

  if ([*(a1 + 32) isAssociating])
  {
    v23 = [*(a1 + 32) associationContextQueue];
    v24 = [v23 pop];

    v25 = [*(a1 + 32) associationContextQueue];
    v26 = [v25 peek];
    [*(a1 + 32) setAssociationContext:v26];

    if ((*(a1 + 56) & 1) == 0)
    {
      v27 = WFLogForCategory(0);
      v28 = OSLogForWFLogLevel(3uLL);
      v29 = v28;
      if (WFCurrentLogLevel(v28, v30) >= 3 && v27 && os_log_type_enabled(v27, v29))
      {
        *buf = 138412290;
        v90 = v3;
        _os_log_impl(&dword_273ECD000, v27, v29, "failed to associate to '%@', forcing current network update", buf, 0xCu);
      }

      v31 = [*(a1 + 32) interface];
      [v31 asyncCurrentNetwork:0];
    }

    v32 = *(a1 + 40);
    v33 = v32;
    if ((*(a1 + 56) & 1) == 0 && !v32)
    {
      v33 = [MEMORY[0x277CCA9B8] associationErrorWithReason:12];
    }

    if (v33)
    {
      v87 = @"error";
      v88 = v33;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    }

    else
    {
      v46 = [*(a1 + 32) interface];
      v47 = [v46 currentNetwork];

      if (v47)
      {
        v48 = [*(a1 + 32) interface];
        v49 = [v48 currentNetwork];
        v50 = [v49 copy];

        v85 = @"network";
        v86 = v50;
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        v51 = WFLogForCategory(5uLL);
        v52 = OSLogForWFLogLevel(4uLL);
        v53 = v52;
        if (WFCurrentLogLevel(v52, v54) >= 4 && v51)
        {
          v55 = v51;
          if (os_log_type_enabled(v55, v53))
          {
            v56 = [*(a1 + 32) interface];
            v57 = [v56 currentNetwork];
            *buf = 138412290;
            v90 = v57;
            _os_log_impl(&dword_273ECD000, v55, v53, "notifying with network from WFInterface %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v73 = *(a1 + 48);
        if (!v73)
        {
          v78 = WFLogForCategory(5uLL);
          v79 = OSLogForWFLogLevel(1uLL);
          v80 = v79;
          if (WFCurrentLogLevel(v79, v81) && v78 && os_log_type_enabled(v78, v80))
          {
            *buf = 0;
            _os_log_impl(&dword_273ECD000, v78, v80, "network to notify for WFNetworkListControllerAssociationNetworkKey is nil", buf, 2u);
          }

          v34 = 0;
          goto LABEL_51;
        }

        v83 = @"network";
        v84 = v73;
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v50 = WFLogForCategory(5uLL);
        v74 = OSLogForWFLogLevel(4uLL);
        v75 = v74;
        if (WFCurrentLogLevel(v74, v76) >= 4 && v50 && os_log_type_enabled(v50, v75))
        {
          v77 = *(a1 + 48);
          *buf = 138412290;
          v90 = v77;
          _os_log_impl(&dword_273ECD000, v50, v75, "notifying with network from WFNetworkListController %@", buf, 0xCu);
        }
      }
    }

LABEL_51:
    v58 = [MEMORY[0x277CCAB98] defaultCenter];
    [v58 postNotificationName:@"WFNetworkListControllerAssociationDidFinishNotification" object:*(a1 + 32) userInfo:v34];

    if ([*(a1 + 32) associatingToOtherNetwork])
    {
      v59 = WFLogForCategory(5uLL);
      v60 = OSLogForWFLogLevel(1uLL);
      v61 = v60;
      if (WFCurrentLogLevel(v60, v62) && v59)
      {
        v63 = v59;
        if (os_log_type_enabled(v63, v61))
        {
          v64 = [*(a1 + 32) otherNetworkVC];
          *buf = 138412290;
          v90 = v64;
          _os_log_impl(&dword_273ECD000, v63, v61, "association originated from otherNetworkVC: %@", buf, 0xCu);
        }
      }
    }

    [*(a1 + 32) setAssociatingToOtherNetwork:0];
    [*(a1 + 32) _updateViewControllerConnectedNetwork];
    if (*(a1 + 56) == 1 && [*(a1 + 32) isAirPortSettings] && (objc_msgSend(*(a1 + 48), "iOSHotspot") & 1) == 0)
    {
      v65 = WFLogForCategory(0);
      v66 = OSLogForWFLogLevel(3uLL);
      v67 = v66;
      if (WFCurrentLogLevel(v66, v68) >= 3 && v65 && os_log_type_enabled(v65, v67))
      {
        *buf = 67109120;
        LODWORD(v90) = 5;
        _os_log_impl(&dword_273ECD000, v65, v67, "Scheduling a no internet test after successful association after %d seconds.", buf, 8u);
      }

      v69 = [*(a1 + 32) healthManager];
      [v69 runNoInternetDiagnosticsAfter:5];
    }

    [*(a1 + 32) _resumeScanning];
    if ([*(a1 + 48) iOSHotspot])
    {
      v70 = [*(a1 + 32) wifiClient];
      v71 = [v70 interface];
      [v71 asyncCurrentNetwork:0];
    }

    v72 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__WFNetworkListController__associationDidFinish_error_network___block_invoke_258;
    block[3] = &unk_279EBCFE0;
    block[4] = *(a1 + 32);
    dispatch_async(v72, block);

LABEL_69:
    goto LABEL_70;
  }

  v35 = WFLogForCategory(5uLL);
  v36 = OSLogForWFLogLevel(1uLL);
  v37 = v36;
  if (WFCurrentLogLevel(v36, v38) && v35)
  {
    v39 = v35;
    if (os_log_type_enabled(v39, v37))
    {
      v40 = [*(a1 + 32) associationContext];
      v41 = [v40 stateDescription];
      *buf = 138412290;
      v90 = v41;
      _os_log_impl(&dword_273ECD000, v39, v37, "no association in progress, current state: <%@>", buf, 0xCu);
    }
  }

  [*(a1 + 32) _updateViewControllerConnectedNetwork];
  if (*(a1 + 56) == 1 && [*(a1 + 32) isAirPortSettings] && (objc_msgSend(*(a1 + 48), "iOSHotspot") & 1) == 0)
  {
    v42 = WFLogForCategory(0);
    v43 = OSLogForWFLogLevel(3uLL);
    v44 = v43;
    if (WFCurrentLogLevel(v43, v45) >= 3 && v42 && os_log_type_enabled(v42, v44))
    {
      *buf = 67109120;
      LODWORD(v90) = 3;
      _os_log_impl(&dword_273ECD000, v42, v44, "Scheduling a no internet test after successful association after %d seconds.", buf, 8u);
    }

    v33 = [*(a1 + 32) healthManager];
    [v33 runNoInternetDiagnosticsAfter:3];
    goto LABEL_69;
  }

LABEL_70:
}

void __63__WFNetworkListController__associationDidFinish_error_network___block_invoke_258(uint64_t a1)
{
  v1 = [*(a1 + 32) wifiClient];
  [v1 setAutoJoinEnabled:1];
}

- (void)_presentHotspotErrorContextWithDevice:(id)device hotspotError:(id)error failure:(int64_t)failure
{
  v25[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  errorCopy = error;
  v10 = errorCopy;
  if (errorCopy)
  {
    v24 = *MEMORY[0x277CCA7E8];
    v25[0] = errorCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x277CCA9B8] associationErrorWithReason:failure userInfo:v11];
  v13 = [[WFErrorContext alloc] initWithAssociationError:v12 network:deviceCopy diagnosticsResult:0];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v13);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __86__WFNetworkListController__presentHotspotErrorContextWithDevice_hotspotError_failure___block_invoke;
  v18 = &unk_279EBD3A8;
  objc_copyWeak(&v20, &location);
  objc_copyWeak(&v21, &from);
  v14 = v12;
  v19 = v14;
  [(WFErrorContext *)v13 setCompletionHandler:&v15];
  [(WFNetworkListController *)self _presentContext:v13 contextType:0, v15, v16, v17, v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __86__WFNetworkListController__presentHotspotErrorContextWithDevice_hotspotError_failure___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _dismissErrorViewControllerWithContext:v3];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _associationDidFinish:0 error:*(a1 + 32) network:0];
}

- (void)_presentContext:(id)context contextType:(unint64_t)type
{
  contextCopy = context;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__WFNetworkListController__presentContext_contextType___block_invoke;
  block[3] = &unk_279EBD5D0;
  v9 = contextCopy;
  typeCopy = type;
  block[4] = self;
  v7 = contextCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __55__WFNetworkListController__presentContext_contextType___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) viewProvider];
  v3 = objc_opt_respondsToSelector();

  v4 = *(a1 + 48);
  if (v4 == 1)
  {
    v5 = *(a1 + 40);
    v18 = WFLogForCategory(0);
    v19 = OSLogForWFLogLevel(1uLL);
    v20 = v19;
    if (WFCurrentLogLevel(v19, v21) && v18 && os_log_type_enabled(v18, v20))
    {
      v41 = 136315394;
      v42 = "[WFNetworkListController _presentContext:contextType:]_block_invoke";
      v43 = 2112;
      v44 = v5;
      _os_log_impl(&dword_273ECD000, v18, v20, "%s: presenting lockdown mode context %@", &v41, 0x16u);
    }

    v22 = [*(a1 + 32) viewProvider];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v24 = [*(a1 + 32) viewProvider];
      v25 = [v24 networkLockdownModeViewControllerWithContext:v5];
      [*(a1 + 32) setContextVC:v25];
    }
  }

  else
  {
    if (v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 40);
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(1uLL);
    v8 = v7;
    if (WFCurrentLogLevel(v7, v9) && v6 && os_log_type_enabled(v6, v8))
    {
      v41 = 136315394;
      v42 = "[WFNetworkListController _presentContext:contextType:]_block_invoke";
      v43 = 2112;
      v44 = v5;
      _os_log_impl(&dword_273ECD000, v6, v8, "%s: presenting error context %@", &v41, 0x16u);
    }

    v10 = [*(a1 + 32) viewProvider];
    v11 = [v10 networkErrorViewControllerWithContext:v5];
    [*(a1 + 32) setContextVC:v11];

    v12 = [*(a1 + 32) contextVC];

    if (!v12)
    {
      v13 = WFLogForCategory(0);
      v14 = OSLogForWFLogLevel(3uLL);
      v15 = v14;
      if (WFCurrentLogLevel(v14, v16) >= 3 && v13)
      {
        v13 = v13;
        if (os_log_type_enabled(v13, v15))
        {
          v17 = [*(a1 + 32) viewProvider];
          v41 = 136315650;
          v42 = "[WFNetworkListController _presentContext:contextType:]_block_invoke";
          v43 = 2112;
          v44 = v17;
          v45 = 2112;
          v46 = v5;
          _os_log_impl(&dword_273ECD000, v13, v15, "%s: provider (%@) did not return view for error %@", &v41, 0x20u);
        }
      }

      goto LABEL_35;
    }
  }

  v26 = [*(a1 + 32) contextVC];
  [v5 setProvider:v26];

  [*(a1 + 32) setVisibleContext:v5];
LABEL_20:
  if ((v3 & 1) == 0)
  {
    v35 = [*(a1 + 32) otherNetworkVC];
    if (v35 && (v36 = *(*(a1 + 32) + 10), v35, v36 == 1))
    {
      v37 = [*(a1 + 32) otherNetworkVC];
    }

    else
    {
      v38 = [*(a1 + 32) credentialsContext];

      v39 = *(a1 + 32);
      if (v38)
      {
        v40 = [v39 credentialsContext];
        v5 = [v40 provider];

LABEL_34:
        v13 = [*(a1 + 32) contextVC];
        [v5 presentViewController:v13 animated:1 completion:0];
        goto LABEL_35;
      }

      v37 = [v39 viewController];
    }

    v5 = v37;
    goto LABEL_34;
  }

  v27 = WFLogForCategory(0);
  v28 = OSLogForWFLogLevel(3uLL);
  v29 = v28;
  if (WFCurrentLogLevel(v28, v30) >= 3 && v27)
  {
    v31 = v27;
    if (os_log_type_enabled(v31, v29))
    {
      v32 = [*(a1 + 32) contextVC];
      v33 = [*(a1 + 32) visibleContext];
      v41 = 138412546;
      v42 = v32;
      v43 = 2112;
      v44 = v33;
      _os_log_impl(&dword_273ECD000, v31, v29, "viewProvider will handle presentation of %@ (context %@)", &v41, 0x16u);
    }
  }

  v5 = [*(a1 + 32) viewProvider];
  v13 = [*(a1 + 32) contextVC];
  v34 = [*(a1 + 32) visibleContext];
  [v5 presentNetworkViewController:v13 forContext:v34];

LABEL_35:
}

- (void)_scanNetworkForAssociation:(id)association profile:(id)profile
{
  v32 = *MEMORY[0x277D85DE8];
  associationCopy = association;
  profileCopy = profile;
  v8 = WFLogForCategory(5uLL);
  v9 = OSLogForWFLogLevel(1uLL);
  v10 = v9;
  if (WFCurrentLogLevel(v9, v11) && v8 && os_log_type_enabled(v8, v10))
  {
    *buf = 138412546;
    v29 = associationCopy;
    v30 = 2112;
    v31 = profileCopy;
    _os_log_impl(&dword_273ECD000, v8, v10, "scanning to associate for network='%@' profile='%@'", buf, 0x16u);
  }

  ssid = [associationCopy ssid];
  interface = [(WFNetworkListController *)self interface];
  deviceScanChannels = [interface deviceScanChannels];
  v15 = [WFScanRequest scanRequestForSSID:ssid channels:deviceScanChannels];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    securityMode = 8;
    if (v15)
    {
LABEL_7:
      objc_initWeak(buf, self);
      interface2 = [(WFNetworkListController *)self interface];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __62__WFNetworkListController__scanNetworkForAssociation_profile___block_invoke;
      v24[3] = &unk_279EBD5F8;
      objc_copyWeak(&v27, buf);
      v25 = associationCopy;
      v26 = profileCopy;
      [interface2 asyncScanRequest:v15 reply:v24];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
      goto LABEL_14;
    }
  }

  else
  {
    securityMode = [associationCopy securityMode];
    if (v15)
    {
      goto LABEL_7;
    }
  }

  v18 = WFLogForCategory(5uLL);
  v19 = OSLogForWFLogLevel(1uLL);
  v20 = v19;
  if (WFCurrentLogLevel(v19, v21) && v18 && os_log_type_enabled(v18, v20))
  {
    *buf = 138412290;
    v29 = associationCopy;
    _os_log_impl(&dword_273ECD000, v18, v20, "failed to create scan request for network='%@'", buf, 0xCu);
  }

  v22 = [MEMORY[0x277CCA9B8] associationErrorWithReason:12];
  associationContext = [(WFNetworkListController *)self associationContext];
  [(WFNetworkListController *)self _handleAssociationError:v22 network:associationCopy profile:profileCopy securityMode:securityMode associationContext:associationContext];

LABEL_14:
}

void __62__WFNetworkListController__scanNetworkForAssociation_profile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WFLogForCategory(5uLL);
  v9 = OSLogForWFLogLevel(1uLL);
  v10 = v9;
  if (WFCurrentLogLevel(v9, v11) && v8 && os_log_type_enabled(v8, v10))
  {
    v12 = *(a1 + 32);
    *buf = 138412546;
    v23 = v12;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_273ECD000, v8, v10, "scan completed for network='%@' results='%@'", buf, 0x16u);
  }

  v13 = [WeakRetained associationContext];
  [v13 setSecondaryScanCompleted:1];

  if (!v5 && v6 && [v6 count])
  {
    v14 = v20;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __62__WFNetworkListController__scanNetworkForAssociation_profile___block_invoke_2;
    v20[3] = &unk_279EBD268;
    v15 = v6;
  }

  else
  {
    v16 = WFLogForCategory(5uLL);
    v17 = OSLogForWFLogLevel(1uLL);
    v18 = v17;
    if (WFCurrentLogLevel(v17, v19) && v16 && os_log_type_enabled(v16, v18))
    {
      *buf = 138412546;
      v23 = v5;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_273ECD000, v16, v18, "scan error='%@' results='%@'", buf, 0x16u);
    }

    v14 = v21;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __62__WFNetworkListController__scanNetworkForAssociation_profile___block_invoke_261;
    v21[3] = &unk_279EBD268;
    v15 = *(a1 + 32);
  }

  v14[4] = v15;
  v14[5] = WeakRetained;
  v14[6] = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __62__WFNetworkListController__scanNetworkForAssociation_profile___block_invoke_261(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 8;
  }

  else
  {
    v3 = [*(a1 + 32) securityMode];
  }

  v4 = *(a1 + 40);
  v8 = [MEMORY[0x277CCA9B8] associationErrorWithReason:12];
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) associationContext];
  [v4 _handleAssociationError:v8 network:v6 profile:v5 securityMode:v3 associationContext:v7];
}

void __62__WFNetworkListController__scanNetworkForAssociation_profile___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) anyObject];
  [*(a1 + 40) _associateToScanRecord:v2 profile:*(a1 + 48)];
}

- (void)_updateViewControllerConnectedNetwork
{
  interface = [(WFNetworkListController *)self interface];
  currentNetwork = [interface currentNetwork];
  [(WFNetworkListController *)self _updateViewControllerConnectedNetwork:currentNetwork];
}

- (void)_updateViewControllerConnectedNetwork:(id)network
{
  networkCopy = network;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__WFNetworkListController__updateViewControllerConnectedNetwork___block_invoke;
  v6[3] = &unk_279EBD290;
  v7 = networkCopy;
  selfCopy = self;
  v5 = networkCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __65__WFNetworkListController__updateViewControllerConnectedNetwork___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(1uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) && v3)
  {
    v7 = v3;
    if (os_log_type_enabled(v7, v5))
    {
      if (v2)
      {
        v34 = [v2 ssid];
      }

      else
      {
        v34 = @"nil";
      }

      v33 = [v2 hash];
      v8 = [*(a1 + 40) viewController];
      v9 = [v8 currentNetwork];
      if (v9)
      {
        v32 = [*(a1 + 40) viewController];
        v31 = [v32 currentNetwork];
        v10 = [v31 ssid];
      }

      else
      {
        v10 = @"nil";
      }

      v11 = [*(a1 + 40) viewController];
      v12 = [v11 currentNetwork];
      *buf = 136316162;
      v36 = "[WFNetworkListController _updateViewControllerConnectedNetwork:]_block_invoke";
      v37 = 2112;
      v38 = v34;
      v39 = 2048;
      v40 = v33;
      v41 = 2112;
      v42 = v10;
      v43 = 2048;
      v44 = [v12 hash];
      _os_log_impl(&dword_273ECD000, v7, v5, "%s: current network is %@ (%lu), view controller current network: %@ (%lu)", buf, 0x34u);

      if (v9)
      {
      }

      if (v2)
      {
      }
    }
  }

  v13 = [*(a1 + 40) viewController];
  [v13 setCurrentNetwork:v2];

  v14 = WFLogForCategory(0);
  v15 = OSLogForWFLogLevel(1uLL);
  v16 = v15;
  if (WFCurrentLogLevel(v15, v17) && v14)
  {
    v18 = v14;
    if (os_log_type_enabled(v18, v16))
    {
      v19 = [*(a1 + 40) viewController];
      v20 = [v19 currentNetwork];
      *buf = 136315394;
      v36 = "[WFNetworkListController _updateViewControllerConnectedNetwork:]_block_invoke";
      v37 = 2112;
      v38 = v20;
      _os_log_impl(&dword_273ECD000, v18, v16, "%s: view controller current network updated to %@", buf, 0x16u);
    }
  }

  v21 = [*(a1 + 40) viewController];
  v22 = objc_opt_respondsToSelector();

  v23 = [*(a1 + 40) latestLinkQuality];
  v24 = v23;
  if (v22)
  {
    if (v23)
    {
      v22 = [*(a1 + 40) latestLinkQuality];
      [v22 scaledRssi];
    }

    else
    {
      [v2 scaledRSSI];
    }

    v27 = WFSignalBarsFromScaledRSSI();
    v28 = [*(a1 + 40) viewController];
    [v28 setCurrentNetworkSignalBars:v27];

    if (!v24)
    {
      goto LABEL_31;
    }

LABEL_30:

    goto LABEL_31;
  }

  if (v23)
  {
    v22 = [*(a1 + 40) latestLinkQuality];
    [v22 scaledRssi];
  }

  else
  {
    [v2 scaledRSSI];
  }

  v26 = v25;
  v29 = [*(a1 + 40) viewController];
  LODWORD(v30) = v26;
  [v29 setCurrentNetworkScaledRSSI:v30];

  if (v24)
  {
    goto LABEL_30;
  }

LABEL_31:

  [*(a1 + 40) _updateCurrentNetworkIPState:v2];
  [*(a1 + 40) _updateViewControllerScanResults];
  [*(a1 + 40) _updateHealthSubtitle];
}

- (void)_ipStateDidChange:(id)change
{
  v28 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  interface = [(WFNetworkListController *)self interface];
  currentNetwork = [interface currentNetwork];

  v8 = WFLogForCategory(0);
  associationContext3 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel(associationContext3, v10) >= 3 && v8)
  {
    network = v8;
    if (os_log_type_enabled(network, associationContext3))
    {
      userInfo = [changeCopy userInfo];
      associationContext = [(WFNetworkListController *)self associationContext];
      *buf = 136315906;
      v21 = "[WFNetworkListController _ipStateDidChange:]";
      v22 = 2112;
      v23 = userInfo;
      v24 = 2112;
      v25 = associationContext;
      v26 = 2112;
      v27 = currentNetwork;
      _os_log_impl(&dword_273ECD000, network, associationContext3, "%s: userInfo %@ - self.associationContext %@ - self.interface.currentNetwork %@", buf, 0x2Au);
    }
  }

  associationContext2 = [(WFNetworkListController *)self associationContext];
  if (associationContext2)
  {
    associationContext3 = [(WFNetworkListController *)self associationContext];
    network = [associationContext3 network];
    if ([network isEqual:currentNetwork])
    {

      goto LABEL_17;
    }
  }

  associationContext4 = [(WFNetworkListController *)self associationContext];
  network2 = [associationContext4 network];
  if (network2)
  {
    v16 = 1;
  }

  else
  {
    v16 = currentNetwork == 0;
  }

  v17 = !v16;

  if (!associationContext2)
  {
    if (!v17)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v17)
  {
LABEL_17:
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __45__WFNetworkListController__ipStateDidChange___block_invoke;
    v18[3] = &unk_279EBD290;
    v18[4] = self;
    v19 = currentNetwork;
    dispatch_async(MEMORY[0x277D85CD0], v18);
  }

LABEL_18:
}

void __45__WFNetworkListController__ipStateDidChange___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _updateCurrentNetworkIPState:*(a1 + 40)];
  v11 = [*(a1 + 32) interface];
  if ([v11 hasValidIPAddress])
  {
    v2 = [*(a1 + 32) interface];
    v3 = [v2 hasPrimaryIPConfiguration];

    if (v3)
    {
      v4 = WFLogForCategory(0);
      v5 = OSLogForWFLogLevel(3uLL);
      v6 = v5;
      if (WFCurrentLogLevel(v5, v7) >= 3 && v4)
      {
        v8 = v4;
        if (os_log_type_enabled(v8, v6))
        {
          v9 = [*(a1 + 40) ssid];
          *buf = 138412290;
          v13 = v9;
          _os_log_impl(&dword_273ECD000, v8, v6, "current network='%@' kicking off internet test upon receiving valid IP configuration", buf, 0xCu);
        }
      }

      v10 = [*(a1 + 32) healthManager];
      [v10 runNoInternetDiagnosticsAfter:5];
    }
  }

  else
  {
  }
}

- (void)_updateCurrentNetworkIPState:(id)state
{
  v23 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if ([(WFNetworkListController *)self isAssociating])
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) >= 3 && v5)
    {
      v5 = v5;
      if (os_log_type_enabled(v5, v7))
      {
        associationContext = [(WFNetworkListController *)self associationContext];
        stateDescription = [associationContext stateDescription];
        associationContext2 = [(WFNetworkListController *)self associationContext];
        networkName = [associationContext2 networkName];
        *buf = 136315650;
        v18 = "[WFNetworkListController _updateCurrentNetworkIPState:]";
        v19 = 2112;
        v20 = stateDescription;
        v21 = 2112;
        v22 = networkName;
        _os_log_impl(&dword_273ECD000, v5, v7, "%s IP state change while association state is <%@> with network %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v13 = dispatch_get_global_queue(21, 0);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__WFNetworkListController__updateCurrentNetworkIPState___block_invoke;
    v14[3] = &unk_279EBD290;
    v15 = stateCopy;
    selfCopy = self;
    dispatch_async(v13, v14);

    v5 = v15;
  }
}

void __56__WFNetworkListController__updateCurrentNetworkIPState___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) interface];
    v3 = [v2 hasValidIPAddress];

    v4 = [*(a1 + 40) wifiClient];
    v5 = [v4 isCellularOutrankingWiFi];

    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(3uLL);
    v8 = v7;
    if (WFCurrentLogLevel(v7, v9) >= 3 && v6)
    {
      v10 = v6;
      if (os_log_type_enabled(v10, v8))
      {
        v11 = [*(a1 + 32) ssid];
        *buf = 138412802;
        v16 = v11;
        v17 = 1024;
        v18 = v3;
        v19 = 1024;
        v20 = v5;
        _os_log_impl(&dword_273ECD000, v10, v8, "current network='%@' hasValidIP=%d wifiOutranked=%d", buf, 0x18u);
      }
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__WFNetworkListController__updateCurrentNetworkIPState___block_invoke_265;
    v12[3] = &unk_279EBD620;
    v13 = v5;
    v12[4] = *(a1 + 40);
    v14 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

void __56__WFNetworkListController__updateCurrentNetworkIPState___block_invoke_265(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0;
  }

  else if (*(a1 + 41))
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  v2 = [*(a1 + 32) viewController];
  [v2 setCurrentNetworkState:v1];
}

- (BOOL)_canPromptForInstantHotspot
{
  viewController = [(WFNetworkListController *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    viewController2 = [(WFNetworkListController *)self viewController];
    shouldPromptWhenPersonalHotspotIsEnabled = [viewController2 shouldPromptWhenPersonalHotspotIsEnabled];
  }

  else
  {
    shouldPromptWhenPersonalHotspotIsEnabled = 0;
  }

  return shouldPromptWhenPersonalHotspotIsEnabled;
}

- (BOOL)_disablePersonalHotspot
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    *buf = 136315138;
    *&buf[4] = "[WFNetworkListController _disablePersonalHotspot]";
    _os_log_impl(&dword_273ECD000, v3, v5, "%s: disabling personal hotspot", buf, 0xCu);
  }

  *buf = 0;
  v7 = _MISAttach(buf);
  if (v7)
  {
    v8 = v7;
    wifiClient = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(1uLL);
    v11 = v10;
    v13 = 0;
    if (WFCurrentLogLevel(v10, v12) && wifiClient)
    {
      if (os_log_type_enabled(wifiClient, v11))
      {
        v24 = 67109120;
        v25 = v8;
        v14 = "Error: Unable to attach to MobileInternetSharing (err=%d)";
LABEL_20:
        _os_log_impl(&dword_273ECD000, wifiClient, v11, v14, &v24, 8u);
        goto LABEL_21;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v15 = _MISSetGlobalServiceState(*buf, 1022);
    if (v15)
    {
      v16 = v15;
      wifiClient = WFLogForCategory(0);
      v17 = OSLogForWFLogLevel(1uLL);
      v11 = v17;
      v13 = 0;
      if (WFCurrentLogLevel(v17, v18) && wifiClient)
      {
        if (os_log_type_enabled(wifiClient, v11))
        {
          v24 = 67109120;
          v25 = v16;
          v14 = "Error: Failed to turn off Personal Hotspot (err=%d)";
          goto LABEL_20;
        }

LABEL_21:
        v13 = 0;
      }
    }

    else
    {
      v19 = _MISSetGlobalServiceState(*buf, 1023);
      if (!v19)
      {
        _MISDetach(*buf);
        wifiClient = [(WFNetworkListController *)self wifiClient];
        [wifiClient setMISState:0];
        v13 = 1;
        goto LABEL_22;
      }

      v20 = v19;
      wifiClient = WFLogForCategory(0);
      v21 = OSLogForWFLogLevel(1uLL);
      v11 = v21;
      v13 = 0;
      if (WFCurrentLogLevel(v21, v22) && wifiClient)
      {
        if (os_log_type_enabled(wifiClient, v11))
        {
          v24 = 67109120;
          v25 = v20;
          v14 = "Error: Failed to re-enable Personal Hotspot (err=%d)";
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }
  }

LABEL_22:

  return v13;
}

- (BOOL)_canPromptForCarPlay
{
  viewController = [(WFNetworkListController *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    viewController2 = [(WFNetworkListController *)self viewController];
    shouldPromptWhenCarPlaySessionIsActive = [viewController2 shouldPromptWhenCarPlaySessionIsActive];
  }

  else
  {
    shouldPromptWhenCarPlaySessionIsActive = 0;
  }

  return shouldPromptWhenCarPlaySessionIsActive;
}

- (void)_promptToDisableCarPlayForNetworkName:(id)name handler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v7 = [WFNetworkProfile alloc];
  interface = [(WFNetworkListController *)self interface];
  currentNetwork = [interface currentNetwork];
  matchingKnownNetworkProfile = [currentNetwork matchingKnownNetworkProfile];
  v11 = [(WFNetworkProfile *)v7 initWithCoreWiFiProfile:matchingKnownNetworkProfile];

  if (v11)
  {
    carPlayUUID = [(WFNetworkProfile *)v11 carPlayUUID];

    if (carPlayUUID)
    {
      carPlayUUID2 = [(WFNetworkProfile *)v11 carPlayUUID];
      carPlayUUID = WFGetCarNameFromCarPlayNetworkUUID(carPlayUUID2);
    }
  }

  else
  {
    carPlayUUID = 0;
  }

  v14 = [MEMORY[0x277D7B990] carPlayAlertControllerWithNetworkName:nameCopy carName:carPlayUUID completionHandler:handlerCopy];
  viewController = [(WFNetworkListController *)self viewController];
  [viewController presentViewController:v14 animated:1 completion:0];
}

- (BOOL)_isActiveCarPlaySession
{
  interface = [(WFNetworkListController *)self interface];
  currentNetwork = [interface currentNetwork];
  isCarPlay = [currentNetwork isCarPlay];

  if (!isCarPlay)
  {
    return 0;
  }

  v5 = MEMORY[0x277CE64E8];

  return [v5 isCarPlaySessionActive];
}

- (void)_networkHealthIssuesDidChange:(id)change
{
  v24 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if ([(WFNetworkListController *)self isAssociating])
  {
    objc_initWeak(&location, self);
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) >= 3 && v5)
    {
      v9 = v5;
      if (os_log_type_enabled(v9, v7))
      {
        associationContext = [(WFNetworkListController *)self associationContext];
        associationContext2 = [(WFNetworkListController *)self associationContext];
        networkName = [associationContext2 networkName];
        *buf = 136315650;
        v19 = "[WFNetworkListController _networkHealthIssuesDidChange:]";
        v20 = 2112;
        v21 = associationContext;
        v22 = 2112;
        v23 = networkName;
        _os_log_impl(&dword_273ECD000, v9, v7, "%s health issues changed while association state is in progress <%@> with network %@", buf, 0x20u);
      }
    }

    v13 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__WFNetworkListController__networkHealthIssuesDidChange___block_invoke;
    block[3] = &unk_279EBCDE8;
    objc_copyWeak(&v16, &location);
    v15 = changeCopy;
    dispatch_after(v13, MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [(WFNetworkListController *)self _updateHealthSubtitle];
  }
}

void __57__WFNetworkListController__networkHealthIssuesDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _networkHealthIssuesDidChange:*(a1 + 32)];
}

- (id)_sortedHealthRecommendations:(BOOL)recommendations
{
  v3 = [(WFNetworkListController *)self healthRecommendations:1];
  allObjects = [v3 allObjects];
  healthIssueSortComparator = [MEMORY[0x277D7B9C0] healthIssueSortComparator];
  v6 = [allObjects sortedArrayUsingComparator:healthIssueSortComparator];

  return v6;
}

- (id)_sortedHealthRecommendations
{
  healthRecommendations = [(WFNetworkListController *)self healthRecommendations];
  allObjects = [healthRecommendations allObjects];
  healthIssueSortComparator = [MEMORY[0x277D7B9C0] healthIssueSortComparator];
  v5 = [allObjects sortedArrayUsingComparator:healthIssueSortComparator];

  return v5;
}

- (BOOL)_shouldShowLowDataModeForProfile:(id)profile
{
  v22 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  wifiClient = [(WFNetworkListController *)self wifiClient];
  isCellularOutrankingWiFi = [wifiClient isCellularOutrankingWiFi];

  if (profileCopy && (isCellularOutrankingWiFi & 1) == 0 && ([profileCopy lowDataMode] == 1 || objc_msgSend(profileCopy, "isPersonalHotspot") && !objc_msgSend(profileCopy, "lowDataMode")))
  {
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(4uLL);
    v9 = v8;
    v11 = 1;
    if (WFCurrentLogLevel(v8, v10) >= 4 && v7)
    {
      v7 = v7;
      if (os_log_type_enabled(v7, v9))
      {
        networkName = [profileCopy networkName];
        v18 = 136315394;
        v19 = "[WFNetworkListController _shouldShowLowDataModeForProfile:]";
        v20 = 2112;
        v21 = networkName;
        _os_log_impl(&dword_273ECD000, v7, v9, "%s: Showing low data mode for: %@", &v18, 0x16u);

        v11 = 1;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(4uLL);
    v14 = v13;
    v11 = 0;
    if (WFCurrentLogLevel(v13, v15) >= 4 && v7)
    {
      v7 = v7;
      if (os_log_type_enabled(v7, v14))
      {
        networkName2 = [profileCopy networkName];
        v18 = 136315394;
        v19 = "[WFNetworkListController _shouldShowLowDataModeForProfile:]";
        v20 = 2112;
        v21 = networkName2;
        _os_log_impl(&dword_273ECD000, v7, v14, "%s: Not showing low data mode for: %@", &v18, 0x16u);
      }

      v11 = 0;
LABEL_15:
    }
  }

  return v11;
}

- (void)_updateHealthSubtitle
{
  v57 = *MEMORY[0x277D85DE8];
  healthRecommendations = [(WFNetworkListController *)self healthRecommendations];
  v4 = MEMORY[0x277D7B9C0];
  allObjects = [healthRecommendations allObjects];
  v6 = [v4 highestPriorityIssueFromIssues:allObjects];

  if (v6)
  {
    issueTitle = [v6 issueTitle];
  }

  else
  {
    issueTitle = 0;
  }

  if ([(WFNetworkListController *)self viewControllerSupportsCurrentNetworkSubtitle])
  {
    interface = [(WFNetworkListController *)self interface];
    currentNetwork = [interface currentNetwork];

    interface2 = [(WFNetworkListController *)self interface];
    currentKnownNetworkProfile = [interface2 currentKnownNetworkProfile];

    if ([(WFNetworkListController *)self _shouldShowLowDataModeForProfile:currentKnownNetworkProfile])
    {
      v12 = currentKnownNetworkProfile;
      if (issueTitle)
      {
        v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v14 = [v13 localizedStringForKey:@"kWFLocSaveDataModeSubtitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
        v15 = [issueTitle stringByAppendingFormat:@" — %@", v14];

        issueTitle = v15;
      }

      else
      {
        v16 = MEMORY[0x277CCACA8];
        v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v14 = [v13 localizedStringForKey:@"kWFLocSaveDataModeSubtitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
        issueTitle = [v16 stringWithString:v14];
      }

      currentKnownNetworkProfile = v12;
    }

    v17 = WFLogForCategory(0);
    v18 = OSLogForWFLogLevel(3uLL);
    v19 = v18;
    if (WFCurrentLogLevel(v18, v20) >= 3 && v17)
    {
      v21 = healthRecommendations;
      v22 = currentKnownNetworkProfile;
      v23 = v17;
      if (os_log_type_enabled(v23, v19))
      {
        [(WFNetworkListController *)self viewController];
        v24 = v52 = currentNetwork;
        currentNetwork2 = [v24 currentNetwork];
        *buf = 138412546;
        v54 = issueTitle;
        v55 = 2112;
        v56 = objc_opt_class();
        v51 = v56;
        _os_log_impl(&dword_273ECD000, v23, v19, "subtitle: %@, currentNetwork class: %@", buf, 0x16u);

        currentNetwork = v52;
      }

      currentKnownNetworkProfile = v22;
      healthRecommendations = v21;
    }

    if (issueTitle && (-[WFNetworkListController viewController](self, "viewController"), v26 = objc_claimAutoreleasedReturnValue(), [v26 currentNetwork], v27 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v27, v26, (isKindOfClass & 1) != 0))
    {
      viewController = [(WFNetworkListController *)self viewController];
      currentNetworkSubtitle = [viewController currentNetworkSubtitle];
      v31 = [currentNetworkSubtitle isEqualToString:issueTitle];

      if (v31)
      {
        v32 = WFLogForCategory(0);
        v33 = OSLogForWFLogLevel(3uLL);
        v34 = v33;
        if (WFCurrentLogLevel(v33, v35) >= 3 && v32 && os_log_type_enabled(v32, v34))
        {
          *buf = 0;
          _os_log_impl(&dword_273ECD000, v32, v34, "subtitle is equal to current one, not updating ", buf, 2u);
        }

        goto LABEL_28;
      }

      viewController2 = [(WFNetworkListController *)self viewController];
      [viewController2 setCurrentNetworkSubtitle:issueTitle];

      if ([(WFNetworkListController *)self isAirPortSettings])
      {
        if (v6)
        {
          v45 = [MEMORY[0x277CBEB98] setWithObjects:{v6, 0}];
        }

        else
        {
          v45 = 0;
        }

        v46 = +[WFMetricsManager sharedManager];
        ssid = [currentNetwork ssid];
        v48 = +[WFHealthUIEvent subtitleEventWithIssues:ssid:securityType:](WFHealthUIEvent, "subtitleEventWithIssues:ssid:securityType:", v45, ssid, [currentNetwork securityMode]);
        [v46 processEvent:v48];
      }

      v32 = WFLogForCategory(0);
      v49 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel(v49, v50) < 3 || !v32)
      {
        goto LABEL_28;
      }

      v32 = v32;
      if (!os_log_type_enabled(v32, v49))
      {
        goto LABEL_27;
      }

      ssid2 = [currentNetwork ssid];
      *buf = 138412546;
      v54 = ssid2;
      v55 = 2112;
      v56 = issueTitle;
      v40 = "Setting health subtitle for %@ to %@";
      v41 = v32;
      v42 = v49;
      v43 = 22;
    }

    else
    {
      viewController3 = [(WFNetworkListController *)self viewController];
      [viewController3 setCurrentNetworkSubtitle:0];

      v32 = WFLogForCategory(0);
      v37 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel(v37, v38) < 3 || !v32)
      {
        goto LABEL_28;
      }

      v32 = v32;
      if (!os_log_type_enabled(v32, v37))
      {
LABEL_27:

LABEL_28:
        goto LABEL_29;
      }

      ssid2 = [currentNetwork ssid];
      *buf = 138412290;
      v54 = ssid2;
      v40 = "Clearing health subtitle for %@";
      v41 = v32;
      v42 = v37;
      v43 = 12;
    }

    _os_log_impl(&dword_273ECD000, v41, v42, v40, buf, v43);

    goto LABEL_27;
  }

LABEL_29:
}

- (void)networkListViewController:(id)controller didTapRecord:(id)record
{
  v67 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  recordCopy = record;
  if (recordCopy)
  {
    if (self->_shouldShowDetailTapOnCurrentNetwork || (-[WFNetworkListController associationContext](self, "associationContext"), v8 = objc_claimAutoreleasedReturnValue(), [v8 networkName], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(recordCopy, "ssid"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToString:", v10), v10, v9, v8, !v11))
    {
      interface = [(WFNetworkListController *)self interface];
      currentNetwork = [interface currentNetwork];
      v21 = [recordCopy isEqual:currentNetwork];

      if (v21)
      {
        interface2 = [(WFNetworkListController *)self interface];
        currentNetwork2 = [interface2 currentNetwork];
        carPlayType = [currentNetwork2 carPlayType];

        if (carPlayType == 1)
        {
          v25 = WFLogForCategory(0);
          v26 = OSLogForWFLogLevel(3uLL);
          v27 = v26;
          if (WFCurrentLogLevel(v26, v28) >= 3 && v25)
          {
            v29 = v25;
            if (os_log_type_enabled(v29, v27))
            {
              interface3 = [(WFNetworkListController *)self interface];
              currentNetwork3 = [interface3 currentNetwork];
              v61 = 136315394;
              v62 = "[WFNetworkListController networkListViewController:didTapRecord:]";
              v63 = 2112;
              v64 = currentNetwork3;
              _os_log_impl(&dword_273ECD000, v29, v27, "%s: tapped on carplay only network %@", &v61, 0x16u);
            }
          }
        }

        else
        {
          wifiClient = [(WFNetworkListController *)self wifiClient];
          isCellularOutrankingWiFi = [wifiClient isCellularOutrankingWiFi];

          if (isCellularOutrankingWiFi)
          {
            wifiClient2 = [(WFNetworkListController *)self wifiClient];
            cellularOutrankState = [wifiClient2 cellularOutrankState];

            v38 = WFLogForCategory(0);
            v39 = OSLogForWFLogLevel(3uLL);
            v40 = v39;
            if (WFCurrentLogLevel(v39, v41) >= 3 && v38)
            {
              v42 = v38;
              if (os_log_type_enabled(v42, v40))
              {
                interface4 = [(WFNetworkListController *)self interface];
                currentNetwork4 = [interface4 currentNetwork];
                v61 = 136315650;
                v62 = "[WFNetworkListController networkListViewController:didTapRecord:]";
                v63 = 2112;
                v64 = currentNetwork4;
                v65 = 2048;
                v66 = cellularOutrankState;
                _os_log_impl(&dword_273ECD000, v42, v40, "%s: tapped on current network when cellular is outranking wifi %@ - state: %lu", &v61, 0x20u);
              }
            }

            if (cellularOutrankState == 4)
            {
              v45 = WFLogForCategory(0);
              v46 = OSLogForWFLogLevel(3uLL);
              v47 = v46;
              if (WFCurrentLogLevel(v46, v48) >= 3 && v45)
              {
                v49 = v45;
                if (os_log_type_enabled(v49, v47))
                {
                  interface5 = [(WFNetworkListController *)self interface];
                  currentNetwork5 = [interface5 currentNetwork];
                  v61 = 136315394;
                  v62 = "[WFNetworkListController networkListViewController:didTapRecord:]";
                  v63 = 2112;
                  v64 = currentNetwork5;
                  _os_log_impl(&dword_273ECD000, v49, v47, "%s: tapped on current network when developer is outranking wifi %@", &v61, 0x16u);
                }
              }

              interface6 = [(WFNetworkListController *)self interface];
              currentNetwork6 = [interface6 currentNetwork];
              [(WFNetworkListController *)self _presentDeveloperOutrankAlertForNetwork:currentNetwork6];
            }

            else
            {
              interface6 = [(WFNetworkListController *)self interface];
              currentNetwork7 = [interface6 currentNetwork];
              [(WFNetworkListController *)self _presentCellularOutrankAlertForNetwork:currentNetwork7 privateCellular:cellularOutrankState == 5];
            }

            goto LABEL_22;
          }

          if ([(WFNetworkListController *)self shouldShowDetailTapOnCurrentNetwork])
          {
            v53 = WFLogForCategory(0);
            v54 = OSLogForWFLogLevel(3uLL);
            v55 = v54;
            if (WFCurrentLogLevel(v54, v56) >= 3 && v53)
            {
              v57 = v53;
              if (os_log_type_enabled(v57, v55))
              {
                interface7 = [(WFNetworkListController *)self interface];
                currentNetwork8 = [interface7 currentNetwork];
                v61 = 136315394;
                v62 = "[WFNetworkListController networkListViewController:didTapRecord:]";
                v63 = 2112;
                v64 = currentNetwork8;
                _os_log_impl(&dword_273ECD000, v57, v55, "%s: showing settings for current network: %@", &v61, 0x16u);
              }
            }

            interface6 = [(WFNetworkListController *)self viewController];
            [(WFNetworkListController *)self networkListViewController:interface6 showSettingsForNetwork:recordCopy context:1];
            goto LABEL_22;
          }
        }
      }

      [(WFNetworkListController *)self _associateToScanRecord:recordCopy];
      interface6 = [(WFNetworkListController *)self associationContext];
      [interface6 setOriginator:0];
      goto LABEL_22;
    }

    interface6 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel(v13, v14) && interface6 && os_log_type_enabled(interface6, v13))
    {
      LOWORD(v61) = 0;
      v15 = "Refuse repeat association request when tapping to show detail is not supported.";
      v16 = interface6;
      v17 = v13;
      v18 = 2;
LABEL_21:
      _os_log_impl(&dword_273ECD000, v16, v17, v15, &v61, v18);
    }
  }

  else
  {
    interface6 = WFLogForCategory(0);
    v32 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel(v32, v33) && interface6 && os_log_type_enabled(interface6, v32))
    {
      v61 = 136315138;
      v62 = "[WFNetworkListController networkListViewController:didTapRecord:]";
      v15 = "%s- called with nil list record";
      v16 = interface6;
      v17 = v32;
      v18 = 12;
      goto LABEL_21;
    }
  }

LABEL_22:
}

- (void)networkListViewControllerDidTapOtherNetwork:(id)network
{
  v52 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  [(WFNetworkListController *)self isAssociating];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
  {
    *buf = 0;
    _os_log_impl(&dword_273ECD000, v4, v6, "User tapped join other network", buf, 2u);
  }

  [(WFNetworkListController *)self _pauseScanning];
  viewProvider = [(WFNetworkListController *)self viewProvider];
  v9 = objc_opt_respondsToSelector();

  v10 = objc_alloc_init(MEMORY[0x277CCAD78]);
  uUIDString = [v10 UUIDString];

  wifiClient = [(WFNetworkListController *)self wifiClient];
  hardwareMACAddress = [wifiClient hardwareMACAddress];

  v14 = [[WFOtherNetworkContext alloc] initWithType:0 authTraits:[(WFNetworkListController *)self _defaultAuthTraits] supportRandomAddress:1 useRandomAddress:1 randomMACAddress:0 hardwareMACAddress:hardwareMACAddress];
  if (v9)
  {
    viewProvider2 = [(WFNetworkListController *)self viewProvider];
    v16 = [viewProvider2 otherNetworkViewControllerWithContext:v14];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x277D7B9F0]);
    v18 = WFCurrentDeviceCapability();
    defaultAppearanceProxy = [MEMORY[0x277D7B980] defaultAppearanceProxy];
    v16 = [v17 initWithOtherNetworkProviderContext:v14 deviceCapability:v18 appearanceProxy:defaultAppearanceProxy];

    [v16 setDelegate:v14];
  }

  if (v16)
  {
    [(WFCredentialsContext *)v14 setProvider:v16];
    [(WFNetworkListController *)self setCredentialsContext:v14];
    [(WFNetworkListController *)self setVisibleContext:v14];
    objc_initWeak(&location, self);
    objc_initWeak(&from, v14);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __71__WFNetworkListController_networkListViewControllerDidTapOtherNetwork___block_invoke;
    v41[3] = &unk_279EBD648;
    objc_copyWeak(&v42, &location);
    objc_copyWeak(&v43, &from);
    [(WFOtherNetworkContext *)v14 setPrivateAddressModeChangeHandler:v41];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __71__WFNetworkListController_networkListViewControllerDidTapOtherNetwork___block_invoke_302;
    v38[3] = &unk_279EBD448;
    objc_copyWeak(&v39, &location);
    objc_copyWeak(&v40, &from);
    [(WFCredentialsContext *)v14 setCancellationHandler:v38];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __71__WFNetworkListController_networkListViewControllerDidTapOtherNetwork___block_invoke_303;
    v35[3] = &unk_279EBD670;
    objc_copyWeak(&v36, &location);
    objc_copyWeak(&v37, &from);
    [(WFCredentialsContext *)v14 setCompletionHandler:v35];
    [(WFNetworkListController *)self setOtherNetworkVC:v16];
    viewProvider3 = [(WFNetworkListController *)self viewProvider];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = WFLogForCategory(0);
      v23 = OSLogForWFLogLevel(3uLL);
      v24 = v23;
      if (WFCurrentLogLevel(v23, v25) >= 3 && v22 && os_log_type_enabled(v22, v24))
      {
        *buf = 138412546;
        v47 = v16;
        v48 = 2112;
        v49 = v14;
        _os_log_impl(&dword_273ECD000, v22, v24, "viewProvider will handle presentation of %@ (context %@)", buf, 0x16u);
      }

      viewProvider4 = [(WFNetworkListController *)self viewProvider];
      [viewProvider4 presentNetworkViewController:v16 forContext:v14];
    }

    else
    {
      viewProvider4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v16];
      [viewProvider4 setModalPresentationStyle:2];
      viewController = [(WFNetworkListController *)self viewController];
      [viewController presentViewController:viewProvider4 animated:1 completion:0];
    }

    objc_destroyWeak(&v37);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&v40);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&v43);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v27 = WFLogForCategory(0);
    v28 = OSLogForWFLogLevel(1uLL);
    v29 = v28;
    if (WFCurrentLogLevel(v28, v30) && v27)
    {
      v31 = v27;
      if (os_log_type_enabled(v31, v29))
      {
        viewProvider5 = [(WFNetworkListController *)self viewProvider];
        *buf = 136315650;
        v47 = "[WFNetworkListController networkListViewControllerDidTapOtherNetwork:]";
        v48 = 2112;
        v49 = viewProvider5;
        v50 = 1024;
        v51 = v9 & 1;
        _os_log_impl(&dword_273ECD000, v31, v29, "%s: otherNetworkVc is nil, view provider %@ (supportsOtherVc %d)", buf, 0x1Cu);
      }
    }
  }
}

void __71__WFNetworkListController_networkListViewControllerDidTapOtherNetwork___block_invoke(uint64_t a1, uint64_t a2)
{
  objc_copyWeak(&to, (a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained network];
  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = v6;
  if (v5)
  {
    v8 = [v6 network];
    [v8 ssid];
  }

  else
  {
    v8 = [v6 provider];
    [v8 SSID];
  }
  v9 = ;

  if (a2 == 1)
  {
    v10 = 0;
  }

  else
  {
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(3uLL);
    v13 = v12;
    if (WFCurrentLogLevel(v12, v14) >= 3 && v11 && os_log_type_enabled(v11, v13))
    {
      *v19 = 0;
      _os_log_impl(&dword_273ECD000, v11, v13, "Generating new private mac when join with random address mode", v19, 2u);
    }

    v15 = objc_loadWeakRetained(&to);
    v16 = [v15 wifiClient];
    v10 = [v16 newRandomMACAddressForSSID:v9];
  }

  v17 = objc_loadWeakRetained(&to);
  v18 = [v17 wifiClient];
  [v18 setRandomAddressModeForNetwork:v9 mode:a2 randomMAC:v10];

  objc_destroyWeak(&to);
}

void __71__WFNetworkListController_networkListViewControllerDidTapOtherNetwork___block_invoke_302(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 3 && v2 && os_log_type_enabled(v2, v4))
  {
    v10 = 136315138;
    v11 = "[WFNetworkListController networkListViewControllerDidTapOtherNetwork:]_block_invoke";
    _os_log_impl(&dword_273ECD000, v2, v4, "%s: user cancelled credentials prompt", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [MEMORY[0x277CCA9B8] associationErrorWithReason:6];
  [WeakRetained _associationDidFinish:0 error:v7 network:0];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = objc_loadWeakRetained((a1 + 40));
  [v8 _dismissOtherNetworkViewControllerWithContext:v9];
}

void __71__WFNetworkListController_networkListViewControllerDidTapOtherNetwork___block_invoke_303(uint64_t a1, void *a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
  {
    v13 = 136315650;
    v14 = "[WFNetworkListController networkListViewControllerDidTapOtherNetwork:]_block_invoke";
    v15 = 2112;
    v16 = v5;
    v17 = 1024;
    v18 = a3;
    _os_log_impl(&dword_273ECD000, v7, v9, "%s: credentials prompt complete, provider %@, shouldDismiss %d", &v13, 0x1Cu);
  }

  v11 = objc_loadWeakRetained((a1 + 40));
  v12 = [v11 userSuppliedNetwork];

  if ([WeakRetained _canStartAssociationToUserSuppliedNetwork:v12])
  {
    [WeakRetained _associateToUserSuppliedNetwork:v12];
  }
}

- (void)networkListViewController:(id)controller userDidChangePower:(BOOL)power
{
  powerCopy = power;
  v16 = *MEMORY[0x277D85DE8];
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) >= 3 && v6 && os_log_type_enabled(v6, v8))
  {
    v10 = @"OFF";
    if (powerCopy)
    {
      v10 = @"ON";
    }

    v14 = 138412290;
    v15 = v10;
    _os_log_impl(&dword_273ECD000, v6, v8, "User changed power state to %@", &v14, 0xCu);
  }

  v11 = +[WFMetricsManager sharedManager];
  v12 = [WFUserEvent eventWithType:1 state:powerCopy];
  [v11 processEvent:v12];

  wifiClient = [(WFNetworkListController *)self wifiClient];
  [wifiClient setPowered:powerCopy];

  [(WFNetworkListController *)self _powerStateChanged];
}

- (void)networkListViewController:(id)controller userDidChangePowerToggle:(unint64_t)toggle
{
  v20 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7)
  {
    v11 = v7;
    if (os_log_type_enabled(v11, v9))
    {
      v12 = WFPowerStateToggleToString();
      *buf = 136315394;
      v17 = "[WFNetworkListController networkListViewController:userDidChangePowerToggle:]";
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_273ECD000, v11, v9, "%s: User requested power state change to %@", buf, 0x16u);
    }
  }

  [(WFNetworkListController *)self setPowerState:2];
  [(WFNetworkListController *)self setPowerState:[(WFNetworkListController *)self powerState]];
  objc_initWeak(buf, self);
  wifiClient = [(WFNetworkListController *)self wifiClient];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__WFNetworkListController_networkListViewController_userDidChangePowerToggle___block_invoke;
  v14[3] = &unk_279EBD698;
  objc_copyWeak(&v15, buf);
  [wifiClient setPoweredToggle:toggle == 1 handler:v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __78__WFNetworkListController_networkListViewController_userDidChangePowerToggle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _powerStateChanged];
}

- (void)setPowerState:(unint64_t)state
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_powerState != state)
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) >= 3 && v5)
    {
      v9 = v5;
      if (os_log_type_enabled(v9, v7))
      {
        v10 = WFPowerStateToggleToString();
        v11 = WFPowerStateToggleToString();
        v21 = 136315650;
        v22 = "[WFNetworkListController setPowerState:]";
        v23 = 2112;
        v24 = v10;
        v25 = 2112;
        v26 = v11;
        _os_log_impl(&dword_273ECD000, v9, v7, "%s: power state changed from %@ to %@", &v21, 0x20u);
      }
    }

    self->_powerState = state;
    viewController = [(WFNetworkListController *)self viewController];
    v13 = objc_opt_respondsToSelector();

    viewController2 = [(WFNetworkListController *)self viewController];
    viewController3 = viewController2;
    if (v13)
    {
      [viewController2 powerStateDidChangeToggle:self->_powerState];
    }

    else
    {
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        viewController3 = [(WFNetworkListController *)self viewController];
        [viewController3 powerStateDidChange:self->_powerState == 1];
      }

      else
      {
        viewController3 = WFLogForCategory(0);
        v17 = OSLogForWFLogLevel(1uLL);
        v18 = v17;
        if (WFCurrentLogLevel(v17, v19) && viewController3)
        {
          viewController3 = viewController3;
          if (os_log_type_enabled(viewController3, v18))
          {
            viewController4 = [(WFNetworkListController *)self viewController];
            v21 = 136315394;
            v22 = "[WFNetworkListController setPowerState:]";
            v23 = 2112;
            v24 = viewController4;
            _os_log_impl(&dword_273ECD000, viewController3, v18, "%s: viewController (%@) doesn't respond to power state change methods", &v21, 0x16u);
          }
        }
      }
    }
  }
}

- (BOOL)networkListViewControllerCurrentPowerState:(id)state
{
  wifiClient = [(WFNetworkListController *)self wifiClient];
  powered = [wifiClient powered];

  return powered;
}

- (void)networkListViewControllerDidAppear:(id)appear
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4)
  {
    v8 = v4;
    if (os_log_type_enabled(v8, v6))
    {
      interface = [(WFNetworkListController *)self interface];
      currentNetwork = [interface currentNetwork];
      v23 = 138412546;
      v24 = currentNetwork;
      v25 = 1024;
      isAssociating = [(WFNetworkListController *)self isAssociating];
      _os_log_impl(&dword_273ECD000, v8, v6, "Network list view controller did appear, current network='%@', isAssociating=%d", &v23, 0x12u);
    }
  }

  [(WFNetworkListController *)self _refreshKnownHiddenNetworkNamesCache];
  [(WFNetworkListController *)self _updatePowerState];
  interface2 = [(WFNetworkListController *)self interface];
  currentNetwork2 = [interface2 currentNetwork];
  if (!currentNetwork2)
  {

    goto LABEL_15;
  }

  v13 = currentNetwork2;
  isAssociating2 = [(WFNetworkListController *)self isAssociating];

  if (isAssociating2)
  {
LABEL_15:
    [(WFNetworkListController *)self _updateViewControllerScanResults];
    goto LABEL_16;
  }

  [(WFNetworkListController *)self _updateViewControllerConnectedNetwork];
  if ([(WFNetworkListController *)self isAirPortSettings])
  {
    v15 = WFLogForCategory(0);
    v16 = OSLogForWFLogLevel(3uLL);
    v17 = v16;
    if (WFCurrentLogLevel(v16, v18) >= 3 && v15 && os_log_type_enabled(v15, v17))
    {
      v23 = 67109120;
      LODWORD(v24) = 5;
      _os_log_impl(&dword_273ECD000, v15, v17, "Initial no Internet test will start after %d seconds for wifi list appearance.", &v23, 8u);
    }

    healthManager = [(WFNetworkListController *)self healthManager];
    [healthManager runNoInternetDiagnosticsAfter:5];
  }

LABEL_16:
  v20 = +[WFMetricsManager sharedManager];
  v21 = [WFUserEvent eventWithType:0];
  [v20 processEvent:v21];

  wifiClient = [(WFNetworkListController *)self wifiClient];
  LODWORD(v21) = [wifiClient isNetworkRestrictionActive];

  [(WFNetworkListController *)self setCanScanForPersonalHotspots:v21 ^ 1];
}

- (void)networkListViewControllerDidDisappear:(id)disappear
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4)
  {
    v8 = v4;
    if (os_log_type_enabled(v8, v6))
    {
      isAssociating = [(WFNetworkListController *)self isAssociating];
      v10 = @"NO";
      if (isAssociating)
      {
        v10 = @"YES";
      }

      v17 = 138412290;
      v18 = v10;
      _os_log_impl(&dword_273ECD000, v8, v6, "Network list view controller did disappear - associating %@", &v17, 0xCu);
    }
  }

  [(WFNetworkListController *)self _pauseScanning];
  [(WFNetworkListController *)self _stopHotspotScan];
  viewController = [(WFNetworkListController *)self viewController];
  navigationController = [viewController navigationController];
  viewControllers = [navigationController viewControllers];
  if ([viewControllers count] == 1)
  {
  }

  else
  {
    viewController2 = [(WFNetworkListController *)self viewController];
    navigationController2 = [viewController2 navigationController];

    if (navigationController2)
    {
      return;
    }
  }

  scanMetricsManager = [(WFNetworkListController *)self scanMetricsManager];
  [scanMetricsManager submit];
}

- (void)networkListViewControllerDidFinish:(id)finish
{
  v18 = *MEMORY[0x277D85DE8];
  finishCopy = finish;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      isAssociating = [(WFNetworkListController *)self isAssociating];
      v11 = @"NO";
      v13 = "[WFNetworkListController networkListViewControllerDidFinish:]";
      v12 = 136315650;
      v14 = 2112;
      v15 = finishCopy;
      if (isAssociating)
      {
        v11 = @"YES";
      }

      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_273ECD000, v9, v7, "%s: %@ - associating %@", &v12, 0x20u);
    }
  }

  [(WFNetworkListController *)self _cleanUpStatesForDismissal];
}

- (id)networkListViewController:(id)controller showSettingsForNetwork:(id)network context:(int64_t)context scrollToCellType:(unint64_t)type controller:(id)a7
{
  v285 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  networkCopy = network;
  v234 = a7;
  objc_opt_class();
  v237 = networkCopy;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      typeCopy = type;
      selfCopy = self;
      interface = [(WFNetworkListController *)self interface];
      currentNetwork = [interface currentNetwork];
      v19 = [currentNetwork isEqual:v237];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        matchingKnownNetworkProfile = v237;
        v232 = [[WFNetworkScanRecord alloc] initWithCoreWiFiProfile:matchingKnownNetworkProfile];
        knownNetworksManager = [(WFNetworkListController *)selfCopy knownNetworksManager];
        ssid = [(WFNetworkScanRecord *)v232 ssid];
        v22 = [knownNetworksManager privateAddressConfigForNetworkName:ssid];

        [(WFNetworkScanRecord *)v232 populatePrivateAddressConfig:v22];
        interface2 = [(WFNetworkListController *)selfCopy interface];
        currentNetwork2 = [interface2 currentNetwork];
        v25 = [currentNetwork2 isEquivalentRecord:v232];

        if (v234)
        {
          [(WFNetworkScanRecord *)v232 setMatchingKnownNetworkProfile:matchingKnownNetworkProfile];

          goto LABEL_43;
        }

        if (v25)
        {
          goto LABEL_43;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v41 = WFLogForCategory(0);
          v42 = OSLogForWFLogLevel(1uLL);
          v43 = v42;
          if (WFCurrentLogLevel(v42, v44) && v41)
          {
            v45 = v41;
            if (os_log_type_enabled(v45, v43))
            {
              *buf = 136315394;
              *v281 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
              *&v281[8] = 2112;
              *&v281[10] = 0;
              _os_log_impl(&dword_273ECD000, v45, v43, "%s: unknown class type for network='%@'", buf, 0x16u);
            }
          }

          v232 = 0;
          if ((v19 & 1) == 0)
          {
            v48 = 0;
            goto LABEL_47;
          }

          matchingKnownNetworkProfile = 0;
          goto LABEL_43;
        }

        v232 = v237;
        gasController = [(WFNetworkListController *)selfCopy gasController];
        [gasController resolveProfileForNetwork:v232 handler:&__block_literal_global_323 force:1];

        wifiClient = [(WFNetworkListController *)selfCopy wifiClient];
        v28 = wifiClient;
        if (v19)
        {
          interface3 = [wifiClient interface];
          associatedOnIRInterface = [interface3 associatedOnIRInterface];

          if (associatedOnIRInterface)
          {
            v31 = WFLogForCategory(0);
            v32 = OSLogForWFLogLevel(3uLL);
            v33 = v32;
            if (WFCurrentLogLevel(v32, v34) >= 3 && v31)
            {
              v35 = v31;
              if (os_log_type_enabled(v35, v33))
              {
                title = [(WFNetworkScanRecord *)v232 title];
                *buf = 136315394;
                *v281 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
                *&v281[8] = 2112;
                *&v281[10] = title;
                _os_log_impl(&dword_273ECD000, v35, v33, "%s: Getting current network's(%@) profile from ir interface", buf, 0x16u);
              }
            }

            wifiClient2 = [(WFNetworkListController *)selfCopy wifiClient];
            interface4 = [wifiClient2 interface];
            irInterface = [interface4 irInterface];
            scanResult = [(WFNetworkScanRecord *)v232 scanResult];
            matchingKnownNetworkProfile = [irInterface knownNetworkProfileMatchingScanResult:scanResult];
          }

          else
          {
            wifiClient3 = [(WFNetworkListController *)selfCopy wifiClient];
            cInterface = [wifiClient3 cInterface];
            currentScanResult = [cInterface currentScanResult];
            matchingKnownNetworkProfile = [currentScanResult matchingKnownNetworkProfile];
          }

          if (matchingKnownNetworkProfile)
          {
            goto LABEL_43;
          }
        }

        else
        {
          cInterface2 = [wifiClient cInterface];
          scanResult2 = [(WFNetworkScanRecord *)v232 scanResult];
          matchingKnownNetworkProfile = [cInterface2 knownNetworkProfileMatchingScanResult:scanResult2];

          if (matchingKnownNetworkProfile)
          {
            v48 = 0;
            goto LABEL_45;
          }
        }

        v52 = WFLogForCategory(0);
        v53 = OSLogForWFLogLevel(3uLL);
        v54 = v53;
        if (WFCurrentLogLevel(v53, v55) >= 3 && v52)
        {
          v56 = v52;
          if (os_log_type_enabled(v56, v54))
          {
            *buf = 0;
            _os_log_impl(&dword_273ECD000, v56, v54, "cwProfile not found in known networks list", buf, 2u);
          }
        }

        matchingKnownNetworkProfile = [(WFNetworkScanRecord *)v232 matchingKnownNetworkProfile];
        if (v19)
        {
LABEL_43:
          interface5 = [(WFNetworkListController *)selfCopy interface];
          currentNetwork3 = [interface5 currentNetwork];
          v48 = [currentNetwork3 carPlayType] != 1;

          goto LABEL_44;
        }
      }

      v48 = 0;
LABEL_44:
      if (matchingKnownNetworkProfile)
      {
LABEL_45:
        v225 = [[WFNetworkProfile alloc] initWithCoreWiFiProfile:matchingKnownNetworkProfile];
        _hardwareMACAddress = [(WFNetworkListController *)selfCopy _hardwareMACAddress];
        v59 = 0;
        if (v48)
        {
LABEL_46:
          interface6 = [(WFNetworkListController *)selfCopy interface];
          currentNetwork4 = [interface6 currentNetwork];

          v229 = 1;
          v62 = currentNetwork4;
          goto LABEL_54;
        }

LABEL_53:
        v62 = v232;
        v229 = 0;
        v232 = v62;
LABEL_54:
        v238 = v62;
        matchingKnownNetworkProfile2 = [(WFNetworkScanRecord *)v62 matchingKnownNetworkProfile];
        nANServiceID = [matchingKnownNetworkProfile2 NANServiceID];

        if (_os_feature_enabled_impl())
        {
          matchingKnownNetworkProfile3 = [(WFNetworkScanRecord *)v238 matchingKnownNetworkProfile];
          if (matchingKnownNetworkProfile3)
          {
            matchingKnownNetworkProfile4 = [(WFNetworkScanRecord *)v238 matchingKnownNetworkProfile];
            networkProfile = matchingKnownNetworkProfile4;
          }

          else
          {
            matchingKnownNetworkProfile4 = [(WFNetworkScanRecord *)v238 scanResult];
            networkProfile = [matchingKnownNetworkProfile4 networkProfile];
          }

          wifiClient4 = [(WFNetworkListController *)selfCopy wifiClient];
          cInterface3 = [wifiClient4 cInterface];
          privateAddressMode = [cInterface3 privateMACAddressModeForNetworkProfile:networkProfile];

          wifiClient5 = [(WFNetworkListController *)selfCopy wifiClient];
          cInterface4 = [wifiClient5 cInterface];
          randomMACAddress7 = [cInterface4 privateMACAddressForNetworkProfile:networkProfile];

          if ((privateAddressMode - 1) >= 3)
          {
            privateAddressMode = 0;
          }

          goto LABEL_104;
        }

        isRandomMACAddressEnabled = [(WFNetworkScanRecord *)v238 isRandomMACAddressEnabled];
        v74 = WFLogForCategory(8uLL);
        v75 = OSLogForWFLogLevel(1uLL);
        v76 = v75;
        if (WFCurrentLogLevel(v75, v77) && v74)
        {
          v78 = v74;
          if (os_log_type_enabled(v78, v76))
          {
            ssid2 = [(WFNetworkScanRecord *)v238 ssid];
            *buf = 67109378;
            *v281 = isRandomMACAddressEnabled;
            *&v281[4] = 2112;
            *&v281[6] = ssid2;
            _os_log_impl(&dword_273ECD000, v78, v76, "private address value=%d for '%@'", buf, 0x12u);
          }
        }

        randomMACManager = [(WFNetworkListController *)selfCopy randomMACManager];
        ssid3 = [v237 ssid];
        v82 = [randomMACManager isSSIDinCache:ssid3];

        if (v82)
        {
          randomMACManager2 = [(WFNetworkListController *)selfCopy randomMACManager];
          ssid4 = [v237 ssid];
          v85 = [randomMACManager2 shouldEnableRandomMACForSSID:ssid4];

          v86 = WFLogForCategory(8uLL);
          v87 = OSLogForWFLogLevel(1uLL);
          v88 = v87;
          if (WFCurrentLogLevel(v87, v89) && v86)
          {
            v90 = v86;
            if (os_log_type_enabled(v90, v88))
            {
              ssid5 = [(WFNetworkScanRecord *)v238 ssid];
              *buf = 67109634;
              *v281 = v85;
              *&v281[4] = 1024;
              *&v281[6] = isRandomMACAddressEnabled;
              *&v281[10] = 2112;
              *&v281[12] = ssid5;
              _os_log_impl(&dword_273ECD000, v90, v88, "overriding private address from scan cache (was=%d) value=%d for '%@'", buf, 0x18u);
            }
          }
        }

        else
        {
          v85 = isRandomMACAddressEnabled;
        }

        if (v229)
        {
          interface7 = [(WFNetworkListController *)selfCopy interface];
          currentNetwork5 = [interface7 currentNetwork];
          isRandomMACAddressEnabled2 = [currentNetwork5 isRandomMACAddressEnabled];

          v95 = WFLogForCategory(8uLL);
          v96 = OSLogForWFLogLevel(1uLL);
          v97 = v96;
          if (WFCurrentLogLevel(v96, v98) && v95)
          {
            v99 = v95;
            if (os_log_type_enabled(v99, v97))
            {
              ssid6 = [(WFNetworkScanRecord *)v238 ssid];
              *buf = 67109634;
              *v281 = isRandomMACAddressEnabled2;
              *&v281[4] = 1024;
              *&v281[6] = v85;
              *&v281[10] = 2112;
              *&v281[12] = ssid6;
              _os_log_impl(&dword_273ECD000, v99, v97, "overriding private address for current network (was=%d) value=%d for '%@'", buf, 0x18u);
            }
          }
        }

        randomMACAddress = [(WFNetworkScanRecord *)v238 randomMACAddress];
        v102 = [_hardwareMACAddress isEqualToString:randomMACAddress];

        if (![(WFNetworkScanRecord *)v238 isSupervised])
        {
          randomMACAddress2 = [(WFNetworkScanRecord *)v238 randomMACAddress];
          if (randomMACAddress2)
          {
            randomMACAddress3 = [(WFNetworkScanRecord *)v238 randomMACAddress];
            v105 = [_hardwareMACAddress isEqualToString:randomMACAddress3];

            if ((v105 & (nANServiceID == 0)) != 0)
            {
              goto LABEL_80;
            }
          }

          else
          {

            if (!nANServiceID)
            {
LABEL_80:
              v106 = WFLogForCategory(8uLL);
              v107 = OSLogForWFLogLevel(1uLL);
              v108 = v107;
              if (WFCurrentLogLevel(v107, v109) && v106)
              {
                v110 = v106;
                if (os_log_type_enabled(v110, v108))
                {
                  ssid7 = [(WFNetworkScanRecord *)v238 ssid];
                  randomMACAddress4 = [(WFNetworkScanRecord *)v238 randomMACAddress];
                  *buf = 138412802;
                  *v281 = ssid7;
                  *&v281[8] = 2112;
                  *&v281[10] = randomMACAddress4;
                  *&v281[18] = 1024;
                  *v282 = v102;
                  _os_log_impl(&dword_273ECD000, v110, v108, "generating private address for '%@' (currentAddress=%@, usingHWAddress=%d)", buf, 0x1Cu);
                }
              }

              randomMACManager3 = [(WFNetworkListController *)selfCopy randomMACManager];
              v114 = [randomMACManager3 newScanRecordWithRandomMACFromScanRecord:v238];

              if (selfCopy->_isRandomMACManageFeatureEnabled)
              {
                goto LABEL_101;
              }

              wifiClient6 = [(WFNetworkListController *)selfCopy wifiClient];
              ssid8 = [(WFNetworkScanRecord *)v114 ssid];
              isRandomMACAddressEnabled3 = [(WFNetworkScanRecord *)v114 isRandomMACAddressEnabled];
              randomMACAddress5 = [(WFNetworkScanRecord *)v114 randomMACAddress];
              [wifiClient6 setEnableRandomMACForNetwork:ssid8 enable:isRandomMACAddressEnabled3 randomMAC:randomMACAddress5];

              goto LABEL_98;
            }
          }
        }

        wifiClient6 = WFLogForCategory(8uLL);
        v124 = OSLogForWFLogLevel(1uLL);
        v125 = v124;
        if (!WFCurrentLogLevel(v124, v126) || !wifiClient6)
        {
          v114 = v238;
          goto LABEL_100;
        }

        ssid8 = wifiClient6;
        if (os_log_type_enabled(ssid8, v125))
        {
          isSupervised = [(WFNetworkScanRecord *)v238 isSupervised];
          randomMACAddress6 = [(WFNetworkScanRecord *)v238 randomMACAddress];
          *buf = 136316162;
          *v281 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
          *&v281[8] = 1024;
          *&v281[10] = nANServiceID == 0;
          *&v281[14] = 1024;
          *&v281[16] = isSupervised;
          *v282 = 2112;
          *&v282[2] = randomMACAddress6;
          v283 = 2112;
          v284 = _hardwareMACAddress;
          _os_log_impl(&dword_273ECD000, ssid8, v125, "%s: privateAddressSupported: %d, networkissupervised: %d, network random address from scan: %@, hardwareMac: %@", buf, 0x2Cu);
        }

        wifiClient6 = ssid8;
        v114 = v238;
LABEL_98:

LABEL_100:
LABEL_101:
        randomMACAddress7 = [(WFNetworkScanRecord *)v114 randomMACAddress];
        privateAddressMode = [(WFNetworkScanRecord *)v232 privateAddressMode];
        if (!privateAddressMode)
        {
          privateAddressMode = [(WFNetworkScanRecord *)v114 privateAddressMode];
        }

        v238 = v114;
LABEL_104:
        v227 = -[WFDetailContextPrivateAddressConfig initWithRandomMACAddress:hardwareMACAddress:privateAddressMode:connectedWithHardwareAddress:privateAddressSupported:]([WFDetailContextPrivateAddressConfig alloc], "initWithRandomMACAddress:hardwareMACAddress:privateAddressMode:connectedWithHardwareAddress:privateAddressSupported:", randomMACAddress7, _hardwareMACAddress, privateAddressMode, [_hardwareMACAddress isEqualToString:randomMACAddress7], nANServiceID == 0);
        interface8 = [(WFNetworkListController *)selfCopy interface];
        cInterface5 = [interface8 cInterface];
        deviceSupports6E = [cInterface5 deviceSupports6E];

        if (v59)
        {
          v132 = 0;
        }

        else
        {
          v132 = [matchingKnownNetworkProfile wifiModeConfigurable] & deviceSupports6E;
        }

        v226 = -[WFDetailContextWiFiModeConfig initWithConfigurable:wifiMode:]([WFDetailContextWiFiModeConfig alloc], "initWithConfigurable:wifiMode:", v132, [matchingKnownNetworkProfile disable6EMode]);
        v133 = [WFDetailsContext alloc];
        interface9 = [(WFNetworkListController *)selfCopy interface];
        ipMonitor = [interface9 ipMonitor];
        interface10 = [(WFNetworkListController *)selfCopy interface];
        v137 = [(WFDetailsContext *)v133 initWithNetwork:v238 profile:matchingKnownNetworkProfile ipMonitor:ipMonitor interface:interface10 privateMACConfig:v227 wifiModeConfig:v226];

        [(WFDetailsContext *)v137 setEntryContext:context];
        [(WFDetailsContext *)v137 setJoinable:context != 2];
        wifiClient7 = [(WFNetworkListController *)selfCopy wifiClient];
        -[WFDetailsContext setDiagnosable:](v137, "setDiagnosable:", [wifiClient7 isDiagnosticsEnabled]);

        if (v229)
        {
          if (v234)
          {
            [(WFNetworkListController *)selfCopy _sortedHealthRecommendations:1];
          }

          else
          {
            [(WFNetworkListController *)selfCopy _sortedHealthRecommendations];
          }
          v139 = ;
          displayableHealthRecommendations = [v139 displayableHealthRecommendations];
          [(WFDetailsContext *)v137 setRecommendations:displayableHealthRecommendations];

          v141 = +[WFMetricsManager sharedManager];
          healthRecommendations = [(WFNetworkListController *)selfCopy healthRecommendations];
          ssid9 = [(WFNetworkScanRecord *)v238 ssid];
          v144 = [WFHealthUIEvent detailEventWithIssues:healthRecommendations ssid:ssid9 securityType:[(WFNetworkScanRecord *)v238 securityMode]];
          [v141 processEvent:v144];

          if (objc_opt_respondsToSelector())
          {
            contentCachesContext = [(WFNetworkListController *)selfCopy contentCachesContext];
            [(WFDetailsContext *)v137 setContentCachesContext:contentCachesContext];
          }
        }

        privateAddressDisabledBySystemIssue = [MEMORY[0x277D7B9F8] privateAddressDisabledBySystemIssue];
        issueRecommendation = [privateAddressDisabledBySystemIssue issueRecommendation];
        [(WFDetailsContext *)v137 setStaticPrivateMACFooterText:issueRecommendation];

        [(WFDetailsContext *)v137 setCurrent:v229];
        accessoryIdentifier = [matchingKnownNetworkProfile accessoryIdentifier];
        if (_os_feature_enabled_impl())
        {
          isAirPortSettings = [(WFNetworkListController *)selfCopy isAirPortSettings];
          if (accessoryIdentifier && isAirPortSettings)
          {
            v150 = WFLogForCategory(0);
            v151 = OSLogForWFLogLevel(3uLL);
            v152 = v151;
            if (WFCurrentLogLevel(v151, v153) >= 3 && v150)
            {
              v154 = v150;
              if (os_log_type_enabled(v154, v152))
              {
                *buf = 136315394;
                *v281 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
                *&v281[8] = 2114;
                *&v281[10] = accessoryIdentifier;
                _os_log_impl(&dword_273ECD000, v154, v152, "%s: looking up device for accessory identifier = '%{public}@'", buf, 0x16u);
              }
            }

            v223 = objc_alloc_init(MEMORY[0x277D04780]);
            v155 = [MEMORY[0x277D04780] getDevicesWithFlags:8 session:v223 error:0];
            v156 = WFLogForCategory(0);
            v157 = OSLogForWFLogLevel(4uLL);
            v158 = v157;
            if (WFCurrentLogLevel(v157, v159) >= 4 && v156)
            {
              v160 = v156;
              if (os_log_type_enabled(v160, v158))
              {
                *buf = 136315394;
                *v281 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
                *&v281[8] = 2112;
                *&v281[10] = v155;
                _os_log_impl(&dword_273ECD000, v160, v158, "%s: devices found = '%@'", buf, 0x16u);
              }
            }

            v277 = 0u;
            v278 = 0u;
            v275 = 0u;
            v276 = 0u;
            v161 = v155;
            v162 = [v161 countByEnumeratingWithState:&v275 objects:v279 count:16];
            if (v162)
            {
              v163 = *v276;
              while (2)
              {
                for (i = 0; i != v162; ++i)
                {
                  if (*v276 != v163)
                  {
                    objc_enumerationMutation(v161);
                  }

                  v165 = *(*(&v275 + 1) + 8 * i);
                  v166 = WFLogForCategory(0);
                  v167 = OSLogForWFLogLevel(4uLL);
                  v168 = v167;
                  if (WFCurrentLogLevel(v167, v169) >= 4 && v166)
                  {
                    v170 = v166;
                    if (os_log_type_enabled(v170, v168))
                    {
                      sSID = [v165 SSID];
                      *buf = 136315650;
                      *v281 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
                      *&v281[8] = 2112;
                      *&v281[10] = v165;
                      *&v281[18] = 2112;
                      *v282 = sSID;
                      _os_log_impl(&dword_273ECD000, v170, v168, "%s: device='%@' SSID='%@'", buf, 0x20u);
                    }
                  }

                  identifier = [v165 identifier];
                  v173 = [identifier isEqualToString:accessoryIdentifier];

                  if (v173)
                  {
                    v174 = WFLogForCategory(0);
                    v175 = OSLogForWFLogLevel(4uLL);
                    v176 = v175;
                    if (WFCurrentLogLevel(v175, v177) >= 4 && v174)
                    {
                      v178 = v174;
                      if (os_log_type_enabled(v178, v176))
                      {
                        *buf = 136315394;
                        *v281 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
                        *&v281[8] = 2112;
                        *&v281[10] = v165;
                        _os_log_impl(&dword_273ECD000, v178, v176, "%s: device found = '%@', setting device to detail context", buf, 0x16u);
                      }
                    }

                    if (objc_opt_respondsToSelector())
                    {
                      [(WFDetailsContext *)v137 setDaDevice:v165];
                    }

                    goto LABEL_149;
                  }
                }

                v162 = [v161 countByEnumeratingWithState:&v275 objects:v279 count:16];
                if (v162)
                {
                  continue;
                }

                break;
              }
            }

LABEL_149:
          }
        }

        viewController = [(WFNetworkListController *)selfCopy viewController];
        objc_opt_class();
        [(WFDetailsContext *)v137 setSupportsAirportManagement:(objc_opt_isKindOfClass() & 1) == 0];

        [(WFDetailsContext *)v137 setPrivacyProxyTierStatus:[(WFNetworkListController *)selfCopy privacyProxyFeatureTier]];
        wifiClient8 = [(WFNetworkListController *)selfCopy wifiClient];
        v181 = [wifiClient8 cellularOutrankState] != 0;
        wifiClient9 = [(WFNetworkListController *)selfCopy wifiClient];
        -[WFDetailsContext setWiFiOutranked:privateCellular:](v137, "setWiFiOutranked:privateCellular:", v181, [wifiClient9 cellularOutrankState] == 5);

        wifiClient10 = [(WFNetworkListController *)selfCopy wifiClient];
        -[WFDetailsContext setWiFiOutrankedDev:](v137, "setWiFiOutrankedDev:", [wifiClient10 cellularOutrankState] == 4);

        [(WFDetailsContext *)v137 setCredentialsVisible:context == 2];
        if ([(WFDetailsContext *)v137 shouldHideCredentials])
        {
          ssid11 = WFLogForCategory(0);
          v185 = OSLogForWFLogLevel(1uLL);
          v186 = v185;
          if (!WFCurrentLogLevel(v185, v187) || !ssid11)
          {
LABEL_158:

            [(WFDetailsContext *)v137 setScrollToCellType:typeCopy];
            v191 = WFLogForCategory(0);
            v192 = OSLogForWFLogLevel(3uLL);
            v193 = v192;
            if (WFCurrentLogLevel(v192, v194) >= 3 && v191)
            {
              v195 = v191;
              if (os_log_type_enabled(v195, v193))
              {
                network = [(WFDetailsContext *)v137 network];
                signalBars = [network signalBars];
                *buf = 136315650;
                *v281 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
                *&v281[8] = 2112;
                *&v281[10] = v137;
                *&v281[18] = 2048;
                *v282 = signalBars;
                _os_log_impl(&dword_273ECD000, v195, v193, "%s: details context='%@' signalBars=%lu", buf, 0x20u);
              }
            }

            viewProvider = [(WFNetworkListController *)selfCopy viewProvider];
            v199 = [viewProvider networkDetailsViewControllerWithContext:v137];

            viewProvider2 = [(WFNetworkListController *)selfCopy viewProvider];
            v201 = objc_opt_respondsToSelector();

            if (v201)
            {
              v202 = WFLogForCategory(0);
              v203 = OSLogForWFLogLevel(3uLL);
              v204 = v203;
              if (WFCurrentLogLevel(v203, v205) >= 3 && v202)
              {
                v206 = v202;
                if (os_log_type_enabled(v206, v204))
                {
                  *buf = 138412546;
                  *v281 = v199;
                  *&v281[8] = 2112;
                  *&v281[10] = v137;
                  _os_log_impl(&dword_273ECD000, v206, v204, "viewProvider will handle presentation of %@ (context %@)", buf, 0x16u);
                }
              }

              viewProvider3 = [(WFNetworkListController *)selfCopy viewProvider];
              [viewProvider3 presentNetworkViewController:v199 forContext:v137];
            }

            else
            {
              viewController2 = [(WFNetworkListController *)selfCopy viewController];
              navigationController = [viewController2 navigationController];
              v210 = navigationController == 0;

              if (v210)
              {
LABEL_173:
                [(WFDetailsContext *)v137 setProvider:v199];
                v211 = +[WFMetricsManager sharedManager];
                v212 = [WFUserEvent eventWithType:3 state:v229];
                [v211 processEvent:v212];

                objc_initWeak(buf, v137);
                if (v234)
                {
                  [(WFNetworkListController *)selfCopy setRetainedNetworkListController:?];
                }

                retainedNetworkListController = [(WFNetworkListController *)selfCopy retainedNetworkListController];
                if (retainedNetworkListController)
                {
                  retainedNetworkListController2 = [(WFNetworkListController *)selfCopy retainedNetworkListController];
                  objc_initWeak(&location, retainedNetworkListController2);
                }

                else
                {
                  objc_initWeak(&location, selfCopy);
                }

                v270[0] = MEMORY[0x277D85DD0];
                v270[1] = 3221225472;
                v270[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_335;
                v270[3] = &unk_279EBD6E8;
                objc_copyWeak(&v272, &location);
                objc_copyWeak(v273, buf);
                v215 = matchingKnownNetworkProfile;
                v271 = v215;
                v273[1] = context;
                [(WFDetailsContext *)v137 setActionHandler:v270];
                v266[0] = MEMORY[0x277D85DD0];
                v266[1] = 3221225472;
                v266[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_388;
                v266[3] = &unk_279EBD710;
                objc_copyWeak(&v268, buf);
                objc_copyWeak(&v269, &location);
                v12 = v232;
                v267 = v12;
                [(WFDetailsContext *)v137 setPrivateMACHandler:v266];
                v262[0] = MEMORY[0x277D85DD0];
                v262[1] = 3221225472;
                v262[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_389;
                v262[3] = &unk_279EBD738;
                objc_copyWeak(&v264, buf);
                v216 = v215;
                v263 = v216;
                objc_copyWeak(&v265, &location);
                [(WFDetailsContext *)v137 setAutoJoinHandler:v262];
                v258[0] = MEMORY[0x277D85DD0];
                v258[1] = 3221225472;
                v258[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_390;
                v258[3] = &unk_279EBD738;
                objc_copyWeak(&v260, buf);
                v217 = v216;
                v259 = v217;
                objc_copyWeak(&v261, &location);
                [(WFDetailsContext *)v137 setAutoLoginHandler:v258];
                v254[0] = MEMORY[0x277D85DD0];
                v254[1] = 3221225472;
                v254[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_391;
                v254[3] = &unk_279EBD738;
                objc_copyWeak(&v256, buf);
                v218 = v217;
                v255 = v218;
                objc_copyWeak(&v257, &location);
                [(WFDetailsContext *)v137 setLowDataModeHandler:v254];
                v250[0] = MEMORY[0x277D85DD0];
                v250[1] = 3221225472;
                v250[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_392;
                v250[3] = &unk_279EBD738;
                objc_copyWeak(&v252, buf);
                v219 = v218;
                v251 = v219;
                objc_copyWeak(&v253, &location);
                [(WFDetailsContext *)v137 setPrivacyProxyHandler:v250];
                v246[0] = MEMORY[0x277D85DD0];
                v246[1] = 3221225472;
                v246[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_396;
                v246[3] = &unk_279EBD788;
                objc_copyWeak(&v248, buf);
                v220 = v219;
                v247 = v220;
                objc_copyWeak(&v249, &location);
                [(WFDetailsContext *)v137 setNetworkQualityHandler:v246];
                objc_initWeak(&from, v137);
                v240[0] = MEMORY[0x277D85DD0];
                v240[1] = 3221225472;
                v240[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_398;
                v240[3] = &unk_279EBD7B0;
                v221 = v220;
                v241 = v221;
                objc_copyWeak(&v243, &from);
                objc_copyWeak(&v244, &location);
                v242 = v237;
                [(WFDetailsContext *)v137 setWiFiModeChangedHandler:v240];
                [(WFNetworkListController *)selfCopy setDetailsContext:v137];
                [(WFNetworkListController *)selfCopy setVisibleContext:v137];
                v16 = v199;

                objc_destroyWeak(&v244);
                objc_destroyWeak(&v243);

                objc_destroyWeak(&from);
                objc_destroyWeak(&v249);

                objc_destroyWeak(&v248);
                objc_destroyWeak(&v253);

                objc_destroyWeak(&v252);
                objc_destroyWeak(&v257);

                objc_destroyWeak(&v256);
                objc_destroyWeak(&v261);

                objc_destroyWeak(&v260);
                objc_destroyWeak(&v265);

                objc_destroyWeak(&v264);
                objc_destroyWeak(&v269);
                objc_destroyWeak(&v268);

                objc_destroyWeak(v273);
                objc_destroyWeak(&v272);
                objc_destroyWeak(&location);
                objc_destroyWeak(buf);

                goto LABEL_179;
              }

              viewProvider3 = [(WFNetworkListController *)selfCopy viewController];
              [viewProvider3 wf_pushViewController:v199 animated:1];
            }

            goto LABEL_173;
          }

          v188 = ssid11;
          if (os_log_type_enabled(v188, v186))
          {
            ssid10 = [(WFNetworkScanRecord *)v238 ssid];
            *buf = 136315394;
            *v281 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
            *&v281[8] = 2112;
            *&v281[10] = ssid10;
            _os_log_impl(&dword_273ECD000, v188, v186, "%s: Not setting credentials for network: %@ to keep it hidden", buf, 0x16u);
          }

          ssid11 = v188;
        }

        else
        {
          username = [(WFNetworkProfile *)v225 username];
          [(WFDetailsContext *)v137 setUsername:username];

          ssid11 = [(WFNetworkScanRecord *)v238 ssid];
          v188 = [(WFNetworkListController *)selfCopy passwordToDisplayForSSID:ssid11];
          [(WFDetailsContext *)v137 setPassword:v188];
        }

        goto LABEL_158;
      }

LABEL_47:
      v63 = WFLogForCategory(0);
      v64 = OSLogForWFLogLevel(3uLL);
      v65 = v64;
      if (WFCurrentLogLevel(v64, v66) >= 3 && v63)
      {
        v67 = v63;
        if (os_log_type_enabled(v67, v65))
        {
          *buf = 136315394;
          *v281 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
          *&v281[8] = 2112;
          *&v281[10] = v232;
          _os_log_impl(&dword_273ECD000, v67, v65, "%s: nil CWFProfile for '%@', network is not a known network", buf, 0x16u);
        }
      }

      _hardwareMACAddress = [(WFNetworkListController *)selfCopy _hardwareMACAddress];
      v225 = 0;
      matchingKnownNetworkProfile = 0;
      v59 = 1;
      if (v48)
      {
        goto LABEL_46;
      }

      goto LABEL_53;
    }
  }

  v12 = WFLogForCategory(0);
  v13 = OSLogForWFLogLevel(3uLL);
  v14 = v13;
  v16 = 0;
  if (WFCurrentLogLevel(v13, v15) >= 3 && v12)
  {
    if (os_log_type_enabled(v12, v14))
    {
      *buf = 136315394;
      *v281 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
      *&v281[8] = 2112;
      *&v281[10] = v237;
      _os_log_impl(&dword_273ECD000, v12, v14, "%s: not showing settings for in progress hotspot join %@", buf, 0x16u);
    }

    v16 = 0;
  }

LABEL_179:

  return v16;
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = WFLogForCategory(5uLL);
  v7 = OSLogForWFLogLevel(1uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) && v6 && os_log_type_enabled(v6, v8))
  {
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_273ECD000, v6, v8, "resolved profile %@ error %@", &v10, 0x16u);
  }
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_335(uint64_t a1, uint64_t a2)
{
  v139 = *MEMORY[0x277D85DE8];
  objc_copyWeak(&to, (a1 + 40));
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
  {
    *buf = 136315394;
    v136 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
    v137 = 2048;
    v138 = a2;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: performing details action=%lu", buf, 0x16u);
  }

  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 48));
        v13 = [WeakRetained network];

        v46 = WFLogForCategory(0);
        v47 = OSLogForWFLogLevel(3uLL);
        v48 = v47;
        if (WFCurrentLogLevel(v47, v49) >= 3 && v46 && os_log_type_enabled(v46, v48))
        {
          *buf = 138412290;
          v136 = v13;
          _os_log_impl(&dword_273ECD000, v46, v48, "Launching AirPort Utility for network %@", buf, 0xCu);
        }

        if (v13)
        {
          v50 = +[WFMetricsManager sharedManager];
          v51 = [WFUserEvent eventWithType:5];
          [v50 processEvent:v51];

          v52 = MEMORY[0x277CEA3A8];
          v53 = [v13 ssid];
          v54 = [v13 bssid];
          v55 = objc_loadWeakRetained(&to);
          v56 = [v55 viewController];
          [v52 launchAUForNetwork:v53 withMacAddress:v54 getAUFromAppStore:1 viewController:v56];
        }

        v57 = objc_loadWeakRetained(&to);
        v58 = objc_loadWeakRetained((a1 + 48));
        [v57 _dismissDetailsViewControllerWithContext:v58];

        goto LABEL_85;
      }

      if (a2 != 2)
      {
        goto LABEL_86;
      }

      v14 = objc_loadWeakRetained(&to);
      v15 = objc_loadWeakRetained((a1 + 48));
      [v14 _dismissDetailsViewControllerWithContext:v15];

      v16 = objc_loadWeakRetained((a1 + 48));
      v13 = [v16 network];

      v17 = objc_loadWeakRetained(&to);
      [v17 _associateToScanRecord:v13];

      v18 = objc_loadWeakRetained(&to);
      v19 = [v18 associationContext];
      [v19 setOriginator:2];

      goto LABEL_85;
    }

    v24 = +[WFMetricsManager sharedManager];
    v25 = [WFUserEvent eventWithType:4];
    [v24 processEvent:v25];

    v26 = objc_loadWeakRetained(&to);
    v27 = objc_loadWeakRetained((a1 + 48));
    [v26 _dismissDetailsViewControllerWithContext:v27];

    v28 = objc_loadWeakRetained((a1 + 48));
    v29 = [v28 network];

    v30 = objc_loadWeakRetained(&to);
    v31 = [v30 interface];
    v32 = [v31 currentNetwork];
    v33 = [v29 isEqual:v32];

    if (v33)
    {
      v129 = 1;
LABEL_51:
      v92 = [v29 carPlayType];
      v93 = v92 == 2;
      if (v92 != 2 && ((v129 ^ 1) & 1) == 0)
      {
        v94 = objc_loadWeakRetained(&to);
        v95 = [v94 interface];
        v96 = [v95 currentNetwork];
        v93 = [v96 carPlayType] == 2;
      }

      v97 = objc_loadWeakRetained(&to);
      v98 = [v97 networks];
      v99 = [v98 mutableCopy];

      [v99 removeObject:v29];
      [v29 setKnown:0];
      v100 = objc_loadWeakRetained(&to);
      [v100 setNetworks:v99];

      v101 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_337;
      block[3] = &unk_279EBD6C0;
      objc_copyWeak(&v133, &to);
      v131 = *(a1 + 32);
      v13 = v29;
      v132 = v13;
      dispatch_async(v101, block);

      if (v129)
      {
        if (v93)
        {
          v102 = WFLogForCategory(0);
          v103 = OSLogForWFLogLevel(3uLL);
          v104 = v103;
          if (WFCurrentLogLevel(v103, v105) >= 3 && v102 && os_log_type_enabled(v102, v104))
          {
            *buf = 0;
            _os_log_impl(&dword_273ECD000, v102, v104, "Network is CarPlayUserConfigured- not disassociating, changing current network type == CarPlayOnly", buf, 2u);
          }

          v106 = objc_loadWeakRetained(&to);
          v107 = [v106 interface];
          [v107 disassociateFromCarPlayUserConfiguredNetwork];
        }

        else
        {
          v106 = objc_loadWeakRetained(&to);
          v107 = [v106 interface];
          [v107 disassociateFromCurrentNetwork];
        }
      }

      else
      {
        if (!v13)
        {
          goto LABEL_69;
        }

        v108 = WFLogForCategory(0);
        v109 = OSLogForWFLogLevel(3uLL);
        v110 = v109;
        if (WFCurrentLogLevel(v109, v111) >= 3 && v108 && os_log_type_enabled(v108, v110))
        {
          *buf = 136315394;
          v136 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
          v137 = 2112;
          v138 = v13;
          _os_log_impl(&dword_273ECD000, v108, v110, "%s: updating view for %@", buf, 0x16u);
        }

        [v13 setHotspot20Name:0];
        [v13 setHotspotPluginLabel:0];
        v106 = objc_loadWeakRetained(&to);
        v107 = [MEMORY[0x277CBEB98] setWithObject:v13];
        [v106 _updateViewsForNetworks:v107];
      }

LABEL_69:
      v112 = objc_loadWeakRetained(&to);
      if ([v112 isHS20Supported])
      {
        v113 = [v13 isHotspot20];

        if (!v113)
        {
          goto LABEL_77;
        }

        v114 = WFLogForCategory(0);
        v115 = OSLogForWFLogLevel(3uLL);
        v116 = v115;
        if (WFCurrentLogLevel(v115, v117) >= 3 && v114 && os_log_type_enabled(v114, v116))
        {
          *buf = 136315138;
          v136 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
          _os_log_impl(&dword_273ECD000, v114, v116, "%s: network is hotspot 20", buf, 0xCu);
        }

        v112 = objc_loadWeakRetained(&to);
        v118 = [v112 gasController];
        [v118 removeProfileForNetwork:v13];
      }

LABEL_77:
      if (*(a1 + 56) == 2)
      {
        v119 = objc_loadWeakRetained(&to);
        v120 = [v119 viewController];
        v121 = [v120 conformsToProtocol:&unk_288336D30];

        if (v121)
        {
          v122 = WFLogForCategory(0);
          v123 = OSLogForWFLogLevel(3uLL);
          v124 = v123;
          if (WFCurrentLogLevel(v123, v125) >= 3 && v122 && os_log_type_enabled(v122, v124))
          {
            *buf = 136315138;
            v136 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
            _os_log_impl(&dword_273ECD000, v122, v124, "%s: refreshing view controller after forget network", buf, 0xCu);
          }

          v126 = objc_loadWeakRetained(&to);
          v127 = [v126 viewController];

          [v127 refreshKnownNetworksUpdateTableView:1];
        }
      }

      objc_destroyWeak(&v133);
      goto LABEL_85;
    }

    v59 = [v29 ssid];
    v60 = objc_loadWeakRetained(&to);
    v61 = [v60 interface];
    v62 = [v61 currentNetwork];
    v63 = [v62 ssid];
    v129 = [v59 isEqualToString:v63];
    if (v129)
    {
      v64 = objc_loadWeakRetained(&to);
      v65 = [v64 interface];
      v66 = [v65 currentNetwork];
      v128 = [v29 isNetworkSecurityModeMatch:{objc_msgSend(v66, "securityModeExt")}];

      if (!v128)
      {
        v129 = 0;
        goto LABEL_51;
      }

      v59 = WFLogForCategory(0);
      v67 = OSLogForWFLogLevel(3uLL);
      v68 = v67;
      if (WFCurrentLogLevel(v67, v69) < 3 || !v59)
      {
        goto LABEL_49;
      }

      v60 = v59;
      if (os_log_type_enabled(v60, v68))
      {
        v70 = objc_loadWeakRetained(&to);
        v71 = [v70 interface];
        v72 = [v71 currentNetwork];
        *buf = 138412546;
        v136 = v72;
        v137 = 2112;
        v138 = v29;
        _os_log_impl(&dword_273ECD000, v60, v68, "current network %@ isNotEqual to network to be forgotten %@, but ssid + security type match", buf, 0x16u);
      }

      v59 = v60;
    }

    else
    {
    }

LABEL_49:
    goto LABEL_51;
  }

  if (a2 > 4)
  {
    if (a2 != 5)
    {
      if (a2 == 6)
      {
        v20 = objc_loadWeakRetained((a1 + 48));
        v21 = [v20 portalContext];
        v13 = [v21 fullPortalURLString];

        if (v13)
        {
          v22 = [MEMORY[0x277D75128] sharedApplication];
          v23 = [MEMORY[0x277CBEBC0] URLWithString:v13];
          [v22 openURL:v23 options:MEMORY[0x277CBEC10] completionHandler:0];
        }

        goto LABEL_85;
      }

      goto LABEL_86;
    }

    v43 = objc_loadWeakRetained((a1 + 48));
    v13 = [v43 network];

    v44 = objc_loadWeakRetained(&to);
    [v44 _associateToScanRecord:v13];

LABEL_85:
    goto LABEL_86;
  }

  if (a2 != 3)
  {
    v8 = objc_loadWeakRetained((a1 + 48));
    v9 = [v8 recommendations];
    if (v9)
    {
      v10 = MEMORY[0x277CBEB98];
      v11 = objc_loadWeakRetained((a1 + 48));
      v12 = [v11 recommendations];
      v13 = [v10 setWithArray:v12];
    }

    else
    {
      v13 = 0;
    }

    v73 = objc_loadWeakRetained((a1 + 48));
    v74 = [v73 network];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v76 = objc_loadWeakRetained((a1 + 48));
      v77 = [v76 network];
      v78 = [v77 securityMode];
    }

    else
    {
      v78 = 0;
    }

    v79 = +[WFMetricsManager sharedManager];
    v80 = objc_loadWeakRetained((a1 + 48));
    v81 = [v80 network];
    v82 = [v81 ssid];
    v83 = [WFHealthUIEvent tapLinkEventWithIssues:v13 ssid:v82 securityType:v78];
    [v79 processEvent:v83];

    v84 = MEMORY[0x277CCA8D8];
    v85 = objc_loadWeakRetained(&to);
    v86 = [v84 bundleForClass:objc_opt_class()];
    v87 = [v86 localizedStringForKey:@"kWFLocSettingsRecommendationLinkURL" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];

    if (v87)
    {
      v88 = [MEMORY[0x277D75128] sharedApplication];
      v89 = [MEMORY[0x277CBEBC0] URLWithString:v87];
      [v88 openURL:v89 options:MEMORY[0x277CBEC10] completionHandler:0];
    }

    v90 = objc_loadWeakRetained(&to);
    v91 = objc_loadWeakRetained((a1 + 48));
    [v90 _dismissDetailsViewControllerWithContext:v91];

    goto LABEL_85;
  }

  v34 = +[WFMetricsManager sharedManager];
  v35 = [WFUserEvent eventWithType:6];
  [v34 processEvent:v35];

  v36 = objc_loadWeakRetained(&to);
  v37 = [v36 interface];
  v38 = [v37 ipMonitor];
  v39 = [v38 renewLease];

  if ((v39 & 1) == 0)
  {
    v13 = WFLogForCategory(0);
    v40 = OSLogForWFLogLevel(1uLL);
    v41 = v40;
    if (WFCurrentLogLevel(v40, v42) && v13 && os_log_type_enabled(v13, v41))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v13, v41, "Renew lease failed", buf, 2u);
    }

    goto LABEL_85;
  }

LABEL_86:
  objc_destroyWeak(&to);
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_337(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained wifiClient];
  v4 = [v3 cInterface];
  v5 = *(a1 + 32);
  v19 = 0;
  v6 = [v4 removeKnownNetworkProfile:v5 reason:2 error:&v19];
  v7 = v19;

  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel(v9, v10))
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v6)
  {
    if (v12 && os_log_type_enabled(v8, v9))
    {
      v13 = *(a1 + 40);
      *buf = 138412290;
      v21 = v13;
      v14 = "Removed network='%@'";
      v15 = v8;
      v16 = v9;
      v17 = 12;
LABEL_14:
      _os_log_impl(&dword_273ECD000, v15, v16, v14, buf, v17);
    }
  }

  else if (v12 && os_log_type_enabled(v8, v9))
  {
    v18 = *(a1 + 40);
    *buf = 138412546;
    v21 = v18;
    v22 = 2112;
    v23 = v7;
    v14 = "Failed to remove network='%@' error='%@'";
    v15 = v8;
    v16 = v9;
    v17 = 22;
    goto LABEL_14;
  }
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_388(id *a1, char *a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = [WeakRetained privateAddressMode];

  if (v5 != a2)
  {
    objc_copyWeak(&to, a1 + 6);
    if (_os_feature_enabled_impl())
    {
      if ((a2 - 1) >= 3)
      {
        v6 = 0;
      }

      else
      {
        v6 = a2;
      }

      v7 = objc_loadWeakRetained(a1 + 5);
      v8 = [v7 profile];

      v9 = objc_loadWeakRetained(a1 + 5);
      v10 = [v9 network];
      v11 = [v10 scanResult];

      v12 = objc_loadWeakRetained(&to);
      v13 = [v12 wifiClient];
      v14 = [v13 cInterface];
      v15 = v8;
      if (!v8)
      {
        v15 = [v11 networkProfile];
      }

      [v14 setPrivateMACAddressMode:v6 networkProfile:v15 error:0];
      if (!v8)
      {
      }
    }

    else
    {
      v16 = objc_loadWeakRetained(a1 + 5);
      v8 = [v16 network];

      v17 = [v8 randomMACAddress];
      if (v17)
      {
        v46 = [v8 randomMACAddress];
      }

      else
      {
        v18 = objc_loadWeakRetained(a1 + 5);
        v19 = [v18 profile];
        v46 = [v19 randomMACAddress];
      }

      if (v5 == 1)
      {
        v20 = WFLogForCategory(0);
        v21 = OSLogForWFLogLevel(3uLL);
        v22 = v21;
        if (WFCurrentLogLevel(v21, v23) >= 3 && v20 && os_log_type_enabled(v20, v22))
        {
          *buf = 0;
          _os_log_impl(&dword_273ECD000, v20, v22, "Generating new private mac when switched out of off mode", buf, 2u);
        }

        v24 = objc_loadWeakRetained(&to);
        v25 = [v24 wifiClient];
        v26 = [v8 ssid];
        v27 = [v25 newRandomMACAddressForSSID:v26];

        v46 = v27;
      }

      v28 = objc_loadWeakRetained(&to);
      v29 = [v28 wifiClient];
      v30 = [v8 ssid];
      [v29 setRandomAddressModeForNetwork:v30 mode:a2 randomMAC:v46];

      v31 = objc_loadWeakRetained(a1 + 5);
      if ([v31 isCurrent])
      {
      }

      else
      {
        v32 = objc_loadWeakRetained(&to);
        v33 = [v32 interface];
        v34 = [v33 currentNetwork];
        v35 = [v34 ssid];
        v36 = [a1[4] ssid];
        v37 = [v35 isEqualToString:v36];

        if (!v37)
        {
          v11 = v46;
          goto LABEL_12;
        }
      }

      v11 = v46;
      if (a2 == 3 && v5 == 2 || a2 == 2 && v5 == 3)
      {
        v12 = WFLogForCategory(0);
        v38 = OSLogForWFLogLevel(3uLL);
        v39 = v38;
        if (WFCurrentLogLevel(v38, v40) >= 3 && v12 && os_log_type_enabled(v12, v39))
        {
          *v48 = 0;
          _os_log_impl(&dword_273ECD000, v12, v39, "Do not disassociate for current network when transit between static and rotating", v48, 2u);
        }
      }

      else
      {
        v41 = WFLogForCategory(0);
        v42 = OSLogForWFLogLevel(3uLL);
        v43 = v42;
        if (WFCurrentLogLevel(v42, v44) >= 3 && v41 && os_log_type_enabled(v41, v43))
        {
          *v47 = 0;
          _os_log_impl(&dword_273ECD000, v41, v43, "Disassociate for current network when private addres mode changes", v47, 2u);
        }

        v12 = objc_loadWeakRetained(&to);
        v45 = [v12 interface];
        [v45 disassociateFromCurrentNetworkWithReason:33];

        v11 = v46;
      }
    }

LABEL_12:
    objc_destroyWeak(&to);
  }
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_389(id *a1, int a2)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = [WeakRetained network];

  v6 = a1[4];
  v7 = v6;
  if (v6)
  {
    [v6 setAutoJoinDisabled:a2 ^ 1u];
    v8 = objc_loadWeakRetained(a1 + 6);
    v9 = [v8 wifiClient];
    v10 = [v9 cInterface];
    v27 = 0;
    v11 = [v10 updateKnownNetworkProfile:v7 properties:0 error:&v27];
    v12 = v27;

    v13 = WFLogForCategory(0);
    if (v11)
    {
      v14 = OSLogForWFLogLevel(3uLL);
      v15 = v14;
      if (WFCurrentLogLevel(v14, v16) < 3 || !v13)
      {
        goto LABEL_16;
      }

      v17 = v13;
      if (os_log_type_enabled(v17, v15))
      {
        v18 = [v5 ssid];
        *buf = 138412546;
        v29 = v18;
        v30 = 1024;
        LODWORD(v31) = a2;
        _os_log_impl(&dword_273ECD000, v17, v15, "Auto join changed for '%@' set to '%d'", buf, 0x12u);
      }
    }

    else
    {
      v22 = OSLogForWFLogLevel(1uLL);
      v23 = v22;
      if (!WFCurrentLogLevel(v22, v24) || !v13)
      {
        goto LABEL_16;
      }

      v25 = v13;
      if (os_log_type_enabled(v25, v23))
      {
        v26 = [v5 ssid];
        *buf = 138412546;
        v29 = v26;
        v30 = 2112;
        v31 = v12;
        _os_log_impl(&dword_273ECD000, v25, v23, "failed saving auto join state for '%@' error='%@'", buf, 0x16u);
      }
    }

LABEL_16:
    goto LABEL_17;
  }

  v12 = WFLogForCategory(0);
  v19 = OSLogForWFLogLevel(1uLL);
  v20 = v19;
  if (WFCurrentLogLevel(v19, v21) && v12 && os_log_type_enabled(v12, v20))
  {
    *buf = 136315394;
    v29 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&dword_273ECD000, v12, v20, "%s: nil CWFNetworkProfile for network '%@'", buf, 0x16u);
  }

LABEL_17:
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_390(id *a1, int a2)
{
  v33[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = [WeakRetained network];

  v6 = a1[4];
  if (v6)
  {
    if (a2)
    {
      v7 = MEMORY[0x277CBEC28];
    }

    else
    {
      v7 = MEMORY[0x277CBEC38];
    }

    v32 = *MEMORY[0x277D29780];
    v33[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    [v6 setCaptiveProfile:v8];
    v9 = objc_loadWeakRetained(a1 + 6);
    v10 = [v9 wifiClient];
    v11 = [v10 cInterface];
    v29 = 0;
    v12 = [v11 updateKnownNetworkProfile:v6 properties:0 error:&v29];
    v13 = v29;

    v14 = WFLogForCategory(0);
    if (v12)
    {
      v15 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel(v15, v16) < 3 || !v14)
      {
        goto LABEL_20;
      }

      v17 = v14;
      if (!os_log_type_enabled(v17, v15))
      {
LABEL_19:

LABEL_20:
        goto LABEL_21;
      }

      v18 = [v5 ssid];
      *buf = 67109378;
      *v31 = a2;
      *&v31[4] = 2112;
      *&v31[6] = v18;
      v19 = "Set auto login='%d' for '%@'";
      v20 = v17;
      v21 = v15;
      v22 = 18;
    }

    else
    {
      v26 = OSLogForWFLogLevel(1uLL);
      if (!WFCurrentLogLevel(v26, v27) || !v14)
      {
        goto LABEL_20;
      }

      v28 = v14;
      if (!os_log_type_enabled(v28, v26))
      {
        goto LABEL_19;
      }

      v18 = [v5 ssid];
      *buf = 67109634;
      *v31 = a2;
      *&v31[4] = 2112;
      *&v31[6] = v18;
      *&v31[14] = 2112;
      *&v31[16] = v13;
      v19 = "failed setting auto login='%d' for '%@' error='%@'";
      v20 = v28;
      v21 = v26;
      v22 = 28;
    }

    _os_log_impl(&dword_273ECD000, v20, v21, v19, buf, v22);

    goto LABEL_19;
  }

  v8 = WFLogForCategory(0);
  v23 = OSLogForWFLogLevel(1uLL);
  v24 = v23;
  if (WFCurrentLogLevel(v23, v25) && v8 && os_log_type_enabled(v8, v24))
  {
    *buf = 136315394;
    *v31 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
    *&v31[8] = 2112;
    *&v31[10] = v5;
    _os_log_impl(&dword_273ECD000, v8, v24, "%s: nil CWFNetworkProfile for network '%@'", buf, 0x16u);
  }

LABEL_21:
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_391(id *a1, int a2)
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = [WeakRetained network];

  v6 = a1[4];
  v7 = v6;
  if (v6)
  {
    if (a2)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    [v6 setLowDataMode:v8];
    v9 = objc_loadWeakRetained(a1 + 6);
    v10 = [v9 wifiClient];
    v11 = [v10 cInterface];
    v28 = 0;
    v12 = [v11 updateKnownNetworkProfile:v7 properties:0 error:&v28];
    v13 = v28;

    v14 = WFLogForCategory(0);
    if (v12)
    {
      v15 = OSLogForWFLogLevel(3uLL);
      v16 = v15;
      if (WFCurrentLogLevel(v15, v17) < 3 || !v14)
      {
        goto LABEL_19;
      }

      v18 = v14;
      if (os_log_type_enabled(v18, v16))
      {
        v19 = [v5 ssid];
        *buf = 138412546;
        v30 = v19;
        v31 = 1024;
        LODWORD(v32) = a2;
        _os_log_impl(&dword_273ECD000, v18, v16, "Low data mode changed for '%@' set to '%d'", buf, 0x12u);
      }
    }

    else
    {
      v23 = OSLogForWFLogLevel(1uLL);
      v24 = v23;
      if (!WFCurrentLogLevel(v23, v25) || !v14)
      {
        goto LABEL_19;
      }

      v26 = v14;
      if (os_log_type_enabled(v26, v24))
      {
        v27 = [v5 ssid];
        *buf = 138412546;
        v30 = v27;
        v31 = 2112;
        v32 = v13;
        _os_log_impl(&dword_273ECD000, v26, v24, "failed saving low data mode state for '%@' error='%@'", buf, 0x16u);
      }
    }

LABEL_19:
    goto LABEL_20;
  }

  v13 = WFLogForCategory(0);
  v20 = OSLogForWFLogLevel(1uLL);
  v21 = v20;
  if (WFCurrentLogLevel(v20, v22) && v13 && os_log_type_enabled(v13, v21))
  {
    *buf = 136315394;
    v30 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&dword_273ECD000, v13, v21, "%s: nil CWFNetworkProfile for network '%@'", buf, 0x16u);
  }

LABEL_20:
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_392(id *a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = [WeakRetained network];

  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) >= 3 && v6 && os_log_type_enabled(v6, v8))
  {
    *buf = 67109120;
    *v36 = a2;
    _os_log_impl(&dword_273ECD000, v6, v8, "Setting privacy proxy %d", buf, 8u);
  }

  v10 = a1[4];
  v11 = v10;
  if (v10)
  {
    [v10 setPrivacyProxyEnabled:a2];
    v12 = objc_loadWeakRetained(a1 + 6);
    v13 = [v12 wifiClient];
    v14 = [v13 cInterface];
    v34 = 0;
    v15 = [v14 updateKnownNetworkProfile:v11 properties:0 error:&v34];
    v16 = v34;

    v17 = WFLogForCategory(0);
    if (v15)
    {
      v18 = OSLogForWFLogLevel(3uLL);
      v19 = v18;
      if (WFCurrentLogLevel(v18, v20) >= 3 && v17)
      {
        v21 = v17;
        if (os_log_type_enabled(v21, v19))
        {
          v22 = [v5 ssid];
          *buf = 138412546;
          *v36 = v22;
          *&v36[8] = 1024;
          *&v36[10] = a2;
          _os_log_impl(&dword_273ECD000, v21, v19, "Privacy proxy changed for '%@' set to '%d'", buf, 0x12u);
        }
      }
    }

    else
    {
      v26 = OSLogForWFLogLevel(1uLL);
      v27 = v26;
      if (WFCurrentLogLevel(v26, v28) && v17 && os_log_type_enabled(v17, v27))
      {
        *buf = 67240706;
        *v36 = a2;
        *&v36[4] = 2112;
        *&v36[6] = v5;
        *&v36[14] = 2112;
        *&v36[16] = v16;
        _os_log_impl(&dword_273ECD000, v17, v27, "Failed to set privacy proxy to=%{public}d for network='%@' error='%@'", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v16 = WFLogForCategory(0);
    v23 = OSLogForWFLogLevel(1uLL);
    v24 = v23;
    if (WFCurrentLogLevel(v23, v25) && v16 && os_log_type_enabled(v16, v24))
    {
      *buf = 136315394;
      *v36 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
      *&v36[8] = 2112;
      *&v36[10] = v5;
      _os_log_impl(&dword_273ECD000, v16, v24, "%s: nil CWFNetworkProfile for network '%@'", buf, 0x16u);
    }
  }

  v29 = MEMORY[0x277D2CA68];
  v30 = [v5 ssid];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_394;
  v32[3] = &unk_279EBD760;
  v33 = v5;
  v31 = v5;
  [v29 reportWiFiNetworkStatus:a2 networkName:v30 queue:MEMORY[0x277D85CD0] completionHandler:v32];
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_394(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4)
  {
    v8 = v4;
    if (os_log_type_enabled(v8, v6))
    {
      v9 = [*(a1 + 32) ssid];
      v10 = 136315650;
      v11 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_273ECD000, v8, v6, "%s: reporting privacy proxy status for '%@' - error %@", &v10, 0x20u);
    }
  }
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_396(id *a1, void *a2, double a3)
{
  v38[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v7 = [WeakRetained network];

  v8 = a1[4];
  if (v8)
  {
    v9 = *MEMORY[0x277D29868];
    v37[0] = *MEMORY[0x277D29860];
    v37[1] = v9;
    v38[0] = v5;
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    v38[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];

    v12 = objc_loadWeakRetained(a1 + 6);
    v13 = [v12 wifiClient];
    v14 = [v13 cInterface];
    v32 = 0;
    v15 = [v14 updateKnownNetworkProfile:v8 OSSpecificAttributes:v11 error:&v32];
    v16 = v32;

    v17 = WFLogForCategory(0);
    if (v15)
    {
      v18 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel(v18, v19) < 3 || !v17)
      {
        goto LABEL_17;
      }

      v20 = v17;
      if (!os_log_type_enabled(v20, v18))
      {
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v21 = [v7 ssid];
      *buf = 138412290;
      v34 = v21;
      v22 = "Set network responsiveness for '%@'";
      v23 = v20;
      v24 = v18;
      v25 = 12;
    }

    else
    {
      v29 = OSLogForWFLogLevel(1uLL);
      if (!WFCurrentLogLevel(v29, v30) || !v17)
      {
        goto LABEL_17;
      }

      v31 = v17;
      if (!os_log_type_enabled(v31, v29))
      {
        goto LABEL_16;
      }

      v21 = [v7 ssid];
      *buf = 138412546;
      v34 = v21;
      v35 = 2112;
      v36 = v16;
      v22 = "failed setting network responsiveness for '%@' error='%@'";
      v23 = v31;
      v24 = v29;
      v25 = 22;
    }

    _os_log_impl(&dword_273ECD000, v23, v24, v22, buf, v25);

    goto LABEL_16;
  }

  v11 = WFLogForCategory(0);
  v26 = OSLogForWFLogLevel(1uLL);
  v27 = v26;
  if (WFCurrentLogLevel(v26, v28) && v11 && os_log_type_enabled(v11, v27))
  {
    *buf = 136315394;
    v34 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
    v35 = 2112;
    v36 = v7;
    _os_log_impl(&dword_273ECD000, v11, v27, "%s: nil CWFNetworkProfile for network '%@'", buf, 0x16u);
  }

LABEL_18:
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_398(id *a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  if (!v4)
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(1uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) && v5)
    {
      v9 = v5;
      if (os_log_type_enabled(v9, v7))
      {
        WeakRetained = objc_loadWeakRetained(a1 + 6);
        v11 = [WeakRetained network];
        v12 = [v11 ssid];
        *buf = 138412290;
        v31 = v12;
        _os_log_impl(&dword_273ECD000, v9, v7, "Trying to set wifi mode for empty profile for network: %@", buf, 0xCu);
      }
    }
  }

  [v4 setDisable6EMode:a2];
  v13 = objc_loadWeakRetained(a1 + 7);
  v14 = [v13 wifiClient];
  v15 = [v14 cInterface];
  v16 = [MEMORY[0x277CBEB98] setWithObject:&unk_288304888];
  v29 = 0;
  v17 = [v15 updateKnownNetworkProfile:v4 properties:v16 error:&v29];
  v18 = v29;

  v19 = WFLogForCategory(0);
  if (v17)
  {
    v20 = OSLogForWFLogLevel(3uLL);
    v21 = v20;
    if (WFCurrentLogLevel(v20, v22) >= 3 && v19)
    {
      v23 = v19;
      if (os_log_type_enabled(v23, v21))
      {
        v24 = [a1[5] ssid];
        *buf = 138412546;
        v31 = v24;
        v32 = 2048;
        v33 = a2;
        _os_log_impl(&dword_273ECD000, v23, v21, "disable 6e mode changed for '%@' set to '%ld'", buf, 0x16u);
      }
    }
  }

  else
  {
    v25 = OSLogForWFLogLevel(1uLL);
    v26 = v25;
    if (WFCurrentLogLevel(v25, v27) && v19 && os_log_type_enabled(v19, v26))
    {
      v28 = a1[5];
      *buf = 134218498;
      v31 = a2;
      v32 = 2112;
      v33 = v28;
      v34 = 2112;
      v35 = v18;
      _os_log_impl(&dword_273ECD000, v19, v26, "Failed to set disable 6e mode to=%ld for network='%@' error='%@'", buf, 0x20u);
    }
  }
}

- (BOOL)networkListViewControllerWAPIEnabled:(id)enabled
{
  wifiClient = [(WFNetworkListController *)self wifiClient];
  isWAPIEnabled = [wifiClient isWAPIEnabled];

  return isWAPIEnabled;
}

- (void)networkListViewController:(id)controller setWAPIEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x277D85DE8];
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) >= 3 && v6 && os_log_type_enabled(v6, v8))
  {
    v11[0] = 67109120;
    v11[1] = enabledCopy;
    _os_log_impl(&dword_273ECD000, v6, v8, "User changed WAPI enabled %d", v11, 8u);
  }

  wifiClient = [(WFNetworkListController *)self wifiClient];
  [wifiClient setWAPIEnabled:enabledCopy];
}

- (BOOL)networkListViewControllerNetworkRestrictionActive:(id)active
{
  wifiClient = [(WFNetworkListController *)self wifiClient];
  isNetworkRestrictionActive = [wifiClient isNetworkRestrictionActive];

  return isNetworkRestrictionActive;
}

- (BOOL)networkListViewControllerPowerModificationDisabled:(id)disabled
{
  wifiClient = [(WFNetworkListController *)self wifiClient];
  isPowerModificationDisabled = [wifiClient isPowerModificationDisabled];

  return isPowerModificationDisabled;
}

- (int64_t)networkListViewControllerAutoInstantHotspotOption:(id)option
{
  wifiClient = [(WFNetworkListController *)self wifiClient];
  autoInstantHotspotJoinOption = [wifiClient autoInstantHotspotJoinOption];

  return autoInstantHotspotJoinOption;
}

- (void)networkListViewController:(id)controller setAutoInstantOption:(int64_t)option
{
  wifiClient = [(WFNetworkListController *)self wifiClient];
  [wifiClient setAutoInstantHotspotJoinOption:option];
}

- (BOOL)networkListViewControllerIsManagedAppleID:(id)d
{
  wifiClient = [(WFNetworkListController *)self wifiClient];
  isManagedAppleID = [wifiClient isManagedAppleID];

  return isManagedAppleID;
}

- (int64_t)airportSettingsViewControllerAskToJoinMode:(id)mode
{
  wifiClient = [(WFNetworkListController *)self wifiClient];
  isNetworkRestrictionActive = [wifiClient isNetworkRestrictionActive];

  if (isNetworkRestrictionActive)
  {
    return -1;
  }

  wifiClient2 = [(WFNetworkListController *)self wifiClient];
  askToJoinMode = [wifiClient2 askToJoinMode];

  return askToJoinMode;
}

- (void)airportSettingsViewController:(id)controller setAskToJoinMode:(int64_t)mode
{
  v6 = +[WFMetricsManager sharedManager];
  v7 = [WFUserEvent eventWithType:2 stateEnum:mode];
  [v6 processEvent:v7];

  wifiClient = [(WFNetworkListController *)self wifiClient];
  [wifiClient setAskToJoinMode:mode];
}

- (BOOL)airportSettingsViewControllerShouldShowDiagnosticsMode:(id)mode
{
  wifiClient = [(WFNetworkListController *)self wifiClient];
  isDiagnosticsModeEnabled = [wifiClient isDiagnosticsModeEnabled];

  return isDiagnosticsModeEnabled;
}

- (BOOL)airportSettingsViewControllerShouldShowNANUI:(id)i
{
  wifiClient = [(WFNetworkListController *)self wifiClient];
  if ([wifiClient isNANUIEnabled])
  {
    v4 = MGGetBoolAnswer();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)airportSettingsViewControllerShouldShowKnownNetworks:(id)networks
{
  wifiClient = [(WFNetworkListController *)self wifiClient];
  isKnownNetworkUIEnabled = [wifiClient isKnownNetworkUIEnabled];

  return isKnownNetworkUIEnabled;
}

- (void)airportSettingsViewControllerDidTapDiagnosticsMode:(id)mode showNANUI:(BOOL)i
{
  iCopy = i;
  modeCopy = mode;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_273ECD000, v7, v9, "User tapped diagnostic cell", buf, 2u);
  }

  v11 = [objc_alloc(MEMORY[0x277D7B9B0]) initWithNANUI:iCopy];
  objc_initWeak(buf, self);
  objc_initWeak(&location, v11);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__WFNetworkListController_airportSettingsViewControllerDidTapDiagnosticsMode_showNANUI___block_invoke;
  v12[3] = &unk_279EBD7D8;
  objc_copyWeak(&v13, buf);
  objc_copyWeak(&v14, &location);
  [v11 setSaveHandler:v12];
  [(WFNetworkListing *)self->_viewController wf_pushViewController:v11 animated:1];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

void __88__WFNetworkListController_airportSettingsViewControllerDidTapDiagnosticsMode_showNANUI___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _saveLogsWithComment:v3 diagnosticsViewController:v4];
}

- (BOOL)airportSettingsViewControllerCurrentNetworkConnectionIsProblematic:(id)problematic
{
  healthRecommendations = [(WFNetworkListController *)self healthRecommendations];
  v5 = [MEMORY[0x277D7B9C0] issueWithType:1];
  if ([healthRecommendations containsObject:v5])
  {
    v6 = 0;
  }

  else
  {
    healthRecommendations2 = [(WFNetworkListController *)self healthRecommendations];
    v8 = [MEMORY[0x277D7B9C0] issueWithType:0x8000];
    v9 = [healthRecommendations2 containsObject:v8];

    v6 = v9 ^ 1;
  }

  interface = [(WFNetworkListController *)self interface];
  currentNetwork = [interface currentNetwork];
  LOBYTE(v12) = 0;
  if (currentNetwork && (v6 & 1) == 0)
  {
    interface2 = [(WFNetworkListController *)self interface];
    currentNetwork2 = [interface2 currentNetwork];
    if ([currentNetwork2 supportsWiFiHealth])
    {
      wifiClient = [(WFNetworkListController *)self wifiClient];
      v12 = [wifiClient isWiFiHealthUIDisabled] ^ 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (void)airportSettingsViewControllerDidTapDataUsage:(id)usage
{
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_273ECD000, v4, v6, "User tapped data usage cell", v8, 2u);
  }

  [(WFNetworkListController *)self pushDataUsageViewController];
}

- (id)editableKnownNetworks
{
  knownNetworksManager = [(WFNetworkListController *)self knownNetworksManager];
  allEditableNetworkProfiles = [knownNetworksManager allEditableNetworkProfiles];

  return allEditableNetworkProfiles;
}

- (id)managedKnownNetworks
{
  knownNetworksManager = [(WFNetworkListController *)self knownNetworksManager];
  allNonEditableNetworkProfiles = [knownNetworksManager allNonEditableNetworkProfiles];

  return allNonEditableNetworkProfiles;
}

- (BOOL)removeKnownNetworks:(id)networks
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  networksCopy = networks;
  v5 = [networksCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(networksCopy);
        }

        ssid = [*(*(&v26 + 1) + 8 * v8) ssid];
        interface = [(WFNetworkListController *)self interface];
        currentNetwork = [interface currentNetwork];
        ssid2 = [currentNetwork ssid];
        v13 = [ssid isEqualToString:ssid2];

        if (v13)
        {
          v14 = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [networksCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  knownNetworksManager = [(WFNetworkListController *)self knownNetworksManager];
  v16 = [knownNetworksManager removeNetworks:networksCopy];

  v17 = +[WFMetricsManager sharedManager];
  v18 = +[WFUserEvent eventWithType:stateEnum:](WFUserEvent, "eventWithType:stateEnum:", 11, [networksCopy count]);
  [v17 processEvent:v18];

  if (v14)
  {
    interface2 = [(WFNetworkListController *)self interface];
    [interface2 disassociateFromCurrentNetwork];

    v20 = WFLogForCategory(0);
    v21 = OSLogForWFLogLevel(1uLL);
    v22 = v21;
    if (WFCurrentLogLevel(v21, v23) && v20 && os_log_type_enabled(v20, v22))
    {
      *v25 = 0;
      _os_log_impl(&dword_273ECD000, v20, v22, "Disconnect from current network because user deleted it from known networks list", v25, 2u);
    }
  }

  return v16;
}

- (id)passwordToDisplayForSSID:(id)d
{
  dCopy = d;
  v5 = [WFKnownNetworksManager alloc];
  wifiClient = [(WFNetworkListController *)self wifiClient];
  cInterface = [wifiClient cInterface];
  v8 = [(WFKnownNetworksManager *)v5 initWithInterface:cInterface];

  v9 = [(WFKnownNetworksManager *)v8 passwordForNetworksWithSSID:dCopy];

  return v9;
}

- (void)airportSettingsViewControllerDidStartEditingKnownNetworks:(id)networks
{
  v15 = *MEMORY[0x277D85DE8];
  networksCopy = networks;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v11 = 136315394;
    v12 = "[WFNetworkListController airportSettingsViewControllerDidStartEditingKnownNetworks:]";
    v13 = 2112;
    v14 = networksCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s airportVC='%@'", &v11, 0x16u);
  }

  [(WFNetworkListController *)self _pauseScanning];
  v9 = +[WFMetricsManager sharedManager];
  v10 = [WFUserEvent eventWithType:10];
  [v9 processEvent:v10];
}

- (void)airportSettingsViewControllerDidFinishEditingKnownNetworks:(id)networks
{
  v22 = *MEMORY[0x277D85DE8];
  networksCopy = networks;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v18 = 136315394;
    v19 = "[WFNetworkListController airportSettingsViewControllerDidFinishEditingKnownNetworks:]";
    v20 = 2112;
    v21 = networksCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s airportVC='%@'", &v18, 0x16u);
  }

  interface = [(WFNetworkListController *)self interface];
  currentNetwork = [interface currentNetwork];

  viewController = [(WFNetworkListController *)self viewController];
  currentNetwork2 = [viewController currentNetwork];
  v13 = [currentNetwork2 isEqual:currentNetwork];

  if ((v13 & 1) == 0)
  {
    v14 = WFLogForCategory(0);
    v15 = OSLogForWFLogLevel(3uLL);
    v16 = v15;
    if (WFCurrentLogLevel(v15, v17) >= 3 && v14 && os_log_type_enabled(v14, v16))
    {
      v18 = 136315138;
      v19 = "[WFNetworkListController airportSettingsViewControllerDidFinishEditingKnownNetworks:]";
      _os_log_impl(&dword_273ECD000, v14, v16, "%s: refresh current network cell when exiting edit PNL", &v18, 0xCu);
    }

    [(WFNetworkListController *)self _updateViewControllerConnectedNetwork:currentNetwork];
  }

  [(WFNetworkListController *)self _resumeScanning];
}

- (void)pushDataUsageViewController
{
  v5 = objc_alloc_init(MEMORY[0x277D4D8B8]);
  specifier = [v5 specifier];
  [specifier setProperty:@"com.apple.wifi" forKey:*MEMORY[0x277D3FFB8]];

  viewController = [(WFNetworkListController *)self viewController];
  [viewController wf_pushViewController:v5 animated:1];
}

- (void)_saveLogsWithComment:(id)comment diagnosticsViewController:(id)controller
{
  commentCopy = comment;
  controllerCopy = controller;
  [controllerCopy setSaving:1];
  v8 = [[WFSaveLogsOperation alloc] initWithComments:commentCopy];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __74__WFNetworkListController__saveLogsWithComment_diagnosticsViewController___block_invoke;
  v23[3] = &unk_279EBCFE0;
  v9 = controllerCopy;
  v24 = v9;
  [(WFSaveLogsOperation *)v8 setCompletionBlock:v23];
  objc_initWeak(&location, v8);
  objc_initWeak(&from, self);
  v10 = MEMORY[0x277CCA8C8];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __74__WFNetworkListController__saveLogsWithComment_diagnosticsViewController___block_invoke_3;
  v17 = &unk_279EBD828;
  objc_copyWeak(&v19, &location);
  selfCopy = self;
  objc_copyWeak(&v20, &from);
  v11 = [v10 blockOperationWithBlock:&v14];
  [v11 addDependency:{v8, v14, v15, v16, v17, selfCopy}];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  [mainQueue addOperation:v11];

  backgroundQueue = [(WFNetworkListController *)self backgroundQueue];
  [backgroundQueue addOperation:v8];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __74__WFNetworkListController__saveLogsWithComment_diagnosticsViewController___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__WFNetworkListController__saveLogsWithComment_diagnosticsViewController___block_invoke_2;
  block[3] = &unk_279EBCFE0;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__WFNetworkListController__saveLogsWithComment_diagnosticsViewController___block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = [WeakRetained error];
  v23 = v3 == 0;

  v4 = [a1[4] viewController];
  [v4 deviceCapability];
  IsChinaDevice = WFCapabilityIsChinaDevice();

  v6 = MEMORY[0x277D75110];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = v7;
  if (v3)
  {
    v9 = [v7 localizedStringForKey:@"kWFLocDiagnosticsAlertFailureTitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = v10;
    v12 = @"kWFLocDiagnosticsAlertFailureMessage";
    v13 = @"kWFLocDiagnosticsAlertFailureMessage_CH";
  }

  else
  {
    v9 = [v7 localizedStringForKey:@"kWFLocDiagnosticsAlertSuccessTitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = v10;
    v12 = @"kWFLocDiagnosticsAlertSuccessMessage";
    v13 = @"kWFLocDiagnosticsAlertSuccessMessage_CH";
  }

  if (IsChinaDevice)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  v15 = [v10 localizedStringForKey:v14 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  v16 = [v6 alertControllerWithTitle:v9 message:v15 preferredStyle:1];

  v17 = MEMORY[0x277D750F8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"kWFLocDiagnosticsAlertOkTitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __74__WFNetworkListController__saveLogsWithComment_diagnosticsViewController___block_invoke_4;
  v24[3] = &unk_279EBD800;
  objc_copyWeak(&v25, a1 + 6);
  v26 = v23;
  v20 = [v17 actionWithTitle:v19 style:0 handler:v24];

  [v16 addAction:v20];
  [v16 setPreferredAction:v20];
  v21 = objc_loadWeakRetained(a1 + 6);
  v22 = [v21 viewController];
  [v22 presentViewController:v16 animated:1 completion:0];

  objc_destroyWeak(&v25);
}

void __74__WFNetworkListController__saveLogsWithComment_diagnosticsViewController___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40) == 1)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained viewController];
    v4 = [v3 navigationController];
    v5 = [v4 visibleViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    WeakRetained = v8;
    if (isKindOfClass)
    {
      v7 = [v8 viewController];
      [v7 wf_popViewControllerAnimated:1];

      WeakRetained = v8;
    }
  }
}

- (void)_networkDidChangeNotification:(id)notification
{
  v58 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"WFInterfaceNetworkKey"];

  userInfo2 = [notificationCopy userInfo];
  v8 = [userInfo2 objectForKey:@"WFInterfacePreviousNetworkKey"];

  userInfo3 = [notificationCopy userInfo];

  v10 = [userInfo3 objectForKey:@"WFInterfaceNetworkChangeReason"];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  v12 = WFLogForCategory(0);
  v13 = OSLogForWFLogLevel(3uLL);
  v14 = v13;
  if (WFCurrentLogLevel(v13, v15) >= 3 && v12 && os_log_type_enabled(v12, v14))
  {
    v52 = 136315906;
    *v53 = "[WFNetworkListController _networkDidChangeNotification:]";
    *&v53[8] = 2048;
    *&v53[10] = unsignedIntegerValue;
    v54 = 2112;
    v55 = v6;
    v56 = 2112;
    v57 = v8;
    _os_log_impl(&dword_273ECD000, v12, v14, "%s: reason %lu network %@ previous %@", &v52, 0x2Au);
  }

  if (unsignedIntegerValue == 1)
  {
    v16 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(1uLL);
    v18 = v17;
    if (WFCurrentLogLevel(v17, v19) && v16 && os_log_type_enabled(v16, v18))
    {
      v52 = 136315138;
      *v53 = "[WFNetworkListController _networkDidChangeNotification:]";
      _os_log_impl(&dword_273ECD000, v16, v18, "%s: network changed due to captive network detection", &v52, 0xCu);
    }
  }

  detailsContext = [(WFNetworkListController *)self detailsContext];

  if (detailsContext)
  {
    detailsContext2 = [(WFNetworkListController *)self detailsContext];
    network = [detailsContext2 network];
    v23 = [network isEquivalentRecord:v6];

    detailsContext3 = [(WFNetworkListController *)self detailsContext];
    [detailsContext3 setCurrent:v23];

    v25 = WFLogForCategory(0);
    v26 = OSLogForWFLogLevel(3uLL);
    v27 = v26;
    if (WFCurrentLogLevel(v26, v28) >= 3 && v25 && os_log_type_enabled(v25, v27))
    {
      v52 = 67109120;
      *v53 = v23;
      _os_log_impl(&dword_273ECD000, v25, v27, "updating details context currentNetwork %d", &v52, 8u);
    }

    if (v23)
    {
      _sortedHealthRecommendations = [(WFNetworkListController *)self _sortedHealthRecommendations];
    }

    else
    {
      _sortedHealthRecommendations = 0;
    }

    detailsContext4 = [(WFNetworkListController *)self detailsContext];
    [detailsContext4 setRecommendations:_sortedHealthRecommendations];

    if (v23)
    {
    }
  }

  v31 = WFLogForCategory(0);
  v32 = OSLogForWFLogLevel(3uLL);
  v33 = v32;
  if (WFCurrentLogLevel(v32, v34) >= 3 && v31 && os_log_type_enabled(v31, v33))
  {
    v52 = 138412290;
    *v53 = v6;
    _os_log_impl(&dword_273ECD000, v31, v33, "network changed: %@", &v52, 0xCu);
  }

  v35 = WFLogForCategory(0);
  v36 = OSLogForWFLogLevel(3uLL);
  v37 = v36;
  if (WFCurrentLogLevel(v36, v38) >= 3 && v35)
  {
    v39 = v35;
    if (os_log_type_enabled(v39, v37))
    {
      isAssociating = [(WFNetworkListController *)self isAssociating];
      associationContext = [(WFNetworkListController *)self associationContext];
      network2 = [associationContext network];
      v52 = 67109378;
      *v53 = isAssociating;
      *&v53[4] = 2112;
      *&v53[6] = network2;
      _os_log_impl(&dword_273ECD000, v39, v37, "isAssociating: %d associating network %@", &v52, 0x12u);
    }
  }

  if ([(WFNetworkListController *)self isAssociating])
  {
    gasController = WFLogForCategory(0);
    v44 = OSLogForWFLogLevel(2uLL);
    v45 = v44;
    if (WFCurrentLogLevel(v44, v46) >= 2 && gasController && os_log_type_enabled(gasController, v45))
    {
      LOWORD(v52) = 0;
      _os_log_impl(&dword_273ECD000, gasController, v45, "networkChanged callback during association with nil network", &v52, 2u);
    }

LABEL_44:

    goto LABEL_45;
  }

  [(WFNetworkListController *)self _updateViewControllerConnectedNetwork:v6];
  if ([(WFNetworkListController *)self isHS20Supported])
  {
    if (v6)
    {
      if ([v6 isHotspot20])
      {
        matchingKnownNetworkProfile = [v6 matchingKnownNetworkProfile];

        if (!matchingKnownNetworkProfile)
        {
          v48 = WFLogForCategory(0);
          v49 = OSLogForWFLogLevel(3uLL);
          v50 = v49;
          if (WFCurrentLogLevel(v49, v51) >= 3 && v48 && os_log_type_enabled(v48, v50))
          {
            v52 = 136315138;
            *v53 = "[WFNetworkListController _networkDidChangeNotification:]";
            _os_log_impl(&dword_273ECD000, v48, v50, "%s: new network is HS20, resolving profile", &v52, 0xCu);
          }

          gasController = [(WFNetworkListController *)self gasController];
          [gasController resolveProfileForNetwork:v6 handler:&__block_literal_global_457 force:1];
          goto LABEL_44;
        }
      }
    }
  }

LABEL_45:
}

void __57__WFNetworkListController__networkDidChangeNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = WFLogForCategory(5uLL);
  v7 = OSLogForWFLogLevel(1uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) && v6 && os_log_type_enabled(v6, v8))
  {
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_273ECD000, v6, v8, "resolved profile %@ error %@", &v10, 0x16u);
  }
}

- (void)_networkLinkQualityDidChangeNotification:(id)notification
{
  v33 = *MEMORY[0x277D85DE8];
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:@"WFInterfaceLinkQualityKey"];

  if (v5)
  {
    [(WFNetworkListController *)self setLatestLinkQuality:v5];
    viewController = [(WFNetworkListController *)self viewController];
    currentNetwork = [viewController currentNetwork];

    if (currentNetwork)
    {
      v8 = WFLogForCategory(0);
      v9 = OSLogForWFLogLevel(3uLL);
      v10 = v9;
      if (WFCurrentLogLevel(v9, v11) >= 3 && v8)
      {
        v12 = v8;
        if (os_log_type_enabled(v12, v10))
        {
          [v5 scaledRssi];
          v14 = v13;
          [v5 scaledRssi];
          v27 = 136315650;
          v28 = "[WFNetworkListController _networkLinkQualityDidChangeNotification:]";
          v29 = 2048;
          v30 = v14;
          v31 = 2048;
          v32 = WFSignalBarsFromScaledRSSI();
          _os_log_impl(&dword_273ECD000, v12, v10, "%s: linkQuality.scaledRssi %f bars %ld", &v27, 0x20u);
        }
      }

      viewController2 = [(WFNetworkListController *)self viewController];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        [v5 scaledRssi];
        v17 = WFSignalBarsFromScaledRSSI();
        viewController3 = [(WFNetworkListController *)self viewController];
        [viewController3 setCurrentNetworkSignalBars:v17];
      }

      else
      {
        if (os_signpost_enabled(MEMORY[0x277D86220]))
        {
          LOWORD(v27) = 0;
          _os_signpost_emit_with_name_impl(&dword_273ECD000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "set currentNetworkScaledRSSI", &unk_273F79F46, &v27, 2u);
        }

        [v5 scaledRssi];
        v20 = v19;
        viewController4 = [(WFNetworkListController *)self viewController];
        LODWORD(v22) = v20;
        [viewController4 setCurrentNetworkScaledRSSI:v22];

        if (os_signpost_enabled(MEMORY[0x277D86220]))
        {
          LOWORD(v27) = 0;
          _os_signpost_emit_with_name_impl(&dword_273ECD000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "set currentNetworkScaledRSSI", &unk_273F79F46, &v27, 2u);
        }
      }
    }

    viewController5 = [(WFNetworkListController *)self viewController];
    if ([viewController5 currentNetworkState] == 1)
    {
      interface = [(WFNetworkListController *)self interface];
      ipv4SelfAssigned = [interface ipv4SelfAssigned];

      if (ipv4SelfAssigned)
      {
LABEL_18:

        goto LABEL_19;
      }

      viewController5 = [(WFNetworkListController *)self interface];
      currentNetwork2 = [viewController5 currentNetwork];
      [(WFNetworkListController *)self _updateCurrentNetworkIPState:currentNetwork2];
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (void)_interfaceDidBecomeAvailable:(id)available
{
  v17 = *MEMORY[0x277D85DE8];
  wifiClient = [(WFNetworkListController *)self wifiClient];
  interface = [wifiClient interface];

  if (interface)
  {
    interface2 = [(WFNetworkListController *)self interface];

    if (!interface2)
    {
      [(WFNetworkListController *)self _setupWithInterface:interface];
    }

    [(WFNetworkListController *)self setInterface:interface];
    [(WFNetworkListController *)self _updateViewControllerDisabled];
    [(WFNetworkListController *)self _updatePowerState];
    if (-[WFNetworkListController isSetup](self, "isSetup") && (-[WFNetworkListController viewController](self, "viewController"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, (v8 & 1) != 0) && (-[WFNetworkListController viewController](self, "viewController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 networkListVisible], v9, (v10 & 1) == 0))
    {
      v11 = WFLogForCategory(0);
      v12 = OSLogForWFLogLevel(3uLL);
      v13 = v12;
      if (WFCurrentLogLevel(v12, v14) >= 3 && v11 && os_log_type_enabled(v11, v13))
      {
        v15 = 136315138;
        v16 = "[WFNetworkListController _interfaceDidBecomeAvailable:]";
        _os_log_impl(&dword_273ECD000, v11, v13, "%s: Skipping scanning for setup until wifi page is visible", &v15, 0xCu);
      }
    }

    else
    {
      [(WFNetworkListController *)self startScanning];
    }
  }

  else
  {
    [WFNetworkListController _interfaceDidBecomeAvailable:];
  }
}

- (void)_clientRestartedNotification:(id)notification
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4)
  {
    v8 = v4;
    if (os_log_type_enabled(v8, v6))
    {
      v9 = 136315394;
      v10 = "[WFNetworkListController _clientRestartedNotification:]";
      v11 = 2048;
      powerState = [(WFNetworkListController *)self powerState];
      _os_log_impl(&dword_273ECD000, v8, v6, "%s: power state %lu", &v9, 0x16u);
    }
  }

  [(WFNetworkListController *)self _updatePowerState];
}

- (void)_wifiPropertyDidChanged:(id)changed
{
  v38 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  changedCopy = changed;
  obj = [changedCopy userInfo];
  v4 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v32;
    *&v5 = 134217984;
    v28 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        if ([v9 isEqualToString:{@"kWFClientUserInterfacePropertyATJKey", v28}])
        {
          userInfo = [changedCopy userInfo];
          v11 = [userInfo objectForKey:@"kWFClientUserInterfacePropertyATJKey"];

          integerValue = [v11 integerValue];
          viewController = [(WFNetworkListController *)self viewController];
          v14 = objc_opt_respondsToSelector();

          if (v14)
          {
            v15 = WFLogForCategory(0);
            v16 = OSLogForWFLogLevel(3uLL);
            v17 = v16;
            if (WFCurrentLogLevel(v16, v18) >= 3 && v15 && os_log_type_enabled(v15, v17))
            {
              *buf = v28;
              v36 = integerValue;
              _os_log_impl(&dword_273ECD000, v15, v17, "setting ask to join mode to %ld", buf, 0xCu);
            }

            viewController2 = [(WFNetworkListController *)self viewController];
            [viewController2 setAskToJoinMode:integerValue];
LABEL_20:
          }
        }

        else
        {
          if (![v9 isEqualToString:@"kWFClientUserInterfacePropertyHotspotAJKey"])
          {
            continue;
          }

          userInfo2 = [changedCopy userInfo];
          v11 = [userInfo2 objectForKey:@"kWFClientUserInterfacePropertyHotspotAJKey"];

          integerValue2 = [v11 integerValue];
          viewController3 = [(WFNetworkListController *)self viewController];
          v23 = objc_opt_respondsToSelector();

          if (v23)
          {
            v24 = WFLogForCategory(0);
            v25 = OSLogForWFLogLevel(3uLL);
            v26 = v25;
            if (WFCurrentLogLevel(v25, v27) >= 3 && v24 && os_log_type_enabled(v24, v26))
            {
              *buf = v28;
              v36 = integerValue2;
              _os_log_impl(&dword_273ECD000, v24, v26, "setting auto hotspot join option to %ld", buf, 0xCu);
            }

            viewController2 = [(WFNetworkListController *)self viewController];
            [viewController2 setAutoInstantHotspotJoinOption:integerValue2];
            goto LABEL_20;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v6);
  }
}

- (void)_preferredNetworksDidChange:(id)change
{
  v45 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277D02AA0]];

  userInfo2 = [changeCopy userInfo];

  v8 = [userInfo2 objectForKey:*MEMORY[0x277D02A98]];
  integerValue = [v8 integerValue];

  if ([(WFNetworkListController *)self viewControllerSupportsCurrentNetworkSubtitle])
  {
    interface = [(WFNetworkListController *)self interface];
    currentNetwork = [interface currentNetwork];

    if (currentNetwork)
    {
      if ([(WFNetworkListController *)self isAssociating]|| (integerValue - 3) < 0xFFFFFFFFFFFFFFFELL)
      {
        ssid = WFLogForCategory(0);
        v23 = OSLogForWFLogLevel(1uLL);
        v24 = v23;
        if (WFCurrentLogLevel(v23, v25) && ssid && os_log_type_enabled(ssid, v24))
        {
          v39 = 136315138;
          v40 = "[WFNetworkListController _preferredNetworksDidChange:]";
          _os_log_impl(&dword_273ECD000, ssid, v24, "%s: preferred network change, do not update health subtitle while associating", &v39, 0xCu);
        }
      }

      else
      {
        interface2 = [(WFNetworkListController *)self interface];
        currentNetwork2 = [interface2 currentNetwork];
        ssid = [currentNetwork2 ssid];

        networkName = [v6 networkName];
        v16 = [networkName isEqualToString:ssid];

        v17 = WFLogForCategory(0);
        v18 = OSLogForWFLogLevel(3uLL);
        v19 = v18;
        v22 = WFCurrentLogLevel(v18, v20) > 2 && v17 != 0;
        if (v16)
        {
          if (v22 && os_log_type_enabled(v17, v19))
          {
            v39 = 136315138;
            v40 = "[WFNetworkListController _preferredNetworksDidChange:]";
            _os_log_impl(&dword_273ECD000, v17, v19, "%s: preferred network modified, updating health subtitle", &v39, 0xCu);
          }

          [(WFNetworkListController *)self _updateHealthSubtitle];
        }

        else
        {
          if (v22 && os_log_type_enabled(v17, v19))
          {
            v39 = 136315138;
            v40 = "[WFNetworkListController _preferredNetworksDidChange:]";
            _os_log_impl(&dword_273ECD000, v17, v19, "%s: preferred network modified, will not update health subtitle ", &v39, 0xCu);
          }
        }
      }
    }
  }

  accessoryIdentifier = [v6 accessoryIdentifier];

  if (accessoryIdentifier)
  {
    v27 = integerValue == 2;
  }

  else
  {
    v27 = 0;
  }

  if (v27)
  {
    networks = [(WFNetworkListController *)self networks];
    networkName2 = [v6 networkName];
    v30 = [networks scanRecordWithSSID:networkName2];

    v31 = WFLogForCategory(0);
    v32 = OSLogForWFLogLevel(3uLL);
    v33 = v32;
    v36 = WFCurrentLogLevel(v32, v34) > 2 && v31 != 0;
    if (v30)
    {
      if (v36)
      {
        v37 = v31;
        if (os_log_type_enabled(v37, v33))
        {
          displayFriendlyName = [v6 displayFriendlyName];
          v39 = 136315650;
          v40 = "[WFNetworkListController _preferredNetworksDidChange:]";
          v41 = 2112;
          v42 = displayFriendlyName;
          v43 = 2112;
          v44 = v6;
          _os_log_impl(&dword_273ECD000, v37, v33, "%s found matching scan result, displayName='%@' profile='%@'", &v39, 0x20u);
        }
      }

      [v30 setMatchingKnownNetworkProfile:v6];
      v31 = [MEMORY[0x277CBEB98] setWithObject:v30];
      [(WFNetworkListController *)self _updateViewsForNetworks:v31];
    }

    else if (v36 && os_log_type_enabled(v31, v33))
    {
      v39 = 136315394;
      v40 = "[WFNetworkListController _preferredNetworksDidChange:]";
      v41 = 2112;
      v42 = v6;
      _os_log_impl(&dword_273ECD000, v31, v33, "%s updated network was an accessory but was not found in the scan results profile='%@'", &v39, 0x16u);
    }
  }
}

- (void)hotspotInterfaceDidUpdateNetworks:(id)networks
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(WFNetworkListController *)self scanForPersonalHotspots]&& [(WFNetworkListController *)self canScanForPersonalHotspots])
  {

    [(WFNetworkListController *)self _updateViewControllerScanResults];
  }

  else
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(3uLL);
    v6 = v5;
    if (WFCurrentLogLevel(v5, v7) >= 3 && v4)
    {
      v8 = v4;
      if (os_log_type_enabled(v8, v6))
      {
        v9 = 136315650;
        v10 = "[WFNetworkListController hotspotInterfaceDidUpdateNetworks:]";
        v11 = 1024;
        scanForPersonalHotspots = [(WFNetworkListController *)self scanForPersonalHotspots];
        v13 = 1024;
        canScanForPersonalHotspots = [(WFNetworkListController *)self canScanForPersonalHotspots];
        _os_log_impl(&dword_273ECD000, v8, v6, "%s: hotspot scanning disabled (scan %d, canScan %d)", &v9, 0x18u);
      }
    }

    [(WFNetworkListController *)self _stopHotspotScan];
  }
}

- (BOOL)isAirPortSettings
{
  viewController = [(WFNetworkListController *)self viewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isSetup
{
  viewController = [(WFNetworkListController *)self viewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_useLegacySettingsUI
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"WiFiDisableNewSettingsUI", @"com.apple.settings.airport", &keyExistsAndHasValidFormat))
  {
    v2 = 1;
  }

  else
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  return !v2;
}

- (void)_updateViewControllerDisabled
{
  v24 = *MEMORY[0x277D85DE8];
  viewController = [(WFNetworkListController *)self viewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    interface = [(WFNetworkListController *)self interface];

    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(3uLL);
    v8 = v7;
    if (WFCurrentLogLevel(v7, v9) >= 3 && v6)
    {
      v10 = v6;
      if (os_log_type_enabled(v10, v8))
      {
        viewController2 = [(WFNetworkListController *)self viewController];
        v18 = 136315650;
        v19 = "[WFNetworkListController _updateViewControllerDisabled]";
        v20 = 2112;
        v21 = viewController2;
        v22 = 1024;
        v23 = interface == 0;
        _os_log_impl(&dword_273ECD000, v10, v8, "%s: setting view controller %@ disabled %d", &v18, 0x1Cu);
      }
    }

    v12 = interface == 0;

    viewController3 = [(WFNetworkListController *)self viewController];
    [viewController3 setDisabled:v12];
  }

  else
  {
    viewController3 = WFLogForCategory(0);
    v14 = OSLogForWFLogLevel(3uLL);
    v15 = v14;
    if (WFCurrentLogLevel(v14, v16) >= 3 && viewController3)
    {
      viewController3 = viewController3;
      if (os_log_type_enabled(viewController3, v15))
      {
        viewController4 = [(WFNetworkListController *)self viewController];
        v18 = 136315394;
        v19 = "[WFNetworkListController _updateViewControllerDisabled]";
        v20 = 2112;
        v21 = viewController4;
        _os_log_impl(&dword_273ECD000, viewController3, v15, "%s: view controller %@ doesn't support disabled state", &v18, 0x16u);
      }
    }
  }
}

- (void)_updateHS20NetworksWithProfiles:(id)profiles names:(id)names
{
  profilesCopy = profiles;
  namesCopy = names;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __65__WFNetworkListController__updateHS20NetworksWithProfiles_names___block_invoke;
  v16 = &unk_279EBD878;
  selfCopy = self;
  v8 = profilesCopy;
  v18 = v8;
  [namesCopy enumerateObjectsUsingBlock:&v13];
  v9 = [(WFNetworkListController *)self viewController:v13];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    viewController = [(WFNetworkListController *)self viewController];
    v12 = [MEMORY[0x277CBEB98] setWithArray:namesCopy];
    [viewController reloadCellsForNetworkNames:v12];
  }
}

void __65__WFNetworkListController__updateHS20NetworksWithProfiles_names___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) networks];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__WFNetworkListController__updateHS20NetworksWithProfiles_names___block_invoke_2;
  v8[3] = &unk_279EBD850;
  v9 = v5;
  v10 = *(a1 + 40);
  v11 = a3;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __65__WFNetworkListController__updateHS20NetworksWithProfiles_names___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 ssid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    v5 = [*(a1 + 40) objectAtIndex:*(a1 + 48)];
    v6 = [v5 HS20Badge];
    [v7 setHotspot20Name:v6];
  }
}

- (void)_stateMonitorChangedStates:(int64_t)states oldState:(int64_t)state
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7)
  {
    v11 = v7;
    if (os_log_type_enabled(v11, v9))
    {
      v12 = WFWiFiStateMonitorStringForState(state);
      v13 = WFWiFiStateMonitorStringForState(states);
      v22 = 136315650;
      v23 = "[WFNetworkListController _stateMonitorChangedStates:oldState:]";
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_273ECD000, v11, v9, "%s: %@ to %@", &v22, 0x20u);
    }
  }

  viewController = [(WFNetworkListController *)self viewController];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    interface = [(WFNetworkListController *)self interface];
    currentNetwork = [interface currentNetwork];
    if ([currentNetwork carPlayType] == 1)
    {

      v18 = 1;
    }

    else
    {
      wifiClient = [(WFNetworkListController *)self wifiClient];
      isCellularOutrankingWiFi = [wifiClient isCellularOutrankingWiFi];

      if (states == 2)
      {
        v18 = isCellularOutrankingWiFi;
      }

      else
      {
        v18 = 1;
      }
    }

    viewController2 = [(WFNetworkListController *)self viewController];
    [viewController2 setUserAutoJoinEnabled:v18];
  }
}

- (void)_dismissCredentialsViewControllerWithContext:(id)context
{
  v13 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      provider = [contextCopy provider];
      v11 = 138412290;
      v12 = provider;
      _os_log_impl(&dword_273ECD000, v9, v7, "Dismissing credentials view controller %@", &v11, 0xCu);
    }
  }

  [(WFNetworkListController *)self _dismissViewControllerForContext:contextCopy];
  [(WFNetworkListController *)self setCredentialsContext:0];
}

- (void)_dismissTrustViewControllerWithContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v13 = 138412290;
    v14 = contextCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "Dismissing trust view controller %@", &v13, 0xCu);
  }

  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(3uLL);
  v11 = v10;
  if (WFCurrentLogLevel(v10, v12) >= 3 && v9 && os_log_type_enabled(v9, v11))
  {
    v13 = 136315650;
    v14 = "[WFNetworkListController _dismissTrustViewControllerWithContext:]";
    v15 = 2112;
    v16 = contextCopy;
    v17 = 2112;
    v18 = contextCopy;
    _os_log_impl(&dword_273ECD000, v9, v11, "%s: presentingVc %@ credentialsVc %@", &v13, 0x20u);
  }

  [(WFNetworkListController *)self _dismissViewControllerForContext:contextCopy];
  [(WFNetworkListController *)self setCertificateContext:0];
}

- (void)_dismissDetailsViewControllerWithContext:(id)context
{
  v13 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      provider = [contextCopy provider];
      v11 = 138412290;
      v12 = provider;
      _os_log_impl(&dword_273ECD000, v9, v7, "Dismissing details view controller %@", &v11, 0xCu);
    }
  }

  [(WFNetworkListController *)self _dismissViewControllerForContext:contextCopy];
  [(WFNetworkListController *)self setDetailsContext:0];
}

- (void)_dismissErrorViewControllerWithContext:(id)context
{
  v13 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      provider = [contextCopy provider];
      v11 = 138412290;
      v12 = provider;
      _os_log_impl(&dword_273ECD000, v9, v7, "Dismissing error view controller %@", &v11, 0xCu);
    }
  }

  [(WFNetworkListController *)self _dismissViewControllerForContext:contextCopy];
}

- (void)_dismissLockdownModeViewControllerWithContext:(id)context
{
  v13 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      provider = [contextCopy provider];
      v11 = 138412290;
      v12 = provider;
      _os_log_impl(&dword_273ECD000, v9, v7, "Dismissing lockdown mode view controller %@", &v11, 0xCu);
    }
  }

  [(WFNetworkListController *)self _dismissViewControllerForContext:contextCopy];
}

- (void)_dismissOtherNetworkViewControllerWithContext:(id)context
{
  v13 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      provider = [contextCopy provider];
      v11 = 138412290;
      v12 = provider;
      _os_log_impl(&dword_273ECD000, v9, v7, "Dismissing other network view controller %@", &v11, 0xCu);
    }
  }

  [(WFNetworkListController *)self _dismissViewControllerForContext:contextCopy];
  [(WFNetworkListController *)self _resumeScanning];
  [(WFNetworkListController *)self setCredentialsContext:0];
}

- (void)_dismissViewControllerForContext:(id)context
{
  v55 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  viewProvider = [(WFNetworkListController *)self viewProvider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(3uLL);
    v9 = v8;
    if (WFCurrentLogLevel(v8, v10) >= 3 && v7)
    {
      v11 = v7;
      if (os_log_type_enabled(v11, v9))
      {
        viewProvider2 = [(WFNetworkListController *)self viewProvider];
        v51 = 136315394;
        v52 = "[WFNetworkListController _dismissViewControllerForContext:]";
        v53 = 2112;
        v54 = viewProvider2;
        _os_log_impl(&dword_273ECD000, v11, v9, "%s: provider (%@) handling dismissal", &v51, 0x16u);
      }
    }

    viewProvider3 = [(WFNetworkListController *)self viewProvider];
    provider = [contextCopy provider];
    [viewProvider3 dismissNetworkViewController:provider forContext:contextCopy];
  }

  else
  {
    if (![contextCopy needsDismissal])
    {
      goto LABEL_36;
    }

    provider2 = [contextCopy provider];
    v16 = objc_opt_respondsToSelector();

    if ((v16 & 1) != 0 && ([contextCopy provider], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "wantsModalPresentation"), v17, v18))
    {
      provider3 = [contextCopy provider];
      v20 = objc_opt_respondsToSelector();

      v21 = WFLogForCategory(0);
      v22 = OSLogForWFLogLevel(3uLL);
      v23 = v22;
      v26 = WFCurrentLogLevel(v22, v24) > 2 && v21 != 0;
      if (v20)
      {
        if (v26)
        {
          v27 = v21;
          if (os_log_type_enabled(v27, v23))
          {
            provider4 = [contextCopy provider];
            v51 = 138412290;
            v52 = provider4;
            _os_log_impl(&dword_273ECD000, v27, v23, "dismissing provider: %@", &v51, 0xCu);
          }
        }

        provider5 = [contextCopy provider];
      }

      else
      {
        if (v26)
        {
          v38 = v21;
          if (os_log_type_enabled(v38, v23))
          {
            viewController = [(WFNetworkListController *)self viewController];
            v51 = 138412290;
            v52 = viewController;
            _os_log_impl(&dword_273ECD000, v38, v23, "dismissing view controller: %@", &v51, 0xCu);
          }
        }

        provider5 = [(WFNetworkListController *)self viewController];
      }

      viewProvider3 = provider5;
      [provider5 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      v30 = WFLogForCategory(0);
      v31 = OSLogForWFLogLevel(3uLL);
      v32 = v31;
      if (WFCurrentLogLevel(v31, v33) >= 3 && v30)
      {
        v34 = v30;
        if (os_log_type_enabled(v34, v32))
        {
          provider6 = [contextCopy provider];
          viewController2 = [(WFNetworkListController *)self viewController];
          navigationController = [viewController2 navigationController];
          v51 = 138412546;
          v52 = provider6;
          v53 = 2112;
          v54 = navigationController;
          _os_log_impl(&dword_273ECD000, v34, v32, "dismissing non-modal: %@ (navigationController: %@)", &v51, 0x16u);
        }
      }

      viewProvider3 = [(WFNetworkListController *)self viewController];
      [viewProvider3 wf_popViewControllerAnimated:1];
    }
  }

LABEL_36:
  viewProvider4 = [(WFNetworkListController *)self viewProvider];
  v41 = objc_opt_respondsToSelector();

  if (v41)
  {
    viewProvider5 = [(WFNetworkListController *)self viewProvider];
    provider7 = [contextCopy provider];
    [viewProvider5 didDismissNetworkViewController:provider7 forContext:contextCopy];
  }

  [(WFNetworkListController *)self setVisibleContext:0];
  detailsContext = [(WFNetworkListController *)self detailsContext];

  if (detailsContext)
  {
    v45 = WFLogForCategory(0);
    v46 = OSLogForWFLogLevel(3uLL);
    v47 = v46;
    if (WFCurrentLogLevel(v46, v48) >= 3 && v45)
    {
      v49 = v45;
      if (os_log_type_enabled(v49, v47))
      {
        detailsContext2 = [(WFNetworkListController *)self detailsContext];
        v51 = 138412290;
        v52 = detailsContext2;
        _os_log_impl(&dword_273ECD000, v49, v47, "clearing detailsContext='%@'", &v51, 0xCu);
      }
    }

    [(WFNetworkListController *)self setDetailsContext:0];
  }
}

- (void)_dismissVisibleContext
{
  v15 = *MEMORY[0x277D85DE8];
  visibleContext = [(WFNetworkListController *)self visibleContext];

  if (visibleContext)
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(3uLL);
    v6 = v5;
    if (WFCurrentLogLevel(v5, v7) >= 3 && v4)
    {
      v8 = v4;
      if (os_log_type_enabled(v8, v6))
      {
        visibleContext2 = [(WFNetworkListController *)self visibleContext];
        v11 = 136315394;
        v12 = "[WFNetworkListController _dismissVisibleContext]";
        v13 = 2112;
        v14 = visibleContext2;
        _os_log_impl(&dword_273ECD000, v8, v6, "%s: dismissing context %@", &v11, 0x16u);
      }
    }

    visibleContext3 = [(WFNetworkListController *)self visibleContext];
    [(WFNetworkListController *)self _dismissViewControllerForContext:visibleContext3];
  }
}

- (BOOL)handleURL:(id)l
{
  v110 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    *buf = 136315394;
    v105 = "[WFNetworkListController handleURL:]";
    v106 = 2112;
    *v107 = lCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: handling URL %@", buf, 0x16u);
  }

  v9 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
  v10 = v9;
  if (!v9)
  {
    [WFNetworkListController handleURL:];
    v94 = 0;
    v95 = 0;
    lastObject = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v12 = 0;
LABEL_91:
    v26 = 0;
    v27 = 0;
    v96 = 0;
    goto LABEL_92;
  }

  path = [v9 path];
  v12 = path;
  if (!path)
  {
    [WFNetworkListController handleURL:];
    v94 = 0;
    v95 = 0;
    lastObject = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_91;
  }

  if ([(WFNetworkScanRecord *)path hasPrefix:@"/"])
  {
    v13 = [(WFNetworkScanRecord *)v12 substringFromIndex:1];

    v12 = v13;
  }

  stringByRemovingPercentEncoding = [(WFNetworkScanRecord *)v12 stringByRemovingPercentEncoding];

  v15 = [stringByRemovingPercentEncoding componentsSeparatedByString:@"#"];
  firstObject = [v15 firstObject];
  if ([v15 count] < 2)
  {
    lastObject = 0;
  }

  else
  {
    lastObject = [v15 lastObject];
  }

  v18 = WFLogForCategory(0);
  v19 = OSLogForWFLogLevel(3uLL);
  v20 = v19;
  if (WFCurrentLogLevel(v19, v21) >= 3 && v18 && os_log_type_enabled(v18, v20))
  {
    *buf = 136315906;
    v105 = "[WFNetworkListController handleURL:]";
    v106 = 2112;
    *v107 = stringByRemovingPercentEncoding;
    *&v107[8] = 2112;
    *&v107[10] = firstObject;
    v108 = 2112;
    v109 = lastObject;
    _os_log_impl(&dword_273ECD000, v18, v20, "%s: path=%@, firstPathComponent=%@, offset=%@", buf, 0x2Au);
  }

  v95 = firstObject;
  v96 = stringByRemovingPercentEncoding;
  v94 = v15;
  if (![firstObject isEqualToString:@"NetworkDetails"] || !lastObject)
  {
    v93 = lastObject;
    if ([stringByRemovingPercentEncoding isEqualToString:@"NetworkDetails"])
    {
      v22 = [(WFNetworkListController *)self _handleCurrentNetworkDetailsURL:0];
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v12 = 0;
      v26 = 0;
      v27 = 0;
LABEL_21:
      lastObject = v93;
      goto LABEL_55;
    }

    if ([stringByRemovingPercentEncoding isEqualToString:@"WiFiPower"])
    {
      viewController = [(WFNetworkListController *)self viewController];
      v29 = objc_opt_respondsToSelector();

      if (v29)
      {
        viewController2 = [(WFNetworkListController *)self viewController];
        [viewController2 scrollToAirportCell:1];
      }
    }

    if ([stringByRemovingPercentEncoding isEqualToString:@"AskToJoin"])
    {
      viewController3 = [(WFNetworkListController *)self viewController];
      v32 = objc_opt_respondsToSelector();

      if (v32)
      {
        viewController4 = [(WFNetworkListController *)self viewController];
        [viewController4 scrollToAirportCell:2];
      }
    }

    if ([stringByRemovingPercentEncoding isEqualToString:@"AutoJoinHotspot"])
    {
      viewController5 = [(WFNetworkListController *)self viewController];
      v35 = objc_opt_respondsToSelector();

      if (v35)
      {
        viewController6 = [(WFNetworkListController *)self viewController];
        [viewController6 scrollToAirportCell:3];
      }
    }

    if (([stringByRemovingPercentEncoding isEqualToString:@"Credentials"] & 1) != 0 || objc_msgSend(stringByRemovingPercentEncoding, "isEqualToString:", @"TrustEnterprise"))
    {
      v102 = 0;
      v12 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:@"/var/mobile/Library/Caches/com.apple.wifi/LastEnterpriseNetwork.plist" options:0 error:&v102];
      v24 = v102;
      if (v12)
      {
        v88 = v12;
        v26 = [MEMORY[0x277CCAC58] propertyListWithData:v12 options:0 format:0 error:0];
        v23 = WiFiNetworkCreate();
        if (!v23)
        {
          [WFNetworkListController handleURL:];
          v25 = 0;
          v12 = 0;
          v22 = 0;
          v27 = v88;
          goto LABEL_55;
        }

        v12 = [[WFNetworkScanRecord alloc] initWithNetworkRef:v23];
        v37 = [[WFNetworkProfile alloc] initWithNetworkRef:v23];
        v25 = v37;
        v91 = v10;
        cf = v23;
        if (v12)
        {
          if (v37)
          {
            v89 = lCopy;
            networks = [(WFNetworkListController *)self networks];
            v23 = [networks mutableCopy];

            if (!v23)
            {
              v23 = [MEMORY[0x277CBEB58] set];
            }

            [v23 addObject:v12];
            [(WFNetworkListController *)self setNetworks:v23];
            [(WFNetworkListController *)self _updateViewControllerScanResults];
            viewController7 = [(WFNetworkListController *)self viewController];
            v40 = objc_opt_respondsToSelector();

            viewController8 = [(WFNetworkListController *)self viewController];
            v42 = viewController8;
            if (v40)
            {
              [viewController8 setCurrentNetwork:v12 previousNetwork:0 reason:0];
            }

            else
            {
              [viewController8 setCurrentNetwork:v12];
            }

            if ([v96 isEqualToString:@"Credentials"])
            {
              credentialsContext = [(WFNetworkListController *)self credentialsContext];

              if (credentialsContext)
              {
                credentialsContext2 = [(WFNetworkListController *)self credentialsContext];
                [credentialsContext2 cancel];
              }

              [(WFNetworkListController *)self _associationWillStart:v12];
              associationContext = [(WFNetworkListController *)self associationContext];
              [associationContext setState:2];

              [(WFNetworkListController *)self _promptCredentialsForNetwork:v12 profile:v25];
            }

            else if ([v96 isEqualToString:@"TrustEnterprise"])
            {
              certificateChain = [(WFNetworkProfile *)v25 certificateChain];

              if (!certificateChain)
              {
                v50 = WFLogForCategory(0);
                v84 = OSLogForWFLogLevel(1uLL);
                v85 = v84;
                v22 = 0;
                if (WFCurrentLogLevel(v84, v86) && v50)
                {
                  if (os_log_type_enabled(v50, v85))
                  {
                    *buf = 136315394;
                    v105 = "[WFNetworkListController handleURL:]";
                    v106 = 2112;
                    *v107 = v25;
                    _os_log_impl(&dword_273ECD000, v50, v85, "%s: certificate chain is nil for profile %@", buf, 0x16u);
                  }

                  v22 = 0;
                }

                lCopy = v89;
                goto LABEL_54;
              }

              [(WFNetworkListController *)self _associationWillStart:v12];
              associationContext2 = [(WFNetworkListController *)self associationContext];
              [associationContext2 setState:2];

              certificateChain2 = [(WFNetworkProfile *)v25 certificateChain];
              [(WFNetworkListController *)self _promptTrustCertificateForNetwork:v12 certificateChain:certificateChain2 profile:v25 autoJoin:1];
            }

            v49 = WFScanRecordDeleteEnterprisePath();
            v101 = v24;
            v50 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:@"/var/mobile/Library/Caches/com.apple.wifi/LastEnterpriseNetwork.plist" options:0 error:&v101];
            v51 = v101;

            v52 = WFLogForCategory(0);
            v53 = OSLogForWFLogLevel(3uLL);
            v54 = v53;
            lCopy = v89;
            if (WFCurrentLogLevel(v53, v55) >= 3 && v52 && os_log_type_enabled(v52, v54))
            {
              *buf = 136315650;
              v105 = "[WFNetworkListController handleURL:]";
              v106 = 1024;
              *v107 = v49;
              *&v107[4] = 2112;
              *&v107[6] = v50;
              _os_log_impl(&dword_273ECD000, v52, v54, "%s: LastEnterpriseNetwork deletion successful: %d data: %@", buf, 0x1Cu);
            }

            v22 = 1;
            v24 = v51;
LABEL_54:
            v10 = v91;

            CFRelease(cf);
            lastObject = v93;
            v27 = v88;
            goto LABEL_55;
          }

          v50 = WFLogForCategory(0);
          v81 = OSLogForWFLogLevel(1uLL);
          v82 = v81;
          v22 = 0;
          v23 = 0;
          if (!WFCurrentLogLevel(v81, v83) || !v50)
          {
            v25 = 0;
            goto LABEL_54;
          }

          if (os_log_type_enabled(v50, v82))
          {
            *buf = 136315394;
            v105 = "[WFNetworkListController handleURL:]";
            v106 = 2112;
            *v107 = cf;
            _os_log_impl(&dword_273ECD000, v50, v82, "%s: unable to create network profile for enterprise networkRef %@", buf, 0x16u);
          }

          v23 = 0;
          v25 = 0;
        }

        else
        {
          v50 = WFLogForCategory(0);
          v78 = OSLogForWFLogLevel(1uLL);
          v79 = v78;
          v22 = 0;
          v23 = 0;
          if (!WFCurrentLogLevel(v78, v80) || !v50)
          {
            goto LABEL_54;
          }

          if (os_log_type_enabled(v50, v79))
          {
            *buf = 136315394;
            v105 = "[WFNetworkListController handleURL:]";
            v106 = 2112;
            *v107 = cf;
            _os_log_impl(&dword_273ECD000, v50, v79, "%s: unable to create scan record for enterprise networkRef %@", buf, 0x16u);
          }

          v23 = 0;
        }

        v22 = 0;
        goto LABEL_54;
      }

      [WFNetworkListController handleURL:];
      v23 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
LABEL_92:
      v22 = 0;
      goto LABEL_55;
    }

    if (![firstObject isEqualToString:@"AccessoryDetails"])
    {
      if ([stringByRemovingPercentEncoding isEqualToString:@"proxycredentials"])
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v12 = 0;
        v26 = 0;
        v27 = 0;
        v22 = 1;
        goto LABEL_55;
      }

      v66 = WFLogForCategory(0);
      v67 = OSLogForWFLogLevel(1uLL);
      v68 = v67;
      if (WFCurrentLogLevel(v67, v69) && v66 && os_log_type_enabled(v66, v68))
      {
        *buf = 136315394;
        v105 = "[WFNetworkListController handleURL:]";
        v106 = 2112;
        *v107 = stringByRemovingPercentEncoding;
        _os_log_impl(&dword_273ECD000, v66, v68, "%s: unknown path param %@", buf, 0x16u);
      }

      v23 = 0;
      v24 = 0;
      v25 = 0;
      v12 = 0;
      v26 = 0;
      v27 = 0;
      v22 = 0;
      goto LABEL_21;
    }

    if (lastObject && [lastObject length])
    {
      value = lastObject;
    }

    else
    {
      v90 = lCopy;
      v92 = v10;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      queryItems = [v10 queryItems];
      v59 = [queryItems countByEnumeratingWithState:&v97 objects:v103 count:16];
      if (!v59)
      {
LABEL_70:

        value = 0;
        lCopy = v90;
        v10 = v92;
        goto LABEL_83;
      }

      v60 = v59;
      v61 = *v98;
LABEL_64:
      v62 = 0;
      while (1)
      {
        if (*v98 != v61)
        {
          objc_enumerationMutation(queryItems);
        }

        v63 = *(*(&v97 + 1) + 8 * v62);
        name = [v63 name];
        v65 = [name isEqualToString:@"identifier"];

        if (v65)
        {
          break;
        }

        if (v60 == ++v62)
        {
          v60 = [queryItems countByEnumeratingWithState:&v97 objects:v103 count:16];
          if (v60)
          {
            goto LABEL_64;
          }

          goto LABEL_70;
        }
      }

      value = [v63 value];

      lCopy = v90;
      v10 = v92;
      if (!value)
      {
        goto LABEL_83;
      }
    }

    if ([value length])
    {
      v70 = WFLogForCategory(0);
      v71 = OSLogForWFLogLevel(3uLL);
      v72 = v71;
      if (WFCurrentLogLevel(v71, v73) >= 3 && v70 && os_log_type_enabled(v70, v72))
      {
        *buf = 138412290;
        v105 = value;
        _os_log_impl(&dword_273ECD000, v70, v72, "Trying to open Detail settings for accessory: %@", buf, 0xCu);
      }

      [(WFNetworkListController *)self _handleAccessoryDetailURL:value];
LABEL_88:

      v23 = 0;
      v24 = 0;
      v25 = 0;
      v12 = 0;
      v26 = 0;
      v27 = 0;
      v22 = 1;
      goto LABEL_21;
    }

LABEL_83:
    v74 = WFLogForCategory(0);
    v75 = OSLogForWFLogLevel(1uLL);
    v76 = v75;
    if (WFCurrentLogLevel(v75, v77) && v74 && os_log_type_enabled(v74, v76))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v74, v76, "AccessoryDetails URL missing accessory identifier", buf, 2u);
    }

    goto LABEL_88;
  }

  v22 = [(WFNetworkListController *)self _handleCurrentNetworkDetailsURL:lastObject];
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v12 = 0;
  v26 = 0;
  v27 = 0;
LABEL_55:

  return v22;
}

- (BOOL)_handleAccessoryDetailURL:(id)l
{
  v58 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (_os_feature_enabled_impl())
  {
    knownNetworksManager = [(WFNetworkListController *)self knownNetworksManager];
    allEditableNetworkProfiles = [knownNetworksManager allEditableNetworkProfiles];
    knownNetworksManager2 = [(WFNetworkListController *)self knownNetworksManager];
    allNonEditableNetworkProfiles = [knownNetworksManager2 allNonEditableNetworkProfiles];
    v9 = [allEditableNetworkProfiles setByAddingObjectsFromSet:allNonEditableNetworkProfiles];
    allObjects = [v9 allObjects];

    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(4uLL);
    v13 = v12;
    if (WFCurrentLogLevel(v12, v14) >= 4 && v11)
    {
      v15 = v11;
      if (os_log_type_enabled(v15, v13))
      {
        *buf = 134217984;
        v52 = [allObjects count];
        _os_log_impl(&dword_273ECD000, v15, v13, "All profile count: %lu", buf, 0xCu);
      }
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v16 = allObjects;
    v17 = [v16 countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v48;
LABEL_9:
      v20 = 0;
      while (1)
      {
        if (*v48 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v47 + 1) + 8 * v20);
        accessoryIdentifier = [v21 accessoryIdentifier];
        v23 = [accessoryIdentifier isEqualToString:lCopy];

        if (v23)
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [v16 countByEnumeratingWithState:&v47 objects:v57 count:16];
          if (v18)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }
      }

      v28 = WFLogForCategory(0);
      v29 = OSLogForWFLogLevel(3uLL);
      v30 = v29;
      if (WFCurrentLogLevel(v29, v31) >= 3 && v28)
      {
        v32 = v28;
        if (os_log_type_enabled(v32, v30))
        {
          networkName = [v21 networkName];
          *buf = 138412546;
          v52 = lCopy;
          v53 = 2112;
          v54 = networkName;
          _os_log_impl(&dword_273ECD000, v32, v30, "Found matching accessory network profile for %@, network name: %@", buf, 0x16u);
        }
      }

      v34 = v21;
      if (v34)
      {
        v35 = WFLogForCategory(0);
        v36 = OSLogForWFLogLevel(1uLL);
        v37 = v36;
        if (WFCurrentLogLevel(v36, v38) && v35)
        {
          v39 = v35;
          if (os_log_type_enabled(v39, v37))
          {
            networkName2 = [v34 networkName];
            *buf = 136315650;
            v52 = "[WFNetworkListController _handleAccessoryDetailURL:]";
            v53 = 2112;
            v54 = networkName2;
            v55 = 2112;
            v56 = lCopy;
            _os_log_impl(&dword_273ECD000, v39, v37, "%s: successfully opened network detail for %@:  id:%@", buf, 0x20u);
          }
        }

        viewController = [(WFNetworkListController *)self viewController];
        [(WFNetworkListController *)self networkListViewController:viewController showSettingsForNetwork:v34];
        v27 = 1;
        goto LABEL_38;
      }
    }

    else
    {
LABEL_15:
    }

    v34 = WFLogForCategory(0);
    v42 = OSLogForWFLogLevel(1uLL);
    v43 = v42;
    v27 = 0;
    if (WFCurrentLogLevel(v42, v44) && v34)
    {
      viewController = v34;
      if (os_log_type_enabled(viewController, v43))
      {
        v45 = [v16 count];
        *buf = 136315650;
        v52 = "[WFNetworkListController _handleAccessoryDetailURL:]";
        v53 = 2112;
        v54 = lCopy;
        v55 = 2048;
        v56 = v45;
        _os_log_impl(&dword_273ECD000, viewController, v43, "%s: Not found matching profile for %@ in all known %lu profiles, unable to show detail page", buf, 0x20u);
      }

      v27 = 0;
      v34 = viewController;
LABEL_38:
    }
  }

  else
  {
    v16 = WFLogForCategory(0);
    v24 = OSLogForWFLogLevel(3uLL);
    v25 = v24;
    v27 = 0;
    if (WFCurrentLogLevel(v24, v26) >= 3 && v16)
    {
      if (os_log_type_enabled(v16, v25))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v16, v25, "failed to open accessoryView url: DeviceAccess FF in AccessorySetupKit is not enabled", buf, 2u);
      }

      v27 = 0;
    }
  }

  return v27;
}

- (BOOL)_handleCurrentNetworkDetailsURL:(id)l
{
  v21 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if ([lCopy isEqualToString:@"AutoJoin"])
  {
    v5 = 4;
  }

  else if ([lCopy isEqualToString:@"LowDataMode"])
  {
    v5 = 5;
  }

  else if ([lCopy isEqualToString:@"PrivateWiFiAddress"])
  {
    v5 = 6;
  }

  else if ([lCopy isEqualToString:@"LimitIPAddress"])
  {
    v5 = 7;
  }

  else
  {
    v5 = 0;
  }

  interface = [(WFNetworkListController *)self interface];
  currentNetwork = [interface currentNetwork];

  if (currentNetwork)
  {
    viewController = [(WFNetworkListController *)self viewController];
    interface2 = [(WFNetworkListController *)self interface];
    currentNetwork2 = [interface2 currentNetwork];
    [(WFNetworkListController *)self networkListViewController:viewController showSettingsForNetwork:currentNetwork2 context:0 scrollToCellType:v5];

    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(3uLL);
    v13 = v12;
    if (WFCurrentLogLevel(v12, v14) >= 3 && v11)
    {
      v11 = v11;
      if (os_log_type_enabled(v11, v13))
      {
        interface3 = [(WFNetworkListController *)self interface];
        currentNetwork3 = [interface3 currentNetwork];
        *v18 = 136315394;
        *&v18[4] = "[WFNetworkListController _handleCurrentNetworkDetailsURL:]";
        v19 = 2112;
        v20 = currentNetwork3;
        _os_log_impl(&dword_273ECD000, v11, v13, "%s: handling URL for current network (%@) details", v18, 0x16u);
      }
    }
  }

  else
  {
    [WFNetworkListController _handleCurrentNetworkDetailsURL:v18];
    v11 = *v18;
  }

  return currentNetwork != 0;
}

- (id)keyValueDictionaryForURL:(id)l
{
  v22 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  resourceSpecifier = [lCopy resourceSpecifier];
  v6 = [resourceSpecifier componentsSeparatedByString:@"&"];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) componentsSeparatedByString:{@"=", v17}];
        if ([v12 count] == 2)
        {
          v13 = [v12 objectAtIndex:1];
          stringByRemovingPercentEncoding = [v13 stringByRemovingPercentEncoding];

          v15 = [v12 objectAtIndex:0];
          [dictionary setObject:stringByRemovingPercentEncoding forKey:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return dictionary;
}

- (id)_hardwareMACAddress
{
  wifiClient = [(WFNetworkListController *)self wifiClient];
  hardwareMACAddress = [wifiClient hardwareMACAddress];

  return hardwareMACAddress;
}

- (void)_cellularOutrankNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v11 = 136315394;
    v12 = "[WFNetworkListController _cellularOutrankNotification:]";
    v13 = 2112;
    v14 = notificationCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: received cellular outrank notification %@", &v11, 0x16u);
  }

  [(WFNetworkListController *)self _updateHealthSubtitle];
  interface = [(WFNetworkListController *)self interface];
  currentNetwork = [interface currentNetwork];
  [(WFNetworkListController *)self _updateCurrentNetworkIPState:currentNetwork];
}

- (void)_presentCellularOutrankAlertForNetwork:(id)network privateCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  v24 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__WFNetworkListController__presentCellularOutrankAlertForNetwork_privateCellular___block_invoke;
  aBlock[3] = &unk_279EBD138;
  objc_copyWeak(&v20, &location);
  v7 = networkCopy;
  v19 = v7;
  v8 = _Block_copy(aBlock);
  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(3uLL);
  v11 = v10;
  if (WFCurrentLogLevel(v10, v12) >= 3 && v9 && os_log_type_enabled(v9, v11))
  {
    *buf = 136315138;
    v23 = "[WFNetworkListController _presentCellularOutrankAlertForNetwork:privateCellular:]";
    _os_log_impl(&dword_273ECD000, v9, v11, "%s: showing cellular outrank prompt", buf, 0xCu);
  }

  v13 = MEMORY[0x277D7B998];
  ssid = [v7 ssid];
  viewController = [(WFNetworkListController *)self viewController];
  [viewController deviceCapability];
  v16 = [v13 cellularOutrankAlertControllerWithNetworkName:ssid chinaDevice:WFCapabilityIsChinaDevice() privateCellular:cellularCopy completionHandler:v8];

  viewController2 = [(WFNetworkListController *)self viewController];
  [viewController2 presentViewController:v16 animated:1 completion:0];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __82__WFNetworkListController__presentCellularOutrankAlertForNetwork_privateCellular___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  v10 = WFCurrentLogLevel(v6, v8) > 2 && v5 != 0;
  if (a2)
  {
    if (v10 && os_log_type_enabled(v5, v7))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v5, v7, "User accepted cellular outrank prompt", buf, 2u);
    }

    [WeakRetained _associateToScanRecord:*(a1 + 32)];
  }

  else
  {
    if (v10 && os_log_type_enabled(v5, v7))
    {
      *v11 = 0;
      _os_log_impl(&dword_273ECD000, v5, v7, "User declined cellular outrank prompt", v11, 2u);
    }
  }
}

- (void)_presentDeveloperOutrankAlertForNetwork:(id)network
{
  v16 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v14 = 136315138;
    v15 = "[WFNetworkListController _presentDeveloperOutrankAlertForNetwork:]";
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: showing developer outrank prompt", &v14, 0xCu);
  }

  v9 = MEMORY[0x277D7B9A8];
  ssid = [networkCopy ssid];

  viewController = [(WFNetworkListController *)self viewController];
  [viewController deviceCapability];
  v12 = [v9 developerOutrankAlertControllerWithNetworkName:ssid chinaDevice:WFCapabilityIsChinaDevice() completionHandler:&__block_literal_global_544];

  viewController2 = [(WFNetworkListController *)self viewController];
  [viewController2 presentViewController:v12 animated:1 completion:0];
}

void __67__WFNetworkListController__presentDeveloperOutrankAlertForNetwork___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v7 = [MEMORY[0x277D3FB78] sharedManager];
    v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=DEVELOPER_SETTINGS&path=NCO"];
    [v7 processURL:v2 animated:1 fromSearch:0 withCompletion:&__block_literal_global_550];
  }

  else
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v3, v5, "User bypassed option to go to developer settings", buf, 2u);
    }
  }
}

void __67__WFNetworkListController__presentDeveloperOutrankAlertForNetwork___block_invoke_2()
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(3uLL);
  v2 = v1;
  if (WFCurrentLogLevel(v1, v3) >= 3 && v0 && os_log_type_enabled(v0, v2))
  {
    *v4 = 0;
    _os_log_impl(&dword_273ECD000, v0, v2, "User taken to developer settings", v4, 2u);
  }
}

- (int64_t)_defaultAuthTraits
{
  wifiClient = [(WFNetworkListController *)self wifiClient];
  isWPA3PersonalEnabled = [wifiClient isWPA3PersonalEnabled];

  if (isWPA3PersonalEnabled)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  wifiClient2 = [(WFNetworkListController *)self wifiClient];
  isWPA3EnterpriseEnabled = [wifiClient2 isWPA3EnterpriseEnabled];

  if (isWPA3EnterpriseEnabled)
  {
    v5 |= 4uLL;
  }

  wifiClient3 = [(WFNetworkListController *)self wifiClient];
  isMfpCapable = [wifiClient3 isMfpCapable];

  if (isMfpCapable)
  {
    v10 = v5 | 8;
  }

  else
  {
    v10 = v5;
  }

  if (WFHasWAPICapability())
  {
    wifiClient4 = [(WFNetworkListController *)self wifiClient];
    isWAPIEnabled = [wifiClient4 isWAPIEnabled];

    return v10 | isWAPIEnabled & 1;
  }

  return v10;
}

- (void)_updatePrivacyProxyFeatureEnabled
{
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WFNetworkListController__updatePrivacyProxyFeatureEnabled__block_invoke;
  block[3] = &unk_279EBCFE0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __60__WFNetworkListController__updatePrivacyProxyFeatureEnabled__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D2CA68];
  v4 = dispatch_get_global_queue(33, 0);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__WFNetworkListController__updatePrivacyProxyFeatureEnabled__block_invoke_2;
  v19[3] = &unk_279EBD8C0;
  v21 = &v22;
  v5 = v2;
  v20 = v5;
  [v3 getStatus:v4 completionHandler:v19];

  v6 = dispatch_time(0, 15000000000);
  dispatch_semaphore_wait(v5, v6);
  if (*(v23 + 6))
  {
    v7 = MEMORY[0x277D2CA68];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__WFNetworkListController__updatePrivacyProxyFeatureEnabled__block_invoke_2_553;
    v15[3] = &unk_279EBD8E8;
    v17 = &v22;
    v8 = v5;
    v16 = v8;
    [v7 getUserTier:v4 completionHandler:v15];

    v9 = dispatch_time(0, 15000000000);
    dispatch_semaphore_wait(v8, v9);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__WFNetworkListController__updatePrivacyProxyFeatureEnabled__block_invoke_555;
    block[3] = &unk_279EBD910;
    block[4] = *(a1 + 32);
    block[5] = &v22;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(3uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) >= 3 && v10 && os_log_type_enabled(v10, v12))
    {
      *buf = 136315138;
      v27 = "[WFNetworkListController _updatePrivacyProxyFeatureEnabled]_block_invoke";
      _os_log_impl(&dword_273ECD000, v10, v12, "%s: privacy proxy feature is disabled", buf, 0xCu);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __60__WFNetworkListController__updatePrivacyProxyFeatureEnabled__block_invoke_552;
    v18[3] = &unk_279EBCFE0;
    v18[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v18);
  }

  _Block_object_dispose(&v22, 8);
}

void __60__WFNetworkListController__updatePrivacyProxyFeatureEnabled__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) >= 3 && v6 && os_log_type_enabled(v6, v8))
  {
    v10 = 136315650;
    v11 = "[WFNetworkListController _updatePrivacyProxyFeatureEnabled]_block_invoke_2";
    v12 = 1024;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_273ECD000, v6, v8, "%s: privacy proxy status=%d (error=%@)", &v10, 0x1Cu);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __60__WFNetworkListController__updatePrivacyProxyFeatureEnabled__block_invoke_2_553(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2 == 1)
  {
    v6 = 1;
    goto LABEL_5;
  }

  if (a2 == 2)
  {
    v6 = 2;
LABEL_5:
    *(*(*(a1 + 40) + 8) + 24) = v6;
  }

  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
  {
    v11 = 136315650;
    v12 = "[WFNetworkListController _updatePrivacyProxyFeatureEnabled]_block_invoke_2";
    v13 = 2048;
    v14 = a2;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_273ECD000, v7, v9, "%s: privacy proxy user tier=%ld (error=%@)", &v11, 0x20u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_refreshKnownHiddenNetworkNamesCache
{
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__WFNetworkListController__refreshKnownHiddenNetworkNamesCache__block_invoke;
  block[3] = &unk_279EBCFE0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __63__WFNetworkListController__refreshKnownHiddenNetworkNamesCache__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [*(a1 + 32) wifiClient];
  v4 = [v3 cInterface];
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2883048A0, &unk_288304900, &unk_2883048B8, &unk_288304918, &unk_288304930, 0}];
  v6 = [v4 knownNetworkProfilesWithProperties:v5];

  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
  {
    *buf = 0;
    _os_log_impl(&dword_273ECD000, v7, v9, "refreshing known hidden network name cache", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__WFNetworkListController__refreshKnownHiddenNetworkNamesCache__block_invoke_562;
  block[3] = &unk_279EBD268;
  v11 = *(a1 + 32);
  v15 = v6;
  v16 = v11;
  v17 = v2;
  v12 = v2;
  v13 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__WFNetworkListController__refreshKnownHiddenNetworkNamesCache__block_invoke_562(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v33;
    *&v4 = 136315394;
    v31 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        if ([v9 hiddenState] == 1)
        {
          v10 = [v9 networkName];
          if (v10)
          {
            v11 = v10;
            v12 = [*(a1 + 40) _canScanForHiddenNetwork:v9];

            if (v12)
            {
              v13 = WFLogForCategory(0);
              v14 = OSLogForWFLogLevel(4uLL);
              v15 = v14;
              if (WFCurrentLogLevel(v14, v16) >= 4 && v13 && os_log_type_enabled(v13, v15))
              {
                *buf = v31;
                v37 = "[WFNetworkListController _refreshKnownHiddenNetworkNamesCache]_block_invoke";
                v38 = 2112;
                v39 = v9;
                _os_log_impl(&dword_273ECD000, v13, v15, "%s: hidden network profile='%@'", buf, 0x16u);
              }

              v17 = *(a1 + 48);
              v18 = [v9 networkName];
              [v17 addObject:v18];
            }
          }
        }

        if ([v9 isPasspoint])
        {
          v19 = WFLogForCategory(0);
          v20 = OSLogForWFLogLevel(4uLL);
          v21 = v20;
          if (WFCurrentLogLevel(v20, v22) >= 4 && v19 && os_log_type_enabled(v19, v21))
          {
            *buf = v31;
            v37 = "[WFNetworkListController _refreshKnownHiddenNetworkNamesCache]_block_invoke";
            v38 = 2112;
            v39 = v9;
            _os_log_impl(&dword_273ECD000, v19, v21, "%s: passpoint network profile='%@'", buf, 0x16u);
          }

          v6 = 1;
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v23 = WFLogForCategory(0);
  v24 = OSLogForWFLogLevel(3uLL);
  v25 = v24;
  if (WFCurrentLogLevel(v24, v26) >= 3 && v23 && os_log_type_enabled(v23, v25))
  {
    v27 = *(a1 + 48);
    *buf = 138412546;
    v37 = v27;
    v38 = 1024;
    LODWORD(v39) = v6 & 1;
    _os_log_impl(&dword_273ECD000, v23, v25, "hidden known network names='%@' HS20NetworksFound='%d'", buf, 0x12u);
  }

  v28 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 48)];
  v29 = *(a1 + 40);
  v30 = *(v29 + 240);
  *(v29 + 240) = v28;

  *(*(a1 + 40) + 16) = v6 & 1;
}

- (WFKnownNetworksProvider)knownNetworksManager
{
  knownNetworksManager = self->_knownNetworksManager;
  if (!knownNetworksManager)
  {
    v4 = [WFKnownNetworksManager alloc];
    wifiClient = [(WFNetworkListController *)self wifiClient];
    cInterface = [wifiClient cInterface];
    v7 = [(WFKnownNetworksManager *)v4 initWithInterface:cInterface];
    v8 = self->_knownNetworksManager;
    self->_knownNetworksManager = v7;

    knownNetworksManager = self->_knownNetworksManager;
  }

  return knownNetworksManager;
}

- (id)scanManager:(id)manager filterScanResults:(id)results
{
  v46 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  selfCopy = self;
  wifiClient = [(WFNetworkListController *)self wifiClient];
  isNetworkRestrictionActive = [wifiClient isNetworkRestrictionActive];

  if (isNetworkRestrictionActive)
  {
    v32 = [resultsCopy mutableCopy];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v30 = resultsCopy;
    obj = resultsCopy;
    v8 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v8)
    {
      v9 = v8;
      v34 = *v36;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v36 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v35 + 1) + 8 * i);
          matchingKnownNetworkProfile = [v11 matchingKnownNetworkProfile];
          if (matchingKnownNetworkProfile)
          {
            v13 = matchingKnownNetworkProfile;
            wifiClient2 = [(WFNetworkListController *)selfCopy wifiClient];
            whitelistingUUID = [wifiClient2 whitelistingUUID];
            matchingKnownNetworkProfile2 = [v11 matchingKnownNetworkProfile];
            oSSpecificAttributes = [matchingKnownNetworkProfile2 OSSpecificAttributes];
            v18 = [oSSpecificAttributes objectForKeyedSubscript:@"PolicyUUID"];
            v19 = [whitelistingUUID isEqualToString:v18];

            if (v19)
            {
              continue;
            }
          }

          v20 = WFLogForCategory(0);
          v21 = OSLogForWFLogLevel(4uLL);
          v22 = v21;
          if (WFCurrentLogLevel(v21, v23) >= 4 && v20)
          {
            v24 = v20;
            if (os_log_type_enabled(v24, v22))
            {
              wifiClient3 = [(WFNetworkListController *)selfCopy wifiClient];
              whitelistingUUID2 = [wifiClient3 whitelistingUUID];
              *buf = 136315650;
              v40 = "[WFNetworkListController scanManager:filterScanResults:]";
              v41 = 2112;
              v42 = v11;
              v43 = 2112;
              v44 = whitelistingUUID2;
              _os_log_impl(&dword_273ECD000, v24, v22, "%s: disregarding network='%@' no matching policyUUID (%@)", buf, 0x20u);
            }
          }

          [v32 removeObject:v11];
        }

        v9 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v9);
    }

    v27 = v32;
    v28 = v27;
    resultsCopy = v30;
  }

  else
  {
    v27 = 0;
    v28 = resultsCopy;
  }

  return v28;
}

- (id)healthRecommendations:(BOOL)recommendations
{
  recommendationsCopy = recommendations;
  v129 = *MEMORY[0x277D85DE8];
  interface = [(WFNetworkListController *)self interface];
  currentNetwork = [interface currentNetwork];

  if (-[WFNetworkListController isHS20Supported](self, "isHS20Supported") && [currentNetwork isHotspot20])
  {
    matchingKnownNetworkProfile = [currentNetwork matchingKnownNetworkProfile];

    if (!matchingKnownNetworkProfile)
    {
      gasController = [(WFNetworkListController *)self gasController];
      v17 = [gasController profileForNetwork:currentNetwork];
      goto LABEL_12;
    }

    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(3uLL);
    v10 = v9;
    if (WFCurrentLogLevel(v9, v11) >= 3 && v8)
    {
      v12 = v8;
      if (os_log_type_enabled(v12, v10))
      {
        matchingKnownNetworkProfile2 = [currentNetwork matchingKnownNetworkProfile];
        v125 = 136315394;
        v126 = "[WFNetworkListController healthRecommendations:]";
        v127 = 2112;
        v128 = matchingKnownNetworkProfile2;
        _os_log_impl(&dword_273ECD000, v12, v10, "%s: using matchingKnownNetworkProfile %@", &v125, 0x16u);
      }
    }

LABEL_11:
    v15 = [WFNetworkProfile alloc];
    gasController = [currentNetwork matchingKnownNetworkProfile];
    v17 = [(WFNetworkProfile *)v15 initWithCoreWiFiProfile:gasController];
LABEL_12:
    v18 = v17;

    goto LABEL_19;
  }

  matchingKnownNetworkProfile3 = [currentNetwork matchingKnownNetworkProfile];

  if (matchingKnownNetworkProfile3)
  {
    goto LABEL_11;
  }

  v19 = WFLogForCategory(0);
  v20 = OSLogForWFLogLevel(4uLL);
  v21 = v20;
  if (WFCurrentLogLevel(v20, v22) >= 4 && v19)
  {
    v23 = v19;
    if (os_log_type_enabled(v23, v21))
    {
      v125 = 138412290;
      v126 = currentNetwork;
      _os_log_impl(&dword_273ECD000, v23, v21, "Network='%@' is not a known network", &v125, 0xCu);
    }
  }

  v18 = 0;
LABEL_19:
  supportsWiFiHealth = [currentNetwork supportsWiFiHealth];
  viewController = [(WFNetworkListController *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    viewController2 = [(WFNetworkListController *)self viewController];
    supportsHealthRecommendations = [viewController2 supportsHealthRecommendations];
  }

  else
  {
    supportsHealthRecommendations = 0;
  }

  if (((recommendationsCopy | supportsHealthRecommendations) & supportsWiFiHealth & 1) == 0)
  {
    currentNetworkIssues = 0;
    v32 = 0;
    goto LABEL_114;
  }

  wifiClient = [(WFNetworkListController *)self wifiClient];
  isWiFiHealthUIDisabled = [wifiClient isWiFiHealthUIDisabled];

  if (!isWiFiHealthUIDisabled)
  {
    healthManager = [(WFNetworkListController *)self healthManager];
    currentNetworkIssues = [healthManager currentNetworkIssues];

    v32 = [MEMORY[0x277CBEB58] set];
    if ([currentNetworkIssues count])
    {
      allObjects = [currentNetworkIssues allObjects];
      [OUTLINED_FUNCTION_2_1() addObjectsFromArray:?];
    }

    healthRecommendationOverrides = [(WFNetworkListController *)self healthRecommendationOverrides];

    v35 = 0x277D7B000;
    if (!healthRecommendationOverrides)
    {
      goto LABEL_83;
    }

    healthRecommendationOverrides2 = [(WFNetworkListController *)self healthRecommendationOverrides];
    hiddenNetwork = [healthRecommendationOverrides2 hiddenNetwork];

    healthRecommendationOverrides3 = [(WFNetworkListController *)self healthRecommendationOverrides];
    securityOverride = [healthRecommendationOverrides3 securityOverride];

    if (securityOverride == 1)
    {
      v40 = MEMORY[0x277D7B9C0];
      v41 = hiddenNetwork == 0;
      v42 = 8;
      v43 = 64;
    }

    else
    {
      healthRecommendationOverrides4 = [(WFNetworkListController *)self healthRecommendationOverrides];
      securityOverride2 = [healthRecommendationOverrides4 securityOverride];

      if (securityOverride2 == 2)
      {
        v40 = MEMORY[0x277D7B9C0];
        v41 = hiddenNetwork == 0;
        v42 = 2;
        v43 = 256;
      }

      else
      {
        healthRecommendationOverrides5 = [(WFNetworkListController *)self healthRecommendationOverrides];
        securityOverride3 = [healthRecommendationOverrides5 securityOverride];

        if (securityOverride3 != 3)
        {
          goto LABEL_49;
        }

        v40 = MEMORY[0x277D7B9C0];
        v41 = hiddenNetwork == 0;
        v42 = 4;
        v43 = 128;
      }
    }

    if (v41)
    {
      v48 = v42;
    }

    else
    {
      v48 = v43;
    }

    healthRecommendationOverrides5 = [v40 issueWithType:v48];

    [healthRecommendationOverrides5 setOverrideIssue:1];
    if (healthRecommendationOverrides5)
    {
      [MEMORY[0x277D7B9C0] issueWithType:8];
      objc_claimAutoreleasedReturnValue();
      v49 = [OUTLINED_FUNCTION_0_3() containsObject:?];

      if (v49)
      {
        [MEMORY[0x277D7B9C0] issueWithType:8];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_0_3() removeObject:?];
      }

      [MEMORY[0x277D7B9C0] issueWithType:2];
      objc_claimAutoreleasedReturnValue();
      v50 = [OUTLINED_FUNCTION_0_3() containsObject:?];

      if (v50)
      {
        [MEMORY[0x277D7B9C0] issueWithType:2];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_0_3() removeObject:?];
      }

      [MEMORY[0x277D7B9C0] issueWithType:4];
      objc_claimAutoreleasedReturnValue();
      v51 = [OUTLINED_FUNCTION_0_3() containsObject:?];

      if (v51)
      {
        [MEMORY[0x277D7B9C0] issueWithType:4];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_0_3() removeObject:?];
      }

      [MEMORY[0x277D7B9C0] issueWithType:64];
      objc_claimAutoreleasedReturnValue();
      v52 = [OUTLINED_FUNCTION_0_3() containsObject:?];

      if (v52)
      {
        [MEMORY[0x277D7B9C0] issueWithType:64];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_0_3() removeObject:?];
      }

      [MEMORY[0x277D7B9C0] issueWithType:256];
      objc_claimAutoreleasedReturnValue();
      v53 = [OUTLINED_FUNCTION_0_3() containsObject:?];

      if (v53)
      {
        [MEMORY[0x277D7B9C0] issueWithType:256];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_0_3() removeObject:?];
      }

      [MEMORY[0x277D7B9C0] issueWithType:128];
      objc_claimAutoreleasedReturnValue();
      v54 = [OUTLINED_FUNCTION_0_3() containsObject:?];

      if (v54)
      {
        [MEMORY[0x277D7B9C0] issueWithType:128];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_0_3() removeObject:?];
      }

      goto LABEL_51;
    }

LABEL_49:
    if (!hiddenNetwork)
    {
      goto LABEL_52;
    }

    v55 = [MEMORY[0x277D7B9C0] issueWithType:0x4000];
    OUTLINED_FUNCTION_7_0(v55, v56);
LABEL_51:
    [OUTLINED_FUNCTION_2_1() addObject:?];

LABEL_52:
    healthRecommendationOverrides6 = [(WFNetworkListController *)self healthRecommendationOverrides];
    noInternetConnection = [healthRecommendationOverrides6 noInternetConnection];

    if (noInternetConnection)
    {
      v59 = [MEMORY[0x277D7B9C0] issueWithType:1];
      OUTLINED_FUNCTION_7_0(v59, v60);
      [OUTLINED_FUNCTION_2_1() addObject:?];
    }

    healthRecommendationOverrides7 = [(WFNetworkListController *)self healthRecommendationOverrides];
    legacyPHY = [healthRecommendationOverrides7 legacyPHY];

    if (legacyPHY)
    {
      v63 = [MEMORY[0x277D7B9C0] issueWithType:16];
      OUTLINED_FUNCTION_7_0(v63, v64);
      [OUTLINED_FUNCTION_2_1() addObject:?];
    }

    healthRecommendationOverrides8 = [(WFNetworkListController *)self healthRecommendationOverrides];
    commonSSID = [healthRecommendationOverrides8 commonSSID];

    if (commonSSID)
    {
      v67 = [MEMORY[0x277D7B9C0] issueWithType:32];
      OUTLINED_FUNCTION_7_0(v67, v68);
      [OUTLINED_FUNCTION_2_1() addObject:?];
    }

    healthRecommendationOverrides9 = [(WFNetworkListController *)self healthRecommendationOverrides];
    carrierNetwork = [healthRecommendationOverrides9 carrierNetwork];

    if (carrierNetwork)
    {
      carrierNetworkIssue = [MEMORY[0x277D7B9F8] carrierNetworkIssue];
      OUTLINED_FUNCTION_7_0(carrierNetworkIssue, v72);
      [OUTLINED_FUNCTION_2_1() addObject:?];
    }

    healthRecommendationOverrides10 = [(WFNetworkListController *)self healthRecommendationOverrides];
    dnsFiltered = [healthRecommendationOverrides10 dnsFiltered];

    if (dnsFiltered)
    {
      dnsFilteredNetworkIssue = [MEMORY[0x277D7B9F8] dnsFilteredNetworkIssue];
      OUTLINED_FUNCTION_7_0(dnsFilteredNetworkIssue, v76);
      [OUTLINED_FUNCTION_2_1() addObject:?];
    }

    healthRecommendationOverrides11 = [(WFNetworkListController *)self healthRecommendationOverrides];
    poorCoverageOverride = [healthRecommendationOverrides11 poorCoverageOverride];

    if (poorCoverageOverride)
    {
      v79 = [MEMORY[0x277D7B9C0] issueWithType:0x100000];
      OUTLINED_FUNCTION_7_0(v79, v80);
      [OUTLINED_FUNCTION_2_1() addObject:?];
    }

    healthRecommendationOverrides12 = [(WFNetworkListController *)self healthRecommendationOverrides];
    privateAddressOverride = [healthRecommendationOverrides12 privateAddressOverride];

    v35 = 0x277D7B000uLL;
    if (privateAddressOverride)
    {
      healthRecommendationOverrides13 = [(WFNetworkListController *)self healthRecommendationOverrides];
      privateAddressOverride2 = [healthRecommendationOverrides13 privateAddressOverride];

      if (privateAddressOverride2 == 1)
      {
        privateAddressDisabledBySystemIssue = [MEMORY[0x277D7B9F8] privateAddressDisabledBySystemIssue];
      }

      else
      {
        healthRecommendationOverrides13 = [(WFNetworkListController *)self healthRecommendationOverrides];
        privateAddressOverride3 = [healthRecommendationOverrides13 privateAddressOverride];

        if (privateAddressOverride3 == 2)
        {
          privateAddressDisabledBySystemIssue = [MEMORY[0x277D7B9F8] privateAddressDisabledByCarrierIssueWithCarrierName:@"Carrier"];
        }

        else
        {
          healthRecommendationOverrides13 = [(WFNetworkListController *)self healthRecommendationOverrides];
          privateAddressOverride4 = [healthRecommendationOverrides13 privateAddressOverride];

          if (privateAddressOverride4 != 3)
          {
            goto LABEL_72;
          }

          privateAddressDisabledBySystemIssue = [MEMORY[0x277D7B9F8] privateAddressDisabledByProfileIssueWithOrganizationName:@"Organization" profileName:@"ProfileName" profileUUID:@"UUID"];
        }
      }

      OUTLINED_FUNCTION_7_0(privateAddressDisabledBySystemIssue, v86);
      [OUTLINED_FUNCTION_2_1() addObject:?];
    }

LABEL_72:
    healthRecommendationOverrides14 = [(WFNetworkListController *)self healthRecommendationOverrides];
    cellularOutrankStateOverride = [healthRecommendationOverrides14 cellularOutrankStateOverride];

    if (cellularOutrankStateOverride)
    {
      healthRecommendationOverrides15 = [(WFNetworkListController *)self healthRecommendationOverrides];
      cellularOutrankStateOverride2 = [healthRecommendationOverrides15 cellularOutrankStateOverride];

      if (cellularOutrankStateOverride2 == 1)
      {
        cellularOutrankDownload = [MEMORY[0x277D7B9A0] cellularOutrankDownload];
LABEL_82:
        OUTLINED_FUNCTION_7_0(cellularOutrankDownload, v94);
        [OUTLINED_FUNCTION_2_1() addObject:?];

        goto LABEL_83;
      }

      healthRecommendationOverrides15 = [(WFNetworkListController *)self healthRecommendationOverrides];
      cellularOutrankStateOverride3 = [healthRecommendationOverrides15 cellularOutrankStateOverride];

      if (cellularOutrankStateOverride3 == 3)
      {
        cellularOutrankDownload = [MEMORY[0x277D7B9A0] cellularOutrankPerformance];
        goto LABEL_82;
      }

      healthRecommendationOverrides15 = [(WFNetworkListController *)self healthRecommendationOverrides];
      cellularOutrankStateOverride4 = [healthRecommendationOverrides15 cellularOutrankStateOverride];

      if (cellularOutrankStateOverride4 == 2)
      {
        cellularOutrankDownload = [MEMORY[0x277D7B9A0] cellularOutrankSecurity];
        goto LABEL_82;
      }

      healthRecommendationOverrides15 = [(WFNetworkListController *)self healthRecommendationOverrides];
      cellularOutrankStateOverride5 = [healthRecommendationOverrides15 cellularOutrankStateOverride];

      if (cellularOutrankStateOverride5 == 8)
      {
        cellularOutrankDownload = [MEMORY[0x277D7B9A0] cellularOutrankPrivateNetwork];
        goto LABEL_82;
      }
    }

LABEL_83:
    if ([v18 canExposeIMSI])
    {
      carrierNetworkIssue2 = [MEMORY[0x277D7B9F8] carrierNetworkIssue];
      [OUTLINED_FUNCTION_2_1() addObject:?];
    }

    if ([v18 isDNSHeuristicsFiltered])
    {
      dnsFilteredNetworkIssue2 = [MEMORY[0x277D7B9F8] dnsFilteredNetworkIssue];
      [OUTLINED_FUNCTION_2_1() addObject:?];
    }

    privateAddressConfig = [currentNetwork privateAddressConfig];
    disabledReason = [privateAddressConfig disabledReason];

    if (disabledReason)
    {
      v102 = WFLogForCategory(0);
      v103 = OSLogForWFLogLevel(4uLL);
      v104 = v103;
      if (WFCurrentLogLevel(v103, v105) >= 4 && v102)
      {
        v106 = v102;
        if (os_log_type_enabled(v106, v104))
        {
          [currentNetwork privateAddressConfig];
          v108 = v107 = v35;
          v125 = 136315394;
          v126 = "[WFNetworkListController healthRecommendations:]";
          v127 = 2112;
          v128 = v108;
          _os_log_impl(&dword_273ECD000, v106, v104, "%s: network.privateAddressConfig %@", &v125, 0x16u);

          v35 = v107;
        }
      }

      if (v18)
      {
        originatorName = [v18 originatorName];
      }

      else
      {
        originatorName = 0;
      }

      privateAddressConfig2 = [currentNetwork privateAddressConfig];
      disabledReason2 = [privateAddressConfig2 disabledReason];

      switch(disabledReason2)
      {
        case 1:
          [MEMORY[0x277D7B9F8] privateAddressDisabledByUserIssue];
          objc_claimAutoreleasedReturnValue();
          goto LABEL_104;
        case 2:
          [MEMORY[0x277D7B9F8] privateAddressDisabledBySystemIssue];
          objc_claimAutoreleasedReturnValue();
          goto LABEL_104;
        case 3:
          [MEMORY[0x277D7B9F8] privateAddressDisabledByCarrierIssueWithCarrierName:0];
          objc_claimAutoreleasedReturnValue();
          goto LABEL_104;
        case 4:
          if (originatorName)
          {
            v112 = originatorName;
          }

          else
          {
            v112 = 0;
          }

          [MEMORY[0x277D7B9F8] privateAddressDisabledByProfileIssueWithOrganizationName:v112 profileName:0 profileUUID:0];
          objc_claimAutoreleasedReturnValue();
LABEL_104:
          [OUTLINED_FUNCTION_0_3() addObject:?];

          break;
        default:
          break;
      }
    }

    wifiClient2 = [(WFNetworkListController *)self wifiClient];
    isCellularOutrankingWiFi = [wifiClient2 isCellularOutrankingWiFi];

    if (isCellularOutrankingWiFi)
    {
      wifiClient3 = [(WFNetworkListController *)self wifiClient];
      cellularOutrankState = [wifiClient3 cellularOutrankState];

      switch(cellularOutrankState)
      {
        case 1:
          cellularOutrankSecurity = [*(v35 + 2464) cellularOutrankSecurity];
          goto LABEL_112;
        case 2:
          cellularOutrankSecurity = [*(v35 + 2464) cellularOutrankPerformance];
          goto LABEL_112;
        case 3:
        case 4:
          cellularOutrankSecurity = [*(v35 + 2464) cellularOutrankDownload];
          goto LABEL_112;
        case 5:
          cellularOutrankSecurity = [*(v35 + 2464) cellularOutrankPrivateNetwork];
LABEL_112:
          v118 = cellularOutrankSecurity;
          [v32 addObject:cellularOutrankSecurity];
          goto LABEL_113;
        default:
          goto LABEL_114;
      }
    }

    goto LABEL_114;
  }

  v118 = WFLogForCategory(0);
  v122 = OSLogForWFLogLevel(3uLL);
  v123 = v122;
  currentNetworkIssues = 0;
  if (WFCurrentLogLevel(v122, v124) >= 3 && v118)
  {
    if (os_log_type_enabled(v118, v123))
    {
      v125 = 136315138;
      v126 = "[WFNetworkListController healthRecommendations:]";
      _os_log_impl(&dword_273ECD000, v118, v123, "%s: health ui is disabled", &v125, 0xCu);
    }

    currentNetworkIssues = 0;
    v32 = 0;
  }

  else
  {
    v32 = 0;
  }

LABEL_113:

LABEL_114:
  if ([v32 count])
  {
    v119 = v32;
  }

  else
  {
    v119 = 0;
  }

  v120 = v119;

  return v119;
}

- (id)airportSettingsViewController:(id)controller unconfiguredAccessoriesGroupHeaderTitle:(id)title
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  titleCopy = title;
  if (titleCopy)
  {
    v19 = controllerCopy;
    v7 = objc_alloc_init(MEMORY[0x277CCA940]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = titleCopy;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          if ([v13 isUnconfiguredAccessory])
          {
            v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "unconfiguredAccessoryType")}];
            [v7 addObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      if (![v7 countForObject:&unk_2883048A0] || objc_msgSend(v7, "countForObject:", &unk_2883048B8) || objc_msgSend(v7, "countForObject:", &unk_2883048D0) || objc_msgSend(v7, "countForObject:", &unk_2883048E8))
      {
        controllerCopy = v19;
        if ([v7 countForObject:&unk_2883048A0] && objc_msgSend(v7, "countForObject:", &unk_2883048B8) && !objc_msgSend(v7, "countForObject:", &unk_2883048D0) && !objc_msgSend(v7, "countForObject:", &unk_2883048E8))
        {
          v15 = @"kWFUnconfiguredAirportAndAirPlaySectionTitle";
        }

        else if ([v7 countForObject:&unk_2883048A0] || !objc_msgSend(v7, "countForObject:", &unk_2883048B8) || objc_msgSend(v7, "countForObject:", &unk_2883048D0) || objc_msgSend(v7, "countForObject:", &unk_2883048E8))
        {
          v15 = @"kWFUnconfiguredDevicesSectionTitle";
        }

        else
        {
          v15 = @"kWFUnconfiguredAirPlaySectionTitle";
        }
      }

      else
      {
        v15 = @"kWFUnconfiguredAirportSectionTitle";
        controllerCopy = v19;
      }

      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:v15 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
    }

    else
    {
      v17 = 0;
      controllerCopy = v19;
    }
  }

  else
  {
    v7 = 0;
    v17 = 0;
  }

  return v17;
}

- (void)_updateViewsForNetworks:(id)networks
{
  networksCopy = networks;
  if (!networksCopy)
  {
    viewController2 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel(v8, v9) >= 3 && viewController2 && OUTLINED_FUNCTION_4())
    {
      LODWORD(v16) = 136315138;
      *(&v16 + 4) = "[WFNetworkListController _updateViewsForNetworks:]";
      OUTLINED_FUNCTION_4_1(&dword_273ECD000, v10, v11, "%s: nil networks", v12, v13, v14, v15, v16, "[WFNetworkListController _updateViewsForNetworks:]" >> 32);
    }

    goto LABEL_4;
  }

  viewController = [(WFNetworkListController *)self viewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    viewController2 = [(WFNetworkListController *)self viewController];
    [viewController2 updateViewsForNetworks:networksCopy];
LABEL_4:
  }
}

- (void)initWithViewController:viewProvider:client:.cold.1()
{
  WFLogForCategory(0);
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_8_0();
  if (WFCurrentLogLevel(v1, v2) && v0 && OUTLINED_FUNCTION_9())
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (void)scanManager:didFindHotspotHelperNetworks:.cold.1()
{
  v0 = OUTLINED_FUNCTION_5_0();
  v1 = WFLogForCategory(v0);
  v2 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel(v2, v3) >= 3 && v1 && OUTLINED_FUNCTION_9())
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

- (void)scanManager:didFindHotspotHelperNetworks:.cold.2()
{
  v0 = OUTLINED_FUNCTION_5_0();
  v1 = WFLogForCategory(v0);
  v2 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel(v2, v3) >= 3 && v1 && OUTLINED_FUNCTION_9())
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

- (void)_openHomeAppForNetwork:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_5_0();
  v3 = WFLogForCategory(v2);
  v4 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel(v4, v5) && v3 && OUTLINED_FUNCTION_4())
  {
    LODWORD(v12) = 136315138;
    *(&v12 + 4) = "[WFNetworkListController _openHomeAppForNetwork:]";
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v6, v7, "%s: nil network unconfiguredDeviceID", v8, v9, v10, v11, v12, DWORD2(v12));
  }

  *a1 = v3;
}

- (void)_openHomeAppForNetwork:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_5_0();
  v3 = WFLogForCategory(v2);
  v4 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel(v4, v5) && v3 && OUTLINED_FUNCTION_4())
  {
    LODWORD(v12) = 136315138;
    *(&v12 + 4) = "[WFNetworkListController _openHomeAppForNetwork:]";
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v6, v7, "%s: nil network", v8, v9, v10, v11, v12, DWORD2(v12));
  }

  *a1 = v3;
}

- (void)_interfaceDidBecomeAvailable:.cold.1()
{
  v1 = OUTLINED_FUNCTION_5_0();
  WFLogForCategory(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_8_0();
  if (WFCurrentLogLevel(v2, v3) && v0 && OUTLINED_FUNCTION_9())
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

- (void)handleURL:.cold.1()
{
  v1 = OUTLINED_FUNCTION_5_0();
  WFLogForCategory(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_8_0();
  if (WFCurrentLogLevel(v2, v3) && v0 && OUTLINED_FUNCTION_10())
  {
    v10 = 136315394;
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1(&dword_273ECD000, v4, v5, "%s: unable to create WiFiNetworkRef from scan dictionary: %@", v6, v7, v8, v9, v10);
  }
}

- (void)handleURL:.cold.2()
{
  v1 = OUTLINED_FUNCTION_5_0();
  WFLogForCategory(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_8_0();
  if (WFCurrentLogLevel(v2, v3) && v0 && OUTLINED_FUNCTION_10())
  {
    v10 = 136315394;
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1(&dword_273ECD000, v4, v5, "%s: Unable to serialize LastEnterpriseNetwork.plist (error %@)", v6, v7, v8, v9, v10);
  }
}

- (void)handleURL:.cold.3()
{
  v1 = OUTLINED_FUNCTION_5_0();
  WFLogForCategory(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_8_0();
  if (WFCurrentLogLevel(v2, v3) && v0 && OUTLINED_FUNCTION_10())
  {
    v10 = 136315394;
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1(&dword_273ECD000, v4, v5, "%s: missing path param (url %@)", v6, v7, v8, v9, v10);
  }
}

- (void)handleURL:.cold.4()
{
  v1 = OUTLINED_FUNCTION_5_0();
  WFLogForCategory(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_8_0();
  if (WFCurrentLogLevel(v2, v3) && v0 && OUTLINED_FUNCTION_10())
  {
    v10 = 136315394;
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1(&dword_273ECD000, v4, v5, "%s: missing path items (url %@)", v6, v7, v8, v9, v10);
  }
}

- (void)_handleCurrentNetworkDetailsURL:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_5_0();
  v3 = WFLogForCategory(v2);
  v4 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel(v4, v5) && v3 && OUTLINED_FUNCTION_4())
  {
    LODWORD(v12) = 136315138;
    *(&v12 + 4) = "[WFNetworkListController _handleCurrentNetworkDetailsURL:]";
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v6, v7, "%s: current network is nil", v8, v9, v10, v11, v12, DWORD2(v12));
  }

  *a1 = v3;
}

@end