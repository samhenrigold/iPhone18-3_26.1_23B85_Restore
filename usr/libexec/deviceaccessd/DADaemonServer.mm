@interface DADaemonServer
- (BOOL)_checkAppAccessInfoExpired;
- (BOOL)_checkDevicesForAppDataURL:(id)l;
- (BOOL)_necpSignAddressEndpoint:(id)endpoint uuidBytes:(unsigned __int8)bytes[16] error:(id *)error;
- (BOOL)_necpSignHostnameEndpoint:(id)endpoint uuidBytes:(unsigned __int8)bytes[16] error:(id *)error;
- (BOOL)_saveAccessoryDevice:(id)device oldDeviceReference:(id)reference bundleID:(id)d existingOptions:(unint64_t)options removalType:(int64_t)type error:(id *)error;
- (BOOL)alwaysConfirmBeforeAccessoryRemoval;
- (BOOL)checkAppHasMediaDeviceDiscoveryExtension:(id)extension;
- (BOOL)deviceRequiresMultiTechDiscovery:(id)discovery;
- (BOOL)devicesPresentWithAppID:(id)d;
- (BOOL)modifyAccessoryDevice:(id)device session:(id)session settings:(id)settings error:(id *)error;
- (BOOL)modifyDeviceIdentifier:(id)identifier session:(id)session settings:(id)settings error:(id *)error;
- (BOOL)revokeBluetoothGlobalTCCIfNeededForDeviceAppAccessInfo:(id)info device:(id)device;
- (BOOL)saveDevice:(id)device session:(id)session allowCreate:(BOOL)create error:(id *)error;
- (BOOL)saveDeviceAccessoryServiceInfo:(id)info device:(id)device error:(id *)error;
- (BOOL)setPartialIPsForAppBundleID:(id)d partialIPs:(id)ps error:(id *)error;
- (BOOL)updateAppAccessInfo:(id)info accessoryDevice:(id)device removalType:(int64_t)type error:(id *)error;
- (DADaemonServer)init;
- (id)_deauthorizeWiFiAwareDeviceFor:(id)for withAppPairingID:(unint64_t)d;
- (id)_findDADeviceWithBTIdentifier:(id)identifier;
- (id)_findDADeviceWithBTPeripheral:(id)peripheral;
- (id)_findDADeviceWithMigrationConfig:(id)config;
- (id)_findExistingDeviceWithSSID:(id)d bundleID:(id)iD;
- (id)_getAdvName:(id)name;
- (id)_necpUUIDForAppID:(id)d deviceID:(id)iD uuidBytes:(unsigned __int8)bytes[16];
- (id)_parseDADiscoveryConfiguration:(id)configuration;
- (id)_reauthorizeWiFiAwareDeviceFor:(id)for withAppPairingID:(unint64_t)d;
- (id)_saveDeviceAppAccessInfo:(id)info device:(id)device error:(id *)error;
- (id)_statefulDevicesForAppID:(id)d;
- (id)_uninstallWiFiAwareDeviceFor:(id)for appPairingID:(unint64_t)d;
- (id)_updateStateForDiscoveryDeviceID:(id)d state:(int64_t)state appID:(id)iD referenceDevice:(id)device;
- (id)_updateWiFiAwareDeviceNameFor:(id)for appPairingID:(unint64_t)d newName:(id)name;
- (id)addDiscovery:(id)discovery;
- (id)appAccessInfoForDeviceID:(id)d appID:(id)iD;
- (id)appBundleInfoAccessoryDiscoveryOptions:(id)options;
- (id)descriptionWithLevel:(int)level;
- (id)findAlreadyDiscoveredDeviceForMultiTech:(id)tech appID:(id)d bluetoothIdentifier:(id)identifier wifiAwareOTAName:(id)name;
- (id)findExistingDeviceForUpgrade:(id)upgrade appID:(id)d;
- (id)generateImageURLForDevice:(id)device;
- (id)getAuthorizedDevices:(id)devices;
- (id)getDevicesWithFlags:(unint64_t)flags appID:(id)d;
- (id)getPartialIPsWithAppBundleID:(id)d error:(id *)error;
- (id)xpcListenerEndpoint;
- (int64_t)_applicationHasBluetoothGlobalTCC:(id)c;
- (int64_t)_updateDeviceStateForBluetooth:(id)bluetooth device:(id)device;
- (int64_t)_updateDeviceStateForWiFiAware:(id)aware device:(id)device oldState:(int64_t)state;
- (int64_t)_updateDeviceStateForWifi:(id)wifi currentState:(int64_t)state;
- (int64_t)applicationHasBluetoothGlobalTCC:(id)c;
- (unint64_t)_authorizeWiFiAwareDeviceFor:(id)for pairingKeyStoreID:(id)d device:(id)device error:(id *)error;
- (unint64_t)appBundleInfoAccessoryOptions:(id)options;
- (unint64_t)currentDeviceCapabilities;
- (unsigned)_getAppearance:(id)appearance;
- (void)_activate;
- (void)_addSSDPDatatoNWEndpoint:(id)endpoint appID:(id)d;
- (void)_addTXTRecordToNWEndpoint:(id)endpoint appID:(id)d;
- (void)_applicationsDidInstall:(id)install;
- (void)_applicationsDidUninstall:(id)uninstall;
- (void)_armBTScanTimer;
- (void)_authorizeWiFiAwareDeviceFor:(id)for pairingKeyStoreID:(id)d device:(id)device completionHandler:(id)handler;
- (void)_checkAndReportLostBTDevices;
- (void)_checkAppAccessInfo;
- (void)_checkDevices;
- (void)_checkDevicesForAllApps;
- (void)_cleanupBTDiscoveryIfPossible:(id)possible;
- (void)_cleanupWiFiDiscoveryIfPossible:(id)possible;
- (void)_deauthorizeWiFiAwareDeviceFor:(id)for withAppPairingID:(unint64_t)d completionHandler:(id)handler;
- (void)_discoveryEvent:(id)event appID:(id)d;
- (void)_forgetBluetoothDevice:(id)device;
- (void)_forgetWiFiAwareDevice:(id)device;
- (void)_forgetWiFiDevice:(id)device;
- (void)_invalidate;
- (void)_keychainMarkDeviceForRestoreOnSameDevice;
- (void)_keychainVerificationDevicesRestoredOnSameDevice;
- (void)_necpCleanupIfNeeded;
- (void)_necpRemoveUUIDsForAppID:(id)d deviceID:(id)iD;
- (void)_necpSignEndpointForDevice:(id)device appID:(id)d;
- (void)_necpUpdateUUIDForAppID:(id)d device:(id)device;
- (void)_necpUpdateUUIDsWithBlock:(id)block;
- (void)_necpUpdateValueStrings:(id)strings;
- (void)_persistBluetoothDevice:(id)device device:(id)a4 requirePairing:(BOOL)pairing pairWithCTKD:(BOOL)d;
- (void)_persistWiFiAwareDevice:(id)device device:(id)a4 pairingID:(unint64_t)d bundleID:(id)iD;
- (void)_prefsChanged;
- (void)_reauthorizeWiFiAwareDeviceFor:(id)for withAppPairingID:(unint64_t)d completionHandler:(id)handler;
- (void)_refreshRegistrationForBTConnectionEvents;
- (void)_removeAllDevicesAndAppAccess;
- (void)_removeAllWiFiAwareDevicesFor:(id)for completionHandler:(id)handler;
- (void)_reportDeviceAccessoryServicesChanged:(id)changed;
- (void)_reportDeviceChanged:(id)changed appID:(id)d discovery:(BOOL)discovery;
- (void)_reportDeviceConnectionStatusChanged:(id)changed;
- (void)_reportDevicesMigratedEvent:(id)event appID:(id)d;
- (void)_reportDevicesPresentChanged:(BOOL)changed appID:(id)d;
- (void)_reportDevicesPresentChanged:(BOOL)changed migrated:(BOOL)migrated appID:(id)d;
- (void)_reportDiscoveredBTDevice:(id)device advertisementData:(id)data RSSI:(id)i AppID:(id)d DADaemonDiscovery:(id)discovery DADiscovery:(id)aDiscovery config:(id)config;
- (void)_reportDiscoveryEvent:(id)event appID:(id)d;
- (void)_reportRemovedDevice:(id)device appID:(id)d discovery:(BOOL)discovery;
- (void)_saveAppDataDict:(id)dict fileURL:(id)l;
- (void)_scheduleCheckAppAccessInfo;
- (void)_scheduleCheckDevices;
- (void)_setupBTPairingManager;
- (void)_setupWiFiScanner;
- (void)_startBTScan;
- (void)_stopBTScan;
- (void)_uninstallWiFiAwareDeviceFor:(id)for appPairingID:(unint64_t)d completionHandler:(id)handler;
- (void)_updateAppInfo:(id)info existingInfoPlistOptions:(unint64_t)options;
- (void)_updateBluetoothScannerIfNeeded;
- (void)_updateDeviceStateTimer;
- (void)_updateLocalDeviceCapabilties;
- (void)_updateLocalNetworkScannerIfNeeded;
- (void)_updateWiFiAwareDeviceNameFor:(id)for appPairingID:(unint64_t)d newName:(id)name completionHandler:(id)handler;
- (void)_updateWiFiDevice:(id)device bundleID:(id)d;
- (void)_updateWiFiManagerIfNeeded;
- (void)_xpcConnectionAccept:(id)accept;
- (void)_xpcListenerEvent:(id)event;
- (void)activate;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManagerDidUpdateState:(id)state;
- (void)connectToPairedWiFiAwarePublisherIfNeeded:(id)needed bundleID:(id)d;
- (void)dealloc;
- (void)invalidate;
- (void)removeAppsAccess:(id)access;
- (void)removeDiscovery:(id)discovery;
- (void)reportAuthorizedDevices:(id)devices;
- (void)resetWiFiIdentifier:(id)identifier;
- (void)respondToBluetoothPairingRequest:(id)request accept:(BOOL)accept pairingType:(int64_t)type passkey:(id)passkey;
- (void)respondToWiFiAwarePairingRequest:(unint64_t)request accept:(BOOL)accept pairingType:(int64_t)type passkey:(id)passkey;
- (void)runMigrationWithDiscovery:(id)discovery fromPostOnboarding:(BOOL)onboarding;
- (void)runSystemDiscovery;
- (void)runUpgradeWithDiscovery:(id)discovery;
- (void)updateAppInfo:(id)info;
- (void)updateDADevicesWithInstalledApps;
@end

@implementation DADaemonServer

- (DADaemonServer)init
{
  v12.receiver = self;
  v12.super_class = DADaemonServer;
  v2 = [(DADaemonServer *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("DADaemon", v3);
    v5 = *(v2 + 11);
    *(v2 + 11) = v4;

    *(v2 + 24) = -1;
    *(v2 + 180) = -1;
    *(v2 + 47) = -1;
    objc_storeStrong(&gDADaemonServer, v2);
    [v2 _updateLocalDeviceCapabilties];
    v2[296] = 0;
    v6 = *(v2 + 33);
    *(v2 + 33) = 0;

    v7 = *(v2 + 35);
    *(v2 + 35) = 0;

    v8 = *(v2 + 38);
    *(v2 + 38) = 0;

    v9 = *(v2 + 32);
    *(v2 + 32) = 0;

    v10 = v2;
  }

  return v2;
}

- (void)dealloc
{
  necpFD = self->_necpFD;
  if ((necpFD & 0x80000000) == 0)
  {
    if (close(necpFD) && *__error())
    {
      __error();
    }

    self->_necpFD = -1;
  }

  expiredDeviceChecktransaction = self->_expiredDeviceChecktransaction;
  self->_expiredDeviceChecktransaction = 0;

  v5.receiver = self;
  v5.super_class = DADaemonServer;
  [(DADaemonServer *)&v5 dealloc];
}

- (id)descriptionWithLevel:(int)level
{
  levelCopy = level;
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = sub_100002EE4;
  v89 = sub_100002EF4;
  v90 = 0;
  obj = 0;
  mach_continuous_time();
  UpTicksToSeconds();
  v5 = CUPrintDuration64();
  mach_absolute_time();
  UpTicksToSeconds();
  v6 = CUPrintDuration64();
  NSAppendPrintF(&obj, "Up %@ (awake %@)", v5, v6);
  objc_storeStrong(&v90, obj);

  if (self->_deviceStateTimer)
  {
    v7 = (v86 + 5);
    v83 = v86[5];
    NSAppendPrintF(&v83, ", DeviceStateTimer yes");
    objc_storeStrong(v7, v83);
  }

  v8 = (v86 + 5);
  v82 = v86[5];
  NSAppendPrintF(&v82, "\n");
  objc_storeStrong(v8, v82);
  v50 = [(DADaemonServer *)self getDevicesWithFlags:8 appID:0];
  v9 = [v50 count];
  v10 = [v50 count];
  v11 = v10 != 0;
  if (v10)
  {
    v12 = (v86 + 5);
    v81 = v86[5];
    NSAppendPrintF(&v81, "\n");
    objc_storeStrong(v12, v81);
    v13 = (v86 + 5);
    v80 = v86[5];
    NSAppendPrintF(&v80, "== Accessories: %d ==\n", v9);
    objc_storeStrong(v13, v80);
    v78[0] = _NSConcreteStackBlock;
    v78[1] = 3221225472;
    v78[2] = sub_100002EFC;
    v78[3] = &unk_100058B08;
    v78[4] = &v85;
    levelCopy2 = level;
    [v50 enumerateObjectsUsingBlock:v78];
    v14 = (v86 + 5);
    v77 = v86[5];
    NSAppendPrintF(&v77, "\n");
    objc_storeStrong(v14, v77);
  }

  v49 = [(DADaemonServer *)self getDevicesWithFlags:1024 appID:0];
  v15 = [v49 count];
  if (v15)
  {
    if (!v10)
    {
      v16 = (v86 + 5);
      v76 = v86[5];
      NSAppendPrintF(&v76, "\n");
      objc_storeStrong(v16, v76);
    }

    v17 = (v86 + 5);
    v75 = v86[5];
    NSAppendPrintF(&v75, "== App Session Paired: %d ==\n", v15);
    objc_storeStrong(v17, v75);
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_100002F6C;
    v73[3] = &unk_100058B08;
    v73[4] = &v85;
    levelCopy3 = level;
    [v49 enumerateObjectsUsingBlock:v73];
    v18 = (v86 + 5);
    v72 = v86[5];
    NSAppendPrintF(&v72, "\n");
    objc_storeStrong(v18, v72);
    v11 = 1;
  }

  v19 = [(NSMutableDictionary *)self->_discoveryMap count];
  if (v19)
  {
    if (!v11)
    {
      v20 = (v86 + 5);
      v71 = v86[5];
      NSAppendPrintF(&v71, "\n");
      objc_storeStrong(v20, v71);
    }

    v21 = (v86 + 5);
    v70 = v86[5];
    NSAppendPrintF(&v70, "== Discovery: %d ==\n", v19);
    objc_storeStrong(v21, v70);
    discoveryMap = self->_discoveryMap;
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100002FDC;
    v69[3] = &unk_100058B30;
    v69[4] = &v85;
    [(NSMutableDictionary *)discoveryMap enumerateKeysAndObjectsUsingBlock:v69];
    v23 = (v86 + 5);
    v68 = v86[5];
    NSAppendPrintF(&v68, "\n");
    objc_storeStrong(v23, v68);
    v11 = 1;
  }

  v24 = [(NSMutableSet *)self->_xpcConnections count];
  if (v24)
  {
    if (!v11)
    {
      v25 = (v86 + 5);
      v67 = v86[5];
      NSAppendPrintF(&v67, "\n");
      objc_storeStrong(v25, v67);
    }

    v26 = (v86 + 5);
    v66 = v86[5];
    NSAppendPrintF(&v66, "== XPC Cnx: %d ==\n", v24);
    objc_storeStrong(v26, v66);
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v62 = 0u;
    v27 = self->_xpcConnections;
    v28 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v62 objects:v92 count:16];
    if (v28)
    {
      v29 = *v63;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v63 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = (v86 + 5);
          v61 = v86[5];
          v32 = CUDescriptionWithLevel();
          NSAppendPrintF(&v61, "%@", v32);
          objc_storeStrong(v31, v61);

          if (levelCopy >= 0xB)
          {
            v33 = (v86 + 5);
            v60 = v86[5];
            NSAppendPrintF(&v60, "\n");
            objc_storeStrong(v33, v60);
          }
        }

        v28 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v62 objects:v92 count:16];
      }

      while (v28);
    }

    v34 = (v86 + 5);
    v59 = v86[5];
    NSAppendPrintF(&v59, "\n");
    objc_storeStrong(v34, v59);
    v11 = 1;
  }

  if (levelCopy <= 0x14)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v35 = CFPrefs_CopyKeys();
    v36 = [v35 countByEnumeratingWithState:&v55 objects:v91 count:16];
    if (!v36)
    {
LABEL_40:

      goto LABEL_41;
    }

    v37 = 0;
    v38 = *v56;
    do
    {
      for (j = 0; j != v36; j = j + 1)
      {
        if (*v56 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v55 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v11)
          {
            v41 = (v86 + 5);
            v54 = v86[5];
            NSAppendPrintF(&v54, "\n");
            objc_storeStrong(v41, v54);
          }

          v42 = CFPrefs_CopyTypedValue();
          v43 = (v86 + 5);
          v53 = v86[5];
          v44 = CUPrintNSObjectOneLine();
          NSAppendPrintF(&v53, "Pref: '%@' = '%@'\n", v40, v44);
          objc_storeStrong(v43, v53);

          ++v37;
          v11 = 1;
        }
      }

      v36 = [v35 countByEnumeratingWithState:&v55 objects:v91 count:16];
    }

    while (v36);

    if (v37 >= 1)
    {
      v45 = v86;
      v52 = v86[5];
      NSAppendPrintF(&v52, "\n");
      v46 = v52;
      v35 = v45[5];
      v45[5] = v46;
      goto LABEL_40;
    }
  }

LABEL_41:
  v47 = v86[5];

  _Block_object_dispose(&v85, 8);

  return v47;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003104;
  block[3] = &unk_100058B58;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  self->_startTicksAwake = mach_absolute_time();
  self->_startTicksFull = mach_continuous_time();
  LogSetAppID();
  LogControl();
  if (!self->_xpcListener)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.DeviceAccess.xpc", self->_dispatchQueue, 1uLL);
    xpcListener = self->_xpcListener;
    self->_xpcListener = mach_service;

    v5 = self->_xpcListener;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100001230;
    handler[3] = &unk_100058B80;
    handler[4] = self;
    xpc_connection_set_event_handler(v5, handler);
    xpc_connection_activate(self->_xpcListener);
  }

  if (self->_prefsChangedNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100003594;
    v19[3] = &unk_100058BA8;
    v19[4] = self;
    notify_register_dispatch("com.apple.DeviceAccess.prefsChanged", &self->_prefsChangedNotifyToken, dispatchQueue, v19);
  }

  if (self->_resetPrivacySettingsToken == -1)
  {
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100030DD8();
    }

    v7 = self->_dispatchQueue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000035FC;
    v18[3] = &unk_100058BA8;
    v18[4] = self;
    notify_register_dispatch("com.apple.Preferences.ResetPrivacyWarningsNotification", &self->_resetPrivacySettingsToken, v7, v18);
  }

  if (self->_resetNetworkSettingsToken == -1)
  {
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100030E0C();
    }

    v8 = self->_dispatchQueue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100003664;
    v17[3] = &unk_100058BA8;
    v17[4] = self;
    notify_register_dispatch("com.apple.Preferences.ResetNetworkSettingsNotification", &self->_resetNetworkSettingsToken, v8, v17);
  }

  if (!self->_stateHandler)
  {
    v16[5] = _NSConcreteStackBlock;
    v16[6] = 3221225472;
    v16[7] = sub_1000036D8;
    v16[8] = &unk_100058C10;
    v16[9] = self;
    self->_stateHandler = os_state_add_handler();
  }

  if (!self->_systemMonitor)
  {
    v9 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v9;

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000036F4;
    v16[3] = &unk_100058B58;
    v16[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setFirstUnlockHandler:v16];
    v11 = self->_systemMonitor;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100003730;
    v15[3] = &unk_100058B58;
    v15[4] = self;
    [(CUSystemMonitor *)v11 activateWithCompletion:v15];
  }

  [(DADaemonServer *)self _prefsChanged];
  v12 = +[LSApplicationWorkspace defaultWorkspace];
  [v12 addObserver:self];

  [(DADaemonServer *)self updateDADevicesWithInstalledApps];
  if (!self->_cbCentralManager)
  {
    v13 = [[CBCentralManager alloc] initWithDelegate:self queue:self->_dispatchQueue options:0];
    cbCentralManager = self->_cbCentralManager;
    self->_cbCentralManager = v13;
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", self->_dispatchQueue, &stru_100058C50);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003818;
  block[3] = &unk_100058B58;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  v3 = self->_xpcConnections;
  xpcConnections = self->_xpcConnections;
  self->_xpcConnections = 0;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v22 + 1) + 8 * i) invalidate];
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)v5 removeAllObjects];
  [(NSMutableDictionary *)self->_discoveryMap enumerateKeysAndObjectsUsingBlock:&stru_100058C90];
  [(NSMutableDictionary *)self->_discoveryMap removeAllObjects];
  [(DADaemonServer *)self _necpCleanupIfNeeded];
  [(CBCentralManager *)self->_cbCentralManager stopScan];
  [(DADaemonServer *)self _cleanupWiFiDiscoveryIfPossible:0];
  v10 = +[LSApplicationWorkspace defaultWorkspace];
  [v10 removeObserver:self];

  checkDevicesTimer = self->_checkDevicesTimer;
  if (checkDevicesTimer)
  {
    v12 = checkDevicesTimer;
    dispatch_source_cancel(v12);
    v13 = self->_checkDevicesTimer;
    self->_checkDevicesTimer = 0;
  }

  deviceStateTimer = self->_deviceStateTimer;
  if (deviceStateTimer)
  {
    v15 = deviceStateTimer;
    dispatch_source_cancel(v15);
    v16 = self->_deviceStateTimer;
    self->_deviceStateTimer = 0;
  }

  prefsChangedNotifyToken = self->_prefsChangedNotifyToken;
  if (prefsChangedNotifyToken != -1)
  {
    notify_cancel(prefsChangedNotifyToken);
    self->_prefsChangedNotifyToken = -1;
  }

  resetPrivacySettingsToken = self->_resetPrivacySettingsToken;
  if (resetPrivacySettingsToken != -1)
  {
    notify_cancel(resetPrivacySettingsToken);
    self->_resetPrivacySettingsToken = -1;
  }

  if (self->_stateHandler)
  {
    os_state_remove_handler();
    self->_stateHandler = 0;
  }

  xpcListener = self->_xpcListener;
  if (xpcListener)
  {
    v20 = xpcListener;
    xpc_connection_cancel(v20);
    v21 = self->_xpcListener;
    self->_xpcListener = 0;
  }

  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100030EF0();
  }
}

- (unint64_t)currentDeviceCapabilities
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  localDeviceCapabilities = selfCopy->_localDeviceCapabilities;
  objc_sync_exit(selfCopy);

  return localDeviceCapabilities;
}

- (void)_updateLocalDeviceCapabilties
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_localDeviceCapabilities = 0;
  objc_sync_exit(selfCopy);

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("DADaemon.DeviceCapabilities", v3);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003C44;
  block[3] = &unk_100058B58;
  block[4] = selfCopy;
  dispatch_async(v4, block);
}

- (void)_prefsChanged
{
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefAllowAppleToAppleWiFiAware != v3)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100030F64();
    }

    self->_prefAllowAppleToAppleWiFiAware = v3;
  }

  v4 = CFPrefs_GetInt64() != 0;
  if (self->_prefAlwaysRequireAccessoryRemovalUserConfirmation != v4)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100030FBC();
    }

    self->_prefAlwaysRequireAccessoryRemovalUserConfirmation = v4;
  }

  CFPrefs_GetDouble();
  if (v5 > 0.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 60.0;
  }

  prefCheckAppAccessInfoSeconds = self->_prefCheckAppAccessInfoSeconds;
  if (v6 != prefCheckAppAccessInfoSeconds)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_19;
        }

        prefCheckAppAccessInfoSeconds = self->_prefCheckAppAccessInfoSeconds;
      }

      LogPrintF(&dword_1000603A0, "[DADaemonServer _prefsChanged]", 30, "CheckAppAccessInfoSeconds: %f -> %f", prefCheckAppAccessInfoSeconds, v6);
    }

LABEL_19:
    self->_prefCheckAppAccessInfoSeconds = v6;
    [(DADaemonServer *)self _scheduleCheckAppAccessInfo];
  }

  CFPrefs_GetDouble();
  if (v8 > 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 604800.0;
  }

  prefCheckAppSessionAccessSeconds = self->_prefCheckAppSessionAccessSeconds;
  if (v9 != prefCheckAppSessionAccessSeconds)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_28;
        }

        prefCheckAppSessionAccessSeconds = self->_prefCheckAppSessionAccessSeconds;
      }

      LogPrintF(&dword_1000603A0, "[DADaemonServer _prefsChanged]", 30, "CheckAppSessionAccessSeconds: %f -> %f", prefCheckAppSessionAccessSeconds, v9);
    }

LABEL_28:
    self->_prefCheckAppSessionAccessSeconds = v9;
    [(DADaemonServer *)self _scheduleCheckAppAccessInfo];
  }

  v11 = CFPrefs_GetInt64() != 0;
  if (self->_prefBTBlockIncomingClassicCnx != v11)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100031014();
    }

    self->_prefBTBlockIncomingClassicCnx = v11;
  }

  v12 = CFPrefs_GetInt64() != 0;
  if (self->_prefBTPairingWithMITM != v12)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10003106C();
    }

    self->_prefBTPairingWithMITM = v12;
  }

  Int64 = CFPrefs_GetInt64();
  if (Int64 >= 1)
  {
    v14 = Int64;
  }

  else
  {
    v14 = -45;
  }

  prefsBTRSSIThreshold = self->_prefsBTRSSIThreshold;
  if (v14 != prefsBTRSSIThreshold)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_47;
        }

        LODWORD(prefsBTRSSIThreshold) = self->_prefsBTRSSIThreshold;
      }

      LogPrintF(&dword_1000603A0, "[DADaemonServer _prefsChanged]", 30, "BluetoothDiscoveryRSSIThreshold: %d -> %lld", prefsBTRSSIThreshold, v14);
    }

LABEL_47:
    self->_prefsBTRSSIThreshold = v14;
  }

  CFPrefs_GetDouble();
  if (v16 > 0.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 10.0;
  }

  prefBTScanRefreshSeconds = self->_prefBTScanRefreshSeconds;
  if (v17 != prefBTScanRefreshSeconds)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_56;
        }

        prefBTScanRefreshSeconds = self->_prefBTScanRefreshSeconds;
      }

      LogPrintF(&dword_1000603A0, "[DADaemonServer _prefsChanged]", 30, "BluetoothScanRefreshSeconds: %f -> %f", prefBTScanRefreshSeconds, v17);
    }

LABEL_56:
    self->_prefBTScanRefreshSeconds = v17;
  }

  CFPrefs_GetDouble();
  if (v19 > 0.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 30.0;
  }

  prefsBTTaskTimeoutSeconds = self->_prefsBTTaskTimeoutSeconds;
  if (v20 != prefsBTTaskTimeoutSeconds)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_65;
        }

        prefsBTTaskTimeoutSeconds = self->_prefsBTTaskTimeoutSeconds;
      }

      LogPrintF(&dword_1000603A0, "[DADaemonServer _prefsChanged]", 30, "BluetoothTaskTimeoutSeconds: %f -> %f", prefsBTTaskTimeoutSeconds, v20);
    }

LABEL_65:
    self->_prefsBTTaskTimeoutSeconds = v20;
  }

  CFPrefs_GetDouble();
  if (v22 > 0.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1800.0;
  }

  prefCheckDevicesSeconds = self->_prefCheckDevicesSeconds;
  if (v23 != prefCheckDevicesSeconds)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_74;
        }

        prefCheckDevicesSeconds = self->_prefCheckDevicesSeconds;
      }

      LogPrintF(&dword_1000603A0, "[DADaemonServer _prefsChanged]", 30, "CheckDevicesSeconds: %f -> %f", prefCheckDevicesSeconds, v23);
    }

LABEL_74:
    self->_prefCheckDevicesSeconds = v23;
    [(DADaemonServer *)self _scheduleCheckDevices];
  }

  CFPrefs_GetDouble();
  v26 = 86400.0;
  if (v25 > 0.0)
  {
    v27 = v25;
  }

  else
  {
    v27 = 86400.0;
  }

  prefDeviceApprovedSeconds = self->_prefDeviceApprovedSeconds;
  if (v27 != prefDeviceApprovedSeconds)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_83;
        }

        prefDeviceApprovedSeconds = self->_prefDeviceApprovedSeconds;
      }

      LogPrintF(&dword_1000603A0, "[DADaemonServer _prefsChanged]", 30, "DeviceApprovedSeconds: %f -> %f", prefDeviceApprovedSeconds, v27);
    }

LABEL_83:
    self->_prefDeviceApprovedSeconds = v27;
    [(DADaemonServer *)self _scheduleCheckDevices];
  }

  CFPrefs_GetDouble();
  if (v29 > 0.0)
  {
    v30 = v29;
  }

  else
  {
    v30 = 30.0;
  }

  prefDeviceStateTimeoutSeconds = self->_prefDeviceStateTimeoutSeconds;
  if (v30 != prefDeviceStateTimeoutSeconds)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_92;
        }

        prefDeviceStateTimeoutSeconds = self->_prefDeviceStateTimeoutSeconds;
      }

      LogPrintF(&dword_1000603A0, "[DADaemonServer _prefsChanged]", 30, "DeviceStateTimeoutSeconds: %f -> %f", prefDeviceStateTimeoutSeconds, v30);
    }

LABEL_92:
    self->_prefDeviceStateTimeoutSeconds = v30;
    [(DADaemonServer *)self _scheduleCheckDevices];
  }

  v32 = CFPrefs_GetInt64() != 0;
  if (self->_prefEnforceApprovedExtensions != v32)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000310C4();
    }

    self->_prefEnforceApprovedExtensions = v32;
  }

  CFPrefs_GetDouble();
  if (v33 > 0.0)
  {
    v26 = v33;
  }

  prefAppPartialIPUpdateMinCadenceSeconds = self->_prefAppPartialIPUpdateMinCadenceSeconds;
  if (v26 != prefAppPartialIPUpdateMinCadenceSeconds)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_105;
        }

        prefAppPartialIPUpdateMinCadenceSeconds = self->_prefAppPartialIPUpdateMinCadenceSeconds;
      }

      LogPrintF(&dword_1000603A0, "[DADaemonServer _prefsChanged]", 30, "DAAppPartialIPUpdateMinCadenceSeconds: %f -> %f", prefAppPartialIPUpdateMinCadenceSeconds, v26);
    }

LABEL_105:
    self->_prefAppPartialIPUpdateMinCadenceSeconds = v26;
  }

  v35 = CFPrefs_GetInt64() != 0;
  if (self->_prefEnabled != v35)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10003111C();
    }

    self->_prefEnabled = v35;
  }

  if (CFPrefs_GetInt64())
  {
    v36 = IsAppleInternalBuild() != 0;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;
  if (self->_prefKeychainDisabled != v36)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100031174();
    }

    self->_prefKeychainDisabled = v37;
  }
}

- (BOOL)alwaysConfirmBeforeAccessoryRemoval
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  prefAlwaysRequireAccessoryRemovalUserConfirmation = selfCopy->_prefAlwaysRequireAccessoryRemovalUserConfirmation;
  objc_sync_exit(selfCopy);

  return prefAlwaysRequireAccessoryRemovalUserConfirmation;
}

- (unint64_t)appBundleInfoAccessoryOptions:(id)options
{
  optionsCopy = options;
  v4 = [LSBundleRecord bundleRecordWithBundleIdentifier:optionsCopy allowPlaceholder:1 error:0];
  infoDictionary = [v4 infoDictionary];
  v6 = [infoDictionary objectForKey:@"NSAccessorySetupKitSupports" ofClass:objc_opt_class()];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v10 |= [v13 isEqualToString:{@"Bluetooth", v15}];
        if ([v13 isEqualToString:@"WiFi"])
        {
          v10 |= 2uLL;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000311CC();
  }

  return v10;
}

- (id)appBundleInfoAccessoryDiscoveryOptions:(id)options
{
  optionsCopy = options;
  v5 = +[NSMutableDictionary dictionary];
  if ([(DADaemonServer *)self appBundleInfoAccessoryOptions:optionsCopy])
  {
    v6 = [LSBundleRecord bundleRecordWithBundleIdentifier:optionsCopy allowPlaceholder:1 error:0];
    v7 = [v5 copy];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000049C8;
  v7[3] = &unk_100058CB8;
  v7[4] = self;
  v8 = installCopy;
  v6 = installCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_applicationsDidInstall:(id)install
{
  installCopy = install;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100031224(installCopy);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004A94;
  v5[3] = &unk_100058CE0;
  v5[4] = self;
  [installCopy enumerateObjectsUsingBlock:v5];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004BFC;
  v7[3] = &unk_100058CB8;
  v7[4] = self;
  v8 = uninstallCopy;
  v6 = uninstallCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000312A4(uninstallCopy);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004CFC;
  v6[3] = &unk_100058D08;
  v7 = objc_opt_new();
  v5 = v7;
  [uninstallCopy enumerateObjectsUsingBlock:v6];
  [(DADaemonServer *)self removeAppsAccess:v5];
}

- (void)_keychainMarkDeviceForRestoreOnSameDevice
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100002EE4;
  v14 = sub_100002EF4;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005010;
  v9[3] = &unk_100058D30;
  v9[4] = &v10;
  v3 = objc_retainBlock(v9);
  if (self->_prefKeychainDisabled)
  {
    if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000603A0, "[DADaemonServer _keychainMarkDeviceForRestoreOnSameDevice]", 90, "### Keychain disabled, skipping marking keychain");
    }
  }

  else
  {
    v4 = objc_alloc_init(CUKeychainItem);
    [v4 setAccessGroup:@"com.apple.DeviceAccess"];
    [v4 setAccessibleType:6];
    v5 = [NSString stringWithFormat:@"%@-%@", @"com.apple.DeviceAccess", @"DADaemon-SameDevice"];
    [v4 setIdentifier:v5];

    [v4 setInvisible:1];
    [v4 setSyncType:1];
    [v4 setType:@"DADaemon-SameDevice"];
    if (dword_1000603A0 <= 40 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000603A0, "[DADaemonServer _keychainMarkDeviceForRestoreOnSameDevice]", 40, "### Saving restore marker in keychain");
    }

    v6 = objc_alloc_init(CUKeychainManager);
    v7 = (v11 + 5);
    obj = v11[5];
    [v6 addOrUpdateOrReAddItem:v4 flags:1 logCategory:&dword_1000603A0 logLabel:@"DAKeychain" error:&obj];
    objc_storeStrong(v7, obj);
    notify_post("com.apple.DeviceAccess.authorizationUpdated");
  }

  (v3[2])(v3);

  _Block_object_dispose(&v10, 8);
}

- (void)_keychainVerificationDevicesRestoredOnSameDevice
{
  if (self->_prefKeychainDisabled)
  {
    sub_100031424(self, a2, v2);
  }

  else
  {
    firstUnlocked = [(CUSystemMonitor *)self->_systemMonitor firstUnlocked];
    if (firstUnlocked)
    {
      v6 = objc_alloc_init(CUKeychainItem);
      [v6 setAccessGroup:@"com.apple.DeviceAccess"];
      v7 = [NSString stringWithFormat:@"%@-%@", @"com.apple.DeviceAccess", @"DADaemon-SameDevice"];
      [v6 setIdentifier:v7];

      [v6 setSyncType:1];
      [v6 setType:@"DADaemon-SameDevice"];
      v8 = objc_alloc_init(CUKeychainManager);
      v22[0] = 0;
      v9 = [v8 copyItemsMatchingItem:v6 flags:1 error:v22];
      v10 = v22[0];
      v11 = v10;
      if (v9 || [v10 code] != -25300)
      {
        sub_100031344();
        v15 = v22[1];
      }

      else
      {
        v12 = +[NSFileManager defaultManager];
        v13 = +[NSFileManager defaultManager];
        v21 = v11;
        v14 = [v13 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:&v21];
        v15 = v21;

        v16 = [v14 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
        v17 = [v16 URLByAppendingPathComponent:@"AccessorySetup" isDirectory:1];
        v20 = 0;
        v18 = [v12 removeItemAtURL:v17 error:&v20];
        v19 = v20;
        if ((v18 & 1) == 0 && dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000313D0(v19);
        }
      }
    }

    else
    {
      sub_1000312E4(firstUnlocked, v4, v5);
    }
  }
}

- (void)updateDADevicesWithInstalledApps
{
  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100031484();
  }

  v3 = off_100060398();
  if (v3)
  {
    sub_100031584(v3, v4, v5);
  }

  else
  {
    v6 = [(DADaemonServer *)self getDevicesWithFlags:1032 appID:0];
    v7 = objc_opt_new();
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v10 = objc_opt_new();
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100005774;
    v45[3] = &unk_100058D80;
    v11 = v8;
    v46 = v11;
    v12 = v7;
    v47 = v12;
    v32 = v6;
    [v6 enumerateObjectsUsingBlock:v45];
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000314F0(v12);
    }

    v13 = [LSApplicationRecord enumeratorWithOptions:192];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v42;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(v13);
          }

          bundleIdentifier = [*(*(&v41 + 1) + 8 * i) bundleIdentifier];
          if (bundleIdentifier)
          {
            [v9 addObject:bundleIdentifier];
            if ([v12 containsObject:bundleIdentifier])
            {
              [(DADaemonServer *)self updateAppInfo:bundleIdentifier];
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v15);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v19 = v12;
    v20 = [v19 countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v37 + 1) + 8 * j);
          if (([v9 containsObject:v24] & 1) == 0)
          {
            [v10 addObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v21);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v25 = v11;
    v26 = [v25 countByEnumeratingWithState:&v33 objects:v48 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v34;
      do
      {
        for (k = 0; k != v27; k = k + 1)
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v33 + 1) + 8 * k);
          if (([v9 containsObject:v30] & 1) == 0)
          {
            [v10 addObject:v30];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v33 objects:v48 count:16];
      }

      while (v27);
    }

    if ([v10 count])
    {
      if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100031534(v10);
      }

      allObjects = [v10 allObjects];
      [(DADaemonServer *)self removeAppsAccess:allObjects];
    }
  }
}

- (void)_removeAllDevicesAndAppAccess
{
  selfCopy = self;
  if (dword_1000603A0 <= 50)
  {
    if (dword_1000603A0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1000315E4(self, a2, v2);
    }
  }

  v4 = [(DADaemonServer *)selfCopy getDevicesWithFlags:1032 appID:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100005A6C;
  v13[3] = &unk_100058DD0;
  v13[4] = selfCopy;
  [v4 enumerateObjectsUsingBlock:v13];
  v12[1] = 1;
  v5 = container_system_group_path_for_identifier();
  if (v5)
  {
    v8 = v5;
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100031600(v8, v6, v7);
    }

    v9 = [NSURL fileURLWithFileSystemRepresentation:v8 isDirectory:1 relativeToURL:0];
    free(v8);
    if (v9)
    {
      v10 = [v9 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
      v11 = +[NSFileManager defaultManager];
      v12[0] = 0;
      [v11 removeItemAtURL:v10 error:v12];
    }

    else if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10003163C();
    }
  }
}

- (void)removeAppsAccess:(id)access
{
  accessCopy = access;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000316B0(accessCopy);
  }

  v5 = [(DADaemonServer *)self getDevicesWithFlags:1032 appID:0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005D20;
  v6[3] = &unk_100058E20;
  v6[4] = v5;
  v6[5] = self;
  [accessCopy enumerateObjectsUsingBlock:v6];
}

- (void)updateAppInfo:(id)info
{
  infoCopy = info;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000060F4;
  v7[3] = &unk_100058CB8;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_updateAppInfo:(id)info existingInfoPlistOptions:(unint64_t)options
{
  infoCopy = info;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100031730();
  }

  v7 = [(DADaemonServer *)self getDevicesWithFlags:8 appID:infoCopy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002EAD8;
  v9[3] = &unk_100058E48;
  selfCopy = self;
  optionsCopy = options;
  v10 = infoCopy;
  v8 = infoCopy;
  [v7 enumerateObjectsUsingBlock:v9];
}

- (BOOL)updateAppAccessInfo:(id)info accessoryDevice:(id)device removalType:(int64_t)type error:(id *)error
{
  infoCopy = info;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_100002EE4;
  v53 = sub_100002EF4;
  v54 = 0;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000068E4;
  v46[3] = &unk_100058AE0;
  v48 = &v49;
  deviceCopy = device;
  v47 = deviceCopy;
  v11 = objc_retainBlock(v46);
  v34 = [deviceCopy copy];
  v12 = deviceCopy;
  v36 = [v12 copy];
  bundleIdentifier = [infoCopy bundleIdentifier];
  if ([bundleIdentifier length])
  {
    deviceIdentifier = [infoCopy deviceIdentifier];
    if (![deviceIdentifier length])
    {
      if (error)
      {
        DAErrorF(350001, "No device ID");
        *error = v32 = 0;
      }

      else
      {
        v32 = 0;
      }

      goto LABEL_33;
    }

    appAccessInfoDeviceMap = [v12 appAccessInfoDeviceMap];

    if (!appAccessInfoDeviceMap)
    {
      v16 = +[NSMutableDictionary dictionary];
      [v12 setAppAccessInfoDeviceMap:v16];
    }

    v17 = v50;
    obj = v50[5];
    v18 = [(DADaemonServer *)self _saveDeviceAppAccessInfo:infoCopy device:v12 error:&obj];
    objc_storeStrong(v17 + 5, obj);
    v19 = v50[5];
    if (v19)
    {
      if (error)
      {
        v32 = 0;
        *error = v19;
LABEL_32:

LABEL_33:
        goto LABEL_34;
      }
    }

    else
    {
      appAccessInfoDeviceMap2 = [v12 appAccessInfoDeviceMap];
      [appAccessInfoDeviceMap2 setObject:v18 forKeyedSubscript:bundleIdentifier];

      v21 = [(DADaemonServer *)self generateImageURLForDevice:v12];
      [v12 setDisplayImageFileURL:v21];

      if (-[DADaemonServer _saveAccessoryDevice:oldDeviceReference:bundleID:existingOptions:removalType:error:](self, "_saveAccessoryDevice:oldDeviceReference:bundleID:existingOptions:removalType:error:", v12, v36, bundleIdentifier, [infoCopy accessoryOptions], type, error))
      {
        v22 = [(NSMutableDictionary *)self->_discoveryMap objectForKeyedSubscript:bundleIdentifier];
        discoveryObj = [v22 discoveryObj];
        flags = [discoveryObj flags];

        if ((flags & 8) != 0)
        {
          if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1000603A0, "[DADaemonServer updateAppAccessInfo:accessoryDevice:removalType:error:]", 50, "### UpdateAppAccessInfo report change: %@", v12);
          }

          [(DADaemonServer *)self _reportDeviceChanged:v12 appID:bundleIdentifier discovery:1];
          goto LABEL_29;
        }

        state = [v18 state];
        v26 = [(DADaemonServer *)self _updateStateForDiscoveryDeviceID:deviceIdentifier state:state appID:bundleIdentifier referenceDevice:v12];
        if (state < 2)
        {
          if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1000603A0, "[DADaemonServer updateAppAccessInfo:accessoryDevice:removalType:error:]", 50, "### UpdateAppAccessInfo report lost: %@", v34);
          }

          [(DADaemonServer *)self _reportRemovedDevice:v34 appID:bundleIdentifier discovery:v26 != 0];
          goto LABEL_28;
        }

        if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1000603A0, "[DADaemonServer updateAppAccessInfo:accessoryDevice:removalType:error:]", 50, "### UpdateAppAccessInfo report change: %@", v12);
        }

        [(DADaemonServer *)self _reportDeviceChanged:v12 appID:bundleIdentifier discovery:v26 != 0];
        if ([v12 upgradeFinished])
        {
          v27 = [[DADeviceEvent alloc] initWithEventType:16 device:v12];
          [(DADaemonServer *)self _discoveryEvent:v27 appID:bundleIdentifier];
        }

        else
        {
          if (![v12 upgradeFailed])
          {
LABEL_28:
            [(DADaemonServer *)self _scheduleCheckAppAccessInfo];

LABEL_29:
            sSID = [v12 SSID];

            if (sSID)
            {
              [(DADaemonServer *)self _updateWiFiDevice:v12 bundleID:bundleIdentifier];
            }

            v29 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
            dispatchQueue = self->_dispatchQueue;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000069B0;
            block[3] = &unk_100058E70;
            v38 = bundleIdentifier;
            v39 = v12;
            typeCopy = type;
            v40 = v18;
            v41 = v39;
            selfCopy = self;
            v31 = v29;
            v43 = v31;
            dispatch_async(dispatchQueue, block);
            [(DADaemonServer *)self _keychainMarkDeviceForRestoreOnSameDevice];

            v32 = 1;
            goto LABEL_32;
          }

          v27 = [[DADeviceEvent alloc] initWithEventType:17 device:v12];
          [(DADaemonServer *)self _discoveryEvent:v27 appID:bundleIdentifier];
        }

        goto LABEL_28;
      }
    }

    v32 = 0;
    goto LABEL_32;
  }

  if (error)
  {
    DAErrorF(350001, "No bundle ID");
    *error = v32 = 0;
  }

  else
  {
    v32 = 0;
  }

LABEL_34:

  (v11[2])(v11);
  _Block_object_dispose(&v49, 8);

  return v32;
}

- (void)_checkAppAccessInfo
{
  _checkAppAccessInfoExpired = [(DADaemonServer *)self _checkAppAccessInfoExpired];
  if (_checkAppAccessInfoExpired)
  {
    if (self->_prefCheckAppAccessInfoSeconds >= 10.0)
    {
      prefCheckAppAccessInfoSeconds = self->_prefCheckAppAccessInfoSeconds;
    }

    else
    {
      prefCheckAppAccessInfoSeconds = 10.0;
    }

    v7 = self->_checkAppAccessInfoTimer;
    if (v7)
    {
      v8 = v7;
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000317B4(prefCheckAppAccessInfoSeconds);
      }

      CUDispatchTimerSet();
    }

    else
    {
      v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      checkAppAccessInfoTimer = self->_checkAppAccessInfoTimer;
      self->_checkAppAccessInfoTimer = v11;

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100006D10;
      handler[3] = &unk_100058CB8;
      v8 = v11;
      v16 = v8;
      selfCopy = self;
      dispatch_source_set_event_handler(v8, handler);
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100031810(prefCheckAppAccessInfoSeconds);
      }

      CUDispatchTimerSet();
      dispatch_activate(v8);
    }

    return;
  }

  v9 = self->_checkAppAccessInfoTimer;
  if (!v9)
  {
    return;
  }

  if (dword_1000603A0 >= 31)
  {
    v10 = v9;
LABEL_23:
    v14 = v10;
    dispatch_source_cancel(v10);
    v13 = self->_checkAppAccessInfoTimer;
    self->_checkAppAccessInfoTimer = 0;

    return;
  }

  if (dword_1000603A0 != -1 || (_checkAppAccessInfoExpired = _LogCategory_Initialize(), _checkAppAccessInfoExpired))
  {
    sub_100031798(_checkAppAccessInfoExpired, v4, v5);
  }

  v10 = self->_checkAppAccessInfoTimer;
  if (v10)
  {
    goto LABEL_23;
  }
}

- (BOOL)_checkAppAccessInfoExpired
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  [(DADaemonServer *)self getDevicesWithFlags:1032 appID:0];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  obj = v17 = 0u;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        appAccessInfoMap = [v7 appAccessInfoMap];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100006F58;
        v15[3] = &unk_100058E98;
        *&v15[7] = Current;
        v15[4] = self;
        v15[5] = v7;
        v15[6] = &v20;
        [appAccessInfoMap enumerateKeysAndObjectsUsingBlock:v15];
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v4);
  }

  expiredDeviceChecktransaction = self->_expiredDeviceChecktransaction;
  if (*(v21 + 24) == 1 && expiredDeviceChecktransaction == 0)
  {
    v11 = os_transaction_create();
    expiredDeviceChecktransaction = self->_expiredDeviceChecktransaction;
  }

  else
  {
    v11 = 0;
  }

  self->_expiredDeviceChecktransaction = v11;

  v12 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  return v12 & 1;
}

- (void)_checkDevices
{
  self->_deviceStateHasTransient = 0;
  deviceNECPValueStrings = self->_deviceNECPValueStrings;
  self->_deviceNECPValueStrings = 0;

  [(DADaemonServer *)self _checkDevicesForAllApps];
  [(DADaemonServer *)self _updateDeviceStateTimer];
  [(DADaemonServer *)self _necpUpdateValueStrings:self->_deviceNECPValueStrings];
  v4 = self->_deviceNECPValueStrings;
  self->_deviceNECPValueStrings = 0;
}

- (void)_checkDevicesForAllApps
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100002EE4;
  v40 = sub_100002EF4;
  v41 = 0;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000076A8;
  v35[3] = &unk_100058D30;
  v35[4] = &v36;
  v2 = objc_retainBlock(v35);
  v3 = +[NSFileManager defaultManager];
  v4 = NSTemporaryDirectory();
  v5 = [NSURL fileURLWithPath:v4];
  v6 = (v37 + 5);
  obj = v37[5];
  v25 = [v3 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:4 error:&obj];
  v24 = v3;
  objc_storeStrong(v6, obj);

  if (v25)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = v25;
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v8)
    {
      v9 = 0;
      v10 = *v31;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          v12 = v2;
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          pathExtension = [v13 pathExtension];
          v15 = [pathExtension caseInsensitiveCompare:@"daappdata"] == 0;

          v2 = v12;
          if (v15)
          {
            v9 |= ![(DADaemonServer *)self _checkDevicesForAppDataURL:v13];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v8);

      if (v9)
      {
        v16 = self->_checkDevicesTimer;
        if (v16)
        {
          v17 = v16;
          if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            v18 = CUPrintDurationDouble();
            LogPrintF(&dword_1000603A0, "[DADaemonServer _checkDevicesForAllApps]", 30, "CheckDevices timer update: %@", v18, v24);
          }

          CUDispatchTimerSet();
          goto LABEL_33;
        }

        v20 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
        checkDevicesTimer = self->_checkDevicesTimer;
        self->_checkDevicesTimer = v20;

        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10000776C;
        handler[3] = &unk_100058CB8;
        v17 = v20;
        v28 = v17;
        selfCopy = self;
        dispatch_source_set_event_handler(v17, handler);
        if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          v22 = CUPrintDurationDouble();
          LogPrintF(&dword_1000603A0, "[DADaemonServer _checkDevicesForAllApps]", 30, "CheckDevices timer start: %@", v22, v24);
        }

        CUDispatchTimerSet();
        dispatch_activate(v17);
        v23 = v28;
LABEL_32:

LABEL_33:
        goto LABEL_34;
      }
    }

    else
    {
    }

    v19 = self->_checkDevicesTimer;
    if (v19)
    {
      if (dword_1000603A0 >= 31)
      {
        v17 = v19;
LABEL_27:
        dispatch_source_cancel(v17);
        v23 = self->_checkDevicesTimer;
        self->_checkDevicesTimer = 0;
        goto LABEL_32;
      }

      if (dword_1000603A0 != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&dword_1000603A0, "[DADaemonServer _checkDevicesForAllApps]", 30, "CheckDevices timer stop");
      }

      v17 = self->_checkDevicesTimer;
      if (v17)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_34:

  (v2[2])(v2);
  _Block_object_dispose(&v36, 8);
}

- (BOOL)_checkDevicesForAppDataURL:(id)l
{
  lCopy = l;
  v71 = 0;
  v5 = [[NSDictionary alloc] initWithContentsOfURL:lCopy error:&v71];
  v6 = v71;
  v7 = v6;
  if (v5)
  {
    v54 = lCopy;
    v55 = v6;
    v8 = objc_msgSend_lastPathComponent(lCopy);
    stringByDeletingPathExtension = [v8 stringByDeletingPathExtension];

    Current = CFAbsoluteTimeGetCurrent();
    CFDictionaryGetTypeID();
    v60 = v5;
    CFDictionaryGetTypedValue();
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v65 = v70 = 0u;
    obj = [v65 allKeys];
    v64 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
    v11 = 0;
    v12 = 0;
    if (!v64)
    {
      v13 = DAWiFiScanDescriptor;
      goto LABEL_74;
    }

    v62 = *v68;
    v13 = DAWiFiScanDescriptor;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v68 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v67 + 1) + 8 * v14);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v17 = [v65 objectForKeyedSubscript:v15];
        if ((isKindOfClass & 1) == 0)
        {
          v27 = @"bad deviceID class";
          goto LABEL_38;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v27 = @"bad device info class";
          goto LABEL_38;
        }

        Int64Ranged = CFDictionaryGetInt64Ranged();
        if (!(Int64Ranged << 32))
        {
          v27 = @"state unapproved";
          goto LABEL_38;
        }

        v19 = Int64Ranged;
        if (Int64Ranged != 10 && Int64Ranged != 30)
        {
          CFDictionaryGetDouble();
          if (self->_prefDeviceApprovedSeconds - (Current - v36) <= 0.0)
          {
            v58 = [(DADaemonServer *)self _statefulDevicesForAppID:stringByDeletingPathExtension];
            v37 = [v58 objectForKeyedSubscript:v15];
            v38 = v37;
            if (v37)
            {
              [v37 setState:30];
            }

            v59 = [(DADaemonServer *)self _updateStateForDiscoveryDeviceID:v15 state:30 appID:stringByDeletingPathExtension referenceDevice:v38];
            if (!v38)
            {
              v38 = objc_alloc_init(DADevice);
              [v38 setIdentifier:v15];
            }

            superclass = v13[23].superclass;
            if (superclass <= 30 && (superclass != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1000603A0, "[DADaemonServer _checkDevicesForAppDataURL:]", 30, "Invalidating expired device: app %@, device %@", stringByDeletingPathExtension, v38);
            }

            v57 = v38;
            [(DADaemonServer *)self _reportDeviceChanged:v38 appID:stringByDeletingPathExtension discovery:v59 != 0];
            v56 = [v65 objectForKeyedSubscript:v15];
            v40 = [v56 mutableCopy];
            [v40 setObject:&off_10005ABA8 forKeyedSubscript:@"deviceState"];
            if (!v11)
            {
              v11 = [v65 mutableCopy];
            }

            v41 = [v40 copy];
            [v11 setObject:v41 forKeyedSubscript:v15];

            if (!v12)
            {
              v12 = [v60 mutableCopy];
            }

            [v12 setObject:v11 forKeyedSubscript:@"devices"];
            self->_deviceStateHasTransient = 1;

            v13 = DAWiFiScanDescriptor;
          }
        }

        if (v19 == 30 || v19 == 10)
        {
          CFDictionaryGetDouble();
          if (self->_prefDeviceApprovedSeconds - (Current - v22) <= 0.0)
          {
            v27 = @"expired";
LABEL_38:
            v33 = v13[23].superclass;
            if (v33 <= 30 && (v33 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1000603A0, "[DADaemonServer _checkDevicesForAppDataURL:]", 30, "Remove device: app %@, device %@, reason %@", stringByDeletingPathExtension, v15, v27);
            }

            if (!v11)
            {
              v11 = [v65 mutableCopy];
            }

            [v11 setObject:0 forKeyedSubscript:v15];
            if (!v12)
            {
              v12 = [v60 mutableCopy];
            }

            [v12 setObject:v11 forKeyedSubscript:@"devices"];
            [(DADaemonServer *)self _necpRemoveUUIDsForAppID:stringByDeletingPathExtension deviceID:v15];
            v34 = [(DADaemonServer *)self _updateStateForDiscoveryDeviceID:v15 state:0 appID:stringByDeletingPathExtension referenceDevice:0];
            v35 = v34;
            if (!v34)
            {
              v35 = objc_alloc_init(DADevice);
              [v35 setIdentifier:v15];
            }

            [(DADaemonServer *)self _reportRemovedDevice:v35 appID:stringByDeletingPathExtension discovery:v34 != 0];

            v13 = DAWiFiScanDescriptor;
            goto LABEL_49;
          }
        }

        if (v19 == 30 || v19 == 10)
        {
          CFDictionaryGetDouble();
          if (Current - v24 >= self->_prefDeviceStateTimeoutSeconds + -1.0)
          {
            v25 = [NSString alloc];
            v26 = DADeviceStateToString();
            v27 = [v25 initWithFormat:@"state timeout: %@", v26];

            v13 = DAWiFiScanDescriptor;
            if (v27)
            {
              goto LABEL_38;
            }
          }

          self->_deviceStateHasTransient = 1;
        }

        deviceNECPValueStrings = self->_deviceNECPValueStrings;
        if (!deviceNECPValueStrings)
        {
          v29 = objc_alloc_init(NSMutableSet);
          v30 = self->_deviceNECPValueStrings;
          self->_deviceNECPValueStrings = v29;

          deviceNECPValueStrings = self->_deviceNECPValueStrings;
        }

        v31 = [[NSString alloc] initWithFormat:@"%@:%@", stringByDeletingPathExtension, v15];
        [(NSMutableSet *)deviceNECPValueStrings addObject:v31];

        v32 = v13[23].superclass;
        if (v32 <= 30 && (v32 != -1 || _LogCategory_Initialize()))
        {
          v27 = CUPrintDurationDouble();
          LogPrintF(&dword_1000603A0, "[DADaemonServer _checkDevicesForAppDataURL:]", 30, "Keeping device: app %@, device %@, expire %@", stringByDeletingPathExtension, v15, v27);
LABEL_49:
        }

        v14 = v14 + 1;
      }

      while (v64 != v14);
      v42 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
      v64 = v42;
      if (!v42)
      {
LABEL_74:

        v5 = v60;
        CFDictionaryGetTypeID();
        v44 = CFDictionaryGetTypedValue();
        v45 = [v44 count];
        v43 = v45 == 0;
        if (v45)
        {
          v46 = v13[23].superclass;
          lCopy = v54;
          if (v46 <= 30 && (v46 != -1 || _LogCategory_Initialize()))
          {
            sub_1000318A4(v44, stringByDeletingPathExtension);
          }

          v47 = v12;
          v48 = v47;
          if (v12 && ([v47 isEqual:v60] & 1) == 0)
          {
            [(DADaemonServer *)self _saveAppDataDict:v48 fileURL:v54];
          }

LABEL_92:
          v7 = v55;
LABEL_93:

          goto LABEL_96;
        }

        v49 = +[NSFileManager defaultManager];
        v66 = v55;
        v50 = v13;
        lCopy = v54;
        v51 = [v49 removeItemAtURL:v54 error:&v66];
        v63 = v66;

        v52 = v50[23].superclass;
        if (v51)
        {
          if (v52 <= 30)
          {
            v43 = 1;
            if (v52 != -1 || _LogCategory_Initialize())
            {
              sub_10003194C(stringByDeletingPathExtension);
            }

            goto LABEL_90;
          }
        }

        else if (v52 <= 90)
        {
          v43 = 1;
          if (v52 != -1 || _LogCategory_Initialize())
          {
            sub_1000318F4(v63);
            v55 = v63;
            goto LABEL_92;
          }

LABEL_90:
          v55 = v63;
          goto LABEL_92;
        }

        v55 = v63;
        v43 = 1;
        goto LABEL_92;
      }
    }
  }

  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v12 = CUPrintNSError();
    LogPrintF(&dword_1000603A0, "[DADaemonServer _checkDevicesForAppDataURL:]", 90, "### CheckDevicesForApp read failed: %@, %@", lCopy, v12);
    v43 = 1;
    goto LABEL_93;
  }

  v43 = 1;
LABEL_96:

  return v43;
}

- (BOOL)devicesPresentWithAppID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_discoveryMap objectForKeyedSubscript:d];
  deviceMap = [v3 deviceMap];
  v5 = [deviceMap count] != 0;

  return v5;
}

- (BOOL)modifyDeviceIdentifier:(id)identifier session:(id)session settings:(id)settings error:(id *)error
{
  identifierCopy = identifier;
  sessionCopy = session;
  settingsCopy = settings;
  [(DADaemonServer *)self getDevicesWithFlags:8 appID:0];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v28 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    errorCopy = error;
    v24 = sessionCopy;
    v16 = *v26;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        identifier = [v18 identifier];
        v20 = [identifier isEqualToString:identifierCopy];

        if (v20)
        {
          if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1000603A0, "[DADaemonServer modifyDeviceIdentifier:session:settings:error:]", 30, "Modify %@, device %@", settingsCopy, v18);
          }

          sessionCopy = v24;
          v21 = [(DADaemonServer *)self modifyAccessoryDevice:v18 session:v24 settings:settingsCopy error:errorCopy];
          goto LABEL_16;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

    v21 = 1;
    sessionCopy = v24;
  }

  else
  {
    v21 = 1;
  }

LABEL_16:

  return v21;
}

- (id)generateImageURLForDevice:(id)device
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100002EE4;
  v34 = sub_100002EF4;
  v35 = 0;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100008758;
  v27[3] = &unk_100058AE0;
  v29 = &v30;
  deviceCopy = device;
  v28 = deviceCopy;
  v4 = objc_retainBlock(v27);
  identifier = [deviceCopy identifier];
  if (![identifier length])
  {
    v20 = DAErrorF(350001, "No device ID");
    v21 = v31[5];
    v31[5] = v20;

LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  obj[1] = 1;
  v6 = container_system_group_path_for_identifier();
  if (!v6)
  {
    goto LABEL_15;
  }

  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer generateImageURLForDevice:]", 30, "Using container path %s", v6);
  }

  v7 = [NSURL fileURLWithFileSystemRepresentation:v6 isDirectory:1 relativeToURL:0];
  free(v6);
  if (!v7)
  {
    goto LABEL_15;
  }

  v25 = v4;
  v8 = [v7 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
  v9 = [v8 URLByAppendingPathComponent:@"AccessorySetup" isDirectory:1];
  path = [v9 path];
  v11 = path;
  if (v9 && path)
  {
    v24 = v8;
    v12 = [v9 URLByAppendingPathComponent:@"DADevices" isDirectory:1];
    v13 = +[NSFileManager defaultManager];
    v14 = v31 + 5;
    obj[0] = v31[5];
    v15 = [v13 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:obj];
    objc_storeStrong(v14, obj[0]);

    if (v15)
    {
      path2 = [v12 path];
      v17 = [[NSString alloc] initWithFormat:@"%@-Image.%@", identifier, @"dadeviceimagedata"];
      v18 = [NSURL fileURLWithPath:path2];
      v19 = [v18 URLByAppendingPathComponent:v17 isDirectory:0];
    }

    else
    {
      v19 = 0;
    }

    v8 = v24;
    v4 = v25;
  }

  else
  {
    v23 = DAErrorF(350001, "Bad file path");
    v19 = 0;
    v12 = v31[5];
    v31[5] = v23;
  }

LABEL_16:
  (v4[2])(v4);

  _Block_object_dispose(&v30, 8);

  return v19;
}

- (id)getDevicesWithFlags:(unint64_t)flags appID:(id)d
{
  dCopy = d;
  v125 = 0;
  v126 = &v125;
  v127 = 0x3032000000;
  v128 = sub_100002EE4;
  v129 = sub_100002EF4;
  v130 = 0;
  v124[0] = _NSConcreteStackBlock;
  v124[1] = 3221225472;
  v124[2] = sub_100009670;
  v124[3] = &unk_100058D30;
  v124[4] = &v125;
  v77 = objc_retainBlock(v124);
  obj[1] = 1;
  v4 = container_system_group_path_for_identifier();
  if (!v4)
  {
    goto LABEL_12;
  }

  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer getDevicesWithFlags:appID:]", 30, "Using container path %s", v4);
  }

  v5 = [NSURL fileURLWithFileSystemRepresentation:v4 isDirectory:1 relativeToURL:0];
  free(v4);
  if (!v5)
  {
LABEL_12:
    v15 = DANestedErrorF();
    v80 = 0;
    v16 = v126[5];
    v126[5] = v15;
    goto LABEL_61;
  }

  v73 = v5;
  v72 = [v5 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
  v79 = [v72 URLByAppendingPathComponent:@"AccessorySetup" isDirectory:1];
  v92 = +[NSMutableDictionary dictionary];
  v71 = [v79 URLByAppendingPathComponent:@"AppAccessInfos" isDirectory:1];
  path = [v71 path];
  if (!dCopy)
  {
    v89 = +[NSFileManager defaultManager];
    v17 = [NSURL fileURLWithPath:path];
    v18 = v126 + 5;
    v119 = v126[5];
    v19 = [v89 contentsOfDirectoryAtURL:v17 includingPropertiesForKeys:0 options:4 error:&v119];
    objc_storeStrong(v18, v119);

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v115 objects:v133 count:16];
    if (v21)
    {
      v22 = *v116;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v116 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = [[NSDictionary alloc] initWithContentsOfURL:*(*(&v115 + 1) + 8 * i)];
          if (v24)
          {
            CFStringGetTypeID();
            v25 = CFDictionaryGetTypedValue();
            if (v25)
            {
              CFDictionaryGetTypeID();
              v26 = CFDictionaryGetTypedValue();
              v111[0] = _NSConcreteStackBlock;
              v111[1] = 3221225472;
              v111[2] = sub_10000984C;
              v111[3] = &unk_100058F10;
              v112 = v92;
              v114 = &v125;
              v27 = v25;
              v113 = v27;
              [v26 enumerateKeysAndObjectsUsingBlock:v111];
            }
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v115 objects:v133 count:16];
      }

      while (v21);
    }

    goto LABEL_24;
  }

  v6 = dCopy;
  v7 = CBGenerateObfuscatedSHA256HashedString();
  v8 = [[NSString alloc] initWithFormat:@"%@.%@", v7, @"daappInfodata"];
  v9 = [NSURL fileURLWithPath:path];
  v10 = [v9 URLByAppendingPathComponent:v8 isDirectory:0];

  v11 = [NSDictionary alloc];
  v12 = v126 + 5;
  obj[0] = v126[5];
  v13 = [v11 initWithContentsOfURL:v10 error:obj];
  objc_storeStrong(v12, obj[0]);
  if (v13)
  {
    CFDictionaryGetTypeID();
    v14 = CFDictionaryGetTypedValue();
    v120[0] = _NSConcreteStackBlock;
    v120[1] = 3221225472;
    v120[2] = sub_100009734;
    v120[3] = &unk_100058EE8;
    v121 = v92;
    v122 = &v125;
    [v14 enumerateKeysAndObjectsUsingBlock:v120];
  }

  else
  {
    v66 = DANestedErrorF();
    v14 = v126[5];
    v126[5] = v66;
  }

  if (v13)
  {
LABEL_24:
    v76 = +[NSFileManager defaultManager];
    v70 = [v79 URLByAppendingPathComponent:@"AccessoryServiceInfos" isDirectory:1];
    path2 = [v70 path];
    v28 = [NSURL fileURLWithPath:?];
    v29 = v126 + 5;
    v110 = v126[5];
    v30 = [v76 contentsOfDirectoryAtURL:v28 includingPropertiesForKeys:0 options:4 error:&v110];
    objc_storeStrong(v29, v110);

    v82 = +[NSMutableDictionary dictionary];
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v84 = v30;
    v31 = [v84 countByEnumeratingWithState:&v106 objects:v132 count:16];
    if (v31)
    {
      v87 = *v107;
      do
      {
        v32 = 0;
        v90 = v31;
        do
        {
          if (*v107 != v87)
          {
            objc_enumerationMutation(v84);
          }

          v33 = *(*(&v106 + 1) + 8 * v32);
          v34 = objc_autoreleasePoolPush();
          v105 = 0;
          [v33 getResourceValue:&v105 forKey:NSURLNameKey error:0];
          v35 = v105;
          v104 = 0;
          [v33 getResourceValue:&v104 forKey:NSURLIsDirectoryKey error:0];
          v36 = v104;
          if (([v36 BOOLValue] & 1) == 0)
          {
            v37 = objc_msgSend_lastPathComponent(v33);
            stringByDeletingPathExtension = [v37 stringByDeletingPathExtension];

            v39 = [v92 objectForKeyedSubscript:stringByDeletingPathExtension];
            LOBYTE(v37) = v39 == 0;

            if ((v37 & 1) == 0)
            {
              path3 = [v33 path];
              v41 = [NSURL fileURLWithPath:path3];
              v42 = [NSDictionary dictionaryWithContentsOfURL:v41];
              if (v42)
              {
                CFStringGetTypeID();
                v85 = CFDictionaryGetTypedValue();
                CFDictionaryGetTypeID();
                v43 = CFDictionaryGetTypedValue();
                if (v43)
                {
                  v44 = +[NSMutableDictionary dictionary];
                  v101[0] = _NSConcreteStackBlock;
                  v101[1] = 3221225472;
                  v101[2] = sub_10000994C;
                  v101[3] = &unk_100058F38;
                  v102 = v85;
                  v45 = v44;
                  v103 = v45;
                  [v43 enumerateKeysAndObjectsUsingBlock:v101];
                  [v82 setObject:v45 forKeyedSubscript:stringByDeletingPathExtension];
                }
              }
            }
          }

          objc_autoreleasePoolPop(v34);
          v32 = v32 + 1;
        }

        while (v90 != v32);
        v31 = [v84 countByEnumeratingWithState:&v106 objects:v132 count:16];
      }

      while (v31);
    }

    v68 = [v79 URLByAppendingPathComponent:@"DADevices" isDirectory:1];
    path4 = [v68 path];
    v46 = [NSURL fileURLWithPath:?];
    v47 = v126 + 5;
    v100 = v126[5];
    v75 = [v76 contentsOfDirectoryAtURL:v46 includingPropertiesForKeys:0 options:4 error:&v100];
    objc_storeStrong(v47, v100);

    if (v75)
    {
      v80 = +[NSMutableArray array];
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v83 = v75;
      v48 = [v83 countByEnumeratingWithState:&v96 objects:v131 count:16];
      if (v48)
      {
        v88 = *v97;
        do
        {
          v49 = 0;
          v91 = v48;
          do
          {
            if (*v97 != v88)
            {
              objc_enumerationMutation(v83);
            }

            v50 = *(*(&v96 + 1) + 8 * v49);
            v51 = objc_autoreleasePoolPush();
            v95 = 0;
            [v50 getResourceValue:&v95 forKey:NSURLNameKey error:0];
            v52 = v95;
            v94 = 0;
            [v50 getResourceValue:&v94 forKey:NSURLIsDirectoryKey error:0];
            v53 = v94;
            if (([v53 BOOLValue] & 1) == 0)
            {
              v54 = objc_msgSend_lastPathComponent(v50);
              stringByDeletingPathExtension2 = [v54 stringByDeletingPathExtension];

              v56 = [v92 objectForKeyedSubscript:stringByDeletingPathExtension2];
              v57 = v56 == 0;

              if (!v57)
              {
                path5 = [v50 path];
                v59 = [NSURL fileURLWithPath:path5];
                v60 = [NSDictionary dictionaryWithContentsOfURL:v59];
                v61 = [DADevice alloc];
                v93 = 0;
                v62 = [v61 initWithPersistentDictionaryRepresentation:v60 error:&v93];
                v86 = v93;
                if (v62 && ([v62 flags] & flags) != 0)
                {
                  v63 = [v92 objectForKeyedSubscript:stringByDeletingPathExtension2];
                  [v62 setAppAccessInfoDeviceMap:v63];

                  v64 = [v82 objectForKeyedSubscript:stringByDeletingPathExtension2];
                  [v62 setAccessoryServicesInternalMap:v64];

                  [v80 addObject:v62];
                }

                else if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&dword_1000603A0, "[DADaemonServer getDevicesWithFlags:appID:]", 90, "[Device Decoding Error] %@", v86);
                }
              }
            }

            objc_autoreleasePoolPop(v51);
            v49 = v49 + 1;
          }

          while (v91 != v49);
          v48 = [v83 countByEnumeratingWithState:&v96 objects:v131 count:16];
        }

        while (v48);
      }
    }

    else
    {
      v80 = 0;
    }

    goto LABEL_60;
  }

  v80 = 0;
LABEL_60:

  v16 = v73;
LABEL_61:

  (v77[2])(v77);
  _Block_object_dispose(&v125, 8);

  return v80;
}

- (void)reportAuthorizedDevices:(id)devices
{
  devicesCopy = devices;
  v5 = [(DADaemonServer *)self getAuthorizedDevices:devicesCopy];
  v6 = v5;
  if (v5)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          identifier = [v11 identifier];
          if (identifier)
          {
            v13 = [(DADaemonServer *)self _updateStateForDiscoveryDeviceID:identifier state:25 appID:devicesCopy referenceDevice:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v20 + 1) + 8 * j);
          [v19 setState:{25, v20}];
          [(DADaemonServer *)self _reportDeviceChanged:v19 appID:devicesCopy discovery:0];
        }

        v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v16);
    }
  }

  else
  {
    sub_1000319CC();
  }
}

- (void)_reportDeviceChanged:(id)changed appID:(id)d discovery:(BOOL)discovery
{
  discoveryCopy = discovery;
  changedCopy = changed;
  dCopy = d;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = self->_xpcConnections;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v24 + 1) + 8 * v14) reportDeviceChanged:changedCopy appID:dCopy discovery:{discoveryCopy, v24}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  v15 = [(NSMutableDictionary *)self->_discoveryMap objectForKeyedSubscript:dCopy];
  discoveryObj = [v15 discoveryObj];
  configuration = [discoveryObj configuration];
  bundleID = [configuration bundleID];
  v19 = [bundleID isEqualToString:dCopy];

  discoveryObj2 = [v15 discoveryObj];
  discoveryObj3 = discoveryObj2;
  if (v19)
  {
    goto LABEL_11;
  }

  bundleID2 = [discoveryObj2 bundleID];
  v23 = [bundleID2 isEqualToString:dCopy];

  if (v23)
  {
    discoveryObj3 = [v15 discoveryObj];
LABEL_11:
    [discoveryObj3 reportDeviceChanged:changedCopy appID:{dCopy, v24}];
  }
}

- (void)_reportDeviceConnectionStatusChanged:(id)changed
{
  changedCopy = changed;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) reportDeviceConnectionStatusChanged:{changedCopy, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [changedCopy identifier];
}

- (void)_reportDevicesPresentChanged:(BOOL)changed appID:(id)d
{
  changedCopy = changed;
  dCopy = d;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_xpcConnections;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) reportDevicesPresentChanged:changedCopy appID:{dCopy, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_reportDevicesPresentChanged:(BOOL)changed migrated:(BOOL)migrated appID:(id)d
{
  changedCopy = changed;
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_xpcConnections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) reportDevicesPresentChanged:changedCopy appID:{dCopy, v13}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_reportDeviceAccessoryServicesChanged:(id)changed
{
  changedCopy = changed;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) reportAccessoryServicesChanged:{changedCopy, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_reportRemovedDevice:(id)device appID:(id)d discovery:(BOOL)discovery
{
  discoveryCopy = discovery;
  deviceCopy = device;
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_xpcConnections;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14) reportRemovedDevice:deviceCopy appID:dCopy discovery:{discoveryCopy, v15}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (BOOL)revokeBluetoothGlobalTCCIfNeededForDeviceAppAccessInfo:(id)info device:(id)device
{
  infoCopy = info;
  deviceCopy = device;
  v8 = self->_discoveryMap;
  bundleIdentifier = [infoCopy bundleIdentifier];
  v10 = [(NSMutableDictionary *)v8 objectForKey:bundleIdentifier];
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100031A44(deviceCopy);
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100002EE4;
  v32 = sub_100002EF4;
  v33 = 0;
  if (v10)
  {
    discoverySet = [v10 discoverySet];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000A734;
    v24[3] = &unk_100058F88;
    v12 = infoCopy;
    v25 = v12;
    v26 = deviceCopy;
    v27 = &v28;
    [discoverySet enumerateObjectsUsingBlock:v24];

    v13 = v29[5];
    if (v13)
    {
      bluetoothIdentifier = [v13 bluetoothIdentifier];
      v15 = bluetoothIdentifier == 0;

      if (!v15 || [v12 state] == 25 || objc_msgSend(v12, "state") == 10)
      {
        bundleIdentifier2 = [v12 bundleIdentifier];
        v17 = [(DADaemonServer *)self _applicationHasBluetoothGlobalTCC:bundleIdentifier2]== 1;

        if (!v17)
        {
          if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            bundleIdentifier3 = [v12 bundleIdentifier];
            LogPrintF(&dword_1000603A0, "[DADaemonServer revokeBluetoothGlobalTCCIfNeededForDeviceAppAccessInfo:device:]", 50, "### revokeBluetoothGlobalTCCIfNeededForDeviceAppAccessInfo for bundleIdentifier %@ ", bundleIdentifier3);
          }

          bundleIdentifier4 = [v12 bundleIdentifier];
          v34[0] = kTCCSetNoKill;
          v34[1] = kTCCResetSyncAuth;
          v35[0] = &__kCFBooleanTrue;
          v35[1] = &__kCFBooleanTrue;
          [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
          v22 = TCCAccessResetForBundleIdWithOptions();

          if (v22)
          {
            v18 = 1;
            goto LABEL_12;
          }

          if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            bundleID = [v29[5] bundleID];
            LogPrintF(&dword_1000603A0, "[DADaemonServer revokeBluetoothGlobalTCCIfNeededForDeviceAppAccessInfo:device:]", 90, "Error revoking Bluetooth TCC for bundle %@", bundleID);
          }
        }
      }
    }
  }

  v18 = 0;
LABEL_12:
  _Block_object_dispose(&v28, 8);

  return v18;
}

- (void)_scheduleCheckAppAccessInfo
{
  if (!self->_checkAppAccessInfoScheduled)
  {
    self->_checkAppAccessInfoScheduled = 1;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000AA78;
    block[3] = &unk_100058B58;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_scheduleCheckDevices
{
  if (!self->_checkDevicesScheduled)
  {
    self->_checkDevicesScheduled = 1;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000AB10;
    block[3] = &unk_100058B58;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_saveAppDataDict:(id)dict fileURL:(id)l
{
  lCopy = l;
  v13[0] = 0;
  v6 = [NSPropertyListSerialization dataWithPropertyList:dict format:200 options:0 error:v13];
  v7 = v13[0];
  v8 = objc_msgSend_lastPathComponent(lCopy);
  stringByDeletingPathExtension = [v8 stringByDeletingPathExtension];

  if (v6)
  {
    v12 = v7;
    v10 = [v6 writeToURL:lCopy options:1073741825 error:&v12];
    v11 = v12;

    if (v10)
    {
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100031AC4(stringByDeletingPathExtension);
      }
    }

    else if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100031A84(stringByDeletingPathExtension);
    }
  }

  else
  {
    sub_100031B04();
    v11 = v13[1];
  }
}

- (BOOL)saveDevice:(id)device session:(id)session allowCreate:(BOOL)create error:(id *)error
{
  createCopy = create;
  deviceCopy = device;
  sessionCopy = session;
  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = 0;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 0;
  v95[0] = _NSConcreteStackBlock;
  v95[1] = 3221225472;
  v95[2] = sub_10000BB84;
  v95[3] = &unk_100058FD8;
  v95[5] = &v100;
  v95[6] = &v96;
  selfCopy = self;
  v95[4] = self;
  v72 = objc_retainBlock(v95);
  bundleID = [sessionCopy bundleID];
  if ([bundleID length])
  {
    identifier = [deviceCopy identifier];
    if (![identifier length])
    {
      if (error)
      {
        DAErrorF(350001, "No device ID");
        *error = v52 = 0;
      }

      else
      {
        v52 = 0;
      }

      goto LABEL_105;
    }

    v9 = [[NSString alloc] initWithFormat:@"%@.%@", bundleID, @"daappdata"];
    v10 = NSTemporaryDirectory();
    v11 = [NSURL fileURLWithPath:v10];
    v78 = [v11 URLByAppendingPathComponent:v9 isDirectory:0];
    v71 = v9;

    v94 = 0;
    v12 = [[NSDictionary alloc] initWithContentsOfURL:v78 error:&v94];
    v73 = v94;
    v79 = v12;
    if (!v12 && !createCopy)
    {
      if (error)
      {
        DANestedErrorF();
        *error = v52 = 0;
      }

      else
      {
        v52 = 0;
      }

      goto LABEL_104;
    }

    v13 = [v12 mutableCopy];
    v14 = v13;
    if (v13)
    {
      v82 = v13;
    }

    else
    {
      v82 = objc_alloc_init(NSMutableDictionary);
    }

    CFDictionaryGetTypeID();
    v74 = CFDictionaryGetTypedValue();
    if (!v74 && !createCopy)
    {
      if (error)
      {
        DAErrorF(350006, "No devices");
        *error = v52 = 0;
      }

      else
      {
        v52 = 0;
      }

      goto LABEL_103;
    }

    v15 = [v74 mutableCopy];
    v16 = v15;
    if (v15)
    {
      v86 = v15;
    }

    else
    {
      v86 = objc_alloc_init(NSMutableDictionary);
    }

    v81 = [v86 objectForKeyedSubscript:identifier];
    if (!v81 && !createCopy)
    {
      if (error)
      {
        DAErrorF(350006, "Device not found");
        *error = v52 = 0;
      }

      else
      {
        v52 = 0;
      }

      goto LABEL_102;
    }

    v17 = [v81 mutableCopy];
    v18 = v17;
    if (v17)
    {
      v83 = v17;
    }

    else
    {
      v83 = objc_alloc_init(NSMutableDictionary);
    }

    v19 = NSDictionaryGetNSNumber();
    integerValue = [v19 integerValue];

    state = [deviceCopy state];
    Current = CFAbsoluteTimeGetCurrent();
    v21 = Current;
    if (createCopy)
    {
      if (state)
      {
        [deviceCopy setApproveTime:Current];
        networkEndpoint = [deviceCopy networkEndpoint];
        if (networkEndpoint && dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          has_signature = nw_endpoint_has_signature();
          v24 = "no";
          if (has_signature)
          {
            v24 = "yes";
          }

          LogPrintF(&dword_1000603A0, "[DADaemonServer saveDevice:session:allowCreate:error:]", 30, "nw_endpoint signed: %s for device: %@ for app: %@", v24, deviceCopy, bundleID);
        }

        persistentDictionaryRepresentation = [deviceCopy persistentDictionaryRepresentation];
        v28 = [persistentDictionaryRepresentation mutableCopy];

        v83 = v28;
LABEL_35:

        if (!v83)
        {
          v83 = 0;
          v69 = 1;
          [v86 setObject:0 forKeyedSubscript:identifier];
LABEL_47:
          if ([deviceCopy state] == 20 && objc_msgSend(deviceCopy, "supportsGrouping"))
          {
            ++*(v101 + 6);
            ++*(v97 + 6);
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            allKeys = [v86 allKeys];
            v33 = [allKeys countByEnumeratingWithState:&v90 objects:v104 count:16];
            if (v33)
            {
              v34 = *v91;
              obj = allKeys;
              do
              {
                for (i = 0; i != v33; i = i + 1)
                {
                  if (*v91 != v34)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v36 = *(*(&v90 + 1) + 8 * i);
                  if (([v36 isEqualToString:identifier] & 1) == 0)
                  {
                    v37 = [v86 objectForKeyedSubscript:v36];
                    CFStringGetTypeID();
                    v38 = CFDictionaryGetTypedValue();
                    Int64 = CFDictionaryGetInt64();
                    Int64Ranged = CFDictionaryGetInt64Ranged();
                    if (Int64)
                    {
                      v41 = Int64Ranged;
                      protocolType = [deviceCopy protocolType];
                      identifier2 = [protocolType identifier];
                      v44 = [v38 isEqualToString:identifier2];

                      if (v44)
                      {
                        ++*(v101 + 6);
                        if (v41 == 20)
                        {
                          v45 = [v37 mutableCopy];
                          v46 = [NSNumber numberWithDouble:v21];
                          [v45 setObject:v46 forKeyedSubscript:@"approveTime"];

                          [v86 setObject:v45 forKeyedSubscript:v36];
                          ++*(v97 + 6);
                        }
                      }
                    }
                  }
                }

                allKeys = obj;
                v33 = [obj countByEnumeratingWithState:&v90 objects:v104 count:16];
              }

              while (v33);
            }
          }

          [v82 setObject:v86 forKeyedSubscript:@"devices"];
          if ([v82 isEqual:v79])
          {
            if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1000603A0, "[DADaemonServer saveDevice:session:allowCreate:error:]", 30, "SaveDevice: no changes, %@, %@", sessionCopy, deviceCopy);
            }

            v52 = 1;
            goto LABEL_101;
          }

          v89 = 0;
          v47 = [NSPropertyListSerialization dataWithPropertyList:v82 format:200 options:0 error:&v89];
          v48 = v89;

          if (!v47)
          {
            if (error)
            {
              DANestedErrorF();
              *error = v52 = 0;
            }

            else
            {
              v52 = 0;
            }

            goto LABEL_100;
          }

          v88 = v48;
          v49 = [v47 writeToURL:v78 options:1073741825 error:&v88];
          v50 = v88;

          if ((v49 & 1) == 0)
          {
            if (error)
            {
              DANestedErrorF();
              *error = v52 = 0;
            }

            else
            {
              v52 = 0;
            }

LABEL_99:
            v48 = v50;
LABEL_100:

            v73 = v48;
LABEL_101:

LABEL_102:
LABEL_103:

LABEL_104:
LABEL_105:

            goto LABEL_106;
          }

          if (v69)
          {
            if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              v51 = "SaveDevice: remove, %@, %@";
LABEL_76:
              LogPrintF(&dword_1000603A0, "[DADaemonServer saveDevice:session:allowCreate:error:]", 30, v51, sessionCopy, deviceCopy);
            }
          }

          else if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            v51 = "SaveDevice: changed, %@, %@";
            goto LABEL_76;
          }

          [(DADaemonServer *)selfCopy _necpUpdateUUIDForAppID:bundleID device:deviceCopy];
          [(DADaemonServer *)selfCopy _scheduleCheckDevices];
          v53 = [(DADaemonServer *)selfCopy _updateStateForDiscoveryDeviceID:identifier state:state appID:bundleID referenceDevice:deviceCopy];
          v54 = v53;
          if (v53)
          {
            v55 = v53;
          }

          else
          {
            v55 = deviceCopy;
          }

          [(DADaemonServer *)selfCopy _reportDeviceChanged:v55 appID:bundleID discovery:v53 != 0];
          v56 = [(NSMutableDictionary *)selfCopy->_discoveryMap objectForKeyedSubscript:bundleID];
          deviceMap = [v56 deviceMap];
          v58 = deviceMap;
          if (deviceMap)
          {
            v59 = [deviceMap count];
            v60 = [v58 objectForKeyedSubscript:identifier];
            if (integerValue == 20 && state != 20)
            {
              v61 = [v58 objectForKeyedSubscript:identifier];
              pendingRemoval = [v61 pendingRemoval];

              if (pendingRemoval)
              {
                if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&dword_1000603A0, "[DADaemonServer saveDevice:session:allowCreate:error:]", 30, "Device is pending removal and not activated anymore: %@", v60);
                }

                v63 = [[DADeviceEvent alloc] initWithEventType:41 device:v60];
                [(DADaemonServer *)selfCopy _reportDiscoveryEvent:v63 appID:bundleID];
                [v58 setObject:0 forKeyedSubscript:identifier];
              }
            }

            v64 = [v58 count];
            if (v59 && !v64)
            {
              [(DADaemonServer *)selfCopy _reportDevicesPresentChanged:0 appID:bundleID];
            }
          }

          v52 = 1;
          goto LABEL_99;
        }

        if (state == 30 || state == 10)
        {
          CFDictionaryGetDouble();
          if (v29 == 0.0)
          {
            CFDictionarySetDouble();
          }
        }

        else
        {
          [v83 setObject:0 forKeyedSubscript:@"deviceStateStartTime"];
        }

        CFStringGetTypeID();
        v26 = CFDictionaryGetTypedValue();
        CFStringGetTypeID();
        v30 = CFDictionaryGetTypedValue();
        v31 = v30;
        if (!v26 || !v30 || ([v26 isEqualToString:v30] & 1) != 0)
        {

          v69 = 0;
          goto LABEL_46;
        }

        if (error)
        {
          *error = DANestedErrorF();
        }

LABEL_137:
        v52 = 0;
        goto LABEL_101;
      }
    }

    else
    {
      CFDictionaryGetDouble();
      if (selfCopy->_prefDeviceApprovedSeconds <= v21 - v25 && state)
      {
        if (error)
        {
          DAErrorF(350006, "Expired");
          *error = v52 = 0;
          goto LABEL_101;
        }

        goto LABEL_137;
      }

      if (!integerValue)
      {
        if (error)
        {
          v66 = DADeviceStateToString();
          *error = DAErrorF(350006, "Not in approved state: %@", v66);
        }

        goto LABEL_137;
      }

      if (state)
      {
        if (state == 10)
        {
          if (error)
          {
            v67 = DADeviceStateToString();
            *error = DAErrorF(350006, "State not allowed: %@", v67);
          }

          goto LABEL_137;
        }

        networkEndpoint = [NSNumber numberWithInteger:?];
        [v83 setObject:networkEndpoint forKeyedSubscript:@"deviceState"];
        goto LABEL_35;
      }
    }

    v69 = 1;
    v26 = v83;
    v83 = 0;
LABEL_46:

    [v86 setObject:v83 forKeyedSubscript:identifier];
    goto LABEL_47;
  }

  if (error)
  {
    DAErrorF(350001, "No app bundle ID");
    *error = v52 = 0;
  }

  else
  {
    v52 = 0;
  }

LABEL_106:

  (v72[2])(v72);
  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(&v100, 8);

  return v52;
}

- (BOOL)saveDeviceAccessoryServiceInfo:(id)info device:(id)device error:(id *)error
{
  infoCopy = info;
  deviceCopy = device;
  associatedBundleID = [infoCopy associatedBundleID];
  if ([associatedBundleID length])
  {
    identifier = [deviceCopy identifier];
    if ([identifier length])
    {
      v75[1] = 1;
      v12 = container_system_group_path_for_identifier();
      if (v12)
      {
        v15 = v12;
        errorCopy = error;
        if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100031C34(v15, v13, v14);
        }

        selfCopy = self;
        v16 = [NSURL fileURLWithFileSystemRepresentation:v15 isDirectory:1 relativeToURL:0];
        free(v15);
        if (v16)
        {
          v17 = [v16 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
          [v17 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:0];
          v18 = [v17 URLByAppendingPathComponent:@"AccessorySetup" isDirectory:1];
          path = [v18 path];
          v20 = path;
          if (!v18 || !path)
          {
            sub_100031CEC();
            v50 = 0;
            goto LABEL_46;
          }

          v67 = path;
          v68 = v16;
          v69 = v17;
          [v18 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:0];
          v66 = v18;
          v21 = [v18 URLByAppendingPathComponent:@"AccessoryServiceInfos" isDirectory:1];
          v22 = +[NSFileManager defaultManager];
          v23 = [v22 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:errorCopy];

          v65 = v21;
          if (!v23)
          {
            v50 = 0;
            v17 = v69;
            goto LABEL_45;
          }

          [v21 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:0];
          path2 = [v21 path];
          v25 = [[NSString alloc] initWithFormat:@"%@.%@", identifier, @"daserviceInfodata"];
          v63 = path2;
          v26 = [NSURL fileURLWithPath:path2];
          v62 = v25;
          v27 = [v26 URLByAppendingPathComponent:v25 isDirectory:0];

          path3 = [v27 path];
          v29 = +[NSFileManager defaultManager];
          v61 = path3;
          v30 = [v29 fileExistsAtPath:path3];
          v31 = 0;
          if (v30)
          {
            v31 = [[NSDictionary alloc] initWithContentsOfURL:v27 error:0];
          }

          v32 = [v31 mutableCopy];
          v33 = v32;
          v71 = deviceCopy;
          v64 = associatedBundleID;
          if (v32)
          {
            v34 = v32;
          }

          else
          {
            v34 = objc_alloc_init(NSMutableDictionary);
          }

          v35 = v34;
          v72 = v27;

          authorizationLevel = [infoCopy authorizationLevel];
          name = [infoCopy name];
          CFDictionaryGetTypeID();
          v38 = CFDictionaryGetTypedValue();
          v39 = [v38 mutableCopy];
          v40 = v39;
          v73 = identifier;
          if (v39)
          {
            v41 = v39;
          }

          else
          {
            v41 = objc_alloc_init(NSMutableDictionary);
          }

          v42 = v41;

          v43 = [v38 objectForKeyedSubscript:name];
          v44 = [v43 mutableCopy];
          v45 = v44;
          if (v44)
          {
            v46 = v44;
          }

          else
          {
            v46 = objc_alloc_init(NSMutableDictionary);
          }

          v47 = v46;

          if (authorizationLevel == 1)
          {
            v48 = 0;
          }

          else
          {
            persistentDictionaryRepresentation = [infoCopy persistentDictionaryRepresentation];
            v48 = [persistentDictionaryRepresentation mutableCopy];

            v47 = persistentDictionaryRepresentation;
          }

          [v42 setObject:v48 forKeyedSubscript:name];
          [v35 setObject:v73 forKeyedSubscript:@"identifier"];
          [v35 setObject:v42 forKeyedSubscript:@"services"];
          if ([v35 isEqual:v31])
          {
            if (dword_1000603A0 > 30)
            {
              v50 = 1;
              v17 = v69;
            }

            else
            {
              v17 = v69;
              if (dword_1000603A0 != -1 || _LogCategory_Initialize())
              {
                sub_100031CAC(infoCopy);
              }

              v50 = 1;
            }

            goto LABEL_44;
          }

          v60 = infoCopy;
          v75[0] = 0;
          v51 = [NSPropertyListSerialization dataWithPropertyList:v35 format:200 options:0 error:v75];
          v52 = v75[0];
          v53 = v52;
          if (!v51)
          {
            if (errorCopy)
            {
              DANestedErrorF();
              *errorCopy = v50 = 0;
            }

            else
            {
              v50 = 0;
            }

            v58 = v53;
            goto LABEL_42;
          }

          v74 = v52;
          v54 = [v51 writeToURL:v72 options:1073741825 error:&v74];
          v58 = v74;

          if ((v54 & 1) == 0)
          {
            v17 = v69;
            if (errorCopy)
            {
              DANestedErrorF();
              *errorCopy = v50 = 0;
            }

            else
            {
              v50 = 0;
            }

            goto LABEL_43;
          }

          if (v48)
          {
            if (dword_1000603A0 > 30 || dword_1000603A0 == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_41;
            }

            v55 = "saveDeviceAccessoryServiceInfo: changed, %@";
          }

          else
          {
            if (dword_1000603A0 > 30 || dword_1000603A0 == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_41;
            }

            v55 = "saveDeviceAccessoryServiceInfo: remove, %@";
          }

          sub_100031C70(v55, v60);
LABEL_41:
          accessoryServicesInternalMap = [v71 accessoryServicesInternalMap];
          [accessoryServicesInternalMap setObject:v60 forKeyedSubscript:name];

          [(DADaemonServer *)selfCopy _reportDeviceAccessoryServicesChanged:v71];
          v50 = 1;
LABEL_42:
          v17 = v69;
LABEL_43:

          infoCopy = v60;
LABEL_44:

          deviceCopy = v71;
          associatedBundleID = v64;
          identifier = v73;
LABEL_45:

          v20 = v67;
          v16 = v68;
          v18 = v66;
LABEL_46:

LABEL_56:
          goto LABEL_57;
        }
      }
    }

    else if (error)
    {
      DAErrorF(350001, "No device ID");
      *error = v50 = 0;
      goto LABEL_56;
    }

    v50 = 0;
    goto LABEL_56;
  }

  if (error)
  {
    DAErrorF(350001, "No associated bundle ID");
    *error = v50 = 0;
  }

  else
  {
    v50 = 0;
  }

LABEL_57:

  return v50;
}

- (id)_saveDeviceAppAccessInfo:(id)info device:(id)device error:(id *)error
{
  infoCopy = info;
  deviceCopy = device;
  bundleIdentifier = [infoCopy bundleIdentifier];
  if ([bundleIdentifier length])
  {
    deviceIdentifier = [infoCopy deviceIdentifier];
    if ([deviceIdentifier length])
    {
      v99 = [(DADaemonServer *)self appBundleInfoAccessoryOptions:bundleIdentifier];
      error[1] = 1;
      v12 = container_system_group_path_for_identifier();
      if (v12)
      {
        v15 = v12;
        selfCopy = self;
        errorCopy = error;
        if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100031D1C(v15, v13, v14);
        }

        v16 = [NSURL fileURLWithFileSystemRepresentation:v15 isDirectory:1 relativeToURL:0];
        free(v15);
        if (v16)
        {
          v102 = deviceCopy;
          v17 = [v16 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
          if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            sub_100031D58();
          }

          error[0] = 0;
          if (!CFURLSetResourcePropertyForKey(v17, _kCFURLIsExcludedFromUnencryptedBackupKey, kCFBooleanTrue, error) && dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            sub_100031D98(error);
          }

          v110 = 0;
          [(__CFURL *)v17 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:&v110];
          v18 = v110;
          v19 = [(__CFURL *)v17 URLByAppendingPathComponent:@"AccessorySetup" isDirectory:1];
          v104 = [v19 URLByAppendingPathComponent:@"AppAccessInfos" isDirectory:1];
          v109 = v18;
          [v19 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:&v109];
          v20 = v109;

          v107 = 0;
          v108 = 0;
          v94 = v19;
          [v19 getResourceValue:&v108 forKey:NSURLIsExcludedFromBackupKey error:&v107];
          v96 = v108;
          v21 = v107;

          if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1000603A0, "[DADaemonServer _saveDeviceAppAccessInfo:device:error:]", 50, "SaveDeviceAppAccessInfo: backup resource %@, error %@", v96, v21);
          }

          v93 = v21;
          v22 = v104;
          [v104 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:0];
          v23 = +[NSFileManager defaultManager];
          v24 = [v23 createDirectoryAtURL:v104 withIntermediateDirectories:1 attributes:0 error:errorCopy];

          v95 = v17;
          if (!v24)
          {
            v53 = 0;
            goto LABEL_122;
          }

          v91 = v16;
          path = [v104 path];
          v89 = CBGenerateObfuscatedSHA256HashedString();
          v26 = [[NSString alloc] initWithFormat:@"%@.%@", v89, @"daappInfodata"];
          v90 = path;
          v27 = [NSURL fileURLWithPath:path];
          v88 = v26;
          v28 = [v27 URLByAppendingPathComponent:v26 isDirectory:0];

          v97 = v28;
          v29 = [[NSDictionary alloc] initWithContentsOfURL:v28 error:0];
          v30 = [v29 mutableCopy];
          v31 = v30;
          if (v30)
          {
            v32 = v30;
          }

          else
          {
            v32 = objc_alloc_init(NSMutableDictionary);
          }

          v33 = v32;

          CFDictionaryGetTypeID();
          v87 = CFDictionaryGetTypedValue();
          v34 = [v87 mutableCopy];
          v35 = v34;
          if (v34)
          {
            v36 = v34;
          }

          else
          {
            v36 = objc_alloc_init(NSMutableDictionary);
          }

          v37 = v36;

          v101 = v37;
          v38 = [v37 objectForKeyedSubscript:deviceIdentifier];
          v39 = NSDictionaryGetNSNumber();
          unsignedIntegerValue = [v39 unsignedIntegerValue];

          v103 = v38;
          v41 = [v38 mutableCopy];
          v42 = v41;
          v92 = deviceIdentifier;
          if (v41)
          {
            v43 = v41;
          }

          else
          {
            v43 = objc_alloc_init(NSMutableDictionary);
          }

          v44 = v43;
          v98 = v29;

          Current = CFAbsoluteTimeGetCurrent();
          state = [infoCopy state];
          v47 = NSDictionaryGetNSNumber();
          integerValue = [v47 integerValue];

          appDiscoveryConfiguration = [infoCopy appDiscoveryConfiguration];
          if (([appDiscoveryConfiguration flags] & 0x40) != 0)
          {
            flags = [v102 flags];
            v52 = flags;
            v50 = (flags >> 10) & 1;

            if ((v52 & 0x400) != 0 && unsignedIntegerValue)
            {
              v22 = v104;
              if ((unsignedIntegerValue & 0x40000000) == 0)
              {
                if (errorCopy)
                {
                  DAErrorF(350011, "App already has access to this accessory via ASK");
                  *errorCopy = v53 = 0;
                }

                else
                {
                  v53 = 0;
                }

                deviceCopy = v102;
                deviceIdentifier = v92;
                goto LABEL_120;
              }
            }

            else
            {
              v22 = v104;
            }
          }

          else
          {

            LODWORD(v50) = 0;
          }

          if (!state)
          {
            v56 = 0;
            deviceCopy = v102;
            deviceIdentifier = v92;
LABEL_93:
            v57 = v98;

            v44 = v56;
LABEL_94:
            [v101 setObject:v44 forKeyedSubscript:deviceIdentifier];
            [v33 setObject:v101 forKeyedSubscript:@"devices"];
            [v33 setObject:bundleIdentifier forKeyedSubscript:@"bundleID"];
            if ([v33 isEqual:v57])
            {
              if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
              {
                sub_100031F34(infoCopy);
              }

              v53 = infoCopy;
              goto LABEL_121;
            }

            v71 = deviceIdentifier;
            if (v44)
            {
              discoveryConfiguration = [deviceCopy discoveryConfiguration];
              bluetoothIdentifier = [discoveryConfiguration bluetoothIdentifier];

              if (bluetoothIdentifier)
              {
                discoveryConfiguration2 = [deviceCopy discoveryConfiguration];
                bluetoothIdentifier2 = [discoveryConfiguration2 bluetoothIdentifier];

                cbCentralManager = selfCopy->_cbCentralManager;
                v112 = bluetoothIdentifier2;
                v77 = [NSArray arrayWithObjects:&v112 count:1];
                v78 = [(CBCentralManager *)cbCentralManager retrievePeripheralsWithIdentifiers:v77];

                if (v78 && [v78 count])
                {
                  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
                  {
                    sub_100031E74(v78);
                  }

                  firstObject = [v78 firstObject];
                  [firstObject tag:@"DA_ASK_RETAIN_DEVICE"];
                }
              }
            }

            v106 = 0;
            v80 = [NSPropertyListSerialization dataWithPropertyList:v33 format:200 options:0 error:&v106];
            v81 = v106;
            v82 = v81;
            if (v80)
            {
              v105 = v81;
              v83 = [v80 writeToURL:v97 options:1073741825 error:&v105];
              v84 = v105;

              if (v83)
              {
                deviceCopy = v102;
                if (v44)
                {
                  v22 = v104;
                  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
                  {
                    sub_100031EB4(infoCopy);
                  }

                  v53 = [[DADeviceAppAccessInfo alloc] initWithPersistentDictionaryRepresentation:v44 error:errorCopy];
                }

                else
                {
                  v22 = v104;
                  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
                  {
                    sub_100031EF4(infoCopy);
                  }

                  v53 = 0;
                }

                goto LABEL_119;
              }

              if (errorCopy)
              {
                DANestedErrorF();
                *errorCopy = v53 = 0;
              }

              else
              {
                v53 = 0;
              }
            }

            else
            {
              if (errorCopy)
              {
                DANestedErrorF();
                *errorCopy = v53 = 0;
              }

              else
              {
                v53 = 0;
              }

              v84 = v82;
            }

            deviceCopy = v102;
            v22 = v104;
LABEL_119:

            deviceIdentifier = v71;
LABEL_120:
            v57 = v98;
LABEL_121:

            v16 = v91;
LABEL_122:

LABEL_135:
            goto LABEL_136;
          }

          deviceCopy = v102;
          if (!((v99 != 0) | v50 & 1))
          {
            deviceIdentifier = v92;
            v57 = v98;
            goto LABEL_94;
          }

          [infoCopy setApproveTime:Current];
          if ([(DADaemonServer *)selfCopy deviceRequiresMultiTechDiscovery:v102])
          {
            v54 = DAWiFiScanDescriptor;
            v55 = (![v102 bluetoothSetupFinished] || (objc_msgSend(v102, "wifiAwareSetupFinished") & 1) == 0) && state == 10;
            v59 = v55 | [v102 upgradeInProgress];
          }

          else
          {
            v59 = state == 10 && integerValue != 10;
            v54 = DAWiFiScanDescriptor;
          }

          if ([v102 requiresWiFiAwareSetup] && state != integerValue)
          {
            v59 = 1;
          }

          if ((([v102 flags] & 8) == 0) | v50 & 1)
          {
            if (v50)
            {
              [infoCopy setAccessoryOptions:{objc_msgSend(infoCopy, "accessoryOptions") | 0x40000000}];
            }

            if (!v59)
            {
              goto LABEL_67;
            }
          }

          else
          {
            if (!v59)
            {
              [infoCopy setAccessoryOptions:{objc_msgSend(infoCopy, "accessoryOptions") | 0xFFFFFFFFBFFFFFFFLL}];
              accessoryOptions = [infoCopy accessoryOptions];
              if ((accessoryOptions & 1) != 0 && (v99 & 1) == 0 && ([infoCopy setAccessoryOptions:{objc_msgSend(infoCopy, "accessoryOptions") & 0xFFFFFFFFFFFFFFFELL}], superclass = v54[23].superclass, superclass <= 50) && (superclass != -1 || _LogCategory_Initialize()))
              {
                sub_100031DF4(infoCopy);
                if ((accessoryOptions & 2) == 0)
                {
                  goto LABEL_67;
                }
              }

              else if ((accessoryOptions & 2) == 0)
              {
                goto LABEL_67;
              }

              if ((v99 & 2) == 0)
              {
                [infoCopy setAccessoryOptions:{objc_msgSend(infoCopy, "accessoryOptions") & 0xFFFFFFFFFFFFFFFDLL}];
                v69 = v54[23].superclass;
                if (v69 <= 50 && (v69 != -1 || _LogCategory_Initialize()))
                {
                  sub_100031E34(infoCopy);
                }
              }

              goto LABEL_67;
            }

            [infoCopy setAccessoryOptions:v99];
          }

          v60 = [(DADaemonServer *)selfCopy _updateDeviceStateForBluetooth:infoCopy device:v102];
          [infoCopy setState:v60];
          [infoCopy setState:{-[DADaemonServer _updateDeviceStateForWifi:currentState:](selfCopy, "_updateDeviceStateForWifi:currentState:", v102, v60)}];
          state = [(DADaemonServer *)selfCopy _updateDeviceStateForWiFiAware:infoCopy device:v102 oldState:integerValue];
          [infoCopy setState:state];
LABEL_67:
          [infoCopy setState:state];
          discoveryConfiguration3 = [v102 discoveryConfiguration];
          if (discoveryConfiguration3)
          {
            [infoCopy setAppDiscoveryConfiguration:discoveryConfiguration3];
          }

          deviceIdentifier = v92;
          if (v50)
          {
            [infoCopy endTime];
            if (v62 == 0.0)
            {
              [infoCopy setEndTime:Current + selfCopy->_prefCheckAppSessionAccessSeconds];
            }
          }

          if (v99)
          {
            v63 = [(DADaemonServer *)selfCopy revokeBluetoothGlobalTCCIfNeededForDeviceAppAccessInfo:infoCopy device:v102];
            v64 = v54[23].superclass;
            if (v64 <= 50)
            {
              v65 = v63;
              if (v64 != -1 || _LogCategory_Initialize())
              {
                v66 = "no";
                if (v65)
                {
                  v66 = "yes";
                }

                LogPrintF(&dword_1000603A0, "[DADaemonServer _saveDeviceAppAccessInfo:device:error:]", 50, "revokeBluetoothTCC %@ Device %@ returned %s", infoCopy, v102, v66);
              }
            }
          }

          persistentDictionaryRepresentation = [infoCopy persistentDictionaryRepresentation];
          v56 = [persistentDictionaryRepresentation mutableCopy];

          v44 = persistentDictionaryRepresentation;
          v22 = v104;
          goto LABEL_93;
        }
      }
    }

    else if (error)
    {
      DAErrorF(350001, "No device ID");
      *error = v53 = 0;
      goto LABEL_135;
    }

    v53 = 0;
    goto LABEL_135;
  }

  if (error)
  {
    DAErrorF(350001, "No bundle ID");
    *error = v53 = 0;
  }

  else
  {
    v53 = 0;
  }

LABEL_136:

  return v53;
}

- (BOOL)modifyAccessoryDevice:(id)device session:(id)session settings:(id)settings error:(id *)error
{
  deviceCopy = device;
  sessionCopy = session;
  settingsCopy = settings;
  bundleID = [sessionCopy bundleID];
  identifier = [deviceCopy identifier];
  if ([identifier length])
  {
    v114[1] = 1;
    appAccessInfoMap2 = container_system_group_path_for_identifier();
    if (appAccessInfoMap2)
    {
      v104 = sessionCopy;
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100031F74(appAccessInfoMap2, v14, v15);
      }

      errorCopy = error;
      v17 = [NSURL fileURLWithFileSystemRepresentation:appAccessInfoMap2 isDirectory:1 relativeToURL:0];
      free(appAccessInfoMap2);
      if (!v17)
      {
        LOBYTE(appAccessInfoMap2) = 0;
        goto LABEL_115;
      }

      v18 = [v17 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
      v19 = [v18 URLByAppendingPathComponent:@"AccessorySetup" isDirectory:1];
      path = [v19 path];
      v112 = v19;
      v101 = v18;
      if (!v19 || !path)
      {
        if (errorCopy)
        {
          v85 = path;
          DAErrorF(350001, "Bad file path");
          *errorCopy = LOBYTE(appAccessInfoMap2) = 0;
          path = v85;
        }

        else
        {
          LOBYTE(appAccessInfoMap2) = 0;
        }

        goto LABEL_114;
      }

      v100 = path;
      v21 = [v19 URLByAppendingPathComponent:@"DADevices" isDirectory:1];
      v22 = +[NSFileManager defaultManager];
      v23 = [v22 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:errorCopy];

      if (!v23)
      {
        LOBYTE(appAccessInfoMap2) = 0;
        goto LABEL_113;
      }

      v99 = v17;
      v111 = v21;
      path2 = [v21 path];
      v25 = [[NSString alloc] initWithFormat:@"%@.%@", identifier, @"dadevicedata"];
      v98 = path2;
      v26 = [NSURL fileURLWithPath:path2];
      v97 = v25;
      v27 = [v26 URLByAppendingPathComponent:v25 isDirectory:0];

      path3 = [v27 path];
      appAccessInfoMap = [deviceCopy appAccessInfoMap];
      v30 = [appAccessInfoMap objectForKeyedSubscript:bundleID];

      v113 = v30;
      appDiscoveryConfiguration = [v30 appDiscoveryConfiguration];
      v31 = +[NSFileManager defaultManager];
      v95 = path3;
      LODWORD(v30) = [v31 fileExistsAtPath:path3];

      v32 = 0;
      if (v30)
      {
        v33 = [[NSDictionary alloc] initWithContentsOfURL:v27 error:0];

        v32 = v33 != 0;
      }

      v96 = v27;
      appAccessInfoMap2 = [deviceCopy appAccessInfoMap];
      v34 = [appAccessInfoMap2 objectForKeyedSubscript:bundleID];
      state = [v34 state];

      LOBYTE(appAccessInfoMap2) = 1;
      if (!v32)
      {
        v21 = v111;
        goto LABEL_112;
      }

      v21 = v111;
      if (state < 2)
      {
LABEL_112:

        v17 = v99;
LABEL_113:

        path = v100;
LABEL_114:

LABEL_115:
        sessionCopy = v104;
        goto LABEL_116;
      }

      if (state == 10)
      {
        if (errorCopy)
        {
          DAErrorF(350006, "Permission denied for current operation");
          *errorCopy = LOBYTE(appAccessInfoMap2) = 0;
        }

        else
        {
          LOBYTE(appAccessInfoMap2) = 0;
        }

        goto LABEL_112;
      }

      v93 = identifier;
      bluetoothClassicAddress = [deviceCopy bluetoothClassicAddress];
      name = [deviceCopy name];
      sSID = [deviceCopy SSID];
      displayName = [settingsCopy displayName];
      sSID2 = [settingsCopy SSID];
      wifiAwareDevicePairingID = [deviceCopy wifiAwareDevicePairingID];
      bridgingIdentifier = [settingsCopy bridgingIdentifier];
      iconType = [settingsCopy iconType];
      userInitiated = [settingsCopy userInitiated];
      discoveryConfiguration = [deviceCopy discoveryConfiguration];
      flags = [discoveryConfiguration flags];

      flags2 = [deviceCopy flags];
      flags3 = [appDiscoveryConfiguration flags];
      v108 = sSID2;
      v94 = bundleID;
      v91 = sSID;
      v92 = name;
      v90 = displayName;
      if (userInitiated)
      {
        if (sSID2 && ([sSID isEqualToString:sSID2] & 1) == 0)
        {
          [deviceCopy setSSID:sSID2];
          v43 = 1;
        }

        else
        {
          v43 = 0;
        }

        v87 = settingsCopy;
        if (displayName && ([name isEqualToString:displayName] & 1) == 0)
        {
          [deviceCopy setName:displayName];
          if (wifiAwareDevicePairingID)
          {
            name2 = [deviceCopy name];
            if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              sub_100031FB0(deviceCopy);
            }

            v48 = -[DADaemonServer _updateWiFiAwareDeviceNameFor:appPairingID:newName:](self, "_updateWiFiAwareDeviceNameFor:appPairingID:newName:", bundleID, [v113 wifiAwarePairingID], name2);
            v43 = v48 == 0;
          }

          else
          {
            v43 = 1;
          }
        }

        identifier2 = [iconType identifier];
        protocolType = [deviceCopy protocolType];
        identifier3 = [protocolType identifier];
        v52 = [identifier2 isEqualToString:identifier3];

        if (v52)
        {
          [deviceCopy setProtocolType:iconType];
          v43 = 1;
        }

        bluetoothIdentifier = [deviceCopy bluetoothIdentifier];

        v44 = 0;
        settingsCopy = v87;
        v45 = DAWiFiScanDescriptor;
        if (bluetoothIdentifier && (flags2 & 0x40) == 0)
        {
          v46 = bridgingIdentifier;
          if ((flags & 2) != 0)
          {
            if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              sub_10003201C();
            }

            v44 = 1;
          }

LABEL_39:
          if (state != 20)
          {
            if (state == 25)
            {
              v55 = userInitiated;
            }

            else
            {
              v55 = 1;
            }

            if ((v55 & 1) == 0)
            {
              superclass = v45[23].superclass;
              bundleID = v94;
              if (superclass <= 90 && (superclass != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_1000603A0, "[DADaemonServer modifyAccessoryDevice:session:settings:error:]", 90, "Device already authorized: %@", deviceCopy);
                v54 = 0;
                if (v43)
                {
                  v56 = 0;
                  goto LABEL_95;
                }
              }

              else
              {
                v56 = 0;
                v54 = 0;
                if (v43)
                {
                  goto LABEL_95;
                }
              }

LABEL_100:
              v83 = v45[23].superclass;
              if (v83 > 30)
              {
                LOBYTE(appAccessInfoMap2) = 1;
                identifier = v93;
                v21 = v111;
                v82 = v91;
              }

              else
              {
                identifier = v93;
                v21 = v111;
                v82 = v91;
                if (v83 != -1 || _LogCategory_Initialize())
                {
                  sub_100032090(deviceCopy);
                }

                LOBYTE(appAccessInfoMap2) = 1;
              }

              goto LABEL_111;
            }

            v56 = 0;
            v54 = 0;
LABEL_94:
            bundleID = v94;
            if (v43)
            {
              goto LABEL_95;
            }

            goto LABEL_100;
          }

          [v113 setState:25];
          [deviceCopy setState:25];
          v54 = 0;
          if (v46 && !bluetoothClassicAddress)
          {
            if ([0 isEqualToData:v46])
            {
              v54 = 0;
            }

            else
            {
              bytes = [v46 bytes];
              v54 = [NSString stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X", *bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5]];
              if (v54)
              {
                [deviceCopy setBluetoothClassicAddress:v46];
              }
            }
          }

          bluetoothClassicAddress2 = [deviceCopy bluetoothClassicAddress];

          if (!bluetoothClassicAddress2)
          {
            v43 |= (flags3 >> 4) & 1;
            goto LABEL_73;
          }

          [deviceCopy setBluetoothClassicAddress:v46];
          bluetoothIdentifier2 = [deviceCopy bluetoothIdentifier];
          cbCentralManager = self->_cbCentralManager;
          v115 = bluetoothIdentifier2;
          v62 = [NSArray arrayWithObjects:&v115 count:1];
          v63 = [(CBCentralManager *)cbCentralManager retrievePeripheralsWithIdentifiers:v62];

          if (![v63 count])
          {
LABEL_72:

            LOBYTE(v43) = 1;
            v46 = bridgingIdentifier;
LABEL_73:
            if (v108)
            {
              discoveryConfiguration2 = [deviceCopy discoveryConfiguration];
              hotspotSSIDPrefixes = [discoveryConfiguration2 hotspotSSIDPrefixes];
              firstObject = [hotspotSSIDPrefixes firstObject];

              if (firstObject && ([v108 hasPrefix:firstObject] & 1) == 0)
              {
                v70 = v45[23].superclass;
                if (v70 <= 90 && (v70 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&dword_1000603A0, "[DADaemonServer modifyAccessoryDevice:session:settings:error:]", 90, "SSID %@ did not match discovery config's prefix %@ for %@", v108, firstObject, deviceCopy);
                }

                [v113 setState:0];
                [deviceCopy setState:0];
                v56 = 1;
              }

              else
              {
                [deviceCopy setSSID:v108];
                v56 = 0;
              }

              v46 = bridgingIdentifier;

              LOBYTE(v43) = 1;
            }

            else
            {
              v56 = 0;
            }

            bluetoothIdentifier3 = [deviceCopy bluetoothIdentifier];

            v72 = v44 ^ 1;
            if (!bluetoothIdentifier3)
            {
              v72 = 1;
            }

            if ((v72 & 1) == 0)
            {
              v73 = v45[23].superclass;
              bundleID = v94;
              if (v73 <= 90 && (v73 != -1 || _LogCategory_Initialize()))
              {
                sub_10003201C();
              }

              [v113 setState:0];
              [deviceCopy setState:0];
              btPairingManager = self->_btPairingManager;
              if (btPairingManager)
              {
                getCurrentTaskBluetoothIdentifier = [(DABluetoothPairingManager *)btPairingManager getCurrentTaskBluetoothIdentifier];
                bluetoothIdentifier4 = [deviceCopy bluetoothIdentifier];
                v77 = [getCurrentTaskBluetoothIdentifier isEqual:bluetoothIdentifier4];

                if (v77)
                {
                  [(DABluetoothPairingManager *)self->_btPairingManager cancelCurrentTask];
                }

                v46 = bridgingIdentifier;
              }

LABEL_95:
              v114[0] = 0;
              v78 = [(DADaemonServer *)self updateAppAccessInfo:v113 accessoryDevice:deviceCopy removalType:0 error:v114];
              v79 = v114[0];
              v80 = v79;
              if (v78)
              {
                if (v56)
                {
                  v21 = v111;
                  if (errorCopy)
                  {
                    DAErrorF(350001, "SSID did not match discovery configuration's SSID prefix.");
                    *errorCopy = LOBYTE(appAccessInfoMap2) = 0;
                  }

                  else
                  {
                    LOBYTE(appAccessInfoMap2) = 0;
                  }
                }

                else
                {
                  v81 = v45[23].superclass;
                  v21 = v111;
                  if (v81 <= 30)
                  {
                    identifier = v93;
                    v82 = v91;
                    if (v81 != -1 || _LogCategory_Initialize())
                    {
                      LogPrintF(&dword_1000603A0, "[DADaemonServer modifyAccessoryDevice:session:settings:error:]", 30, "SaveDeviceSettings: changed, %@, %@", v104, deviceCopy);
                    }

                    LOBYTE(appAccessInfoMap2) = 1;
                    goto LABEL_110;
                  }

                  LOBYTE(appAccessInfoMap2) = 1;
                }

                identifier = v93;
              }

              else
              {
                identifier = v93;
                if (errorCopy)
                {
                  v86 = v79;
                  LOBYTE(appAccessInfoMap2) = 0;
                  *errorCopy = v80;
                }

                else
                {
                  LOBYTE(appAccessInfoMap2) = 0;
                }

                v21 = v111;
              }

              v82 = v91;
LABEL_110:

LABEL_111:
              goto LABEL_112;
            }

            goto LABEL_94;
          }

          v64 = [v63 objectAtIndexedSubscript:0];
          v65 = v45[23].superclass;
          if (v65 <= 40 && (v65 != -1 || _LogCategory_Initialize()))
          {
            sub_100032050(v63);
            if (v64)
            {
LABEL_61:
              v66 = v45[23].superclass;
              if (v66 <= 40 && (v66 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_1000603A0, "[DADaemonServer modifyAccessoryDevice:session:settings:error:]", 40, "### modifyAccessoryDevice CBPeripheral %@ setting bridging property %@", v63, v54);
              }

              [v64 setCustomProperty:@"ASK_RELATED_RADIO_ADDRESS" value:v54];
            }
          }

          else if (v64)
          {
            goto LABEL_61;
          }

          goto LABEL_72;
        }
      }

      else
      {
        v44 = 0;
        v43 = 0;
        v45 = DAWiFiScanDescriptor;
      }

      v46 = bridgingIdentifier;
      goto LABEL_39;
    }
  }

  else if (error)
  {
    DAErrorF(350001, "No device ID");
    *error = LOBYTE(appAccessInfoMap2) = 0;
  }

  else
  {
    LOBYTE(appAccessInfoMap2) = 0;
  }

LABEL_116:

  return appAccessInfoMap2;
}

- (BOOL)_saveAccessoryDevice:(id)device oldDeviceReference:(id)reference bundleID:(id)d existingOptions:(unint64_t)options removalType:(int64_t)type error:(id *)error
{
  deviceCopy = device;
  referenceCopy = reference;
  dCopy = d;
  identifier = [deviceCopy identifier];
  if (![identifier length])
  {
    if (error)
    {
      DAErrorF(350001, "No device ID");
      *error = v60 = 0;
      goto LABEL_109;
    }

LABEL_108:
    v60 = 0;
    goto LABEL_109;
  }

  error[1] = 1;
  v16 = container_system_group_path_for_identifier();
  if (!v16)
  {
    goto LABEL_108;
  }

  v19 = v16;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000320D0(v19, v17, v18);
  }

  errorCopy = error;
  v20 = [NSURL fileURLWithFileSystemRepresentation:v19 isDirectory:1 relativeToURL:0];
  free(v19);
  if (!v20)
  {
    goto LABEL_108;
  }

  v21 = [v20 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
  error[0] = 0;
  if (!CFURLSetResourcePropertyForKey(v21, _kCFURLIsExcludedFromUnencryptedBackupKey, kCFBooleanTrue, error) && dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10003210C(error);
  }

  [(__CFURL *)v21 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:0];
  v77 = v21;
  v22 = [(__CFURL *)v21 URLByAppendingPathComponent:@"AccessorySetup" isDirectory:1];
  path = [v22 path];
  v76 = path;
  if (!v22 || !path)
  {
    sub_100031CEC();
    v60 = 0;
    goto LABEL_105;
  }

  v75 = v20;
  v85 = dCopy;
  v80 = referenceCopy;
  [v22 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:0];
  v24 = [v22 URLByAppendingPathComponent:@"DADevices" isDirectory:1];
  v25 = +[NSFileManager defaultManager];
  v26 = [v25 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:errorCopy];

  if (!v26)
  {
    v60 = 0;
    goto LABEL_104;
  }

  [v24 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:0];
  path2 = [v24 path];
  v28 = [[NSString alloc] initWithFormat:@"%@.%@", identifier, @"dadevicedata"];
  v74 = path2;
  v29 = [NSURL fileURLWithPath:path2];
  v73 = v28;
  v30 = [v29 URLByAppendingPathComponent:v28 isDirectory:0];

  path3 = [v30 path];
  v32 = +[NSFileManager defaultManager];
  v79 = path3;
  v33 = [v32 fileExistsAtPath:path3];
  v34 = 0;
  if (v33)
  {
    v34 = [[NSDictionary alloc] initWithContentsOfURL:v30 error:0];
  }

  v84 = v30;

  v35 = [v34 mutableCopy];
  v36 = v35;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = objc_alloc_init(NSMutableDictionary);
  }

  v38 = v37;

  CFStringGetTypeID();
  v83 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v82 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v39 = CFDictionaryGetTypedValue();
  v72 = v39;
  if (v39)
  {
    v81 = [[NSUUID alloc] initWithUUIDString:v39];
  }

  else
  {
    v81 = 0;
  }

  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 0;
  appAccessInfoMap = [deviceCopy appAccessInfoMap];
  v96[0] = _NSConcreteStackBlock;
  v96[1] = 3221225472;
  v96[2] = sub_10000ECB8;
  v96[3] = &unk_100059000;
  v96[4] = &v97;
  [appAccessInfoMap enumerateKeysAndObjectsUsingBlock:v96];

  if (type != 2 && type != 6 && v98[3] || [deviceCopy state] == 1)
  {
    persistentDictionaryRepresentation = [deviceCopy persistentDictionaryRepresentation];
    v87 = [persistentDictionaryRepresentation mutableCopy];

    v38 = persistentDictionaryRepresentation;
  }

  else
  {
    v87 = 0;
  }

  [(DADaemonServer *)self _refreshRegistrationForBTConnectionEvents];
  v42 = [v87 isEqual:v34];
  state = [deviceCopy state];
  v44 = v42 ^ 1;
  if (state == 1)
  {
    v44 = 1;
  }

  if ((v44 & 1) == 0)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000603A0, "[DADaemonServer _saveAccessoryDevice:oldDeviceReference:bundleID:existingOptions:removalType:error:]", 30, "SaveDevice: no changes, %@, %@", v85, deviceCopy);
    }

    v60 = 1;
    goto LABEL_103;
  }

  if (!v87)
  {
    v50 = +[NSFileManager defaultManager];
    v51 = [v50 fileExistsAtPath:v79];

    if (v51)
    {
      v52 = +[NSFileManager defaultManager];
      v93 = 0;
      v53 = [v52 removeItemAtURL:v84 error:&v93];
      v54 = v93;

      if ((v53 & 1) == 0)
      {
        if (errorCopy)
        {
          DANestedErrorF();
          *errorCopy = v60 = 0;
        }

        else
        {
          v60 = 0;
        }

        v49 = v54;
        goto LABEL_102;
      }

      v71 = v54;
      displayImageFileURL = [deviceCopy displayImageFileURL];
      path4 = [displayImageFileURL path];
      if (path4 && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v56 = objc_claimAutoreleasedReturnValue(), v57 = [v56 fileExistsAtPath:path4], v56, v57))
      {
        v58 = +[NSFileManager defaultManager];
        v92 = v71;
        v59 = [v58 removeItemAtURL:displayImageFileURL error:&v92];
        v49 = v92;

        if ((v59 & 1) == 0)
        {
          if (errorCopy)
          {
            *errorCopy = DANestedErrorF();
          }

          goto LABEL_119;
        }
      }

      else
      {
        v49 = v71;
      }

      if (type)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v49 = 0;
      if (type)
      {
        goto LABEL_59;
      }
    }

    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000603A0, "[DADaemonServer _saveAccessoryDevice:oldDeviceReference:bundleID:existingOptions:removalType:error:]", 30, "SaveDevice: unlinking accessory, %@, %@", v85, deviceCopy);
    }

    goto LABEL_101;
  }

  v95 = 0;
  v45 = [NSPropertyListSerialization dataWithPropertyList:v87 format:200 options:0 error:&v95];
  v46 = v95;
  v47 = v46;
  if (!v45)
  {
    if (!errorCopy)
    {
      v49 = v46;
      goto LABEL_118;
    }

    v69 = DANestedErrorF();
    v49 = v47;
    goto LABEL_116;
  }

  v94 = v46;
  v48 = [v45 writeToURL:v84 options:1073741825 error:&v94];
  v49 = v94;

  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _saveAccessoryDevice:oldDeviceReference:bundleID:existingOptions:removalType:error:]", 30, "SaveDevice: changes, %@, %@", deviceCopy, v49);
  }

  if ((v48 & 1) == 0)
  {
    if (!errorCopy)
    {
LABEL_118:

LABEL_119:
      v60 = 0;
      goto LABEL_102;
    }

    v69 = DANestedErrorF();
LABEL_116:
    *errorCopy = v69;
    goto LABEL_118;
  }

  if (type == 5)
  {
LABEL_59:
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      if ((type - 1) > 4)
      {
        v61 = "None";
      }

      else
      {
        v61 = off_1000597D8[type - 1];
      }

      LogPrintF(&dword_1000603A0, "[DADaemonServer _saveAccessoryDevice:oldDeviceReference:bundleID:existingOptions:removalType:error:]", 30, "SaveDevice: remove (%s) accessory, %@, %@", v61, v85, deviceCopy);
    }

    if (type <= 6 && ((1 << type) & 0x64) != 0 || !v98[3] && type <= 4 && ((1 << type) & 0x1A) != 0)
    {
      if (v83)
      {
        v62 = [[NSUUID alloc] initWithUUIDString:v83];
        [(DADaemonServer *)self _forgetBluetoothDevice:v62];
      }

      if (v82)
      {
        [(DADaemonServer *)self _forgetWiFiDevice:v82];
      }

      v60 = 1;
      if (type != 6 && v81)
      {
        [(DADaemonServer *)self _forgetWiFiAwareDevice:v80];
      }

      goto LABEL_102;
    }

    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000603A0, "[DADaemonServer _saveAccessoryDevice:oldDeviceReference:bundleID:existingOptions:removalType:error:]", 30, "SaveDevice: unlinked accessory, %@, %@", v85, deviceCopy);
    }

    goto LABEL_101;
  }

  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _saveAccessoryDevice:oldDeviceReference:bundleID:existingOptions:removalType:error:]", 30, "SaveDevice: changed, %@, %@", v85, deviceCopy);
  }

  v60 = 1;
  if (type != 1 || !v81)
  {
    goto LABEL_102;
  }

  appAccessInfoMap2 = [v80 appAccessInfoMap];
  v64 = [appAccessInfoMap2 objectForKeyedSubscript:v85];
  wifiAwarePairingID = [v64 wifiAwarePairingID];

  if (wifiAwarePairingID)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      name = [deviceCopy name];
      identifier2 = [deviceCopy identifier];
      LogPrintF(&dword_1000603A0, "[DADaemonServer _saveAccessoryDevice:oldDeviceReference:bundleID:existingOptions:removalType:error:]", 30, "Uninstalling Wi-Fi Aware device %@, deviceID='%@', forBundleID='%@'", name, identifier2, v85);
    }

    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_10000ED4C;
    v88[3] = &unk_100059028;
    v49 = v49;
    v89 = v49;
    v90 = deviceCopy;
    v91 = v85;
    [(DADaemonServer *)self _uninstallWiFiAwareDeviceFor:v91 appPairingID:wifiAwarePairingID completionHandler:v88];
  }

LABEL_101:
  v60 = 1;
LABEL_102:

LABEL_103:
  _Block_object_dispose(&v97, 8);

LABEL_104:
  referenceCopy = v80;
  dCopy = v85;
  v20 = v75;
LABEL_105:

LABEL_109:
  return v60;
}

- (void)_updateDeviceStateTimer
{
  selfCopy = self;
  deviceStateTimer = self->_deviceStateTimer;
  if (self->_deviceStateHasTransient)
  {
    if (!deviceStateTimer)
    {
      v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      v6 = selfCopy->_deviceStateTimer;
      selfCopy->_deviceStateTimer = v5;

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10000F024;
      handler[3] = &unk_100058CB8;
      handler[4] = v5;
      handler[5] = selfCopy;
      dispatch_source_set_event_handler(v5, handler);
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100032230(selfCopy);
      }

      CUDispatchTimerSet();
      dispatch_activate(v5);
    }

    return;
  }

  if (!deviceStateTimer)
  {
    return;
  }

  if (dword_1000603A0 >= 31)
  {
    v7 = deviceStateTimer;
LABEL_14:
    v9 = v7;
    dispatch_source_cancel(v7);
    v8 = selfCopy->_deviceStateTimer;
    selfCopy->_deviceStateTimer = 0;

    return;
  }

  if (dword_1000603A0 != -1 || (self = _LogCategory_Initialize(), self))
  {
    sub_100032214(self, a2, v2);
  }

  v7 = selfCopy->_deviceStateTimer;
  if (v7)
  {
    goto LABEL_14;
  }
}

- (id)addDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  configuration = [discoveryCopy configuration];
  bundleID = [configuration bundleID];
  v7 = bundleID;
  if (bundleID)
  {
    bundleID2 = bundleID;
  }

  else
  {
    bundleID2 = [discoveryCopy bundleID];
  }

  v9 = bundleID2;

  configuration2 = [discoveryCopy configuration];
  configurations = [discoveryCopy configurations];
  flags = [discoveryCopy flags];
  if (self->_cbCentralManager)
  {
    if (v9)
    {
LABEL_6:
      v13 = [(NSMutableDictionary *)self->_discoveryMap objectForKeyedSubscript:v9];
      if (!v13)
      {
        v13 = objc_alloc_init(DADaemonDiscovery);
        discoveryMap = self->_discoveryMap;
        if (!discoveryMap)
        {
          v15 = objc_alloc_init(NSMutableDictionary);
          v16 = self->_discoveryMap;
          self->_discoveryMap = v15;

          discoveryMap = self->_discoveryMap;
        }

        [(NSMutableDictionary *)discoveryMap setObject:v13 forKeyedSubscript:v9];
        v17 = [(DADaemonServer *)self _statefulDevicesForAppID:v9];
        [(DADaemonDiscovery *)v13 setStatefulDeviceMap:v17];
      }

      discoverySet = [(DADaemonDiscovery *)v13 discoverySet];
      if (!discoverySet)
      {
        discoverySet = objc_alloc_init(NSMutableSet);
        [(DADaemonDiscovery *)v13 setDiscoverySet:discoverySet];
      }

      [discoverySet addObject:discoveryCopy];
      discoveryObj = [(DADaemonDiscovery *)v13 discoveryObj];
      if (discoveryObj)
      {
        v20 = discoveryObj;
        if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000322A4(discoverySet, v20);
        }
      }

      else
      {
        v24 = objc_alloc_init(DADiscovery);
        [(DADaemonDiscovery *)v13 setDiscoveryObj:v24];
        [v24 setBundleID:v9];
        [v24 setConfiguration:configuration2];
        [v24 setConfigurations:configurations];
        [v24 setFlags:{objc_msgSend(v24, "flags") | flags}];
        [v24 setDirect:1];
        [v24 setDispatchQueue:self->_dispatchQueue];
        v30 = _NSConcreteStackBlock;
        v31 = 3221225472;
        v32 = sub_10000F474;
        v33 = &unk_100059050;
        v20 = v24;
        v34 = v20;
        v35 = v13;
        selfCopy = self;
        v37 = v9;
        [v20 setEventHandler:&v30];
        if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000322F4(v20);
        }

        [v20 activate];
      }

      deviceMap = [(DADaemonDiscovery *)v13 deviceMap];
      allValues = [deviceMap allValues];
      v27 = allValues;
      v28 = &__NSArray0__struct;
      if (allValues)
      {
        v28 = allValues;
      }

      v23 = v28;

      goto LABEL_29;
    }
  }

  else
  {
    v21 = [[CBCentralManager alloc] initWithDelegate:self queue:self->_dispatchQueue options:0];
    cbCentralManager = self->_cbCentralManager;
    self->_cbCentralManager = v21;

    if (v9)
    {
      goto LABEL_6;
    }
  }

  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100032334(discoveryCopy);
  }

  v23 = 0;
LABEL_29:

  return v23;
}

- (void)removeDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  configuration = [discoveryCopy configuration];
  bundleID = [configuration bundleID];
  if (bundleID)
  {
    bundleID2 = bundleID;
  }

  else
  {
    bundleID2 = [discoveryCopy bundleID];

    if (!bundleID2)
    {
      sub_100032404();
      goto LABEL_16;
    }
  }

  v8 = [(NSMutableDictionary *)self->_discoveryMap objectForKeyedSubscript:bundleID2];
  discoveryObj = [v8 discoveryObj];
  discoverySet = [v8 discoverySet];
  [discoverySet removeObject:discoveryCopy];
  if ([discoverySet count])
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100032374(discoverySet, discoveryObj);
    }
  }

  else
  {
    deviceMap = [v8 deviceMap];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000F73C;
    v14[3] = &unk_100059078;
    v14[4] = self;
    [deviceMap enumerateKeysAndObjectsUsingBlock:v14];
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000323C4(discoveryObj);
    }

    deviceMap2 = [v8 deviceMap];
    v13 = [deviceMap2 count];

    [v8 setDeviceMap:0];
    [v8 setDiscoveryObj:0];
    [v8 setDiscoverySet:0];
    [(NSMutableDictionary *)self->_discoveryMap setObject:0 forKeyedSubscript:bundleID2];
    [discoveryObj invalidate];
    if (v13)
    {
      [(DADaemonServer *)self _reportDevicesPresentChanged:0 appID:bundleID2];
    }

    [(DADaemonServer *)self _necpCleanupIfNeeded];
    [(DADaemonServer *)self _cleanupWiFiDiscoveryIfPossible:0];
    [(DADaemonServer *)self _cleanupBTDiscoveryIfPossible:0];
  }

LABEL_16:
}

- (void)_reportDevicesMigratedEvent:(id)event appID:(id)d
{
  eventCopy = event;
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_xpcConnections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) reportDevicesMigrated:eventCopy appID:{dCopy, v13}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_reportDiscoveryEvent:(id)event appID:(id)d
{
  eventCopy = event;
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_xpcConnections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) reportDiscoveryEvent:eventCopy appID:{dCopy, v13}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)runMigrationWithDiscovery:(id)discovery fromPostOnboarding:(BOOL)onboarding
{
  discoveryCopy = discovery;
  bundleID = [discoveryCopy bundleID];
  if (!bundleID)
  {
    sub_1000326B8(0, v6, v7);
    goto LABEL_116;
  }

  if (!self->_cbCentralManager)
  {
    v9 = [[CBCentralManager alloc] initWithDelegate:self queue:self->_dispatchQueue options:0];
    cbCentralManager = self->_cbCentralManager;
    self->_cbCentralManager = v9;
  }

  v11 = [(DADaemonServer *)self getDevicesWithFlags:8 appID:bundleID];
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10003247C(v11);
  }

  v89 = v11;
  v12 = self->_cbCentralManager;
  v111 = _NSConcreteStackBlock;
  v112 = 3221225472;
  v113 = sub_10001098C;
  v114 = &unk_1000590F0;
  v115 = bundleID;
  v96 = v115;
  [CBCentralManager retrieveBundle:v12 sessionCountWithCompletion:"retrieveBundle:sessionCountWithCompletion:"];
  v13 = +[NSMutableArray array];
  configuration = [discoveryCopy configuration];
  selfCopy = self;
  v90 = bundleID;
  v88 = configuration;
  if (configuration)
  {
    v15 = configuration;
    bluetoothIdentifier = [configuration bluetoothIdentifier];
    if (bluetoothIdentifier || ([v15 networkHotspotSSID], (bluetoothIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
    {

      goto LABEL_11;
    }

    if ([v15 wifiAwarePairingID])
    {
      wifiAwareServiceName = [v15 wifiAwareServiceName];

      if (wifiAwareServiceName)
      {
LABEL_11:
        if (onboarding || ([(DADaemonServer *)self _findDADeviceWithMigrationConfig:v15], (configurations2 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          bluetoothIdentifier2 = [v15 bluetoothIdentifier];

          if (bluetoothIdentifier2)
          {
            bluetoothIdentifier3 = [v15 bluetoothIdentifier];
            configurations2 = objc_alloc_init(DADevice);
            v20 = +[NSUUID UUID];
            uUIDString = [v20 UUIDString];
            [configurations2 setIdentifier:uUIDString];

            bluetoothIdentifier4 = [v15 bluetoothIdentifier];
            [configurations2 setBluetoothIdentifier:bluetoothIdentifier4];

            if ([(CBCentralManager *)self->_cbCentralManager state]== 5)
            {
              v23 = self->_cbCentralManager;
              v120 = bluetoothIdentifier3;
              v24 = [NSArray arrayWithObjects:&v120 count:1];
              v25 = [(CBCentralManager *)v23 retrievePeripheralsWithIdentifiers:v24];

              if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
              {
                sub_100032508(v25);
              }

              if ([v25 count])
              {
                v26 = configurations2;
                v27 = v13;
                v28 = [v25 objectAtIndex:0];
                name = [v28 name];

                if (name)
                {
                  name2 = [v28 name];
                  [v26 setBluetoothOTAName:name2];
                }

                v13 = v27;
                configurations2 = v26;
              }
            }

            else if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              sub_1000324C0(&self->_cbCentralManager);
            }

            [configurations2 setDiscoveryConfiguration:v15];
            [configurations2 setFlags:8];
            displayName = [v15 displayName];
            [configurations2 setName:displayName];

            networkHotspotSSID = [v15 networkHotspotSSID];

            if (networkHotspotSSID)
            {
              networkHotspotSSID2 = [v15 networkHotspotSSID];
              [configurations2 setSSID:networkHotspotSSID2];
            }

            if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              sub_100032548(configurations2);
            }

LABEL_36:

            [v13 addObject:configurations2];
LABEL_78:

            goto LABEL_79;
          }

          configurations2 = 0;
        }

        if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100032588(configurations2);
        }

        bluetoothIdentifier3 = [discoveryCopy configuration];
        associationIdentifier = [bluetoothIdentifier3 associationIdentifier];
        discoveryConfiguration = [configurations2 discoveryConfiguration];
        [discoveryConfiguration setAssociationIdentifier:associationIdentifier];

        goto LABEL_36;
      }
    }
  }

  onboardingCopy = onboarding;
  configurations = [discoveryCopy configurations];
  v38 = [configurations count];

  if (v38)
  {
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    configurations2 = [discoveryCopy configurations];
    v39 = [configurations2 countByEnumeratingWithState:&v107 objects:v119 count:16];
    if (v39)
    {
      v40 = *v108;
      v41 = onboardingCopy;
      v42 = v39;
      do
      {
        v43 = 0;
        v93 = v42;
        do
        {
          if (*v108 != v40)
          {
            objc_enumerationMutation(configurations2);
          }

          v44 = *(*(&v107 + 1) + 8 * v43);
          if ((v41 || (-[DADaemonServer _findDADeviceWithMigrationConfig:](selfCopy, "_findDADeviceWithMigrationConfig:", *(*(&v107 + 1) + 8 * v43)), (v45 = objc_claimAutoreleasedReturnValue()) == 0)) && ([v44 bluetoothIdentifier], v45 = objc_claimAutoreleasedReturnValue(), v45, v45))
          {
            v46 = configurations2;
            v47 = v13;
            bluetoothIdentifier5 = [v44 bluetoothIdentifier];
            v45 = objc_alloc_init(DADevice);
            v49 = +[NSUUID UUID];
            uUIDString2 = [v49 UUIDString];
            [v45 setIdentifier:uUIDString2];

            bluetoothIdentifier6 = [v44 bluetoothIdentifier];
            [v45 setBluetoothIdentifier:bluetoothIdentifier6];

            if ([(CBCentralManager *)selfCopy->_cbCentralManager state]== 5)
            {
              v52 = selfCopy->_cbCentralManager;
              v118 = bluetoothIdentifier5;
              v53 = [NSArray arrayWithObjects:&v118 count:1];
              v54 = [(CBCentralManager *)v52 retrievePeripheralsWithIdentifiers:v53];

              if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
              {
                sub_100032508(v54);
              }

              if ([v54 count])
              {
                v55 = [v54 objectAtIndex:0];
                name3 = [v55 name];

                if (name3)
                {
                  name4 = [v55 name];
                  [v45 setBluetoothOTAName:name4];
                }
              }
            }

            else if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              sub_1000325C8(&selfCopy->_cbCentralManager, v45);
            }

            [v45 setDiscoveryConfiguration:v44];
            [v45 setFlags:8];
            displayName2 = [v44 displayName];
            [v45 setName:displayName2];

            networkHotspotSSID3 = [v44 networkHotspotSSID];

            v13 = v47;
            v41 = onboardingCopy;
            if (networkHotspotSSID3)
            {
              networkHotspotSSID4 = [v44 networkHotspotSSID];
              [v45 setSSID:networkHotspotSSID4];
            }

            configurations2 = v46;
            if (dword_1000603A0 > 50)
            {
              v42 = v93;
            }

            else
            {
              v42 = v93;
              if (dword_1000603A0 != -1 || _LogCategory_Initialize())
              {
                sub_100032548(v45);
              }
            }
          }

          else
          {
            if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              sub_100032588(v45);
            }

            bluetoothIdentifier5 = [v44 associationIdentifier];
            discoveryConfiguration2 = [v45 discoveryConfiguration];
            [discoveryConfiguration2 setAssociationIdentifier:bluetoothIdentifier5];
          }

          [v13 addObject:v45];
          v43 = v43 + 1;
        }

        while (v42 != v43);
        v62 = [configurations2 countByEnumeratingWithState:&v107 objects:v119 count:16];
        v42 = v62;
      }

      while (v62);
      self = selfCopy;
    }

    goto LABEL_78;
  }

LABEL_79:
  v92 = +[NSMutableArray array];
  v94 = +[NSMutableArray array];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v63 = v13;
  v64 = [v63 countByEnumeratingWithState:&v103 objects:v117 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v104;
    do
    {
      for (i = 0; i != v65; i = i + 1)
      {
        if (*v104 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = *(*(&v103 + 1) + 8 * i);
        identifier = [v68 identifier];
        if (identifier)
        {
          bundleID2 = [discoveryCopy bundleID];
          if (bundleID2)
          {
            v71 = [(DADaemonServer *)self appBundleInfoAccessoryOptions:bundleID2]& 3;
            if (v71)
            {
              appAccessInfoMap = [v68 appAccessInfoMap];
              v73 = [appAccessInfoMap count];

              if (v73)
              {
                [v94 addObject:v68];
              }

              else
              {
                v74 = [[DADeviceAppAccessInfo alloc] initWithBundleIdentifier:v96 deviceIdentifier:identifier state:25];
                [v74 setAccessoryOptions:v71];
                appAccessInfoDeviceMap = [v68 appAccessInfoDeviceMap];
                v76 = [appAccessInfoDeviceMap objectForKeyedSubscript:bundleID2];

                if (!v76)
                {
                  v77 = +[NSMutableDictionary dictionary];
                  [v68 setAppAccessInfoDeviceMap:v77];
                }

                appAccessInfoDeviceMap2 = [v68 appAccessInfoDeviceMap];
                [appAccessInfoDeviceMap2 setObject:v74 forKeyedSubscript:bundleID2];

                [v68 setFlags:{objc_msgSend(v68, "flags") | 0x100}];
                v102 = 0;
                [(DADaemonServer *)selfCopy updateAppAccessInfo:v74 accessoryDevice:v68 removalType:0 error:&v102];
                v79 = v102;
                if (v79)
                {
                  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
                  {
                    sub_10003261C(v79, v68);
                  }
                }

                else
                {
                  [v92 addObject:v68];
                }
              }

              self = selfCopy;
            }

            else
            {
              self = selfCopy;
              if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
              {
                sub_100032678(v68);
              }
            }
          }
        }
      }

      v65 = [v63 countByEnumeratingWithState:&v103 objects:v117 count:16];
    }

    while (v65);
  }

  if ([v94 count])
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v80 = v94;
    v81 = [v80 countByEnumeratingWithState:&v98 objects:v116 count:16];
    if (v81)
    {
      v82 = v81;
      v83 = *v99;
      do
      {
        for (j = 0; j != v82; j = j + 1)
        {
          if (*v99 != v83)
          {
            objc_enumerationMutation(v80);
          }

          v85 = [[DADeviceEvent alloc] initWithEventType:40 device:*(*(&v98 + 1) + 8 * j)];
          [(DADaemonServer *)self _discoveryEvent:v85 appID:v96];
        }

        v82 = [v80 countByEnumeratingWithState:&v98 objects:v116 count:16];
      }

      while (v82);
    }
  }

  v86 = [[DAEventDevicesPresent alloc] initWithMigration:1];
  v87 = [v92 arrayByAddingObjectsFromArray:v94];
  [v86 setDevices:v87];

  [(DADaemonServer *)self _reportDevicesMigratedEvent:v86 appID:v96];
  bundleID = v90;
LABEL_116:
}

- (void)runUpgradeWithDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  bundleID = [discoveryCopy bundleID];
  if (!bundleID)
  {
    sub_100032934(0, v5, v6);
    goto LABEL_48;
  }

  configurations = [discoveryCopy configurations];
  firstObject = [configurations firstObject];

  if (!firstObject)
  {
    sub_1000328D4(v10, v11, v12);
    goto LABEL_47;
  }

  selfCopy = self;
  v45 = bundleID;
  v13 = [(DADaemonServer *)self getDevicesWithFlags:8 appID:bundleID];
  existingDeviceIdentifier = [firstObject existingDeviceIdentifier];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (!v16)
  {
LABEL_11:

LABEL_12:
    sub_100032860(&v50);
    v23 = v50;
    bundleID = v45;
    goto LABEL_46;
  }

  v17 = v16;
  v18 = *v47;
LABEL_5:
  v19 = 0;
  while (1)
  {
    if (*v47 != v18)
    {
      objc_enumerationMutation(v15);
    }

    v20 = *(*(&v46 + 1) + 8 * v19);
    identifier = [v20 identifier];
    v22 = [identifier isEqualToString:existingDeviceIdentifier];

    if (v22)
    {
      break;
    }

    if (v17 == ++v19)
    {
      v17 = [v15 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v17)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v24 = v20;

  if (!v24)
  {
    goto LABEL_12;
  }

  v44 = discoveryCopy;
  bluetoothIdentifier = [v24 bluetoothIdentifier];

  wifiAwareDevicePairingID = [v24 wifiAwareDevicePairingID];

  v43 = v24;
  sSID = [v24 SSID];

  bluetoothServices = [firstObject bluetoothServices];
  if (bluetoothServices)
  {
    v29 = firstObject;
    v30 = 1;
  }

  else
  {
    bluetoothCompanyIdentifiers = [firstObject bluetoothCompanyIdentifiers];
    v29 = firstObject;
    v30 = bluetoothCompanyIdentifiers != 0;
  }

  wifiAwareServiceName = [v29 wifiAwareServiceName];

  hotspotSSIDs = [v29 hotspotSSIDs];
  v34 = v29;
  if (hotspotSSIDs)
  {
    v35 = 0;
  }

  else
  {
    hotspotSSIDPrefixes = [v29 hotspotSSIDPrefixes];
    v35 = hotspotSSIDPrefixes == 0;
  }

  if (bluetoothIdentifier && wifiAwareDevicePairingID)
  {
    if (dword_1000603A0 <= 90)
    {
      discoveryCopy = v44;
      bundleID = v45;
      firstObject = v34;
      v23 = v43;
      if (dword_1000603A0 != -1 || _LogCategory_Initialize())
      {
        sub_100032760();
      }

      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (sSID != 0 && !v30 && !wifiAwareServiceName)
  {
    if (dword_1000603A0 <= 90)
    {
      discoveryCopy = v44;
      bundleID = v45;
      firstObject = v34;
      v23 = v43;
      if (dword_1000603A0 != -1 || _LogCategory_Initialize())
      {
        sub_100032794();
      }

      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (wifiAwareDevicePairingID != 0 && !v35)
  {
    if (dword_1000603A0 <= 90)
    {
      discoveryCopy = v44;
      bundleID = v45;
      firstObject = v34;
      v23 = v43;
      if (dword_1000603A0 != -1 || _LogCategory_Initialize())
      {
        sub_1000327C8();
      }

      goto LABEL_46;
    }

LABEL_44:
    discoveryCopy = v44;
    bundleID = v45;
    firstObject = v34;
LABEL_45:
    v23 = v43;
    goto LABEL_46;
  }

  if (!bluetoothIdentifier || !wifiAwareServiceName)
  {
    v39 = !v30;
    if (!wifiAwareDevicePairingID || !v30)
    {
      firstObject = v34;
      if (sSID && wifiAwareServiceName)
      {
        discoveryCopy = v44;
        bundleID = v45;
        v37 = selfCopy;
        v23 = v43;
        if (dword_1000603A0 > 30 || dword_1000603A0 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_62;
        }

        v38 = "Upgrade device to add Wi-Fi aware transport and remove previous SoftAP access";
        goto LABEL_39;
      }

      discoveryCopy = v44;
      if (sSID == 0 || v39)
      {
        bundleID = v45;
        goto LABEL_45;
      }

      v40 = dword_1000603A0;
      v41 = dword_1000603A0 <= 30;
      bundleID = v45;
    }

    else
    {
      v40 = dword_1000603A0;
      v41 = dword_1000603A0 <= 30;
      discoveryCopy = v44;
      bundleID = v45;
      firstObject = v34;
    }

    v23 = v43;
    if (v41 && (v40 != -1 || _LogCategory_Initialize()))
    {
      sub_10003282C();
    }

    [(DADaemonServer *)selfCopy _updateBluetoothScannerIfNeeded];
    goto LABEL_46;
  }

  discoveryCopy = v44;
  bundleID = v45;
  v37 = selfCopy;
  v23 = v43;
  firstObject = v34;
  if (dword_1000603A0 > 30 || dword_1000603A0 == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_62;
  }

  v38 = "Upgrade device to add Wi-Fi aware transport";
LABEL_39:
  sub_1000327FC(v38);
LABEL_62:
  [(DADaemonServer *)v37 _updateWiFiManagerIfNeeded];
LABEL_46:

LABEL_47:
LABEL_48:
}

- (void)runSystemDiscovery
{
  [(DADaemonServer *)self _updateBluetoothScannerIfNeeded];

  [(DADaemonServer *)self _updateWiFiManagerIfNeeded];
}

- (id)findExistingDeviceForUpgrade:(id)upgrade appID:(id)d
{
  upgradeCopy = upgrade;
  dCopy = d;
  v8 = [(NSMutableDictionary *)self->_discoveryMap objectForKeyedSubscript:dCopy];
  if (v8)
  {
    [(DADaemonServer *)self getDevicesWithFlags:8 appID:dCopy];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v24 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          identifier = [v13 identifier];
          v15 = [identifier isEqualToString:upgradeCopy];

          if (v15)
          {
            v10 = v13;
            goto LABEL_12;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    appAccessInfoMap = [v10 appAccessInfoMap];
    v17 = [appAccessInfoMap objectForKeyedSubscript:dCopy];
    state = [v17 state];

    if (state == 25)
    {
      v19 = v10;
    }

    else
    {
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100032994(v10);
      }

      v19 = 0;
    }
  }

  else
  {
    sub_1000329D4(dCopy, &v25);
    v19 = v25;
  }

  return v19;
}

- (id)findAlreadyDiscoveredDeviceForMultiTech:(id)tech appID:(id)d bluetoothIdentifier:(id)identifier wifiAwareOTAName:(id)name
{
  techCopy = tech;
  dCopy = d;
  identifierCopy = identifier;
  nameCopy = name;
  v12 = [(NSMutableDictionary *)self->_discoveryMap objectForKeyedSubscript:dCopy];
  v13 = v12;
  if (v12)
  {
    deviceMap = [v12 deviceMap];
    v15 = deviceMap;
    if (deviceMap)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      allValues = [deviceMap allValues];
      v17 = [allValues countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v17)
      {
        v18 = v17;
        v33 = v15;
        v34 = v13;
        v35 = dCopy;
        v19 = *v39;
        while (2)
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v39 != v19)
            {
              objc_enumerationMutation(allValues);
            }

            v21 = *(*(&v38 + 1) + 8 * i);
            discoveryConfiguration = [v21 discoveryConfiguration];
            associationIdentifier = [discoveryConfiguration associationIdentifier];
            v24 = [associationIdentifier isEqualToString:techCopy];

            if (v24 && [(DADaemonServer *)self deviceRequiresMultiTechDiscovery:v21])
            {
              if ([v21 bluetoothIdentifier], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqual:", identifierCopy), v25, (v26) || (objc_msgSend(v21, "bluetoothIdentifier"), v27 = objc_claimAutoreleasedReturnValue(), v27, identifierCopy) && !v27 || (objc_msgSend(v21, "wifiAwareOTAName"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "isEqual:", nameCopy), v28, (v29) || (objc_msgSend(v21, "wifiAwareOTAName"), v30 = objc_claimAutoreleasedReturnValue(), v30, nameCopy) && !v30)
              {
                v31 = v21;
                goto LABEL_20;
              }
            }
          }

          v18 = [allValues countByEnumeratingWithState:&v38 objects:v43 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }

        v31 = 0;
LABEL_20:
        v13 = v34;
        dCopy = v35;
        v15 = v33;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    sub_100032A58(dCopy, &v42);
    v31 = v42;
  }

  return v31;
}

- (BOOL)deviceRequiresMultiTechDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  if ([discoveryCopy requiresBluetoothSetup])
  {
    requiresWiFiAwareSetup = [discoveryCopy requiresWiFiAwareSetup];
  }

  else
  {
    requiresWiFiAwareSetup = 0;
  }

  return requiresWiFiAwareSetup;
}

- (int64_t)applicationHasBluetoothGlobalTCC:(id)c
{
  cCopy = c;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(DADaemonServer *)selfCopy _applicationHasBluetoothGlobalTCC:cCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (int64_t)_updateDeviceStateForBluetooth:(id)bluetooth device:(id)device
{
  bluetoothCopy = bluetooth;
  deviceCopy = device;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100002EE4;
  v29 = sub_100002EF4;
  v30 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100011868;
  v24[3] = &unk_100058D30;
  v24[4] = &v25;
  v8 = objc_retainBlock(v24);
  state = [bluetoothCopy state];
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v10 = DADeviceStateToString();
    discoveryConfiguration = [deviceCopy discoveryConfiguration];
    associationIdentifier = [discoveryConfiguration associationIdentifier];
    LogPrintF(&dword_1000603A0, "[DADaemonServer _updateDeviceStateForBluetooth:device:]", 50, "### _updateDeviceStateForBluetooth device %@ state %@ asID %@ deviceAccessMap %@", deviceCopy, v10, associationIdentifier, bluetoothCopy);
  }

  bluetoothIdentifier = [deviceCopy bluetoothIdentifier];

  if (!bluetoothIdentifier)
  {
    v23 = DANestedErrorF();
    v20 = v26[5];
    v26[5] = v23;
    goto LABEL_22;
  }

  if ([bluetoothCopy state] != 10 && objc_msgSend(bluetoothCopy, "state") != 20 && !objc_msgSend(deviceCopy, "upgradeInProgress"))
  {
LABEL_19:
    if (dword_1000603A0 > 50 || dword_1000603A0 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_24;
    }

    [bluetoothCopy state];
    v20 = DADeviceStateToString();
    v21 = DADeviceStateToString();
    LogPrintF(&dword_1000603A0, "[DADaemonServer _updateDeviceStateForBluetooth:device:]", 50, "### _updateDeviceStateForBluetooth device %@ state %@->%@", deviceCopy, v20, v21);

LABEL_22:
    goto LABEL_24;
  }

  if ([deviceCopy bluetoothSetupFinished])
  {
    goto LABEL_24;
  }

  if (!-[DADaemonServer deviceRequiresMultiTechDiscovery:](self, "deviceRequiresMultiTechDiscovery:", deviceCopy) || ![deviceCopy wifiAwareSetupInProgress])
  {
    discoveryConfiguration2 = [deviceCopy discoveryConfiguration];
    allowsBluetoothPairing = [discoveryConfiguration2 allowsBluetoothPairing];

    if (allowsBluetoothPairing)
    {
      v16 = 1;
    }

    else
    {
      discoveryConfiguration3 = [deviceCopy discoveryConfiguration];
      v16 = ([discoveryConfiguration3 flags] >> 1) & 1;
    }

    discoveryConfiguration4 = [deviceCopy discoveryConfiguration];
    flags = [discoveryConfiguration4 flags];

    [deviceCopy setBluetoothOnboardingFinished:0];
    [(DADaemonServer *)self _persistBluetoothDevice:bluetoothCopy device:deviceCopy requirePairing:v16 pairWithCTKD:(flags >> 2) & 1];
    goto LABEL_19;
  }

  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _updateDeviceStateForBluetooth:device:]", 50, "### _updateDeviceStateForBluetooth deferring setup for device due to ongoing wi-fi aware setup %@", deviceCopy);
  }

LABEL_24:
  (v8[2])(v8);

  _Block_object_dispose(&v25, 8);
  return state;
}

- (void)_cleanupBTDiscoveryIfPossible:(id)possible
{
  possibleCopy = possible;
  if (!possibleCopy || !-[DADaemonServer deviceRequiresMultiTechDiscovery:](self, "deviceRequiresMultiTechDiscovery:", possibleCopy) || (v4 = [possibleCopy bluetoothSetupFinished], v5 = possibleCopy, v4))
  {
    btScanRefreshTimer = self->_btScanRefreshTimer;
    if (btScanRefreshTimer)
    {
      v7 = btScanRefreshTimer;
      dispatch_source_cancel(v7);
      v8 = self->_btScanRefreshTimer;
      self->_btScanRefreshTimer = 0;
    }

    cbCentralManager = self->_cbCentralManager;
    if (cbCentralManager)
    {
      [(CBCentralManager *)cbCentralManager stopScan];
    }

    cbScanClient = self->_cbScanClient;
    self->_cbScanClient = 0;

    [(NSMutableDictionary *)self->_cbDADeviceMap enumerateKeysAndObjectsUsingBlock:&stru_100059130];
    v11 = objc_opt_new();
    cbDADeviceMap = self->_cbDADeviceMap;
    self->_cbDADeviceMap = v11;

    v13 = objc_opt_new();
    cbScanFilterArray = self->_cbScanFilterArray;
    self->_cbScanFilterArray = v13;

    v5 = possibleCopy;
  }

  _objc_release_x1(v4, v5);
}

- (void)_setupBTPairingManager
{
  if (!self->_btPairingManager)
  {
    v4 = objc_alloc_init(DABluetoothPairingManager);
    btPairingManager = self->_btPairingManager;
    self->_btPairingManager = v4;

    [(DABluetoothPairingManager *)self->_btPairingManager setBlockIncomingClassicCnx:self->_prefBTBlockIncomingClassicCnx];
    [(DABluetoothPairingManager *)self->_btPairingManager setMitmPairing:self->_prefBTPairingWithMITM];
    [(DABluetoothPairingManager *)self->_btPairingManager setTaskTimeoutSeconds:self->_prefBTScanRefreshSeconds];
    dispatchQueue = self->_dispatchQueue;
    v7 = self->_btPairingManager;

    [(DABluetoothPairingManager *)v7 setDispatchQueue:dispatchQueue];
  }
}

- (void)_persistBluetoothDevice:(id)device device:(id)a4 requirePairing:(BOOL)pairing pairWithCTKD:(BOOL)d
{
  dCopy = d;
  pairingCopy = pairing;
  deviceCopy = device;
  v11 = a4;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _persistBluetoothDevice:device:requirePairing:pairWithCTKD:]", 50, "### _persistBluetoothDevice app %@ device %@ inRequirePairing:%d inPairCTKD:%d", deviceCopy, v11, pairingCopy, dCopy);
  }

  v25 = pairingCopy;
  deviceIdentifier = [deviceCopy deviceIdentifier];
  bundleIdentifier = [deviceCopy bundleIdentifier];
  appDiscoveryConfiguration = [deviceCopy appDiscoveryConfiguration];
  displayName = [appDiscoveryConfiguration displayName];

  discoveryConfiguration = [v11 discoveryConfiguration];
  flags = [discoveryConfiguration flags];
  if ((flags & 0x10) != 0)
  {
    v16 = 60;
  }

  else
  {
    v16 = 30;
  }

  flags2 = [discoveryConfiguration flags];
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = [deviceCopy state];
  bluetoothIdentifier = [v11 bluetoothIdentifier];

  if (bluetoothIdentifier)
  {
    [(DADaemonServer *)self _cleanupBTDiscoveryIfPossible:0];
    [(DADaemonServer *)self _cleanupWiFiDiscoveryIfPossible:v11];
    v26 = deviceIdentifier;
    bluetoothIdentifier2 = [v11 bluetoothIdentifier];
    v20 = [bluetoothIdentifier2 copy];

    [(DADaemonServer *)self _setupBTPairingManager];
    btPairingManager = self->_btPairingManager;
    v21 = [NSNumber numberWithInt:v16];
    LODWORD(bluetoothIdentifier2) = (flags2 >> 5) & 1;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100011EC8;
    v29[3] = &unk_100059158;
    v30 = deviceCopy;
    v31 = discoveryConfiguration;
    v37 = v38;
    v32 = v11;
    selfCopy = self;
    v22 = v20;
    v34 = v22;
    v35 = bundleIdentifier;
    v36 = v26;
    LOBYTE(v23) = bluetoothIdentifier2;
    [(DABluetoothPairingManager *)btPairingManager persistBluetoothDevice:v22 pairingRequired:v25 pairWithCTKD:dCopy displayName:displayName taskTimeout:v21 appConfirmsAuth:(flags >> 4) & 1 supportsHID:v23 completion:v29];

    deviceIdentifier = v26;
  }

  _Block_object_dispose(v38, 8);
}

- (void)_forgetBluetoothDevice:(id)device
{
  deviceCopy = device;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100032AF8(deviceCopy);
    if (!deviceCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (deviceCopy)
  {
LABEL_5:
    v5 = [deviceCopy copy];
    [(DADaemonServer *)self _setupBTPairingManager];
    btPairingManager = self->_btPairingManager;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000124DC;
    v7[3] = &unk_100059180;
    v8 = deviceCopy;
    selfCopy = self;
    [(DABluetoothPairingManager *)btPairingManager forgetBluetoothDevice:v5 completion:v7];
  }

LABEL_6:
}

- (void)_updateBluetoothScannerIfNeeded
{
  selfCopy = self;
  if (dword_1000603A0 <= 50)
  {
    if (dword_1000603A0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100032BA8(self, a2, v2);
    }
  }

  [(DADaemonServer *)selfCopy _cleanupBTDiscoveryIfPossible:0];
  v4 = selfCopy->_discoveryMap;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000126A8;
  v8[3] = &unk_1000591F8;
  v8[4] = selfCopy;
  [(NSMutableDictionary *)v4 enumerateKeysAndObjectsUsingBlock:v8];
  if ([(NSMutableArray *)selfCopy->_cbScanFilterArray count])
  {
    v5 = [[CBCentralManager alloc] initWithDelegate:selfCopy queue:selfCopy->_dispatchQueue options:0];
    cbCentralManager = selfCopy->_cbCentralManager;
    selfCopy->_cbCentralManager = v5;
  }

  else
  {
    btPairingManager = selfCopy->_btPairingManager;
    if (btPairingManager)
    {
      [(DABluetoothPairingManager *)btPairingManager cancelAll];
    }
  }
}

- (void)_startBTScan
{
  selfCopy = self;
  if (dword_1000603A0 <= 50)
  {
    if (dword_1000603A0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100032BC4(self, a2, v2);
    }
  }

  v4 = objc_opt_new();
  [v4 setValue:selfCopy->_cbScanFilterArray forKey:CBCentralManagerScanOptionMatchingRuleKey];
  cbScanClient = selfCopy->_cbScanClient;
  v5 = [NSArray arrayWithObjects:&cbScanClient count:1];
  [v4 setValue:v5 forKey:CBManagerListOfClients];

  cbScanFilterArray = selfCopy->_cbScanFilterArray;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012BDC;
  v7[3] = &unk_100059248;
  v7[4] = selfCopy;
  [(NSMutableArray *)cbScanFilterArray enumerateObjectsUsingBlock:v7];
  [(CBCentralManager *)selfCopy->_cbCentralManager scanForPeripheralsWithServices:0 options:v4 completion:&stru_100059288];
}

- (void)_stopBTScan
{
  selfCopy = self;
  if (dword_1000603A0 <= 50)
  {
    if (dword_1000603A0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100032C4C(self, a2, v2);
    }
  }

  cbCentralManager = selfCopy->_cbCentralManager;

  [(CBCentralManager *)cbCentralManager stopScan];
}

- (void)_checkAndReportLostBTDevices
{
  selfCopy = self;
  if (dword_1000603A0 <= 50)
  {
    if (dword_1000603A0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100032C68(self, a2, v2);
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v5 = objc_opt_new();
  cbDADeviceMap = selfCopy->_cbDADeviceMap;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100013028;
  v9[3] = &unk_1000592B0;
  v11 = Current;
  v9[4] = selfCopy;
  v10 = v5;
  v7 = v5;
  [(NSMutableDictionary *)cbDADeviceMap enumerateKeysAndObjectsUsingBlock:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013180;
  v8[3] = &unk_1000592D8;
  v8[4] = selfCopy;
  *&v8[5] = Current;
  [v7 enumerateObjectsUsingBlock:v8];
}

- (void)_armBTScanTimer
{
  if (!self->_btScanRefreshTimer)
  {
    v7[8] = v2;
    v7[9] = v3;
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    btScanRefreshTimer = self->_btScanRefreshTimer;
    self->_btScanRefreshTimer = v5;

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000133F0;
    v7[3] = &unk_100058CB8;
    v7[4] = v5;
    v7[5] = self;
    dispatch_source_set_event_handler(v5, v7);
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100032CC4(self);
    }

    CUDispatchTimerSet();
    dispatch_activate(v5);
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  v4 = self->_cbCentralManager;
  BTPoweredOn = [(CBCentralManager *)v4 state]== 5;
  self->_BTPoweredOn = BTPoweredOn;
  if (dword_1000603A0 <= 50)
  {
    if (dword_1000603A0 != -1 || (v6 = _LogCategory_Initialize(), BTPoweredOn = self->_BTPoweredOn, v6))
    {
      LogPrintF(&dword_1000603A0, "[DADaemonServer centralManagerDidUpdateState:]", 50, "### centralManagerDidUpdateState powerState: %d", BTPoweredOn);
      LOBYTE(BTPoweredOn) = self->_BTPoweredOn;
    }
  }

  if (BTPoweredOn)
  {
    [(DADaemonServer *)self _checkAppAccessInfo];
    [(DADaemonServer *)self _refreshRegistrationForBTConnectionEvents];
    v7 = [(NSMutableArray *)self->_cbScanFilterArray count];
    if (v7)
    {
      [(DADaemonServer *)self _startBTScan];
      [(DADaemonServer *)self _armBTScanTimer];
      if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100032D38(&self->_BTPoweredOn);
      }
    }

    else if (dword_1000603A0 <= 50)
    {
      if (dword_1000603A0 != -1 || (v7 = _LogCategory_Initialize(), v7))
      {
        sub_100032D7C(v7, v8, v9);
      }
    }
  }

  else
  {
    cbDADeviceMap = self->_cbDADeviceMap;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100013654;
    v11[3] = &unk_100059300;
    v11[4] = self;
    [(NSMutableDictionary *)cbDADeviceMap enumerateKeysAndObjectsUsingBlock:v11];
    if ([(CBCentralManager *)v4 state]!= 1)
    {
      [(DADaemonServer *)self _cleanupBTDiscoveryIfPossible:0];
    }
  }
}

- (void)_refreshRegistrationForBTConnectionEvents
{
  selfCopy = self;
  if (dword_1000603A0 <= 50)
  {
    if (dword_1000603A0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100032D98(self, a2, v2);
    }
  }

  v4 = [(DADaemonServer *)selfCopy getDevicesWithFlags:8 appID:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001386C;
  v7[3] = &unk_100058DD0;
  v5 = objc_opt_new();
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];
  v6 = objc_alloc_init(NSMutableDictionary);
  [v6 setObject:v5 forKeyedSubscript:CBConnectionEventMatchingOptionPeripheralUUIDs];
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100032DB4(v6);
  }

  [(CBCentralManager *)selfCopy->_cbCentralManager registerForConnectionEventsWithOptions:v6];
}

- (id)_findDADeviceWithBTPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100032E34(peripheralCopy);
  }

  cbDADeviceMap = self->_cbDADeviceMap;
  identifier = [peripheralCopy identifier];
  v7 = [(NSMutableDictionary *)cbDADeviceMap objectForKey:identifier];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100002EE4;
  v22 = sub_100002EF4;
  v23 = [v7 objectForKeyedSubscript:@"DADevice"];
  v8 = v19[5];
  if (v8)
  {
    if (dword_1000603A0 > 50)
    {
      goto LABEL_14;
    }

    if (dword_1000603A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v8 = v19[5];
    }

    LogPrintF(&dword_1000603A0, "[DADaemonServer _findDADeviceWithBTPeripheral:]", 50, "### _findDADeviceWithBTPeripheral local cache DADevice %@ for %@", v8, peripheralCopy);
  }

  else
  {
    v9 = [(DADaemonServer *)self getDevicesWithFlags:8 appID:0];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100013BDC;
    v15 = &unk_100059328;
    v16 = peripheralCopy;
    v17 = &v18;
    [v9 enumerateObjectsUsingBlock:&v12];
  }

LABEL_10:
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _findDADeviceWithBTPeripheral:]", 50, "### _findDADeviceWithBTPeripheral DADevice %@ for %@", v19[5], peripheralCopy, v12, v13, v14, v15);
  }

LABEL_14:
  v10 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v10;
}

- (id)_findDADeviceWithBTIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100032EB4(identifierCopy);
  }

  v5 = [(NSMutableDictionary *)self->_cbDADeviceMap objectForKey:identifierCopy];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100002EE4;
  v20 = sub_100002EF4;
  v21 = [v5 objectForKeyedSubscript:@"DADevice"];
  v6 = v17[5];
  if (v6)
  {
    if (dword_1000603A0 > 50)
    {
      goto LABEL_14;
    }

    if (dword_1000603A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v6 = v17[5];
    }

    LogPrintF(&dword_1000603A0, "[DADaemonServer _findDADeviceWithBTIdentifier:]", 50, "### _findDADeviceWithBTIdentifier local cache DADevice %@ for %@", v6, identifierCopy);
  }

  else
  {
    v7 = [(DADaemonServer *)self getDevicesWithFlags:8 appID:0];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100013F48;
    v13 = &unk_100059328;
    v14 = identifierCopy;
    v15 = &v16;
    [v7 enumerateObjectsUsingBlock:&v10];
  }

LABEL_10:
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _findDADeviceWithBTIdentifier:]", 50, "### _findDADeviceWithBTIdentifier DADevice %@ for %@", v17[5], identifierCopy, v10, v11, v12, v13);
  }

LABEL_14:
  v8 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v8;
}

- (id)_findExistingDeviceWithSSID:(id)d bundleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _findExistingDeviceWithSSID:bundleID:]", 50, "### _findDeviceWithSSID looking for device %@ associated with %@", dCopy, iDCopy);
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100002EE4;
  v21 = sub_100002EF4;
  v22 = 0;
  v8 = [(DADaemonServer *)self getDevicesWithFlags:8 appID:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000141E0;
  v13[3] = &unk_100059350;
  v9 = iDCopy;
  v14 = v9;
  v10 = dCopy;
  v15 = v10;
  v16 = &v17;
  [v8 enumerateObjectsUsingBlock:v13];
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (void)_reportDiscoveredBTDevice:(id)device advertisementData:(id)data RSSI:(id)i AppID:(id)d DADaemonDiscovery:(id)discovery DADiscovery:(id)aDiscovery config:(id)config
{
  deviceCopy = device;
  dataCopy = data;
  iCopy = i;
  dCopy = d;
  discoveryCopy = discovery;
  aDiscoveryCopy = aDiscovery;
  configCopy = config;
  bundleID = [configCopy bundleID];
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _reportDiscoveredBTDevice:advertisementData:RSSI:AppID:DADaemonDiscovery:DADiscovery:config:]", 50, "### _reportDiscoveredBTDevice app %@ appID: %@ rssi: %@ advData: %@ inDaemonDiscovery %@ inDiscoveryObject %@ config %@", bundleID, dCopy, iCopy, dataCopy, discoveryCopy, aDiscoveryCopy, configCopy);
  }

  bundleID2 = [configCopy bundleID];
  existingDeviceIdentifier = [configCopy existingDeviceIdentifier];

  v69 = bundleID2;
  if (existingDeviceIdentifier)
  {
    existingDeviceIdentifier2 = [configCopy existingDeviceIdentifier];
    v24 = [(DADaemonServer *)self findExistingDeviceForUpgrade:existingDeviceIdentifier2 appID:bundleID2];
    if (!v24)
    {
LABEL_11:

      goto LABEL_59;
    }

    v25 = [(DADaemonServer *)self _findDADeviceWithBTPeripheral:deviceCopy];

    if (v25)
    {
      if (dword_1000603A0 <= 30)
      {
        if (dword_1000603A0 != -1 || (v26 = _LogCategory_Initialize(), v26))
        {
          sub_100032F84(v26, v27, v28);
        }
      }

      goto LABEL_11;
    }

    v67 = discoveryCopy;
    v68 = dCopy;
    v34 = [dataCopy copy];
    [v24 setBluetoothAdvertisementData:v34];

    v35 = [iCopy copy];
    [v24 setBluetoothRSSI:v35];

    identifier = [deviceCopy identifier];
    [v24 setBluetoothIdentifier:identifier];

    v37 = [(DADaemonServer *)self _getAdvName:dataCopy];
    [v24 setBluetoothOTAName:v37];

    [v24 setBluetoothAppearance:{-[DADaemonServer _getAppearance:](self, "_getAppearance:", dataCopy)}];
    [v24 setDiscoveryConfiguration:configCopy];
    [v24 setBluetoothOnboardingFinished:0];
    [v24 setWiFiAwareOnboardingFinished:1];
    [v24 setDeviceUpgradeFinished:0 inProgress:1 failed:0];
    goto LABEL_35;
  }

  v29 = [(DADaemonServer *)self _findDADeviceWithBTPeripheral:deviceCopy];
  v24 = v29;
  v67 = discoveryCopy;
  v68 = dCopy;
  if (v29 && [v29 state] != 1)
  {
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100032FA0(v24);
    }

    [v24 setDiscoveryConfiguration:configCopy];
    goto LABEL_36;
  }

  if ([configCopy bluetoothRange] != 10 || (v30 = objc_msgSend(iCopy, "intValue"), prefsBTRSSIThreshold = self->_prefsBTRSSIThreshold, v30 >= prefsBTRSSIThreshold))
  {
    existingDeviceIdentifier2 = [configCopy associationIdentifier];
    identifier2 = [deviceCopy identifier];
    v33 = [(DADaemonServer *)self findAlreadyDiscoveredDeviceForMultiTech:existingDeviceIdentifier2 appID:v69 bluetoothIdentifier:identifier2 wifiAwareOTAName:0];

    if (v33)
    {
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100032FE0(v33);
      }

      v24 = v33;
    }

    else
    {
      v24 = objc_alloc_init(DADevice);
      v38 = +[NSUUID UUID];
      uUIDString = [v38 UUIDString];
      [v24 setIdentifier:uUIDString];
    }

    v40 = [dataCopy copy];
    [v24 setBluetoothAdvertisementData:v40];

    v41 = [iCopy copy];
    [v24 setBluetoothRSSI:v41];

    identifier3 = [deviceCopy identifier];
    [v24 setBluetoothIdentifier:identifier3];

    v43 = [(DADaemonServer *)self _getAdvName:dataCopy];
    [v24 setBluetoothOTAName:v43];

    [v24 setBluetoothAppearance:{-[DADaemonServer _getAppearance:](self, "_getAppearance:", dataCopy)}];
    [v24 setDiscoveryConfiguration:configCopy];
    if (([aDiscoveryCopy flags] & 0x20) != 0)
    {
      v44 = 1024;
    }

    else
    {
      v44 = 8;
    }

    [v24 setFlags:v44];
    displayName = [configCopy displayName];
    [v24 setName:displayName];

    hotspotSSIDs = [configCopy hotspotSSIDs];
    v47 = [hotspotSSIDs count];

    if (v47)
    {
      hotspotSSIDs2 = [configCopy hotspotSSIDs];
      firstObject = [hotspotSSIDs2 firstObject];
      [v24 setSSID:firstObject];
    }

    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100033020(v24);
    }

LABEL_35:

LABEL_36:
    appAccessInfoMap = [v24 appAccessInfoMap];
    v51 = [appAccessInfoMap objectForKeyedSubscript:bundleID];
    accessoryOptions = [v51 accessoryOptions];

    v53 = [(DADaemonServer *)self appBundleInfoAccessoryOptions:bundleID];
    appAccessInfoMap2 = [v24 appAccessInfoMap];
    v55 = [appAccessInfoMap2 objectForKeyedSubscript:bundleID];
    if ([v55 state] && ((v53 & 1) == 0 || (accessoryOptions & 1) != 0))
    {
      v56 = [v24 upgradeInProgress] ^ 1;
    }

    else
    {
      v56 = 0;
    }

    name = [deviceCopy name];
    if (name && (v58 = name, [deviceCopy name], v59 = objc_claimAutoreleasedReturnValue(), v60 = objc_msgSend(v59, "length"), v59, v58, v60))
    {
      if ((v56 & 1) == 0)
      {
        v61 = [[DADeviceEvent alloc] initWithEventType:40 device:v24];
        [(DADaemonServer *)self _discoveryEvent:v61 appID:v68];
      }
    }

    else if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000603A0, "[DADaemonServer _reportDiscoveredBTDevice:advertisementData:RSSI:AppID:DADaemonDiscovery:DADiscovery:config:]", 50, "### _reportDiscoveredBTDevice %@ %@ has no bluetooth name", v24, deviceCopy);
    }

    v62 = objc_opt_new();
    [v62 setObject:v24 forKey:@"DADevice"];
    [v62 setObject:deviceCopy forKey:@"CBPeripheral"];
    [v62 setObject:dataCopy forKey:@"ADVData"];
    [v62 setObject:iCopy forKey:@"RSSI"];
    [v62 setObject:aDiscoveryCopy forKey:@"DiscoveryObj"];
    cbDADeviceMap = self->_cbDADeviceMap;
    identifier4 = [deviceCopy identifier];
    [(NSMutableDictionary *)cbDADeviceMap setObject:v62 forKeyedSubscript:identifier4];

    discoveryCopy = v67;
    if (-[DADaemonServer deviceRequiresMultiTechDiscovery:](self, "deviceRequiresMultiTechDiscovery:", v24) && (![v24 bluetoothSetupFinished] || !objc_msgSend(v24, "wifiAwareSetupFinished") || objc_msgSend(v24, "upgradeInProgress")))
    {
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100033060(v24);
      }

      appAccessInfoMap3 = [v24 appAccessInfoMap];
      v66 = [appAccessInfoMap3 objectForKeyedSubscript:bundleID];

      [(DADaemonServer *)self updateAppAccessInfo:v66 accessoryDevice:v24 removalType:0 error:0];
    }

    goto LABEL_58;
  }

  if (dword_1000603A0 <= 50)
  {
    if (dword_1000603A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_58;
      }

      prefsBTRSSIThreshold = self->_prefsBTRSSIThreshold;
    }

    LogPrintF(&dword_1000603A0, "[DADaemonServer _reportDiscoveredBTDevice:advertisementData:RSSI:AppID:DADaemonDiscovery:DADiscovery:config:]", 50, "### _reportDiscoveredBTDevice rssi: %@ lower than threshold %d, ignoring", iCopy, prefsBTRSSIThreshold);
  }

LABEL_58:
  dCopy = v68;
LABEL_59:
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  dataCopy = data;
  iCopy = i;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "-[DADaemonServer centralManager:didDiscoverPeripheral:advertisementData:RSSI:]", 50, "### didDiscoverPeripheral %@ rssi: %d data: %@", peripheralCopy, [iCopy intValue], dataCopy);
  }

  discoveryMap = self->_discoveryMap;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100014CF4;
  v19[3] = &unk_1000593C8;
  v20 = dataCopy;
  selfCopy = self;
  v22 = peripheralCopy;
  v23 = iCopy;
  v15 = iCopy;
  v16 = peripheralCopy;
  v17 = dataCopy;
  v18 = discoveryMap;
  [(NSMutableDictionary *)v18 enumerateKeysAndObjectsUsingBlock:v19];
}

- (id)_getAdvName:(id)name
{
  v3 = [name objectForKeyedSubscript:CBAdvertisementDataLocalNameKey];
  v4 = v3;
  v5 = &stru_10005A2C8;
  if (v3 && [(__CFString *)v3 length])
  {
    v5 = v4;
  }

  v6 = v5;

  return v5;
}

- (unsigned)_getAppearance:(id)appearance
{
  v3 = [appearance objectForKeyedSubscript:@"kCBAdvDataAppearance"];
  unsignedShortValue = [v3 unsignedShortValue];

  return unsignedShortValue;
}

- (void)_updateLocalNetworkScannerIfNeeded
{
  selfCopy = self;
  if (dword_1000603A0 <= 50)
  {
    if (dword_1000603A0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1000330EC(self, a2, v2);
    }
  }

  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_100002EE4;
  v8[4] = sub_100002EF4;
  v9 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000154A8;
  v7[3] = &unk_100058D30;
  v7[4] = v8;
  v4 = objc_retainBlock(v7);
  v5 = selfCopy->_discoveryMap;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001556C;
  v6[3] = &unk_1000591F8;
  v6[4] = selfCopy;
  [(NSMutableDictionary *)v5 enumerateKeysAndObjectsUsingBlock:v6];

  (v4[2])(v4);
  _Block_object_dispose(v8, 8);
}

- (int64_t)_updateDeviceStateForWifi:(id)wifi currentState:(int64_t)state
{
  wifiCopy = wifi;
  discoveryConfiguration = [wifiCopy discoveryConfiguration];
  flags = [discoveryConfiguration flags];
  sSID = [wifiCopy SSID];
  hotspotSSIDs = [discoveryConfiguration hotspotSSIDs];
  if ([hotspotSSIDs count])
  {
    v11 = 1;
  }

  else
  {
    hotspotSSIDPrefixes = [discoveryConfiguration hotspotSSIDPrefixes];
    v11 = [hotspotSSIDPrefixes count] != 0;
  }

  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100033264(state);
  }

  bluetoothIdentifier = [wifiCopy bluetoothIdentifier];
  if (bluetoothIdentifier != 0 || !v11)
  {
    v21 = bluetoothIdentifier;
LABEL_29:

    goto LABEL_32;
  }

  if (state == 20 || state == 10)
  {
    bluetoothCompanyIdentifiers = [discoveryConfiguration bluetoothCompanyIdentifiers];
    if (![bluetoothCompanyIdentifiers count])
    {
      bluetoothCompanyPayload = [discoveryConfiguration bluetoothCompanyPayload];
      if (![bluetoothCompanyPayload length])
      {
        bluetoothCompanyPayloadMask = [discoveryConfiguration bluetoothCompanyPayloadMask];
        if ([bluetoothCompanyPayloadMask length])
        {
        }

        else
        {
          v28 = bluetoothCompanyPayloadMask;
          bluetoothNameSubstring = [discoveryConfiguration bluetoothNameSubstring];
          if ([bluetoothNameSubstring length])
          {
          }

          else
          {
            v27 = bluetoothNameSubstring;
            bluetoothServicePayload = [discoveryConfiguration bluetoothServicePayload];
            if ([bluetoothServicePayload length])
            {
            }

            else
            {
              v26 = bluetoothServicePayload;
              bluetoothServicePayloadMask = [discoveryConfiguration bluetoothServicePayloadMask];
              if (![bluetoothServicePayloadMask length])
              {
                bluetoothServices = [discoveryConfiguration bluetoothServices];
                v25 = [bluetoothServices count];

                [(DADaemonServer *)self _cleanupBTDiscoveryIfPossible:wifiCopy];
                [(DADaemonServer *)self _cleanupWiFiDiscoveryIfPossible:wifiCopy];
                if (!v25)
                {
                  stateCopy = state;
                  if (sSID)
                  {
                    if ((flags & 0x10) != 0)
                    {
                      stateCopy = 20;
                    }

                    else
                    {
                      stateCopy = 25;
                    }
                  }

                  goto LABEL_26;
                }

LABEL_25:
                stateCopy = 20;
LABEL_26:
                if (dword_1000603A0 > 50 || dword_1000603A0 == -1 && !_LogCategory_Initialize())
                {
                  state = stateCopy;
                  goto LABEL_32;
                }

                v21 = DADeviceStateToString();
                v22 = DADeviceStateToString();
                LogPrintF(&dword_1000603A0, "[DADaemonServer _updateDeviceStateForWifi:currentState:]", 50, "### _updateDeviceStateForWifi device %@ state %@->%@", wifiCopy, v21, v22);

                state = stateCopy;
                goto LABEL_29;
              }
            }
          }
        }
      }
    }

    [(DADaemonServer *)self _cleanupBTDiscoveryIfPossible:wifiCopy];
    [(DADaemonServer *)self _cleanupWiFiDiscoveryIfPossible:wifiCopy];
    goto LABEL_25;
  }

LABEL_32:

  return state;
}

- (int64_t)_updateDeviceStateForWiFiAware:(id)aware device:(id)device oldState:(int64_t)state
{
  awareCopy = aware;
  deviceCopy = device;
  stateCopy2 = [awareCopy state];
  wifiAwareOTAName = [deviceCopy wifiAwareOTAName];

  if (wifiAwareOTAName)
  {
    bundleIdentifier = [awareCopy bundleIdentifier];
    wifiAwarePairingID = [awareCopy wifiAwarePairingID];
    wifiAwareDevicePairingID = [deviceCopy wifiAwareDevicePairingID];
    if (wifiAwareDevicePairingID)
    {
      v18 = wifiAwareDevicePairingID;
      appAccessInfoDeviceMap = [deviceCopy appAccessInfoDeviceMap];
      wifiAwarePairingID |= [appAccessInfoDeviceMap count];
    }

    if (!wifiAwarePairingID)
    {
      if ((stateCopy2 == 10 || [deviceCopy upgradeInProgress]) && (objc_msgSend(deviceCopy, "wifiAwareSetupFinished") & 1) == 0)
      {
        if (-[DADaemonServer deviceRequiresMultiTechDiscovery:](self, "deviceRequiresMultiTechDiscovery:", deviceCopy) && [deviceCopy bluetoothSetupInProgress])
        {
          if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            sub_100033504(deviceCopy);
          }
        }

        else
        {
          [deviceCopy setWiFiAwareOnboardingFinished:0];
          -[DADaemonServer _persistWiFiAwareDevice:device:pairingID:bundleID:](self, "_persistWiFiAwareDevice:device:pairingID:bundleID:", awareCopy, deviceCopy, [awareCopy wifiAwarePairingID], bundleIdentifier);
        }
      }

      goto LABEL_58;
    }

    if (stateCopy2 == state)
    {
      stateCopy2 = state;
LABEL_58:

      goto LABEL_59;
    }

    wifiAwareDevicePairingID2 = [deviceCopy wifiAwareDevicePairingID];
    if (stateCopy2 == 28)
    {
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000332CC();
      }

      v26 = -[DADaemonServer _deauthorizeWiFiAwareDeviceFor:withAppPairingID:](self, "_deauthorizeWiFiAwareDeviceFor:withAppPairingID:", bundleIdentifier, [awareCopy wifiAwarePairingID]);
      if (v26)
      {
        if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100033364();
        }

        [awareCopy setState:state];
      }

      else
      {
        state = 28;
      }

      stateCopy2 = state;
      goto LABEL_57;
    }

    if (stateCopy2 != 25)
    {
      if (stateCopy2 != 10)
      {
LABEL_57:

        goto LABEL_58;
      }

      [(DADaemonServer *)self connectToPairedWiFiAwarePublisherIfNeeded:deviceCopy bundleID:bundleIdentifier];
      if (state == 25)
      {
        goto LABEL_29;
      }

      state = 10;
    }

    appAccessInfoMap = [deviceCopy appAccessInfoMap];
    v22 = [appAccessInfoMap objectForKeyedSubscript:bundleIdentifier];

    appAccessInfoMap2 = [deviceCopy appAccessInfoMap];
    v24 = [appAccessInfoMap2 count];

    v25 = v24 > 1;
    if (!v22)
    {
      v25 = v24 != 0;
    }

    if (state == 10 && !v25)
    {
      goto LABEL_29;
    }

    if (state == 10 && v25)
    {
      v30 = 0;
      v27 = [(DADaemonServer *)self _authorizeWiFiAwareDeviceFor:bundleIdentifier pairingKeyStoreID:wifiAwareDevicePairingID2 device:deviceCopy error:&v30];
      v28 = v30;
      if (v28)
      {
        if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100033408();
        }

        [awareCopy setState:0];
        stateCopy2 = 0;
        goto LABEL_56;
      }

      [awareCopy setWifiAwarePairingID:v27];
LABEL_55:
      stateCopy2 = 25;
LABEL_56:

      goto LABEL_57;
    }

    if (state == 28)
    {
      v28 = -[DADaemonServer _reauthorizeWiFiAwareDeviceFor:withAppPairingID:](self, "_reauthorizeWiFiAwareDeviceFor:withAppPairingID:", bundleIdentifier, [awareCopy wifiAwarePairingID]);
      if (v28)
      {
        if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100033480();
        }

        stateCopy2 = 28;
        [awareCopy setState:28];
        goto LABEL_56;
      }

      goto LABEL_55;
    }

LABEL_29:
    stateCopy2 = 25;
    goto LABEL_57;
  }

  if (dword_1000603A0 <= 50)
  {
    if (dword_1000603A0 != -1 || (v12 = _LogCategory_Initialize(), v12))
    {
      sub_100033544(v12, v13, v14);
    }
  }

LABEL_59:

  return stateCopy2;
}

- (void)_updateWiFiManagerIfNeeded
{
  storedPin = [(DAWiFiScanner *)self->_wifiScanner storedPin];

  if (storedPin)
  {
    if (dword_1000603A0 <= 50)
    {
      if (dword_1000603A0 != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        sub_100033560(v4, v5, v6);
      }
    }
  }

  else
  {
    if (dword_1000603A0 <= 50)
    {
      if (dword_1000603A0 != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        sub_10003357C(v4, v5, v6);
      }
    }

    v7 = [(DADaemonServer *)self _cleanupWiFiDiscoveryIfPossible:0];
    if (dword_1000603A0 <= 50)
    {
      if (dword_1000603A0 != -1 || (v7 = _LogCategory_Initialize(), v7))
      {
        sub_100033598(v7, v8, v9);
      }
    }

    v10 = +[NSMutableArray array];
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_100002EE4;
    v23 = sub_100002EF4;
    v24 = 0;
    v11 = self->_discoveryMap;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100016BC4;
    v16[3] = &unk_100059440;
    v12 = v10;
    v17 = v12;
    v18 = &v19;
    [(NSMutableDictionary *)v11 enumerateKeysAndObjectsUsingBlock:v16];
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000603A0, "[DADaemonServer _updateWiFiManagerIfNeeded]", 30, "[WIFI] scan descriptors='%@'", v12);
    }

    if ([v12 count])
    {
      objc_initWeak(&location, self);
      [(DADaemonServer *)self _setupWiFiScanner];
      [(DAWiFiScanner *)self->_wifiScanner setDeviceOTANameToBroadcast:v20[5]];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000175F4;
      v13[3] = &unk_100059490;
      objc_copyWeak(&v14, &location);
      v13[4] = self;
      [(DAWiFiScanner *)self->_wifiScanner setResultsHandler:v13];
      [(DAWiFiScanner *)self->_wifiScanner startScanningWithDescriptors:v12];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    else if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000603A0, "[DADaemonServer _updateWiFiManagerIfNeeded]", 30, "[WIFI] invalid scan descriptors");
    }

    _Block_object_dispose(&v19, 8);
  }
}

- (void)_cleanupWiFiDiscoveryIfPossible:(id)possible
{
  possibleCopy = possible;
  if (!possibleCopy || !-[DADaemonServer deviceRequiresMultiTechDiscovery:](self, "deviceRequiresMultiTechDiscovery:", possibleCopy) || ([possibleCopy wifiAwareSetupInProgress] & 1) == 0 && objc_msgSend(possibleCopy, "wifiAwareSetupFinished"))
  {
    wifiScanner = self->_wifiScanner;
    if (wifiScanner)
    {
      [(DAWiFiScanner *)wifiScanner stopScanning];
      v5 = self->_wifiScanner;
      self->_wifiScanner = 0;
    }
  }
}

- (void)_forgetWiFiDevice:(id)device
{
  deviceCopy = device;
  v4 = [[CWFInterface alloc] initWithServiceType:2];
  [v4 activate];
  v5 = [v4 knownNetworkProfilesWithProperties:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001847C;
  v8[3] = &unk_1000594B8;
  v9 = deviceCopy;
  v10 = v4;
  v6 = v4;
  v7 = deviceCopy;
  [v5 enumerateObjectsUsingBlock:v8];
}

- (void)_forgetWiFiAwareDevice:(id)device
{
  deviceCopy = device;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100033B68(deviceCopy);
  }

  appAccessInfoMap = [deviceCopy appAccessInfoMap];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [appAccessInfoMap allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [appAccessInfoMap objectForKeyedSubscript:v10];
        if ([v11 wifiAwarePairingID])
        {
          wifiAwarePairingID = [v11 wifiAwarePairingID];
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_1000187C0;
          v14[3] = &unk_1000594E0;
          v15 = deviceCopy;
          v16 = v10;
          [(DADaemonServer *)self _uninstallWiFiAwareDeviceFor:v10 appPairingID:wifiAwarePairingID completionHandler:v14];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (unint64_t)_authorizeWiFiAwareDeviceFor:(id)for pairingKeyStoreID:(id)d device:(id)device error:(id *)error
{
  forCopy = for;
  dCopy = d;
  deviceCopy = device;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _authorizeWiFiAwareDeviceFor:pairingKeyStoreID:device:error:]", 30, "[WiFi] authorizePairedDeviceFor bundleID='%@', devicePairedID='%@'", forCopy, dCopy);
  }

  [(DADaemonServer *)self _setupWiFiScanner];
  if (([deviceCopy flags] & 0x400) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  [deviceCopy flags];
  v14 = [(DAWiFiScanner *)self->_wifiScanner authorizeNewPairedDeviceFor:forCopy pairingKeyStoreID:dCopy storageClass:1 lifetime:v13 client:error error:0.0];

  return v14;
}

- (void)_authorizeWiFiAwareDeviceFor:(id)for pairingKeyStoreID:(id)d device:(id)device completionHandler:(id)handler
{
  forCopy = for;
  dCopy = d;
  deviceCopy = device;
  handlerCopy = handler;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _authorizeWiFiAwareDeviceFor:pairingKeyStoreID:device:completionHandler:]", 30, "[WiFi] authorizePairedDeviceFor bundleID='%@', devicePairedID='%@'", forCopy, dCopy);
  }

  [(DADaemonServer *)self _setupWiFiScanner];
  if (([deviceCopy flags] & 0x400) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  [deviceCopy flags];
  [(DAWiFiScanner *)self->_wifiScanner authorizePairedDeviceFor:forCopy pairingKeyStoreID:dCopy storageClass:1 lifetime:v13 client:handlerCopy completionHandler:0.0];
}

- (void)_reauthorizeWiFiAwareDeviceFor:(id)for withAppPairingID:(unint64_t)d completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _reauthorizeWiFiAwareDeviceFor:withAppPairingID:completionHandler:]", 30, "[WiFi] reauthorizePairedDeviceFor bundleID='%@', appPairingID='%llu'", forCopy, d);
  }

  [(DADaemonServer *)self _setupWiFiScanner];
  [(DAWiFiScanner *)self->_wifiScanner reauthorizePairedDeviceFor:forCopy withAppPairingID:d completionHandler:handlerCopy];
}

- (id)_reauthorizeWiFiAwareDeviceFor:(id)for withAppPairingID:(unint64_t)d
{
  forCopy = for;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _reauthorizeWiFiAwareDeviceFor:withAppPairingID:]", 30, "[WiFi] reauthorizePairedDeviceFor bundleID='%@', appPairingID='%llu'", forCopy, d);
  }

  [(DADaemonServer *)self _setupWiFiScanner];
  v7 = [(DAWiFiScanner *)self->_wifiScanner reauthorizePairedDeviceFor:forCopy withAppPairingID:d];

  return v7;
}

- (void)_deauthorizeWiFiAwareDeviceFor:(id)for withAppPairingID:(unint64_t)d completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _deauthorizeWiFiAwareDeviceFor:withAppPairingID:completionHandler:]", 30, "[WiFi] _deauthorizeWiFiAwareDeviceFor bundleID='%@' with ID='%llu'", forCopy, d);
  }

  [(DADaemonServer *)self _setupWiFiScanner];
  [(DAWiFiScanner *)self->_wifiScanner deauthorizePairedDeviceFor:forCopy withAppPairingID:d completionHandler:handlerCopy];
}

- (id)_deauthorizeWiFiAwareDeviceFor:(id)for withAppPairingID:(unint64_t)d
{
  forCopy = for;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _deauthorizeWiFiAwareDeviceFor:withAppPairingID:]", 30, "[WiFi] _deauthorizeWiFiAwareDeviceFor bundleID='%@' with ID='%llu'", forCopy, d);
  }

  [(DADaemonServer *)self _setupWiFiScanner];
  v7 = [(DAWiFiScanner *)self->_wifiScanner deauthorizePairedDeviceFor:forCopy withAppPairingID:d];

  return v7;
}

- (void)_removeAllWiFiAwareDevicesFor:(id)for completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100033C5C(forCopy);
  }

  [(DADaemonServer *)self _setupWiFiScanner];
  [(DAWiFiScanner *)self->_wifiScanner removeAllPairedDevicesFor:forCopy completionHandler:handlerCopy];
}

- (void)_uninstallWiFiAwareDeviceFor:(id)for appPairingID:(unint64_t)d completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _uninstallWiFiAwareDeviceFor:appPairingID:completionHandler:]", 30, "[WiFi] uninstallWiFiAwareDeviceFor BundleID='%@', appPairingID='%llu'", forCopy, d);
  }

  [(DADaemonServer *)self _setupWiFiScanner];
  [(DAWiFiScanner *)self->_wifiScanner uninstallPairedDeviceFor:forCopy withAppPairingID:d completionHandler:handlerCopy];
}

- (id)_uninstallWiFiAwareDeviceFor:(id)for appPairingID:(unint64_t)d
{
  forCopy = for;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _uninstallWiFiAwareDeviceFor:appPairingID:]", 30, "[WiFi] uninstallWiFiAwareDeviceFor BundleID='%@', appPairingID='%llu'", forCopy, d);
  }

  [(DADaemonServer *)self _setupWiFiScanner];
  v7 = [(DAWiFiScanner *)self->_wifiScanner uninstallPairedDeviceFor:forCopy withAppPairingID:d];

  return v7;
}

- (void)resetWiFiIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (dword_1000603A0 <= 50)
  {
    if (dword_1000603A0 != -1 || (identifierCopy = _LogCategory_Initialize(), identifierCopy))
    {
      sub_100033C9C(identifierCopy, v5, v6);
    }
  }

  [(DADaemonServer *)self _setupWiFiScanner];
  wifiScanner = self->_wifiScanner;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100019100;
  v10[3] = &unk_100059530;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [(DAWiFiScanner *)wifiScanner removeAllPairedDevices:v10];
}

- (void)_updateWiFiAwareDeviceNameFor:(id)for appPairingID:(unint64_t)d newName:(id)name completionHandler:(id)handler
{
  forCopy = for;
  nameCopy = name;
  handlerCopy = handler;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _updateWiFiAwareDeviceNameFor:appPairingID:newName:completionHandler:]", 30, "[WiFi] updateWiFiAwareDeviceNameFor bundleID='%@', newName='%@', pairingID='%llu'", forCopy, nameCopy, d);
  }

  [(DADaemonServer *)self _setupWiFiScanner];
  [(DAWiFiScanner *)self->_wifiScanner updatePairedDeviceNameFor:forCopy withAppPairingID:d newName:nameCopy completionHandler:handlerCopy];
}

- (id)_updateWiFiAwareDeviceNameFor:(id)for appPairingID:(unint64_t)d newName:(id)name
{
  forCopy = for;
  nameCopy = name;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _updateWiFiAwareDeviceNameFor:appPairingID:newName:]", 30, "[WiFi] updateWiFiAwareDeviceNameFor bundleID='%@', newName='%@', pairingID='%llu'", forCopy, nameCopy, d);
  }

  [(DADaemonServer *)self _setupWiFiScanner];
  v10 = [(DAWiFiScanner *)self->_wifiScanner updatePairedDeviceNameFor:forCopy withAppPairingID:d toNewName:nameCopy];

  return v10;
}

- (void)_setupWiFiScanner
{
  if (!self->_wifiScanner)
  {
    v4 = objc_alloc_init(DAWiFiScanner);
    wifiScanner = self->_wifiScanner;
    self->_wifiScanner = v4;

    prefAllowAppleToAppleWiFiAware = self->_prefAllowAppleToAppleWiFiAware;
    v7 = self->_wifiScanner;

    [(DAWiFiScanner *)v7 setAllowAppleToAppleWiFiAware:prefAllowAppleToAppleWiFiAware];
  }
}

- (void)_persistWiFiAwareDevice:(id)device device:(id)a4 pairingID:(unint64_t)d bundleID:(id)iD
{
  deviceCopy = device;
  v11 = a4;
  iDCopy = iD;
  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100034004(v11);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100019D20;
  v25[3] = &unk_100059580;
  v25[4] = self;
  v13 = v11;
  v26 = v13;
  v14 = deviceCopy;
  v27 = v14;
  [(DAWiFiScanner *)self->_wifiScanner setWifiAwareDevicePairedHandler:v25];
  objc_initWeak(&location, self);
  discoveryConfiguration = [v13 discoveryConfiguration];
  wifiAwareServiceType = [discoveryConfiguration wifiAwareServiceType];

  if (wifiAwareServiceType == 10)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000603A0, "[DADaemonServer _persistWiFiAwareDevice:device:pairingID:bundleID:]", 30, "[WiFi] Device is receiver, asking device='%@' for PIN", v13);
    }

    [(DAWiFiScanner *)self->_wifiScanner selectWiFiAwareDevice:v13 withBundleID:iDCopy];
    [(DAWiFiScanner *)self->_wifiScanner pairSelectedWiFiAwareDevice:v13 withBundleID:iDCopy];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10001A164;
    v21[3] = &unk_1000595A8;
    v23[1] = d;
    v23[2] = 30;
    objc_copyWeak(v23, &location);
    v22 = iDCopy;
    [(DAWiFiScanner *)self->_wifiScanner setShowPinInputHandler:v21];

    objc_destroyWeak(v23);
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001A1FC;
    v17[3] = &unk_1000595D0;
    dCopy = d;
    v20 = 20;
    v17[4] = self;
    v18 = iDCopy;
    [(DAWiFiScanner *)self->_wifiScanner setPinCreatedOnPublisher:v17];
    [(DAWiFiScanner *)self->_wifiScanner pairingPINAccepted:v13];
  }

  objc_destroyWeak(&location);
}

- (void)connectToPairedWiFiAwarePublisherIfNeeded:(id)needed bundleID:(id)d
{
  neededCopy = needed;
  dCopy = d;
  discoveryConfiguration = [neededCopy discoveryConfiguration];
  wifiAwareServiceType = [discoveryConfiguration wifiAwareServiceType];

  if (wifiAwareServiceType == 10)
  {
    [(DADaemonServer *)self _setupWiFiScanner];
    [(DAWiFiScanner *)self->_wifiScanner selectWiFiAwareDevice:neededCopy withBundleID:dCopy];
    [(DAWiFiScanner *)self->_wifiScanner pairSelectedWiFiAwareDevice:neededCopy withBundleID:dCopy];
  }
}

- (void)_addTXTRecordToNWEndpoint:(id)endpoint appID:(id)d
{
  endpointCopy = endpoint;
  dCopy = d;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_100002EE4;
  v32[4] = sub_100002EF4;
  v33 = 0;
  networkEndpoint = [endpointCopy networkEndpoint];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10001A7A4;
  v28[3] = &unk_1000595F8;
  v31 = v32;
  v8 = endpointCopy;
  v29 = v8;
  v9 = dCopy;
  v30 = v9;
  v10 = objc_retainBlock(v28);
  if (!networkEndpoint)
  {
    v19 = NSErrorF_safe();
    goto LABEL_22;
  }

  if (nw_endpoint_get_type(networkEndpoint) == nw_endpoint_type_bonjour_service)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      identifier = [v8 identifier];
      LogPrintF(&dword_1000603A0, "[DADaemonServer _addTXTRecordToNWEndpoint:appID:]", 30, "Processing Bonjour TXT Record for networkEndpoint: NEP %@, deviceID %@, appID %@, TXT Record ??", networkEndpoint, identifier, v9);
    }

    txtRecordData = [v8 txtRecordData];
    identifier2 = txtRecordData;
    if (txtRecordData)
    {
      v14 = nw_txt_record_create_with_bytes([txtRecordData bytes], objc_msgSend(txtRecordData, "length"));
      if (v14)
      {
        out_signature_length = 0;
        signature = nw_endpoint_get_signature(networkEndpoint, &out_signature_length);
        v26 = 0;
        v16 = off_100060380(signature, out_signature_length, &v26);
        v17 = v16;
        if (v16)
        {
          access_bytes[0] = _NSConcreteStackBlock;
          access_bytes[1] = 3221225472;
          access_bytes[2] = sub_10001A814;
          access_bytes[3] = &unk_100059620;
          v25 = v16;
          v21 = v9;
          v22 = v8;
          v23 = networkEndpoint;
          v24 = v14;
          nw_txt_record_access_bytes(v14, access_bytes);

          off_100060390(v17);
        }

        else if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          v18 = CUPrintErrorCode();
          LogPrintF(&dword_1000603A0, "[DADaemonServer _addTXTRecordToNWEndpoint:appID:]", 30, "Failed to get mDNS result: %@", v18);
        }
      }
    }

    goto LABEL_21;
  }

  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    identifier2 = [v8 identifier];
    LogPrintF(&dword_1000603A0, "[DADaemonServer _addTXTRecordToNWEndpoint:appID:]", 30, "Skipping Bonjour processing for networkEndpoint: NEP %@, deviceID %@, appID %@", networkEndpoint, identifier2, v9);
LABEL_21:
  }

LABEL_22:
  (v10[2])(v10);

  _Block_object_dispose(v32, 8);
}

- (void)_addSSDPDatatoNWEndpoint:(id)endpoint appID:(id)d
{
  endpointCopy = endpoint;
  dCopy = d;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = sub_100002EE4;
  v57[4] = sub_100002EF4;
  v58 = 0;
  networkEndpoint = [endpointCopy networkEndpoint];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_10001B2B8;
  v53[3] = &unk_1000595F8;
  v56 = v57;
  v8 = endpointCopy;
  v54 = v8;
  v9 = dCopy;
  v55 = v9;
  v10 = objc_retainBlock(v53);
  if (!networkEndpoint)
  {
    v35 = NSErrorF_safe();
    goto LABEL_50;
  }

  type = nw_endpoint_get_type(networkEndpoint);
  if (type && type != nw_endpoint_type_bonjour_service)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      identifier = [v8 identifier];
      LogPrintF(&dword_1000603A0, "[DADaemonServer _addSSDPDatatoNWEndpoint:appID:]", 30, "Processing non-Bonjour networkEndpoint: NEP %@, deviceID %@, appID %@", networkEndpoint, identifier, v9);
    }

    dictionary = nw_txt_record_create_dictionary();
    v14 = [v8 url];
    if (v14)
    {
      if ([DADevice deviceMetadataURLValid:v14])
      {
        if (dword_1000603A0 <= 30)
        {
          if (dword_1000603A0 != -1 || _LogCategory_Initialize())
          {
            identifier2 = [v8 identifier];
            LogPrintF(&dword_1000603A0, "[DADaemonServer _addSSDPDatatoNWEndpoint:appID:]", 30, "Valid URL for appID %@, deviceID %@, URL %@", v9, identifier2, v14);
          }

          if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            identifier3 = [v8 identifier];
            LogPrintF(&dword_1000603A0, "[DADaemonServer _addSSDPDatatoNWEndpoint:appID:]", 30, "Resolving Host for URL for appID %@, deviceID %@, URL %@", v9, identifier3, v14);
          }
        }

        host = [v14 host];
        v20 = host;
        uTF8String = [host UTF8String];

        if (!uTF8String || ([v14 port], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "utf8ValueSafe"), v22, !v23))
        {
          v36 = NSErrorF_safe();

          goto LABEL_49;
        }

        parameters = nw_parameters_create_secure_tcp(_nw_parameters_configure_protocol_disable, _nw_parameters_configure_protocol_default_configuration);
        v24 = v14;
        host = nw_endpoint_create_host(uTF8String, v23);
        v25 = nw_connection_create(host, parameters);
        v37 = dispatch_semaphore_create(0);
        v49 = 0;
        v50 = &v49;
        v51 = 0x2020000000;
        v52 = 0;
        v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        queue = dispatch_queue_create("DAConnectionQueue", v26);

        v14 = v24;
        nw_connection_set_queue(v25, queue);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10001B328;
        handler[3] = &unk_100059648;
        v47 = uTF8String;
        v48 = v23;
        identifier5 = v25;
        v42 = identifier5;
        v43 = v9;
        v44 = v8;
        v46 = &v49;
        v27 = v37;
        v45 = v27;
        nw_connection_set_state_changed_handler(identifier5, handler);
        nw_connection_start(identifier5);
        v28 = dispatch_time(0, 3000000000);
        if (dispatch_semaphore_wait(v27, v28) && dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1000603A0, "[DADaemonServer _addSSDPDatatoNWEndpoint:appID:]", 30, "nw_connection ready did timeout");
        }

        if (*(v50 + 24) == 1)
        {
          if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1000603A0, "[DADaemonServer _addSSDPDatatoNWEndpoint:appID:]", 30, "nw_connection start succeeded");
          }

          absoluteString = [v24 absoluteString];
          v30 = absoluteString;
          uTF8String2 = [absoluteString UTF8String];

          v32 = strlen(uTF8String2);
          nw_txt_record_set_key(dictionary, "DDDeviceURL", uTF8String2, v32);
        }

        else if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1000603A0, "[DADaemonServer _addSSDPDatatoNWEndpoint:appID:]", 30, "nw_connection start failed");
        }

        nw_connection_cancel(identifier5);

        _Block_object_dispose(&v49, 8);
      }

      else
      {
        if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          identifier4 = [v8 identifier];
          LogPrintF(&dword_1000603A0, "[DADaemonServer _addSSDPDatatoNWEndpoint:appID:]", 30, "Invalid URL for appID %@, deviceID %@, URL %@", v9, identifier4, v14);
        }

        v59[0] = @"BundleID";
        v59[1] = @"SupportsSSDP";
        v60[0] = v9;
        v60[1] = &off_10005ABD8;
        v59[2] = @"SSDPProtocol";
        parameters = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 protocol]);
        v60[2] = parameters;
        host = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:3];
        identifier5 = [v8 identifier];
        [DADeviceAccessAnalytics sendAnalyticsInfo:host forEvent:@"com.apple.DeviceAccess.SSDPMetadataInvalidURL" withDeviceIdentifier:identifier5];
      }
    }

    if ([v8 protocol] == 1)
    {
      uTF8String3 = [DADeviceProtocolDIAL UTF8String];
      v34 = strlen(uTF8String3);
      nw_txt_record_set_key(dictionary, "DDDeviceProtocolType", uTF8String3, v34);
    }

    nw_endpoint_set_txt_record();
    goto LABEL_49;
  }

  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    dictionary = [v8 identifier];
    LogPrintF(&dword_1000603A0, "[DADaemonServer _addSSDPDatatoNWEndpoint:appID:]", 30, "Skip SSDP processing for networkEndpoint: NEP %@, deviceID %@, appID %@", networkEndpoint, dictionary, v9);
LABEL_49:
  }

LABEL_50:
  (v10[2])(v10);

  _Block_object_dispose(v57, 8);
}

- (void)_necpCleanupIfNeeded
{
  if ([(NSMutableDictionary *)self->_discoveryMap count])
  {
    return;
  }

  necpFD = self->_necpFD;
  if (necpFD < 0)
  {
    return;
  }

  if (dword_1000603A0 <= 30)
  {
    if (dword_1000603A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_7:
        necpFD = self->_necpFD;
        if (necpFD < 0)
        {
          return;
        }

        goto LABEL_8;
      }

      necpFD = self->_necpFD;
    }

    LogPrintF(&dword_1000603A0, "[DADaemonServer _necpCleanupIfNeeded]", 30, "NECP close: FD %d", necpFD);
    goto LABEL_7;
  }

LABEL_8:
  if (close(necpFD))
  {
    if (*__error())
    {
      __error();
    }
  }

  self->_necpFD = -1;
}

- (void)_necpSignEndpointForDevice:(id)device appID:(id)d
{
  deviceCopy = device;
  dCopy = d;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100002EE4;
  v34 = sub_100002EF4;
  v35 = 0;
  [deviceCopy networkEndpoint];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10001BA84;
  v25[3] = &unk_100059670;
  v8 = v29 = &v30;
  v26 = v8;
  v9 = deviceCopy;
  v27 = v9;
  v10 = dCopy;
  v28 = v10;
  v11 = objc_retainBlock(v25);
  if (!v8)
  {
    v21 = NSErrorF_safe();
    goto LABEL_24;
  }

  if (!nw_endpoint_has_signature())
  {
    identifier = [v9 identifier];
    if (identifier)
    {
      type = nw_endpoint_get_type(v8);
      if (type == nw_endpoint_type_host)
      {
        v36 = 0;
        v37 = 0;
        v17 = [(DADaemonServer *)self _necpUUIDForAppID:v10 deviceID:identifier uuidBytes:&v36];
        v18 = (v31 + 5);
        v23 = v31[5];
        [(DADaemonServer *)self _necpSignHostnameEndpoint:v8 uuidBytes:&v36 error:&v23];
        objc_storeStrong(v18, v23);
        if (!v31[5] && dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          identifier2 = [v9 identifier];
          LogPrintF(&dword_1000603A0, "[DADaemonServer _necpSignEndpointForDevice:appID:]", 30, "Signed networkEndpoint: hostname, %@, deviceID %@, appID %@, UUID %@", v8, identifier2, v10, v17);
        }
      }

      else if (type == nw_endpoint_type_address)
      {
        v36 = 0;
        v37 = 0;
        v14 = [(DADaemonServer *)self _necpUUIDForAppID:v10 deviceID:identifier uuidBytes:&v36];
        v15 = (v31 + 5);
        obj = v31[5];
        [(DADaemonServer *)self _necpSignAddressEndpoint:v8 uuidBytes:&v36 error:&obj];
        objc_storeStrong(v15, obj);
        if (!v31[5] && dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          identifier3 = [v9 identifier];
          LogPrintF(&dword_1000603A0, "[DADaemonServer _necpSignEndpointForDevice:appID:]", 30, "Signed networkEndpoint: address, %@, deviceID %@, appID %@, UUID %@", v8, identifier3, v10, v14);
        }
      }

      else if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        identifier4 = [v9 identifier];
        LogPrintF(&dword_1000603A0, "[DADaemonServer _necpSignEndpointForDevice:appID:]", 30, "Skip sign networkEndpoint: NEP %@, deviceID %@, appID %@", v8, identifier4, v10);
      }
    }

    else
    {
      v22 = NSErrorF_safe();
    }

    goto LABEL_23;
  }

  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    identifier = [v9 identifier];
    LogPrintF(&dword_1000603A0, "[DADaemonServer _necpSignEndpointForDevice:appID:]", 30, "networkEndpoint already signed for deviceID: %@, appID: %@", identifier, v10);
LABEL_23:
  }

LABEL_24:
  (v11[2])(v11);

  _Block_object_dispose(&v30, 8);
}

- (BOOL)_necpSignAddressEndpoint:(id)endpoint uuidBytes:(unsigned __int8)bytes[16] error:(id *)error
{
  endpointCopy = endpoint;
  if (!nw_endpoint_get_address(endpointCopy))
  {
    sub_100034498(error);
    goto LABEL_25;
  }

  v9 = malloc_type_calloc(1uLL, 0x58uLL, 0x100004077774924uLL);
  if (!v9)
  {
    sub_100034448(error);
    goto LABEL_25;
  }

  v10 = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001BDDC;
  v14[3] = &unk_100059690;
  v14[4] = v9;
  v11 = objc_retainBlock(v14);
  v10[2] = *bytes;
  *(v10 + 6) = 4;
  SockAddrCopy();
  *(v10 + 21) = 0;
  if (self->_necpFD < 0)
  {
    v12 = necp_open();
    self->_necpFD = v12;
    if (v12 < 0 && (!*__error() || *__error()))
    {
      if (!error)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000603A0, "[DADaemonServer _necpSignAddressEndpoint:uuidBytes:error:]", 30, "NECP opened: FD %d", self->_necpFD);
    }
  }

  if (necp_client_action() && (!*__error() || *__error()))
  {
    if (!error)
    {
      goto LABEL_24;
    }

LABEL_23:
    *error = NSErrorF_safe();
    goto LABEL_24;
  }

  if (necp_client_action() && (!*__error() || *__error()))
  {
    if (!error)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  nw_endpoint_set_signature();
LABEL_24:
  (v11[2])(v11);

LABEL_25:
  return 0;
}

- (BOOL)_necpSignHostnameEndpoint:(id)endpoint uuidBytes:(unsigned __int8)bytes[16] error:(id *)error
{
  endpointCopy = endpoint;
  hostname = nw_endpoint_get_hostname(endpointCopy);
  if (!hostname)
  {
    sub_100034538(error);
    goto LABEL_26;
  }

  v10 = hostname;
  v11 = strlen(hostname);
  if (v11 >= 0x10000)
  {
    sub_1000344E8(error);
    goto LABEL_26;
  }

  v12 = v11;
  port = nw_endpoint_get_port(endpointCopy);
  v14 = malloc_type_calloc(1uLL, v12 + 62, 0x100004077774924uLL);
  if (!v14)
  {
    sub_100034448(error);
    goto LABEL_26;
  }

  v15 = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001C108;
  v19[3] = &unk_100059690;
  v19[4] = v14;
  v16 = objc_retainBlock(v19);
  v15[2] = *bytes;
  *(v15 + 6) = 6;
  *(v15 + 28) = 0;
  *(v15 + 29) = port;
  *(v15 + 30) = v12;
  memcpy(v15 + 62, v10, v12);
  if (self->_necpFD < 0)
  {
    v17 = necp_open();
    self->_necpFD = v17;
    if (v17 < 0 && (!*__error() || *__error()))
    {
      if (!error)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000603A0, "[DADaemonServer _necpSignHostnameEndpoint:uuidBytes:error:]", 30, "NECP opened: FD %d", self->_necpFD);
    }
  }

  if (necp_client_action() && (!*__error() || *__error()))
  {
    if (!error)
    {
      goto LABEL_25;
    }

LABEL_24:
    *error = NSErrorF_safe();
    goto LABEL_25;
  }

  if (necp_client_action() && (!*__error() || *__error()))
  {
    if (!error)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  nw_endpoint_set_signature();
LABEL_25:
  (v16[2])(v16);

LABEL_26:
  return 0;
}

- (void)_necpRemoveUUIDsForAppID:(id)d deviceID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  iDCopy = [[NSString alloc] initWithFormat:@"%@:%@", dCopy, iDCopy];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001C1D8;
  v9[3] = &unk_1000596E0;
  v9[4] = iDCopy;
  [(DADaemonServer *)self _necpUpdateUUIDsWithBlock:v9];
}

- (void)_necpUpdateValueStrings:(id)strings
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001C4E0;
  v5[3] = &unk_1000596E0;
  stringsCopy = strings;
  v4 = stringsCopy;
  [(DADaemonServer *)self _necpUpdateUUIDsWithBlock:v5];
}

- (void)_necpUpdateUUIDForAppID:(id)d device:(id)device
{
  dCopy = d;
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    networkEndpoint = [deviceCopy networkEndpoint];
    if (networkEndpoint)
    {
      networkEndpoint2 = networkEndpoint;
    }

    else
    {
      v11 = [(NSMutableDictionary *)self->_discoveryMap objectForKeyedSubscript:dCopy];
      deviceMap = [v11 deviceMap];
      v13 = [deviceMap objectForKeyedSubscript:identifier];
      networkEndpoint2 = [v13 networkEndpoint];

      if (!networkEndpoint2)
      {
        sub_1000346A8(dCopy, identifier);
        goto LABEL_13;
      }
    }

    out_signature_length = 0;
    signature = nw_endpoint_get_signature(networkEndpoint2, &out_signature_length);
    if (signature)
    {
      if (out_signature_length <= 0x2F)
      {
        sub_100034588(&out_signature_length, out_signature_length, dCopy, identifier);
      }

      else
      {
        v15 = [[NSUUID alloc] initWithUUIDBytes:signature + 32];
        uUIDString = [v15 UUIDString];

        v17 = [[NSString alloc] initWithFormat:@"%@:%@", dCopy, identifier];
        if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1000603A0, "[DADaemonServer _necpUpdateUUIDForAppID:device:]", 30, "NECP update UUID: appID %@, deviceID %@, UUID %@", dCopy, identifier, uUIDString);
        }

        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10001C99C;
        v18[3] = &unk_100059708;
        v18[4] = uUIDString;
        v18[5] = v17;
        [(DADaemonServer *)self _necpUpdateUUIDsWithBlock:v18];
      }
    }

    else
    {
      sub_100034628(dCopy, identifier);
    }
  }

  else
  {
    sub_100034724();
  }

LABEL_13:
}

- (void)_necpUpdateUUIDsWithBlock:(id)block
{
  blockCopy = block;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100002EE4;
  v37 = sub_100002EF4;
  v38 = 0;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10001CF00;
  v32[3] = &unk_100058D30;
  v32[4] = &v33;
  v5 = objc_retainBlock(v32);
  v6 = +[NSFileManager defaultManager];
  v7 = v34 + 5;
  obj = v34[5];
  v8 = [v6 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:&obj];
  objc_storeStrong(v7, obj);

  if (!v8)
  {
    v25 = DANestedErrorF();
    v9 = v34[5];
    v34[5] = v25;
    goto LABEL_21;
  }

  v9 = [v8 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
  v10 = +[NSFileManager defaultManager];
  v11 = v34 + 5;
  v30 = v34[5];
  v12 = [v10 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v30];
  objc_storeStrong(v11, v30);

  if (v12)
  {
    v13 = [v9 URLByAppendingPathComponent:@"DANetworkUUIDs.plist" isDirectory:0];
    v14 = [[NSDictionary alloc] initWithContentsOfURL:v13 error:0];
    v15 = [v14 mutableCopy];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = objc_alloc_init(NSMutableDictionary);
    }

    v20 = v17;

    blockCopy[2](blockCopy, v20);
    if ([v20 isEqual:v14])
    {
      if (dword_1000603A0 <= 20 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1000603A0, "-[DADaemonServer _necpUpdateUUIDsWithBlock:]", 20, "NECP update UUIDs: unchanged, total %d", [v14 count]);
      }

      goto LABEL_20;
    }

    v21 = v34;
    v29 = 0;
    v22 = [NSPropertyListSerialization dataWithPropertyList:v20 format:200 options:0 error:&v29];
    objc_storeStrong(v21 + 5, v29);
    v23 = v34 + 5;
    if (v22)
    {
      v28 = v34[5];
      v24 = [v22 writeToURL:v13 options:1073741825 error:&v28];
      objc_storeStrong(v23, v28);
      if (v24)
      {
        if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1000603A0, "-[DADaemonServer _necpUpdateUUIDsWithBlock:]", 30, "NECP update UUIDs: changed, total %d", [v20 count]);
        }

        goto LABEL_19;
      }

      v26 = DANestedErrorF();
    }

    else
    {
      v26 = DANestedErrorF();
    }

    v27 = v34[5];
    v34[5] = v26;

LABEL_19:
    goto LABEL_20;
  }

  v18 = DANestedErrorF();
  v19 = v34[5];
  v34[5] = v18;

  v39[0] = @"Method";
  v13 = NSStringFromSelector(a2);
  v40[0] = v13;
  v39[1] = @"Error";
  v14 = [NSNumber numberWithInteger:350006];
  v40[1] = v14;
  v20 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
  [DADeviceAccessAnalytics sendAnalytics:v20 forEvent:@"com.apple.DeviceAccess.Error"];
LABEL_20:

LABEL_21:
  (v5[2])(v5);

  _Block_object_dispose(&v33, 8);
}

- (id)_necpUUIDForAppID:(id)d deviceID:(id)iD uuidBytes:(unsigned __int8)bytes[16]
{
  memset(&v17, 0, sizeof(v17));
  iDCopy = iD;
  dCopy = d;
  CC_SHA256_Init(&v17);
  v9 = dCopy;
  uTF8String = [v9 UTF8String];

  v11 = strlen(uTF8String);
  CC_SHA256_Update(&v17, uTF8String, v11);
  uTF8String2 = [iDCopy UTF8String];

  v13 = strlen(uTF8String2);
  CC_SHA256_Update(&v17, uTF8String2, v13);
  CC_SHA256_Final(md, &v17);
  memset(out, 0, 37);
  uuid_unparse_upper(md, out);
  uuid_parse(out, bytes);
  v14 = [[NSUUID alloc] initWithUUIDBytes:bytes];
  uUIDString = [v14 UUIDString];

  return uUIDString;
}

- (BOOL)checkAppHasMediaDeviceDiscoveryExtension:(id)extension
{
  extensionCopy = extension;
  v4 = [_EXQuery alloc];
  v5 = [v4 initWithExtensionPointIdentifier:DAExtensionPointIdentifier];
  [_EXQueryController executeQuery:v5];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v23 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v19 = v5;
    v9 = *v21;
    v10 = DAExtensionEntitlement;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        bundleIdentifier = [v12 bundleIdentifier];
        stringByDeletingPathExtension = [bundleIdentifier stringByDeletingPathExtension];

        if (extensionCopy && ([stringByDeletingPathExtension isEqual:extensionCopy] & 1) == 0)
        {
          if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1000603A0, "[DADaemonServer checkAppHasMediaDeviceDiscoveryExtension:]", 30, "Ignoring extension parent bundle mismatch: expected %@ vs %@", extensionCopy, stringByDeletingPathExtension);
          }
        }

        else
        {
          v15 = [v12 entitlementNamed:v10 ofClass:objc_opt_class()];
          bOOLValue = [v15 BOOLValue];

          if (bOOLValue)
          {

            v17 = 1;
            goto LABEL_21;
          }

          if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            sub_10003479C(v12);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v17 = 0;
LABEL_21:
    v5 = v19;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)setPartialIPsForAppBundleID:(id)d partialIPs:(id)ps error:(id *)error
{
  dCopy = d;
  psCopy = ps;
  v10 = [[NSString alloc] initWithFormat:@"%@.%@", dCopy, @"daappdata"];
  v11 = NSTemporaryDirectory();
  v12 = [NSURL fileURLWithPath:v11];
  v13 = [v12 URLByAppendingPathComponent:v10 isDirectory:0];

  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000347F0(v13);
  }

  v14 = [[NSDictionary alloc] initWithContentsOfURL:v13 error:0];
  Current = CFAbsoluteTimeGetCurrent();
  v16 = [v14 objectForKeyedSubscript:@"ipfragtime"];

  if (!v16 || (CFDictionaryGetDouble(), Current - v17 >= self->_prefAppPartialIPUpdateMinCadenceSeconds))
  {
    v18 = [v14 mutableCopy];
    v19 = v18;
    v46 = dCopy;
    v43 = v13;
    v44 = v10;
    errorCopy = error;
    v42 = v14;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = objc_alloc_init(NSMutableDictionary);
    }

    v47 = v20;

    v48 = +[NSMutableArray array];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v45 = psCopy;
    v21 = psCopy;
    v22 = [v21 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v52;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v52 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v51 + 1) + 8 * i);
          v27 = +[NSMutableDictionary dictionary];
          address = [v26 address];
          [v27 setObject:address forKeyedSubscript:@"ipfragaddr"];

          mask = [v26 mask];
          [v27 setObject:mask forKeyedSubscript:@"ipfragmask"];

          [v48 addObject:v27];
        }

        v23 = [v21 countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v23);
    }

    v30 = v47;
    [v47 setObject:v48 forKeyedSubscript:@"ipfrag"];
    v31 = [NSNumber numberWithDouble:Current];
    [v47 setObject:v31 forKeyedSubscript:@"ipfragtime"];

    v50 = 0;
    v32 = [NSPropertyListSerialization dataWithPropertyList:v47 format:200 options:0 error:&v50];
    v33 = v50;
    v34 = v33;
    if (v32)
    {
      v49 = v33;
      v13 = v43;
      v35 = [v32 writeToURL:v43 options:1073741825 error:&v49];
      v36 = v49;

      v10 = v44;
      psCopy = v45;
      if (v35)
      {
        v37 = 1;
LABEL_19:
        v34 = v36;
        dCopy = v46;
LABEL_20:

        v14 = v42;
        goto LABEL_21;
      }

      if (!errorCopy)
      {
        v37 = 0;
        goto LABEL_19;
      }

      v40 = DANestedErrorF();
      v34 = v36;
      dCopy = v46;
      errorCopy2 = errorCopy;
    }

    else
    {
      v10 = v44;
      psCopy = v45;
      v13 = v43;
      errorCopy2 = error;
      if (!error)
      {
        v37 = 0;
        dCopy = v46;
        goto LABEL_31;
      }

      v40 = DANestedErrorF();
      dCopy = v46;
    }

    v37 = 0;
    *errorCopy2 = v40;
LABEL_31:
    v30 = v47;
    goto LABEL_20;
  }

  if (error)
  {
    DAErrorF(350001, "setPartialIPs rejected: too soon");
    *error = v37 = 0;
  }

  else
  {
    v37 = 0;
  }

LABEL_21:

  return v37;
}

- (id)getPartialIPsWithAppBundleID:(id)d error:(id *)error
{
  dCopy = d;
  v6 = [[NSString alloc] initWithFormat:@"%@.%@", dCopy, @"daappdata"];
  v7 = NSTemporaryDirectory();
  v8 = [NSURL fileURLWithPath:v7];
  v9 = [v8 URLByAppendingPathComponent:v6 isDirectory:0];

  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100034830(v9);
  }

  v32 = 0;
  v10 = [[NSDictionary alloc] initWithContentsOfURL:v9 error:&v32];
  v11 = v32;
  v12 = v11;
  if (!v11)
  {
    v25 = v6;
    v26 = dCopy;
    v27 = +[NSMutableArray array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v24 = v10;
    v13 = [v10 objectForKeyedSubscript:@"ipfrag"];
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (!v14)
    {
      goto LABEL_20;
    }

    v15 = v14;
    v16 = *v29;
    while (1)
    {
      v17 = 0;
      do
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * v17);
        v19 = [v18 objectForKeyedSubscript:@"ipfragaddr"];
        v20 = [v18 objectForKeyedSubscript:@"ipfragmask"];
        v21 = [[DAPartialIP alloc] initWithAddress:v19 mask:v20];
        if (dword_1000603A0 > 30 || dword_1000603A0 == -1 && !_LogCategory_Initialize())
        {
          if (!v21)
          {
            goto LABEL_15;
          }

LABEL_14:
          [v27 addObject:v21];
          goto LABEL_15;
        }

        sub_1000348B0(v21);
        if (v21)
        {
          goto LABEL_14;
        }

LABEL_15:

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v22 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
      v15 = v22;
      if (!v22)
      {
LABEL_20:

        v6 = v25;
        dCopy = v26;
        v10 = v24;
        v12 = 0;
        goto LABEL_21;
      }
    }
  }

  sub_100034870(v11, error);
  v27 = &__NSArray0__struct;
LABEL_21:

  return v27;
}

- (void)respondToBluetoothPairingRequest:(id)request accept:(BOOL)accept pairingType:(int64_t)type passkey:(id)passkey
{
  requestCopy = request;
  passkeyCopy = passkey;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001DC04;
  block[3] = &unk_100059730;
  block[4] = self;
  v16 = requestCopy;
  acceptCopy = accept;
  v17 = passkeyCopy;
  typeCopy = type;
  v13 = passkeyCopy;
  v14 = requestCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)respondToWiFiAwarePairingRequest:(unint64_t)request accept:(BOOL)accept pairingType:(int64_t)type passkey:(id)passkey
{
  passkeyCopy = passkey;
  v13 = passkeyCopy;
  if (dword_1000603A0 <= 90)
  {
    if (dword_1000603A0 != -1 || (passkeyCopy = _LogCategory_Initialize(), passkeyCopy))
    {
      sub_100034904(passkeyCopy, v11, v12);
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001DD10;
  block[3] = &unk_100059758;
  acceptCopy = accept;
  requestCopy = request;
  typeCopy = type;
  block[4] = self;
  v17 = v13;
  v15 = v13;
  dispatch_async(dispatchQueue, block);
}

- (id)xpcListenerEndpoint
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_xpcListenerEndpoint;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = selfCopy->_xpcListener;
    v6 = v5;
    if (v5)
    {
      v7 = xpc_endpoint_create(v5);
      objc_storeStrong(&selfCopy->_xpcListenerEndpoint, v7);
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)_xpcListenerEvent:(id)event
{
  eventCopy = event;
  type = xpc_get_type(eventCopy);
  if (type == &_xpc_type_connection)
  {
    type = [(DADaemonServer *)self _xpcConnectionAccept:eventCopy];
    goto LABEL_8;
  }

  v6 = eventCopy;
  if (eventCopy == &_xpc_error_connection_invalid)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 != -1 || (type = _LogCategory_Initialize(), v6 = eventCopy, type))
      {
        type = sub_10003497C(type, v6, v5);
        goto LABEL_8;
      }
    }
  }

  else if (dword_1000603A0 <= 90)
  {
    if (dword_1000603A0 != -1 || (type = _LogCategory_Initialize(), v6 = eventCopy, type))
    {
      sub_100034920();
LABEL_8:
      v6 = eventCopy;
    }
  }

  _objc_release_x1(type, v6);
}

- (void)_xpcConnectionAccept:(id)accept
{
  acceptCopy = accept;
  v5 = objc_alloc_init(DADaemonXPCConnection);
  [(DADaemonXPCConnection *)v5 setDaemon:self];
  [(DADaemonXPCConnection *)v5 setDispatchQueue:self->_dispatchQueue];
  [(DADaemonXPCConnection *)v5 setPid:xpc_connection_get_pid(acceptCopy)];
  [(DADaemonXPCConnection *)v5 setXpcCnx:acceptCopy];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001DFF4;
  handler[3] = &unk_100058B80;
  handler[4] = v5;
  xpc_connection_set_event_handler(acceptCopy, handler);
  xpc_connection_set_target_queue(acceptCopy, self->_dispatchQueue);
  xpc_connection_activate(acceptCopy);

  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v7 = objc_alloc_init(NSMutableSet);
    v8 = self->_xpcConnections;
    self->_xpcConnections = v7;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v5];
  [(DADaemonXPCConnection *)v5 activate];
}

- (id)getAuthorizedDevices:(id)devices
{
  devicesCopy = devices;
  v4 = [[NSString alloc] initWithFormat:@"%@.%@", devicesCopy, @"daappdata"];
  v5 = NSTemporaryDirectory();
  v6 = [NSURL fileURLWithPath:v5];
  v7 = [v6 URLByAppendingPathComponent:v4 isDirectory:0];

  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer getAuthorizedDevices:]", 50, "appDataFileURL %@, appDataFilename %@", v7, v4);
  }

  v8 = [[NSDictionary alloc] initWithContentsOfURL:v7 error:0];
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer getAuthorizedDevices:]", 30, "appDataDict %@, appID %@", v8, devicesCopy);
  }

  if (v8)
  {
    CFDictionaryGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      v10 = objc_alloc_init(NSMutableArray);
      sub_10001E380();
      v17 = 3221225472;
      v18 = sub_1000080C0;
      v19 = &unk_100058EC0;
      v20 = v11;
      v12 = v11;
      [v9 enumerateKeysAndObjectsUsingBlock:v16];
      v13 = &__NSArray0__struct;
      if (v12)
      {
        v13 = v12;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)appAccessInfoForDeviceID:(id)d appID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v39[1] = 1;
  v7 = container_system_group_path_for_identifier();
  if (v7)
  {
    v8 = v7;
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000603A0, "[DADaemonServer appAccessInfoForDeviceID:appID:]", 30, "Using container path %s", v8);
    }

    v9 = [NSURL fileURLWithFileSystemRepresentation:v8 isDirectory:1 relativeToURL:0];
    free(v8);
    if (v9)
    {
      v10 = [v9 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
      v11 = [v10 URLByAppendingPathComponent:@"AccessorySetup" isDirectory:1];
      v12 = [v11 URLByAppendingPathComponent:@"AppAccessInfos" isDirectory:1];
      path = [v12 path];
      v37 = CBGenerateObfuscatedSHA256HashedString();
      v14 = [[NSString alloc] initWithFormat:@"%@.%@", v37, @"daappInfodata"];
      v15 = [NSURL fileURLWithPath:path];
      v16 = [v15 URLByAppendingPathComponent:v14 isDirectory:0];

      v39[0] = 0;
      v35 = v16;
      v17 = [[NSDictionary alloc] initWithContentsOfURL:v16 error:v39];
      v18 = v39[0];
      v33 = path;
      v34 = v17;
      v36 = v14;
      if (v17)
      {
        CFDictionaryGetTypeID();
        v19 = CFDictionaryGetTypedValue();
        v20 = v19;
        if (v19)
        {
          v32 = v12;
          v21 = v11;
          v22 = v9;
          v23 = v10;
          v24 = iDCopy;
          v25 = dCopy;
          v17 = [v19 objectForKeyedSubscript:dCopy];
          v38 = v18;
          v26 = [[DADeviceAppAccessInfo alloc] initWithPersistentDictionaryRepresentation:v17 error:&v38];
          v27 = v38;

          if (v26)
          {
            v28 = v26;
          }

          else if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            v31 = CUPrintNSError();
            LogPrintF(&dword_1000603A0, "[DADaemonServer appAccessInfoForDeviceID:appID:]", 90, "### Unable to decode app info: %@, %@", v25, v31);
          }

          v18 = v27;
          dCopy = v25;
          iDCopy = v24;
          v10 = v23;
          v9 = v22;
          v11 = v21;
          v12 = v32;
          goto LABEL_12;
        }

        if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          CUPrintNSError();
          objc_claimAutoreleasedReturnValue();
          sub_10001E3E0();
          LogPrintF(&dword_1000603A0, "[DADaemonServer appAccessInfoForDeviceID:appID:]", 90, "### Devices within app info not found: %@");
          v26 = 0;
LABEL_12:

LABEL_13:
          v29 = v37;

          path = v33;
LABEL_14:

          goto LABEL_16;
        }

LABEL_33:
        v26 = 0;
        goto LABEL_13;
      }

      if (dword_1000603A0 > 90)
      {
        v26 = 0;
      }

      else
      {
        if (dword_1000603A0 != -1 || _LogCategory_Initialize())
        {
          v20 = CUPrintNSError();
          LogPrintF(&dword_1000603A0, "[DADaemonServer appAccessInfoForDeviceID:appID:]", 90, "### Device app info not found: %@", v20);
          goto LABEL_33;
        }

        v26 = 0;
      }

      v29 = v37;
      goto LABEL_14;
    }
  }

  v26 = 0;
LABEL_16:

  return v26;
}

- (id)_statefulDevicesForAppID:(id)d
{
  dCopy = d;
  v6 = [objc_alloc(sub_10001E3C8()) initWithFormat:@"%@.%@", v3, @"daappdata"];

  NSTemporaryDirectory();
  objc_claimAutoreleasedReturnValue();
  v7 = [sub_10001E3EC() fileURLWithPath:v4];
  v8 = [v7 URLByAppendingPathComponent:v6 isDirectory:0];

  v9 = [[NSDictionary alloc] initWithContentsOfURL:v8 error:0];
  if (v9)
  {
    CFDictionaryGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    if (v10)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      sub_10001E380();
      v15 = 3221225472;
      v16 = sub_10000EDDC;
      v17 = &unk_100058EC0;
      v18 = v12;
      [v10 enumerateKeysAndObjectsUsingBlock:v14];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_discoveryEvent:(id)event appID:(id)d
{
  eventCopy = event;
  dCopy = d;
  v8 = [(NSMutableDictionary *)self->_discoveryMap objectForKeyedSubscript:dCopy];
  if (v8)
  {
    eventType = [eventCopy eventType];
    if ((eventType & 0xFFFFFFFFFFFFFFFDLL) != 0x28)
    {
      if (eventType != 16 && eventType != 17)
      {
        if (eventType != 56 && eventType != 55)
        {
          if (eventType == 41)
          {
            v21 = objc_opt_class();
            if (sub_10001E4A8(v21) & 1) != 0 || (v22 = objc_opt_class(), (sub_10001E4A8(v22)))
            {
              v23 = eventCopy;
              device = [v23 device];
              identifier = [device identifier];

              if (identifier)
              {
                device2 = [v23 device];
                if (device2)
                {
                  statefulDeviceMap = [v8 statefulDeviceMap];
                  v28 = [statefulDeviceMap objectForKeyedSubscript:identifier];

                  if (v28)
                  {
                    [device2 setState:{objc_msgSend(v28, "state")}];
                  }

                  deviceMap = [v8 deviceMap];
                  v30 = [deviceMap count];
                  if ([device2 state] == 20)
                  {
                    [deviceMap objectForKeyedSubscript:identifier];
                    v44 = v30;
                    v32 = v31 = v23;
                    [v32 setPendingRemoval:1];

                    v23 = v31;
                    v30 = v44;
                  }

                  else
                  {
                    [sub_10001E41C() _reportDiscoveryEvent:? appID:?];
                    [deviceMap setObject:0 forKeyedSubscript:identifier];
                  }

                  v41 = [deviceMap count];
                  if (v30 && !v41)
                  {
                    [(DADaemonServer *)self _reportDevicesPresentChanged:0 appID:dCopy];
                  }
                }
              }
            }
          }

          goto LABEL_40;
        }

        v33 = objc_opt_class();
        if ((sub_10001E4A8(v33) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      [(DADaemonServer *)self _reportDiscoveryEvent:eventCopy appID:dCopy];
      goto LABEL_40;
    }

    v10 = objc_opt_class();
    if (sub_10001E4A8(v10) & 1) != 0 || (v11 = objc_opt_class(), (sub_10001E4A8(v11)))
    {
      v43 = eventCopy;
      device3 = [v43 device];
      if (!device3)
      {
LABEL_39:

        goto LABEL_40;
      }

      v13 = device3;
      identifier2 = [device3 identifier];
      if (!identifier2)
      {
LABEL_38:

        goto LABEL_39;
      }

      bluetoothIdentifier = [v13 bluetoothIdentifier];
      v42 = bluetoothIdentifier;
      if ([v13 discoveredInExtension] && bluetoothIdentifier)
      {
        cbCentralManager = self->_cbCentralManager;
        v50 = bluetoothIdentifier;
        v17 = [NSArray arrayWithObjects:&v50 count:1];
        v18 = [(CBCentralManager *)cbCentralManager retrievePeripheralsWithIdentifiers:v17];
        firstObject = [v18 firstObject];

        name = [firstObject name];
        [v13 setBluetoothOTAName:name];

        if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1000603A0, "[DADaemonServer _discoveryEvent:appID:]", 50, "### _discoveryEvent peripheral %@", firstObject);
        }
      }

      statefulDeviceMap2 = [v8 statefulDeviceMap];
      v35 = [statefulDeviceMap2 objectForKeyedSubscript:identifier2];

      [v13 setState:{objc_msgSend(v35, "state")}];
      [sub_10001E428() _addTXTRecordToNWEndpoint:? appID:?];
      [sub_10001E428() _addSSDPDatatoNWEndpoint:? appID:?];
      deviceMap2 = [v13 url];
      if (deviceMap2 && ([DADevice deviceMetadataURLValid:deviceMap2]& 1) == 0)
      {
        if (dword_1000603A0 > 30 || dword_1000603A0 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_37;
        }

        identifier3 = [v13 identifier];
        LogPrintF(&dword_1000603A0, "[DADaemonServer _discoveryEvent:appID:]", 30, "Invalid URL for appID %@, deviceID %@, URL %@", dCopy, identifier3, deviceMap2);
      }

      else
      {

        deviceMap2 = [v8 deviceMap];
        v37 = [deviceMap2 count];
        if (!deviceMap2)
        {
          deviceMap2 = objc_alloc_init(NSMutableDictionary);
          [v8 setDeviceMap:deviceMap2];
        }

        [deviceMap2 setObject:v13 forKeyedSubscript:identifier2];
        [sub_10001E428() _necpSignEndpointForDevice:? appID:?];
        [(DADaemonServer *)self _reportDiscoveryEvent:v43 appID:dCopy];
        if (!v37)
        {
          [(DADaemonServer *)self _reportDevicesPresentChanged:1 appID:dCopy];
        }

        v38 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
        dispatchQueue = self->_dispatchQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000F8F0;
        block[3] = &unk_1000590A0;
        v46 = dCopy;
        v47 = v13;
        v48 = v8;
        v49 = v38;
        identifier3 = v38;
        dispatch_async(dispatchQueue, block);
      }

LABEL_37:
      goto LABEL_38;
    }
  }

  else if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _discoveryEvent:appID:]", 90, "### Discovery event for appID: %@", dCopy);
  }

LABEL_40:
}

- (id)_updateStateForDiscoveryDeviceID:(id)d state:(int64_t)state appID:(id)iD referenceDevice:(id)device
{
  dCopy = d;
  iDCopy = iD;
  deviceCopy = device;
  v13 = [(NSMutableDictionary *)self->_discoveryMap objectForKeyedSubscript:iDCopy];
  v14 = v13;
  if (v13)
  {
    deviceMap = [v13 deviceMap];
    v16 = [deviceMap objectForKeyedSubscript:dCopy];

    if (v16)
    {
      if (([v16 flags] & 0x408) != 0)
      {
        appAccessInfoDeviceMap = [v16 appAccessInfoDeviceMap];
        v18 = [appAccessInfoDeviceMap objectForKeyedSubscript:iDCopy];
        [v18 setState:state];

        [v16 setBluetoothOnboardingFinished:{objc_msgSend(deviceCopy, "bluetoothSetupFinished")}];
        [v16 setWiFiAwareOnboardingFinished:{objc_msgSend(deviceCopy, "wifiAwareSetupFinished")}];
        [v16 setDeviceUpgradeFinished:objc_msgSend(deviceCopy inProgress:"upgradeFinished") failed:{objc_msgSend(deviceCopy, "upgradeInProgress"), objc_msgSend(deviceCopy, "upgradeFailed")}];
      }

      [v16 setState:state];
      statefulDeviceMap = [v14 statefulDeviceMap];
      if (!statefulDeviceMap)
      {
        statefulDeviceMap = objc_alloc_init(NSMutableDictionary);
        [v14 setStatefulDeviceMap:statefulDeviceMap];
      }

      [statefulDeviceMap setObject:v16 forKeyedSubscript:dCopy];
      v20 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
      dispatchQueue = self->_dispatchQueue;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10000FC0C;
      v26[3] = &unk_1000590C8;
      v27 = iDCopy;
      stateCopy = state;
      v28 = dCopy;
      v22 = v16;
      v29 = v22;
      v30 = v14;
      v31 = v20;
      v23 = v20;
      dispatch_async(dispatchQueue, v26);
      v24 = v22;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (int64_t)_applicationHasBluetoothGlobalTCC:(id)c
{
  cCopy = c;
  if (cCopy && (v4 = TCCAccessCopyInformationForBundleId()) != 0)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count < 1)
    {
      goto LABEL_13;
    }

    v7 = Count;
    v8 = 0;
    v9 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
      Value = CFDictionaryGetValue(ValueAtIndex, kTCCInfoService);
      if (CFEqual(Value, kTCCServiceBluetoothAlways))
      {
        break;
      }

      ++v8;
    }

    while (v7 != v8);
    v12 = CFDictionaryGetValue(ValueAtIndex, kTCCInfoGranted);
    if (v12)
    {
      if (CFBooleanGetValue(v12))
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }
    }

    else
    {
LABEL_13:
      v9 = 1;
    }

    CFRelease(v5);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)_parseDADiscoveryConfiguration:(id)configuration
{
  configurationCopy = configuration;
  bluetoothIdentifier = [configurationCopy bluetoothIdentifier];

  if (bluetoothIdentifier)
  {
    v33 = 0;
  }

  else
  {
    objc_opt_new();
    associationIdentifier = [sub_10001E3C8() associationIdentifier];
    if (!associationIdentifier)
    {
      goto LABEL_25;
    }

    bluetoothServices = [configurationCopy bluetoothServices];
    v7 = [bluetoothServices count];

    if (v7)
    {
      objc_opt_new();
      bluetoothServices2 = [sub_10001E4F8() bluetoothServices];
      v9 = [bluetoothServices2 objectAtIndex:0];

      if (v9)
      {
        [sub_10001E41C() setObject:? forKey:?];
        [bluetoothServices setObject:associationIdentifier forKey:CBCentralManagerScanOptionFilterIdentifierString];
        bluetoothServicePayload = [configurationCopy bluetoothServicePayload];
        v11 = [bluetoothServicePayload length];

        if (v11)
        {
          bluetoothServicePayload2 = [configurationCopy bluetoothServicePayload];
          [sub_10001E428() setObject:? forKey:?];
        }

        bluetoothServicePayloadMask = [configurationCopy bluetoothServicePayloadMask];
        v14 = [bluetoothServicePayloadMask length];

        if (v14)
        {
          bluetoothServicePayloadMask2 = [configurationCopy bluetoothServicePayloadMask];
          [sub_10001E428() setObject:? forKey:?];
        }

        [0 addObject:bluetoothServices];
      }
    }

    bluetoothCompanyIdentifiers = [configurationCopy bluetoothCompanyIdentifiers];
    v17 = [bluetoothCompanyIdentifiers count];

    if (v17)
    {
      objc_opt_new();
      bluetoothCompanyIdentifiers2 = [sub_10001E4F8() bluetoothCompanyIdentifiers];
      v19 = [bluetoothCompanyIdentifiers2 objectAtIndex:0];
      unsignedIntValue = [v19 unsignedIntValue];

      v21 = [NSNumber numberWithUnsignedInt:unsignedIntValue];
      [sub_10001E41C() setObject:? forKey:?];

      [bluetoothCompanyIdentifiers setObject:associationIdentifier forKey:CBCentralManagerScanOptionFilterIdentifierString];
      bluetoothCompanyPayload = [configurationCopy bluetoothCompanyPayload];
      v23 = [bluetoothCompanyPayload length];

      if (v23)
      {
        bluetoothCompanyPayload2 = [configurationCopy bluetoothCompanyPayload];
        [sub_10001E41C() setObject:? forKey:?];
      }

      bluetoothCompanyPayloadMask = [configurationCopy bluetoothCompanyPayloadMask];
      v26 = [bluetoothCompanyPayloadMask length];

      if (v26)
      {
        bluetoothCompanyPayloadMask2 = [configurationCopy bluetoothCompanyPayloadMask];
        [sub_10001E41C() setObject:? forKey:?];
      }

      [0 addObject:bluetoothCompanyIdentifiers];
    }

    [configurationCopy bluetoothNameSubstring];
    if (objc_claimAutoreleasedReturnValue())
    {
      bluetoothNameSubstring = [sub_10001E4F8() bluetoothNameSubstring];
      v29 = [bluetoothNameSubstring length];

      if (v29)
      {
        bluetoothNameSubstringCompareOptions = [configurationCopy bluetoothNameSubstringCompareOptions];
        objc_opt_new();
        bluetoothNameSubstring2 = [sub_10001E4F8() bluetoothNameSubstring];
        [sub_10001E41C() setObject:? forKey:?];
        [bluetoothCompanyIdentifiers setObject:associationIdentifier forKey:CBCentralManagerScanOptionFilterIdentifierString];
        if (bluetoothNameSubstringCompareOptions)
        {
          v32 = [NSNumber numberWithUnsignedInteger:bluetoothNameSubstringCompareOptions];
          [sub_10001E428() setObject:? forKey:?];
        }

        else
        {
          [bluetoothCompanyIdentifiers setObject:CBCentralManagerScanOptionMatchingRuleNameMatchOptionContains forKey:CBCentralManagerScanOptionMatchingRuleNameMatchOption];
        }

        [0 addObject:bluetoothCompanyIdentifiers];
      }
    }

    if ([0 count])
    {
      v33 = 0;
    }

    else
    {
LABEL_25:
      v33 = 0;
    }
  }

  return v33;
}

- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    occurCopy = occur;
    if (occur == 1)
    {
      v11 = "Connected";
    }

    else
    {
      v11 = "Disconnected";
    }

    v30 = v11;
    occur = occurCopy;
    LogPrintF(&dword_1000603A0, "-[DADaemonServer centralManager:connectionEventDidOccur:forPeripheral:]", 50, "connectionEventDidOccur %@ %s transport=%d", peripheralCopy, v30, [peripheralCopy connectedTransport]);
  }

  v12 = [(DADaemonServer *)self getDevicesWithFlags:8 appID:0];
  v13 = v12;
  if (v12)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      occurCopy2 = occur;
      selfCopy = self;
      v33 = managerCopy;
      v17 = *v35;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v34 + 1) + 8 * i);
          bluetoothIdentifier = [v19 bluetoothIdentifier];
          identifier = [peripheralCopy identifier];
          v22 = bluetoothIdentifier;
          v23 = identifier;
          v24 = v23;
          if (v22 == v23)
          {

LABEL_23:
            v27 = DAWiFiScanDescriptor;
            occur = occurCopy2;
            if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              v28 = @"disconnected";
              if (occurCopy2 == 1)
              {
                v28 = @"connected";
              }

              LogPrintF(&dword_1000603A0, "[DADaemonServer centralManager:connectionEventDidOccur:forPeripheral:]", 50, "Found %@ device: %@", v28, v19);
            }

            v26 = v19;
            self = selfCopy;
            managerCopy = v33;
            goto LABEL_31;
          }

          if ((v22 != 0) == (v23 == 0))
          {
          }

          else
          {
            v25 = [v22 isEqual:v23];

            if (v25)
            {
              goto LABEL_23;
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      v26 = 0;
      self = selfCopy;
      managerCopy = v33;
      v27 = DAWiFiScanDescriptor;
      occur = occurCopy2;
    }

    else
    {
      v26 = 0;
      v27 = DAWiFiScanDescriptor;
    }

LABEL_31:

    [v26 setConnectionStatus:{objc_msgSend(v26, "connectionStatus") & 0xFFFFFFFFFFFFFBFFLL | ((occur == 1) << 10)}];
    superclass = v27[23].superclass;
    if (superclass <= 50 && (superclass != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000603A0, "[DADaemonServer centralManager:connectionEventDidOccur:forPeripheral:]", 50, "Reporting connection status changed: %@", v26);
    }

    [(DADaemonServer *)self _reportDeviceConnectionStatusChanged:v26];
  }
}

- (id)_findDADeviceWithMigrationConfig:(id)config
{
  configCopy = config;
  bluetoothIdentifier = [configCopy bluetoothIdentifier];

  networkHotspotSSID = [configCopy networkHotspotSSID];

  if ([configCopy wifiAwarePairingID])
  {
    wifiAwareServiceName = [configCopy wifiAwareServiceName];
    v9 = wifiAwareServiceName != 0;

    if (networkHotspotSSID && wifiAwareServiceName)
    {
      v10 = 0;
      goto LABEL_79;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = [(DADaemonServer *)self getDevicesWithFlags:8 appID:0];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v83 = [v11 countByEnumeratingWithState:&v97 objects:v101 count:16];
  HIDWORD(v81) = v9;
  if (v83)
  {
    HIDWORD(v74) = bluetoothIdentifier != 0;
    v86 = 0;
    v75 = 0;
    v76 = v11;
    v77 = 0;
    v3 = 0;
    v9 = 0;
    v12 = 0;
    v82 = *v98;
    v80 = networkHotspotSSID;
    do
    {
      for (i = 0; i != v83; ++i)
      {
        if (*v98 != v82)
        {
          objc_enumerationMutation(v11);
        }

        v87 = *(*(&v97 + 1) + 8 * i);
        if ([v87 state] != 1)
        {
          v84 = i;
          if (bluetoothIdentifier)
          {
            bluetoothIdentifier2 = [v87 bluetoothIdentifier];

            if (bluetoothIdentifier2 && !v12)
            {
              bluetoothIdentifier3 = [configCopy bluetoothIdentifier];
              bluetoothIdentifier4 = [v87 bluetoothIdentifier];
              v17 = [bluetoothIdentifier3 isEqual:bluetoothIdentifier4];

              if (v17)
              {
                v12 = v87;
                identifier = [v12 identifier];

                v77 = identifier;
              }

              else
              {
                v12 = 0;
              }

              networkHotspotSSID = v80;
            }

            i = v84;
          }

          if (networkHotspotSSID)
          {
            sSID = [v87 SSID];

            if (sSID && !v9)
            {
              [v87 SSID];
              objc_claimAutoreleasedReturnValue();
              networkHotspotSSID2 = [sub_10001E3C8() networkHotspotSSID];
              v21 = [networkHotspotSSID2 isEqualToString:sSID];

              if (v21 && (!bluetoothIdentifier || ([configCopy bluetoothIdentifier], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v87, "bluetoothIdentifier"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "isEqual:", v23), v23, v22, v24)))
              {
                v9 = v87;
                identifier2 = [v9 identifier];

                v75 = identifier2;
              }

              else
              {
                v9 = 0;
              }

              networkHotspotSSID = v80;
            }

            i = v84;
          }

          if (HIDWORD(v81))
          {
            wifiAwareDevicePairingID = [v87 wifiAwareDevicePairingID];

            if (wifiAwareDevicePairingID && !v3)
            {
              discoveryConfiguration = [v87 discoveryConfiguration];
              wifiAwareServiceName2 = [discoveryConfiguration wifiAwareServiceName];

              appAccessInfoMap = [v87 appAccessInfoMap];
              allValues = [appAccessInfoMap allValues];

              v39 = sub_10001E504(v31, v32, v33, v34, v35, v36, v37, v38, v74, v75, v76, v77, v9, v12, v80, v81, v82, v83, v84, v85, v86, v87, 0, 0, 0, 0, 0, 0, 0, 0, v97, *(&v97 + 1), v98, *(&v98 + 1), v99, *(&v99 + 1), v100, *(&v100 + 1));
              if (v39)
              {
                v40 = v39;
                v3 = 0;
                v41 = *v91;
                v85 = allValues;
                do
                {
                  for (j = 0; j != v40; j = j + 1)
                  {
                    if (*v91 != v41)
                    {
                      objc_enumerationMutation(allValues);
                    }

                    v43 = *(v90 + 8 * j);
                    wifiAwarePairingID = [configCopy wifiAwarePairingID];
                    wifiAwarePairingID2 = [v43 wifiAwarePairingID];
                    if (wifiAwarePairingID == wifiAwarePairingID2)
                    {
                      wifiAwareServiceName3 = [configCopy wifiAwareServiceName];
                      v54 = [wifiAwareServiceName3 isEqualToString:wifiAwareServiceName2];

                      if (v54)
                      {
                        v55 = wifiAwareServiceName2;
                        v56 = bluetoothIdentifier;
                        if (!bluetoothIdentifier || ([configCopy bluetoothIdentifier], v57 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v88, "bluetoothIdentifier"), v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v57, "isEqual:", v58), v58, v57, v59))
                        {
                          v60 = v88;

                          identifier3 = [v60 identifier];

                          v86 = identifier3;
                          v3 = v60;
                        }

                        bluetoothIdentifier = v56;
                        wifiAwareServiceName2 = v55;
                        allValues = v85;
                      }
                    }
                  }

                  v40 = sub_10001E504(wifiAwarePairingID2, v46, v47, v48, v49, v50, v51, v52, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, *(&v97 + 1), v98, *(&v98 + 1), v99, *(&v99 + 1), v100, *(&v100 + 1));
                }

                while (v40);
              }

              else
              {
                v3 = 0;
              }

              v11 = v76;
              v9 = v78;
              v12 = v79;
              networkHotspotSSID = v80;
            }

            i = v84;
          }
        }
      }

      v83 = [v11 countByEnumeratingWithState:&v97 objects:v101 count:16];
    }

    while (v83);
    v62 = v12 != 0;
    if ((bluetoothIdentifier != 0) != v62)
    {
      goto LABEL_96;
    }

    v63 = v3 != 0;
    if ((HIDWORD(v81) ^ v63))
    {
      goto LABEL_96;
    }

    if (bluetoothIdentifier)
    {
      v64 = networkHotspotSSID == 0;
    }

    else
    {
      v64 = 0;
    }

    v65 = !v64;
    if (((v65 | HIDWORD(v81)) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v12 = 0;
    if (bluetoothIdentifier)
    {
      v9 = 0;
      v3 = 0;
      v77 = 0;
      v75 = 0;
      v86 = 0;
      goto LABEL_96;
    }

    if (v9)
    {
      sub_10001E490();
      v10 = 0;
      goto LABEL_78;
    }

    HIDWORD(v74) = 0;
    sub_10001E490();
  }

  if (bluetoothIdentifier)
  {
    v67 = 1;
  }

  else
  {
    v67 = networkHotspotSSID == 0;
  }

  v68 = v67;
  if (((v68 | HIDWORD(v81)) & 1) == 0)
  {
    v66 = v9;
    v9 = v66;
    goto LABEL_77;
  }

  if (!bluetoothIdentifier && !networkHotspotSSID && ((HIDWORD(v81) ^ 1) & 1) == 0)
  {
    v66 = v3;
    v3 = v66;
    goto LABEL_77;
  }

  v70 = HIDWORD(v74);
  if (!networkHotspotSSID)
  {
    v70 = 0;
  }

  if (v70 == 1)
  {
    if (v9)
    {
      v71 = v62;
    }

    else
    {
      v71 = 0;
    }

    if (v71)
    {
      if ([v77 isEqualToString:v75])
      {
        goto LABEL_61;
      }
    }

    else if (!v62)
    {
LABEL_96:
      v10 = 0;
      goto LABEL_78;
    }

    sSID2 = [v12 SSID];

    if (sSID2)
    {
      goto LABEL_96;
    }

    networkHotspotSSID3 = [configCopy networkHotspotSSID];
    [v12 setSSID:networkHotspotSSID3];
  }

  else if (((bluetoothIdentifier != 0) & BYTE4(v81) & (v63 && v62)) != 1 || ![v77 isEqualToString:v86])
  {
    goto LABEL_96;
  }

LABEL_61:
  v66 = v12;
  v12 = v66;
LABEL_77:
  v10 = v66;
LABEL_78:

LABEL_79:

  return v10;
}

- (void)_updateWiFiDevice:(id)device bundleID:(id)d
{
  deviceCopy = device;
  dCopy = d;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1000603A0, "[DADaemonServer _updateWiFiDevice:bundleID:]", 30, "[WiFi] updating WiFi device = '%@ for bundleID = '%@'", deviceCopy, dCopy);
  }

  identifier = [deviceCopy identifier];
  if (identifier)
  {
    sSID = [deviceCopy SSID];
    if (sSID)
    {
      v9 = [[CWFInterface alloc] initWithServiceType:2];
      [v9 activate];
      v10 = [v9 knownNetworkProfilesWithProperties:0];
      sub_10001E380();
      v13 = 3221225472;
      v14 = sub_1000195D4;
      v15 = &unk_100059558;
      v16 = identifier;
      v17 = sSID;
      v18 = v9;
      v19 = dCopy;
      v20 = deviceCopy;
      v11 = v9;
      [v10 enumerateObjectsUsingBlock:v12];
    }
  }
}

@end