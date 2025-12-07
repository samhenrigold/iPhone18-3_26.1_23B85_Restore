@interface BTSDevicesController
- (BOOL)BOOLFromBluetoothPreferences:(id)preferences;
- (BOOL)classicDeviceIsApple:(id)apple;
- (BOOL)isCarPlaySetupEnabled;
- (BOOL)isClassicAudioDevice:(id)device;
- (BOOL)isDeviceSupported:(id)supported;
- (BOOL)isLEAudioLiveOnEnabled;
- (BOOL)isLECarPlayEnabled;
- (BOOL)isSupportCarPlaySetup:(id)setup;
- (BOOL)isiPad;
- (BOOL)isiPhone;
- (BTSDevicesController)init;
- (double)tableView:(id)view estimatedHeightForFooterInSection:(int64_t)section;
- (id)_getDeviceForCTKDPeripheral:(id)peripheral;
- (id)_getDeviceForPeripheral:(id)peripheral;
- (id)_headphoneSettingsControllerFor:(id)for;
- (id)_heroPlacardSpecifiers;
- (id)_knownDevicesSpecifiers;
- (id)_shareDevicesSpecifiers;
- (id)_specifierForDevice:(id)device;
- (id)_specifierForSharingDevice:(id)device;
- (id)bluetoothEnabled:(id)enabled;
- (id)getLECarPlay:(id)play;
- (id)localizedList:(id)list;
- (id)makeWarningAttributedString:(id)string;
- (id)mergeDualRadioDevices:(id)devices;
- (id)namesOfDevices:(id)devices displayableOnly:(BOOL)only;
- (id)powerOffWarningString;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (unsigned)connectedLEAudio1DeviceCount;
- (void)_addDevice:(id)device;
- (void)_addDeviceSpecifier:(id)specifier withDevice:(id)device;
- (void)_peripheralDidCompletePairing:(id)pairing;
- (void)_removeDevice:(id)device;
- (void)_removeDeviceSpecifier:(id)specifier;
- (void)_retrievedRegisteredHealthDevices:(id)devices;
- (void)_setupCentralScanning;
- (void)_updateDevicePosition:(id)position;
- (void)_updateHealthDevices;
- (void)alertSheetDismissed:(id)dismissed;
- (void)allowBluetoothConnections:(BOOL)connections;
- (void)allowBluetoothScans:(BOOL)scans;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)applicationWillResignActive:(id)active;
- (void)authenticationRequestHandler:(id)handler;
- (void)bluetoothDenylistChanged:(id)changed;
- (void)cancelledConnectionAttemptOnTransport:(unint64_t)transport;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didUpdatePeripheralConnectionState:(id)state;
- (void)centralManagerDidUpdateState:(id)state;
- (void)cleanupAlerts;
- (void)cleanupPairing;
- (void)dealloc;
- (void)deviceConnectedHandler:(id)handler;
- (void)deviceDisconnectedHandler:(id)handler;
- (void)deviceDiscoveredHandler:(id)handler;
- (void)devicePairedHandler:(id)handler;
- (void)deviceRemovedHandler:(id)handler;
- (void)deviceUnpairedHandler:(id)handler;
- (void)deviceUpdatedHandler:(id)handler;
- (void)effectiveMCSettingsDidChange:(id)change;
- (void)fetchDADevices;
- (void)forcePushDetailViewForDevice:(id)device;
- (void)handleDASessionEvent:(id)event;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)healthDeviceUnregisteredHandler:(id)handler;
- (void)init;
- (void)markLEAudioDevice:(id)device;
- (void)migrateHKPairedHealthDevices;
- (void)notifyBluetoothSettingsAppStateIsActive:(BOOL)active;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
- (void)peripheral:(id)peripheral didCompleteChannelSoundingProcedure:(id)procedure error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error;
- (void)peripheralConnectionTimeout:(id)timeout;
- (void)peripheralDidUpdateName:(id)name;
- (void)pinRequestHandler:(id)handler;
- (void)powerChanged;
- (void)powerChangedHandler:(id)handler;
- (void)refreshCTKDDevices;
- (void)refreshUI;
- (void)registerForNotifications;
- (void)reinitDASession;
- (void)reloadCellForSpecifierID:(id)d animated:(BOOL)animated;
- (void)sessionDidConnect:(id)connect;
- (void)setBluetoothEnabled:(id)enabled specifier:(id)specifier;
- (void)setBluetoothIsBusy:(BOOL)busy;
- (void)setSSPConfirmation:(int64_t)confirmation forDevice:(id)device;
- (void)showPairingAlert:(id)alert;
- (void)showPencilConnectionAttemptAlert:(int)alert;
- (void)showSyncContactsPopup:(id)popup;
- (void)showSyncContactsPrivacyPopup:(id)popup;
- (void)showUpgradeOSPopup:(id)popup;
- (void)sspConfirmationHandler:(id)handler;
- (void)sspNumericComparisonHandler:(id)handler;
- (void)sspPasskeyDisplayHandler:(id)handler;
- (void)startIncomingCarPlaySetup:(id)setup andPasskey:(id)passkey;
- (void)startOutgoingCarPlaySetup:(id)setup;
- (void)startedConnectionAttemptOnTransport:(unint64_t)transport;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCTKDCounterparts:(id)counterparts leDevice:(id)device;
- (void)updateFirmwareUpdateRequiredDevicesList:(id)list;
- (void)updateMainGroupFooter;
- (void)updatePoorConnectedDevicesList:(id)list;
- (void)updatePowerState:(BOOL)state powerSpec:(id)spec;
- (void)updateUI:(BOOL)i;
- (void)userDidTapWalletLink:(id)link;
- (void)userDidTapWatchLink:(id)link;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BTSDevicesController

- (BTSDevicesController)init
{
  v73[2] = *MEMORY[0x277D85DE8];
  v69.receiver = self;
  v69.super_class = BTSDevicesController;
  v2 = [(BTSDevicesController *)&v69 init];
  if (v2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    srandom(v4);

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    ctkdCounterpartDevicesDict = v2->_ctkdCounterpartDevicesDict;
    v2->_ctkdCounterpartDevicesDict = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dualRadioCounterpartDevicesDict = v2->_dualRadioCounterpartDevicesDict;
    v2->_dualRadioCounterpartDevicesDict = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingOtherRadioDevicesDict = v2->_pendingOtherRadioDevicesDict;
    v2->_pendingOtherRadioDevicesDict = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    devicesDict = v2->_devicesDict;
    v2->_devicesDict = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sharingDevicesDict = v2->_sharingDevicesDict;
    v2->_sharingDevicesDict = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    ctkdLeDevicesDict = v2->_ctkdLeDevicesDict;
    v2->_ctkdLeDevicesDict = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceAccessDevicesDict = v2->_deviceAccessDevicesDict;
    v2->_deviceAccessDevicesDict = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingDAInfoDevicesDict = v2->_pendingDAInfoDevicesDict;
    v2->_pendingDAInfoDevicesDict = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    retrievedHealthServices = v2->_retrievedHealthServices;
    v2->_retrievedHealthServices = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
    connectedPoorBehaviorDevices = v2->_connectedPoorBehaviorDevices;
    v2->_connectedPoorBehaviorDevices = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB58]);
    connectedFirmwareUpdateRequiredDevices = v2->_connectedFirmwareUpdateRequiredDevices;
    v2->_connectedFirmwareUpdateRequiredDevices = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
    connectedHIDDevices = v2->_connectedHIDDevices;
    v2->_connectedHIDDevices = v27;

    v2->_mainFooterNeedsUpdate = 0;
    v2->_shouldRestorePreviousScanningState = 0;
    v29 = MEMORY[0x277CBEA60];
    v30 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFD8]];
    v31 = [v29 arrayWithObjects:{v30, 0}];
    hidServices = v2->_hidServices;
    v2->_hidServices = v31;

    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"enableHealthDevices", @"com.apple.bluetooth", &keyExistsAndHasValidFormat);
    v34 = _os_feature_enabled_impl();
    v35 = keyExistsAndHasValidFormat;
    v36 = MEMORY[0x277CBEA60];
    v37 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFD0]];
    if (v34 && AppBooleanValue && v35)
    {
      v38 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFC8]];
      v39 = [v36 arrayWithObjects:{v37, v38, 0}];
      healthServices = v2->_healthServices;
      v2->_healthServices = v39;
    }

    else
    {
      v41 = [v36 arrayWithObjects:{v37, 0}];
      v38 = v2->_healthServices;
      v2->_healthServices = v41;
    }

    [(BTSDevicesController *)v2 registerForNotifications];
    v42 = objc_alloc(MEMORY[0x277CBDFF8]);
    v43 = *MEMORY[0x277CBDF08];
    v72[0] = *MEMORY[0x277CBDD90];
    v72[1] = v43;
    v73[0] = MEMORY[0x277CBEC38];
    v73[1] = MEMORY[0x277CBEC38];
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
    v45 = [v42 initWithDelegate:v2 queue:MEMORY[0x277D85CD0] options:v44];
    centralManager = v2->_centralManager;
    v2->_centralManager = v45;

    sharedPairingAgent = [(CBCentralManager *)v2->_centralManager sharedPairingAgent];
    [sharedPairingAgent setDelegate:v2];

    isHealthDataAvailable = [MEMORY[0x277CCD4D8] isHealthDataAvailable];
    if (isHealthDataAvailable)
    {
      v49 = sharedBluetoothSettingsLogComponent(isHealthDataAvailable);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23C0F7000, v49, OS_LOG_TYPE_INFO, "HealthKit is supported", buf, 2u);
      }

      v50 = objc_opt_new();
      healthKitStore = v2->_healthKitStore;
      v2->_healthKitStore = v50;

      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        v52 = v2->_healthKitStore;
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __28__BTSDevicesController_init__block_invoke;
        v66[3] = &unk_278BB0340;
        v67 = v2;
        [(HKHealthStore *)v52 healthServicePairingsWithHandler:v66];
      }
    }

    v53 = sharedBluetoothSettingsLogComponent([(BTSDevicesController *)v2 reinitDASession]);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v71 = "[BTSDevicesController init]";
      _os_log_impl(&dword_23C0F7000, v53, OS_LOG_TYPE_DEFAULT, "%s exposure notification init", buf, 0xCu);
    }

    v54 = objc_alloc_init(MEMORY[0x277CF89F8]);
    carplayStatus = v2->_carplayStatus;
    v2->_carplayStatus = v54;

    [(CARSessionStatus *)v2->_carplayStatus setSessionObserver:v2];
    v2->_scanningPausedForCarPlay = 0;
    v56 = MGGetStringAnswer();
    if (v56)
    {
      v57 = v56;
      if ([v56 isEqualToString:@"iPhone"])
      {
        v58 = objc_alloc_init(MEMORY[0x277CC5C90]);
        exposureNotificationManager = v2->_exposureNotificationManager;
        v2->_exposureNotificationManager = v58;

        v60 = v2->_exposureNotificationManager;
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __28__BTSDevicesController_init__block_invoke_244;
        v64[3] = &unk_278BB0368;
        v65 = v2;
        [(ENManager *)v60 activateWithCompletionHandler:v64];
        CFRelease(v57);
      }
    }

    v61 = notify_register_check("com.apple.bluetooth.settings.app-state", &v2->_bluetoothSettingsAppStateNotifyToken);
    if (v61)
    {
      v62 = sharedBluetoothSettingsLogComponent(v61);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [BTSDevicesController init];
      }
    }

    [(BTSDevicesController *)v2 notifyBluetoothSettingsAppStateIsActive:1];
  }

  CFPreferencesGetAppBooleanValue(@"enableChannelSoundingTesting", @"com.apple.bluetooth", &v2->_isChannelSoundingTestingEnabled);
  return v2;
}

void __28__BTSDevicesController_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __28__BTSDevicesController_init__block_invoke_cold_1();
    }
  }

  else if ([v5 count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __28__BTSDevicesController_init__block_invoke_233;
    v9[3] = &unk_278BB0318;
    v10 = *(a1 + 32);
    v11 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v9);

    v8 = v10;
  }

  else
  {
    v8 = sharedBluetoothSettingsLogComponent(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C0F7000, v8, OS_LOG_TYPE_DEFAULT, "Found no known health devices", buf, 2u);
    }
  }
}

uint64_t __28__BTSDevicesController_init__block_invoke_244(uint64_t a1)
{
  *(*(a1 + 32) + 1610) = [*(*(a1 + 32) + 1736) exposureNotificationEnabled];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter2 removeObserver:self];

  [(BTSDevicesController *)self allowBluetoothConnections:0];
  [(BTAlert *)self->_alert dismiss];
  sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
  [sharedPairingAgent setDelegate:0];

  [(CBCentralManager *)self->_centralManager setDelegate:0];
  [(DASession *)self->_deviceAccessSession invalidate];
  deviceAccessSession = self->_deviceAccessSession;
  self->_deviceAccessSession = 0;

  [(CARSessionStatus *)self->_carplayStatus setSessionObserver:0];
  if (self->_netClient)
  {
    _NETRBClientDestroy();
  }

  [(ENManager *)self->_exposureNotificationManager invalidate];
  exposureNotificationManager = self->_exposureNotificationManager;
  self->_exposureNotificationManager = 0;

  [(BTSDevicesController *)self notifyBluetoothSettingsAppStateIsActive:0];
  notify_cancel(self->_bluetoothSettingsAppStateNotifyToken);
  v8.receiver = self;
  v8.super_class = BTSDevicesController;
  [(BTSDevicesController *)&v8 dealloc];
}

- (void)reinitDASession
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    if (self->_deviceAccessSession)
    {
      v4 = sharedBluetoothSettingsLogComponent(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_23C0F7000, v4, OS_LOG_TYPE_DEFAULT, "Re-init DASession", buf, 2u);
      }

      v5 = self->_deviceAccessSession;
      [(DASession *)v5 setEventHandler:0];
      [(DASession *)v5 invalidate];
      deviceAccessSession = self->_deviceAccessSession;
      self->_deviceAccessSession = 0;
    }

    v7 = objc_alloc_init(MEMORY[0x277D04780]);
    v8 = self->_deviceAccessSession;
    self->_deviceAccessSession = v7;

    [(DASession *)self->_deviceAccessSession setDispatchQueue:MEMORY[0x277D85CD0]];
    objc_initWeak(buf, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__BTSDevicesController_reinitDASession__block_invoke;
    v10[3] = &unk_278BB0390;
    objc_copyWeak(&v11, buf);
    [(DASession *)self->_deviceAccessSession setEventHandler:v10];
    [(DASession *)self->_deviceAccessSession activate];
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    v9 = sharedBluetoothSettingsLogComponent(v3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23C0F7000, v9, OS_LOG_TYPE_DEFAULT, "AccessorySetupKit feature flag not enabled", buf, 2u);
    }
  }
}

void __39__BTSDevicesController_reinitDASession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDASessionEvent:v3];
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v7 = [lCopy objectForKey:@"path"];
  v8 = [lCopy objectForKey:@"root"];
  if ([v7 length])
  {
    if ([v7 isEqualToString:@"AccessoryDetail"])
    {
      v9 = [lCopy objectForKeyedSubscript:@"identifier"];
      pendingSetupDeviceID = self->_pendingSetupDeviceID;
      self->_pendingSetupDeviceID = v9;

      [(BTSDevicesController *)self fetchDADevices];
    }

    else if (![v7 isEqualToString:@"AwaitIncomingConnection"])
    {
      goto LABEL_6;
    }

    [(BTSDevicesController *)self reloadSpecifiers];
  }

LABEL_6:
  completionCopy[2](completionCopy);
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = BTSDevicesController;
  [(BTSDevicesController *)&v10 viewDidAppear:appear];
  if (!self->_bluetoothInitialized)
  {
    [(BTSDevicesController *)self allowBluetoothConnections:1];
    self->_bluetoothInitialized = 1;
  }

  if (self->_mainFooterNeedsUpdate)
  {
    [(BTSDevicesController *)self reloadSpecifiers];
    self->_mainFooterNeedsUpdate = 0;
  }

  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Bluetooth"];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:@"Bluetooth" table:0 locale:currentLocale bundleURL:bundleURL];

  [(BTSDevicesController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.bluetooth" title:v9 localizedNavigationComponents:MEMORY[0x277CBEBF8] deepLink:v4];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = BTSDevicesController;
  [(BTSDevicesController *)&v7 viewDidLoad];
  [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"MainGroupFooterId"];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  managedByWalletDictionary = self->managedByWalletDictionary;
  self->managedByWalletDictionary = v3;

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  supportsBackgroundNIDictionary = self->supportsBackgroundNIDictionary;
  self->supportsBackgroundNIDictionary = v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v10 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = BTSDevicesController;
  v4 = [(BTSDevicesController *)&v7 viewWillAppear:appear];
  v5 = sharedBluetoothSettingsLogComponent(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "BT Settings viewWillAppear %p", buf, 0xCu);
  }

  if (self->_shouldRestorePreviousScanningState)
  {
    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    [mEMORY[0x277CF3248] setDeviceScanningEnabled:self->_allowScanning];

    self->_shouldRestorePreviousScanningState = 0;
  }

  if (_os_feature_enabled_impl())
  {
    [(BTSDevicesController *)self fetchDADevices];
  }

  if (self->_uiRefreshed)
  {
    [(BTSDevicesController *)self reloadSpecifiers];
  }

  else
  {
    [(BTSDevicesController *)self allowBluetoothConnections:1];
    [(BTSDevicesController *)self refreshUI];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v17 = *MEMORY[0x277D85DE8];
  navigationController = [(BTSDevicesController *)self navigationController];
  topViewController = [navigationController topViewController];
  childViewControllers = [topViewController childViewControllers];
  firstObject = [childViewControllers firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v10 = sharedBluetoothSettingsLogComponent(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_23C0F7000, v10, OS_LOG_TYPE_DEFAULT, "Unsubscribing from notifications because view controller was popped from the stack: BTSDevicesController instance %p", &v15, 0xCu);
    }

    [(BTSDevicesController *)self allowBluetoothConnections:0];
    [(BTAlert *)self->_alert dismiss];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];

    defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter2 removeObserver:self];

    sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
    [sharedPairingAgent setDelegate:0];

    [(CBCentralManager *)self->_centralManager setDelegate:0];
    self->_uiRefreshed = 0;
    [(DASession *)self->_deviceAccessSession invalidate];
    deviceAccessSession = self->_deviceAccessSession;
    self->_deviceAccessSession = 0;
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  [mEMORY[0x277CF3248] setDeviceScanningEnabled:0];

  self->_shouldRestorePreviousScanningState = 1;
  pendingSetupDeviceID = self->_pendingSetupDeviceID;
  self->_pendingSetupDeviceID = 0;
}

- (void)applicationWillResignActive:(id)active
{
  [(BTSDevicesController *)self notifyBluetoothSettingsAppStateIsActive:0];
  [(BTSDevicesController *)self allowBluetoothConnections:0];
  self->_togglingPower = 0;
  [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) setEnabled:1];
  [(BTSDevicesController *)self setBluetoothIsBusy:0];
  [(BTSDevicesController *)self cleanupPairing];

  [(BTSDevicesController *)self cleanupAlerts];
}

- (void)applicationDidBecomeActive:(id)active
{
  [(BTSDevicesController *)self notifyBluetoothSettingsAppStateIsActive:1];

  [(BTSDevicesController *)self allowBluetoothConnections:1];
}

- (void)applicationWillEnterForeground:(id)foreground
{
  v4 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23C0F7000, v4, OS_LOG_TYPE_DEFAULT, "applicationWillEnterForeground. Re-register for bluetooth notifications", v5, 2u);
  }

  [(BTSDevicesController *)self notifyBluetoothSettingsAppStateIsActive:1];
  if (!self->_uiRefreshed)
  {
    [(BTSDevicesController *)self refreshUI];
  }
}

- (void)applicationDidEnterBackground:(id)background
{
  v4 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_23C0F7000, v4, OS_LOG_TYPE_DEFAULT, "applicationDidEnterBackground. Deregister for bluetooth notifications", v12, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter2 removeObserver:self];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_applicationWillTerminate_ name:*MEMORY[0x277D76770] object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter6 addObserver:self selector:sel_applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];

  sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
  [sharedPairingAgent setDelegate:0];

  [(CBCentralManager *)self->_centralManager setDelegate:0];
  self->_uiRefreshed = 0;
}

- (void)notifyBluetoothSettingsAppStateIsActive:(BOOL)active
{
  notify_set_state([(BTSDevicesController *)self bluetoothSettingsAppStateNotifyToken], active);

  notify_post("com.apple.bluetooth.settings.app-state");
}

- (unsigned)connectedLEAudio1DeviceCount
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(CBCentralManager *)self->_centralManager retrieveConnectedPeripheralsWithServices:MEMORY[0x277CBEBF8] allowAll:1];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 hasTag:@"IsHearingAid"])
        {
          v9 = [v8 customProperty:@"LEAVersion"];
          v10 = v9;
          if (!v9 || [v9 isEqualToString:@"1"])
          {
            ++v5;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)classicDeviceIsApple:(id)apple
{
  appleCopy = apple;
  v4 = ![appleCopy vendorIdSrc] && (objc_msgSend(appleCopy, "vendorId") == 1452 || objc_msgSend(appleCopy, "vendorId") == 76) || objc_msgSend(appleCopy, "vendorIdSrc") == 2 && objc_msgSend(appleCopy, "vendorId") == 1452 || objc_msgSend(appleCopy, "vendorIdSrc") == 1 && objc_msgSend(appleCopy, "vendorId") == 76;

  return v4;
}

- (BOOL)isClassicAudioDevice:(id)device
{
  deviceCopy = device;
  v4 = [deviceCopy type] == 16 || objc_msgSend(deviceCopy, "type") == 17 || objc_msgSend(deviceCopy, "type") == 19 || objc_msgSend(deviceCopy, "type") == 20 || objc_msgSend(deviceCopy, "type") == 47 || objc_msgSend(deviceCopy, "type") == 22 || objc_msgSend(deviceCopy, "type") == 21 || objc_msgSend(deviceCopy, "type") == 23;

  return v4;
}

- (void)powerChanged
{
  v46 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  enabled = [mEMORY[0x277CF3248] enabled];

  v5 = [(CBCentralManager *)self->_centralManager state]== 5 || [(CBCentralManager *)self->_centralManager state]== 10;
  if (v5 == enabled && self->_power != enabled)
  {
    self->_power = enabled;
    self->_togglingPower = 0;
    [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) setEnabled:1];
    [(BTSDevicesController *)self setBluetoothIsBusy:0];
    self->_mainFooterNeedsUpdate = 1;
    [(BTSDevicesController *)self updateUI:self->_power];
    if (self->_bluetoothInitialized)
    {
      [(BTSDevicesController *)self allowBluetoothConnections:self->_power];
    }
  }

  [(BTSDevicesController *)self reloadCellForSpecifierID:@"BLUETOOTH"];
  if (self->_power && *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
    retrievePairedPeers = [sharedPairingAgent retrievePairedPeers];

    v8 = [retrievePairedPeers countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v8)
    {
      v9 = v8;
      v33 = 0;
      v10 = *v39;
      do
      {
        v11 = 0;
        do
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(retrievePairedPeers);
          }

          v12 = *(*(&v38 + 1) + 8 * v11);
          v13 = sharedBluetoothSettingsLogComponent(v8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v44 = v12;
            _os_log_impl(&dword_23C0F7000, v13, OS_LOG_TYPE_DEFAULT, "Paired Peripheral: %@", buf, 0xCu);
          }

          v14 = [(BTSDevicesController *)self _getDeviceForPeripheral:v12];
          if (v14)
          {
            [v12 setDelegate:self];
            isManagedByDeviceAccess = [v14 isManagedByDeviceAccess];
            if (isManagedByDeviceAccess)
            {
              v16 = sharedBluetoothSettingsLogComponent(isManagedByDeviceAccess);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v44 = v14;
                _os_log_impl(&dword_23C0F7000, v16, OS_LOG_TYPE_DEFAULT, "We're waiting for DADevices from DADaemon, delay display of these DA managed peripherals until we have the DADevice: %@", buf, 0xCu);
              }
            }

            else
            {
              [(BTSDevicesController *)self _addDevice:v14];
              if ([v14 connected])
              {
                if ([v14 isLimitedConnectivityDevice])
                {
                  [(NSMutableSet *)self->_connectedPoorBehaviorDevices addObject:v14];
                  self->_mainFooterNeedsUpdate = 1;
                }

                if ([v14 isFirmwareUpdateRequiredDevice])
                {
                  [(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices addObject:v14];
                  self->_mainFooterNeedsUpdate = 1;
                }

                if ([v14 isHIDDevice])
                {
                  [(NSMutableSet *)self->_connectedHIDDevices addObject:v14];
                  self->_mainFooterNeedsUpdate = 1;
                }
              }
            }
          }

          else
          {
            v17 = [(BTSDevicesController *)self _getDeviceForCTKDPeripheral:v12];
            v18 = sharedBluetoothSettingsLogComponent(v17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v44 = v12;
              _os_log_impl(&dword_23C0F7000, v18, OS_LOG_TYPE_DEFAULT, "CTKD Paired device : %@", buf, 0xCu);
            }

            if (v17)
            {
              [v12 setDelegate:self];
              v33 = 1;
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v8 = [retrievePairedPeers countByEnumeratingWithState:&v38 objects:v45 count:16];
        v9 = v8;
      }

      while (v8);
    }

    else
    {
      v33 = 0;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = [(CBCentralManager *)self->_centralManager retrieveConnectedPeripheralsWithServices:0 allowAll:1];
    v20 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v35;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v34 + 1) + 8 * i);
          if ([v24 connectedTransport] == 2)
          {
            v25 = [(BTSDevicesController *)self _getDeviceForPeripheral:v24];
            if (v25)
            {
              visibleInSettings = [v24 visibleInSettings];
              if (visibleInSettings)
              {
                [v24 setDelegate:self];
                isManagedByDeviceAccess2 = [v25 isManagedByDeviceAccess];
                v28 = isManagedByDeviceAccess2;
                v29 = sharedBluetoothSettingsLogComponent(isManagedByDeviceAccess2);
                v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
                if (v28)
                {
                  if (v30)
                  {
                    *buf = 138412290;
                    v44 = v25;
                    v31 = v29;
                    v32 = "We're waiting for DADevices from DADaemon, delay display of these DA managed peripherals until we have the DADevice: %@";
                    goto LABEL_51;
                  }

                  goto LABEL_52;
                }

                if (v30)
                {
                  *buf = 138412290;
                  v44 = v24;
                  _os_log_impl(&dword_23C0F7000, v29, OS_LOG_TYPE_DEFAULT, "Peripheral %@ will be added to Settings.", buf, 0xCu);
                }

                [(BTSDevicesController *)self _addDevice:v25];
              }

              else
              {
                v29 = sharedBluetoothSettingsLogComponent(visibleInSettings);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v44 = v24;
                  v31 = v29;
                  v32 = "Peripheral %@ should not be visible in Settings. Ignoring.";
LABEL_51:
                  _os_log_impl(&dword_23C0F7000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 0xCu);
                }

LABEL_52:
              }
            }

            continue;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v21);
    }

    [(BTSDevicesController *)self _updateHealthDevices];
    [(BTSDevicesController *)self _setupCentralScanning];
    if ((self->_mainFooterNeedsUpdate | v33))
    {
      [(BTSDevicesController *)self reloadSpecifiers];
    }
  }
}

- (void)powerChangedHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  enabled = [mEMORY[0x277CF3248] enabled];

  v8 = sharedBluetoothSettingsLogComponent(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    v10 = name;
    v11 = "off";
    if (enabled)
    {
      v11 = "on";
    }

    v12 = 138412546;
    v13 = name;
    v14 = 2080;
    v15 = v11;
    _os_log_impl(&dword_23C0F7000, v8, OS_LOG_TYPE_DEFAULT, "Received %@ with power state %s", &v12, 0x16u);
  }

  [(BTSDevicesController *)self powerChanged];
}

- (void)deviceDiscoveredHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = sharedBluetoothSettingsLogComponent(object);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    name = [handlerCopy name];
    name2 = [object name];
    v18 = 136315650;
    v19 = "[BTSDevicesController deviceDiscoveredHandler:]";
    v20 = 2112;
    v21 = name;
    v22 = 2112;
    v23 = name2;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_INFO, "%s received %@ for device %@", &v18, 0x20u);
  }

  if (self->_power && !self->_togglingPower)
  {
    v9 = [BTSDeviceClassic deviceWithDevice:object];
    devicesDict = self->_devicesDict;
    address = [object address];
    v12 = [(NSMutableDictionary *)devicesDict objectForKey:address];

    if (v12)
    {
      identifier = [v9 identifier];
      v14 = [(BTSDevicesController *)self specifierForID:identifier];

      if (!v14)
      {
        v16 = sharedBluetoothSettingsLogComponent(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_23C0F7000, v16, OS_LOG_TYPE_INFO, "Device exists in our list without a specifier. Add the specifier", &v18, 2u);
        }

        v17 = [(BTSDevicesController *)self _specifierForDevice:v9];
        [(BTSDevicesController *)self _addDeviceSpecifier:v17 withDevice:v9];
      }
    }

    else
    {
      [(BTSDevicesController *)self _addDevice:v9];
    }
  }
}

- (void)devicePairedHandler:(id)handler
{
  v67 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = sharedBluetoothSettingsLogComponent(object);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    name2 = [object name];
    *buf = 136315906;
    *v62 = "[BTSDevicesController devicePairedHandler:]";
    *&v62[8] = 2112;
    *&v62[10] = name;
    v63 = 2112;
    v64 = name2;
    v65 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@ for BTSDeviceController instance %p", buf, 0x2Au);
  }

  userInfo = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
  v10 = [userInfo objectForKey:@"PIN-ended"];

  if (self->_power && !self->_togglingPower)
  {
    address = [object address];
    identifier = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
    if ([address isEqualToString:identifier])
    {
    }

    else
    {
      pendingOtherRadioDevicesDict = self->_pendingOtherRadioDevicesDict;
      address2 = [object address];
      v15 = [(NSMutableDictionary *)pendingOtherRadioDevicesDict objectForKeyedSubscript:address2];

      if (v15)
      {
        v16 = [BTSDeviceClassic deviceWithDevice:object];
        [(BTSDevicesController *)self _addDevice:v16];

        address3 = [BTSDeviceClassic deviceWithDevice:object];
        [(BTSDevicesController *)self _updateDevicePosition:address3];
        goto LABEL_54;
      }
    }

    [(BTSDevicesController *)self cleanupPairing];
    userInfo2 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    v19 = [userInfo2 objectForKey:@"reverse-pairing"];
    bOOLValue = [v19 BOOLValue];

    if (bOOLValue)
    {
      [(BTSDevicesController *)self setBluetoothIsBusy:0];
    }

    name3 = [handlerCopy name];
    v22 = [name3 isEqualToString:*MEMORY[0x277CF3208]];

    if (v22)
    {
      if (self->_alert || ([v10 isEqualToString:@"cancelled"] & 1) != 0)
      {
LABEL_49:
        mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
        if ([mEMORY[0x277CF3248] wasDeviceDiscovered:object])
        {
        }

        else
        {
          paired = [object paired];

          if ((paired & 1) == 0)
          {
            address3 = [BTSDeviceClassic deviceWithDevice:object];
            [(BTSDevicesController *)self _removeDevice:address3];
            goto LABEL_54;
          }
        }

        address3 = [object address];
        [(BTSDevicesController *)self reloadCellForSpecifierID:address3];
LABEL_54:

        goto LABEL_55;
      }

      v23 = [BTAlert alloc];
      v24 = [BTSDeviceClassic deviceWithDevice:object];
      v25 = [(BTAlert *)v23 initWithDevice:v24];
      alert = self->_alert;
      self->_alert = v25;

      v28 = sharedBluetoothSettingsLogComponent(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = self->_alert;
        *buf = 138412290;
        *v62 = v29;
        _os_log_impl(&dword_23C0F7000, v28, OS_LOG_TYPE_DEFAULT, "Pairing failed BTAlert : %@", buf, 0xCu);
      }

      [(BTAlert *)self->_alert setDelegate:self];
      if (v10 || ((sspAlert = self->_sspAlert) == 0 || -[BTSSPPairingRequest pairingStyle](sspAlert, "pairingStyle") == 2 || -[BTSSPPairingRequest pairingStyle](self->_sspAlert, "pairingStyle") == 3) && (-[BTSDevicesController rootController](self, "rootController"), v31 = objc_claimAutoreleasedReturnValue(), [v31 visibleViewController], v32 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v32, v31, (isKindOfClass & 1) == 0))
      {
        if (![v10 isEqualToString:@"entered"])
        {
          userInfo3 = [handlerCopy userInfo];
          v48 = [userInfo3 objectForKey:*MEMORY[0x277CF31D8]];

          goto LABEL_43;
        }

        v34 = MEMORY[0x277CCABB0];
        v35 = 156;
      }

      else
      {
        v34 = MEMORY[0x277CCABB0];
        v35 = 1;
      }

      v48 = [v34 numberWithUnsignedInt:v35];
LABEL_43:
      transitionCoordinator = [(BTSDevicesController *)self transitionCoordinator];
      v51 = transitionCoordinator;
      if (transitionCoordinator)
      {
        v52 = sharedBluetoothSettingsLogComponent(transitionCoordinator);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23C0F7000, v52, OS_LOG_TYPE_DEFAULT, "UIViewController is currently displaying or dismissing an UIAlertCOntroller", buf, 2u);
        }

        v55 = MEMORY[0x277D85DD0];
        v56 = 3221225472;
        v57 = __44__BTSDevicesController_devicePairedHandler___block_invoke;
        v58 = &unk_278BB03B8;
        selfCopy2 = self;
        v60 = v48;
        [v51 animateAlongsideTransition:0 completion:&v55];
      }

      else
      {
        [(BTAlert *)self->_alert showAlertWithResult:v48];
      }

      goto LABEL_49;
    }

    v36 = self->_pendingOtherRadioDevicesDict;
    address4 = [object address];
    v38 = [(NSMutableDictionary *)v36 objectForKeyedSubscript:address4];

    if (v38 || (+[BTSDeviceClassic deviceWithDevice:](BTSDeviceClassic, "deviceWithDevice:", object), v39 = objc_claimAutoreleasedReturnValue(), -[BTSDevicesController _updateDevicePosition:](self, "_updateDevicePosition:", v39), v39, [handlerCopy name], v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "isEqualToString:", *MEMORY[0x277CF3210]), v40, v41))
    {
      [(BTSDevicesController *)self reloadSpecifiers];
    }

    type = [object type];
    v43 = [object isServiceSupported:2];
    syncSettings = [object syncSettings];
    isiPhone = [(BTSDevicesController *)self isiPhone];
    if (isiPhone && (isiPhone = [object isServiceSupported:0x40000], (isiPhone & 1) == 0) && (objc_msgSend(object, "type") == 22 || (isiPhone = objc_msgSend(object, "type"), isiPhone == 17)))
    {
      [object setSyncSettings:syncSettings & 0xFFFF00FF];
      [(BTSDevicesController *)self showSyncContactsPrivacyPopup:object];
    }

    else
    {
      v46 = sharedBluetoothSettingsLogComponent(isiPhone);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = "not";
        if (v43)
        {
          v47 = "";
        }

        *buf = 67109378;
        *v62 = type;
        *&v62[4] = 2080;
        *&v62[6] = v47;
        _os_log_impl(&dword_23C0F7000, v46, OS_LOG_TYPE_DEFAULT, "Contact privacy alert ignored for device type : %x with phonebook service %s supported", buf, 0x12u);
      }

      [object setSyncSettings:syncSettings | 0x100000000];
    }

    if ([object vendorId] == 76 && objc_msgSend(object, "productId") >= 0x2007 && objc_msgSend(object, "productId") <= 0x2008)
    {
      [(BTSDevicesController *)self showUpgradeOSPopup:object];
    }
  }

LABEL_55:
}

- (void)deviceUpdatedHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = sharedBluetoothSettingsLogComponent(object);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    name = [handlerCopy name];
    name2 = [object name];
    v17 = 136315650;
    v18 = "[BTSDevicesController deviceUpdatedHandler:]";
    v19 = 2112;
    v20 = name;
    v21 = 2112;
    v22 = name2;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_INFO, "%s received %@ for device %@", &v17, 0x20u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"BluetoothDeviceUpdatedNotificationConfig" object:object];

  if (self->_power && !self->_togglingPower)
  {
    devicesDict = self->_devicesDict;
    address = [object address];
    v12 = [(NSMutableDictionary *)devicesDict objectForKey:address];

    if (v12)
    {
      address2 = [object address];
      v14 = [(BTSDevicesController *)self specifierForID:address2];

      name3 = [object name];
      [(PSSpecifier *)v14 setName:name3];
      [(PSSpecifier *)v14 setProperty:name3 forKey:*MEMORY[0x277D40170]];
      if (self->_bluetoothIsBusy && v14 == self->_currentDeviceSpecifier && [object paired])
      {
        [(BTSDevicesController *)self setBluetoothIsBusy:0];
      }

      v16 = [BTSDeviceClassic deviceWithDevice:object];
      [(BTSDevicesController *)self _updateDevicePosition:v16];
    }
  }
}

- (void)deviceConnectedHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = sharedBluetoothSettingsLogComponent(object);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    name2 = [object name];
    v30 = 136315906;
    v31 = "[BTSDevicesController deviceConnectedHandler:]";
    v32 = 2112;
    v33 = name;
    v34 = 2112;
    v35 = name2;
    v36 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@ for BTSDeviceController instance %p", &v30, 0x2Au);
  }

  if (self->_power && !self->_togglingPower)
  {
    address = [object address];
    identifier = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
    v11 = [address isEqualToString:identifier];

    if (!v11)
    {
      goto LABEL_15;
    }

    [(BTSDevicesController *)self cleanupPairing];
    userInfo = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    v13 = [userInfo objectForKey:@"PIN-ended"];

    name3 = [handlerCopy name];
    if ([name3 isEqualToString:*MEMORY[0x277CF3188]] && !self->_alert && (objc_msgSend(v13, "isEqualToString:", @"cancelled") & 1) == 0)
    {
      connected = [object connected];

      if (connected)
      {
LABEL_14:
        [(BTSDevicesController *)self setBluetoothIsBusy:0];
        [(BTSDevicesController *)self allowBluetoothScans:1];

LABEL_15:
        if ([object isTemporaryPaired])
        {
          [(BTSDevicesController *)self reloadSpecifiers];
        }

        else
        {
          address2 = [object address];
          [(BTSDevicesController *)self reloadCellForSpecifierID:address2];

          v29 = [BTSDeviceClassic deviceWithDevice:object];
          if ([v29 connected])
          {
            if ([v29 isLimitedConnectivityDevice])
            {
              [(NSMutableSet *)self->_connectedPoorBehaviorDevices addObject:v29];
              self->_mainFooterNeedsUpdate = 1;
              [(BTSDevicesController *)self updateMainGroupFooter];
            }

            if ([v29 isHIDDevice])
            {
              [(NSMutableSet *)self->_connectedHIDDevices addObject:v29];
              self->_mainFooterNeedsUpdate = 1;
              [(BTSDevicesController *)self updateMainGroupFooter];
            }
          }
        }

        goto LABEL_23;
      }

      v16 = [BTAlert alloc];
      v17 = [BTSDeviceClassic deviceWithDevice:object];
      v18 = [(BTAlert *)v16 initWithDevice:v17];
      alert = self->_alert;
      self->_alert = v18;

      v21 = sharedBluetoothSettingsLogComponent(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = self->_alert;
        v30 = 138412290;
        v31 = v22;
        _os_log_impl(&dword_23C0F7000, v21, OS_LOG_TYPE_DEFAULT, "deviceConnected BTAlert : %@", &v30, 0xCu);
      }

      [(BTAlert *)self->_alert setDelegate:self];
      userInfo2 = [handlerCopy userInfo];
      v24 = *MEMORY[0x277CF31D8];
      v25 = [userInfo2 objectForKey:*MEMORY[0x277CF31D8]];
      [v25 unsignedIntValue];

      v26 = self->_alert;
      name3 = [handlerCopy userInfo];
      v27 = [name3 objectForKey:v24];
      [(BTAlert *)v26 showAlertWithResult:v27];
    }

    goto LABEL_14;
  }

LABEL_23:
}

- (void)deviceDisconnectedHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = sharedBluetoothSettingsLogComponent(object);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    name2 = [object name];
    v11 = 136315650;
    v12 = "[BTSDevicesController deviceDisconnectedHandler:]";
    v13 = 2112;
    v14 = name;
    v15 = 2112;
    v16 = name2;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@", &v11, 0x20u);
  }

  if (self->_power && !self->_togglingPower)
  {
    if ([object isTemporaryPaired])
    {
      [(BTSDevicesController *)self reloadSpecifiers];
    }

    else
    {
      address = [object address];
      [(BTSDevicesController *)self reloadCellForSpecifierID:address animated:0];

      v10 = [BTSDeviceClassic deviceWithDevice:object];
      if ([(NSMutableSet *)self->_connectedPoorBehaviorDevices containsObject:v10])
      {
        [(NSMutableSet *)self->_connectedPoorBehaviorDevices removeObject:v10];
        self->_mainFooterNeedsUpdate = 1;
        [(BTSDevicesController *)self updateMainGroupFooter];
      }

      if ([(NSMutableSet *)self->_connectedHIDDevices containsObject:v10])
      {
        [(NSMutableSet *)self->_connectedHIDDevices removeObject:v10];
        self->_mainFooterNeedsUpdate = 1;
        [(BTSDevicesController *)self updateMainGroupFooter];
      }
    }
  }
}

- (void)deviceRemovedHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = sharedBluetoothSettingsLogComponent(object);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    name2 = [object name];
    v13 = 136315650;
    v14 = "[BTSDevicesController deviceRemovedHandler:]";
    v15 = 2112;
    v16 = name;
    v17 = 2112;
    v18 = name2;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@", &v13, 0x20u);
  }

  if (self->_power && !self->_togglingPower && ([object paired] & 1) == 0)
  {
    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    connectingDevices = [mEMORY[0x277CF3248] connectingDevices];
    v11 = [connectingDevices containsObject:object];

    if ((v11 & 1) == 0)
    {
      v12 = [BTSDeviceClassic deviceWithDevice:object];
      [(BTSDevicesController *)self _removeDevice:v12];
    }
  }
}

- (void)deviceUnpairedHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = sharedBluetoothSettingsLogComponent(object);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    name2 = [object name];
    v15 = 136315650;
    v16 = "[BTSDevicesController deviceUnpairedHandler:]";
    v17 = 2112;
    v18 = name;
    v19 = 2112;
    v20 = name2;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@", &v15, 0x20u);
  }

  v9 = [BTSDeviceClassic deviceWithDevice:object];
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  v11 = [mEMORY[0x277CF3248] wasDeviceDiscovered:object];

  v13 = sharedBluetoothSettingsLogComponent(v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v14)
    {
      v15 = 138412290;
      v16 = object;
      _os_log_impl(&dword_23C0F7000, v13, OS_LOG_TYPE_INFO, "Device %@ was unpaired and was discovered - updating position", &v15, 0xCu);
    }

    [(BTSDevicesController *)self _updateDevicePosition:v9];
  }

  else
  {
    if (v14)
    {
      v15 = 138412290;
      v16 = object;
      _os_log_impl(&dword_23C0F7000, v13, OS_LOG_TYPE_INFO, "Device %@ was unpaired and wasn't discovered - removing", &v15, 0xCu);
    }

    [(BTSDevicesController *)self _removeDevice:v9];
  }

  if ([(NSMutableSet *)self->_connectedPoorBehaviorDevices containsObject:v9])
  {
    [(NSMutableSet *)self->_connectedPoorBehaviorDevices removeObject:v9];
    self->_mainFooterNeedsUpdate = 1;
  }

  if ([(NSMutableSet *)self->_connectedHIDDevices containsObject:v9])
  {
    [(NSMutableSet *)self->_connectedHIDDevices removeObject:v9];
    self->_mainFooterNeedsUpdate = 1;
LABEL_15:
    [(BTSDevicesController *)self updateMainGroupFooter];
    goto LABEL_16;
  }

  if (self->_mainFooterNeedsUpdate)
  {
    goto LABEL_15;
  }

LABEL_16:
}

- (void)authenticationRequestHandler:(id)handler
{
  v78 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_power && !self->_togglingPower)
  {
    rootController = [(BTSDevicesController *)self rootController];
    visibleViewController = [rootController visibleViewController];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || self->_sspAlert || self->_alert)
    {

      goto LABEL_7;
    }

    syncContactsCarplayAlert = self->_syncContactsCarplayAlert;

    if (syncContactsCarplayAlert)
    {
LABEL_7:
      v8 = sharedBluetoothSettingsLogComponent(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [BTSDevicesController authenticationRequestHandler:];
      }

      goto LABEL_9;
    }

    name = [handlerCopy name];
    v11 = *MEMORY[0x277CF3228];
    if ([name isEqualToString:*MEMORY[0x277CF3228]])
    {
    }

    else
    {
      name2 = [handlerCopy name];
      v13 = [name2 isEqualToString:*MEMORY[0x277CF3218]];

      if (!v13)
      {
        object = [handlerCopy object];
        v8 = object;
LABEL_17:
        v16 = sharedBluetoothSettingsLogComponent(object);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          name3 = [handlerCopy name];
          name4 = [v8 name];
          *buf = 136315906;
          v71 = "[BTSDevicesController authenticationRequestHandler:]";
          v72 = 2112;
          v73 = name3;
          v74 = 2112;
          v75 = name4;
          v76 = 2048;
          selfCopy = self;
          _os_log_impl(&dword_23C0F7000, v16, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@ for BTSDeviceController instance %p", buf, 0x2Au);
        }

        [(BTSDevicesController *)self setBluetoothIsBusy:1];
        currentDeviceSpecifier = self->_currentDeviceSpecifier;
        if (currentDeviceSpecifier)
        {
          userInfo = [(PSSpecifier *)currentDeviceSpecifier userInfo];
          [userInfo removeObjectForKey:@"reverse-pairing"];
        }

        else
        {
          if ([v8 majorClass]== 256)
          {
            userInfo2 = [handlerCopy userInfo];
            v22 = [userInfo2 valueForKey:@"delayedPairingForNR"];

            if (!v22)
            {
              v59 = sharedBluetoothSettingsLogComponent(v23);
              if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_23C0F7000, v59, OS_LOG_TYPE_INFO, "Delaying incoming pairing attempt from computer to try to retrieve the name…", buf, 2u);
              }

              v60 = MEMORY[0x277CBEB38];
              userInfo3 = [handlerCopy userInfo];
              v42 = [v60 dictionaryWithDictionary:userInfo3];

              [v42 setValue:&stru_284EE3458 forKey:@"delayedPairingForNR"];
              v62 = MEMORY[0x277CCAB88];
              name5 = [handlerCopy name];
              object2 = [handlerCopy object];
              v65 = [v62 notificationWithName:name5 object:object2 userInfo:v42];
              [(BTSDevicesController *)self performSelector:sel_authenticationRequestHandler_ withObject:v65 afterDelay:1.0];

LABEL_55:
LABEL_9:

              goto LABEL_10;
            }
          }

          address = [v8 address];
          userInfo = [(BTSDevicesController *)self specifierForID:address];

          v26 = sharedBluetoothSettingsLogComponent(v25);
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
          if (userInfo)
          {
            if (v27)
            {
              *buf = 136315394;
              v71 = "[BTSDevicesController authenticationRequestHandler:]";
              v72 = 2112;
              v73 = userInfo;
              _os_log_impl(&dword_23C0F7000, v26, OS_LOG_TYPE_DEFAULT, "%s reverse-pairing attempt from %@", buf, 0x16u);
            }

            objc_storeStrong(&self->_currentDeviceSpecifier, userInfo);
            identifier = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
            [(BTSDevicesController *)self reloadCellForSpecifierID:identifier];
          }

          else
          {
            if (v27)
            {
              *buf = 136315138;
              v71 = "[BTSDevicesController authenticationRequestHandler:]";
              _os_log_impl(&dword_23C0F7000, v26, OS_LOG_TYPE_DEFAULT, "%s reverse-pairing attempt from previously unknown device", buf, 0xCu);
            }

            v29 = [BTSDeviceClassic deviceWithDevice:v8];
            v30 = [(BTSDevicesController *)self _specifierForDevice:v29];
            v31 = self->_currentDeviceSpecifier;
            self->_currentDeviceSpecifier = v30;

            identifier = [BTSDeviceClassic deviceWithDevice:v8];
            [(BTSDevicesController *)self _addDevice:identifier];
          }

          userInfo4 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
          [userInfo4 setObject:*MEMORY[0x277CBED28] forKey:@"reverse-pairing"];
        }

        userInfo5 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
        [userInfo5 removeObjectForKey:@"PIN-ended"];

        if (!self->_currentDeviceSpecifier || (-[NSObject address](v8, "address"), v35 = objc_claimAutoreleasedReturnValue(), -[PSSpecifier identifier](self->_currentDeviceSpecifier, "identifier"), v36 = objc_claimAutoreleasedReturnValue(), v37 = [v35 isEqualToString:v36], v36, v35, !v37))
        {
          v46 = sharedBluetoothSettingsLogComponent(v34);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            [BTSDevicesController authenticationRequestHandler:];
          }

          goto LABEL_9;
        }

        if (-[NSObject type](v8, "type") != 24 || ([handlerCopy name], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "isEqualToString:", *MEMORY[0x277CF3200]), v38, !v39))
        {
          type = [v8 type];
          if ([(BTSDevicesController *)self isiPad]&& (type & 0xFFFFFFFB) == 0x19)
          {
            name6 = [handlerCopy name];
            v49 = *MEMORY[0x277CF3200];
            v50 = [name6 isEqualToString:*MEMORY[0x277CF3200]];

            if (v50)
            {
              v52 = sharedBluetoothSettingsLogComponent(v51);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23C0F7000, v52, OS_LOG_TYPE_DEFAULT, "Entering pairing flow for 2.0 mouses/trackpads", buf, 2u);
              }

              v53 = [[BTSSPPairingRequest alloc] initWithDevice:v8 andSpecifier:self->_currentDeviceSpecifier];
              sspAlert = self->_sspAlert;
              self->_sspAlert = v53;

              [(BTSSPPairingRequest *)self->_sspAlert setPairingStyle:4 andPasskey:0];
              [(BTSSPPairingRequest *)self->_sspAlert setDelegate:self];
              [(BTSSPPairingRequest *)self->_sspAlert show];
              goto LABEL_9;
            }
          }

          else
          {
            v49 = *MEMORY[0x277CF3200];
          }

          name7 = [handlerCopy name];
          v56 = [name7 isEqualToString:v49];

          if (v56)
          {
            [(BTSDevicesController *)self pinRequestHandler:handlerCopy];
          }

          else
          {
            name8 = [handlerCopy name];
            v58 = [name8 isEqualToString:*MEMORY[0x277CF3220]];

            if (v58)
            {
              [(BTSDevicesController *)self sspConfirmationHandler:handlerCopy];
            }

            else
            {
              name9 = [handlerCopy name];
              v67 = [name9 isEqualToString:v11];

              if (v67)
              {
                [(BTSDevicesController *)self sspNumericComparisonHandler:handlerCopy];
              }

              else
              {
                name10 = [handlerCopy name];
                v69 = [name10 isEqualToString:*MEMORY[0x277CF3218]];

                if (v69)
                {
                  [(BTSDevicesController *)self sspPasskeyDisplayHandler:handlerCopy];
                }
              }
            }
          }

          goto LABEL_9;
        }

        v41 = sharedBluetoothSettingsLogComponent(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23C0F7000, v41, OS_LOG_TYPE_DEFAULT, "Entering pairing flow for 2.0 HID device", buf, 2u);
        }

        v42 = [MEMORY[0x277CCABB0] numberWithInt:(random() % 10000)];
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04u", objc_msgSend(v42, "unsignedIntValue")];
        [v8 setPIN:v43];

        v44 = [[BTSSPPairingRequest alloc] initWithDevice:v8 andSpecifier:self->_currentDeviceSpecifier];
        v45 = self->_sspAlert;
        self->_sspAlert = v44;

        [(BTSSPPairingRequest *)self->_sspAlert setPairingStyle:3 andPasskey:v42];
        [(BTSSPPairingRequest *)self->_sspAlert setDelegate:self];
        [(BTSSPPairingRequest *)self->_sspAlert show];
        goto LABEL_55;
      }
    }

    object3 = [handlerCopy object];
    v8 = [object3 valueForKey:@"device"];

    goto LABEL_17;
  }

LABEL_10:
}

- (void)pinRequestHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = sharedBluetoothSettingsLogComponent(object);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    name2 = [object name];
    v11 = 136315650;
    v12 = "[BTSDevicesController pinRequestHandler:]";
    v13 = 2112;
    v14 = name;
    v15 = 2112;
    v16 = name2;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@", &v11, 0x20u);
  }

  v9 = objc_alloc_init(BTSPairSetup);
  *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC38]) = 1;
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD10]));
  [(PSRootController *)v9 setRootController:WeakRetained];

  [(PSSetupController *)v9 setParentController:self];
  [(PSRootController *)v9 setSpecifier:self->_currentDeviceSpecifier];
  objc_storeWeak((self->_currentDeviceSpecifier + *MEMORY[0x277D3FCB8]), self);
  [(BTSDevicesController *)self showController:v9];
}

- (void)sspConfirmationHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = sharedBluetoothSettingsLogComponent(object);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    name2 = [object name];
    v11 = 136315650;
    v12 = "[BTSDevicesController sspConfirmationHandler:]";
    v13 = 2112;
    v14 = name;
    v15 = 2112;
    v16 = name2;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@", &v11, 0x20u);
  }

  v9 = [[BTSSPPairingRequest alloc] initWithDevice:object andSpecifier:self->_currentDeviceSpecifier];
  sspAlert = self->_sspAlert;
  self->_sspAlert = v9;

  [(BTSSPPairingRequest *)self->_sspAlert setPairingStyle:0 andPasskey:0];
  [(BTSSPPairingRequest *)self->_sspAlert setDelegate:self];
  [(BTSSPPairingRequest *)self->_sspAlert show];
}

- (void)sspNumericComparisonHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = [object valueForKey:@"device"];
  v7 = [object valueForKey:@"value"];
  v8 = sharedBluetoothSettingsLogComponent(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    name2 = [v6 name];
    v13 = 136315906;
    v14 = "[BTSDevicesController sspNumericComparisonHandler:]";
    v15 = 2112;
    v16 = name;
    v17 = 2112;
    v18 = name2;
    v19 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23C0F7000, v8, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@ for BTSDeviceController instance %p", &v13, 0x2Au);
  }

  if ([v6 isServiceSupported:0x40000] && -[BTSDevicesController isiPhone](self, "isiPhone") && -[BTSDevicesController isCarPlaySetupEnabled](self, "isCarPlaySetupEnabled"))
  {
    [(BTSDevicesController *)self startIncomingCarPlaySetup:v6 andPasskey:v7];
  }

  else
  {
    v11 = [[BTSSPPairingRequest alloc] initWithDevice:v6 andSpecifier:self->_currentDeviceSpecifier];
    sspAlert = self->_sspAlert;
    self->_sspAlert = v11;

    [(BTSSPPairingRequest *)self->_sspAlert setPairingStyle:1 andPasskey:v7];
    [(BTSSPPairingRequest *)self->_sspAlert setDelegate:self];
    [(BTSSPPairingRequest *)self->_sspAlert show];
  }
}

- (void)sspPasskeyDisplayHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  v6 = [object valueForKey:@"device"];
  v7 = [object valueForKey:@"value"];
  v8 = sharedBluetoothSettingsLogComponent(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    name2 = [v6 name];
    v13 = 136315650;
    v14 = "[BTSDevicesController sspPasskeyDisplayHandler:]";
    v15 = 2112;
    v16 = name;
    v17 = 2112;
    v18 = name2;
    _os_log_impl(&dword_23C0F7000, v8, OS_LOG_TYPE_DEFAULT, "%s received %@ for device %@", &v13, 0x20u);
  }

  v11 = [[BTSSPPairingRequest alloc] initWithDevice:v6 andSpecifier:self->_currentDeviceSpecifier];
  sspAlert = self->_sspAlert;
  self->_sspAlert = v11;

  [(BTSSPPairingRequest *)self->_sspAlert setPairingStyle:2 andPasskey:v7];
  [(BTSSPPairingRequest *)self->_sspAlert setDelegate:self];
  [(BTSSPPairingRequest *)self->_sspAlert show];
}

- (void)bluetoothDenylistChanged:(id)changed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BTSDevicesController_bluetoothDenylistChanged___block_invoke;
  block[3] = &unk_278BB03E0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)centralManagerDidUpdateState:(id)state
{
  v10 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = sharedBluetoothSettingsLogComponent(stateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    state = [stateCopy state];
    if (state > 0xA)
    {
      v7 = "?";
    }

    else
    {
      v7 = off_278BB06E0[state];
    }

    v8 = 136315138;
    v9 = v7;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "Received centralManagerDidUpdateState %s", &v8, 0xCu);
  }

  [(BTSDevicesController *)self powerChanged];
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v34 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  dataCopy = data;
  v10 = [(BTSDevicesController *)self _getDeviceForPeripheral:peripheralCopy];
  if (v10)
  {
    [peripheralCopy setDelegate:self];
    if (-[BTSDevicesController isChannelSoundingTestingEnabled](self, "isChannelSoundingTestingEnabled") && ([v10 isChannelSoundingDevice] & 1) == 0)
    {
      v11 = [dataCopy objectForKeyedSubscript:*MEMORY[0x277CBDD30]];
      if (v11)
      {
        v12 = [MEMORY[0x277CBE0A0] UUIDWithString:@"185B"];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v30;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v30 != v16)
              {
                objc_enumerationMutation(v13);
              }

              if ([*(*(&v29 + 1) + 8 * i) isEqual:{v12, v29}])
              {
                [v10 setIsChannelSoundingDevice:1];
                goto LABEL_15;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

LABEL_15:
      }
    }

    devicesDict = self->_devicesDict;
    identifier = [v10 identifier];
    v20 = [(NSMutableDictionary *)devicesDict objectForKey:identifier];

    if (v20)
    {
      identifier2 = [v10 identifier];
      v22 = [(BTSDevicesController *)self specifierForID:identifier2];

      name = [v22 name];
      name2 = [v10 name];
      v25 = [name isEqualToString:name2];

      if ((v25 & 1) == 0)
      {
        name3 = [v10 name];
        [v22 setName:name3];

        name4 = [v10 name];
        [v22 setProperty:name4 forKey:*MEMORY[0x277D40170]];
      }

      if (-[BTSDevicesController isLEAudioLiveOnEnabled](self, "isLEAudioLiveOnEnabled") && [v10 isLEAudioSupported])
      {
        [(BTSDevicesController *)self markLEAudioDevice:v10];
      }

      [(BTSDevicesController *)self _updateDevicePosition:v10];
      identifier3 = [v10 identifier];
      [(BTSDevicesController *)self reloadCellForSpecifierID:identifier3];
    }

    else
    {
      [(BTSDevicesController *)self _addDevice:v10];
      if (-[BTSDevicesController isLEAudioLiveOnEnabled](self, "isLEAudioLiveOnEnabled") && [v10 isLEAudioSupported])
      {
        [(BTSDevicesController *)self markLEAudioDevice:v10];
      }
    }
  }
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  v6 = [(BTSDevicesController *)self _getDeviceForPeripheral:peripheral];
  if (v6)
  {
    v11 = v6;
    identifier = [v6 identifier];
    identifier2 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
    v9 = [identifier isEqualToString:identifier2];

    if (v9)
    {
      [(BTSDevicesController *)self setBluetoothIsBusy:0];
    }

    identifier3 = [v11 identifier];
    [(BTSDevicesController *)self reloadCellForSpecifierID:identifier3];

    v6 = v11;
  }
}

- (void)centralManager:(id)manager didUpdatePeripheralConnectionState:(id)state
{
  v27 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v6 = [(BTSDevicesController *)self _getDeviceForPeripheral:stateCopy];
  v7 = v6;
  if (v6)
  {
    v8 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = stateCopy;
      _os_log_impl(&dword_23C0F7000, v8, OS_LOG_TYPE_INFO, "didUpdatePeripheralConnectionState for device %@", &v25, 0xCu);
    }

    connected = [v7 connected];
    if (connected)
    {
      v10 = sharedBluetoothSettingsLogComponent(connected);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v25 = 138412290;
        v26 = stateCopy;
        _os_log_impl(&dword_23C0F7000, v10, OS_LOG_TYPE_INFO, "Discovering services for device %@", &v25, 0xCu);
      }

      [stateCopy setDelegate:self];
      v11 = [(NSArray *)self->_healthServices arrayByAddingObjectsFromArray:self->_hidServices];
      if ([(BTSDevicesController *)self isChannelSoundingTestingEnabled])
      {
        v12 = [v11 mutableCopy];
        v13 = [MEMORY[0x277CBE0A0] UUIDWithString:@"185B"];
        [v12 addObject:v13];

        v14 = [v12 copy];
        v11 = v14;
      }

      [stateCopy discoverServices:v11];
      if ([v7 connected])
      {
        if ([v7 isLimitedConnectivityDevice])
        {
          [(NSMutableSet *)self->_connectedPoorBehaviorDevices addObject:v7];
          self->_mainFooterNeedsUpdate = 1;
          [(BTSDevicesController *)self updateMainGroupFooter];
        }

        if ([v7 isFirmwareUpdateRequiredDevice])
        {
          [(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices addObject:v7];
          self->_mainFooterNeedsUpdate = 1;
          [(BTSDevicesController *)self updateMainGroupFooter];
        }

        if ([v7 isHIDDevice])
        {
          [(NSMutableSet *)self->_connectedHIDDevices addObject:v7];
          self->_mainFooterNeedsUpdate = 1;
          [(BTSDevicesController *)self updateMainGroupFooter];
        }

        if ([v7 isChannelSoundingDevice] && -[BTSDevicesController isChannelSoundingTestingEnabled](self, "isChannelSoundingTestingEnabled"))
        {
          if ([v7 paired])
          {
            [v7 openChannelSoundingL2CAP];
          }

          else
          {
            sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
            [sharedPairingAgent pairPeer:stateCopy];
          }
        }
      }
    }

    else
    {
      identifier = [v7 identifier];
      identifier2 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
      v22 = [identifier isEqualToString:identifier2];

      if (v22)
      {
        [(BTSDevicesController *)self setBluetoothIsBusy:0];
      }

      if ([v7 isChannelSoundingDevice] && -[BTSDevicesController isChannelSoundingTestingEnabled](self, "isChannelSoundingTestingEnabled"))
      {
        [v7 setChannelSoundingL2CAP:0];
      }

      if (-[BTSDevicesController isLEAudioLiveOnEnabled](self, "isLEAudioLiveOnEnabled") && [v7 isLEAudioSupported])
      {
        [v7 connect];
      }
    }

    [(BTSDevicesController *)self _updateDevicePosition:v7];
    identifier3 = [v7 identifier];
    [(BTSDevicesController *)self reloadCellForSpecifierID:identifier3];

    if (([v7 connected] & 1) == 0)
    {
      if ([(NSMutableSet *)self->_connectedPoorBehaviorDevices containsObject:v7])
      {
        [(NSMutableSet *)self->_connectedPoorBehaviorDevices removeObject:v7];
        self->_mainFooterNeedsUpdate = 1;
        [(BTSDevicesController *)self updateMainGroupFooter];
      }

      if ([(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices containsObject:v7])
      {
        [(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices removeObject:v7];
        self->_mainFooterNeedsUpdate = 1;
        [(BTSDevicesController *)self updateMainGroupFooter];
      }

      if ([(NSMutableSet *)self->_connectedHIDDevices containsObject:v7])
      {
        [(NSMutableSet *)self->_connectedHIDDevices removeObject:v7];
        self->_mainFooterNeedsUpdate = 1;
        [(BTSDevicesController *)self updateMainGroupFooter];
      }
    }
  }

  else
  {
    v15 = [(BTSDevicesController *)self _getDeviceForCTKDPeripheral:stateCopy];
    v16 = v15;
    if (v15)
    {
      v17 = sharedBluetoothSettingsLogComponent(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = stateCopy;
        _os_log_impl(&dword_23C0F7000, v17, OS_LOG_TYPE_DEFAULT, "CTKD device %@ connection state updated", &v25, 0xCu);
      }

      [(BTSDevicesController *)self _updateDevicePosition:v16];
      classicDevice = [v16 classicDevice];
      address = [classicDevice address];
      [(BTSDevicesController *)self reloadCellForSpecifierID:address];
    }
  }
}

- (void)_peripheralDidCompletePairing:(id)pairing
{
  pairingCopy = pairing;
  identifier = [pairingCopy identifier];
  identifier2 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
  v6 = [identifier isEqualToString:identifier2];

  if (v6)
  {
    [(BTSDevicesController *)self setBluetoothIsBusy:0];
  }

  [(BTSDevicesController *)self _updateDevicePosition:pairingCopy];
  identifier3 = [pairingCopy identifier];
  [(BTSDevicesController *)self reloadCellForSpecifierID:identifier3];

  if ([pairingCopy connected])
  {
    if ([pairingCopy isLimitedConnectivityDevice])
    {
      [(NSMutableSet *)self->_connectedPoorBehaviorDevices addObject:pairingCopy];
      self->_mainFooterNeedsUpdate = 1;
      [(BTSDevicesController *)self updateMainGroupFooter];
    }

    if ([pairingCopy isFirmwareUpdateRequiredDevice])
    {
      [(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices addObject:pairingCopy];
      self->_mainFooterNeedsUpdate = 1;
      [(BTSDevicesController *)self updateMainGroupFooter];
    }

    if ([pairingCopy isHIDDevice])
    {
      [(NSMutableSet *)self->_connectedHIDDevices addObject:pairingCopy];
      self->_mainFooterNeedsUpdate = 1;
      [(BTSDevicesController *)self updateMainGroupFooter];
    }

    if ([pairingCopy isChannelSoundingDevice] && -[BTSDevicesController isChannelSoundingTestingEnabled](self, "isChannelSoundingTestingEnabled"))
    {
      v8 = pairingCopy;
      channelSoundingL2CAP = [v8 channelSoundingL2CAP];

      if (!channelSoundingL2CAP)
      {
        [v8 openChannelSoundingL2CAP];
      }
    }
  }
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  v5 = [(BTSDevicesController *)self _getDeviceForPeripheral:pairing];
  if (v5)
  {
    [(BTSDevicesController *)self _peripheralDidCompletePairing:v5];
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"enableHealthDevices", @"com.apple.bluetooth", &keyExistsAndHasValidFormat);
    if (_os_feature_enabled_impl())
    {
      if (AppBooleanValue)
      {
        if (keyExistsAndHasValidFormat)
        {
          healthDeviceType = [v5 healthDeviceType];

          if (healthDeviceType)
          {
            [v5 setUserSelectedHealthDataSyncConfig:0];
          }
        }
      }
    }
  }
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  v7 = [(BTSDevicesController *)self _getDeviceForPeripheral:pairingCopy];
  if ([pairingCopy state])
  {
    [(CBCentralManager *)self->_centralManager cancelPeripheralConnection:pairingCopy];
  }

  if (v7)
  {
    identifier = [v7 identifier];
    identifier2 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
    v10 = [identifier isEqualToString:identifier2];

    if (v10)
    {
      v11 = [[BTAlert alloc] initWithDevice:v7];
      alert = self->_alert;
      self->_alert = v11;

      v14 = sharedBluetoothSettingsLogComponent(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_alert;
        v16 = 138412290;
        v17 = v15;
        _os_log_impl(&dword_23C0F7000, v14, OS_LOG_TYPE_DEFAULT, "Pairing failed BTAlert : %@", &v16, 0xCu);
      }

      [(BTAlert *)self->_alert setDelegate:self];
      [(BTAlert *)self->_alert showAlertWithResult:&unk_284EE7388];
    }

    if ([v7 isHealthDevice])
    {
      [v7 setHealthDevice:0];
    }

    [(BTSDevicesController *)self _peripheralDidCompletePairing:v7];
  }
}

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  v5 = [(BTSDevicesController *)self _getDeviceForPeripheral:unpair];
  v6 = v5;
  if (v5)
  {
    if ([v5 isHealthDevice])
    {
      [v6 setHealthDevice:0];
      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        healthKitStore = self->_healthKitStore;
        v8 = objc_alloc(MEMORY[0x277CCAD78]);
        identifier = [v6 identifier];
        v10 = [v8 initWithUUIDString:identifier];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __51__BTSDevicesController_pairingAgent_peerDidUnpair___block_invoke;
        v12[3] = &unk_278BB0408;
        v13 = v6;
        [(HKHealthStore *)healthKitStore unregisterPeripheralIdentifier:v10 withCompletion:v12];
      }
    }

    [(BTSDevicesController *)self _updateDevicePosition:v6];
    identifier2 = [v6 identifier];
    [(BTSDevicesController *)self reloadCellForSpecifierID:identifier2];
  }
}

void __51__BTSDevicesController_pairingAgent_peerDidUnpair___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if ((a2 & 1) == 0)
  {
    v6 = sharedBluetoothSettingsLogComponent(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __51__BTSDevicesController_pairingAgent_peerDidUnpair___block_invoke_cold_1();
    }
  }
}

- (void)peripheralDidUpdateName:(id)name
{
  v4 = [(BTSDevicesController *)self _getDeviceForPeripheral:name];
  if (v4)
  {
    v9 = v4;
    identifier = [v4 identifier];
    v6 = [(BTSDevicesController *)self specifierForID:identifier];

    name = [v9 name];
    [v6 setName:name];

    name2 = [v9 name];
    [v6 setProperty:name2 forKey:*MEMORY[0x277D40170]];

    [(BTSDevicesController *)self _updateDevicePosition:v9];
    v4 = v9;
  }
}

- (void)peripheralConnectionTimeout:(id)timeout
{
  v16 = *MEMORY[0x277D85DE8];
  userInfo = [timeout userInfo];
  identifier = [userInfo identifier];
  identifier2 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
  v7 = [identifier isEqualToString:identifier2];

  if (v7)
  {
    if (([userInfo connected] & 1) == 0)
    {
      v8 = [[BTAlert alloc] initWithDevice:userInfo];
      alert = self->_alert;
      self->_alert = v8;

      v11 = sharedBluetoothSettingsLogComponent(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_alert;
        v14 = 138412290;
        v15 = v12;
        _os_log_impl(&dword_23C0F7000, v11, OS_LOG_TYPE_DEFAULT, "Connection timeout BTAlert : %@", &v14, 0xCu);
      }

      [(BTAlert *)self->_alert setDelegate:self];
      [(BTAlert *)self->_alert showAlertWithResult:&unk_284EE73A0];
      [userInfo disconnect];
    }

    [(BTSDevicesController *)self setBluetoothIsBusy:0];
    identifier3 = [userInfo identifier];
    [(BTSDevicesController *)self reloadCellForSpecifierID:identifier3];
  }
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  v55 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  servicesCopy = services;
  v8 = servicesCopy;
  if (servicesCopy)
  {
    v9 = sharedBluetoothSettingsLogComponent(servicesCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BTSDevicesController peripheral:didDiscoverServices:];
    }
  }

  else
  {
    v10 = [(BTSDevicesController *)self _getDeviceForPeripheral:peripheralCopy];
    v9 = v10;
    if (v10)
    {
      v11 = sharedBluetoothSettingsLogComponent(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        services = [peripheralCopy services];
        *buf = 138412546;
        v52 = peripheralCopy;
        v53 = 2112;
        v54 = services;
        _os_log_impl(&dword_23C0F7000, v11, OS_LOG_TYPE_INFO, "Device %@ supports services %@", buf, 0x16u);
      }

      v39 = v9;

      v42 = [MEMORY[0x277CBEB98] setWithArray:self->_healthServices];
      [MEMORY[0x277CBEB58] set];
      v41 = v40 = peripheralCopy;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      services2 = [peripheralCopy services];
      v14 = [services2 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = 0;
        v17 = *v47;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            selfCopy = self;
            if (*v47 != v17)
            {
              objc_enumerationMutation(services2);
            }

            v20 = *(*(&v46 + 1) + 8 * i);
            uUID = [v20 UUID];
            v22 = [v42 containsObject:uUID];

            if (v22)
            {
              uUID2 = [v20 UUID];
              uUIDString = [uUID2 UUIDString];
              [v41 addObject:uUIDString];
            }

            self = selfCopy;
            hidServices = selfCopy->_hidServices;
            uUID3 = [v20 UUID];
            LOBYTE(hidServices) = [(NSArray *)hidServices containsObject:uUID3];

            v16 |= hidServices;
          }

          v15 = [services2 countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v15);
      }

      else
      {
        v16 = 0;
      }

      v27 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFD0]];
      uUIDString2 = [v27 UUIDString];
      v29 = [v41 containsObject:uUIDString2];

      v9 = v39;
      if ((v16 & 1) != 0 && ([(NSMutableSet *)self->_connectedHIDDevices containsObject:v39]& 1) == 0)
      {
        [(NSMutableSet *)self->_connectedHIDDevices addObject:v39];
        self->_mainFooterNeedsUpdate = 1;
        [(BTSDevicesController *)self updateMainGroupFooter];
      }

      v30 = [v41 count];
      v8 = 0;
      peripheralCopy = v40;
      if (v30)
      {
        v31 = sharedBluetoothSettingsLogComponent(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [BTSDevicesController peripheral:didDiscoverServices:];
        }

        [v39 setHealthDevice:1];
        if (v29)
        {
          v32 = _os_feature_enabled_impl();
          if (v32)
          {
            v33 = sharedBluetoothSettingsLogComponent(v32);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              [BTSDevicesController peripheral:didDiscoverServices:];
            }

            [v40 setCustomProperty:@"Fitness" value:@"1"];
            v34 = [v40 customProperty:@"UpdateHealth"];

            if (!v34)
            {
              [v40 setCustomProperty:@"UpdateHealth" value:@"1"];
            }

            [v40 tag:*MEMORY[0x277CCCB90]];
            notify_post("BTSettingsHRMConnectedNotification");
          }

          else
          {
            healthKitStore = self->_healthKitStore;
            identifier = [v40 identifier];
            name = [v40 name];
            allObjects = [v41 allObjects];
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = __55__BTSDevicesController_peripheral_didDiscoverServices___block_invoke;
            v43[3] = &unk_278BB0430;
            v44 = v40;
            v45 = v41;
            [(HKHealthStore *)healthKitStore registerPeripheralIdentifier:identifier name:name services:allObjects withCompletion:v43];
          }
        }

        [(BTSDevicesController *)self _updateDevicePosition:v39];
      }
    }
  }
}

void __55__BTSDevicesController_peripheral_didDiscoverServices___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if ((a2 & 1) == 0)
  {
    v6 = sharedBluetoothSettingsLogComponent(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __55__BTSDevicesController_peripheral_didDiscoverServices___block_invoke_cold_1();
    }
  }
}

- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  channelCopy = channel;
  errorCopy = error;
  v11 = sharedBluetoothSettingsLogComponent(errorCopy);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (errorCopy)
  {
    if (v12)
    {
      v13 = [errorCopy description];
      v14 = 138412546;
      v15 = peripheralCopy;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_23C0F7000, v11, OS_LOG_TYPE_DEFAULT, "Error opening L2CAP channel for %@: %@", &v14, 0x16u);
    }

LABEL_4:

    goto LABEL_5;
  }

  if (v12)
  {
    v14 = 138412290;
    v15 = peripheralCopy;
    _os_log_impl(&dword_23C0F7000, v11, OS_LOG_TYPE_DEFAULT, "Peripheral %@ did open L2CAP channel", &v14, 0xCu);
  }

  if (-[BTSDevicesController isChannelSoundingTestingEnabled](self, "isChannelSoundingTestingEnabled") && [channelCopy PSM] == 128)
  {
    v11 = [(BTSDevicesController *)self _getDeviceForPeripheral:peripheralCopy];
    if ([v11 isChannelSoundingDevice])
    {
      [v11 setChannelSoundingL2CAP:channelCopy];
      [(CBCentralManager *)self->_centralManager csSecurityEnable:peripheralCopy];
      [(CBCentralManager *)self->_centralManager csSetDefaultSettings:peripheralCopy options:&unk_284EE73D0];
    }

    goto LABEL_4;
  }

LABEL_5:
}

- (void)peripheral:(id)peripheral didCompleteChannelSoundingProcedure:(id)procedure error:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  procedureCopy = procedure;
  peripheralCopy = peripheral;
  v9 = sharedBluetoothSettingsLogComponent(peripheralCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = procedureCopy;
    _os_log_impl(&dword_23C0F7000, v9, OS_LOG_TYPE_DEFAULT, "Completed channel sounding procedure with results: %@", &v11, 0xCu);
  }

  v10 = [(BTSDevicesController *)self _getDeviceForPeripheral:peripheralCopy];

  [v10 sendChannelSoundingResults:procedureCopy];
}

- (void)fetchDADevices
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleDASessionEvent:(id)event
{
  eventCopy = event;
  eventType = [eventCopy eventType];
  if (eventType <= 40)
  {
    if (eventType != 10)
    {
      if (eventType == 20)
      {
        defaultCenter = sharedBluetoothSettingsLogComponent(20);
        if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(&dword_23C0F7000, defaultCenter, OS_LOG_TYPE_INFO, "DAEventTypeInvalidated for BTSettings", v14, 2u);
        }

        goto LABEL_22;
      }

      goto LABEL_23;
    }

    v8 = sharedBluetoothSettingsLogComponent(10);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_23C0F7000, v8, OS_LOG_TYPE_INFO, "DASession from BTSettings activated", v17, 2u);
    }

    [(BTSDevicesController *)self fetchDADevices];
LABEL_14:
    if (self->_power && *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
    {
      [(BTSDevicesController *)self reloadSpecifiers];
    }

    goto LABEL_23;
  }

  if (eventType != 41)
  {
    if (eventType != 42)
    {
      goto LABEL_23;
    }

    v7 = sharedBluetoothSettingsLogComponent([(BTSDevicesController *)self fetchDADevices]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23C0F7000, v7, OS_LOG_TYPE_INFO, "DeviceChanged for BTSettings", buf, 2u);
    }

    goto LABEL_14;
  }

  v9 = sharedBluetoothSettingsLogComponent(41);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&dword_23C0F7000, v9, OS_LOG_TYPE_INFO, "DeviceLost for BTSettings", v16, 2u);
  }

  [(BTSDevicesController *)self fetchDADevices];
  if (self->_power && *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    [(BTSDevicesController *)self reloadSpecifiers];
    v10 = MEMORY[0x277CCAB98];
    v11 = eventCopy;
    defaultCenter = [v10 defaultCenter];
    device = [v11 device];

    identifier = [device identifier];
    [defaultCenter postNotificationName:@"DADeviceLost" object:identifier];

LABEL_22:
  }

LABEL_23:
}

- (void)setSSPConfirmation:(int64_t)confirmation forDevice:(id)device
{
  deviceCopy = device;
  if (confirmation)
  {
    userInfo = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    [userInfo setObject:@"cancelled" forKey:@"PIN-ended"];

    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    v8 = mEMORY[0x277CF3248];
    confirmationCopy = confirmation;
  }

  else
  {
    if (-[BTSDevicesController isiPhone](self, "isiPhone") && [deviceCopy isServiceSupported:0x40000])
    {
      [deviceCopy setSyncSettings:{objc_msgSend(deviceCopy, "syncSettings") & 0xFFFF00FFLL}];
      [(BTSDevicesController *)self showSyncContactsPopup:deviceCopy];
      goto LABEL_8;
    }

    userInfo2 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    [userInfo2 setObject:@"accepted" forKey:@"PIN-ended"];

    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    v8 = mEMORY[0x277CF3248];
    confirmationCopy = 0;
  }

  [mEMORY[0x277CF3248] acceptSSP:confirmationCopy forDevice:deviceCopy];

LABEL_8:
}

- (void)showPairingAlert:(id)alert
{
  alertCopy = alert;
  view = [(BTSDevicesController *)self view];
  window = [view window];

  if (window)
  {
    v7 = MEMORY[0x277D75D28];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __41__BTSDevicesController_showPairingAlert___block_invoke;
    v8[3] = &unk_278BB0318;
    v8[4] = self;
    v9 = alertCopy;
    [v7 _performWithoutDeferringTransitions:v8];
  }
}

- (id)_getDeviceForPeripheral:(id)peripheral
{
  v43 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  devicesDict = self->_devicesDict;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  v8 = [(NSMutableDictionary *)devicesDict objectForKey:uUIDString];

  if (v8)
  {
    if ([peripheralCopy hasTag:@"_MANAGED_BY_WALLET_"])
    {
      v9 = sharedBluetoothSettingsLogComponent([v8 setManagedByWallet:1]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v41) = 0;
        v10 = "DCK : Digital Car Key are special";
LABEL_28:
        _os_log_impl(&dword_23C0F7000, v9, OS_LOG_TYPE_DEFAULT, v10, &v41, 2u);
      }
    }

    else
    {
      if (![peripheralCopy hasTag:@"_MANAGED_BY_ALIRO_WALLET_"])
      {
LABEL_30:
        v8 = v8;
        v34 = v8;
        goto LABEL_41;
      }

      v9 = sharedBluetoothSettingsLogComponent([v8 setManagedByAliroWallet:1]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v41) = 0;
        v10 = "Alire : Home Key are special";
        goto LABEL_28;
      }
    }

LABEL_29:

    goto LABEL_30;
  }

  v8 = [BTSDeviceLE deviceWithPeripheral:peripheralCopy manager:self->_centralManager];
  if (![(BTSDevicesController *)self shouldHideDevice:v8])
  {
    if ([peripheralCopy hasTag:@"_MANAGED_BY_WALLET_"])
    {
      v11 = sharedBluetoothSettingsLogComponent([v8 setManagedByWallet:1]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v41) = 0;
        _os_log_impl(&dword_23C0F7000, v11, OS_LOG_TYPE_DEFAULT, "DCK : Digital Car Key are special", &v41, 2u);
      }
    }

    if ([peripheralCopy hasTag:@"_MANAGED_BY_ALIRO_WALLET_"])
    {
      v12 = sharedBluetoothSettingsLogComponent([v8 setManagedByAliroWallet:1]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v41) = 0;
        _os_log_impl(&dword_23C0F7000, v12, OS_LOG_TYPE_DEFAULT, "Aliro : Home Key are special", &v41, 2u);
      }
    }

    v13 = [peripheralCopy customProperty:@"Fitness"];

    if (v13)
    {
      [v8 setHealthDevice:1];
    }

    supportsCTKD = [v8 supportsCTKD];
    if (!supportsCTKD)
    {
      v9 = sharedBluetoothSettingsLogComponent(supportsCTKD);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        name = [v8 name];
        v41 = 138412290;
        v42 = name;
        _os_log_impl(&dword_23C0F7000, v9, OS_LOG_TYPE_DEFAULT, "CTKD : Device %@ does not support CTKD", &v41, 0xCu);
      }

      goto LABEL_29;
    }

    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    identifier2 = [peripheralCopy identifier];
    v9 = [mEMORY[0x277CF3248] deviceFromIdentifier:identifier2];

    v17 = [BTSDeviceClassic deviceWithDevice:v9];
    v18 = self->_devicesDict;
    classicDevice = [v17 classicDevice];
    address = [classicDevice address];
    v21 = [(NSMutableDictionary *)v18 objectForKey:address];

    if (v21)
    {
      [v21 setCtkdDevice:1];
      if ([v8 isManagedByDeviceAccess])
      {
        knownDADevices = self->_knownDADevices;
        identifier3 = [peripheralCopy identifier];
        v24 = [(NSMutableDictionary *)knownDADevices objectForKeyedSubscript:identifier3];
        [v8 setUnderlyingDADevice:v24];

        name2 = [v8 name];
        [v21 setAccessorySetupKitDisplayName:name2];

        [v21 setDenyIncomingClassicConnection:{objc_msgSend(v8, "shouldDenyIncomingClassicConnection")}];
      }

      v26 = self->_devicesDict;
      classicDevice2 = [v17 classicDevice];
      address2 = [classicDevice2 address];
      [(NSMutableDictionary *)v26 setObject:v21 forKey:address2];

      v30 = sharedBluetoothSettingsLogComponent(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [BTSDevicesController _getDeviceForPeripheral:];
      }

      identifier4 = [peripheralCopy identifier];
      uUIDString2 = [identifier4 UUIDString];

      if (uUIDString2)
      {
        v33 = [(NSMutableDictionary *)self->_ctkdLeDevicesDict objectForKey:uUIDString2];

        if (!v33)
        {
          [v8 setCtkdDevice:1];
          [(NSMutableDictionary *)self->_ctkdLeDevicesDict setObject:v8 forKey:uUIDString2];
          [(BTSDevicesController *)self updateCTKDCounterparts:v21 leDevice:v8];
        }
      }
    }

    else
    {
      v36 = [peripheralCopy hasTag:@"HasTS"];
      v37 = v36;
      v38 = sharedBluetoothSettingsLogComponent(v36);
      uUIDString2 = v38;
      if (v37)
      {
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          [BTSDevicesController _getDeviceForPeripheral:];
        }

        goto LABEL_29;
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        name3 = [v8 name];
        v41 = 138412290;
        v42 = name3;
        _os_log_impl(&dword_23C0F7000, uUIDString2, OS_LOG_TYPE_INFO, "CTKD : Device %@ missing from list of classic paired devices", &v41, 0xCu);
      }
    }
  }

  v34 = 0;
LABEL_41:

  return v34;
}

- (id)_getDeviceForCTKDPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  ctkdLeDevicesDict = self->_ctkdLeDevicesDict;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  v8 = [(NSMutableDictionary *)ctkdLeDevicesDict objectForKey:uUIDString];

  if (v8)
  {
    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    identifier2 = [peripheralCopy identifier];
    v11 = [mEMORY[0x277CF3248] deviceFromIdentifier:identifier2];

    v12 = [BTSDeviceClassic deviceWithDevice:v11];
    classicDevice = [v12 classicDevice];
    address = [classicDevice address];

    v15 = [(NSMutableDictionary *)self->_devicesDict objectForKey:address];
    if (([v8 isManagedByWallet] & 1) != 0 || objc_msgSend(v8, "isManagedByAliroWallet"))
    {
      v16 = [(NSMutableDictionary *)self->managedByWalletDictionary objectForKey:address];

      if (!v16)
      {
        [(NSMutableDictionary *)self->managedByWalletDictionary setValue:MEMORY[0x277CBEC38] forKey:address];
      }
    }

    doesSupportBackgroundNI = [v8 doesSupportBackgroundNI];
    if (doesSupportBackgroundNI && ([(NSMutableDictionary *)self->supportsBackgroundNIDictionary objectForKey:address], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
    {
      doesSupportBackgroundNI = [(NSMutableDictionary *)self->supportsBackgroundNIDictionary setValue:MEMORY[0x277CBEC38] forKey:address];
      if (v15)
      {
        goto LABEL_9;
      }
    }

    else if (v15)
    {
LABEL_9:
      v19 = v15;
      goto LABEL_14;
    }

    v20 = sharedBluetoothSettingsLogComponent(doesSupportBackgroundNI);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [BTSDevicesController _getDeviceForCTKDPeripheral:];
    }

LABEL_14:
    if (v15)
    {
      goto LABEL_16;
    }
  }

  v15 = 0;
LABEL_16:

  return v15;
}

- (void)_addDevice:(id)device
{
  deviceCopy = device;
  if ([(BTSDevicesController *)self shouldDisplayDevice:?])
  {
    identifier = [deviceCopy identifier];
    if (identifier)
    {
      v5 = identifier;
      devicesDict = self->_devicesDict;
      identifier2 = [deviceCopy identifier];
      v8 = [(NSMutableDictionary *)devicesDict objectForKey:identifier2];

      if (!v8)
      {
        v9 = self->_devicesDict;
        identifier3 = [deviceCopy identifier];
        [(NSMutableDictionary *)v9 setObject:deviceCopy forKey:identifier3];

        v11 = [(BTSDevicesController *)self _specifierForDevice:deviceCopy];
        [(BTSDevicesController *)self _addDeviceSpecifier:v11 withDevice:deviceCopy];
      }
    }
  }
}

- (void)_addDeviceSpecifier:(id)specifier withDevice:(id)device
{
  v31 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  deviceCopy = device;
  v8 = [(BTSDevicesController *)self specifierForID:@"MY_DEVICES"];
  if (v8)
  {

LABEL_7:
    v27 = specifierCopy;
    if ([deviceCopy isMyDevice])
    {
      v16 = @"MY_DEVICES";
    }

    else
    {
      v16 = @"DEVICES";
    }

    v17 = [(BTSDevicesController *)self indexOfSpecifierID:v16];
    array = [MEMORY[0x277CBEB18] array];
    v18 = *MEMORY[0x277D3FC48];
    v19 = v17 + 1;
    if (v17 + 1 < [*(&self->super.super.super.super.super.isa + v18) count])
    {
      v20 = v17 + 1;
      do
      {
        v21 = [(BTSDevicesController *)self specifierAtIndex:v20];
        userInfo = [v21 userInfo];
        v23 = [userInfo objectForKey:@"bt-device"];

        if (!v23)
        {
          break;
        }

        isMyDevice = [deviceCopy isMyDevice];
        if (isMyDevice == [v23 isMyDevice])
        {
          [array addObject:v23];
        }

        ++v20;
      }

      while (v20 < [*(&self->super.super.super.super.super.isa + v18) count]);
    }

    [array addObject:deviceCopy];
    [array sortUsingSelector:sel_compare_];
    v25 = [array indexOfObject:deviceCopy];
    v26 = sharedBluetoothSettingsLogComponent(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [BTSDevicesController _addDeviceSpecifier:withDevice:];
    }

    specifierCopy = v27;
    [(BTSDevicesController *)self insertSpecifier:v27 atIndex:v19 + v25 animated:1];
    goto LABEL_19;
  }

  isMyDevice2 = [deviceCopy isMyDevice];
  if (!isMyDevice2)
  {
    goto LABEL_7;
  }

  v10 = sharedBluetoothSettingsLogComponent(isMyDevice2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    name = [deviceCopy name];
    *buf = 138412290;
    v30 = name;
    _os_log_impl(&dword_23C0F7000, v10, OS_LOG_TYPE_INFO, "Adding first known device %@", buf, 0xCu);
  }

  v28[0] = self->_myDevicesGroupSpec;
  v28[1] = specifierCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  [(BTSDevicesController *)self insertContiguousSpecifiers:v12 afterSpecifierID:@"BLUETOOTH" animated:1];

  array = [(PSSpecifier *)self->_otherDevicesGroupSpec propertyForKey:*MEMORY[0x277D3FFB0]];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"OTHER_DEVICES" value:&stru_284EE3458 table:@"Devices"];
  [array setName:v15];

LABEL_19:
}

- (void)_removeDeviceSpecifier:(id)specifier
{
  v23 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v5 = sharedBluetoothSettingsLogComponent([(BTSDevicesController *)self beginUpdates]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v20 = 138412546;
    *&v20[4] = specifierCopy;
    v21 = 2048;
    v22 = [(BTSDevicesController *)self indexOfSpecifier:specifierCopy];
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_INFO, "Removing specifier %@ at index %lu", v20, 0x16u);
  }

  [(BTSDevicesController *)self removeSpecifier:specifierCopy animated:1];
  v6 = [(BTSDevicesController *)self specifierForID:@"MY_DEVICES"];
  if (v6)
  {
    v7 = v6;
    v8 = [(BTSDevicesController *)self rowsForGroup:1];

    if (!v8)
    {
      v10 = sharedBluetoothSettingsLogComponent(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&dword_23C0F7000, v10, OS_LOG_TYPE_INFO, "Removing known device section", v20, 2u);
      }

      isMainSettingsPane = [(BTSDevicesController *)self isMainSettingsPane];
      table = [(BTSDevicesController *)self table];
      if (isMainSettingsPane)
      {
        v13 = [(BTSDevicesController *)self tableView:table viewForHeaderInSection:2];

        v15 = sharedBluetoothSettingsLogComponent(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *v20 = 0;
          v16 = "Removing in BT pane";
LABEL_12:
          _os_log_impl(&dword_23C0F7000, v15, OS_LOG_TYPE_INFO, v16, v20, 2u);
        }
      }

      else
      {
        v13 = [(BTSDevicesController *)self tableView:table viewForHeaderInSection:1];

        v15 = sharedBluetoothSettingsLogComponent(v17);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *v20 = 0;
          v16 = "Removing in AX pane";
          goto LABEL_12;
        }
      }

      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"DEVICES" value:&stru_284EE3458 table:@"Devices"];
      [v13 setName:v19];

      [(BTSDevicesController *)self removeSpecifier:self->_myDevicesGroupSpec animated:1];
    }
  }

  [(BTSDevicesController *)self endUpdates];
}

- (void)_removeDevice:(id)device
{
  deviceCopy = device;
  devicesDict = self->_devicesDict;
  v12 = deviceCopy;
  identifier = [deviceCopy identifier];
  v7 = [(NSMutableDictionary *)devicesDict objectForKey:identifier];

  if (v7)
  {
    identifier2 = [v12 identifier];
    v9 = [(BTSDevicesController *)self specifierForID:identifier2];

    if (v9 && v9 == self->_currentDeviceSpecifier)
    {
      [v12 disconnect];
      [(BTSDevicesController *)self setBluetoothIsBusy:0];
    }

    v10 = self->_devicesDict;
    identifier3 = [v12 identifier];
    [(NSMutableDictionary *)v10 removeObjectForKey:identifier3];

    [(BTSDevicesController *)self _removeDeviceSpecifier:v9];
  }
}

- (void)allowBluetoothConnections:(BOOL)connections
{
  connectionsCopy = connections;
  if (!connections || ([MEMORY[0x277D75128] sharedApplication], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "applicationState"), v5, !v6))
  {
    self->_allowScanning = connectionsCopy;
    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    [mEMORY[0x277CF3248] setDiscoverable:connectionsCopy];

    mEMORY[0x277CF3248]2 = [MEMORY[0x277CF3248] sharedInstance];
    [mEMORY[0x277CF3248]2 setConnectable:connectionsCopy];

    mEMORY[0x277CF3248]3 = [MEMORY[0x277CF3248] sharedInstance];
    [mEMORY[0x277CF3248]3 setDeviceScanningEnabled:connectionsCopy];

    if (!connectionsCopy)
    {
      mEMORY[0x277CF3248]4 = [MEMORY[0x277CF3248] sharedInstance];
      [mEMORY[0x277CF3248]4 resetDeviceScanning];
    }

    [(BTSDevicesController *)self _setupCentralScanning];
  }

  sharingClient = self->_sharingClient;
  if (self->_allowScanning)
  {
    if (!sharingClient)
    {
      v13 = objc_alloc_init(MEMORY[0x277D54CA0]);
      v14 = self->_sharingClient;
      self->_sharingClient = v13;

      v15 = self->_sharingClient;

      [(SFDiagnostics *)v15 bluetoothUserInteraction];
    }
  }

  else
  {
    [(SFDiagnostics *)sharingClient invalidate];
    v12 = self->_sharingClient;
    self->_sharingClient = 0;
  }
}

- (void)allowBluetoothScans:(BOOL)scans
{
  if (scans)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    applicationState = [mEMORY[0x277D75128] applicationState];

    if (applicationState)
    {
      return;
    }

    self->_allowScanning = scans;
    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    [mEMORY[0x277CF3248] setDeviceScanningEnabled:1];
  }

  else
  {
    self->_allowScanning = 0;
    mEMORY[0x277CF3248]2 = [MEMORY[0x277CF3248] sharedInstance];
    [mEMORY[0x277CF3248]2 setDeviceScanningEnabled:0];

    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    [mEMORY[0x277CF3248] resetDeviceScanning];
  }

  [(BTSDevicesController *)self _setupCentralScanning];
}

- (void)_setupCentralScanning
{
  v17[3] = *MEMORY[0x277D85DE8];
  if (self->_power)
  {
    if (self->_allowScanning)
    {
      v3 = [(NSArray *)self->_healthServices mutableCopy];
      [v3 addObjectsFromArray:self->_hidServices];
      if ([(BTSDevicesController *)self isiPhone]&& [(BTSDevicesController *)self isLECarPlayEnabled])
      {
        v4 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFE0]];
        [v3 addObject:v4];
      }

      if ([(BTSDevicesController *)self isChannelSoundingTestingEnabled])
      {
        v5 = [MEMORY[0x277CBE0A0] UUIDWithString:@"185B"];
        [v3 addObject:v5];
      }

      if ([(BTSDevicesController *)self isLEAudioLiveOnEnabled])
      {
        v6 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF98]];
        [v3 addObject:v6];

        v7 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFE8]];
        [v3 addObject:v7];
      }

      v8 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF70]];
      v17[0] = v8;
      v9 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDFA8]];
      v17[1] = v9;
      v10 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF68]];
      v17[2] = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];

      centralManager = self->_centralManager;
      v15 = *MEMORY[0x277CBDE60];
      v16 = v11;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      [(CBCentralManager *)centralManager scanForPeripheralsWithServices:v3 options:v13];
    }

    else
    {
      v14 = self->_centralManager;

      [(CBCentralManager *)v14 stopScan];
    }
  }
}

- (void)healthDeviceUnregisteredHandler:(id)handler
{
  object = [handler object];
  v5 = sharedBluetoothSettingsLogComponent(object);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BTSDevicesController healthDeviceUnregisteredHandler:];
  }

  if ([object isHealthDevice])
  {
    [object setHealthDevice:0];
    if (_os_feature_enabled_impl())
    {
      [object unpair];
    }

    else
    {
      healthKitStore = self->_healthKitStore;
      v7 = objc_alloc(MEMORY[0x277CCAD78]);
      identifier = [object identifier];
      v9 = [v7 initWithUUIDString:identifier];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __56__BTSDevicesController_healthDeviceUnregisteredHandler___block_invoke;
      v10[3] = &unk_278BB0408;
      v11 = object;
      [(HKHealthStore *)healthKitStore unregisterPeripheralIdentifier:v9 withCompletion:v10];
    }

    [(BTSDevicesController *)self _updateDevicePosition:object];
  }
}

void __56__BTSDevicesController_healthDeviceUnregisteredHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if ((a2 & 1) == 0)
  {
    v6 = sharedBluetoothSettingsLogComponent(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __51__BTSDevicesController_pairingAgent_peerDidUnpair___block_invoke_cold_1();
    }
  }
}

- (void)userDidTapWatchLink:(id)link
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:"];
  [defaultWorkspace openSensitiveURL:v3 withOptions:0];
}

- (void)userDidTapWalletLink:(id)link
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"wallet:"];
  [defaultWorkspace openSensitiveURL:v3 withOptions:0];
}

- (id)_heroPlacardSpecifiers
{
  v2 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_284EE3458 target:self set:0 get:0 detail:0 cell:4 edit:0];
  [v2 setObject:NSClassFromString(&cfstr_Bluetoothsetti.isa) forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v2 setIdentifier:@"BLUETOOH_PLACARD"];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:{v2, 0}];

  return v3;
}

- (id)specifiers
{
  v176 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  self->_bluetoothRestricted = [mEMORY[0x277D262A0] isBluetoothModificationAllowed] ^ 1;

  v4 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v4)
  {
    goto LABEL_78;
  }

  v143 = *MEMORY[0x277D3FC48];
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  mEMORY[0x277CF3248]2 = [MEMORY[0x277CF3248] sharedInstance];
  self->_denylistEnabled = [mEMORY[0x277CF3248]2 denylistEnabled];

  v7 = *MEMORY[0x277D3FD20];
  userInfo = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"invoking-client-id"];
  invokingClientID = self->_invokingClientID;
  self->_invokingClientID = v9;

  userInfo2 = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v12 = [userInfo2 objectForKeyedSubscript:@"custom-localized-title"];
  customTitle = self->_customTitle;
  self->_customTitle = v12;

  userInfo3 = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v15 = [userInfo3 objectForKeyedSubscript:@"show-apple-devices"];
  self->_showAppleDevices = [v15 BOOLValue];

  userInfo4 = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v17 = [userInfo4 objectForKeyedSubscript:@"show-audio-devices-only"];
  self->_showAudioDevicesOnly = [v17 BOOLValue];

  userInfo5 = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v19 = [userInfo5 objectForKeyedSubscript:@"show-car-stereo-devices"];
  self->_showCarStereoDevices = [v19 BOOLValue];

  userInfo6 = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v21 = [userInfo6 objectForKeyedSubscript:@"show-speaker-devices"];
  self->_showSpeakerDevices = [v21 BOOLValue];

  userInfo7 = [*(&self->super.super.super.super.super.isa + v7) userInfo];
  v23 = [userInfo7 objectForKeyedSubscript:@"show-le-devices"];
  self->_showLEDevices = [v23 BOOLValue];

  selfCopy = self;
  v24 = self->_invokingClientID;
  v26 = sharedBluetoothSettingsLogComponent(v25);
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    if (!v27)
    {
      goto LABEL_20;
    }

    v28 = self->_invokingClientID;
    v29 = self->_customTitle;
    if (self->_showAppleDevices)
    {
      v30 = "yes";
    }

    else
    {
      v30 = "no";
    }

    showCarStereoDevices = self->_showCarStereoDevices;
    showSpeakerDevices = self->_showSpeakerDevices;
    if (self->_showAudioDevicesOnly)
    {
      v33 = "yes";
    }

    else
    {
      v33 = "no";
    }

    *buf = 138413570;
    if (showCarStereoDevices)
    {
      v34 = "yes";
    }

    else
    {
      v34 = "no";
    }

    v165 = v28;
    v166 = 2112;
    if (showSpeakerDevices)
    {
      v35 = "yes";
    }

    else
    {
      v35 = "no";
    }

    v167 = v29;
    v168 = 2080;
    v169 = v30;
    v170 = 2080;
    v171 = v33;
    v172 = 2080;
    v173 = v34;
    v174 = 2080;
    v175 = v35;
    v36 = "BTSettings invoked from a client that is not the main Settings, ID: %@, customTitle: %@, showAppleDevices: %s, showAudioOnly: %s, showCarStereos: %s showSpeakers: %s";
    v37 = v26;
    v38 = 62;
  }

  else
  {
    if (!v27)
    {
      goto LABEL_20;
    }

    *buf = 0;
    v36 = "BTSettings invoked from main settings page";
    v37 = v26;
    v38 = 2;
  }

  _os_log_impl(&dword_23C0F7000, v37, OS_LOG_TYPE_DEFAULT, v36, buf, v38);
LABEL_20:

  v39 = 0x277CBE000uLL;
  v40 = MEMORY[0x277CBEB18];
  selfCopy3 = self;
  v42 = [(BTSDevicesController *)self loadSpecifiersFromPlistName:@"Devices" target:self];
  v43 = [v40 arrayWithArray:v42];

  array = [MEMORY[0x277CBEB18] array];
  if ([(BTSDevicesController *)self isMainSettingsPane]|| !self->_power)
  {
    v44 = [v43 objectAtIndexedSubscript:0];
    [array addObject:v44];

    _heroPlacardSpecifiers = [(BTSDevicesController *)self _heroPlacardSpecifiers];
    [array addObjectsFromArray:_heroPlacardSpecifiers];

    v46 = [v43 objectAtIndexedSubscript:1];
    [array addObject:v46];
  }

  v47 = [v43 objectAtIndexedSubscript:3];
  myDevicesGroupSpec = self->_myDevicesGroupSpec;
  self->_myDevicesGroupSpec = v47;

  v49 = v143;
  if ([(NSMutableDictionary *)self->_pendingOtherRadioDevicesDict count])
  {
    v50 = self->_myDevicesGroupSpec;
    v51 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v52 = [v51 localizedStringForKey:@"FOLLOW_PAIR_INSTRUCTION_FOOTER" value:&stru_284EE3458 table:@"Devices"];
    [(PSSpecifier *)v50 setProperty:v52 forKey:*MEMORY[0x277D3FF88]];
  }

  if (self->_bluetoothRestricted)
  {
    if (self->_power)
    {
      _knownDevicesSpecifiers = [(BTSDevicesController *)self _knownDevicesSpecifiers];
      if ([_knownDevicesSpecifiers count])
      {
        [array addObject:self->_myDevicesGroupSpec];
        [array addObjectsFromArray:_knownDevicesSpecifiers];
      }
    }

    mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
    v163 = *MEMORY[0x277D25DA0];
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v163 count:1];
    v56 = [mEMORY[0x277D262A0]2 localizedRestrictionSourceDescriptionForFeatures:v55];
    restrictionDetail = self->_restrictionDetail;
    self->_restrictionDetail = v56;

    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    obj = array;
    v58 = [obj countByEnumeratingWithState:&v156 objects:v162 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = v43;
      v61 = *v157;
      v62 = *MEMORY[0x277D3FF38];
      do
      {
        for (i = 0; i != v59; ++i)
        {
          if (*v157 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v64 = *(*(&v156 + 1) + 8 * i);
          v65 = [MEMORY[0x277CCABB0] numberWithBool:0];
          [v64 setProperty:v65 forKey:v62];
        }

        v59 = [obj countByEnumeratingWithState:&v156 objects:v162 count:16];
      }

      while (v59);
      v43 = v60;
    }
  }

  else
  {
    if (self->_denylistEnabled && self->_power)
    {
      v66 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DENYLIST_ACTION_GROUP_ID"];
      v67 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      [v67 localizedStringForKey:@"DENYLIST_FOOTER" value:&stru_284EE3458 table:@"Devices"];
      v69 = v68 = v43;
      [v66 setProperty:v69 forKey:*MEMORY[0x277D3FF88]];

      [array addObject:v66];
      v70 = MEMORY[0x277D3FAD8];
      v71 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = 0x277CBE000;
      v72 = [v71 localizedStringForKey:@"ALLOW_NEW_CONNECTIONS" value:&stru_284EE3458 table:@"Devices"];
      v73 = [v70 preferenceSpecifierNamed:v72 target:self set:0 get:0 detail:0 cell:13 edit:0];

      v43 = v68;
      [v73 setIdentifier:@"DENYLIST_ACTION_ID"];
      [array addObject:v73];
    }

    v74 = [v43 objectAtIndexedSubscript:4];
    otherDevicesGroupSpec = self->_otherDevicesGroupSpec;
    self->_otherDevicesGroupSpec = v74;

    if (MGGetBoolAnswer())
    {
      mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
      isPaired = [mEMORY[0x277D2BCF8] isPaired];

      if ((isPaired & 1) == 0)
      {
        v78 = MEMORY[0x277CCACA8];
        [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v79 = v141 = v43;
        v80 = [v79 localizedStringForKey:@"APPLE_WATCH_FOOTER_TEXT" value:&stru_284EE3458 table:@"Devices"];
        v81 = v39;
        v82 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v83 = [v82 localizedStringForKey:@"APPLE_WATCH_APP_LINK" value:&stru_284EE3458 table:@"Devices"];
        v84 = [v78 stringWithFormat:v80, v83];

        v49 = v143;
        selfCopy3 = self;

        v85 = self->_otherDevicesGroupSpec;
        v86 = objc_opt_class();
        v87 = NSStringFromClass(v86);
        [(PSSpecifier *)v85 setProperty:v87 forKey:*MEMORY[0x277D3FF48]];

        [(PSSpecifier *)self->_otherDevicesGroupSpec setProperty:v84 forKey:*MEMORY[0x277D3FF70]];
        v88 = self->_otherDevicesGroupSpec;
        v89 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v90 = [v89 localizedStringForKey:@"APPLE_WATCH_APP_LINK" value:&stru_284EE3458 table:@"Devices"];
        v178.location = [v84 rangeOfString:v90];
        v91 = NSStringFromRange(v178);
        v92 = v88;
        v39 = v81;
        [(PSSpecifier *)v92 setProperty:v91 forKey:*MEMORY[0x277D3FF58]];

        v43 = v141;
        v93 = self->_otherDevicesGroupSpec;
        v94 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
        [(PSSpecifier *)v93 setProperty:v94 forKey:*MEMORY[0x277D3FF68]];

        [(PSSpecifier *)self->_otherDevicesGroupSpec setProperty:@"userDidTapWatchLink:" forKey:*MEMORY[0x277D3FF50]];
      }
    }

    if (selfCopy3->_power)
    {
      obj = [(BTSDevicesController *)selfCopy3 _shareDevicesSpecifiers];
      v142 = v43;
      if ([obj count])
      {
        v95 = [v43 objectAtIndexedSubscript:2];
        sharingDevicesGroupSpec = selfCopy3->_sharingDevicesGroupSpec;
        selfCopy3->_sharingDevicesGroupSpec = v95;

        v97 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v98 = [v97 localizedStringForKey:@"SHARING_WITH" value:&stru_284EE3458 table:@"Devices"];
        [(PSSpecifier *)selfCopy3->_sharingDevicesGroupSpec setName:v98];

        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        v144 = obj;
        v99 = [v144 countByEnumeratingWithState:&v152 objects:v161 count:16];
        if (v99)
        {
          v100 = v99;
          v101 = *v153;
          v102 = *MEMORY[0x277D3FF88];
          do
          {
            for (j = 0; j != v100; ++j)
            {
              if (*v153 != v101)
              {
                objc_enumerationMutation(v144);
              }

              v104 = *(*(&v152 + 1) + 8 * j);
              v105 = selfCopy->_sharingDevicesGroupSpec;
              v106 = MEMORY[0x277CCACA8];
              v107 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v108 = [v107 localizedStringForKey:@"SHARING_NOW" value:&stru_284EE3458 table:@"Devices"];
              name = [v104 name];
              v109 = [v106 stringWithFormat:v108, name];
              [(PSSpecifier *)v105 setProperty:v109 forKey:v102];
            }

            v100 = [v144 countByEnumeratingWithState:&v152 objects:v161 count:16];
          }

          while (v100);
        }

        selfCopy3 = selfCopy;
        [array addObject:selfCopy->_sharingDevicesGroupSpec];
        [array addObjectsFromArray:v144];
        v49 = v143;
        v39 = 0x277CBE000uLL;
      }

      _knownDevicesSpecifiers2 = [(BTSDevicesController *)selfCopy3 _knownDevicesSpecifiers];
      if ([_knownDevicesSpecifiers2 count])
      {
        [array addObject:selfCopy3->_myDevicesGroupSpec];
        [array addObjectsFromArray:_knownDevicesSpecifiers2];
        v112 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v113 = [v112 localizedStringForKey:@"OTHER_DEVICES" value:&stru_284EE3458 table:@"Devices"];
        [(PSSpecifier *)selfCopy3->_otherDevicesGroupSpec setName:v113];

        v114 = *(v39 + 2840);
        mEMORY[0x277CF3248]3 = [MEMORY[0x277CF3248] sharedInstance];
        connectingDevices = [mEMORY[0x277CF3248]3 connectingDevices];
        v117 = [v114 arrayWithArray:connectingDevices];

        v119 = sharedBluetoothSettingsLogComponent(v118);
        if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
        {
          v120 = [v117 count];
          *buf = 136315650;
          v165 = "[BTSDevicesController specifiers]";
          v166 = 2048;
          v167 = v120;
          v168 = 2112;
          v169 = v117;
          _os_log_impl(&dword_23C0F7000, v119, OS_LOG_TYPE_INFO, "%s found %lu connecting devices - %@", buf, 0x20u);
        }

        v150 = 0u;
        v151 = 0u;
        v148 = 0u;
        v149 = 0u;
        v121 = v117;
        v122 = [v121 countByEnumeratingWithState:&v148 objects:v160 count:16];
        if (v122)
        {
          v123 = v122;
          v124 = *v149;
          do
          {
            for (k = 0; k != v123; ++k)
            {
              if (*v149 != v124)
              {
                objc_enumerationMutation(v121);
              }

              address = [*(*(&v148 + 1) + 8 * k) address];
              v127 = [array specifierForID:address];

              if (v127)
              {
                [(BTSDevicesController *)selfCopy3 setBluetoothIsBusy:1];
                objc_storeStrong(&selfCopy3->_currentDeviceSpecifier, v127);
              }
            }

            v123 = [v121 countByEnumeratingWithState:&v148 objects:v160 count:16];
          }

          while (v123);
        }

        v43 = v142;
      }

      [array addObject:selfCopy3->_otherDevicesGroupSpec];
    }

    else
    {
      powerOffWarningString = [(BTSDevicesController *)selfCopy3 powerOffWarningString];
      _knownDevicesSpecifiers2 = [array objectAtIndexedSubscript:0];
      obj = powerOffWarningString;
      [_knownDevicesSpecifiers2 setProperty:powerOffWarningString forKey:*MEMORY[0x277D3FF88]];
    }
  }

  objc_storeStrong((&selfCopy3->super.super.super.super.super.isa + v49), array);
  if (selfCopy3->_pendingSetupDeviceID)
  {
    mEMORY[0x277CF3248]4 = [MEMORY[0x277CF3248] sharedInstance];
    v130 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:selfCopy3->_pendingSetupDeviceID];
    v131 = [mEMORY[0x277CF3248]4 deviceFromIdentifier:v130];

    address2 = [v131 address];
    v133 = [(NSMutableDictionary *)selfCopy3->_devicesDict objectForKeyedSubscript:address2];

    if (v133)
    {
      v134 = [(NSMutableDictionary *)selfCopy3->_devicesDict objectForKeyedSubscript:address2];
      ctkdCounterpartDevicesDict = selfCopy3->_ctkdCounterpartDevicesDict;
      identifier = [v134 identifier];
      v137 = [(NSMutableDictionary *)ctkdCounterpartDevicesDict objectForKeyedSubscript:identifier];

      if (v137)
      {
        underlyingDADevice = [v137 underlyingDADevice];

        if (underlyingDADevice)
        {
          [(BTSDevicesController *)selfCopy3 forcePushDetailViewForDevice:v134];
          pendingSetupDeviceID = selfCopy3->_pendingSetupDeviceID;
          selfCopy3->_pendingSetupDeviceID = 0;
        }
      }
    }
  }

  v4 = *(&selfCopy3->super.super.super.super.super.isa + v49);
LABEL_78:

  return v4;
}

- (id)powerOffWarningString
{
  if ([(BTSDevicesController *)self isMainSettingsPane])
  {
    self->_exposureNotificationManagerEnabled = [(ENManager *)self->_exposureNotificationManager exposureNotificationEnabled];
    autoUnlockEnabled = [MEMORY[0x277D54C20] autoUnlockEnabled];
    v4 = MGGetBoolAnswer();
    exposureNotificationManagerEnabled = self->_exposureNotificationManagerEnabled;
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    if (v4)
    {
      if (exposureNotificationManagerEnabled)
      {
        if (autoUnlockEnabled)
        {
          v8 = @"POWER_OFF_WARNING_WITH_EN_PAU_THR";
        }

        else
        {
          v8 = @"POWER_OFF_WARNING_WITH_EN_THR";
        }
      }

      else if (autoUnlockEnabled)
      {
        v8 = @"POWER_OFF_WARNING_WITH_PAU_THR";
      }

      else
      {
        v8 = @"POWER_OFF_WARNING_THR";
      }
    }

    else if (exposureNotificationManagerEnabled)
    {
      if (autoUnlockEnabled)
      {
        v8 = @"POWER_OFF_WARNING_WITH_EN_PAU";
      }

      else
      {
        v8 = @"POWER_OFF_WARNING_WITH_EN";
      }
    }

    else if (autoUnlockEnabled)
    {
      v8 = @"POWER_OFF_WARNING_WITH_PAU";
    }

    else
    {
      v8 = @"POWER_OFF_WARNING";
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"POWER_OFF_WARNING_IN_AX";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_284EE3458 table:@"Devices"];

  return v9;
}

- (id)namesOfDevices:(id)devices displayableOnly:(BOOL)only
{
  onlyCopy = only;
  v27 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v7 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = devicesCopy;
  allObjects = [devicesCopy allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    v12 = !onlyCopy;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        name = [v14 name];
        if (name)
        {
          v16 = name;
          v17 = [(BTSDevicesController *)self shouldDisplayDevice:v14]| v12;

          if (v17 == 1)
          {
            name2 = [v14 name];
            [v7 addObject:name2];
          }
        }
      }

      v10 = [allObjects countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v19 = [v7 copy];

  return v19;
}

- (id)localizedList:(id)list
{
  v22 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = listCopy;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = MEMORY[0x277CCACA8];
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = [v11 localizedStringForKey:@"QUOTED_DEVICE_NAME" value:&stru_284EE3458 table:@"Devices"];
        v13 = [v10 localizedStringWithFormat:v12, v9];

        [v4 addObject:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v4];

  return v14;
}

- (id)makeWarningAttributedString:(id)string
{
  string = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\n %@", string];
  v4 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:string];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
  v6 = [v5 imageWithRenderingMode:1];

  v7 = [MEMORY[0x277D74270] textAttachmentWithImage:v6];
  v8 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v7];
  [v4 insertAttributedString:v8 atIndex:2];

  return v4;
}

- (id)_specifierForDevice:(id)device
{
  v40 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = sharedBluetoothSettingsLogComponent(deviceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = deviceCopy;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "Creating specifier for device: %@.", buf, 0xCu);
  }

  productName = [deviceCopy productName];
  if ([(BTSDevicesController *)self nicknameEnabled])
  {
    name = [deviceCopy name];

    productName = name;
  }

  classicDevice = [deviceCopy classicDevice];
  if (classicDevice)
  {
    v9 = classicDevice;
    classicDevice2 = [deviceCopy classicDevice];
    magicPaired = [classicDevice2 magicPaired];

    if (magicPaired)
    {
      name2 = [deviceCopy name];

      productName = name2;
    }
  }

  if (!productName || [(__CFString *)productName isEqualToString:&stru_284EE3458])
  {

    productName = @" ";
  }

  v13 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:productName target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  v14 = objc_alloc(MEMORY[0x277CBEB38]);
  v36[0] = *MEMORY[0x277D3FE58];
  v15 = objc_opt_class();
  v16 = *MEMORY[0x277D3FF08];
  v37[0] = v15;
  v37[1] = @"BTSPairSetup";
  v17 = *MEMORY[0x277D400B8];
  v36[1] = v16;
  v36[2] = v17;
  v36[3] = *MEMORY[0x277D40138];
  v37[2] = @"BTSPairController";
  v37[3] = @"PSLinkCell";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];
  v19 = [v14 initWithDictionary:v18];

  [v13 setName:productName];
  [v19 setObject:productName forKey:*MEMORY[0x277D40170]];
  identifier = [deviceCopy identifier];
  [v19 setObject:identifier forKey:*MEMORY[0x277D3FFB8]];

  [v19 setObject:@"BTSDeviceConfigController" forKey:v16];
  [v13 setProperties:v19];
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v21 setObject:deviceCopy forKey:@"bt-device"];
  if ([deviceCopy isCTKDDevice])
  {
    centralManager = self->_centralManager;
    classicDevice3 = [deviceCopy classicDevice];
    address = [classicDevice3 address];
    identifier4 = [(CBCentralManager *)centralManager retrievePeripheralWithAddress:address];

    v26 = [BTSDeviceLE deviceWithPeripheral:identifier4 manager:self->_centralManager];
    if ([v26 isManagedByDeviceAccess])
    {
      knownDADevices = self->_knownDADevices;
      identifier2 = [identifier4 identifier];
      v29 = [(NSMutableDictionary *)knownDADevices objectForKeyedSubscript:identifier2];
      [v26 setUnderlyingDADevice:v29];
    }

    v30 = @"ctkd-device";
  }

  else
  {
    dualRadioCounterpartDevicesDict = self->_dualRadioCounterpartDevicesDict;
    identifier3 = [deviceCopy identifier];
    v33 = [(NSMutableDictionary *)dualRadioCounterpartDevicesDict objectForKeyedSubscript:identifier3];

    if (!v33)
    {
      goto LABEL_18;
    }

    v34 = self->_dualRadioCounterpartDevicesDict;
    identifier4 = [deviceCopy identifier];
    v26 = [(NSMutableDictionary *)v34 objectForKeyedSubscript:identifier4];
    v30 = @"linked-le-device";
  }

  [v21 setObject:v26 forKey:v30];

LABEL_18:
  [v13 setUserInfo:v21];

  return v13;
}

- (id)_specifierForSharingDevice:(id)device
{
  deviceCopy = device;
  name = [deviceCopy name];
  v6 = name;
  if (!name || [(__CFString *)name isEqualToString:&stru_284EE3458])
  {

    v6 = @" ";
  }

  v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  [v7 setName:v6];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v8 setObject:deviceCopy forKey:@"bt-device"];

  [v7 setUserInfo:v8];

  return v7;
}

- (id)_knownDevicesSpecifiers
{
  v166 = *MEMORY[0x277D85DE8];
  v116 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  pairedDevices = [mEMORY[0x277CF3248] pairedDevices];

  v5 = pairedDevices;
  v6 = [pairedDevices countByEnumeratingWithState:&v150 objects:v165 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v151;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v151 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v150 + 1) + 8 * i);
        v11 = [BTSDeviceClassic deviceWithDevice:v10];
        classicDevice = [v11 classicDevice];
        address = [classicDevice address];

        v14 = [(NSMutableDictionary *)self->managedByWalletDictionary objectForKey:address];

        if (v14)
        {
          [v11 setManagedByWallet:1];
          [v11 setManagedByAliroWallet:1];
        }

        v15 = [(NSMutableDictionary *)self->supportsBackgroundNIDictionary objectForKey:address];

        if (v15)
        {
          [v11 setSupportsBackgroundNI:1];
        }

        if (([v10 isTemporaryPaired] & 1) == 0)
        {
          [v116 addObject:v11];
          [dictionary setObject:v11 forKeyedSubscript:address];
          if ([v11 connected])
          {
            if ([v11 isLimitedConnectivityDevice])
            {
              [(NSMutableSet *)self->_connectedPoorBehaviorDevices addObject:v11];
              self->_mainFooterNeedsUpdate = 1;
            }

            if ([v11 isHIDDevice])
            {
              [(NSMutableSet *)self->_connectedHIDDevices addObject:v11];
              self->_mainFooterNeedsUpdate = 1;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v150 objects:v165 count:16];
    }

    while (v7);
  }

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  v113 = dictionary2;
  if (self->_power)
  {
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
    retrievePairedPeers = [sharedPairingAgent retrievePairedPeers];

    v19 = [retrievePairedPeers countByEnumeratingWithState:&v146 objects:v164 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v147;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v147 != v21)
          {
            objc_enumerationMutation(retrievePairedPeers);
          }

          v23 = *(*(&v146 + 1) + 8 * j);
          v24 = [(BTSDevicesController *)self _getDeviceForPeripheral:v23];
          if (v24)
          {
            [v23 setDelegate:self];
            isManagedByDeviceAccess = [v24 isManagedByDeviceAccess];
            if (isManagedByDeviceAccess)
            {
              v26 = sharedBluetoothSettingsLogComponent(isManagedByDeviceAccess);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v163 = v24;
                _os_log_impl(&dword_23C0F7000, v26, OS_LOG_TYPE_DEFAULT, "This device needs to be coalesced with a DADevice before being displayed: %@", buf, 0xCu);
              }

              identifier = [v23 identifier];
              [v113 setObject:v23 forKeyedSubscript:identifier];
            }

            else
            {
              [v116 addObject:v24];
              if ([v24 connected])
              {
                if ([v24 isLimitedConnectivityDevice])
                {
                  [(NSMutableSet *)self->_connectedPoorBehaviorDevices addObject:v24];
                  self->_mainFooterNeedsUpdate = 1;
                }

                if ([v24 isFirmwareUpdateRequiredDevice])
                {
                  [(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices addObject:v24];
                  self->_mainFooterNeedsUpdate = 1;
                }

                if ([v24 isHIDDevice])
                {
                  [(NSMutableSet *)self->_connectedHIDDevices addObject:v24];
                  self->_mainFooterNeedsUpdate = 1;
                }
              }
            }
          }
        }

        v20 = [retrievePairedPeers countByEnumeratingWithState:&v146 objects:v164 count:16];
      }

      while (v20);
    }

    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v28 = [(CBCentralManager *)self->_centralManager retrieveConnectedPeripheralsWithServices:0 allowAll:1];
    v29 = [v28 countByEnumeratingWithState:&v142 objects:v161 count:16];
    dictionary2 = v113;
    if (v29)
    {
      v30 = v29;
      v31 = *v143;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v143 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v142 + 1) + 8 * k);
          if ([v33 connectedTransport] == 2)
          {
            v34 = [(BTSDevicesController *)self _getDeviceForPeripheral:v33];
            if (v34)
            {
              visibleInSettings = [v33 visibleInSettings];
              if (visibleInSettings)
              {
                [v33 setDelegate:self];
                isManagedByDeviceAccess2 = [v34 isManagedByDeviceAccess];
                if (isManagedByDeviceAccess2)
                {
                  v37 = sharedBluetoothSettingsLogComponent(isManagedByDeviceAccess2);
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v163 = v34;
                    _os_log_impl(&dword_23C0F7000, v37, OS_LOG_TYPE_DEFAULT, "This device needs to be coalesced with a DADevice before being displayed: %@", buf, 0xCu);
                  }

                  identifier2 = [v33 identifier];
                  [v113 setObject:v33 forKeyedSubscript:identifier2];
                  goto LABEL_52;
                }

                [v116 addObject:v34];
              }

              else
              {
                identifier2 = sharedBluetoothSettingsLogComponent(visibleInSettings);
                if (os_log_type_enabled(identifier2, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v163 = v33;
                  _os_log_impl(&dword_23C0F7000, identifier2, OS_LOG_TYPE_DEFAULT, "Peripheral %@ should not be visible in Settings. Ignoring.", buf, 0xCu);
                }

LABEL_52:
              }
            }

            dictionary2 = v113;
            continue;
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v142 objects:v161 count:16];
      }

      while (v30);
    }

    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    obj = [(NSMutableDictionary *)self->_knownDADevices allKeys];
    v110 = [obj countByEnumeratingWithState:&v138 objects:v160 count:16];
    if (!v110)
    {
      goto LABEL_92;
    }

    v109 = *v139;
LABEL_59:
    v39 = 0;
    while (1)
    {
      if (*v139 != v109)
      {
        objc_enumerationMutation(obj);
      }

      v111 = v39;
      v40 = *(*(&v138 + 1) + 8 * v39);
      v115 = [(NSMutableDictionary *)self->_knownDADevices objectForKey:v40];
      centralManager = self->_centralManager;
      v159 = v40;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v159 count:1];
      v43 = [(CBCentralManager *)centralManager retrievePeripheralsWithIdentifiers:v42];

      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v44 = v43;
      v45 = [v44 countByEnumeratingWithState:&v134 objects:v158 count:16];
      if (v45)
      {
        break;
      }

LABEL_90:

      v39 = v111 + 1;
      if (v111 + 1 == v110)
      {
        v110 = [obj countByEnumeratingWithState:&v138 objects:v160 count:16];
        if (!v110)
        {
LABEL_92:

          goto LABEL_93;
        }

        goto LABEL_59;
      }
    }

    v46 = v45;
    v47 = *v135;
LABEL_64:
    v48 = 0;
    while (1)
    {
      if (*v135 != v47)
      {
        objc_enumerationMutation(v44);
      }

      v49 = *(*(&v134 + 1) + 8 * v48);
      [v49 setDelegate:self];
      identifier3 = [v49 identifier];
      [dictionary2 setObject:0 forKeyedSubscript:identifier3];

      v51 = [BTSDeviceLE deviceWithPeripheral:v49 manager:self->_centralManager];
      v52 = v51;
      if (v51)
      {
        supportsCTKD = [v51 supportsCTKD];
        if (supportsCTKD)
        {
          identifier4 = sharedBluetoothSettingsLogComponent(supportsCTKD);
          if (os_log_type_enabled(identifier4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v163 = v49;
            v55 = identifier4;
            v56 = "Not showing peripheral because it's CTKD and will be shown with the classic device instead: %@";
LABEL_73:
            _os_log_impl(&dword_23C0F7000, v55, OS_LOG_TYPE_DEFAULT, v56, buf, 0xCu);
          }
        }

        else
        {
          relatedFutureRadioAddress = [v52 relatedFutureRadioAddress];

          if (relatedFutureRadioAddress)
          {
            v59 = sharedBluetoothSettingsLogComponent(v58);
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v163 = v49;
              _os_log_impl(&dword_23C0F7000, v59, OS_LOG_TYPE_DEFAULT, "Peripheral is waiting to link to a classic radio that is yet to be paired, showing LE first: %@", buf, 0xCu);
            }

            [v52 setUnderlyingDADevice:v115];
            [v116 addObject:v52];
            pendingOtherRadioDevicesDict = self->_pendingOtherRadioDevicesDict;
            relatedFutureRadioAddress2 = [v52 relatedFutureRadioAddress];
            [(NSMutableDictionary *)pendingOtherRadioDevicesDict setObject:v52 forKey:relatedFutureRadioAddress2];

            goto LABEL_88;
          }

          linkedRadioAddress = [v52 linkedRadioAddress];

          if (!linkedRadioAddress)
          {
            goto LABEL_87;
          }

          v63 = self->_pendingOtherRadioDevicesDict;
          linkedRadioAddress2 = [v52 linkedRadioAddress];
          [(NSMutableDictionary *)v63 setObject:0 forKeyedSubscript:linkedRadioAddress2];

          linkedRadioAddress3 = [v52 linkedRadioAddress];
          v66 = [dictionary objectForKeyedSubscript:linkedRadioAddress3];

          v68 = sharedBluetoothSettingsLogComponent(v67);
          v69 = v68;
          if (!v66)
          {
            dictionary2 = v113;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v163 = v49;
              _os_log_error_impl(&dword_23C0F7000, v69, OS_LOG_TYPE_ERROR, "Peripheral has linked classic radio but we don't see the classic device with this address. Showing LE device %@", buf, 0xCu);
            }

LABEL_87:
            [v52 setUnderlyingDADevice:v115];
            [v116 addObject:v52];
            goto LABEL_88;
          }

          dictionary2 = v113;
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v163 = v49;
            _os_log_impl(&dword_23C0F7000, v69, OS_LOG_TYPE_DEFAULT, "Not showing peripheral because it's linked to another classic radio and will be shown with the classic device instead: %@", buf, 0xCu);
          }

          identifier4 = [v49 identifier];
          [dictionary3 setObject:v49 forKeyedSubscript:identifier4];
        }
      }

      else
      {
        identifier4 = sharedBluetoothSettingsLogComponent(0);
        if (os_log_type_enabled(identifier4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v163 = v49;
          v55 = identifier4;
          v56 = "unable to create BTSDeviceLE for this DA peripheral: %@";
          goto LABEL_73;
        }
      }

LABEL_88:
      if (v46 == ++v48)
      {
        v46 = [v44 countByEnumeratingWithState:&v134 objects:v158 count:16];
        if (!v46)
        {
          goto LABEL_90;
        }

        goto LABEL_64;
      }
    }
  }

LABEL_93:
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  allValues = [dictionary2 allValues];
  v71 = [allValues countByEnumeratingWithState:&v130 objects:v157 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v131;
    do
    {
      v74 = 0;
      do
      {
        if (*v131 != v73)
        {
          objc_enumerationMutation(allValues);
        }

        v75 = *(*(&v130 + 1) + 8 * v74);
        v76 = sharedBluetoothSettingsLogComponent(v71);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v163 = v75;
          _os_log_impl(&dword_23C0F7000, v76, OS_LOG_TYPE_DEFAULT, "Unable to fetch DADevice for DA tagged Peripheral, we should still add it to UI for user to be able to manage: %@", buf, 0xCu);
        }

        v77 = [(BTSDevicesController *)self _getDeviceForPeripheral:v75];
        if (v77)
        {
          visibleInSettings2 = [v75 visibleInSettings];
          if (visibleInSettings2)
          {
            [v75 setDelegate:self];
            [v116 addObject:v77];
          }

          else
          {
            v79 = sharedBluetoothSettingsLogComponent(visibleInSettings2);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v163 = v75;
              _os_log_impl(&dword_23C0F7000, v79, OS_LOG_TYPE_DEFAULT, "Peripheral %@ should not be visible in Settings. Ignoring.", buf, 0xCu);
            }
          }
        }

        ++v74;
      }

      while (v72 != v74);
      v71 = [allValues countByEnumeratingWithState:&v130 objects:v157 count:16];
      v72 = v71;
    }

    while (v71);
  }

  [v116 unionSet:self->_knownHealthDevices];
  array = [MEMORY[0x277CBEB18] array];
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v81 = v116;
  v82 = [v81 countByEnumeratingWithState:&v126 objects:v156 count:16];
  if (v82)
  {
    v83 = v82;
    v84 = *v127;
    do
    {
      for (m = 0; m != v83; ++m)
      {
        if (*v127 != v84)
        {
          objc_enumerationMutation(v81);
        }

        v86 = *(*(&v126 + 1) + 8 * m);
        devicesDict = self->_devicesDict;
        identifier5 = [v86 identifier];
        [(NSMutableDictionary *)devicesDict setObject:v86 forKey:identifier5];
      }

      v83 = [v81 countByEnumeratingWithState:&v126 objects:v156 count:16];
    }

    while (v83);
  }

  [(BTSDevicesController *)self refreshCTKDDevices];
  v89 = dictionary3;
  if ([dictionary3 count])
  {
    v117 = array;
    v90 = [(BTSDevicesController *)self mergeDualRadioDevices:dictionary3];
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v91 = [v90 countByEnumeratingWithState:&v122 objects:v155 count:16];
    if (v91)
    {
      v92 = v91;
      v93 = *v123;
      do
      {
        for (n = 0; n != v92; ++n)
        {
          if (*v123 != v93)
          {
            objc_enumerationMutation(v90);
          }

          v95 = *(*(&v122 + 1) + 8 * n);
          [v81 addObject:v95];
          v96 = self->_devicesDict;
          identifier6 = [v95 identifier];
          [(NSMutableDictionary *)v96 setObject:v95 forKey:identifier6];
        }

        v92 = [v90 countByEnumeratingWithState:&v122 objects:v155 count:16];
      }

      while (v92);
    }

    v89 = dictionary3;
    array = v117;
  }

  else
  {
    [(NSMutableDictionary *)self->_dualRadioCounterpartDevicesDict removeAllObjects];
  }

  allObjects = [v81 allObjects];
  v99 = [allObjects sortedArrayUsingComparator:&__block_literal_global];

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v100 = v99;
  v101 = [v100 countByEnumeratingWithState:&v118 objects:v154 count:16];
  if (v101)
  {
    v102 = v101;
    v103 = *v119;
    do
    {
      for (ii = 0; ii != v102; ++ii)
      {
        if (*v119 != v103)
        {
          objc_enumerationMutation(v100);
        }

        v105 = *(*(&v118 + 1) + 8 * ii);
        if ([(BTSDevicesController *)self shouldDisplayDevice:v105])
        {
          v106 = [(BTSDevicesController *)self _specifierForDevice:v105];
          [array addObject:v106];
        }
      }

      v102 = [v100 countByEnumeratingWithState:&v118 objects:v154 count:16];
    }

    while (v102);
  }

  return array;
}

- (id)_shareDevicesSpecifiers
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  connectedDevices = [mEMORY[0x277CF3248] connectedDevices];

  v6 = [connectedDevices countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(connectedDevices);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        if ([v10 isTemporaryPaired])
        {
          v11 = [BTSDeviceClassic deviceWithDevice:v10];
          [v3 addObject:v11];
        }
      }

      v7 = [connectedDevices countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1];
  v36 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v26 = v3;
  v14 = [v3 sortedArrayUsingDescriptors:v13];

  array = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * j);
        if ([(BTSDevicesController *)self shouldDisplayDevice:v21])
        {
          v22 = [(BTSDevicesController *)self _specifierForSharingDevice:v21];
          [array addObject:v22];

          sharingDevicesDict = self->_sharingDevicesDict;
          identifier = [v21 identifier];
          [(NSMutableDictionary *)sharingDevicesDict setObject:v21 forKey:identifier];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v18);
  }

  return array;
}

- (void)_retrievedRegisteredHealthDevices:(id)devices
{
  v9 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__BTSDevicesController__retrievedRegisteredHealthDevices___block_invoke;
  v6[3] = &unk_278BB0478;
  v6[4] = self;
  v5 = sharedBluetoothSettingsLogComponent([devicesCopy enumerateObjectsUsingBlock:v6]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = devicesCopy;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "Received registered health devices %@", buf, 0xCu);
  }
}

void __58__BTSDevicesController__retrievedRegisteredHealthDevices___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1712);
  v3 = [a2 identifier];
  [v2 addObject:v3];
}

- (void)_updateHealthDevices
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  knownHealthDevices = self->_knownHealthDevices;
  self->_knownHealthDevices = v3;

  if (_os_feature_enabled_impl())
  {
    centralManager = self->_centralManager;
    v27[0] = @"Fitness";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __44__BTSDevicesController__updateHealthDevices__block_invoke;
    v23[3] = &unk_278BB0340;
    v23[4] = self;
    [(CBCentralManager *)centralManager retrievePeripheralsWithCustomProperties:v6 completion:v23];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [(CBCentralManager *)self->_centralManager retrievePeripheralsWithIdentifiers:self->_retrievedHealthServices];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(BTSDevicesController *)self _getDeviceForPeripheral:*(*(&v19 + 1) + 8 * v11)];
          v13 = v12;
          if (v12)
          {
            [v12 setHealthDevice:1];
            [(NSMutableSet *)self->_knownHealthDevices addObject:v13];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v26 count:16];
      }

      while (v9);
    }

    v15 = sharedBluetoothSettingsLogComponent(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = self->_knownHealthDevices;
      *buf = 138412290;
      v25 = v16;
      _os_log_impl(&dword_23C0F7000, v15, OS_LOG_TYPE_INFO, "Found known health devices %@", buf, 0xCu);
    }

    if (*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
    {
      v17 = self->_knownHealthDevices;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __44__BTSDevicesController__updateHealthDevices__block_invoke_556;
      v18[3] = &unk_278BB04A0;
      v18[4] = self;
      [(NSMutableSet *)v17 enumerateObjectsUsingBlock:v18];
    }
  }
}

void __44__BTSDevicesController__updateHealthDevices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __44__BTSDevicesController__updateHealthDevices__block_invoke_cold_1(v7);
    }
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          if (([v13 hasTag:@"FitnessClassic"] & 1) == 0)
          {
            v14 = [*(a1 + 32) _getDeviceForPeripheral:v13];
            v15 = v14;
            if (v14)
            {
              [v14 setHealthDevice:1];
              [*(*(a1 + 32) + 1704) addObject:v15];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v9 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
        v10 = v9;
      }

      while (v9);
    }

    v16 = sharedBluetoothSettingsLogComponent(v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(*(a1 + 32) + 1704);
      *buf = 138412290;
      v24 = v17;
      _os_log_impl(&dword_23C0F7000, v16, OS_LOG_TYPE_INFO, "Found known health devices %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__BTSDevicesController__updateHealthDevices__block_invoke_554;
    block[3] = &unk_278BB03E0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __44__BTSDevicesController__updateHealthDevices__block_invoke_554(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + *MEMORY[0x277D3FC48]))
  {
    v3 = v2[213];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __44__BTSDevicesController__updateHealthDevices__block_invoke_2;
    v5[3] = &unk_278BB04A0;
    v5[4] = v2;
    [v3 enumerateObjectsUsingBlock:v5];
    v2 = *(a1 + 32);
  }

  return [v2 migrateHKPairedHealthDevices];
}

void __44__BTSDevicesController__updateHealthDevices__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 1520);
  v7 = v3;
  v5 = [v3 identifier];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    [*(a1 + 32) _addDevice:v7];
  }
}

void __44__BTSDevicesController__updateHealthDevices__block_invoke_556(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 1520);
  v5 = [v3 identifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v8 = sharedBluetoothSettingsLogComponent(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_23C0F7000, v8, OS_LOG_TYPE_DEFAULT, "Found a health device that's already added - rearrange here.", v9, 2u);
    }
  }

  else
  {
    [*(a1 + 32) _addDevice:v3];
  }
}

- (void)_updateDevicePosition:(id)position
{
  v35 = *MEMORY[0x277D85DE8];
  positionCopy = position;
  identifier = [positionCopy identifier];
  v6 = [(BTSDevicesController *)self specifierForID:identifier];

  if (v6)
  {
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = [(BTSDevicesController *)self getGroup:&v32 row:0 ofSpecifier:v6];
    if (v32 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [(BTSDevicesController *)self specifierAtIndex:[(BTSDevicesController *)self indexOfGroup:?]];
      if ([positionCopy isMyDevice] && v9 == self->_myDevicesGroupSpec || (objc_msgSend(positionCopy, "isMyDevice") & 1) == 0 && v9 == self->_otherDevicesGroupSpec)
      {
        v10 = [(BTSDevicesController *)self indexOfSpecifier:v6];
        v11 = [(BTSDevicesController *)self specifierAtIndex:v10 - 1];
        userInfo = [v11 userInfo];
        v13 = [userInfo objectForKey:@"bt-device"];

        v14 = [(BTSDevicesController *)self specifierAtIndex:v10 + 1];
        userInfo2 = [v14 userInfo];
        v16 = [userInfo2 objectForKey:@"bt-device"];

        LODWORD(v14) = [v13 isMyDevice];
        if (v14 == [positionCopy isMyDevice])
        {
          name = [v13 name];
          name2 = [positionCopy name];
          v17 = [name caseInsensitiveCompare:name2] == -1 || v13 == 0;
        }

        else
        {
          v17 = v13 == 0;
        }

        isMyDevice = [v16 isMyDevice];
        isMyDevice2 = [positionCopy isMyDevice];
        if (isMyDevice == isMyDevice2)
        {
          name3 = [v16 name];
          name4 = [positionCopy name];
          v24 = [name3 caseInsensitiveCompare:name4] == -1 || v16 == 0;
        }

        else
        {
          v24 = v16 == 0;
        }

        if (v17 && v24)
        {
          v28 = sharedBluetoothSettingsLogComponent(isMyDevice2);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            identifier2 = [positionCopy identifier];
            *buf = 138412290;
            v34 = identifier2;
            _os_log_impl(&dword_23C0F7000, v28, OS_LOG_TYPE_INFO, "Reloading correctly located device %@", buf, 0xCu);
          }

          identifier3 = [positionCopy identifier];
          [(BTSDevicesController *)self reloadCellForSpecifierID:identifier3];

          goto LABEL_37;
        }
      }
    }

    v31 = sharedBluetoothSettingsLogComponent(v8);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [BTSDevicesController _updateDevicePosition:positionCopy];
    }

    [(BTSDevicesController *)self beginUpdates];
    [(BTSDevicesController *)self _removeDeviceSpecifier:v6];
    [(BTSDevicesController *)self _addDeviceSpecifier:v6 withDevice:positionCopy];
    [(BTSDevicesController *)self endUpdates];
  }

  else
  {
    v18 = sharedBluetoothSettingsLogComponent(v7);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [BTSDevicesController _updateDevicePosition:positionCopy];
    }
  }

LABEL_37:
}

- (void)updateUI:(BOOL)i
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = [(BTSDevicesController *)self specifierForID:@"MAIN_GROUP"];
  if (i)
  {
    v6 = MEMORY[0x277CBEB18];
    _shareDevicesSpecifiers = [(BTSDevicesController *)self _shareDevicesSpecifiers];
    powerOffWarningString = [v6 arrayWithArray:_shareDevicesSpecifiers];

    v9 = MEMORY[0x277CBEB18];
    _knownDevicesSpecifiers = [(BTSDevicesController *)self _knownDevicesSpecifiers];
    rootController = [v9 arrayWithArray:_knownDevicesSpecifiers];

    if ([powerOffWarningString count])
    {
      sharingDevicesGroupSpec = self->_sharingDevicesGroupSpec;
      if (sharingDevicesGroupSpec)
      {
        [powerOffWarningString insertObject:sharingDevicesGroupSpec atIndex:0];
      }
    }

    if ([rootController count])
    {
      v30 = v5;
      [rootController insertObject:self->_myDevicesGroupSpec atIndex:0];
      v13 = MEMORY[0x277CBEB18];
      mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
      connectingDevices = [mEMORY[0x277CF3248] connectingDevices];
      v16 = [v13 arrayWithArray:connectingDevices];

      v18 = sharedBluetoothSettingsLogComponent(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v37 = "[BTSDevicesController updateUI:]";
        v38 = 2048;
        v39 = [v16 count];
        v40 = 2112;
        v41 = v16;
        _os_log_impl(&dword_23C0F7000, v18, OS_LOG_TYPE_INFO, "%s found %lu connecting devices - %@", buf, 0x20u);
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v19 = v16;
      v20 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v32;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v32 != v22)
            {
              objc_enumerationMutation(v19);
            }

            address = [*(*(&v31 + 1) + 8 * i) address];
            v25 = [rootController specifierForID:address];

            if (v25)
            {
              [(BTSDevicesController *)self setBluetoothIsBusy:1];
              objc_storeStrong(&self->_currentDeviceSpecifier, v25);
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v21);
      }

      v5 = v30;
    }

    if (!self->_bluetoothRestricted)
    {
      [rootController addObject:self->_otherDevicesGroupSpec];
    }

    [(BTSDevicesController *)self beginUpdates];
    if ([powerOffWarningString count])
    {
      [(BTSDevicesController *)self addSpecifiersFromArray:powerOffWarningString animated:1];
    }

    [(BTSDevicesController *)self addSpecifiersFromArray:rootController animated:1];
    [(BTSDevicesController *)self endUpdates];
    [(BTSDevicesController *)self setBluetoothIsBusy:0];
    goto LABEL_27;
  }

  [(NSMutableDictionary *)self->_devicesDict removeAllObjects];
  [(NSMutableDictionary *)self->_sharingDevicesDict removeAllObjects];
  [(NSMutableDictionary *)self->_ctkdLeDevicesDict removeAllObjects];
  [(NSMutableSet *)self->_connectedPoorBehaviorDevices removeAllObjects];
  [(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices removeAllObjects];
  [(NSMutableSet *)self->_connectedHIDDevices removeAllObjects];
  [(BTSDevicesController *)self cleanupPairing];
  [(BTSDevicesController *)self cleanupAlerts];
  if ([(BTSDevicesController *)self numberOfGroups]>= 2)
  {
    v26 = [(BTSDevicesController *)self indexOfGroup:1];
    v27 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) subarrayWithRange:{v26, objc_msgSend(*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), "count") - v26}];
    [(BTSDevicesController *)self removeContiguousSpecifiers:v27 animated:1];
  }

  powerOffWarningString = [(BTSDevicesController *)self powerOffWarningString];
  [v5 setProperty:powerOffWarningString forKey:*MEMORY[0x277D3FF88]];
  [(BTSDevicesController *)self reloadSpecifier:v5 animated:1];
  parentViewController = [(BTSDevicesController *)self parentViewController];

  if (parentViewController)
  {
    rootController = [(BTSDevicesController *)self rootController];
    v29 = [rootController popToViewController:self animated:1];
LABEL_27:
  }
}

- (void)updatePoorConnectedDevicesList:(id)list
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C0F7000, v4, OS_LOG_TYPE_DEFAULT, "Received 'le hid device behavior changed' notification", buf, 2u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [(CBCentralManager *)self->_centralManager retrieveConnectedPeripheralsWithServices:0 allowAll:1];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if ([v10 connectedTransport] == 2)
        {
          v11 = [(BTSDevicesController *)self _getDeviceForPeripheral:v10];
          if (v11 && [v10 visibleInSettings])
          {
            if (([v11 connected] & 1) != 0 && objc_msgSend(v11, "isLimitedConnectivityDevice"))
            {
              [(NSMutableSet *)self->_connectedPoorBehaviorDevices addObject:v11];
              goto LABEL_16;
            }

            if ([(NSMutableSet *)self->_connectedPoorBehaviorDevices containsObject:v11])
            {
              [(NSMutableSet *)self->_connectedPoorBehaviorDevices removeObject:v11];
LABEL_16:
              self->_mainFooterNeedsUpdate = 1;
            }
          }

          continue;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v7);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  connectedDevices = [mEMORY[0x277CF3248] connectedDevices];

  v14 = [connectedDevices countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (!v14)
  {
    goto LABEL_32;
  }

  v15 = v14;
  v16 = *v23;
  do
  {
    for (j = 0; j != v15; ++j)
    {
      if (*v23 != v16)
      {
        objc_enumerationMutation(connectedDevices);
      }

      v18 = [BTSDeviceClassic deviceWithDevice:*(*(&v22 + 1) + 8 * j)];
      isLimitedConnectivityDevice = [v18 isLimitedConnectivityDevice];
      connectedPoorBehaviorDevices = self->_connectedPoorBehaviorDevices;
      if (isLimitedConnectivityDevice)
      {
        [(NSMutableSet *)connectedPoorBehaviorDevices addObject:v18];
      }

      else
      {
        if (![(NSMutableSet *)connectedPoorBehaviorDevices containsObject:v18])
        {
          goto LABEL_30;
        }

        [(NSMutableSet *)self->_connectedPoorBehaviorDevices removeObject:v18];
      }

      self->_mainFooterNeedsUpdate = 1;
LABEL_30:
    }

    v15 = [connectedDevices countByEnumeratingWithState:&v22 objects:v31 count:16];
  }

  while (v15);
LABEL_32:

  if (self->_mainFooterNeedsUpdate)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__BTSDevicesController_updatePoorConnectedDevicesList___block_invoke;
    block[3] = &unk_278BB03E0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    self->_mainFooterNeedsUpdate = 0;
  }
}

- (void)updateFirmwareUpdateRequiredDevicesList:(id)list
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C0F7000, v4, OS_LOG_TYPE_DEFAULT, "Received 'le device firmware update required changed' notification", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CBCentralManager *)self->_centralManager retrieveConnectedPeripheralsWithServices:0 allowAll:1];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 connectedTransport] == 2)
        {
          v11 = [(BTSDevicesController *)self _getDeviceForPeripheral:v10];
          if (v11 && [v10 visibleInSettings] && objc_msgSend(v11, "connected") && objc_msgSend(v11, "isFirmwareUpdateRequiredDevice"))
          {
            [(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices addObject:v11];
            self->_mainFooterNeedsUpdate = 1;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  if (self->_mainFooterNeedsUpdate)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__BTSDevicesController_updateFirmwareUpdateRequiredDevicesList___block_invoke;
    block[3] = &unk_278BB03E0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    self->_mainFooterNeedsUpdate = 0;
  }
}

- (void)updateMainGroupFooter
{
  if (self->_mainFooterNeedsUpdate)
  {
    [(BTSDevicesController *)self reloadSpecifiers];
    self->_mainFooterNeedsUpdate = 0;
  }
}

- (BOOL)isiPhone
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPhone"];

  return v3;
}

- (BOOL)isiPad
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPad"];

  return v3;
}

- (id)bluetoothEnabled:(id)enabled
{
  v28 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  powerState = [mEMORY[0x277CF3248] powerState];
  v7 = powerState;
  v8 = sharedBluetoothSettingsLogComponent(powerState);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = !self->_togglingPower;
    *v25 = 136315650;
    *&v25[4] = "[BTSDevicesController bluetoothEnabled:]";
    if (v9)
    {
      v10 = "no";
    }

    else
    {
      v10 = "yes";
    }

    *&v25[12] = 2080;
    *&v25[14] = v10;
    v26 = 1024;
    v27 = v7;
    _os_log_impl(&dword_23C0F7000, v8, OS_LOG_TYPE_INFO, "%s - toggling: %s, powerstate: %d", v25, 0x1Cu);
  }

  mEMORY[0x277D29518] = [MEMORY[0x277D29518] sharedInstance];
  if ([mEMORY[0x277D29518] isStoreDemoModeEnabled:0])
  {
    mEMORY[0x277D29528] = [MEMORY[0x277D29528] sharedInstance];
    v13 = [mEMORY[0x277D29528] isBetterTogetherDemoDevice] ^ 1;
  }

  else
  {
    v13 = 1;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInt:v13];
  v15 = *MEMORY[0x277D3FF38];
  [enabledCopy setProperty:v14 forKey:*MEMORY[0x277D3FF38]];

  v16 = v7 == 1 || self->_togglingPower;
  v17 = [mEMORY[0x277CF3248] available] & v16;
  v18 = [MEMORY[0x277CCABB0] numberWithBool:v17];
  [enabledCopy setProperty:v18 forKey:*MEMORY[0x277D3FEA8]];

  v19 = v17 == 1 && !self->_power;
  if (self->_bluetoothRestricted)
  {
    available = 0;
  }

  else
  {
    available = [mEMORY[0x277CF3248] available];
  }

  v21 = [MEMORY[0x277CCABB0] numberWithBool:available];
  [enabledCopy setProperty:v21 forKey:v15];

  v22 = v7 == 2 || v19;
  v23 = [MEMORY[0x277CCABB0] numberWithInt:v22];

  return v23;
}

- (void)setBluetoothEnabled:(id)enabled specifier:(id)specifier
{
  v38 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  bOOLValue = [enabled BOOLValue];
  v8 = sharedBluetoothSettingsLogComponent(bOOLValue);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v37 = bOOLValue;
    _os_log_impl(&dword_23C0F7000, v8, OS_LOG_TYPE_DEFAULT, "Toggle setBluetoothEnabled : %d", buf, 8u);
  }

  if (self->_power != bOOLValue)
  {
    if ((bOOLValue & 1) != 0 || ([MEMORY[0x277CBEBD0] standardUserDefaults], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "persistentDomainForName:", @"com.apple.bluetooth.settings"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKey:", @"HideGizmoPowerWarning"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v11))
    {
      [(BTSDevicesController *)self updatePowerState:bOOLValue powerSpec:specifierCopy];
    }

    else
    {
      v12 = MEMORY[0x277D75110];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"POWER_WARNING_TITLE" value:&stru_284EE3458 table:@"Devices"];
      powerOffWarningString = [(BTSDevicesController *)self powerOffWarningString];
      v16 = [v12 alertControllerWithTitle:v14 message:powerOffWarningString preferredStyle:1];

      v17 = MEMORY[0x277D750F8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"CANCEL" value:&stru_284EE3458 table:@"Devices"];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __54__BTSDevicesController_setBluetoothEnabled_specifier___block_invoke_2;
      v33[3] = &unk_278BB04E8;
      v35 = &__block_literal_global_577;
      v33[4] = self;
      v20 = specifierCopy;
      v34 = v20;
      v21 = [v17 actionWithTitle:v19 style:1 handler:v33];
      [v16 addAction:v21];

      v22 = MEMORY[0x277D750F8];
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"TURN_OFF" value:&stru_284EE3458 table:@"Devices"];
      v26 = MEMORY[0x277D85DD0];
      v27 = 3221225472;
      v28 = __54__BTSDevicesController_setBluetoothEnabled_specifier___block_invoke_3;
      v29 = &unk_278BB0510;
      selfCopy = self;
      v31 = v20;
      v32 = &__block_literal_global_577;
      v25 = [v22 actionWithTitle:v24 style:0 handler:&v26];
      [v16 addAction:{v25, v26, v27, v28, v29, selfCopy}];

      [(BTSDevicesController *)self presentViewController:v16 animated:1 completion:0];
    }
  }
}

void __54__BTSDevicesController_setBluetoothEnabled_specifier___block_invoke()
{
  v0 = MEMORY[0x277CBEB38];
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v1 persistentDomainForName:@"com.apple.bluetooth.settings"];
  v4 = [v0 dictionaryWithDictionary:v2];

  [v4 setObject:MEMORY[0x277CBEC38] forKey:@"HideGizmoPowerWarning"];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 setPersistentDomain:v4 forName:@"com.apple.bluetooth.settings"];
}

void __54__BTSDevicesController_setBluetoothEnabled_specifier___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v2 reloadCellForSpecifierID:v3];
}

uint64_t __54__BTSDevicesController_setBluetoothEnabled_specifier___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) updatePowerState:0 powerSpec:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)updatePowerState:(BOOL)state powerSpec:(id)spec
{
  stateCopy = state;
  specCopy = spec;
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  LODWORD(stateCopy) = [mEMORY[0x277CF3248] setEnabled:stateCopy];

  if (stateCopy)
  {
    self->_togglingPower = 1;
    [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) setEnabled:0];
  }

  [(BTSDevicesController *)self reloadSpecifier:specCopy];
}

- (void)setBluetoothIsBusy:(BOOL)busy
{
  if (busy)
  {
    v4 = 1;
  }

  else
  {
    currentDeviceSpecifier = self->_currentDeviceSpecifier;
    self->_currentDeviceSpecifier = 0;

    [(NSTimer *)self->_currentDeviceConnectionTimer invalidate];
    currentDeviceConnectionTimer = self->_currentDeviceConnectionTimer;
    self->_currentDeviceConnectionTimer = 0;

    v4 = 0;
  }

  self->_bluetoothIsBusy = v4;
}

- (void)alertSheetDismissed:(id)dismissed
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    alert = self->_alert;
    v13 = 138412290;
    v14 = alert;
    _os_log_impl(&dword_23C0F7000, v4, OS_LOG_TYPE_DEFAULT, "Dismiss BTAlert : %@", &v13, 0xCu);
  }

  v6 = self->_alert;
  self->_alert = 0;

  rootController = [(BTSDevicesController *)self rootController];
  visibleViewController = [rootController visibleViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    rootController2 = [(BTSDevicesController *)self rootController];
    visibleViewController2 = [rootController2 visibleViewController];
    parentViewController = [visibleViewController2 parentViewController];
    [parentViewController dismiss];
  }
}

- (void)cleanupPairing
{
  [(BTSSPPairingRequest *)self->_sspAlert dismiss];
  sspAlert = self->_sspAlert;
  self->_sspAlert = 0;

  rootController = [(BTSDevicesController *)self rootController];
  visibleViewController = [rootController visibleViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    rootController2 = [(BTSDevicesController *)self rootController];
    visibleViewController2 = [rootController2 visibleViewController];
    parentViewController = [visibleViewController2 parentViewController];
    [parentViewController dismiss];
  }

  syncContactsCarplayAlert = self->_syncContactsCarplayAlert;
  if (syncContactsCarplayAlert)
  {
    [(UIAlertController *)syncContactsCarplayAlert dismissViewControllerAnimated:1 completion:0];
    userInfo = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    [userInfo setObject:@"cancelled" forKey:@"PIN-ended"];

    v12 = self->_syncContactsCarplayAlert;
    self->_syncContactsCarplayAlert = 0;
  }
}

- (void)cleanupAlerts
{
  if (self->_syncContactsPrivacyAlert)
  {
    [(BTSDevicesController *)self dismissViewControllerAnimated:1 completion:0];
    v6 = _currentDevice;
    [v6 setSyncSettings:{objc_msgSend(v6, "syncSettings") & 0xFFFF00FFLL | 0x100000000}];
    syncContactsPrivacyAlert = self->_syncContactsPrivacyAlert;
    self->_syncContactsPrivacyAlert = 0;

    v4 = _currentDevice;
    _currentDevice = 0;

    v5 = _currentBTSDevice;
    _currentBTSDevice = 0;
  }
}

- (void)registerForNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_applicationWillTerminate_ name:*MEMORY[0x277D76770] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];

  defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter6 addObserver:self selector:sel_healthDeviceUnregisteredHandler_ name:@"BTSUnregisterHealthDeviceNotification" object:0];

  defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter7 addObserver:self selector:sel_powerChangedHandler_ name:*MEMORY[0x277CF3168] object:0];

  defaultCenter8 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter8 addObserver:self selector:sel_powerChangedHandler_ name:*MEMORY[0x277CF3230] object:0];

  defaultCenter9 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter9 addObserver:self selector:sel_deviceDiscoveredHandler_ name:*MEMORY[0x277CF31A8] object:0];

  defaultCenter10 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter10 addObserver:self selector:sel_deviceUpdatedHandler_ name:*MEMORY[0x277CF31D0] object:0];

  defaultCenter11 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter11 addObserver:self selector:sel_deviceRemovedHandler_ name:*MEMORY[0x277CF31B0] object:0];

  defaultCenter12 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter12 addObserver:self selector:sel_deviceUnpairedHandler_ name:*MEMORY[0x277CF31C8] object:0];

  defaultCenter13 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter13 addObserver:self selector:sel_devicePairedStatusChangedHandler_ name:*MEMORY[0x277CF31F8] object:0];

  defaultCenter14 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter14 addObserver:self selector:sel_deviceConnectedHandler_ name:*MEMORY[0x277CF3190] object:0];

  defaultCenter15 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter15 addObserver:self selector:sel_deviceConnectedHandler_ name:*MEMORY[0x277CF3188] object:0];

  defaultCenter16 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter16 addObserver:self selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x277CF31A0] object:0];

  defaultCenter17 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter17 addObserver:self selector:sel_devicePairedHandler_ name:*MEMORY[0x277CF3208] object:0];

  defaultCenter18 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter18 addObserver:self selector:sel_devicePairedHandler_ name:*MEMORY[0x277CF3210] object:0];

  defaultCenter19 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter19 addObserver:self selector:sel_authenticationRequestHandler_ name:*MEMORY[0x277CF3200] object:0];

  defaultCenter20 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter20 addObserver:self selector:sel_authenticationRequestHandler_ name:*MEMORY[0x277CF3220] object:0];

  defaultCenter21 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter21 addObserver:self selector:sel_authenticationRequestHandler_ name:*MEMORY[0x277CF3228] object:0];

  defaultCenter22 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter22 addObserver:self selector:sel_authenticationRequestHandler_ name:*MEMORY[0x277CF3218] object:0];

  defaultCenter23 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter23 addObserver:self selector:sel_effectiveMCSettingsDidChange_ name:*MEMORY[0x277D25CA0] object:0];

  defaultCenter24 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter24 addObserver:self selector:sel_deviceUpdatedHandler_ name:*MEMORY[0x277CF31F0] object:0];

  defaultCenter25 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter25 addObserver:self selector:sel_bluetoothDenylistChanged_ name:*MEMORY[0x277CF3178] object:0];

  defaultCenter26 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter26 addObserver:self selector:sel_updatePoorConnectedDevicesList_ name:@"com.apple.bluetooth.leHIDBehaviorKnown" object:0];

  defaultCenter27 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter27 addObserver:self selector:sel_updateFirmwareUpdateRequiredDevicesList_ name:@"com.apple.bluetooth.leDeviceFirmwareUpdateWarning" object:0];

  defaultCenter28 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter28 addObserver:self selector:sel_reloadSpecifiers name:*MEMORY[0x277D76810] object:0];
}

- (void)refreshUI
{
  [(NSMutableDictionary *)self->_devicesDict removeAllObjects];
  [(NSMutableDictionary *)self->_sharingDevicesDict removeAllObjects];
  [(NSMutableDictionary *)self->_ctkdLeDevicesDict removeAllObjects];
  [(NSMutableSet *)self->_connectedPoorBehaviorDevices removeAllObjects];
  [(NSMutableSet *)self->_connectedFirmwareUpdateRequiredDevices removeAllObjects];
  [(NSMutableSet *)self->_connectedHIDDevices removeAllObjects];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76768] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D76770] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x277D76648] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 removeObserver:self name:*MEMORY[0x277D76758] object:0];

  v8 = sharedBluetoothSettingsLogComponent(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_23C0F7000, v8, OS_LOG_TYPE_DEFAULT, "Re-register for bluetooth notifications", v10, 2u);
  }

  sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
  [sharedPairingAgent setDelegate:self];

  [(CBCentralManager *)self->_centralManager setDelegate:self];
  [(BTSDevicesController *)self reinitDASession];
  [(BTSDevicesController *)self registerForNotifications];
  [(BTSDevicesController *)self reloadSpecifiers];
  self->_uiRefreshed = 1;
}

- (void)reloadCellForSpecifierID:(id)d animated:(BOOL)animated
{
  animatedCopy = animated;
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = [(BTSDevicesController *)self specifierForID:d];
  v7 = [(BTSDevicesController *)self indexPathForSpecifier:v6];

  if (v7)
  {
    v8 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]);
    v11[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    if (animatedCopy)
    {
      v10 = 100;
    }

    else
    {
      v10 = 5;
    }

    [v8 reloadRowsAtIndexPaths:v9 withRowAnimation:v10];
  }
}

- (void)forcePushDetailViewForDevice:(id)device
{
  v45 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = sharedBluetoothSettingsLogComponent(deviceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v42 = "[BTSDevicesController forcePushDetailViewForDevice:]";
    v43 = 2112;
    v44 = deviceCopy;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  navigationController = [(BTSDevicesController *)self navigationController];
  topViewController = [navigationController topViewController];
  childViewControllers = [topViewController childViewControllers];
  firstObject = [childViewControllers firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    navigationController2 = [(BTSDevicesController *)self navigationController];
    topViewController2 = [navigationController2 topViewController];
    childViewControllers2 = [topViewController2 childViewControllers];
    firstObject2 = [childViewControllers2 firstObject];

    device = [firstObject2 device];
    identifier = [device identifier];
    identifier2 = [deviceCopy identifier];
    v18 = [identifier isEqualToString:identifier2];

    if (v18)
    {
      v20 = sharedBluetoothSettingsLogComponent(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = deviceCopy;
        _os_log_impl(&dword_23C0F7000, v20, OS_LOG_TYPE_DEFAULT, "Stop Force Push to Detail View because we're already in this page for device %@", buf, 0xCu);
      }

      goto LABEL_11;
    }
  }

  firstObject2 = objc_alloc_init(MEMORY[0x277D0FB70]);
  v21 = objc_alloc_init(MEMORY[0x277D3FAD8]);
  [firstObject2 setSpecifier:v21];

  v22 = objc_alloc(MEMORY[0x277CBEB38]);
  v39[0] = *MEMORY[0x277D3FE58];
  v23 = objc_opt_class();
  v24 = *MEMORY[0x277D3FF08];
  v40[0] = v23;
  v40[1] = @"BTSPairSetup";
  v25 = *MEMORY[0x277D400B8];
  v39[1] = v24;
  v39[2] = v25;
  v39[3] = *MEMORY[0x277D40138];
  v40[2] = @"BTSPairController";
  v40[3] = @"PSLinkCell";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];
  v20 = [v22 initWithDictionary:{v26, v39[0]}];

  name = [deviceCopy name];
  [v20 setObject:name forKey:*MEMORY[0x277D40170]];

  identifier3 = [deviceCopy identifier];
  [v20 setObject:identifier3 forKey:*MEMORY[0x277D3FFB8]];

  [v20 setObject:@"BTSDeviceConfigController" forKey:v24];
  specifier = [firstObject2 specifier];
  [specifier setProperties:v20];

  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v30 setObject:deviceCopy forKey:@"bt-device"];
  if ([deviceCopy isCTKDDevice])
  {
    centralManager = self->_centralManager;
    classicDevice = [deviceCopy classicDevice];
    address = [classicDevice address];
    v34 = [(CBCentralManager *)centralManager retrievePeripheralWithAddress:address];

    ctkdCounterpartDevicesDict = self->_ctkdCounterpartDevicesDict;
    identifier4 = [deviceCopy identifier];
    v37 = [(NSMutableDictionary *)ctkdCounterpartDevicesDict objectForKeyedSubscript:identifier4];

    [v30 setObject:v37 forKey:@"ctkd-device"];
  }

  specifier2 = [firstObject2 specifier];
  [specifier2 setUserInfo:v30];

  [(BTSDevicesController *)self showController:firstObject2];
LABEL_11:
}

- (id)mergeDualRadioDevices:(id)devices
{
  v44 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v5 = sharedBluetoothSettingsLogComponent(devicesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "Merging dual radio devices from AccessorySetupKit", buf, 2u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = devicesCopy;
  allValues = [devicesCopy allValues];
  v35 = [allValues countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v35)
  {
    v7 = *v38;
    v8 = 0x27E1EF000uLL;
    v34 = allValues;
    selfCopy = self;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v37 + 1) + 8 * v9);
        v11 = [BTSDeviceLE deviceWithPeripheral:v10 manager:*(&self->super.super.super.super.super.isa + *(v8 + 1448))];
        linkedRadioAddress = [v11 linkedRadioAddress];
        v13 = sharedBluetoothSettingsLogComponent(linkedRadioAddress);
        v14 = v13;
        if (v11)
        {
          v15 = linkedRadioAddress == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v42 = v10;
            _os_log_error_impl(&dword_23C0F7000, v14, OS_LOG_TYPE_ERROR, "Peripheral does not have linked address: %@", buf, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v42 = linkedRadioAddress;
            _os_log_impl(&dword_23C0F7000, v14, OS_LOG_TYPE_DEFAULT, "Device linked radio address: %@", buf, 0xCu);
          }

          v14 = [(NSMutableDictionary *)selfCopy->_devicesDict objectForKey:linkedRadioAddress];
          if (!v14 || ![v11 isManagedByDeviceAccess])
          {
            goto LABEL_23;
          }

          knownDADevices = selfCopy->_knownDADevices;
          identifier = [v10 identifier];
          v19 = [(NSMutableDictionary *)knownDADevices objectForKeyedSubscript:identifier];
          [v11 setUnderlyingDADevice:v19];

          ctkdCounterpartDevicesDict = selfCopy->_ctkdCounterpartDevicesDict;
          identifier2 = [v14 identifier];
          v22 = [(NSMutableDictionary *)ctkdCounterpartDevicesDict objectForKeyedSubscript:identifier2];

          if (v22)
          {
            v24 = sharedBluetoothSettingsLogComponent(v23);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v42 = v14;
              _os_log_error_impl(&dword_23C0F7000, v24, OS_LOG_TYPE_ERROR, "We cannot link to the new classic device because it's already linked to another LE device due to CTKD %@", buf, 0xCu);
            }

            [array addObject:v11];
            allValues = v34;
LABEL_23:
            v8 = 0x27E1EF000;
            self = selfCopy;
            goto LABEL_24;
          }

          name = [v11 name];
          [v14 setAccessorySetupKitDisplayName:name];

          self = selfCopy;
          [(NSMutableDictionary *)selfCopy->_devicesDict setObject:v14 forKey:linkedRadioAddress];
          identifier3 = [v14 identifier];
          [(NSMutableDictionary *)dictionary setObject:v11 forKeyedSubscript:identifier3];

          identifier4 = [v11 identifier];
          [(NSMutableDictionary *)dictionary setObject:v14 forKeyedSubscript:identifier4];

          allValues = v34;
          v8 = 0x27E1EF000;
        }

LABEL_24:

        ++v9;
      }

      while (v35 != v9);
      v28 = [allValues countByEnumeratingWithState:&v37 objects:v43 count:16];
      v35 = v28;
    }

    while (v28);
  }

  dualRadioCounterpartDevicesDict = self->_dualRadioCounterpartDevicesDict;
  self->_dualRadioCounterpartDevicesDict = dictionary;

  return array;
}

- (void)refreshCTKDDevices
{
  v53 = *MEMORY[0x277D85DE8];
  if (self->_power)
  {
    v3 = sharedBluetoothSettingsLogComponent(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C0F7000, v3, OS_LOG_TYPE_DEFAULT, "CTKD : Update CTKD device properties", buf, 2u);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
    retrievePairedPeers = [sharedPairingAgent retrievePairedPeers];

    obj = retrievePairedPeers;
    v6 = [retrievePairedPeers countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v45;
      v10 = 0x278BAF000uLL;
      *&v7 = 138412546;
      v39 = v7;
      v40 = *v45;
      do
      {
        v11 = 0;
        v41 = v8;
        do
        {
          if (*v45 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v44 + 1) + 8 * v11);
          v13 = [*(v10 + 3376) deviceWithPeripheral:v12 manager:{self->_centralManager, v39}];
          v14 = v13;
          if (v13 && [v13 supportsCTKD])
          {
            v15 = sharedBluetoothSettingsLogComponent([v12 setDelegate:self]);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              identifier = [v12 identifier];
              *buf = 138412290;
              v49 = identifier;
              _os_log_impl(&dword_23C0F7000, v15, OS_LOG_TYPE_DEFAULT, "Get derived device for CTKD device: %@", buf, 0xCu);
            }

            mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
            identifier2 = [v12 identifier];
            v19 = [mEMORY[0x277CF3248] deviceFromIdentifier:identifier2];

            v43 = v19;
            v20 = [BTSDeviceClassic deviceWithDevice:v19];
            devicesDict = self->_devicesDict;
            classicDevice = [v20 classicDevice];
            address = [classicDevice address];
            v24 = [(NSMutableDictionary *)devicesDict objectForKey:address];

            if (v24)
            {
              [v24 setCtkdDevice:1];
              if ([v14 isManagedByDeviceAccess])
              {
                knownDADevices = self->_knownDADevices;
                identifier3 = [v12 identifier];
                v27 = [(NSMutableDictionary *)knownDADevices objectForKeyedSubscript:identifier3];
                [v14 setUnderlyingDADevice:v27];

                name = [v14 name];
                [v24 setAccessorySetupKitDisplayName:name];

                [v24 setDenyIncomingClassicConnection:{objc_msgSend(v14, "shouldDenyIncomingClassicConnection")}];
              }

              v29 = self->_devicesDict;
              classicDevice2 = [v20 classicDevice];
              address2 = [classicDevice2 address];
              [(NSMutableDictionary *)v29 setObject:v24 forKey:address2];

              v33 = sharedBluetoothSettingsLogComponent(v32);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                name2 = [v14 name];
                isCTKDDevice = [v24 isCTKDDevice];
                *buf = v39;
                v49 = name2;
                v50 = 1024;
                v51 = isCTKDDevice;
                _os_log_debug_impl(&dword_23C0F7000, v33, OS_LOG_TYPE_DEBUG, "CTKD : classic device found in list %@ with CTKD : %d", buf, 0x12u);
              }

              identifier4 = [v12 identifier];
              uUIDString = [identifier4 UUIDString];

              if (uUIDString)
              {
                v36 = [(NSMutableDictionary *)self->_ctkdLeDevicesDict objectForKey:uUIDString];

                if (!v36)
                {
                  [v14 setCtkdDevice:1];
                  [(NSMutableDictionary *)self->_ctkdLeDevicesDict setObject:v14 forKey:uUIDString];
                }
              }

              [(BTSDevicesController *)self updateCTKDCounterparts:v24 leDevice:v14];
            }

            v9 = v40;
            v10 = 0x278BAF000;
            v8 = v41;
          }

          ++v11;
        }

        while (v8 != v11);
        v8 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v8);
    }
  }
}

- (void)updateCTKDCounterparts:(id)counterparts leDevice:(id)device
{
  ctkdCounterpartDevicesDict = self->_ctkdCounterpartDevicesDict;
  deviceCopy = device;
  counterpartsCopy = counterparts;
  identifier = [counterpartsCopy identifier];
  [(NSMutableDictionary *)ctkdCounterpartDevicesDict setObject:deviceCopy forKeyedSubscript:identifier];

  v10 = self->_ctkdCounterpartDevicesDict;
  identifier2 = [deviceCopy identifier];

  [(NSMutableDictionary *)v10 setObject:counterpartsCopy forKeyedSubscript:identifier2];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v54 = *MEMORY[0x277D85DE8];
  v45.receiver = self;
  v45.super_class = BTSDevicesController;
  pathCopy = path;
  v7 = [(BTSDevicesController *)&v45 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(BTSDevicesController *)self indexForIndexPath:pathCopy];

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle.fill"];
    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v11];
    lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
    [v12 setTintColor:lightGrayColor];

    [v7 setAccessoryView:v12];
LABEL_38:

    goto LABEL_39;
  }

  if ([v7 tag] == 1)
  {
    v10 = objc_opt_class();
    if (v10 == objc_opt_class())
    {
      v11 = v7;
      v12 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndexedSubscript:v8];
      userInfo = [v12 userInfo];
      v14 = [userInfo objectForKeyedSubscript:@"bt-device"];

      if ([v14 paired] & 1) != 0 || (objc_msgSend(v14, "isHealthDevice") & 1) != 0 || (objc_msgSend(v14, "isManagedByDeviceAccess"))
      {
        isManagedByAliroWallet = 1;
      }

      else
      {
        isManagedByAliroWallet = [v14 isManagedByAliroWallet];
      }

      LOBYTE(v16) = [v14 connected];
      if ([v14 isCTKDDevice])
      {
        centralManager = self->_centralManager;
        classicDevice = [v14 classicDevice];
        address = [classicDevice address];
        v20 = [(CBCentralManager *)centralManager retrievePeripheralWithAddress:address];

        connected = [v14 connected];
        if (connected)
        {
          v16 = 1;
        }

        else
        {
          connected = [v20 isConnectedToSystem];
          v16 = connected;
        }

        v23 = sharedBluetoothSettingsLogComponent(connected);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          title = [v11 title];
          *buf = 138412546;
          v47 = title;
          v48 = 1024;
          v49 = v16;
          _os_log_impl(&dword_23C0F7000, v23, OS_LOG_TYPE_DEFAULT, "CTKD : cell %@ is connected %d", buf, 0x12u);
        }
      }

      dualRadioCounterpartDevicesDict = self->_dualRadioCounterpartDevicesDict;
      identifier = [v14 identifier];
      v27 = [(NSMutableDictionary *)dualRadioCounterpartDevicesDict objectForKeyedSubscript:identifier];

      connected2 = (v27 != 0) | v16;
      if (v27 && (v16 & 1) == 0)
      {
        v29 = self->_dualRadioCounterpartDevicesDict;
        identifier2 = [v14 identifier];
        v31 = [(NSMutableDictionary *)v29 objectForKeyedSubscript:identifier2];
        connected2 = [v31 connected];
      }

      v44 = 0;
      isMyDevice = [v14 isMyDevice];
      if (isMyDevice)
      {
        isMyDevice = [v14 isApplePencil:&v44];
        if ((isMyDevice & 1) == 0)
        {
          isMyDevice = [v14 isLimitedConnectivityDevice];
          if (isMyDevice)
          {
            isMyDevice = [v11 setHasLimitedConnectivity:1];
          }
        }
      }

      v33 = sharedBluetoothSettingsLogComponent(isMyDevice);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        title2 = [v11 title];
        *buf = 138413058;
        v47 = title2;
        v48 = 1024;
        v49 = isManagedByAliroWallet;
        v50 = 1024;
        v51 = connected2 & 1;
        v52 = 2112;
        v53 = v14;
        _os_log_impl(&dword_23C0F7000, v33, OS_LOG_TYPE_INFO, "Setting cell %@ paired %d and connected %d, device:%@", buf, 0x22u);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        ctkdCounterpartDevicesDict = self->_ctkdCounterpartDevicesDict;
        identifier3 = [v14 identifier];
        relatedFutureRadioAddress = [(NSMutableDictionary *)ctkdCounterpartDevicesDict objectForKeyedSubscript:identifier3];

        shouldDenyIncomingClassicConnection = [relatedFutureRadioAddress shouldDenyIncomingClassicConnection];
      }

      else
      {
        if ([v14 shouldDenyIncomingClassicConnection])
        {
          shouldDenyIncomingClassicConnection = 1;
          goto LABEL_31;
        }

        relatedFutureRadioAddress = [v14 relatedFutureRadioAddress];
        shouldDenyIncomingClassicConnection = relatedFutureRadioAddress != 0;
      }

LABEL_31:
      [v11 setDeviceStatePaired:isManagedByAliroWallet andConnected:connected2 & 1 andPendingSetup:shouldDenyIncomingClassicConnection];
      if (self->_bluetoothIsBusy)
      {
        identifier4 = [v14 identifier];
        identifier5 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
        v41 = [identifier4 isEqualToString:identifier5];

        if (v41)
        {
          if (isManagedByAliroWallet)
          {
            v42 = 4;
          }

          else
          {
            v42 = 1;
          }

          [v11 setDeviceState:v42];
        }
      }

      goto LABEL_38;
    }
  }

LABEL_39:

  return v7;
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  v36 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v6 = [(BTSDevicesController *)self indexForIndexPath:pathCopy];
  v7 = [(BTSDevicesController *)self indexOfSpecifierID:@"MY_DEVICES"];
  v8 = *MEMORY[0x277D3FC48];
  v9 = [*(&self->super.super.super.super.super.isa + v8) count];
  if (v6 > 255 || v7 >= 256)
  {
    v14 = sharedBluetoothSettingsLogComponent(v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [BTSDevicesController tableView:accessoryButtonTappedForRowWithIndexPath:];
    }
  }

  else
  {
    if (v6 > v9 || v6 < v7)
    {
      v11 = sharedBluetoothSettingsLogComponent(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v20 = [pathCopy row];
        section = [pathCopy section];
        v22 = [*(&self->super.super.super.super.super.isa + v8) count];
        v26 = 134219008;
        v27 = v20;
        v28 = 2048;
        v29 = section;
        v30 = 2048;
        v31 = v6;
        v32 = 2048;
        v33 = v7;
        v34 = 2048;
        v35 = v22;
        _os_log_error_impl(&dword_23C0F7000, v11, OS_LOG_TYPE_ERROR, "Invalid index %ld in section %ld; rowIndex : %ld\t myDevicesGroupIndex : %ld\ttotal specifiers count %lu", &v26, 0x34u);
      }

      [(BTSDevicesController *)self reloadSpecifiers];
      v6 = [(BTSDevicesController *)self indexForIndexPath:pathCopy];
      v12 = [(BTSDevicesController *)self indexOfSpecifierID:@"MY_DEVICES"];
      v13 = sharedBluetoothSettingsLogComponent([*(&self->super.super.super.super.super.isa + v8) count]);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v23 = [pathCopy row];
        section2 = [pathCopy section];
        v25 = [*(&self->super.super.super.super.super.isa + v8) count];
        v26 = 134219008;
        v27 = v23;
        v28 = 2048;
        v29 = section2;
        v30 = 2048;
        v31 = v6;
        v32 = 2048;
        v33 = v12;
        v34 = 2048;
        v35 = v25;
        _os_log_error_impl(&dword_23C0F7000, v13, OS_LOG_TYPE_ERROR, "Refreshed index %ld in section %ld; rowIndex : %ld\t myDevicesGroupIndex : %ld\ttotal specifiers count %lu", &v26, 0x34u);
      }
    }

    v14 = [*(&self->super.super.super.super.super.isa + v8) objectAtIndex:v6];
    v15 = [(BTSDevicesController *)self _headphoneSettingsControllerFor:v14];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = objc_alloc_init(*(&v14->isa + *MEMORY[0x277D3FC98]));
    }

    v18 = v17;
    *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC38]) = 0;
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD10]));
    [v18 setRootController:WeakRetained];

    [v18 setParentController:self];
    [v18 setSpecifier:v14];
    [(BTSDevicesController *)self showController:v18];
  }
}

- (BOOL)isDeviceSupported:(id)supported
{
  v24 = *MEMORY[0x277D85DE8];
  supportedCopy = supported;
  v4 = [MEMORY[0x277CBE0B0] isDeviceSupportedWithType:objc_msgSend(supportedCopy VIDsrc:"type") VID:objc_msgSend(supportedCopy PID:{"vendorIdSrc"), objc_msgSend(supportedCopy, "vendorId"), objc_msgSend(supportedCopy, "productId")}];
  v5 = sharedBluetoothSettingsLogComponent(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    type = [supportedCopy type];
    vendorIdSrc = [supportedCopy vendorIdSrc];
    vendorId = [supportedCopy vendorId];
    productId = [supportedCopy productId];
    v12 = 136316418;
    v13 = "[BTSDevicesController isDeviceSupported:]";
    v10 = "UNSUPPORTED";
    v15 = type;
    v14 = 1024;
    if (v4)
    {
      v10 = "SUPPORTED";
    }

    v16 = 1024;
    v17 = vendorIdSrc;
    v18 = 1024;
    v19 = vendorId;
    v20 = 1024;
    v21 = productId;
    v22 = 2080;
    v23 = v10;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_INFO, "%s - type=%d vendorSrc=%d VID=0x%04X PID=0x%04X: %s", &v12, 0x2Eu);
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(BTSDevicesController *)self specifierAtIndex:[(BTSDevicesController *)self indexForIndexPath:pathCopy]];
  userInfo = [v8 userInfo];
  v10 = [userInfo objectForKey:@"bt-device"];

  if (!self->_bluetoothIsBusy)
  {
    v11 = [(BTSDevicesController *)self specifierForID:@"DENYLIST_ACTION_ID"];

    if (v11 == v8)
    {
      mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
      denylistEnabled = [mEMORY[0x277CF3248] denylistEnabled];

      if (denylistEnabled)
      {
        mEMORY[0x277CF3248]2 = [MEMORY[0x277CF3248] sharedInstance];
        [mEMORY[0x277CF3248]2 setDenylistEnabled:0];

        [(BTSDevicesController *)self reloadSpecifiers];
      }
    }
  }

  if (v10)
  {
    v15 = [viewCopy cellForRowAtIndexPath:pathCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
      if ([v16 state] == 6 || objc_msgSend(v16, "state") == 7)
      {
        [(BTSDevicesController *)self forcePushDetailViewForDevice:v10];
        [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) selectRowAtIndexPath:0 animated:1 scrollPosition:0];

LABEL_54:
        goto LABEL_55;
      }
    }

    if (self->_bluetoothIsBusy)
    {
LABEL_53:
      [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) selectRowAtIndexPath:0 animated:1 scrollPosition:0];
      goto LABEL_54;
    }

    if ([v10 connected] && (objc_msgSend(v10, "isTemporaryPairedDevice") & 1) == 0)
    {
      v32 = sharedBluetoothSettingsLogComponent([*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) selectRowAtIndexPath:0 animated:1 scrollPosition:0]);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [BTSDevicesController tableView:v10 didSelectRowAtIndexPath:?];
      }

      goto LABEL_54;
    }

    classicDevice = [v10 classicDevice];
    v18 = [(BTSDevicesController *)self isDeviceSupported:classicDevice];

    v53 = v15;
    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v10;
        device = [v19 device];
        v21 = [device isServiceSupported:4096];

        if (v21 && (self->_netClient || (v22 = _NETRBClientCreate(), (self->_netClient = v22) != 0)))
        {
          v54[0] = 0;
          v23 = 0;
          _NETRBClientGetHostCount();
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }

      v54[0] = 0;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v10 connected] & 1) == 0 && objc_msgSend(v10, "isApplePencil:", v54))
      {
        [(BTSDevicesController *)self showPencilConnectionAttemptAlert:v54[0]];
      }

      else
      {
        sharingDevicesDict = self->_sharingDevicesDict;
        identifier = [v10 identifier];
        v35 = [(NSMutableDictionary *)sharingDevicesDict objectForKey:identifier];

        if (v35)
        {
          [v10 unpair];
          v36 = self->_sharingDevicesDict;
          identifier2 = [v10 identifier];
          [(NSMutableDictionary *)v36 removeObjectForKey:identifier2];

          [(BTSDevicesController *)self removeSpecifier:self->_sharingDevicesGroupSpec animated:1];
        }

        else
        {
          if (![(BTSDevicesController *)self isSupportCarPlaySetup:v10])
          {
            if ([v10 connect])
            {
              objc_storeStrong(&self->_currentDeviceSpecifier, v8);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v42 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_peripheralConnectionTimeout_ selector:v10 userInfo:0 repeats:10.0];
                currentDeviceConnectionTimer = self->_currentDeviceConnectionTimer;
                self->_currentDeviceConnectionTimer = v42;

                mEMORY[0x277CF3248]3 = [MEMORY[0x277CF3248] sharedInstance];
                [mEMORY[0x277CF3248]3 setDenylistEnabled:0];
              }

              [(BTSDevicesController *)self setBluetoothIsBusy:1];
              [(BTSDevicesController *)self allowBluetoothScans:0];
              identifier3 = [v10 identifier];
              v46 = [(BTSDevicesController *)self indexOfSpecifierID:identifier3];

              if (v46 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v47 = [viewCopy cellForRowAtIndexPath:pathCopy];
                v48 = 4;
                if (([v10 paired] & 1) == 0)
                {
                  if ([v10 isHealthDevice])
                  {
                    v48 = 4;
                  }

                  else
                  {
                    v48 = 1;
                  }
                }

                [v47 setDeviceState:v48];
              }
            }

            goto LABEL_52;
          }

          [(BTSDevicesController *)self setBluetoothIsBusy:1];
          v38 = v10;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([(BTSDevicesController *)self getLECarPlay:v38], (v39 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v40 = v39;

            v41 = v40;
          }

          else
          {
            v41 = 0;
            v40 = v38;
          }

          [(BTSDevicesController *)self startOutgoingCarPlaySetup:v40];
          identifier4 = [v38 identifier];
          v50 = [(BTSDevicesController *)self indexOfSpecifierID:identifier4];

          if (v50 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v51 = [viewCopy cellForRowAtIndexPath:pathCopy];
            [v51 setDeviceState:1];
          }
        }

        v23 = 0;
      }
    }

    else
    {
      v52 = MEMORY[0x277D75110];
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:@"CANNOT_CONNECT_UNSUPPORTED_DEVICE_TITLE" value:&stru_284EE3458 table:@"Devices"];
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v27 = [v26 localizedStringForKey:@"CANNOT_CONNECT_UNSUPPORTED_DEVICE_MESSAGE" value:&stru_284EE3458 table:@"Devices"];
      v23 = [v52 alertControllerWithTitle:v25 message:v27 preferredStyle:1];

      v15 = v53;
      v28 = MEMORY[0x277D750F8];
      v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v30 = [v29 localizedStringForKey:@"OK" value:&stru_284EE3458 table:@"Devices"];
      v31 = [v28 actionWithTitle:v30 style:1 handler:&__block_literal_global_652];
      [v23 addAction:v31];

      [(BTSDevicesController *)self presentViewController:v23 animated:1 completion:0];
    }

LABEL_52:

    goto LABEL_53;
  }

  [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) selectRowAtIndexPath:0 animated:1 scrollPosition:0];
LABEL_55:
}

void __58__BTSDevicesController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBluetoothIsBusy:0];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v2 reloadCellForSpecifierID:v3 animated:1];
}

uint64_t __58__BTSDevicesController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 1680))
  {
    v2 = sharedBluetoothSettingsLogComponent(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_23C0F7000, v2, OS_LOG_TYPE_INFO, "Toggling Personal Hotspot to disconnect active clients", v4, 2u);
    }

    _NETRBClientSetGlobalServiceState();
    _NETRBClientSetGlobalServiceState();
    _NETRBClientDestroy();
    *(*(a1 + 32) + 1680) = 0;
  }

  return [*(a1 + 40) connect];
}

- (double)tableView:(id)view estimatedHeightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if (!section || section == 1 && (self->_denylistEnabled || [(NSMutableDictionary *)self->_sharingDevicesDict count]) || self->_denylistEnabled)
  {
    v7 = 42.0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = BTSDevicesController;
    [(BTSDevicesController *)&v10 tableView:viewCopy heightForFooterInSection:section];
    v7 = v9;
  }

  return v7;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v61[3] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if (section || self->_denylistEnabled)
  {
    v59.receiver = self;
    v59.super_class = BTSDevicesController;
    v7 = [(BTSDevicesController *)&v59 tableView:viewCopy viewForFooterInSection:section];
    goto LABEL_4;
  }

  v9 = SCDynamicStoreCopyComputerName(0, 0);
  if (self->_bluetoothRestricted)
  {
    restrictionDetail = self->_restrictionDetail;
    v58 = 0;
    v11 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:restrictionDetail validFormatSpecifiers:@"%@" error:&v58, v9];
    v12 = v58;
    v13 = v12;
    if (v11)
    {
      v54 = v12;
      v56 = v9;
LABEL_12:
      v55 = v11;
      v18 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v11];
      v19 = MGGetBoolAnswer();
      v20 = @"WIFI";
      if (v19)
      {
        v20 = @"WLAN";
      }

      v21 = v20;
      connectedPoorBehaviorDeviceNames = [(BTSDevicesController *)self connectedPoorBehaviorDeviceNames];
      v52 = connectedPoorBehaviorDeviceNames;
      v53 = v21;
      if ([connectedPoorBehaviorDeviceNames count])
      {
        if ([connectedPoorBehaviorDeviceNames count] <= 1)
        {
          v23 = @"SINGULAR";
        }

        else
        {
          v23 = @"PLURAL";
        }

        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_DISCOVERABLE_WARNING_%@", v21, v23, connectedPoorBehaviorDeviceNames, v21];
        v25 = [(BTSDevicesController *)self localizedList:connectedPoorBehaviorDeviceNames];
        v26 = MEMORY[0x277CCACA8];
        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v28 = [v27 localizedStringForKey:v24 value:&stru_284EE3458 table:@"Devices"];
        v29 = [v26 localizedStringWithFormat:v28, v25];

        v30 = [(BTSDevicesController *)self makeWarningAttributedString:v29];
        [v18 appendAttributedString:v30];
      }

      connectedFirmwareUpdateRequiredDeviceNames = [(BTSDevicesController *)self connectedFirmwareUpdateRequiredDeviceNames];
      if ([connectedFirmwareUpdateRequiredDeviceNames count])
      {
        if ([connectedFirmwareUpdateRequiredDeviceNames count] <= 1)
        {
          v32 = @"SINGULAR";
        }

        else
        {
          v32 = @"PLURAL";
        }

        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"FIRMWARE_WARNING_%@", v32];
        v34 = [(BTSDevicesController *)self localizedList:connectedFirmwareUpdateRequiredDeviceNames];
        v35 = MEMORY[0x277CCACA8];
        v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v37 = [v36 localizedStringForKey:v33 value:&stru_284EE3458 table:@"Devices"];
        v38 = [v35 localizedStringWithFormat:v37, v34];

        v39 = [(BTSDevicesController *)self makeWarningAttributedString:v38];
        [v18 appendAttributedString:v39];
      }

      v40 = objc_opt_new();
      [v40 setAlignment:4];
      groupedFooterConfiguration = [MEMORY[0x277D756E0] groupedFooterConfiguration];
      textProperties = [groupedFooterConfiguration textProperties];
      font = [textProperties font];

      textProperties2 = [groupedFooterConfiguration textProperties];
      color = [textProperties2 color];

      v46 = *MEMORY[0x277D740A8];
      v60[0] = *MEMORY[0x277D740C0];
      v60[1] = v46;
      v61[0] = color;
      v61[1] = font;
      v60[2] = *MEMORY[0x277D74118];
      v61[2] = v40;
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:3];
      [v18 addAttributes:v47 range:{0, objc_msgSend(v18, "length")}];

      v7 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"MainGroupFooterId"];
      textLabel = [v7 textLabel];
      [textLabel setTextAlignment:4];

      textLabel2 = [v7 textLabel];
      [textLabel2 setNumberOfLines:0];

      textLabel3 = [v7 textLabel];
      [textLabel3 setAttributedText:v18];

      self->_mainFooterNeedsUpdate = 1;
      v15 = v55;
      v9 = v56;
      v13 = v54;
      goto LABEL_31;
    }

    v15 = sharedBluetoothSettingsLogComponent(v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [BTSDevicesController tableView:viewForFooterInSection:];
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"DISCOVERABLE" value:&stru_284EE3458 table:@"Devices"];

    v57 = 0;
    v16 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:&v57, v9];
    v17 = v57;
    v13 = v17;
    if (v16)
    {
      v54 = v17;
      v56 = v9;

      v11 = v16;
      goto LABEL_12;
    }

    v51 = sharedBluetoothSettingsLogComponent(v17);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      [BTSDevicesController tableView:viewForFooterInSection:];
    }
  }

  v7 = 0;
LABEL_31:

LABEL_4:

  return v7;
}

- (void)showSyncContactsPopup:(id)popup
{
  v39 = *MEMORY[0x277D85DE8];
  popupCopy = popup;
  v5 = sharedBluetoothSettingsLogComponent(popupCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v34 = "[BTSDevicesController showSyncContactsPopup:]";
    v35 = 2048;
    selfCopy = self;
    v37 = 2112;
    v38 = popupCopy;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "%s Showing Sync Contacts Popup from BTSDeviceController instance %p, for device: %@", buf, 0x20u);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __46__BTSDevicesController_showSyncContactsPopup___block_invoke;
  v31[3] = &unk_278BB0580;
  v31[4] = self;
  v32 = popupCopy;
  v26 = popupCopy;
  v25 = MEMORY[0x23EEC8440](v31);
  v6 = MEMORY[0x277D75110];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SYNC_CONTACTS_TITLE" value:&stru_284EE3458 table:@"Devices"];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SYNC_CARPLAY_CONTACTS_MESSAGE" value:&stru_284EE3458 table:@"Devices"];
  v11 = [v6 alertControllerWithTitle:v8 message:v10 preferredStyle:1];
  syncContactsCarplayAlert = self->_syncContactsCarplayAlert;
  self->_syncContactsCarplayAlert = v11;

  v13 = self->_syncContactsCarplayAlert;
  v14 = MEMORY[0x277D750F8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"SYNC_DISALLOW_BUTTON" value:&stru_284EE3458 table:@"Devices"];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __46__BTSDevicesController_showSyncContactsPopup___block_invoke_2;
  v29[3] = &unk_278BB05A8;
  v17 = v25;
  v30 = v17;
  v18 = [v14 actionWithTitle:v16 style:1 handler:v29];
  [(UIAlertController *)v13 addAction:v18];

  v19 = self->_syncContactsCarplayAlert;
  v20 = MEMORY[0x277D750F8];
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"SYNC_ALLOW_BUTTON" value:&stru_284EE3458 table:@"Devices"];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __46__BTSDevicesController_showSyncContactsPopup___block_invoke_3;
  v27[3] = &unk_278BB05A8;
  v28 = v17;
  v23 = v17;
  v24 = [v20 actionWithTitle:v22 style:0 handler:v27];
  [(UIAlertController *)v19 addAction:v24];

  [(BTSDevicesController *)self presentViewController:self->_syncContactsCarplayAlert animated:1 completion:0];
}

void __46__BTSDevicesController_showSyncContactsPopup___block_invoke(uint64_t a1, int a2)
{
  v4 = [*(*(a1 + 32) + 1624) userInfo];
  [v4 setObject:@"accepted" forKey:@"PIN-ended"];

  v5 = [MEMORY[0x277CF3248] sharedInstance];
  [v5 acceptSSP:0 forDevice:*(a1 + 40)];

  v6 = [*(a1 + 40) syncSettings];
  v7 = 0x100000000;
  if (a2)
  {
    v7 = 0x100000100;
  }

  [*(a1 + 40) setSyncSettings:v7 | v6 & 0xFFFF00FF];
  v8 = *(a1 + 32);
  v9 = *(v8 + 1656);
  *(v8 + 1656) = 0;

  if (a2)
  {
    v10 = *(*(a1 + 32) + 1520);
    v11 = [*(a1 + 40) address];
    v12 = [v10 objectForKeyedSubscript:v11];

    [*(a1 + 32) forcePushDetailViewForDevice:v12];
  }
}

- (void)showSyncContactsPrivacyPopup:(id)popup
{
  v61 = *MEMORY[0x277D85DE8];
  popupCopy = popup;
  v6 = sharedBluetoothSettingsLogComponent(popupCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v56 = "[BTSDevicesController showSyncContactsPrivacyPopup:]";
    v57 = 2048;
    selfCopy = self;
    v59 = 2112;
    v60 = popupCopy;
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "%s Showing Sync Contacts Popup from BTSDeviceController instance %p, for device: %@", buf, 0x20u);
  }

  objc_storeStrong(&_currentDevice, popup);
  v45 = popupCopy;
  if (MGGetBoolAnswer())
  {
    *buf = 0;
    v53[0] = *MEMORY[0x277CBF188];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"SYNC_CONTACTS_TITLE" value:&stru_284EE3458 table:@"Devices"];
    v54[0] = v8;
    v53[1] = *MEMORY[0x277CBF198];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"SYNC_BLUETOOTH_CONTACTS_MESSAGE" value:&stru_284EE3458 table:@"Devices"];
    v11 = *MEMORY[0x277CBF1B0];
    v54[1] = v10;
    v54[2] = MEMORY[0x277CBEC38];
    v12 = *MEMORY[0x277CBF1C0];
    v53[2] = v11;
    v53[3] = v12;
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"SYNC_DISALLOW_BUTTON" value:&stru_284EE3458 table:@"Devices"];
    v54[3] = v14;
    v53[4] = *MEMORY[0x277CBF1E8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"SYNC_ALLOW_BUTTON" value:&stru_284EE3458 table:@"Devices"];
    v54[4] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:5];

    v18 = v45;
    objc_storeStrong(&_currentControllerInstance, self);
    devicesDict = self->_devicesDict;
    address = [v45 address];
    v21 = [(NSMutableDictionary *)devicesDict objectForKeyedSubscript:address];
    v22 = _currentBTSDevice;
    _currentBTSDevice = v21;

    [(BTSDevicesController *)self setNotification:CFUserNotificationCreate(0, 100.0, 3uLL, buf, v17)];
    [(BTSDevicesController *)self setRunLoopSource:CFUserNotificationCreateRunLoopSource(0, [(BTSDevicesController *)self notification], NotificationCallback, 0)];
    Main = CFRunLoopGetMain();
    runLoopSource = [(BTSDevicesController *)self runLoopSource];
    CFRunLoopAddSource(Main, runLoopSource, *MEMORY[0x277CBF048]);
  }

  else
  {
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __53__BTSDevicesController_showSyncContactsPrivacyPopup___block_invoke;
    v50[3] = &unk_278BB0580;
    v51 = popupCopy;
    selfCopy2 = self;
    v44 = MEMORY[0x23EEC8440](v50);
    v25 = MEMORY[0x277D75110];
    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"SYNC_CONTACTS_TITLE" value:&stru_284EE3458 table:@"Devices"];
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"SYNC_BLUETOOTH_CONTACTS_MESSAGE" value:&stru_284EE3458 table:@"Devices"];
    v30 = [v25 alertControllerWithTitle:v27 message:v29 preferredStyle:1];
    syncContactsPrivacyAlert = self->_syncContactsPrivacyAlert;
    self->_syncContactsPrivacyAlert = v30;

    v32 = self->_syncContactsPrivacyAlert;
    v33 = MEMORY[0x277D750F8];
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = [v34 localizedStringForKey:@"SYNC_DISALLOW_BUTTON" value:&stru_284EE3458 table:@"Devices"];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __53__BTSDevicesController_showSyncContactsPrivacyPopup___block_invoke_2;
    v48[3] = &unk_278BB05A8;
    v36 = v44;
    v49 = v36;
    v37 = [v33 actionWithTitle:v35 style:1 handler:v48];
    [(UIAlertController *)v32 addAction:v37];

    v38 = self->_syncContactsPrivacyAlert;
    v39 = MEMORY[0x277D750F8];
    v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v41 = [v40 localizedStringForKey:@"SYNC_ALLOW_BUTTON" value:&stru_284EE3458 table:@"Devices"];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __53__BTSDevicesController_showSyncContactsPrivacyPopup___block_invoke_3;
    v46[3] = &unk_278BB05A8;
    v47 = v36;
    v42 = v36;
    v43 = [v39 actionWithTitle:v41 style:0 handler:v46];
    [(UIAlertController *)v38 addAction:v43];

    v18 = v45;
    [(BTSDevicesController *)self presentViewController:self->_syncContactsPrivacyAlert animated:1 completion:0];
  }
}

void __53__BTSDevicesController_showSyncContactsPrivacyPopup___block_invoke(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) syncSettings];
  v5 = 0x100000000;
  if (a2)
  {
    v5 = 0x100000100;
  }

  [*(a1 + 32) setSyncSettings:v5 | v4 & 0xFFFF00FF];
  v6 = *(a1 + 40);
  v7 = *(v6 + 1672);
  *(v6 + 1672) = 0;

  v8 = _currentDevice;
  _currentDevice = 0;

  if (a2)
  {
    v9 = *(*(a1 + 40) + 1520);
    v10 = [*(a1 + 32) address];
    v11 = [v9 objectForKeyedSubscript:v10];

    [*(a1 + 40) forcePushDetailViewForDevice:v11];
  }
}

- (void)showPencilConnectionAttemptAlert:(int)alert
{
  v16 = objc_alloc_init(MEMORY[0x277CCACA8]);
  if (alert <= 2)
  {
    v5 = off_278BB0738[alert];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:v5 value:&stru_284EE3458 table:@"Devices"];

    v16 = v7;
  }

  v8 = MEMORY[0x277D75110];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"APPLE_PENCIL_NOT_CONNECTED_TITLE" value:&stru_284EE3458 table:@"Devices"];
  v11 = [v8 alertControllerWithTitle:v10 message:v16 preferredStyle:1];

  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"CLOSE" value:&stru_284EE3458 table:@"Devices"];
  v15 = [v12 actionWithTitle:v14 style:0 handler:&__block_literal_global_719];

  [v11 addAction:v15];
  [(BTSDevicesController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)effectiveMCSettingsDidChange:(id)change
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__BTSDevicesController_effectiveMCSettingsDidChange___block_invoke;
  block[3] = &unk_278BB03E0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)startedConnectionAttemptOnTransport:(unint64_t)transport
{
  if (transport == 3)
  {
    block[5] = v3;
    block[6] = v4;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__BTSDevicesController_startedConnectionAttemptOnTransport___block_invoke;
    block[3] = &unk_278BB03E0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void *__60__BTSDevicesController_startedConnectionAttemptOnTransport___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) allowBluetoothScans:0];
  *(*(a1 + 32) + 1605) = 1;
  return result;
}

- (void)cancelledConnectionAttemptOnTransport:(unint64_t)transport
{
  if (transport == 3)
  {
    block[5] = v3;
    block[6] = v4;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__BTSDevicesController_cancelledConnectionAttemptOnTransport___block_invoke;
    block[3] = &unk_278BB03E0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

_BYTE *__62__BTSDevicesController_cancelledConnectionAttemptOnTransport___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[1605] == 1)
  {
    result = [result allowBluetoothScans:1];
    *(*(a1 + 32) + 1605) = 0;
  }

  return result;
}

- (void)sessionDidConnect:(id)connect
{
  configuration = [connect configuration];
  transportType = [configuration transportType];

  if (transportType == 3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__BTSDevicesController_sessionDidConnect___block_invoke;
    block[3] = &unk_278BB03E0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

_BYTE *__42__BTSDevicesController_sessionDidConnect___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[1605] == 1)
  {
    result = [result allowBluetoothScans:1];
    *(*(a1 + 32) + 1605) = 0;
  }

  return result;
}

- (void)showUpgradeOSPopup:(id)popup
{
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __43__BTSDevicesController_showUpgradeOSPopup___block_invoke;
  v28[3] = &unk_278BB05D0;
  v28[4] = self;
  v23 = MEMORY[0x23EEC8440](v28, a2, popup);
  v4 = MEMORY[0x277D75110];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SW_UPDATE_TITLE" value:&stru_284EE3458 table:@"Devices"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SW_UPDATE_MESSAGE" value:&stru_284EE3458 table:@"Devices"];
  v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];
  swUpdateAlert = self->_swUpdateAlert;
  self->_swUpdateAlert = v9;

  v11 = self->_swUpdateAlert;
  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"SW_UPDATE_CLOSE_BUTTON" value:&stru_284EE3458 table:@"Devices"];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __43__BTSDevicesController_showUpgradeOSPopup___block_invoke_2;
  v26[3] = &unk_278BB05A8;
  v15 = v23;
  v27 = v15;
  v16 = [v12 actionWithTitle:v14 style:1 handler:v26];
  [(UIAlertController *)v11 addAction:v16];

  v17 = self->_swUpdateAlert;
  v18 = MEMORY[0x277D750F8];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"SW_UPDATE_CHECK_BUTTON" value:&stru_284EE3458 table:@"Devices"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __43__BTSDevicesController_showUpgradeOSPopup___block_invoke_3;
  v24[3] = &unk_278BB05A8;
  v25 = v15;
  v21 = v15;
  v22 = [v18 actionWithTitle:v20 style:0 handler:v24];
  [(UIAlertController *)v17 addAction:v22];

  [(BTSDevicesController *)self presentViewController:self->_swUpdateAlert animated:1 completion:0];
}

void __43__BTSDevicesController_showUpgradeOSPopup___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 1664);
  *(v3 + 1664) = 0;

  if (a2)
  {
    v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v5 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"];
    [v6 openSensitiveURL:v5 withOptions:0];
  }
}

- (id)getLECarPlay:(id)play
{
  playCopy = play;
  if ([playCopy paired])
  {
    centralManager = self->_centralManager;
    identifier = [playCopy identifier];
    v7 = [(CBCentralManager *)centralManager retrievePeripheralWithAddress:identifier];

    if (v7 && [v7 hasTag:@"_CARPLAY_DEVICE_"])
    {
      v8 = [BTSDeviceLE deviceWithPeripheral:v7 manager:self->_centralManager];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isSupportCarPlaySetup:(id)setup
{
  v15 = *MEMORY[0x277D85DE8];
  setupCopy = setup;
  if (![(BTSDevicesController *)self isiPhone]|| ![(BTSDevicesController *)self isCarPlaySetupEnabled])
  {
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([setupCopy paired] & 1) == 0)
    {
      isCarPlayDevice = [setupCopy isCarPlayDevice];
      if (isCarPlayDevice)
      {
        v6 = sharedBluetoothSettingsLogComponent(isCarPlayDevice);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412290;
          v14 = setupCopy;
          _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "Unpaired classic CarPlay, no CarPlay setup: %@", &v13, 0xCu);
        }

        v7 = 0;
        goto LABEL_19;
      }
    }

    if ([(BTSDevicesController *)self isLECarPlayEnabled])
    {
      v10 = [(BTSDevicesController *)self getLECarPlay:setupCopy];

      if (v10)
      {
        v6 = sharedBluetoothSettingsLogComponent(v11);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412290;
          v14 = setupCopy;
          v9 = "Paired classic device with LE CarPlay: %@";
          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }

LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if (![(BTSDevicesController *)self isLECarPlayEnabled])
  {
    goto LABEL_20;
  }

  isCarPlayDevice2 = [setupCopy isCarPlayDevice];
  if (!isCarPlayDevice2)
  {
    goto LABEL_20;
  }

  v6 = sharedBluetoothSettingsLogComponent(isCarPlayDevice2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = setupCopy;
    v9 = "LE only CarPlay: %@";
LABEL_17:
    _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, v9, &v13, 0xCu);
  }

LABEL_18:
  v7 = 1;
LABEL_19:

LABEL_21:
  return v7;
}

- (BOOL)isLECarPlayEnabled
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"EnableBLE", @"com.apple.carplay", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (BOOL)isCarPlaySetupEnabled
{
  v2 = objc_alloc_init(MEMORY[0x277CF8A40]);
  isCarPlaySetupEnabled = [v2 isCarPlaySetupEnabled];
  bOOLValue = [isCarPlaySetupEnabled BOOLValue];

  return bOOLValue;
}

- (void)startOutgoingCarPlaySetup:(id)setup
{
  v15 = *MEMORY[0x277D85DE8];
  setupCopy = setup;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = setupCopy;
  v7 = v6;
  if (isKindOfClass)
  {
    device = [v6 device];
    address = [device address];
    v10 = sharedBluetoothSettingsLogComponent([(BTSDevicesController *)self allowBluetoothConnections:0]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = device;
      _os_log_impl(&dword_23C0F7000, v10, OS_LOG_TYPE_DEFAULT, "CarPlay setup for classic device, %@", buf, 0xCu);
    }

    objc_initWeak(buf, device);
    objc_copyWeak(&v12, buf);
    CRStartBluetoothClassicPairing();
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  else
  {
    device = [v6 identifier];
    address = [v7 name];
    v11 = sharedBluetoothSettingsLogComponent(address);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = device;
      _os_log_impl(&dword_23C0F7000, v11, OS_LOG_TYPE_DEFAULT, "CarPlay setup for le device, UUID: %@", buf, 0xCu);
    }

    CRConnectBluetoothLE();
  }
}

void __50__BTSDevicesController_startOutgoingCarPlaySetup___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__BTSDevicesController_startOutgoingCarPlaySetup___block_invoke_2;
  block[3] = &unk_278BB05F8;
  v8 = a2;
  block[4] = *(a1 + 32);
  v7 = WeakRetained;
  v5 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __50__BTSDevicesController_startOutgoingCarPlaySetup___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = sharedBluetoothSettingsLogComponent(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_23C0F7000, v3, OS_LOG_TYPE_DEFAULT, "successfully classic CarPlay paired", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *v7 = 0;
      _os_log_impl(&dword_23C0F7000, v3, OS_LOG_TYPE_DEFAULT, "failed to pair classic CarPlay", v7, 2u);
    }

    v5 = *(a1 + 32);
    v3 = [*(a1 + 40) address];
    [v5 reloadCellForSpecifierID:v3];
  }

  return [*(a1 + 32) setBluetoothIsBusy:0];
}

void __50__BTSDevicesController_startOutgoingCarPlaySetup___block_invoke_745(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __50__BTSDevicesController_startOutgoingCarPlaySetup___block_invoke_2_746;
  v2[3] = &unk_278BB0648;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __50__BTSDevicesController_startOutgoingCarPlaySetup___block_invoke_2_746(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = sharedBluetoothSettingsLogComponent(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v9 = 0;
      v5 = "successfully LE CarPlay paired";
      v6 = &v9;
LABEL_6:
      _os_log_impl(&dword_23C0F7000, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else if (v4)
  {
    v8 = 0;
    v5 = "failed to pair LE CarPlay";
    v6 = &v8;
    goto LABEL_6;
  }

  return [*(a1 + 32) setBluetoothIsBusy:0];
}

- (void)startIncomingCarPlaySetup:(id)setup andPasskey:(id)passkey
{
  v14 = *MEMORY[0x277D85DE8];
  setupCopy = setup;
  passkeyCopy = passkey;
  address = [setupCopy address];
  name = [setupCopy name];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%06u", objc_msgSend(passkeyCopy, "unsignedIntValue")];
  v10 = sharedBluetoothSettingsLogComponent(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = setupCopy;
    _os_log_impl(&dword_23C0F7000, v10, OS_LOG_TYPE_DEFAULT, "CarPlay setup for classic device, %@", buf, 0xCu);
  }

  objc_initWeak(buf, setupCopy);
  objc_copyWeak(&v11, buf);
  CRConfirmAndContinueBluetoothClassicPairing();
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __61__BTSDevicesController_startIncomingCarPlaySetup_andPasskey___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__BTSDevicesController_startIncomingCarPlaySetup_andPasskey___block_invoke_2;
  block[3] = &unk_278BB05F8;
  v8 = a2;
  block[4] = *(a1 + 32);
  v7 = WeakRetained;
  v5 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __61__BTSDevicesController_startIncomingCarPlaySetup_andPasskey___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = sharedBluetoothSettingsLogComponent(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v3 = "successfully classic CarPlay paired";
      v4 = &v10;
LABEL_6:
      _os_log_impl(&dword_23C0F7000, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) address];
    [v5 reloadCellForSpecifierID:v6];

    v2 = sharedBluetoothSettingsLogComponent(v7);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v3 = "failed to pair classic CarPlay";
      v4 = &v9;
      goto LABEL_6;
    }
  }

  return [*(a1 + 32) setBluetoothIsBusy:0];
}

- (BOOL)isLEAudioLiveOnEnabled
{
  if (isLEAudioLiveOnEnabled_onceTokenLEAudio != -1)
  {
    [BTSDevicesController isLEAudioLiveOnEnabled];
  }

  return isLEAudioLiveOnEnabled_flagExists & isLEAudioLiveOnEnabled_osFeatureLEAudioEnabled & 1;
}

void __46__BTSDevicesController_isLEAudioLiveOnEnabled__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = CFPreferencesCopyAppValue(@"LE", @"com.apple.MobileBluetooth.debug");
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = [v0 objectForKey:@"LEAudioLiveOnEnable"];
      isLEAudioLiveOnEnabled_flagExists = v1 != 0;
    }
  }

  v2 = _os_feature_enabled_impl();
  isLEAudioLiveOnEnabled_osFeatureLEAudioEnabled = v2;
  v3 = sharedBluetoothSettingsLogComponent(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109376;
    v4[1] = isLEAudioLiveOnEnabled_flagExists;
    v5 = 1024;
    v6 = isLEAudioLiveOnEnabled_osFeatureLEAudioEnabled;
    _os_log_impl(&dword_23C0F7000, v3, OS_LOG_TYPE_DEFAULT, "LEAudio - liveOnEnabled: %d, featureEnabled: %d", v4, 0xEu);
  }
}

- (void)markLEAudioDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  v6 = [(BTSDevicesController *)self specifierForID:identifier];

  if (v6)
  {
    v8 = sharedBluetoothSettingsLogComponent(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_23C0F7000, v8, OS_LOG_TYPE_DEFAULT, "Mark LEAudio device", v11, 2u);
    }

    name = [deviceCopy name];
    v10 = [@"[LEAudio]" stringByAppendingString:name];
    [v6 setName:v10];
  }
}

- (BOOL)BOOLFromBluetoothPreferences:(id)preferences
{
  keyExistsAndHasValidFormat = 0;
  preferencesCopy = preferences;
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(preferencesCopy, @"com.apple.BTServer", &keyExistsAndHasValidFormat);

  if (AppBooleanValue)
  {
    v5 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (void)migrateHKPairedHealthDevices
{
  if (_os_feature_enabled_impl())
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults persistentDomainForName:@"com.apple.bluetooth.settings"];
    v5 = [v4 objectForKey:@"HRM_MIGRATION_COMPLETE"];
    if (([v5 isEqualToString:@"1"] & 1) == 0)
    {
      if ([MEMORY[0x277CCD4D8] isHealthDataAvailable])
      {
        objc_initWeak(&location, self);
        healthKitStore = self->_healthKitStore;
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke;
        v7[3] = &unk_278BB06C0;
        objc_copyWeak(&v10, &location);
        v8 = v4;
        v9 = standardUserDefaults;
        [(HKHealthStore *)healthKitStore healthPeripheralsWithFilter:1 handler:v7];

        objc_destroyWeak(&v10);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_2;
  v5[3] = &unk_278BB0698;
  objc_copyWeak(&v9, a1 + 6);
  v6 = v3;
  v7 = a1[4];
  v8 = a1[5];
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v9);
}

void __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 56));
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = a1;
    obj = *(a1 + 32);
    v4 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v31;
      v26 = *MEMORY[0x277CCCB90];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v31 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v30 + 1) + 8 * i);
          v9 = v3[211];
          v10 = [v8 identifier];
          v38 = v10;
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
          v12 = [v9 retrievePeripheralsWithIdentifiers:v11];
          v13 = [v12 firstObject];

          if (v13)
          {
            [v13 tag:v26];
            [v13 setCustomProperty:@"Fitness" value:@"1"];
            v15 = v3[212];
            v16 = [v8 identifier];
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_775;
            v27[3] = &unk_278BB0670;
            v27[4] = v8;
            v28 = v13;
            v29 = v3;
            [v15 getEnabledStatusForPeripheral:v16 withCompletion:v27];
          }

          else
          {
            v17 = sharedBluetoothSettingsLogComponent(v14);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_2_cold_1(v36, v8, &v37, v17);
            }
          }
        }

        v5 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v5);
    }

    v18 = [*(v24 + 40) mutableCopy];
    [v18 setObject:@"1" forKey:@"HRM_MIGRATION_COMPLETE"];
    v19 = *(v24 + 48);
    v20 = [v18 copy];
    [v19 setPersistentDomain:v20 forName:@"com.apple.bluetooth.settings"];

    v22 = sharedBluetoothSettingsLogComponent(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [*(v24 + 32) count];
      *buf = 134217984;
      v35 = v23;
      _os_log_impl(&dword_23C0F7000, v22, OS_LOG_TYPE_DEFAULT, "HRM migration complete. Migrated %lu devices", buf, 0xCu);
    }
  }
}

void __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_775(uint64_t a1, int a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sharedBluetoothSettingsLogComponent(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_775_cold_1(a1);
    }

    v5 = *(a1 + 40);
    v6 = @"1";
  }

  else
  {
    v5 = *(a1 + 40);
    if (a2)
    {
      v6 = @"1";
    }

    else
    {
      v6 = @"0";
    }
  }

  [v5 setCustomProperty:@"UpdateHealth" value:v6];
  v7 = *(a1 + 48);
  v8 = v7[212];
  v9 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_779;
  v10[3] = &unk_278BB0670;
  v10[4] = v9;
  v11 = v7;
  v12 = *(a1 + 40);
  [v8 removeHealthServicePairing:v9 withCompletion:v10];
}

void __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_779(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothSettingsLogComponent(a1);
  v6 = v5;
  if (a3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_779_cold_1(a1);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) identifier];
      v8 = [v7 UUIDString];
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "Successfully migrated HRM device from HK to BT for identifier %@", buf, 0xCu);
    }

    v9 = [*(a1 + 40) _getDeviceForPeripheral:*(a1 + 48)];
    v10 = v9;
    if (v9)
    {
      [v9 setHealthDevice:1];
      [*(*(a1 + 40) + 1704) addObject:v10];
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_780;
    v11[3] = &unk_278BB0318;
    v12 = *(a1 + 40);
    v13 = v10;
    v6 = v10;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }
}

void __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_780(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + *MEMORY[0x277D3FC48]))
  {
    v3 = *(v1 + 1520);
    v4 = [*(a1 + 40) identifier];
    v5 = [v3 objectForKey:v4];

    if (!v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);

      [v6 _addDevice:v7];
    }
  }
}

- (id)_headphoneSettingsControllerFor:(id)for
{
  forCopy = for;
  modernSettingsUIFFEnabled = [MEMORY[0x277D0FB80] modernSettingsUIFFEnabled];
  if (modernSettingsUIFFEnabled)
  {
    userInfo = [forCopy userInfo];
    v6 = [userInfo objectForKeyedSubscript:@"bt-device"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [userInfo objectForKeyedSubscript:@"bt-device"];

      if (v7)
      {
        device = [v7 device];
        if ([device isGenuineAirPods])
        {
          device2 = [v7 device];
          isAppleAudioDevice = [device2 isAppleAudioDevice];

          if (isAppleAudioDevice)
          {
            device3 = [v7 device];
            address = [device3 address];
            v15 = [address stringByReplacingOccurrencesOfString:@":" withString:@"-"];

            mEMORY[0x277D0FC08] = [MEMORY[0x277D0FC08] shared];
            connectedHeadphones = [mEMORY[0x277D0FC08] connectedHeadphones];
            v18 = [connectedHeadphones objectForKeyedSubscript:v15];

            v19 = [objc_alloc(MEMORY[0x277D0FB78]) initWithHeadphoneDevice:v18 btsDevice:v7];
            deviceKey = [MEMORY[0x277D0FB78] deviceKey];
            [userInfo setObject:v19 forKey:deviceKey];

            [forCopy setUserInfo:userInfo];
            v21 = [MEMORY[0x277D0FB80] controllerForSpecifier:forCopy];
            [forCopy setTarget:v21];

LABEL_18:
            goto LABEL_19;
          }
        }

        else
        {
        }

        v22 = sharedBluetoothSettingsLogComponent(v12);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [BTSDevicesController _headphoneSettingsControllerFor:];
        }

LABEL_17:
        v21 = 0;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v7 = sharedBluetoothSettingsLogComponent(v8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BTSDevicesController _headphoneSettingsControllerFor:];
    }

    goto LABEL_17;
  }

  userInfo = sharedBluetoothSettingsLogComponent(modernSettingsUIFFEnabled);
  if (os_log_type_enabled(userInfo, OS_LOG_TYPE_ERROR))
  {
    [BTSDevicesController _headphoneSettingsControllerFor:];
  }

  v21 = 0;
LABEL_19:

  return v21;
}

- (void)init
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __28__BTSDevicesController_init__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)authenticationRequestHandler:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __51__BTSDevicesController_pairingAgent_peerDidUnpair___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  v1 = [OUTLINED_FUNCTION_8(v0) identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)peripheral:didDiscoverServices:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)peripheral:didDiscoverServices:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = v0;
  _os_log_debug_impl(&dword_23C0F7000, v1, OS_LOG_TYPE_DEBUG, "Device %@ supports health service(s): %@", v2, 0x16u);
}

- (void)peripheral:didDiscoverServices:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10(&dword_23C0F7000, v0, v1, "Pairing HRM device: %@", v2);
}

void __55__BTSDevicesController_peripheral_didDiscoverServices___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)_getDeviceForPeripheral:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v6 = [v1 name];
  [v0 isCTKDDevice];
  [v0 isManagedByWallet];
  [v0 isManagedByAliroWallet];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x1Eu);
}

- (void)_getDeviceForCTKDPeripheral:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_addDeviceSpecifier:withDevice:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  [v0 isMyDevice];
  v6 = [v1 name];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x20u);
}

- (void)healthDeviceUnregisteredHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10(&dword_23C0F7000, v0, v1, "Unregistering health device %@", v2);
}

void __44__BTSDevicesController__updateHealthDevices__block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_updateDevicePosition:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v2, v3, v4, v5, v6);
}

- (void)_updateDevicePosition:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)tableView:accessoryButtonTappedForRowWithIndexPath:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)tableView:(void *)a1 didSelectRowAtIndexPath:.cold.1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v2, v3, v4, v5, v6);
}

- (void)tableView:viewForFooterInSection:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)tableView:viewForFooterInSection:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_2_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 identifier];
  v8 = [v7 UUIDString];
  *a1 = 138412290;
  *a3 = v8;
  _os_log_error_impl(&dword_23C0F7000, a4, OS_LOG_TYPE_ERROR, "Failed to migrate HealthKit HRM with identifier %@. CBPeripheral does not exist", a1, 0xCu);
}

void __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_775_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_8(a1) identifier];
  v2 = [v1 UUIDString];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __52__BTSDevicesController_migrateHKPairedHealthDevices__block_invoke_779_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_8(a1) identifier];
  v2 = [v1 UUIDString];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_headphoneSettingsControllerFor:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_headphoneSettingsControllerFor:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_headphoneSettingsControllerFor:.cold.3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end