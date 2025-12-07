@interface SystemSettingsRelay
+ (id)defaultRelay;
- (NSString)packetFilterState;
- (NSString)symptomEvaluatorDatabaseContainerPath;
- (SystemSettingsRelay)init;
- (id)getPacketFilterStateFromKernel;
- (int)autoBugCaptureEnhancedBetaFeedbackState;
- (void)_enableBrokenBackhaulWithBaseband:(BOOL)baseband prefStore:(__prefs_store *)store;
- (void)_setAirplaneModeSwitchEnabled:(BOOL)enabled;
- (void)_setAutoBugCaptureAvailable:(BOOL)available;
- (void)_setAutoBugCaptureEnabled:(BOOL)enabled;
- (void)_setAutoFeedbackAssistantEnable:(BOOL)enable;
- (void)_setCellDataSwitchEnabled:(BOOL)enabled;
- (void)_setCellOutrankEnabled:(BOOL)enabled;
- (void)_setNoBackhaulEnabled:(BOOL)enabled;
- (void)_setRnfEnabled:(BOOL)enabled;
- (void)_setSmartDataModeEnabled:(BOOL)enabled;
- (void)_setWifiEnabled:(BOOL)enabled;
- (void)ctServerConnectionNotification:(__CFString *)notification notificationInfo:(__CFDictionary *)info;
- (void)dealloc;
- (void)getAutoBugCaptureConfiguration;
- (void)recalculateAndSetCellOutrankEnabled;
- (void)registerForAutoBugCaptureChangeNotifications;
- (void)rnfSettingChangedToFeatureEnabled:(BOOL)enabled userEnabled:(BOOL)userEnabled;
- (void)setAutoBugCaptureConfiguration:(id)configuration;
- (void)smartDataModeChangedToUserEnabled:(BOOL)enabled;
@end

@implementation SystemSettingsRelay

+ (id)defaultRelay
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SystemSettingsRelay_defaultRelay__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultRelay_instancePred != -1)
  {
    dispatch_once(&defaultRelay_instancePred, block);
  }

  v2 = sharedInstance_8;

  return v2;
}

- (NSString)packetFilterState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__17;
  v9 = __Block_byref_object_dispose__17;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__SystemSettingsRelay_packetFilterState__block_invoke;
  v4[3] = &unk_27898DA28;
  v4[4] = self;
  v4[5] = &v5;
  sf_synchronize(&self->_packetFilterStateLock, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __40__SystemSettingsRelay_packetFilterState__block_invoke(uint64_t a1)
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = v2 - *(v4 + 32);
  v6 = *(v4 + 40);
  if (v6)
  {
    v7 = v5 < 15.0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = [v4 getPacketFilterStateFromKernel];
    v9 = *(a1 + 32);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *(*(a1 + 32) + 32) = v3;
    v6 = *(*(a1 + 32) + 40);
  }

  v11 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v11, v6);
}

- (id)getPacketFilterStateFromKernel
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, 125);
  v7 = 125;
  if (sysctlbyname("net.filter_state", v10, &v7, 0, 0))
  {
    v2 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v3 = v2;
      v4 = *__error();
      *buf = 67109120;
      v9 = v4;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_ERROR, "SystemSettingsRelay: Failed to find the packet filter state string from sysctl. Error = %{darwin.errno}d.", buf, 8u);
    }
  }

  else if (LOBYTE(v10[0]))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
    goto LABEL_7;
  }

  v5 = @"None";
LABEL_7:

  return v5;
}

uint64_t __35__SystemSettingsRelay_defaultRelay__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_8;
  sharedInstance_8 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)_enableBrokenBackhaulWithBaseband:(BOOL)baseband prefStore:(__prefs_store *)store
{
  basebandCopy = baseband;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__SystemSettingsRelay__enableBrokenBackhaulWithBaseband_prefStore___block_invoke;
  v6[3] = &unk_27898A0A0;
  v6[4] = self;
  prefs_add_client(store, "detect_no_backhaul", v6);
  [(SystemSettingsRelay *)self _setNoBackhaulEnabled:basebandCopy];
}

void __67__SystemSettingsRelay__enableBrokenBackhaulWithBaseband_prefStore___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86448])
  {
    value = xpc_BOOL_get_value(v5);
    v10 = [*(a1 + 32) noBackhaulEnabled];
    v11 = systemSettingsLogHandle;
    v12 = os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_DEFAULT);
    if (value == v10)
    {
      if (!v12)
      {
        goto LABEL_12;
      }

      v16 = *(a1 + 32);
      v15 = v11;
      *buf = 67109376;
      v20 = [v16 noBackhaulEnabled];
      v21 = 1024;
      v22 = value;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "NBSM no-op for detect_no_backhaul (was/is): %d/%d", buf, 0xEu);
    }

    else
    {
      if (v12)
      {
        v13 = *(a1 + 32);
        v14 = v11;
        *buf = 67109376;
        v20 = [v13 noBackhaulEnabled];
        v21 = 1024;
        v22 = value;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "NBSM changing a value for detect_no_backhaul from %d to %d", buf, 0xEu);
      }

      v15 = [*(a1 + 32) queue];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __67__SystemSettingsRelay__enableBrokenBackhaulWithBaseband_prefStore___block_invoke_6;
      v17[3] = &unk_27898A3A0;
      v17[4] = *(a1 + 32);
      v18 = value;
      dispatch_async(v15, v17);
    }

    goto LABEL_12;
  }

  v6 = systemSettingsLogHandle;
  if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    *buf = 67109120;
    v20 = [v7 noBackhaulEnabled];
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "NBSM got invalid value for detect_no_backhaul. Maintaining current value (%d)", buf, 8u);
  }

LABEL_12:
}

- (SystemSettingsRelay)init
{
  v55 = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = SystemSettingsRelay;
  v2 = [(SystemSettingsRelay *)&v51 init];
  if (!v2)
  {
    return v2;
  }

  v3 = dispatch_queue_create("com.apple.symptoms.systemsettings.queue", 0);
  [(SystemSettingsRelay *)v2 setQueue:v3];

  v4 = dispatch_get_global_queue(-32768, 0);
  queue = [(SystemSettingsRelay *)v2 queue];
  dispatch_set_target_queue(queue, v4);

  *&context.version = xmmword_27898FF28;
  memset(&context.retain, 0, 24);
  v6 = SCPreferencesCreate(0, @"com.apple.symptomsd", @"com.apple.wifi.plist");
  sWifi = v6;
  if (v6)
  {
    SCPreferencesSetCallback(v6, _preferencesChanged, &context);
    v7 = sWifi;
    queue2 = [(SystemSettingsRelay *)v2 queue];
    SCPreferencesSetDispatchQueue(v7, queue2);
  }

  else
  {
    v9 = systemSettingsLogHandle;
    if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = SCError();
      v12 = SCErrorString(v11);
      LODWORD(buf.version) = 136315138;
      *(&buf.version + 4) = v12;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Unable to create preferences handle: %s", &buf, 0xCu);
    }
  }

  v2->_packetFilterStateLock._os_unfair_lock_opaque = 0;
  [(SystemSettingsRelay *)v2 setNdfFeatureFlagEnabled:_os_feature_enabled_impl()];
  v13 = systemSettingsLogHandle;
  if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (v2->_ndfFeatureFlagEnabled)
    {
      v14 = "en";
    }

    else
    {
      v14 = "dis";
    }

    LODWORD(buf.version) = 136315138;
    *(&buf.version + 4) = v14;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "NDF Feature Flag is %sabled", &buf, 0xCu);
  }

  [(SystemSettingsRelay *)v2 setNdfEnabled:v2->_ndfFeatureFlagEnabled];
  v15 = systemSettingsLogHandle;
  if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (v2->_ndfEnabled)
    {
      v16 = "en";
    }

    else
    {
      v16 = "dis";
    }

    LODWORD(buf.version) = 136315138;
    *(&buf.version + 4) = v16;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "NDF is %sabled", &buf, 0xCu);
  }

  [(SystemSettingsRelay *)v2 setGeoIPTrackingFeatureFlagEnabled:_os_feature_enabled_impl()];
  v17 = systemSettingsLogHandle;
  if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (v2->_geoIPTrackingFeatureFlagEnabled)
    {
      v18 = "en";
    }

    else
    {
      v18 = "dis";
    }

    LODWORD(buf.version) = 136315138;
    *(&buf.version + 4) = v18;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "GeoIPTracking is %sabled", &buf, 0xCu);
  }

  [(SystemSettingsRelay *)v2 setTaggedInfoFeatureFlagEnabled:_os_feature_enabled_impl()];
  v19 = systemSettingsLogHandle;
  if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (v2->_taggedInfoFeatureFlagEnabled)
    {
      v20 = "en";
    }

    else
    {
      v20 = "dis";
    }

    LODWORD(buf.version) = 136315138;
    *(&buf.version + 4) = v20;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "tagged_info_reporting is %sabled", &buf, 0xCu);
  }

  v21 = +[SystemProperties sharedInstance];
  *&buf.version = xmmword_27898FF50;
  memset(&buf.retain, 0, 24);
  v22 = SCPreferencesCreate(0, @"com.apple.symptomsd", @"com.apple.radios.plist");
  sAirplane = v22;
  if (v22)
  {
    SCPreferencesSetCallback(v22, _preferencesChanged, &buf);
    v23 = sAirplane;
    queue3 = [(SystemSettingsRelay *)v2 queue];
    SCPreferencesSetDispatchQueue(v23, queue3);
  }

  else
  {
    v25 = systemSettingsLogHandle;
    if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v26 = v25;
      v27 = SCError();
      v28 = SCErrorString(v27);
      *v52 = 136315138;
      *v53 = v28;
      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "Unable to create preferences handle: %s", v52, 0xCu);
    }
  }

  v29 = +[CoreTelephonyShim sharedInstance];
  if (([v21 isSymptomsdHelper] & 1) == 0)
  {
    ctServerConnection = [v29 ctServerConnection];
    v2->_serverConnection = ctServerConnection;
    if (ctServerConnection)
    {
      [v29 addDelegate:v2];
      v31 = _CTServerConnectionRegisterForNotification();
      v32 = v31;
      v33 = HIDWORD(v31);
      if (!HIDWORD(v31) && !v31)
      {
        goto LABEL_39;
      }

      v34 = systemSettingsLogHandle;
      if (!os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *v52 = 67109376;
      *v53 = v32;
      *&v53[4] = 1024;
      *&v53[6] = v33;
      v35 = "Failed to register for kCTRegistrationDataStatusChangedNotification: error domain = %d, error number = %d.";
      v36 = v34;
      v37 = 14;
    }

    else
    {
      v38 = systemSettingsLogHandle;
      if (!os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_ERROR))
      {
LABEL_39:
        [v29 registerRNFChangedWithDelegate:v2];
        goto LABEL_40;
      }

      *v52 = 0;
      v35 = "Could not establish CTServerConnection.";
      v36 = v38;
      v37 = 2;
    }

    _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_ERROR, v35, v52, v37);
    goto LABEL_39;
  }

LABEL_40:
  v39 = _os_feature_enabled_impl();
  v40 = systemSettingsLogHandle;
  if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v41 = "en";
    if (!v39)
    {
      v41 = "dis";
    }

    *v52 = 136315138;
    *v53 = v41;
    _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEFAULT, "turbo_rnf feature flag is %sabled", v52, 0xCu);
  }

  [(SystemSettingsRelay *)v2 setTurboRNFFeatureFlagEnabled:v39];
  queue4 = [(SystemSettingsRelay *)v2 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__SystemSettingsRelay_init__block_invoke;
  block[3] = &unk_27898A328;
  v47 = v2;
  v48 = v21;
  v49 = v29;
  v43 = v29;
  v44 = v21;
  dispatch_async(queue4, block);

  return v2;
}

void __27__SystemSettingsRelay_init__block_invoke(id *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  Value = SCPreferencesGetValue(sWifi, @"AllowEnable");
  BOOLFromCFType = _readBOOLFromCFType("AllowEnable", Value);
  [a1[4] _setWifiEnabled:BOOLFromCFType];
  SCPreferencesSynchronize(sWifi);
  v4 = SCPreferencesGetValue(sAirplane, @"AirplaneMode");
  v5 = _readBOOLFromCFType("AirplaneMode", v4);
  [a1[4] _setAirplaneModeSwitchEnabled:v5];
  SCPreferencesSynchronize(sAirplane);
  v25 = 0;
  if (!*(a1[4] + 2))
  {
    v11 = systemSettingsLogHandle;
    if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "CTServerConnection not established.";
      v9 = v11;
      v10 = 2;
      goto LABEL_7;
    }

LABEL_8:
    v12 = "implicitly";
    goto LABEL_10;
  }

  IsEnabled = _CTServerConnectionGetCellularDataIsEnabled();
  if (IsEnabled)
  {
    v7 = systemSettingsLogHandle;
    if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v27 = IsEnabled;
      *&v27[4] = 1024;
      *&v27[6] = HIDWORD(IsEnabled);
      v8 = "_CTServerConnectionGetCellularDataIsEnabled returned with error domain %d, error %d";
      v9 = v7;
      v10 = 14;
LABEL_7:
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  [a1[4] _setCellDataSwitchEnabled:v25 != 0];
  v12 = "administratively";
LABEL_10:
  if (!*(a1[4] + 2))
  {
    v13 = systemSettingsLogHandle;
    if (!os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v14 = "CTServerConnection not established.";
    goto LABEL_16;
  }

  theDict = 0;
  _CTServerConnectionCopyReliableNetworkFallbackSettings();
  v13 = systemSettingsLogHandle;
  if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v14 = "_CTServerConnectionCopyReliableNetworkFallbackSettings returned nil dictionary.";
LABEL_16:
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
  }

LABEL_17:
  [a1[4] _setRnfEnabled:1];
  v15 = systemSettingsLogHandle;
  if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    if (v5)
    {
      v16 = "ON";
    }

    else
    {
      v16 = "OFF";
    }

    *v27 = v16;
    *&v27[8] = 2080;
    if (BOOLFromCFType)
    {
      v17 = "ON";
    }

    else
    {
      v17 = "OFF";
    }

    v28 = v17;
    v29 = 2080;
    v30 = v12;
    v31 = 2080;
    v32 = "OFF";
    v33 = 2080;
    v34 = "RNF implicitly OFF";
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "AirplaneMode %s,  Wi-Fi administratively %s, Cellular data switch %s %s, %s", buf, 0x34u);
  }

  v18 = [a1[5] basebandCapability];
  if (v18)
  {
    *(a1[4] + 8) = _os_feature_enabled_impl();
    [a1[4] recalculateAndSetCellOutrankEnabled];
  }

  shared_prefs_store = get_shared_prefs_store();
  [a1[4] _enableBrokenBackhaulWithBaseband:v18 prefStore:shared_prefs_store];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __27__SystemSettingsRelay_init__block_invoke_44;
  v22[3] = &unk_27898A0A0;
  v23 = a1[4];
  prefs_add_client(shared_prefs_store, "cell_outrank", v22);
  [a1[4] _setSmartDataModeEnabled:{objc_msgSend(a1[6], "getSmartDataModeSetting")}];
  v20 = systemSettingsLogHandle;
  if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1[4] + 52))
    {
      v21 = "en";
    }

    else
    {
      v21 = "dis";
    }

    *buf = 136315138;
    *v27 = v21;
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "SmartDataMode (pre-initialization) is %sabled", buf, 0xCu);
  }
}

void __27__SystemSettingsRelay_init__block_invoke_44(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (MEMORY[0x238389170](v4) == MEMORY[0x277D86448])
    {
      value = xpc_BOOL_get_value(v5);
      v11 = [*(a1 + 32) cellOutrankEnabled];
      v12 = systemSettingsLogHandle;
      v13 = os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_DEFAULT);
      if (value == v11)
      {
        if (v13)
        {
          v17 = *(a1 + 32);
          v18 = v12;
          *buf = 67109376;
          v23 = [v17 cellOutrankEnabled];
          v24 = 1024;
          v25 = value;
          _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "COSM no-op for cell_outrank (was/is): %d/%d", buf, 0xEu);
        }
      }

      else
      {
        if (v13)
        {
          v14 = *(a1 + 32);
          v15 = v12;
          *buf = 67109376;
          v23 = [v14 cellOutrankEnabled];
          v24 = 1024;
          v25 = value;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "COSM changing a value for cell_outrank from %d to %d", buf, 0xEu);
        }

        v16 = [*(a1 + 32) queue];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __27__SystemSettingsRelay_init__block_invoke_45;
        v19[3] = &unk_27898A3A0;
        v20 = *(a1 + 32);
        v21 = value;
        dispatch_async(v16, v19);
      }
    }

    else
    {
      v6 = systemSettingsLogHandle;
      if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v8 = v6;
        *buf = 67109120;
        v23 = [v7 cellOutrankEnabled];
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "COSM got invalid value for cell_outrank. Maintaining current value (%d)", buf, 8u);
      }
    }
  }

  else
  {
    v9 = systemSettingsLogHandle;
    if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "COSM no override for cell_outrank. Resetting to NO", buf, 2u);
    }

    *(*(a1 + 32) + 9) = 0;
    [*(a1 + 32) recalculateAndSetCellOutrankEnabled];
  }
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_serverConnection)
  {
    v3 = _CTServerConnectionUnregisterForNotification();
    v4 = v3;
    v5 = HIDWORD(v3);
    if (HIDWORD(v3))
    {
      v6 = 0;
    }

    else
    {
      v6 = v3 == 0;
    }

    if (!v6)
    {
      v7 = systemSettingsLogHandle;
      if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v13 = v4;
        v14 = 1024;
        v15 = v5;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Failed to unregister kCTRegistrationDataStatusChangedNotification: error domain = %d, error number = %d.", buf, 0xEu);
      }
    }

    serverConnection = self->_serverConnection;
    if (serverConnection)
    {
      CFRelease(serverConnection);
      self->_serverConnection = 0;
    }
  }

  v9 = +[CoreTelephonyShim sharedInstance];
  [v9 unregisterRNFChangedWithDelegate:self];
  [v9 removeDelegate:self];
  if (self->_registeredForAutoBugCaptureChangeNotifications)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.autobugcapture.configurationchanged", 0);
    self->_registeredForAutoBugCaptureChangeNotifications = 0;
  }

  v11.receiver = self;
  v11.super_class = SystemSettingsRelay;
  [(SystemSettingsRelay *)&v11 dealloc];
}

- (void)registerForAutoBugCaptureChangeNotifications
{
  if (!self->_registeredForAutoBugCaptureChangeNotifications)
  {
    self->_registeredForAutoBugCaptureChangeNotifications = 1;
    [(SystemSettingsRelay *)self getAutoBugCaptureConfiguration];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _autoBugCaptureConfigurationNotification, @"com.apple.autobugcapture.configurationchanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)getAutoBugCaptureConfiguration
{
  queue = [(SystemSettingsRelay *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SystemSettingsRelay_getAutoBugCaptureConfiguration__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __53__SystemSettingsRelay_getAutoBugCaptureConfiguration__block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__17;
  v10 = __Block_byref_object_dispose__17;
  v2 = objc_alloc(MEMORY[0x277D6AFC8]);
  v3 = [*(a1 + 32) queue];
  v11 = [v2 initWithQueue:v3];

  v4 = v7[5];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__SystemSettingsRelay_getAutoBugCaptureConfiguration__block_invoke_49;
  v5[3] = &unk_27898FF80;
  v5[4] = *(a1 + 32);
  v5[5] = &v6;
  [v4 getAutoBugCaptureConfiguration:v5];
  _Block_object_dispose(&v6, 8);
}

void __53__SystemSettingsRelay_getAutoBugCaptureConfiguration__block_invoke_49(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = systemSettingsLogHandle;
  if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Setting autoBugCaptureConfiguration to %@", &v7, 0xCu);
  }

  [*(a1 + 32) setAutoBugCaptureConfiguration:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

- (NSString)symptomEvaluatorDatabaseContainerPath
{
  v2 = +[SystemProperties sharedInstance];
  internalBuild = [v2 internalBuild];

  if (internalBuild)
  {
    shared_prefs_store = get_shared_prefs_store();
    if (shared_prefs_store)
    {
      prefs_add_client(shared_prefs_store, "database_container_path", &__block_literal_global_53);
    }
  }

  v5 = symptomEvaluatorDatabaseContainerPath_databaseContainerPath;

  return v5;
}

void __60__SystemSettingsRelay_symptomEvaluatorDatabaseContainerPath__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SystemSettingsRelay_symptomEvaluatorDatabaseContainerPath__block_invoke_2;
  block[3] = &unk_27898A0C8;
  v7 = v3;
  v4 = kPrefAppIdentifierKey_block_invoke_dbPathOnceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&kPrefAppIdentifierKey_block_invoke_dbPathOnceToken, block);
  }
}

void __60__SystemSettingsRelay_symptomEvaluatorDatabaseContainerPath__block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v14 = 138412290;
    v15 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Checking for forced override: (Database Container Path) %@", &v14, 0xCu);
  }

  if (*(a1 + 32) && MEMORY[0x238389170]() == MEMORY[0x277D864C0])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(*(a1 + 32))];
    if ([v4 length] && (objc_msgSend(v4, "isAbsolutePath") & 1) != 0)
    {
      if (([v4 isEqualToString:symptomEvaluatorDatabaseContainerPath_databaseContainerPath] & 1) == 0)
      {
        v5 = configurationLogHandle;
        if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v6 = symptomEvaluatorDatabaseContainerPath_databaseContainerPath;
          v7 = v5;
          v8 = [v6 UTF8String];
          v9 = [v4 UTF8String];
          v14 = 136315394;
          v15 = v8;
          v16 = 2080;
          v17 = v9;
          _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Forced Override: Database Container Path %s => %s", &v14, 0x16u);
        }

        objc_storeStrong(&symptomEvaluatorDatabaseContainerPath_databaseContainerPath, v4);
      }
    }

    else
    {
      v10 = configurationLogHandle;
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v4;
        v12 = v10;
        v13 = [v4 UTF8String];
        v14 = 136315138;
        v15 = v13;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Invalid path provided for database container override: %s", &v14, 0xCu);
      }
    }
  }
}

- (void)_setAirplaneModeSwitchEnabled:(BOOL)enabled
{
  if (self->_airplaneModeSwitchEnabled != enabled)
  {
    [(SystemSettingsRelay *)self willChangeValueForKey:@"airplaneModeSwitchEnabled"];
    self->_airplaneModeSwitchEnabled = enabled;

    [(SystemSettingsRelay *)self didChangeValueForKey:@"airplaneModeSwitchEnabled"];
  }
}

- (void)_setCellDataSwitchEnabled:(BOOL)enabled
{
  if (self->_cellDataSwitchEnabled != enabled)
  {
    [(SystemSettingsRelay *)self willChangeValueForKey:@"cellDataSwitchEnabled"];
    self->_cellDataSwitchEnabled = enabled;

    [(SystemSettingsRelay *)self didChangeValueForKey:@"cellDataSwitchEnabled"];
  }
}

- (void)_setRnfEnabled:(BOOL)enabled
{
  if (self->_rnfEnabled != enabled)
  {
    [(SystemSettingsRelay *)self willChangeValueForKey:@"rnfEnabled"];
    self->_rnfEnabled = enabled;

    [(SystemSettingsRelay *)self didChangeValueForKey:@"rnfEnabled"];
  }
}

- (void)_setCellOutrankEnabled:(BOOL)enabled
{
  if (self->_cellOutrankEnabled != enabled)
  {
    [(SystemSettingsRelay *)self willChangeValueForKey:@"cellOutrankEnabled"];
    self->_cellOutrankEnabled = enabled;

    [(SystemSettingsRelay *)self didChangeValueForKey:@"cellOutrankEnabled"];
  }
}

- (void)_setSmartDataModeEnabled:(BOOL)enabled
{
  if (self->_smartDataModeEnabled != enabled)
  {
    [(SystemSettingsRelay *)self willChangeValueForKey:@"smartDataModeEnabled"];
    self->_smartDataModeEnabled = enabled;

    [(SystemSettingsRelay *)self didChangeValueForKey:@"smartDataModeEnabled"];
  }
}

- (void)_setWifiEnabled:(BOOL)enabled
{
  if (self->_wifiEnabled != enabled)
  {
    [(SystemSettingsRelay *)self willChangeValueForKey:@"wifiEnabled"];
    self->_wifiEnabled = enabled;

    [(SystemSettingsRelay *)self didChangeValueForKey:@"wifiEnabled"];
  }
}

- (void)_setNoBackhaulEnabled:(BOOL)enabled
{
  if (self->_noBackhaulEnabled != enabled)
  {
    [(SystemSettingsRelay *)self willChangeValueForKey:@"noBackhaulEnabled"];
    self->_noBackhaulEnabled = enabled;

    [(SystemSettingsRelay *)self didChangeValueForKey:@"noBackhaulEnabled"];
  }
}

- (void)_setAutoBugCaptureEnabled:(BOOL)enabled
{
  if (self->_autoBugCaptureEnabled != enabled)
  {
    [(SystemSettingsRelay *)self willChangeValueForKey:@"autoBugCaptureEnabled"];
    self->_autoBugCaptureEnabled = enabled;

    [(SystemSettingsRelay *)self didChangeValueForKey:@"autoBugCaptureEnabled"];
  }
}

- (void)_setAutoBugCaptureAvailable:(BOOL)available
{
  if (self->_autoBugCaptureAvailable != available)
  {
    [(SystemSettingsRelay *)self willChangeValueForKey:@"autoBugCaptureAvailable"];
    self->_autoBugCaptureAvailable = available;

    [(SystemSettingsRelay *)self didChangeValueForKey:@"autoBugCaptureAvailable"];
  }
}

- (void)_setAutoFeedbackAssistantEnable:(BOOL)enable
{
  if (self->_autoFeedbackAssistantEnable != enable)
  {
    [(SystemSettingsRelay *)self willChangeValueForKey:@"autoFeedbackAssistantEnable"];
    self->_autoFeedbackAssistantEnable = enable;
    [(SystemSettingsRelay *)self didChangeValueForKey:@"autoFeedbackAssistantEnable"];
  }

  [(SystemSettingsRelay *)self setAutoFeedbackAssistantInitialized:1];
}

- (int)autoBugCaptureEnhancedBetaFeedbackState
{
  if ([(SystemSettingsRelay *)self autoFeedbackAssistantInitialized])
  {
    return [(SystemSettingsRelay *)self autoFeedbackAssistantEnable];
  }

  else
  {
    return 2;
  }
}

- (void)recalculateAndSetCellOutrankEnabled
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_cellOutrankEnabledOverride)
  {
    goto LABEL_2;
  }

  if (self->_cellOutrankFeatureFlagEnabled)
  {
    if (self->_cellSupports5G)
    {
LABEL_2:
      cellSupportsPrivateNetwork = 1;
      goto LABEL_7;
    }

    cellSupportsPrivateNetwork = self->_cellSupportsPrivateNetwork;
  }

  else
  {
    cellSupportsPrivateNetwork = 0;
  }

LABEL_7:
  v4 = systemSettingsLogHandle;
  if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    cellOutrankEnabledOverride = self->_cellOutrankEnabledOverride;
    cellOutrankFeatureFlagEnabled = self->_cellOutrankFeatureFlagEnabled;
    cellSupports5G = self->_cellSupports5G;
    v8 = self->_cellSupportsPrivateNetwork;
    v9[0] = 67110144;
    v9[1] = cellSupportsPrivateNetwork;
    v10 = 1024;
    v11 = cellOutrankEnabledOverride;
    v12 = 1024;
    v13 = cellOutrankFeatureFlagEnabled;
    v14 = 1024;
    v15 = cellSupports5G;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "recalculateAndSetCellOutrankEnabled enable:%d (override:%d, outrankFeatureFlag:%d, supports5G:%d, supportsPrivateNetwork:%d)", v9, 0x20u);
  }

  [(SystemSettingsRelay *)self _setCellOutrankEnabled:cellSupportsPrivateNetwork];
}

- (void)ctServerConnectionNotification:(__CFString *)notification notificationInfo:(__CFDictionary *)info
{
  if (notification)
  {
    v6 = [(SystemSettingsRelay *)self queue:notification];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__SystemSettingsRelay_ctServerConnectionNotification_notificationInfo___block_invoke;
    v8[3] = &unk_27898AFE0;
    v8[4] = self;
    v8[5] = notification;
    dispatch_async(v6, v8);
  }

  else
  {
    v7 = systemSettingsLogHandle;
    if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "notification is NULL", buf, 2u);
    }
  }
}

void __71__SystemSettingsRelay_ctServerConnectionNotification_notificationInfo___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (CFStringCompare(*(a1 + 40), *MEMORY[0x277CC3CB0], 0))
  {
    v2 = systemSettingsLogHandle;
    if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v4 = v2;
      v5 = [v3 description];
      *buf = 136315138;
      v11 = [v5 UTF8String];
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "Received an unrecognized call back: %s", buf, 0xCu);
    }
  }

  else if (!pendingCellData++)
  {
    v7 = dispatch_time(0, 5000000000);
    v8 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__SystemSettingsRelay_ctServerConnectionNotification_notificationInfo___block_invoke_2;
    block[3] = &unk_27898A0C8;
    block[4] = *(a1 + 32);
    dispatch_after(v7, v8, block);
  }
}

void __71__SystemSettingsRelay_ctServerConnectionNotification_notificationInfo___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 16))
  {
    IsEnabled = _CTServerConnectionGetCellularDataIsEnabled();
    v3 = systemSettingsLogHandle;
    if (IsEnabled)
    {
      if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v9 = IsEnabled;
        v10 = 1024;
        v11 = HIDWORD(IsEnabled);
        v4 = "_CTServerConnectionGetCellularDataIsEnabled returned with error domain %d, error %d";
        v5 = v3;
        v6 = 14;
LABEL_7:
        _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, v4, buf, v6);
      }
    }

    else
    {
      if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v9 = 0;
        _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Cellular data switch is %d", buf, 8u);
      }

      [*(a1 + 32) _setCellDataSwitchEnabled:0];
    }
  }

  else
  {
    v7 = systemSettingsLogHandle;
    if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v4 = "CTServerConnection not established.";
      v5 = v7;
      v6 = 2;
      goto LABEL_7;
    }
  }

  pendingCellData = 0;
}

- (void)rnfSettingChangedToFeatureEnabled:(BOOL)enabled userEnabled:(BOOL)userEnabled
{
  userEnabledCopy = userEnabled;
  enabledCopy = enabled;
  v14 = *MEMORY[0x277D85DE8];
  v7 = systemSettingsLogHandle;
  if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "unavailable";
    if (enabledCopy)
    {
      v8 = "available";
    }

    v9 = "ON";
    if (!userEnabledCopy)
    {
      v9 = "OFF";
    }

    v10 = 136315394;
    v11 = v8;
    v12 = 2080;
    v13 = v9;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "RNF is %s and %s", &v10, 0x16u);
  }

  [(SystemSettingsRelay *)self _setRnfEnabled:userEnabledCopy];
}

- (void)smartDataModeChangedToUserEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9 = *MEMORY[0x277D85DE8];
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"dis";
    if (enabledCopy)
    {
      v6 = @"en";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "SmartDataMode is now %@abled", &v7, 0xCu);
  }

  [(SystemSettingsRelay *)self _setSmartDataModeEnabled:enabledCopy];
}

- (void)setAutoBugCaptureConfiguration:(id)configuration
{
  configurationCopy = configuration;
  autoBugCaptureConfiguration = self->_autoBugCaptureConfiguration;
  v15 = configurationCopy;
  if (autoBugCaptureConfiguration != configurationCopy || (v7 = [(NSDictionary *)autoBugCaptureConfiguration isEqualToDictionary:configurationCopy], v8 = v15, (v7 & 1) == 0))
  {
    [(SystemSettingsRelay *)self willChangeValueForKey:@"autoBugCaptureConfiguration"];
    objc_storeStrong(&self->_autoBugCaptureConfiguration, configuration);
    [(SystemSettingsRelay *)self didChangeValueForKey:@"autoBugCaptureConfiguration"];
    v9 = [(NSDictionary *)v15 objectForKeyedSubscript:@"autoBugCaptureEnabled"];
    v10 = v9;
    if (v9)
    {
      -[SystemSettingsRelay _setAutoBugCaptureEnabled:](self, "_setAutoBugCaptureEnabled:", [v9 BOOLValue]);
    }

    v11 = [(NSDictionary *)v15 objectForKeyedSubscript:@"autoBugCaptureAvailable"];
    v12 = v11;
    if (v11)
    {
      -[SystemSettingsRelay _setAutoBugCaptureAvailable:](self, "_setAutoBugCaptureAvailable:", [v11 BOOLValue]);
    }

    v13 = [(NSDictionary *)v15 objectForKeyedSubscript:@"autoFeedbackAssistantEnable"];
    v14 = v13;
    if (v13)
    {
      -[SystemSettingsRelay _setAutoFeedbackAssistantEnable:](self, "_setAutoFeedbackAssistantEnable:", [v13 BOOLValue]);
    }

    v8 = v15;
  }

  MEMORY[0x2821F96F8](v7, v8);
}

@end