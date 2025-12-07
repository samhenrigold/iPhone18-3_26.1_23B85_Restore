@interface HUAccessoryHearingSyncManager
+ (NSSet)adaptiveTransparencySupportedDevices;
+ (NSSet)syncableSupportedDevices;
+ (id)sharedInstance;
- ($0AC6E346AE4835514AAA8AC86D8F4844)deviceState;
- (BOOL)hasPairedDevicesWithListeningModes;
- (BOOL)shouldUpdateWatchesWithListeningModes:(id)modes;
- (HUAccessoryHearingSyncManager)init;
- (id)deviceTypeForProductCode:(id)code;
- (id)deviceTypesForAvailableAddresses:(id)addresses;
- (int64_t)deviceTypeForAddress:(id)address;
- (int64_t)listeningStateForAddress:(id)address andStoredState:(id)state;
- (void)_cleanupNearbyDeviceStateDuplicatesForDevice:(id)device;
- (void)_initCachedEnabled;
- (void)_registerForAccessoryHearingSettingsUpdate;
- (void)_registerForAccessoryManagerUpdate;
- (void)_registerForNearbyControllerUpdate;
- (void)_sendIDSMessageIfNeededForListeningModes:(id)modes addresses:(id)addresses force:(BOOL)force;
- (void)getDeviceTypesWithCompletion:(id)completion;
- (void)hasPairedDevicesWithListeningModes;
- (void)listeningModeDidChange:(id)change;
- (void)processNoiseMeasurementsDisabledMessage:(id)message fromDevice:(id)device;
- (void)readHearingProtectionState;
- (void)routesDidChange:(id)change;
- (void)sendIDSMessageIfNeededForNewListeningModes:(id)modes addresses:(id)addresses force:(BOOL)force;
- (void)sendListeningModesIDSMessageIfNeeded;
- (void)sendUpdateToAccessory;
@end

@implementation HUAccessoryHearingSyncManager

void __37__HUAccessoryHearingSyncManager_init__block_invoke_3(uint64_t a1)
{
  v2 = HCLogHearingProtection();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Lock state changed", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained readHearingProtectionState];
}

- (void)readHearingProtectionState
{
  v2 = +[HUAccessoryManager sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__HUAccessoryHearingSyncManager_readHearingProtectionState__block_invoke;
  v4[3] = &unk_1E85CB7B0;
  v5 = v2;
  v3 = v2;
  [v3 getAvailableAddressesSupportingCharacteristic:@"a48fec08-3921-43db-82aa-afbce8ebb4fb" withCompletion:v4];
}

void __59__HUAccessoryHearingSyncManager_readHearingProtectionState__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = HCLogHearingProtection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v8 = @"a48fec08-3921-43db-82aa-afbce8ebb4fb";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "HUAccessoryHearingSyncManager Characteristic %@, addresses %@", buf, 0x16u);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__HUAccessoryHearingSyncManager_readHearingProtectionState__block_invoke_26;
  v5[3] = &unk_1E85CBC98;
  v6 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v5];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[HUAccessoryHearingSyncManager sharedInstance];
  }

  v3 = sharedInstance_Settings_2;

  return v3;
}

uint64_t __47__HUAccessoryHearingSyncManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HUAccessoryHearingSyncManager);
  v1 = sharedInstance_Settings_2;
  sharedInstance_Settings_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (HUAccessoryHearingSyncManager)init
{
  v8.receiver = self;
  v8.super_class = HUAccessoryHearingSyncManager;
  v2 = [(HUAccessoryHearingSyncManager *)&v8 init];
  if (v2)
  {
    v3 = +[HUAccessoryManager sharedInstance];
    sharedQueue = [v3 sharedQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__HUAccessoryHearingSyncManager_init__block_invoke;
    block[3] = &unk_1E85C9F60;
    v7 = v2;
    dispatch_async(sharedQueue, block);
  }

  return v2;
}

void __37__HUAccessoryHearingSyncManager_init__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__HUAccessoryHearingSyncManager_init__block_invoke_2;
  v10[3] = &unk_1E85CB7D8;
  v11 = v2;
  [v11 getDeviceTypesWithCompletion:v10];
  if (MKBDeviceFormattedForContentProtection())
  {
    objc_initWeak(&location, *(a1 + 32));
    v3 = *(a1 + 32);
    v4 = +[HUAccessoryManager sharedInstance];
    v5 = [v4 sharedQueue];
    v6 = *MEMORY[0x1E69B1A70];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __37__HUAccessoryHearingSyncManager_init__block_invoke_3;
    handler[3] = &unk_1E85CAF10;
    objc_copyWeak(&v8, &location);
    notify_register_dispatch(v6, (v3 + 48), v5, handler);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __37__HUAccessoryHearingSyncManager_init__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [*(a1 + 32) setDeviceListeningState:v4];

  v5 = objc_opt_new();
  [*(a1 + 32) setPersistentDeviceListeningState:v5];

  [*(a1 + 32) _initCachedEnabled];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E695DF90] dictionary];
  [v6 setNearbyDevicesListeningState:v7];

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v3];

  [v8 setDeviceType:v9];
  [*(a1 + 32) _registerForAccessoryHearingSettingsUpdate];
  [*(a1 + 32) _registerForAccessoryManagerUpdate];
  [*(a1 + 32) _registerForNearbyControllerUpdate];
  [*(a1 + 32) _registerForNoiseEnabledPreferenceChange];
  v10 = objc_alloc(MEMORY[0x1E6988780]);
  v11 = +[HUAccessoryManager sharedInstance];
  v12 = [v11 sharedQueue];
  v13 = [v10 initWithTargetSerialQueue:v12];
  [*(a1 + 32) setIgnoreHPTimer:v13];

  v14 = [*(a1 + 32) ignoreHPTimer];
  [v14 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];

  v15 = objc_alloc(MEMORY[0x1E6988780]);
  v16 = +[HUAccessoryManager sharedInstance];
  v17 = [v16 sharedQueue];
  v18 = [v15 initWithTargetSerialQueue:v17];
  [*(a1 + 32) setMessageTimer:v18];

  v19 = [*(a1 + 32) messageTimer];
  [v19 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];

  v20 = [MEMORY[0x1E696AD88] defaultCenter];
  [v20 addObserver:*(a1 + 32) selector:sel_routesDidChange_ name:@"com.apple.accessibility.hearingaid.audio.route.changed" object:0];
}

- (void)_initCachedEnabled
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = +[HUAccessoryHearingSettings sharedInstance];
  activeHearingProtectionEnabled = [v3 activeHearingProtectionEnabled];
  v5 = [activeHearingProtectionEnabled mutableCopy];
  cachedEnabled = self->_cachedEnabled;
  self->_cachedEnabled = v5;

  if (!self->_cachedEnabled)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v8 = self->_cachedEnabled;
    self->_cachedEnabled = dictionary;
  }

  v9 = HCLogHearingProtection();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_cachedEnabled;
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "Starting sync %@", &v11, 0xCu);
  }
}

- (void)_registerForAccessoryHearingSettingsUpdate
{
  objc_initWeak(&location, self);
  v3 = +[HUAccessoryHearingSettings sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__HUAccessoryHearingSyncManager__registerForAccessoryHearingSettingsUpdate__block_invoke;
  v4[3] = &unk_1E85C9F10;
  objc_copyWeak(&v5, &location);
  [v3 registerUpdateBlock:v4 forRetrieveSelector:sel_activeHearingProtectionEnabled withListener:self];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_registerForAccessoryManagerUpdate
{
  v19[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = +[HUAccessoryManager sharedInstance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke;
  v15[3] = &unk_1E85CC1F0;
  v4 = v3;
  v16 = v4;
  objc_copyWeak(&v17, &location);
  [v4 registerDiscoveryBlock:v15 withListener:self];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_3;
  v13[3] = &unk_1E85CC218;
  v13[4] = self;
  objc_copyWeak(&v14, &location);
  v5 = [MEMORY[0x1E695D2A0] UUIDWithString:@"a48fec08-3921-43db-82aa-afbce8ebb4fb"];
  v19[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v4 registerUpdateBlock:v13 forCharacteristicUUIDs:v6 withListener:self];

  v7 = +[HUAccessoryManager sharedInstance];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_37;
  v11 = &unk_1E85CC240;
  objc_copyWeak(&v12, &location);
  [v7 registerAttributeUpdateBlock:&v8 withListener:self];

  [v4 registerLoggingBlock:&__block_literal_global_41 withListener:{self, v8, v9, v10, v11}];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);
}

- (void)_registerForNearbyControllerUpdate
{
  objc_initWeak(&location, self);
  v3 = +[HUNearbyController sharedInstance];
  v4 = +[HUAccessoryManager sharedInstance];
  sharedQueue = [v4 sharedQueue];
  [v3 registerQueue:sharedQueue forDomain:@"com.apple.hearing.accessory"];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke;
  v7[3] = &unk_1E85CC288;
  v7[4] = self;
  objc_copyWeak(&v8, &location);
  [v3 registerMessageBlock:v7 forDomain:@"com.apple.hearing.accessory" withListener:self];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke_55;
  v6[3] = &unk_1E85CB7B0;
  v6[4] = self;
  [v3 registerDiscoveryBlock:v6 forDomain:@"com.apple.hearing.accessory" withListener:self];
  [v3 registerLoggingBlock:&__block_literal_global_63 forDomain:@"com.apple.hearing.accessory" withListener:self];
  [v3 discoverNearbyDevicesWithDomain:@"com.apple.hearing.accessory"];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

+ (NSSet)adaptiveTransparencySupportedDevices
{
  v2 = adaptiveTransparencySupportedDevices_AudioRouteProductIDs;
  if (!adaptiveTransparencySupportedDevices_AudioRouteProductIDs)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"76, 8212", @"76, 8228", @"76, 8231", 0}];
    v4 = adaptiveTransparencySupportedDevices_AudioRouteProductIDs;
    adaptiveTransparencySupportedDevices_AudioRouteProductIDs = v3;

    v2 = adaptiveTransparencySupportedDevices_AudioRouteProductIDs;
  }

  return v2;
}

+ (NSSet)syncableSupportedDevices
{
  v2 = syncableSupportedDevices_AudioRouteProductIDs;
  if (!syncableSupportedDevices_AudioRouteProductIDs)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"76, 8206", @"76, 8202", @"76, 8223", @"76, 8212", @"76, 8228", @"76, 8231", 0}];
    v4 = syncableSupportedDevices_AudioRouteProductIDs;
    syncableSupportedDevices_AudioRouteProductIDs = v3;

    v2 = syncableSupportedDevices_AudioRouteProductIDs;
  }

  return v2;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)deviceState
{
  v35 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  deviceListeningState = [(HUAccessoryHearingSyncManager *)self deviceListeningState];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__HUAccessoryHearingSyncManager_deviceState__block_invoke;
  v16[3] = &unk_1E85CC128;
  v16[4] = self;
  v16[5] = &v21;
  v16[6] = &v17;
  [deviceListeningState enumerateKeysAndObjectsUsingBlock:v16];

  if (!v22[3])
  {
    nearbyDevicesListeningState = [(HUAccessoryHearingSyncManager *)self nearbyDevicesListeningState];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__HUAccessoryHearingSyncManager_deviceState__block_invoke_2;
    v15[3] = &unk_1E85CC150;
    v15[4] = self;
    v15[5] = &v21;
    v15[6] = &v17;
    [nearbyDevicesListeningState enumerateKeysAndObjectsUsingBlock:v15];
  }

  if ([MEMORY[0x1E69A4560] isInternalInstall])
  {
    v5 = deviceState_LastListeningState;
    if (deviceState_LastListeningState != v22[3])
    {
      v6 = HCLogHearingProtection();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [MEMORY[0x1E696AD98] numberWithInteger:v18[3]];
        v8 = [MEMORY[0x1E696AD98] numberWithInteger:v22[3]];
        deviceListeningState2 = [(HUAccessoryHearingSyncManager *)self deviceListeningState];
        nearbyDevicesListeningState2 = [(HUAccessoryHearingSyncManager *)self nearbyDevicesListeningState];
        deviceType = [(HUAccessoryHearingSyncManager *)self deviceType];
        *buf = 138413314;
        v26 = v7;
        v27 = 2112;
        v28 = v8;
        v29 = 2112;
        v30 = deviceListeningState2;
        v31 = 2112;
        v32 = nearbyDevicesListeningState2;
        v33 = 2112;
        v34 = deviceType;
        _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Listening state %@ = %@ - %@ = %@ = %@", buf, 0x34u);
      }

      v5 = v22[3];
      deviceState_LastListeningState = v5;
    }
  }

  else
  {
    v5 = v22[3];
  }

  v12 = v18[3];
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  v13 = v12;
  v14 = v5;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

void __44__HUAccessoryHearingSyncManager_deviceState__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v7 listeningStateForAddress:v8 andStoredState:a3];
  v9 = [*(a1 + 32) deviceTypeForAddress:v8];

  *(*(*(a1 + 48) + 8) + 24) = v9;
  if (*(*(*(a1 + 40) + 8) + 24) == 5)
  {
    *a4 = 1;
  }
}

uint64_t __44__HUAccessoryHearingSyncManager_deviceState__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__HUAccessoryHearingSyncManager_deviceState__block_invoke_3;
  v4[3] = &unk_1E85CC128;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  return [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __44__HUAccessoryHearingSyncManager_deviceState__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v7 listeningStateForAddress:v8 andStoredState:a3];
  v9 = [*(a1 + 32) deviceTypeForAddress:v8];

  *(*(*(a1 + 48) + 8) + 24) = v9;
  if (*(*(*(a1 + 40) + 8) + 24) == 5)
  {
    *a4 = 1;
  }
}

void __75__HUAccessoryHearingSyncManager__registerForAccessoryHearingSettingsUpdate__block_invoke(uint64_t a1)
{
  v2 = +[HUAccessoryManager sharedInstance];
  v3 = [v2 sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__HUAccessoryHearingSyncManager__registerForAccessoryHearingSettingsUpdate__block_invoke_2;
  block[3] = &unk_1E85C9F10;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
}

void __75__HUAccessoryHearingSyncManager__registerForAccessoryHearingSettingsUpdate__block_invoke_2(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = +[HUAccessoryHearingSettings sharedInstance];
  v3 = [v2 activeHearingProtectionEnabled];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained cachedEnabled];
    v6 = [v3 isEqualToDictionary:v5];

    if ((v6 & 1) == 0)
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      [v7 sendUpdateToAccessory];

      v8 = objc_loadWeakRetained((a1 + 32));
      v9 = [v3 mutableCopy];
      [v8 setCachedEnabled:v9];

      v12 = @"HUAHPEnabledKey";
      v13[0] = v3;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v11 = +[HUNearbyController sharedInstance];
      [v11 sendMessage:v10 toDevicesWithDomain:@"com.apple.hearing.accessory" withPriority:1];
    }
  }
}

void __59__HUAccessoryHearingSyncManager_readHearingProtectionState__block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__HUAccessoryHearingSyncManager_readHearingProtectionState__block_invoke_2;
  v6[3] = &unk_1E85CA050;
  v7 = v3;
  v5 = v3;
  [v4 getHearingProtectionSupportForAddress:v5 withCompletion:v6];
}

void __59__HUAccessoryHearingSyncManager_readHearingProtectionState__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = HCLogHearingProtection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v6 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "HP supported %@ for accessory %@", &v8, 0x16u);
  }

  v7 = +[HUAccessoryHearingSettings sharedInstance];
  [v7 setActiveHearingProtectionAvailable:a2 forAddress:*(a1 + 32)];
}

void __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = HCLogHearingProtection();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "Found new accessories %@, lost accessories %@", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x1E695D2A0] UUIDWithString:@"a48fec08-3921-43db-82aa-afbce8ebb4fb"];
  [v8 readValueForCharacteristicUUID:v9];

  v10 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_31;
  v13[3] = &unk_1E85CC1C8;
  objc_copyWeak(&v17, (a1 + 40));
  v14 = *(a1 + 32);
  v11 = v5;
  v15 = v11;
  v12 = v6;
  v16 = v12;
  [v10 getAvailableAddressesSupportingCharacteristic:@"a48fec08-3921-43db-82aa-afbce8ebb4fb" withCompletion:v13];

  objc_destroyWeak(&v17);
}

void __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_31(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = HCLogHearingProtection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = @"a48fec08-3921-43db-82aa-afbce8ebb4fb";
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "HUAccessoryHearingSyncManager Characteristic %@, addresses %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained readHearingProtectionState];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_32;
  v15[3] = &unk_1E85CC178;
  objc_copyWeak(&v16, (a1 + 56));
  [v6 enumerateProductCodesForAddresses:v7 withBlock:v15];
  v8 = *(a1 + 48);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_2;
  v13 = &unk_1E85CC1A0;
  objc_copyWeak(&v14, (a1 + 56));
  [v8 enumerateObjectsUsingBlock:&v10];
  v9 = objc_loadWeakRetained((a1 + 56));
  [v9 listeningModeDidChange:{0, v10, v11, v12, v13}];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
}

void __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained deviceTypeForProductCode:v5];

  if (v7)
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 deviceType];
    [v9 setObject:v7 forKey:v10];
  }
}

void __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained deviceType];
  [v4 removeObjectForKey:v3];
}

void __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (([*(a1 + 32) ignoreHPUpdates] & 1) == 0)
  {
    v10 = [MEMORY[0x1E695D2A0] UUIDWithString:@"a48fec08-3921-43db-82aa-afbce8ebb4fb"];
    v11 = [v8 isEqual:v10];

    if (v11)
    {
      v12 = HCLogHearingProtection();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = v9;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "Found value for AHP %@ - %@", &v14, 0x16u);
      }

      if (v9)
      {
        LOBYTE(v14) = 1;
        [v9 getBytes:&v14 length:1];
        WeakRetained = +[HUAccessoryHearingSettings sharedInstance];
        [WeakRetained setActiveHearingProtectionEnabled:v14 != 0 forAddress:v7];
      }

      else
      {
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained sendUpdateToAccessory];
      }
    }
  }
}

void __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained listeningModeDidChange:v3];
}

void __67__HUAccessoryHearingSyncManager__registerForAccessoryManagerUpdate__block_invoke_2_39(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = HCLogHearingProtection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "%@", &v4, 0xCu);
  }
}

void __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) processNoiseMeasurementsDisabledMessage:v6 fromDevice:v5];
  v7 = [v6 objectForKey:@"HUAHPEnabledKey"];
  if ([*(a1 + 32) ignoreHPUpdates])
  {
    v8 = HCLogHearingProtection();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = v7;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring IDS message to update hearing protection: %@", &v26, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = [WeakRetained cachedEnabled];

    [v10 addEntriesFromDictionary:v7];
    v11 = +[HUAccessoryHearingSettings sharedInstance];
    [v11 setActiveHearingProtectionEnabled:v10];
  }

  v12 = [v6 objectForKey:@"HUAHPAvailableKey"];
  [v12 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_47_0];
  v13 = [v6 objectForKey:@"HUListenModeKey"];
  v14 = HCLogHearingProtection();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412546;
    v27 = v13;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "Listening modes %@ for device %@", &v26, 0x16u);
  }

  if (v5)
  {
    v15 = [v13 count];
    v16 = objc_loadWeakRetained((a1 + 40));
    v17 = [v16 nearbyDevicesListeningState];
    v18 = [v5 identifier];
    if (v15)
    {
      [v17 setObject:v13 forKey:v18];

      v16 = objc_loadWeakRetained((a1 + 40));
      [v16 _cleanupNearbyDeviceStateDuplicatesForDevice:v5];
    }

    else
    {
      [v17 removeObjectForKey:v18];
    }

    v19 = HCLogHearingProtection();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_loadWeakRetained((a1 + 40));
      v21 = [v20 nearbyDevicesListeningState];
      v26 = 138412290;
      v27 = v21;
      _os_log_impl(&dword_1DA5E2000, v19, OS_LOG_TYPE_DEFAULT, "Updated nearbyDevicesListeningState: %@", &v26, 0xCu);
    }
  }

  v22 = [v6 objectForKey:@"HUDeviceTypeKey"];
  v23 = HCLogHearingProtection();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412546;
    v27 = v22;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&dword_1DA5E2000, v23, OS_LOG_TYPE_DEFAULT, "Device types %@ for device %@", &v26, 0x16u);
  }

  if (v5)
  {
    v24 = objc_loadWeakRetained((a1 + 40));
    v25 = [v24 deviceType];
    [v25 addEntriesFromDictionary:v22];
  }
}

void __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke_45(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v7 = +[HUAccessoryHearingSettings sharedInstance];
  v6 = [v4 BOOLValue];

  [v7 setActiveHearingProtectionAvailable:v6 forAddress:v5];
}

void __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke_55(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke_2;
    v5[3] = &unk_1E85CC2F8;
    v5[4] = v4;
    v6 = v3;
    [v4 getDeviceTypesWithCompletion:v5];
  }
}

void __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  if (headphoneStreamSelected())
  {
    v5 = +[HUAccessoryHearingSettings sharedInstance];
    v6 = [v5 activeHearingProtectionEnabled];

    v7 = +[HUAccessoryHearingSettings sharedInstance];
    v8 = [v7 activeHearingProtectionAvailable];

    v9 = [*(a1 + 32) deviceListeningState];
    if ([v8 count])
    {
      [v4 setObject:v8 forKey:@"HUAHPAvailableKey"];
    }

    if ([v6 count])
    {
      [v4 setObject:v6 forKey:@"HUAHPEnabledKey"];
    }

    if ([v9 count])
    {
      [v4 setObject:v9 forKey:@"HUListenModeKey"];
    }

    if ([v3 count])
    {
      [v4 setObject:v3 forKey:@"HUDeviceTypeKey"];
    }
  }

  else
  {
    v6 = HCLogHearingProtection();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Headphone is not selected, NOT sending Accessory info", buf, 2u);
    }
  }

  if ([v4 count])
  {
    v10 = HCLogHearingProtection();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 138412290;
      v29 = v11;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "Sending Accessory state message to discovered devices: %@", buf, 0xCu);
    }

    v12 = +[HUNearbyController sharedInstance];
    [v12 sendMessage:v4 withDomain:@"com.apple.hearing.accessory" toDevices:*(a1 + 40) withPriority:1];
  }

  v13 = [MEMORY[0x1E695DF90] dictionary];
  v14 = +[HUNearbyController sharedInstance];
  v15 = [v14 nearbyDevices];
  v16 = [v15 ax_mappedArrayUsingBlock:&__block_literal_global_59];

  v17 = [*(a1 + 32) nearbyDevicesListeningState];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke_2_60;
  v25 = &unk_1E85CC2D0;
  v18 = v16;
  v26 = v18;
  v19 = v13;
  v27 = v19;
  [v17 enumerateKeysAndObjectsUsingBlock:&v22];

  v20 = HCLogHearingProtection();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [*(a1 + 32) nearbyDevicesListeningState];
    *buf = 138412546;
    v29 = v21;
    v30 = 2112;
    v31 = v19;
    _os_log_impl(&dword_1DA5E2000, v20, OS_LOG_TYPE_DEFAULT, "Filtering nearby listening modes on update to nearby devices %@ - %@", buf, 0x16u);
  }

  [*(a1 + 32) setNearbyDevicesListeningState:v19];
}

void __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke_2_60(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v6])
  {
    [*(a1 + 40) setObject:v5 forKey:v6];
  }
}

void __67__HUAccessoryHearingSyncManager__registerForNearbyControllerUpdate__block_invoke_61(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = HCLogHearingProtection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "%@", &v4, 0xCu);
  }
}

- (void)_cleanupNearbyDeviceStateDuplicatesForDevice:(id)device
{
  deviceCopy = device;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  nearbyDevicesListeningState = [(HUAccessoryHearingSyncManager *)self nearbyDevicesListeningState];
  identifier = [deviceCopy identifier];
  v8 = [nearbyDevicesListeningState objectForKey:identifier];
  allKeys = [v8 allKeys];

  nearbyDevicesListeningState2 = [(HUAccessoryHearingSyncManager *)self nearbyDevicesListeningState];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__HUAccessoryHearingSyncManager__cleanupNearbyDeviceStateDuplicatesForDevice___block_invoke;
  v14[3] = &unk_1E85CC320;
  v15 = deviceCopy;
  v16 = dictionary;
  v17 = allKeys;
  v11 = allKeys;
  v12 = dictionary;
  v13 = deviceCopy;
  [nearbyDevicesListeningState2 enumerateKeysAndObjectsUsingBlock:v14];

  [(HUAccessoryHearingSyncManager *)self setNearbyDevicesListeningState:v12];
}

void __78__HUAccessoryHearingSyncManager__cleanupNearbyDeviceStateDuplicatesForDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 identifier];
  v8 = [v10 isEqualToString:v7];

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];

    [v9 removeObjectsForKeys:*(a1 + 48)];
    v6 = v9;
    if (![v9 count])
    {
      goto LABEL_5;
    }
  }

  [*(a1 + 40) setObject:v6 forKey:v10];
LABEL_5:
}

- (void)listeningModeDidChange:(id)change
{
  v17 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = HCLogHearingProtection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = changeCopy;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Listening state changed %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = +[HUAccessoryManager sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__HUAccessoryHearingSyncManager_listeningModeDidChange___block_invoke;
  v11[3] = &unk_1E85CC348;
  v11[4] = &buf;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__HUAccessoryHearingSyncManager_listeningModeDidChange___block_invoke_74;
  v8[3] = &unk_1E85CB970;
  v8[4] = self;
  p_buf = &buf;
  v7 = changeCopy;
  v9 = v7;
  [v6 enumerateAvailableDevicesWithBlock:v11 andCompletion:v8];

  _Block_object_dispose(&buf, 8);
}

void __56__HUAccessoryHearingSyncManager_listeningModeDidChange___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = +[HUAccessoryHearingSyncManager syncableSupportedDevices];
  v14 = [v13 containsObject:v12];

  if (a6 == 1 && a5 && v14)
  {
    v15 = __ROR8__(a4, 1);
    if (v15 <= 1)
    {
      if (!v15)
      {
        v16 = *(*(*(a1 + 32) + 8) + 40);
        v17 = &unk_1F5623E90;
        goto LABEL_18;
      }

      if (v15 == 1)
      {
        v16 = *(*(*(a1 + 32) + 8) + 40);
        v17 = &unk_1F5623E48;
        goto LABEL_18;
      }
    }

    else
    {
      switch(v15)
      {
        case 8:
          v16 = *(*(*(a1 + 32) + 8) + 40);
          v17 = &unk_1F5623E78;
          goto LABEL_18;
        case 4:
          v16 = *(*(*(a1 + 32) + 8) + 40);
          v17 = &unk_1F5623E60;
          goto LABEL_18;
        case 2:
          v16 = *(*(*(a1 + 32) + 8) + 40);
          v17 = &unk_1F5623E30;
LABEL_18:
          [v16 setObject:v17 forKey:v11];
          break;
      }
    }
  }

  else
  {
    v18 = HCLogHearingProtection();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
      v21 = 138413058;
      v22 = v12;
      v23 = 2112;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, "Skipping device because not supported %@ %@, %@ %@", &v21, 0x2Au);
    }
  }
}

void __56__HUAccessoryHearingSyncManager_listeningModeDidChange___block_invoke_74(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) deviceListeningState];
  v3 = [v2 isEqualToDictionary:*(*(*(a1 + 48) + 8) + 40)];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 40) length] != 0;
    [*(a1 + 32) setDeviceListeningState:*(*(*(a1 + 48) + 8) + 40)];
  }

  v5 = HCLogHearingProtection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) deviceListeningState];
    v7 = *(*(*(a1 + 48) + 8) + 40);
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v12 = 138412802;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Listening modes current: %@ new: %@ forcing update %@", &v12, 0x20u);
  }

  v9 = *(a1 + 32);
  v10 = *(*(*(a1 + 48) + 8) + 40);
  v11 = [v10 allKeys];
  [v9 sendIDSMessageIfNeededForNewListeningModes:v10 addresses:v11 force:v4];
}

- (void)sendUpdateToAccessory
{
  v3 = [MEMORY[0x1E695D2A0] UUIDWithString:@"a48fec08-3921-43db-82aa-afbce8ebb4fb"];
  v4 = +[HUAccessoryManager sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__HUAccessoryHearingSyncManager_sendUpdateToAccessory__block_invoke;
  v7[3] = &unk_1E85CC398;
  v7[4] = self;
  v8 = v4;
  v9 = v3;
  v5 = v3;
  v6 = v4;
  [v6 getAvailableAddressesSupportingCharacteristic:0 withCompletion:v7];
}

void __54__HUAccessoryHearingSyncManager_sendUpdateToAccessory__block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__HUAccessoryHearingSyncManager_sendUpdateToAccessory__block_invoke_2;
  v5[3] = &unk_1E85CC370;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [a2 enumerateObjectsUsingBlock:v5];
}

void __54__HUAccessoryHearingSyncManager_sendUpdateToAccessory__block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[HUAccessoryHearingSettings sharedInstance];
  v5 = [v4 activeHearingProtectionEnabledForAddress:v3];

  v11 = v5;
  v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&v11 length:1];
  [*(a1 + 32) setIgnoreHPUpdates:1];
  v7 = HCLogHearingProtection();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    *buf = 138412802;
    v13 = v3;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "Sending update to %@ - %@ - %@", buf, 0x20u);
  }

  [*(a1 + 40) writeValue:v6 forCharacteristicUUID:*(a1 + 48) andAddress:v3];
  v9 = [*(a1 + 32) ignoreHPTimer];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__HUAccessoryHearingSyncManager_sendUpdateToAccessory__block_invoke_76;
  v10[3] = &unk_1E85C9F60;
  v10[4] = *(a1 + 32);
  [v9 afterDelay:v10 processBlock:1.0];
}

- (void)routesDidChange:(id)change
{
  v4 = +[HUAccessoryManager sharedInstance];
  sharedQueue = [v4 sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__HUAccessoryHearingSyncManager_routesDidChange___block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(sharedQueue, block);
}

void *__49__HUAccessoryHearingSyncManager_routesDidChange___block_invoke(uint64_t a1)
{
  v2 = headphoneStreamSelected();
  result = [*(a1 + 32) isHeadphoneStreamSelected];
  if (v2 != result)
  {
    v4 = *(a1 + 32);

    return [v4 sendListeningModesIDSMessageIfNeeded];
  }

  return result;
}

- (void)getDeviceTypesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = +[HUAccessoryManager sharedInstance];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__HUAccessoryHearingSyncManager_getDeviceTypesWithCompletion___block_invoke;
    v6[3] = &unk_1E85CC3C0;
    v6[4] = self;
    v7 = completionCopy;
    [v5 getAvailableAddressesSupportingCharacteristic:0 withCompletion:v6];
  }
}

void __62__HUAccessoryHearingSyncManager_getDeviceTypesWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) deviceTypesForAvailableAddresses:a2];
  (*(v2 + 16))(v2, v3);
}

- (id)deviceTypesForAvailableAddresses:(id)addresses
{
  v4 = MEMORY[0x1E695DF90];
  addressesCopy = addresses;
  dictionary = [v4 dictionary];
  v7 = +[HUAccessoryManager sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__HUAccessoryHearingSyncManager_deviceTypesForAvailableAddresses___block_invoke;
  v12[3] = &unk_1E85CC3E8;
  v12[4] = self;
  v8 = dictionary;
  v13 = v8;
  [v7 enumerateProductCodesForAddresses:addressesCopy withBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __66__HUAccessoryHearingSyncManager_deviceTypesForAvailableAddresses___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) deviceTypeForProductCode:a3];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKey:v6];
  }
}

- (id)deviceTypeForProductCode:(id)code
{
  codeCopy = code;
  if ([codeCopy isEqualToString:{@"76, 8206"}])
  {
    v4 = &unk_1F5623E48;
  }

  else if ([codeCopy isEqualToString:{@"76, 8202"}] & 1) != 0 || (objc_msgSend(codeCopy, "isEqualToString:", @"76,8223"))
  {
    v4 = &unk_1F5623E30;
  }

  else if ([codeCopy isEqualToString:{@"76, 8212"}] & 1) != 0 || (objc_msgSend(codeCopy, "isEqualToString:", @"76,8228"))
  {
    v4 = &unk_1F5623E60;
  }

  else if ([codeCopy isEqualToString:{@"76, 8231"}])
  {
    v4 = &unk_1F5623E78;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)deviceTypeForAddress:(id)address
{
  addressCopy = address;
  deviceType = [(HUAccessoryHearingSyncManager *)self deviceType];
  v6 = [deviceType valueForKey:addressCopy];

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (int64_t)listeningStateForAddress:(id)address andStoredState:(id)state
{
  addressCopy = address;
  unsignedIntegerValue = [state unsignedIntegerValue];
  if (unsignedIntegerValue == 3)
  {
    v7 = +[HUAccessoryHearingSettings sharedInstance];
    v8 = [v7 activeHearingProtectionEnabledForAddress:addressCopy];

    if (v8)
    {
      unsignedIntegerValue = 5;
    }

    else
    {
      unsignedIntegerValue = 3;
    }
  }

  return unsignedIntegerValue;
}

- (BOOL)shouldUpdateWatchesWithListeningModes:(id)modes
{
  v31 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  v5 = headphoneStreamSelected();
  v6 = HCLogHearingProtection();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    persistentDeviceListeningState = [(HUAccessoryHearingSyncManager *)self persistentDeviceListeningState];
    *buf = 67109634;
    *&buf[4] = v5;
    *v30 = 2112;
    *&v30[2] = persistentDeviceListeningState;
    *&v30[10] = 2112;
    *&v30[12] = modesCopy;
    _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Headphone Selected %d, Listening modes sent to Watches: %@, new: %@", buf, 0x1Cu);
  }

  *buf = 0;
  *v30 = buf;
  *&v30[8] = 0x2020000000;
  v30[16] = 0;
  if (v5)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__HUAccessoryHearingSyncManager_shouldUpdateWatchesWithListeningModes___block_invoke;
    v25[3] = &unk_1E85CAA90;
    v25[4] = self;
    v25[5] = buf;
    [modesCopy enumerateKeysAndObjectsUsingBlock:v25];
    persistentDeviceListeningState2 = [(HUAccessoryHearingSyncManager *)self persistentDeviceListeningState];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __71__HUAccessoryHearingSyncManager_shouldUpdateWatchesWithListeningModes___block_invoke_78;
    v22 = &unk_1E85CAA90;
    v9 = modesCopy;
    v23 = v9;
    v24 = buf;
    [persistentDeviceListeningState2 enumerateKeysAndObjectsUsingBlock:&v19];

    if (*(*v30 + 24) == 1)
    {
      [(HUAccessoryHearingSyncManager *)self setPersistentDeviceListeningState:v9, v19, v20, v21, v22];
    }
  }

  else
  {
    persistentDeviceListeningState3 = [(HUAccessoryHearingSyncManager *)self persistentDeviceListeningState];
    v11 = [persistentDeviceListeningState3 count] == 0;

    if (!v11)
    {
      *(*v30 + 24) = 1;
      v12 = objc_opt_new();
      [(HUAccessoryHearingSyncManager *)self setPersistentDeviceListeningState:v12];
    }
  }

  if (*(*v30 + 24) == 1)
  {
    self->_isHeadphoneStreamSelected = v5;
  }

  v13 = HCLogHearingProtection();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    persistentDeviceListeningState4 = [(HUAccessoryHearingSyncManager *)self persistentDeviceListeningState];
    [(HUAccessoryHearingSyncManager *)persistentDeviceListeningState4 shouldUpdateWatchesWithListeningModes:v28, v13];
  }

  v15 = HCLogHearingProtection();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(*v30 + 24);
    *v26 = 67109120;
    v27 = v16;
    _os_log_impl(&dword_1DA5E2000, v15, OS_LOG_TYPE_DEFAULT, "Listening modes for Watch changed: %d", v26, 8u);
  }

  v17 = *(*v30 + 24);
  _Block_object_dispose(buf, 8);

  return v17 & 1;
}

void __71__HUAccessoryHearingSyncManager_shouldUpdateWatchesWithListeningModes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) persistentDeviceListeningState];
  v8 = [v7 objectForKey:v5];

  if (!v8)
  {
    v9 = HCLogHearingProtection();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v5;
      v10 = "Added listening mode %@, for device: %@";
      goto LABEL_7;
    }

LABEL_8:

    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_9;
  }

  if (([v8 isEqual:v6] & 1) == 0)
  {
    v9 = HCLogHearingProtection();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v5;
      v10 = "Changed listening mode %@, for device: %@";
LABEL_7:
      _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, v10, &v11, 0x16u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
}

void __71__HUAccessoryHearingSyncManager_shouldUpdateWatchesWithListeningModes___block_invoke_78(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKey:v5];
  if (!v7)
  {
    v8 = HCLogHearingProtection();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Removed listening mode %@, for device: %@", &v9, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)sendListeningModesIDSMessageIfNeeded
{
  messageTimer = [(HUAccessoryHearingSyncManager *)self messageTimer];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__HUAccessoryHearingSyncManager_sendListeningModesIDSMessageIfNeeded__block_invoke;
  v4[3] = &unk_1E85C9F60;
  v4[4] = self;
  [messageTimer afterDelay:v4 processBlock:0.5];
}

void __69__HUAccessoryHearingSyncManager_sendListeningModesIDSMessageIfNeeded__block_invoke(uint64_t a1)
{
  v2 = +[HUAccessoryManager sharedInstance];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69__HUAccessoryHearingSyncManager_sendListeningModesIDSMessageIfNeeded__block_invoke_2;
  v3[3] = &unk_1E85CB7B0;
  v3[4] = *(a1 + 32);
  [v2 getAvailableAddressesSupportingCharacteristic:0 withCompletion:v3];
}

void __69__HUAccessoryHearingSyncManager_sendListeningModesIDSMessageIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HCLogHearingProtection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __69__HUAccessoryHearingSyncManager_sendListeningModesIDSMessageIfNeeded__block_invoke_2_cold_1(a1, v4);
  }

  v5 = +[HUAccessoryManager sharedInstance];
  v6 = [v5 sharedQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__HUAccessoryHearingSyncManager_sendListeningModesIDSMessageIfNeeded__block_invoke_79;
  v8[3] = &unk_1E85C9F38;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v7 = v3;
  dispatch_async(v6, v8);
}

void __69__HUAccessoryHearingSyncManager_sendListeningModesIDSMessageIfNeeded__block_invoke_79(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 deviceListeningState];
  [v2 _sendIDSMessageIfNeededForListeningModes:v3 addresses:*(a1 + 40) force:0];
}

- (void)sendIDSMessageIfNeededForNewListeningModes:(id)modes addresses:(id)addresses force:(BOOL)force
{
  modesCopy = modes;
  addressesCopy = addresses;
  messageTimer = [(HUAccessoryHearingSyncManager *)self messageTimer];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __92__HUAccessoryHearingSyncManager_sendIDSMessageIfNeededForNewListeningModes_addresses_force___block_invoke;
  v13[3] = &unk_1E85CC410;
  v13[4] = self;
  v14 = modesCopy;
  v15 = addressesCopy;
  forceCopy = force;
  v11 = addressesCopy;
  v12 = modesCopy;
  [messageTimer afterDelay:v13 processBlock:0.5];
}

- (void)_sendIDSMessageIfNeededForListeningModes:(id)modes addresses:(id)addresses force:(BOOL)force
{
  forceCopy = force;
  v20[1] = *MEMORY[0x1E69E9840];
  if ([(HUAccessoryHearingSyncManager *)self shouldUpdateWatchesWithListeningModes:modes, addresses])
  {
    v7 = MEMORY[0x1E695DF90];
    v19 = @"HUListenModeKey";
    persistentDeviceListeningState = [(HUAccessoryHearingSyncManager *)self persistentDeviceListeningState];
    v20[0] = persistentDeviceListeningState;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v10 = [v7 dictionaryWithDictionary:v9];

    v11 = +[HUAccessoryHearingSettings sharedInstance];
    activeHearingProtectionEnabled = [v11 activeHearingProtectionEnabled];

    deviceType = [(HUAccessoryHearingSyncManager *)self deviceType];
    if ([activeHearingProtectionEnabled count])
    {
      [v10 setObject:activeHearingProtectionEnabled forKey:@"HUAHPEnabledKey"];
    }

    if ([deviceType count])
    {
      [v10 setObject:deviceType forKey:@"HUDeviceTypeKey"];
    }

    v14 = HCLogHearingProtection();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (forceCopy)
    {
      if (v15)
      {
        v17 = 138412290;
        v18 = v10;
        _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "Sending to all Accessory state message: %@", &v17, 0xCu);
      }

      v16 = +[HUNearbyController sharedInstance];
      [v16 sendMessage:v10 toDevicesWithDomain:@"com.apple.hearing.accessory" excludingState:&unk_1F5623EA8 withPriority:1];
    }

    else
    {
      if (v15)
      {
        v17 = 138412290;
        v18 = v10;
        _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "Sending to Watches Accessory state message: %@", &v17, 0xCu);
      }

      v16 = +[HUNearbyController sharedInstance];
      [v16 sendMessage:v10 toWatchDevicesWithDomain:@"com.apple.hearing.accessory" excludingState:&unk_1F5623EA8 withPriority:1];
    }
  }
}

- (void)processNoiseMeasurementsDisabledMessage:(id)message fromDevice:(id)device
{
  v15 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v6 = MEMORY[0x1E696AEC0];
  messageCopy = message;
  0x800000 = [v6 stringWithFormat:@"%llu", 0x800000];
  v9 = [messageCopy objectForKey:0x800000];

  if (v9)
  {
    v10 = HCLogHearingProtection();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = deviceCopy;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "IDS received Noise Disabled: %@ from device: %@", buf, 0x16u);
    }

    [deviceCopy setState:v9 forDomain:@"com.apple.hearing.accessory"];
  }
}

- (BOOL)hasPairedDevicesWithListeningModes
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695D288] devicesWithDiscoveryFlags:0x80000800000 error:0];
  v3 = HCLogHearingProtection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(HUAccessoryHearingSyncManager *)v2 hasPairedDevicesWithListeningModes];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if (([v9 deviceFlags] & 0x4000000) != 0 || (objc_msgSend(v9, "deviceFlags") & 0x8000000) != 0)
        {
          v12 = HCLogHearingProtection();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *v14 = 0;
            _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "Has paired devices with listening modes", v14, 2u);
          }

          v11 = 1;
          v10 = v4;
          goto LABEL_18;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = HCLogHearingProtection();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "No paired devices with listening modes", v14, 2u);
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (void)shouldUpdateWatchesWithListeningModes:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1DA5E2000, log, OS_LOG_TYPE_DEBUG, "Updated listening modes for Watch: %@", buf, 0xCu);
}

void __69__HUAccessoryHearingSyncManager_sendListeningModesIDSMessageIfNeeded__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) deviceListeningState];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_DEBUG, "Routes and isHeadphoneStreamSelected are updated, deviceListeningState: %@", &v4, 0xCu);
}

- (void)hasPairedDevicesWithListeningModes
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_DEBUG, "AccessoryManager pairedDevices: %@", &v2, 0xCu);
}

@end