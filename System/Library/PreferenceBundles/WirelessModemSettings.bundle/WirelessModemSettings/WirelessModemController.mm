@interface WirelessModemController
- (BOOL)_wiFiPower;
- (WirelessModemController)init;
- (id)_bandPreferenceSpecFooterLabel;
- (id)_bandPreferenceSpecLabel;
- (id)_groupPlacardSpec;
- (id)_placardSpec;
- (id)_wiFiPassword;
- (id)bandPreference;
- (id)bandPreferenceSpec;
- (id)dataUsageString;
- (id)familyShareSpecifier;
- (id)internetTethering:(id)tethering;
- (id)passwordSpec;
- (id)setupViewSpec;
- (id)shareOption;
- (id)shareSpecifier;
- (id)specifiers;
- (id)stateFooterSpec;
- (id)tetheringSwitchSpec;
- (id)usageSpecifier;
- (void)_btAuthenticationRequestHandler:(id)handler;
- (void)_btDevicePairedHandler:(id)handler;
- (void)_btPinRequestHandler:(id)handler;
- (void)_btPowerChangedHandler:(id)handler;
- (void)_btSSPConfirmationHandler:(id)handler;
- (void)_btSSPNumericComparisonHandler:(id)handler;
- (void)_btSSPPasskeyDisplayHandler:(id)handler;
- (void)_managedConfigurationChangedHandler:(id)handler;
- (void)_misStateChangedHandler:(id)handler;
- (void)_registerAllNotificationObservers;
- (void)_setMISDiscoveryStateEnabled:(BOOL)enabled effectiveImmediately:(BOOL)immediately forceBand:(BOOL)band;
- (void)_setWiFiPassword:(id)password;
- (void)_unregisterAllNotificationObservers;
- (void)_updatePersonalHotspotModificationDisableState;
- (void)_updateTetheringText:(BOOL)text;
- (void)_wiFiPowerChangedHandler;
- (void)allowWirelessConnections:(BOOL)connections;
- (void)cleanupPairing;
- (void)dealloc;
- (void)setBandPreference:(id)preference specifier:(id)specifier;
- (void)setInternetTethering:(id)tethering specifier:(id)specifier;
- (void)setPersonalHotspotModificationDisableState:(BOOL)state;
- (void)setShareOption:(id)option;
- (void)terminateSearching:(BOOL)searching;
- (void)updateInstructionsSection:(int)section;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation WirelessModemController

- (WirelessModemController)init
{
  v19.receiver = self;
  v19.super_class = WirelessModemController;
  v2 = [(WirelessModemController *)&v19 init];
  if (v2)
  {
    v2->_wifiClient = WiFiManagerClientCreate();
    v2->_wifiIsWAPI = MGGetBoolAnswer();
    v3 = NSClassFromString(&cfstr_Btspaircontrol.isa);
    v2->_btPairControllerClass = v3;
    if (!v3)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PreferenceBundles/BluetoothSettings.bundle"];
      [v4 load];

      v2->_btPairControllerClass = NSClassFromString(&cfstr_Btspaircontrol.isa);
    }

    v2->_btPairSetupClass = NSClassFromString(&cfstr_Btspairsetup.isa);
    v2->_btSSPRequestClass = NSClassFromString(&cfstr_Btssppairingre.isa);
    v2->_btAlertClass = NSClassFromString(&cfstr_Btalert.isa);
    v2->_btClassicDeviceClass = NSClassFromString(&cfstr_Btsdeviceclass.isa);
    if (v2->_wifiClient)
    {
      v2->_wifiTetheringSupported = WiFiManagerClientIsTetheringSupported() != 0;
      v2->_personalHotspotModificationDisabled = WiFiManagerClientIsPersonalHotspotModificationDisabled() != 0;
      v5 = WiFiManagerClientCopyProperty();
      v6 = v5;
      if (v5)
      {
        bOOLValue = [v5 BOOLValue];
        v2->_showBandPreferenceUI = bOOLValue;
        v8 = WMSLogComponent(bOOLValue);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [WirelessModemController init];
        }
      }

      if (!v2->_showBandPreferenceUI)
      {
        v2->_showBandPreferenceUI = 1;
      }
    }

    if (v2->_wifiTetheringSupported)
    {
      v9 = WiFiManagerClientCopyDevices();
      if ([v9 count])
      {
        v2->_wifiDevice = [v9 objectAtIndexedSubscript:0];
        CFRunLoopGetCurrent();
        WiFiManagerClientScheduleWithRunLoop();
        v10 = objc_initWeak(&location, v2);
        WiFiDeviceClientRegisterPowerCallback();

        objc_destroyWeak(&location);
      }
    }

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v11 bundleIdentifier];

    CFPreferencesSynchronize(bundleIdentifier, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    LOBYTE(location) = 0;
    if (CFPreferencesGetAppBooleanValue(@"ShowBTPowerPrompt", bundleIdentifier, &location))
    {
      v13 = 1;
    }

    else
    {
      v13 = location == 0;
    }

    v14 = v13;
    v2->_showBTPowerPrompt = v14;
  }

  v15 = dispatch_queue_create("com.apple.wirelessmodemsettings.phsettings-serial", 0);
  serialQueue = v2->_serialQueue;
  v2->_serialQueue = v15;

  return v2;
}

- (void)terminateSearching:(BOOL)searching
{
  if (self->_wifiTetheringSupported)
  {
    [(WirelessModemController *)self _setMISDiscoveryStateEnabled:0 effectiveImmediately:searching];
  }

  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  [mEMORY[0x277CF3248] setDiscoverable:0];

  mEMORY[0x277CF3248]2 = [MEMORY[0x277CF3248] sharedInstance];
  [mEMORY[0x277CF3248]2 setConnectable:0];

  [(WirelessModemController *)self cleanupPairing];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = WirelessModemController;
  [(WirelessModemController *)&v3 viewDidLoad];
  v2 = WMSUIEventDictionary(@"view-ph", 0);
  WMSubmitUIEventMetric(v2);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  navigationController = [(WirelessModemController *)self navigationController];
  childViewControllers = [navigationController childViewControllers];
  lastObject = [childViewControllers lastObject];

  if (!lastObject || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [(WirelessModemController *)self _unregisterAllNotificationObservers];
    [(WirelessModemController *)self terminateSearching:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = WirelessModemController;
  [(WirelessModemController *)&v10 viewDidAppear:appear];
  [(WirelessModemController *)self _registerAllNotificationObservers];
  [(WirelessModemController *)self allowWirelessConnections:1];
  if (_os_feature_enabled_impl())
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PersonalHotspot"];
    v5 = objc_alloc(MEMORY[0x277CCAEB8]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleURL = [v7 bundleURL];
    v9 = [v5 initWithKey:@"Personal Hotspot" table:0 locale:currentLocale bundleURL:bundleURL];

    if (objc_opt_respondsToSelector())
    {
      [(WirelessModemController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.personal-hotspot" title:v9 localizedNavigationComponents:MEMORY[0x277CBEBF8] deepLink:v4];
    }
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  v8.receiver = self;
  v8.super_class = WirelessModemController;
  [(WirelessModemController *)&v8 willMoveToParentViewController:?];
  if (!controller)
  {
    parentViewController = [(WirelessModemController *)self parentViewController];
    navigationItem = [parentViewController navigationItem];
    [navigationItem setTitleView:0];

    navigationItem2 = [(WirelessModemController *)self navigationItem];
    [navigationItem2 setTitleView:0];
  }
}

- (void)dealloc
{
  [(WirelessModemController *)self _unregisterAllNotificationObservers];
  [(WirelessModemController *)self allowWirelessConnections:0];
  if (self->_wifiTetheringSupported)
  {
    CFRunLoopGetCurrent();
    WiFiManagerClientUnscheduleFromRunLoop();
  }

  [(UIAlertController *)self->_powerAlert dismissViewControllerAnimated:1 completion:0];
  [self->_btSSPAlert dismiss];
  [self->_btAlert dismiss];
  wifiDevice = self->_wifiDevice;
  if (wifiDevice)
  {
    CFRelease(wifiDevice);
  }

  wifiClient = self->_wifiClient;
  if (wifiClient)
  {
    CFRelease(wifiClient);
  }

  v5.receiver = self;
  v5.super_class = WirelessModemController;
  [(WirelessModemController *)&v5 dealloc];
}

- (void)_misStateChangedHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__WirelessModemController__misStateChangedHandler___block_invoke;
  v6[3] = &unk_278BB50C8;
  v7 = handlerCopy;
  selfCopy = self;
  v5 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __51__WirelessModemController__misStateChangedHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"State"];
  v4 = [v3 unsignedIntValue];

  v5 = *(a1 + 40);
  if (v4 > 0x3FD)
  {
    [v5 _updateTetheringText:0];
    v7 = *(a1 + 40);
    v8 = v7[187];

    [v7 reloadSpecifier:v8];
  }

  else
  {
    [v5[185] dismissViewControllerAnimated:1 completion:0];
    [*(*(a1 + 40) + 1624) dismiss];
    [*(a1 + 40) cleanupPairing];
    v9 = [*(a1 + 40) rootController];
    v6 = [v9 popViewControllerAnimated:1];
  }
}

- (void)allowWirelessConnections:(BOOL)connections
{
  connectionsCopy = connections;
  if (!connections || (-[WirelessModemController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 _isInAWindow], v5, v6))
  {
    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    [mEMORY[0x277CF3248] setDiscoverable:connectionsCopy];

    mEMORY[0x277CF3248]2 = [MEMORY[0x277CF3248] sharedInstance];
    [mEMORY[0x277CF3248]2 setConnectable:connectionsCopy];

    if (self->_wifiTetheringSupported)
    {

      [(WirelessModemController *)self _setMISDiscoveryStateEnabled:connectionsCopy effectiveImmediately:connectionsCopy];
    }
  }
}

- (void)_managedConfigurationChangedHandler:(id)handler
{
  v4 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__WirelessModemController__managedConfigurationChangedHandler___block_invoke;
  block[3] = &unk_278BB5258;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

- (void)_updatePersonalHotspotModificationDisableState
{
  IsPersonalHotspotModificationDisabled = WiFiManagerClientIsPersonalHotspotModificationDisabled();
  v4 = IsPersonalHotspotModificationDisabled;
  v5 = WMSLogComponent(IsPersonalHotspotModificationDisabled);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [WirelessModemController _updatePersonalHotspotModificationDisableState];
  }

  [(WirelessModemController *)self setPersonalHotspotModificationDisableState:v4 != 0];
}

- (void)setPersonalHotspotModificationDisableState:(BOOL)state
{
  if (self->_personalHotspotModificationDisabled == state)
  {
    v3 = WMSLogComponent(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [WirelessModemController setPersonalHotspotModificationDisableState:];
    }
  }

  else
  {
    self->_personalHotspotModificationDisabled = state;
    tetheringSwitchSpec = self->_tetheringSwitchSpec;
    if (state)
    {
      v6 = MEMORY[0x277CBEC28];
    }

    else
    {
      v6 = MEMORY[0x277CBEC38];
    }

    [(PSSpecifier *)tetheringSwitchSpec setProperty:v6 forKey:*MEMORY[0x277D3FF38]];
    v7 = self->_tetheringSwitchSpec;

    [(WirelessModemController *)self reloadSpecifier:v7 animated:0];
  }
}

- (void)_registerAllNotificationObservers
{
  if (!self->_didRegisteredNotificationObservers)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_applicationWillResign_ name:@"UIApplicationWillResignActiveNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_applicationDidBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel__misStateChangedHandler_ name:@"MISManagerStateChangedNotification" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel__btPowerChangedHandler_ name:*MEMORY[0x277CF3168] object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:self selector:sel__btPowerChangedHandler_ name:*MEMORY[0x277CF3230] object:0];

    defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter6 addObserver:self selector:sel__btAuthenticationRequestHandler_ name:*MEMORY[0x277CF3200] object:0];

    defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter7 addObserver:self selector:sel__btDevicePairedHandler_ name:*MEMORY[0x277CF3208] object:0];

    defaultCenter8 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter8 addObserver:self selector:sel__btDevicePairedHandler_ name:*MEMORY[0x277CF3210] object:0];

    defaultCenter9 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter9 addObserver:self selector:sel__btAuthenticationRequestHandler_ name:*MEMORY[0x277CF3220] object:0];

    defaultCenter10 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter10 addObserver:self selector:sel__btAuthenticationRequestHandler_ name:*MEMORY[0x277CF3228] object:0];

    defaultCenter11 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter11 addObserver:self selector:sel__btAuthenticationRequestHandler_ name:*MEMORY[0x277CF3218] object:0];

    defaultCenter12 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter12 addObserver:self selector:sel__managedConfigurationChangedHandler_ name:*MEMORY[0x277D25CA0] object:0];

    self->_didRegisteredNotificationObservers = 1;
  }
}

- (void)_unregisterAllNotificationObservers
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  if (self->_wifiDevice)
  {
    WiFiDeviceClientRegisterPowerCallback();
  }

  self->_didRegisteredNotificationObservers = 0;
}

- (void)_setMISDiscoveryStateEnabled:(BOOL)enabled effectiveImmediately:(BOOL)immediately forceBand:(BOOL)band
{
  bandCopy = band;
  immediatelyCopy = immediately;
  enabledCopy = enabled;
  v14[2] = *MEMORY[0x277D85DE8];
  v8 = WMSLogComponent(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [WirelessModemController _setMISDiscoveryStateEnabled:enabledCopy effectiveImmediately:immediatelyCopy forceBand:v8];
  }

  v13[0] = @"SOFTAP_ENABLE";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  v13[1] = @"SOFTAP_IMMEDIATE_DISABLE";
  v14[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithBool:immediatelyCopy];
  v14[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  if (bandCopy)
  {
    v12 = [v11 mutableCopy];
    [v12 setObject:MEMORY[0x277CBEC38] forKey:@"SOFTAP_FORCE_2_4G_CHANNEL"];

    v11 = v12;
  }

  WiFiManagerClientSetMISDiscoveryStateExt();
}

- (void)_wiFiPowerChangedHandler
{
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__WirelessModemController__wiFiPowerChangedHandler__block_invoke;
  block[3] = &unk_278BB52A8;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_sync(serialQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __51__WirelessModemController__wiFiPowerChangedHandler__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__WirelessModemController__wiFiPowerChangedHandler__block_invoke_2;
  block[3] = &unk_278BB5280;
  objc_copyWeak(&v5, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  v2 = *(a1 + 32);
  if (*(v2 + 1473) == 1)
  {
    *(v2 + 1473) = 0;
    if ((*(*(a1 + 32) + 1472) & 1) == 0)
    {
      v3 = +[MISManager sharedManager];
      [v3 setState:1023];
    }
  }

  if (WiFiDeviceClientGetPower())
  {
    [*(a1 + 32) _setMISDiscoveryStateEnabled:1 effectiveImmediately:0];
  }

  objc_destroyWeak(&v5);
}

void __51__WirelessModemController__wiFiPowerChangedHandler__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTetheringText:0];
}

- (BOOL)_wiFiPower
{
  if (self->_wifiTetheringSupported)
  {
    wifiDevice = self->_wifiDevice;
    if (wifiDevice)
    {
      LOBYTE(wifiDevice) = WiFiDeviceClientGetPower() != 0;
    }
  }

  else
  {
    LOBYTE(wifiDevice) = 0;
  }

  return wifiDevice;
}

- (void)_setWiFiPassword:(id)password
{
  passwordCopy = password;
  if (self->_wifiClient)
  {
    v6 = passwordCopy;
    v5 = passwordCopy;
    WiFiManagerClientSetMisPassword();
    passwordCopy = v6;
  }
}

- (id)_wiFiPassword
{
  if (!self->_wifiClient)
  {
    goto LABEL_5;
  }

  v3 = WiFiManagerClientCopyMisPassword();
  if ([v3 length])
  {
    goto LABEL_6;
  }

  v4 = +[WiFiPasswordController generateDefaultPassword];

  if (v4)
  {
    [(WirelessModemController *)self _setWiFiPassword:v4];
    v5 = WMSUIEventDictionary(@"generated-ph-password", 0);
    WMSubmitUIEventMetric(v5);

    v3 = v4;
  }

  else
  {
LABEL_5:
    v3 = 0;
  }

LABEL_6:

  return v3;
}

- (void)setBandPreference:(id)preference specifier:(id)specifier
{
  preferenceCopy = preference;
  bOOLValue = [preferenceCopy BOOLValue];
  [MEMORY[0x277CCABB0] numberWithUnsignedInt:bOOLValue];
  v7 = WiFiManagerClientSetProperty();
  v8 = WMSLogComponent(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [WirelessModemController setBandPreference:specifier:];
  }

  [(WirelessModemController *)self _setMISDiscoveryStateEnabled:1 effectiveImmediately:1 forceBand:bOOLValue];
  bOOLValue2 = [preferenceCopy BOOLValue];

  if (bOOLValue2)
  {
    v10 = @"true";
  }

  else
  {
    v10 = @"false";
  }

  v11 = WMSUIEventDictionary(@"toggle-ph-compatibility", v10);
  WMSubmitUIEventMetric(v11);
}

- (id)bandPreference
{
  v2 = WiFiManagerClientCopyProperty();
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v2, "intValue") == 1}];

  return v3;
}

- (void)_btPowerChangedHandler:(id)handler
{
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__WirelessModemController__btPowerChangedHandler___block_invoke;
  block[3] = &unk_278BB52D0;
  block[4] = self;
  objc_copyWeak(&v6, &location);
  dispatch_sync(serialQueue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __50__WirelessModemController__btPowerChangedHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__WirelessModemController__btPowerChangedHandler___block_invoke_2;
  block[3] = &unk_278BB5258;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  v2 = *(a1 + 32);
  if (*(v2 + 1472) == 1)
  {
    *(v2 + 1472) = 0;
    if ((*(*(a1 + 32) + 1473) & 1) == 0)
    {
      v3 = +[MISManager sharedManager];
      [v3 setState:1023];
    }
  }

  v4 = [MEMORY[0x277CF3248] sharedInstance];
  v5 = [v4 powered];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (v5)
  {
    [WeakRetained allowWirelessConnections:1];
  }

  else
  {
    [WeakRetained cleanupPairing];
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 1504);
  *(v8 + 1504) = 0;
}

- (void)_btAuthenticationRequestHandler:(id)handler
{
  v56 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_btPairControllerClass && self->_btPairSetupClass && self->_btSSPRequestClass)
  {
    rootController = [(WirelessModemController *)self rootController];
    visibleViewController = [rootController visibleViewController];
    if ((objc_opt_isKindOfClass() & 1) != 0 || self->_btSSPAlert)
    {

      goto LABEL_7;
    }

    btAlert = self->_btAlert;

    if (btAlert)
    {
LABEL_7:
      v9 = WMSLogComponent(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [WirelessModemController _btAuthenticationRequestHandler:];
      }

LABEL_9:

      goto LABEL_10;
    }

    if (!self->_waitingOnBTPower && !self->_currentDeviceSpecifier)
    {
      name = [handlerCopy name];
      v12 = *MEMORY[0x277CF3228];
      if ([name isEqualToString:*MEMORY[0x277CF3228]])
      {
      }

      else
      {
        name2 = [handlerCopy name];
        v14 = [name2 isEqualToString:*MEMORY[0x277CF3218]];

        if (!v14)
        {
          object = [handlerCopy object];
          v9 = object;
          goto LABEL_19;
        }
      }

      object2 = [handlerCopy object];
      v9 = [object2 objectForKeyedSubscript:@"device"];

LABEL_19:
      v17 = WMSLogComponent(object);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v49 = NSStringFromSelector(a2);
        name3 = [handlerCopy name];
        [v9 name];
        *buf = 138412802;
        v51 = v49;
        v52 = 2112;
        v53 = name3;
        v55 = v54 = 2112;
        v48 = v55;
        _os_log_error_impl(&dword_23C15F000, v17, OS_LOG_TYPE_ERROR, "%@ received %@ for device %@", buf, 0x20u);
      }

      if (-[NSObject majorClass](v9, "majorClass") == 256 && ([handlerCopy userInfo], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "valueForKey:", @"delayedPairingForNR"), v19 = objc_claimAutoreleasedReturnValue(), v19, v18, !v19))
      {
        v39 = WMSLogComponent(v20);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [WirelessModemController _btAuthenticationRequestHandler:];
        }

        v40 = MEMORY[0x277CBEB38];
        userInfo = [handlerCopy userInfo];
        dictionary = [v40 dictionaryWithDictionary:userInfo];

        [dictionary setObject:&stru_284EED640 forKeyedSubscript:@"delayedPairingForNR"];
        v42 = MEMORY[0x277CCAB88];
        name4 = [handlerCopy name];
        object3 = [handlerCopy object];
        v44 = [v42 notificationWithName:name4 object:object3 userInfo:dictionary];
        [(WirelessModemController *)self performSelector:sel__btAuthenticationRequestHandler_ withObject:v44 afterDelay:1.0];
      }

      else
      {
        name5 = [v9 name];
        v22 = name5;
        v23 = &stru_284EED640;
        if (name5)
        {
          v23 = name5;
        }

        v24 = v23;

        v25 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v24 target:self set:0 get:0 detail:0 cell:1 edit:0];
        currentDeviceSpecifier = self->_currentDeviceSpecifier;
        self->_currentDeviceSpecifier = v25;

        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v28 = NSStringFromClass(self->_btPairSetupClass);
        [dictionary setObject:v28 forKeyedSubscript:*MEMORY[0x277D3FF08]];

        v29 = NSStringFromClass(self->_btPairControllerClass);
        [dictionary setObject:v29 forKeyedSubscript:*MEMORY[0x277D400B8]];

        [dictionary setObject:@"PSLinkCell" forKeyedSubscript:*MEMORY[0x277D40138]];
        [dictionary setObject:v24 forKeyedSubscript:*MEMORY[0x277D40170]];

        address = [v9 address];
        [dictionary setObject:address forKeyedSubscript:*MEMORY[0x277D3FFB8]];

        [(PSSpecifier *)self->_currentDeviceSpecifier setProperties:dictionary];
        name4 = [MEMORY[0x277CBEB38] dictionary];
        v32 = [(objc_class *)self->_btClassicDeviceClass deviceWithDevice:v9];
        [name4 setObject:v32 forKeyedSubscript:@"bt-device"];

        [name4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"reverse-pairing"];
        [(PSSpecifier *)self->_currentDeviceSpecifier setUserInfo:name4];
        name6 = [handlerCopy name];
        v34 = [name6 isEqualToString:*MEMORY[0x277CF3200]];

        if (v34)
        {
          [(WirelessModemController *)self _btPinRequestHandler:handlerCopy];
        }

        else
        {
          name7 = [handlerCopy name];
          v36 = [name7 isEqualToString:*MEMORY[0x277CF3220]];

          if (v36)
          {
            [(WirelessModemController *)self _btSSPConfirmationHandler:handlerCopy];
          }

          else
          {
            name8 = [handlerCopy name];
            v38 = [name8 isEqualToString:v12];

            if (v38)
            {
              [(WirelessModemController *)self _btSSPNumericComparisonHandler:handlerCopy];
            }

            else
            {
              name9 = [handlerCopy name];
              v46 = [name9 isEqualToString:*MEMORY[0x277CF3218]];

              if (v46)
              {
                [(WirelessModemController *)self _btSSPPasskeyDisplayHandler:handlerCopy];
              }
            }
          }
        }
      }

      goto LABEL_9;
    }
  }

LABEL_10:
}

- (void)_btPinRequestHandler:(id)handler
{
  handlerCopy = handler;
  v6 = WMSLogComponent(handlerCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(WirelessModemController *)a2 _btPinRequestHandler:handlerCopy, v6];
  }

  v7 = objc_alloc_init(self->_btPairSetupClass);
  [(WirelessModemController *)self setShowingSetupController:1];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD10]));
  [v7 setRootController:WeakRetained];

  [v7 setParentController:self];
  [v7 setSpecifier:self->_currentDeviceSpecifier];
  objc_storeWeak((self->_currentDeviceSpecifier + *MEMORY[0x277D3FCB8]), self);
  [(WirelessModemController *)self showController:v7];
}

- (void)_btSSPConfirmationHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v7 = WMSLogComponent(object);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    name = [handlerCopy name];
    name2 = [object name];
    v13 = 138412802;
    v14 = v10;
    v15 = 2112;
    v16 = name;
    v17 = 2112;
    v18 = name2;
    _os_log_error_impl(&dword_23C15F000, v7, OS_LOG_TYPE_ERROR, "%@ received %@ for device %@", &v13, 0x20u);
  }

  v8 = [objc_alloc(self->_btSSPRequestClass) initWithDevice:object andSpecifier:self->_currentDeviceSpecifier];
  btSSPAlert = self->_btSSPAlert;
  self->_btSSPAlert = v8;

  [self->_btSSPAlert setPairingStyle:0 andPasskey:0];
  [self->_btSSPAlert setDelegate:self];
  [self->_btSSPAlert show];
}

- (void)_btSSPNumericComparisonHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v7 = [object objectForKeyedSubscript:@"device"];
  v8 = [object objectForKeyedSubscript:@"value"];
  v9 = WMSLogComponent(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = NSStringFromSelector(a2);
    name = [handlerCopy name];
    name2 = [v7 name];
    v15 = 138412802;
    v16 = v12;
    v17 = 2112;
    v18 = name;
    v19 = 2112;
    v20 = name2;
    _os_log_error_impl(&dword_23C15F000, v9, OS_LOG_TYPE_ERROR, "%@ received %@ for device %@", &v15, 0x20u);
  }

  v10 = [objc_alloc(self->_btSSPRequestClass) initWithDevice:v7 andSpecifier:self->_currentDeviceSpecifier];
  btSSPAlert = self->_btSSPAlert;
  self->_btSSPAlert = v10;

  [self->_btSSPAlert setPairingStyle:1 andPasskey:v8];
  [self->_btSSPAlert setDelegate:self];
  [self->_btSSPAlert show];
}

- (void)_btSSPPasskeyDisplayHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v7 = [object objectForKeyedSubscript:@"device"];
  v8 = [object objectForKeyedSubscript:@"value"];
  v9 = WMSLogComponent(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = NSStringFromSelector(a2);
    name = [handlerCopy name];
    name2 = [v7 name];
    v15 = 138412802;
    v16 = v12;
    v17 = 2112;
    v18 = name;
    v19 = 2112;
    v20 = name2;
    _os_log_error_impl(&dword_23C15F000, v9, OS_LOG_TYPE_ERROR, "%@ received %@ for device %@", &v15, 0x20u);
  }

  v10 = [objc_alloc(self->_btSSPRequestClass) initWithDevice:v7 andSpecifier:self->_currentDeviceSpecifier];
  btSSPAlert = self->_btSSPAlert;
  self->_btSSPAlert = v10;

  [self->_btSSPAlert setPairingStyle:2 andPasskey:v8];
  [self->_btSSPAlert setDelegate:self];
  [self->_btSSPAlert show];
}

- (void)_btDevicePairedHandler:(id)handler
{
  handlerCopy = handler;
  object = [handlerCopy object];
  address = [object address];
  identifier = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
  v7 = [address isEqualToString:identifier];

  if (v7)
  {
    userInfo = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    v9 = [userInfo objectForKey:@"PIN-ended"];

    userInfo2 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    [userInfo2 removeObjectForKey:@"PIN-ended"];

    name = [handlerCopy name];
    v12 = [name isEqualToString:*MEMORY[0x277CF3208]];

    if (v12)
    {
      if (!self->_btAlert)
      {
        v13 = [objc_alloc(self->_btAlertClass) initWithDevice:object];
        btAlert = self->_btAlert;
        self->_btAlert = v13;

        [self->_btAlert setDelegate:self];
        if (v9 || ((btSSPAlert = self->_btSSPAlert) == 0 || [btSSPAlert pairingStyle] == 2 || objc_msgSend(self->_btSSPAlert, "pairingStyle") == 3) && (-[WirelessModemController rootController](self, "rootController"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "visibleViewController"), v17 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v17, v16, (isKindOfClass & 1) == 0))
        {
          if (![v9 isEqualToString:@"entered"])
          {
            userInfo3 = [handlerCopy userInfo];
            v21 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CF31D8]];

            goto LABEL_15;
          }

          v19 = MEMORY[0x277CCABB0];
          v20 = 156;
        }

        else
        {
          v19 = MEMORY[0x277CCABB0];
          v20 = 1;
        }

        v21 = [v19 numberWithUnsignedInt:v20];
LABEL_15:
        [(WirelessModemController *)self cleanupPairing];
        [self->_btAlert showAlertWithResult:v21];
      }
    }

    else
    {
      [(WirelessModemController *)self cleanupPairing];
    }

    currentDeviceSpecifier = self->_currentDeviceSpecifier;
    self->_currentDeviceSpecifier = 0;
  }
}

- (void)cleanupPairing
{
  [self->_btSSPAlert dismiss];
  btSSPAlert = self->_btSSPAlert;
  self->_btSSPAlert = 0;

  rootController = [(WirelessModemController *)self rootController];
  visibleViewController = [rootController visibleViewController];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    rootController2 = [(WirelessModemController *)self rootController];
    visibleViewController2 = [rootController2 visibleViewController];
    parentViewController = [visibleViewController2 parentViewController];
    [parentViewController performSelector:sel_dismiss];
  }
}

- (id)internetTethering:(id)tethering
{
  v6 = 0;
  v3 = +[MISManager sharedManager];
  [v3 getState:&v6 andReason:0];

  1023 = [MEMORY[0x277CCABB0] numberWithInt:v6 == 1023];

  return 1023;
}

- (void)setInternetTethering:(id)tethering specifier:(id)specifier
{
  tetheringCopy = tethering;
  specifierCopy = specifier;
  v153[0] = 1022;
  bOOLValue = [tetheringCopy BOOLValue];
  if (bOOLValue)
  {
    v9 = 1023;
  }

  else
  {
    v9 = 1022;
  }

  v10 = +[MISManager sharedManager];
  [v10 getState:v153 andReason:0];

  if (v153[0] != v9)
  {
    if ((v153[0] == 1022) & bOOLValue) != 1 || (([MEMORY[0x277CF3248] sharedInstance], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "enabled"), v13, v15 = -[WirelessModemController _wiFiPower](self, "_wiFiPower"), v16 = v15, (v14) || !self->_showBTPowerPrompt) && (!self->_wifiTetheringSupported || self->_wifiDevice == 0 || v15))
    {
      [(WirelessModemController *)self updateInstructionsSection:v9];
      v17 = +[MISManager sharedManager];
      [v17 setState:v9];

      if ([tetheringCopy BOOLValue])
      {
        v18 = @"true";
      }

      else
      {
        v18 = @"false";
      }

      v19 = WMSUIEventDictionary(@"toggle-ph-discovery", v18);
      WMSubmitUIEventMetric(v19);

      goto LABEL_54;
    }

    v20 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [specifierCopy setProperty:v20 forKey:*MEMORY[0x277D3FEA8]];

    [(WirelessModemController *)self reloadSpecifier:specifierCopy];
    v133 = specifierCopy;
    if (v14)
    {
      v126 = MEMORY[0x277D75110];
      v21 = MEMORY[0x277CCACA8];
      v134 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v134 localizedStringForKey:@"POWER_ALERT_WF_OFF_TITLE" value:&stru_284EED640 table:?];
      v122 = v22;
      wifiIsWAPI = self->_wifiIsWAPI;
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v124 = v24;
      if (wifiIsWAPI)
      {
        v25 = @"WIFI_CH";
      }

      else
      {
        v25 = @"WIFI";
      }

      v121 = [v24 localizedStringForKey:v25 value:&stru_284EED640 table:@"WirelessModemSettings"];
      v121 = [v21 stringWithFormat:v22, v121];
      v27 = MEMORY[0x277CCACA8];
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"POWER_ALERT_WF_OFF_MESSAGE" value:&stru_284EED640 table:@"WirelessModemSettings"];
      v30 = self->_wifiIsWAPI;
      v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v32 = v31;
      if (v30)
      {
        v33 = @"WIFI_CH";
      }

      else
      {
        v33 = @"WIFI";
      }

      v34 = [v31 localizedStringForKey:v33 value:&stru_284EED640 table:@"WirelessModemSettings"];
      v35 = [v27 stringWithFormat:v29, v34];
      v36 = [v126 alertControllerWithTitle:v121 message:v35 preferredStyle:1];
      powerAlert = self->_powerAlert;
      self->_powerAlert = v36;

      objc_initWeak(&location, self->_powerAlert);
      v38 = MEMORY[0x277D750F8];
      v39 = MEMORY[0x277CCACA8];
      v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v41 = [v40 localizedStringForKey:@"POWER_ALERT_WF_OFF_CANCEL_BUTTON" value:&stru_284EED640 table:@"WirelessModemSettings"];
      if (self->_wifiIsWAPI)
      {
        v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v42 localizedStringForKey:@"WIFI_CH" value:&stru_284EED640 table:@"WirelessModemSettings"];
      }

      else
      {
        v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v42 localizedStringForKey:@"WIFI" value:&stru_284EED640 table:@"WirelessModemSettings"];
      }
      v75 = ;
      v76 = [v39 stringWithFormat:v41, v75];
      v138[0] = MEMORY[0x277D85DD0];
      v138[1] = 3221225472;
      v138[2] = __58__WirelessModemController_setInternetTethering_specifier___block_invoke_7;
      v138[3] = &unk_278BB52F8;
      objc_copyWeak(&v139, &location);
      v128 = [v38 actionWithTitle:v76 style:1 handler:v138];

      v77 = MEMORY[0x277D750F8];
      v78 = MEMORY[0x277CCACA8];
      v79 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v80 = [v79 localizedStringForKey:@"POWER_ALERT_WF_OFF_OK_BUTTON" value:&stru_284EED640 table:@"WirelessModemSettings"];
      if (self->_wifiIsWAPI)
      {
        v81 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v81 localizedStringForKey:@"WIFI_CH" value:&stru_284EED640 table:@"WirelessModemSettings"];
      }

      else
      {
        v81 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v81 localizedStringForKey:@"WIFI" value:&stru_284EED640 table:@"WirelessModemSettings"];
      }
      v82 = ;
      v83 = [v78 stringWithFormat:v80, v82];
      v136[0] = MEMORY[0x277D85DD0];
      v136[1] = 3221225472;
      v136[2] = __58__WirelessModemController_setInternetTethering_specifier___block_invoke_8;
      v136[3] = &unk_278BB5320;
      v136[4] = self;
      objc_copyWeak(&v137, &location);
      v84 = [v77 actionWithTitle:v83 style:0 handler:v136];

      [(UIAlertController *)self->_powerAlert addAction:v128];
      [(UIAlertController *)self->_powerAlert addAction:v84];

      objc_destroyWeak(&v137);
      v85 = v138;
LABEL_52:
      objc_destroyWeak(v85 + 4);
      objc_destroyWeak(&location);
      specifierCopy = v133;
      goto LABEL_53;
    }

    if (self->_wifiTetheringSupported)
    {
      v135 = MEMORY[0x277D75110];
      if (self->_wifiDevice != 0 && !v16)
      {
        v86 = MEMORY[0x277CCACA8];
        v131 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v87 = [v131 localizedStringForKey:@"POWER_ALERT_BOTH_OFF_TITLE" value:&stru_284EED640 table:?];
        v125 = v87;
        v88 = self->_wifiIsWAPI;
        v89 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v129 = v89;
        if (v88)
        {
          v90 = @"WIFI_CH";
        }

        else
        {
          v90 = @"WIFI";
        }

        v123 = [v89 localizedStringForKey:v90 value:&stru_284EED640 table:@"WirelessModemSettings"];
        v123 = [v86 stringWithFormat:v87, v123];
        v92 = MEMORY[0x277CCACA8];
        v93 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v94 = [v93 localizedStringForKey:@"POWER_ALERT_BOTH_OFF_MESSAGE" value:&stru_284EED640 table:@"WirelessModemSettings"];
        v95 = self->_wifiIsWAPI;
        v96 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v97 = v96;
        if (v95)
        {
          v98 = @"WIFI_CH";
        }

        else
        {
          v98 = @"WIFI";
        }

        v99 = [v96 localizedStringForKey:v98 value:&stru_284EED640 table:@"WirelessModemSettings"];
        v100 = [v92 stringWithFormat:v94, v99];
        v101 = [v135 alertControllerWithTitle:v123 message:v100 preferredStyle:1];
        v102 = self->_powerAlert;
        self->_powerAlert = v101;

        objc_initWeak(&location, self->_powerAlert);
        v103 = MEMORY[0x277D750F8];
        v104 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v105 = [v104 localizedStringForKey:@"POWER_ALERT_BOTH_OFF_CANCEL_BUTTON" value:&stru_284EED640 table:@"WirelessModemSettings"];
        v150[0] = MEMORY[0x277D85DD0];
        v150[1] = 3221225472;
        v150[2] = __58__WirelessModemController_setInternetTethering_specifier___block_invoke;
        v150[3] = &unk_278BB52F8;
        objc_copyWeak(&v151, &location);
        v132 = [v103 actionWithTitle:v105 style:1 handler:v150];

        v106 = MEMORY[0x277D750F8];
        v107 = MEMORY[0x277CCACA8];
        v108 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v109 = [v108 localizedStringForKey:@"POWER_ALERT_BOTH_OFF_OK_BUTTON" value:&stru_284EED640 table:@"WirelessModemSettings"];
        if (self->_wifiIsWAPI)
        {
          v110 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          [v110 localizedStringForKey:@"WIFI_CH" value:&stru_284EED640 table:@"WirelessModemSettings"];
        }

        else
        {
          v110 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          [v110 localizedStringForKey:@"WIFI" value:&stru_284EED640 table:@"WirelessModemSettings"];
        }
        v118 = ;
        v118 = [v107 stringWithFormat:v109, v118];
        v148[0] = MEMORY[0x277D85DD0];
        v148[1] = 3221225472;
        v148[2] = __58__WirelessModemController_setInternetTethering_specifier___block_invoke_2;
        v148[3] = &unk_278BB5320;
        v148[4] = self;
        objc_copyWeak(&v149, &location);
        v120 = [v106 actionWithTitle:v118 style:0 handler:v148];

        [(UIAlertController *)self->_powerAlert addAction:v132];
        [(UIAlertController *)self->_powerAlert addAction:v120];

        objc_destroyWeak(&v149);
        v85 = v150;
        goto LABEL_52;
      }

      v130 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v127 = [v130 localizedStringForKey:@"POWER_ALERT_BT_OFF_TITLE" value:&stru_284EED640 table:@"WirelessModemSettings"];
      v43 = MEMORY[0x277CCACA8];
      v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v45 = [v44 localizedStringForKey:@"POWER_ALERT_BT_OFF_MESSAGE" value:&stru_284EED640 table:@"WirelessModemSettings"];
      v46 = self->_wifiIsWAPI;
      v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v48 = v47;
      if (v46)
      {
        v49 = @"WIFI_CH";
      }

      else
      {
        v49 = @"WIFI";
      }

      v50 = [v47 localizedStringForKey:v49 value:&stru_284EED640 table:@"WirelessModemSettings"];
      v51 = [v43 stringWithFormat:v45, v50];
      v52 = [v135 alertControllerWithTitle:v127 message:v51 preferredStyle:1];
      v53 = self->_powerAlert;
      self->_powerAlert = v52;

      objc_initWeak(&location, self->_powerAlert);
      v54 = MEMORY[0x277D750F8];
      v55 = MEMORY[0x277CCACA8];
      v56 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v57 = [v56 localizedStringForKey:@"POWER_ALERT_BT_OFF_CANCEL_BUTTON" value:&stru_284EED640 table:@"WirelessModemSettings"];
      if (self->_wifiIsWAPI)
      {
        v58 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v58 localizedStringForKey:@"WIFI_CH" value:&stru_284EED640 table:@"WirelessModemSettings"];
      }

      else
      {
        v58 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v58 localizedStringForKey:@"WIFI" value:&stru_284EED640 table:@"WirelessModemSettings"];
      }
      v111 = ;
      v111 = [v55 stringWithFormat:v57, v111];
      v142[0] = MEMORY[0x277D85DD0];
      v142[1] = 3221225472;
      v142[2] = __58__WirelessModemController_setInternetTethering_specifier___block_invoke_5;
      v142[3] = &unk_278BB5320;
      v142[4] = self;
      objc_copyWeak(&v143, &location);
      v113 = [v54 actionWithTitle:v111 style:1 handler:v142];

      v114 = MEMORY[0x277D750F8];
      v115 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v116 = [v115 localizedStringForKey:@"POWER_ALERT_BT_OFF_OK_BUTTON" value:&stru_284EED640 table:@"WirelessModemSettings"];
      v140[0] = MEMORY[0x277D85DD0];
      v140[1] = 3221225472;
      v140[2] = __58__WirelessModemController_setInternetTethering_specifier___block_invoke_6;
      v140[3] = &unk_278BB5320;
      v140[4] = self;
      objc_copyWeak(&v141, &location);
      v117 = [v114 actionWithTitle:v116 style:0 handler:v140];

      [(UIAlertController *)self->_powerAlert addAction:v113];
      [(UIAlertController *)self->_powerAlert addAction:v117];

      objc_destroyWeak(&v141);
      v74 = &v143;
    }

    else
    {
      v59 = MEMORY[0x277D75110];
      v60 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v61 = [v60 localizedStringForKey:@"POWER_ALERT_BT_ONLY_OFF_TITLE" value:&stru_284EED640 table:@"WirelessModemSettings"];
      v62 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v63 = [v62 localizedStringForKey:@"POWER_ALERT_BT_ONLY_OFF_MESSAGE" value:&stru_284EED640 table:@"WirelessModemSettings"];
      v64 = [v59 alertControllerWithTitle:v61 message:v63 preferredStyle:1];
      v65 = self->_powerAlert;
      self->_powerAlert = v64;

      objc_initWeak(&location, self->_powerAlert);
      v66 = MEMORY[0x277D750F8];
      v67 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v68 = [v67 localizedStringForKey:@"POWER_ALERT_BT_ONLY_OFF_CANCEL_BUTTON" value:&stru_284EED640 table:@"WirelessModemSettings"];
      v146[0] = MEMORY[0x277D85DD0];
      v146[1] = 3221225472;
      v146[2] = __58__WirelessModemController_setInternetTethering_specifier___block_invoke_3;
      v146[3] = &unk_278BB5320;
      v146[4] = self;
      objc_copyWeak(&v147, &location);
      v69 = [v66 actionWithTitle:v68 style:1 handler:v146];

      v70 = MEMORY[0x277D750F8];
      v71 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v72 = [v71 localizedStringForKey:@"POWER_ALERT_BT_ONLY_OFF_OK_BUTTON" value:&stru_284EED640 table:@"WirelessModemSettings"];
      v144[0] = MEMORY[0x277D85DD0];
      v144[1] = 3221225472;
      v144[2] = __58__WirelessModemController_setInternetTethering_specifier___block_invoke_4;
      v144[3] = &unk_278BB5320;
      v144[4] = self;
      objc_copyWeak(&v145, &location);
      v73 = [v70 actionWithTitle:v72 style:0 handler:v144];

      [(UIAlertController *)self->_powerAlert addAction:v69];
      [(UIAlertController *)self->_powerAlert addAction:v73];

      objc_destroyWeak(&v145);
      v74 = &v147;
    }

    objc_destroyWeak(v74);
    objc_destroyWeak(&location);
    specifierCopy = v133;
LABEL_53:
    [(WirelessModemController *)self presentViewController:self->_powerAlert animated:1 completion:0];
    goto LABEL_54;
  }

  v12 = WMSLogComponent(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [(WirelessModemController *)v153 setInternetTethering:tetheringCopy specifier:v12];
  }

  [(WirelessModemController *)self updateInstructionsSection:v153[0]];
LABEL_54:
}

void __58__WirelessModemController_setInternetTethering_specifier___block_invoke(uint64_t a1)
{
  v2 = +[MISManager sharedManager];
  [v2 setState:1023];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void __58__WirelessModemController_setInternetTethering_specifier___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1473) = 1;
  *(*(a1 + 32) + 1472) = 1;
  WiFiManagerClientSetPower();
  v2 = [MEMORY[0x277CF3248] sharedInstance];
  [v2 setPowered:1];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void __58__WirelessModemController_setInternetTethering_specifier___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 1476) = 0;
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  applicationID = [v2 bundleIdentifier];

  CFPreferencesSetAppValue(@"ShowBTPowerPrompt", *MEMORY[0x277CBED10], applicationID);
  CFPreferencesSynchronize(applicationID, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v3 = +[MISManager sharedManager];
  [v3 setState:1023];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void __58__WirelessModemController_setInternetTethering_specifier___block_invoke_4(uint64_t a1)
{
  *(*(a1 + 32) + 1472) = 1;
  v2 = [MEMORY[0x277CF3248] sharedInstance];
  [v2 setPowered:1];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void __58__WirelessModemController_setInternetTethering_specifier___block_invoke_5(uint64_t a1)
{
  *(*(a1 + 32) + 1476) = 0;
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  applicationID = [v2 bundleIdentifier];

  CFPreferencesSetAppValue(@"ShowBTPowerPrompt", *MEMORY[0x277CBED10], applicationID);
  CFPreferencesSynchronize(applicationID, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v3 = +[MISManager sharedManager];
  [v3 setState:1023];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void __58__WirelessModemController_setInternetTethering_specifier___block_invoke_6(uint64_t a1)
{
  *(*(a1 + 32) + 1472) = 1;
  v2 = [MEMORY[0x277CF3248] sharedInstance];
  [v2 setPowered:1];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void __58__WirelessModemController_setInternetTethering_specifier___block_invoke_7(uint64_t a1)
{
  v2 = +[MISManager sharedManager];
  [v2 setState:1023];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void __58__WirelessModemController_setInternetTethering_specifier___block_invoke_8(uint64_t a1)
{
  *(*(a1 + 32) + 1473) = 1;
  WiFiManagerClientSetPower();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)updateInstructionsSection:(int)section
{
  if (section == 1022)
  {
    [(WirelessModemController *)self removeSpecifier:self->_setupViewSpec];
  }

  else if (section == 1023)
  {
    v3 = 2;
    if (self->_familyHotspotEnabled)
    {
      v3 = 3;
    }

    [(WirelessModemController *)self insertSpecifier:self->_setupViewSpec atEndOfGroup:v3 + self->_showBandPreferenceUI animated:1];
  }
}

- (void)_updateTetheringText:(BOOL)text
{
  textCopy = text;
  v27 = 0;
  v5 = +[MISManager sharedManager];
  [v5 getState:&v27 + 4 andReason:&v27];

  v6 = *MEMORY[0x277D3FF38];
  if (self->_personalHotspotModificationDisabled)
  {
    v7 = MEMORY[0x277CBEC28];
  }

  else
  {
    v7 = MEMORY[0x277CBEC38];
  }

  [(PSSpecifier *)self->_tetheringSwitchSpec setProperty:v7 forKey:*MEMORY[0x277D3FF38]];
  if (!self->_waitingOnWifiPower && !self->_waitingOnBTPower)
  {
    [(PSSpecifier *)self->_tetheringSwitchSpec setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FEA8]];
  }

  if (HIDWORD(v27) == 1023)
  {
    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    enabled = [mEMORY[0x277CF3248] enabled];

    _wiFiPower = [(WirelessModemController *)self _wiFiPower];
    if ((enabled & 1) != 0 || _wiFiPower)
    {
      v24 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      currentDevice = [v11 localizedStringForKey:@"TETHERING_TEXT_DEFAULT" value:&stru_284EED640 table:@"WirelessModemSettings"];
      model = WMSGetCurrentDeviceName();
      v17 = [v24 stringWithFormat:currentDevice, model];
    }

    else
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = MEMORY[0x277CCACA8];
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      model = [currentDevice model];
      uppercaseString = [model uppercaseString];
      v16 = [v12 stringWithFormat:@"%@_%@", @"TETHERING_TEXT_USB", uppercaseString];
      v17 = [v11 localizedStringForKey:v16 value:&stru_284EED640 table:@"WirelessModemSettings"];
    }
  }

  else
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"TETHERING_TEXT_DEFAULT" value:&stru_284EED640 table:@"WirelessModemSettings"];
    v21 = WMSGetCurrentDeviceName();
    v17 = [v18 stringWithFormat:v20, v21];

    if (HIDWORD(v27) != 1022 || v27 == 4 && (+[MISManager sharedManager](MISManager, "sharedManager"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 didUserPreventData], v22, v23))
    {
      [(PSSpecifier *)self->_tetheringSwitchSpec setProperty:MEMORY[0x277CBEC28] forKey:v6];
    }
  }

  stateFooterSpec = self->_stateFooterSpec;
  if (textCopy)
  {
    [(PSSpecifier *)stateFooterSpec setProperty:v17 forKey:@"TextFooterInitialText"];
  }

  else
  {
    v26 = [(PSSpecifier *)stateFooterSpec propertyForKey:*MEMORY[0x277D3FFB0]];
    [v26 setText:v17];

    [(WirelessModemController *)self reloadSpecifier:self->_stateFooterSpec animated:0];
  }
}

- (id)shareOption
{
  ShareMyPersonalHotspotMode = WiFiManagerClientGetShareMyPersonalHotspotMode();
  if (ShareMyPersonalHotspotMode > 2)
  {
    return &unk_284EEFB70;
  }

  else
  {
    return qword_278BB5340[ShareMyPersonalHotspotMode];
  }
}

- (void)setShareOption:(id)option
{
  optionCopy = option;
  if (([optionCopy isEqual:&unk_284EEFB70] & 1) == 0 && (objc_msgSend(optionCopy, "isEqual:", &unk_284EEFB88) & 1) == 0)
  {
    v4 = [optionCopy isEqual:&unk_284EEFB58];
    if ((v4 & 1) == 0)
    {
      v5 = WMSLogComponent(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [WirelessModemController setShareOption:];
      }
    }
  }

  v6 = WiFiManagerClientSetShareMyPersonalHotspotMode();
  v7 = WMSLogComponent(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [WirelessModemController setShareOption:];
  }
}

- (id)shareSpecifier
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"FAMILY_HOTSPOT_OFF" value:&stru_284EED640 table:@"WirelessModemSettings"];
  v17[0] = v5;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FAMILY_HOTSPOT_ASK" value:&stru_284EED640 table:@"WirelessModemSettings"];
  v17[1] = v7;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"FAMILY_HOTSPOT_AUTOMATIC" value:&stru_284EED640 table:@"WirelessModemSettings"];
  v17[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v11 = [v3 initWithArray:v10];

  v12 = MEMORY[0x277D3FAD8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"FAMILY_HOTSPOT" value:&stru_284EED640 table:@"WirelessModemSettings"];
  v15 = [v12 preferenceSpecifierNamed:v14 target:self set:sel_setShareOption_ get:sel_shareOption detail:objc_opt_class() cell:2 edit:0];

  [v15 setValues:&unk_284EEFBB8 titles:v11];

  return v15;
}

- (id)familyShareSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FAMILY_SHARING_TITLE" value:&stru_284EED640 table:@"WirelessModemSettings"];
  wifiIsWAPI = self->_wifiIsWAPI;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (wifiIsWAPI)
  {
    v10 = @"WIFI_CH";
  }

  else
  {
    v10 = @"WIFI";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_284EED640 table:@"WirelessModemSettings"];
  v12 = [v4 stringWithFormat:v6, v11];
  v13 = [v3 preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  return v13;
}

- (id)dataUsageString
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = WiFiManagerClientCopyProperty();
  if (v2)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v20 = v2;
    obj = v2;
    v24 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    v3 = 0;
    v4 = 0;
    v5 = 0;
    if (v24)
    {
      v23 = *v36;
      v22 = *MEMORY[0x277D29938];
      v30 = *MEMORY[0x277D29950];
      v29 = *MEMORY[0x277D29930];
      v28 = *MEMORY[0x277D29910];
      v27 = *MEMORY[0x277D29918];
      do
      {
        v6 = 0;
        do
        {
          if (*v36 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = v6;
          v7 = [*(*(&v35 + 1) + 8 * v6) objectForKey:v22];
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v26 = v7;
          v8 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v32;
            do
            {
              v11 = 0;
              v12 = v3;
              v13 = v4;
              do
              {
                if (*v32 != v10)
                {
                  objc_enumerationMutation(v26);
                }

                v14 = *(*(&v31 + 1) + 8 * v11);
                v15 = [v14 objectForKey:v30];
                v16 = [v14 objectForKey:v29];
                v3 = [v14 objectForKey:v28];

                v4 = [v14 objectForKey:v27];

                unsignedIntegerValue = [v16 unsignedIntegerValue];
                v5 += unsignedIntegerValue + [v15 unsignedIntegerValue];

                ++v11;
                v12 = v3;
                v13 = v4;
              }

              while (v9 != v11);
              v9 = [v26 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v9);
          }

          v6 = v25 + 1;
        }

        while (v25 + 1 != v24);
        v24 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v24);
    }

    if (v5)
    {
      v18 = [MEMORY[0x277CCA8E8] stringFromByteCount:v5 countStyle:0];
    }

    else
    {
      v18 = &stru_284EED640;
    }

    v2 = v20;
  }

  else
  {
    v18 = &stru_284EED640;
  }

  return v18;
}

- (id)usageSpecifier
{
  v3 = WiFiManagerClientCopyProperty();
  if (v3 && (-[WirelessModemController dataUsageString](self, "dataUsageString"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isEqualToString:&stru_284EED640], v4, (v5 & 1) == 0))
  {
    v7 = MEMORY[0x277D3FAD8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"HOTSPOT_USAGE" value:&stru_284EED640 table:@"WirelessModemSettings"];
    v6 = [v7 preferenceSpecifierNamed:v9 target:self set:0 get:sel_dataUsageString detail:objc_opt_class() cell:2 edit:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_groupPlacardSpec
{
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [emptyGroupSpecifier setIdentifier:@"PLACARD_GROUP"];

  return emptyGroupSpecifier;
}

- (id)_placardSpec
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TETHERING_TITLE" value:&stru_284EED640 table:@"WirelessModemSettings"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PLACARD_SUBTITLE" value:&stru_284EED640 table:@"WirelessModemSettings"];

  v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v7 setIdentifier:@"PLACARD"];
  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v7 setProperty:v6 forKey:*MEMORY[0x277D40160]];
  [v7 setProperty:@"com.apple.graphic-icon.personal-hotspot" forKey:*MEMORY[0x277D3FFD8]];

  return v7;
}

- (id)tetheringSwitchSpec
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ALLOW_OTHERS" value:&stru_284EED640 table:@"WirelessModemSettings"];
  wifiIsWAPI = self->_wifiIsWAPI;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = v7;
  if (wifiIsWAPI)
  {
    v9 = @"WIFI_CH";
  }

  else
  {
    v9 = @"WIFI";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_284EED640 table:@"WirelessModemSettings"];
  v11 = [v3 stringWithFormat:v5, v10];

  v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v11 target:self set:sel_setInternetTethering_specifier_ get:sel_internetTethering_ detail:0 cell:6 edit:0];

  return v12;
}

- (id)passwordSpec
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"WIFI_PASSWORD" value:&stru_284EED640 table:@"WirelessModemSettings"];
  wifiIsWAPI = self->_wifiIsWAPI;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (wifiIsWAPI)
  {
    v10 = @"WIFI_CH";
  }

  else
  {
    v10 = @"WIFI";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_284EED640 table:@"WirelessModemSettings"];
  v12 = [v4 stringWithFormat:v6, v11];
  v13 = [v3 preferenceSpecifierNamed:v12 target:self set:0 get:sel_wifiPassword_ detail:objc_opt_class() cell:2 edit:0];

  return v13;
}

- (id)setupViewSpec
{
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  properties = [emptyGroupSpecifier properties];
  [properties setValue:@"TetheringSetupView" forKey:*MEMORY[0x277D3FFA0]];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_wifiTetheringSupported];
  [emptyGroupSpecifier setProperty:v5 forKey:@"SupportsWifi"];

  return emptyGroupSpecifier;
}

- (id)stateFooterSpec
{
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  properties = [emptyGroupSpecifier properties];
  [properties setValue:@"TetheringSwitchFooterView" forKey:*MEMORY[0x277D3FFA0]];

  return emptyGroupSpecifier;
}

- (id)bandPreferenceSpec
{
  v3 = MEMORY[0x277D3FAD8];
  _bandPreferenceSpecLabel = [(WirelessModemController *)self _bandPreferenceSpecLabel];
  v5 = [v3 preferenceSpecifierNamed:_bandPreferenceSpecLabel target:self set:sel_setBandPreference_specifier_ get:sel_bandPreference detail:0 cell:6 edit:0];

  return v5;
}

- (id)_bandPreferenceSpecLabel
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"MAXIMIZE_COMPATIBILITY" value:&stru_284EED640 table:@"WirelessModemSettings"];

  return v3;
}

- (id)_bandPreferenceSpecFooterLabel
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"MAXIMIZE_COMPATIBILITY_FOOTER" value:&stru_284EED640 table:@"WirelessModemSettings"];

  return v3;
}

- (id)specifiers
{
  v70[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (v4)
  {
    goto LABEL_47;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v8 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
  v9 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = v10;
  if (v8 == 1)
  {
    v12 = @"INSTANT_HOTSPOT_IPAD";
  }

  else
  {
    v12 = @"INSTANT_HOTSPOT_IPHONE";
  }

  v13 = [v10 localizedStringForKey:v12 value:&stru_284EED640 table:@"WirelessModemSettings"];
  wifiIsWAPI = self->_wifiIsWAPI;
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = v15;
  if (wifiIsWAPI)
  {
    v17 = @"WIFI_CH";
  }

  else
  {
    v17 = @"WIFI";
  }

  v18 = [v15 localizedStringForKey:v17 value:&stru_284EED640 table:@"WirelessModemSettings"];
  v19 = [v9 stringWithFormat:v13, v18];

  v63 = WiFiManagerClientCopyFamilyHotspotPreferences();
  if (v63 && (v20 = [v63 count]) != 0)
  {
    self->_familyHotspotEnabled = 1;
    v21 = WMSLogComponent(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [WirelessModemController specifiers];
    }
  }

  else
  {
    self->_familyHotspotEnabled = 0;
  }

  placardSpec = self->_placardSpec;
  if (placardSpec)
  {
    v66 = placardSpec;
LABEL_17:
    _groupPlacardSpec = [(WirelessModemController *)self _groupPlacardSpec];
    v70[0] = _groupPlacardSpec;
    v70[1] = v66;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
    [v5 addObjectsFromArray:v25];

    goto LABEL_18;
  }

  _placardSpec = [(WirelessModemController *)self _placardSpec];
  objc_storeStrong(&self->_placardSpec, _placardSpec);
  v66 = _placardSpec;
  if (_placardSpec)
  {
    goto LABEL_17;
  }

  v66 = 0;
LABEL_18:
  tetheringGroupSpec = self->_tetheringGroupSpec;
  if (tetheringGroupSpec)
  {
    emptyGroupSpecifier = tetheringGroupSpec;
  }

  else
  {
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    objc_storeStrong(&self->_tetheringGroupSpec, emptyGroupSpecifier);
  }

  tetheringSwitchSpec = self->_tetheringSwitchSpec;
  if (tetheringSwitchSpec)
  {
    tetheringSwitchSpec = tetheringSwitchSpec;
  }

  else
  {
    tetheringSwitchSpec = [(WirelessModemController *)self tetheringSwitchSpec];
    objc_storeStrong(&self->_tetheringSwitchSpec, tetheringSwitchSpec);
  }

  passwordSpec = self->_passwordSpec;
  if (passwordSpec)
  {
    passwordSpec = passwordSpec;
  }

  else
  {
    passwordSpec = [(WirelessModemController *)self passwordSpec];
    objc_storeStrong(&self->_passwordSpec, passwordSpec);
  }

  stateFooterSpec = self->_stateFooterSpec;
  if (stateFooterSpec)
  {
    stateFooterSpec = stateFooterSpec;
  }

  else
  {
    stateFooterSpec = [(WirelessModemController *)self stateFooterSpec];
    objc_storeStrong(&self->_stateFooterSpec, stateFooterSpec);
  }

  v69[0] = emptyGroupSpecifier;
  v69[1] = tetheringSwitchSpec;
  v69[2] = passwordSpec;
  v69[3] = stateFooterSpec;
  v62 = stateFooterSpec;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:4];
  [v5 addObjectsFromArray:v32];

  if (self->_familyHotspotEnabled)
  {
    v33 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:0];
    v60 = MEMORY[0x277CCACA8];
    v61 = passwordSpec;
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = [v34 localizedStringForKey:@"FAMILY_SHARING" value:&stru_284EED640 table:@"WirelessModemSettings"];
    v36 = v19;
    v37 = v3;
    v38 = v5;
    v39 = self->_wifiIsWAPI;
    v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v41 = v40;
    v42 = !v39;
    v5 = v38;
    v3 = v37;
    if (v42)
    {
      v43 = @"WIFI";
    }

    else
    {
      v43 = @"WIFI_CH";
    }

    v44 = [v40 localizedStringForKey:v43 value:&stru_284EED640 table:@"WirelessModemSettings"];
    v45 = [v60 stringWithFormat:v35, v44];
    [v33 setProperty:v45 forKey:*MEMORY[0x277D3FF88]];

    v19 = v36;
    passwordSpec = v61;

    familyShareSpecifier = [(WirelessModemController *)self familyShareSpecifier];
    v68[0] = v33;
    v68[1] = familyShareSpecifier;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
    [v5 addObjectsFromArray:v47];
  }

  if (self->_showBandPreferenceUI)
  {
    bandPreferenceSpec = self->_bandPreferenceSpec;
    if (bandPreferenceSpec)
    {
      bandPreferenceSpec = bandPreferenceSpec;
LABEL_40:
      emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      _bandPreferenceSpecFooterLabel = [(WirelessModemController *)self _bandPreferenceSpecFooterLabel];
      [emptyGroupSpecifier2 setProperty:_bandPreferenceSpecFooterLabel forKey:*MEMORY[0x277D3FF88]];

      v67[0] = emptyGroupSpecifier2;
      v67[1] = bandPreferenceSpec;
      v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
      [v5 addObjectsFromArray:v52];

      goto LABEL_41;
    }

    bandPreferenceSpec = [(WirelessModemController *)self bandPreferenceSpec];
    objc_storeStrong(&self->_bandPreferenceSpec, bandPreferenceSpec);
    if (bandPreferenceSpec)
    {
      goto LABEL_40;
    }
  }

  else
  {
    bandPreferenceSpec = 0;
  }

LABEL_41:
  setupViewSpec = self->_setupViewSpec;
  if (setupViewSpec)
  {
    setupViewSpec = setupViewSpec;
  }

  else
  {
    setupViewSpec = [(WirelessModemController *)self setupViewSpec];
    objc_storeStrong(&self->_setupViewSpec, setupViewSpec);
  }

  v55 = [(WirelessModemController *)self internetTethering:0];
  bOOLValue = [v55 BOOLValue];

  if (bOOLValue)
  {
    [v5 addObject:setupViewSpec];
  }

  [(WirelessModemController *)self _updateTetheringText:1];
  v57 = *(&self->super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.isa + v3) = v5;
  v58 = v5;

  v4 = *(&self->super.super.super.super.super.isa + v3);
LABEL_47:

  return v4;
}

- (void)_setMISDiscoveryStateEnabled:(char)a1 effectiveImmediately:(char)a2 forceBand:(os_log_t)log .cold.1(char a1, char a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "[WirelessModemController _setMISDiscoveryStateEnabled:effectiveImmediately:forceBand:]";
  v5 = 1024;
  v6 = a1 & 1;
  v7 = 1024;
  v8 = a2 & 1;
  _os_log_error_impl(&dword_23C15F000, log, OS_LOG_TYPE_ERROR, "%s: enabled: %d immediately: %d", &v3, 0x18u);
}

- (void)_btPinRequestHandler:(NSObject *)a3 .cold.1(const char *a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = [a2 name];
  v7 = [a2 object];
  v8 = [v7 name];
  v9 = 138412802;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  v13 = 2112;
  v14 = v8;
  _os_log_error_impl(&dword_23C15F000, a3, OS_LOG_TYPE_ERROR, "%@ received %@ for device %@", &v9, 0x20u);
}

- (void)setInternetTethering:(NSObject *)a3 specifier:.cold.1(int *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = 136315650;
  v6 = "[WirelessModemController setInternetTethering:specifier:]";
  v7 = 1024;
  v8 = v4;
  v9 = 1024;
  v10 = [a2 BOOLValue];
  _os_log_error_impl(&dword_23C15F000, a3, OS_LOG_TYPE_ERROR, "%s: no change to state=%d value=%d", &v5, 0x18u);
}

@end