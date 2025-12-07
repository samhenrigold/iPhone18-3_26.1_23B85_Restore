@interface PowerUIAudioAccessorySmartChargeManager
+ (id)readArrayForPreferenceKey:(id)key;
+ (id)readNumberForPreferenceKeyPrefix:(id)prefix andDevice:(id)device;
+ (id)readStringForPreferenceKeyPrefix:(id)prefix andDevice:(id)device;
+ (void)setNumber:(id)number forPreferenceKeyPrefix:(id)prefix andDevice:(id)device;
+ (void)setString:(id)string forPreferenceKeyPrefix:(id)prefix andDevice:(id)device;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)runUpdateForDevice:(BTDeviceImpl *)device withHash:(id)hash asInitialUpdate:(BOOL)update;
- (BOOL)setOBCState:(BOOL)state forDevice:(id)device;
- (BOOL)setStateViaV2Protocol:(unint64_t)protocol forDevice:(BTDeviceImpl *)device;
- (PowerUIAudioAccessorySmartChargeManager)init;
- (id)defaultDateToDisableUntilGivenDate:(id)date;
- (id)firstUseNotificationRequestForDeviceType:(unsigned int)type;
- (id)getOBCDeadlineFromCBDevice:(id)device;
- (id)nameForProductID:(unsigned int)d;
- (id)returnAccessoryStatusForDevice:(id)device;
- (id)stringFromState:(unint64_t)state;
- (unint64_t)sendTimeDeltaInSeconds:(unsigned int)seconds toAccessory:(BTDeviceImpl *)accessory;
- (void)addTimeSeriesDataToStream:(timeSeriesData *)stream withSide:(unsigned __int8)side withFirmwareVersion:(unsigned __int16)version withLog:(id)log;
- (void)clearLastActionForDevice:(id)device;
- (void)client:(id)client connectAndDisableOBCforDevice:(id)device withHandler:(id)handler;
- (void)client:(id)client setState:(unint64_t)state forDevice:(id)device withHandler:(id)handler;
- (void)client:(id)client updateOBCDeadline:(id)deadline forDevice:(id)device withHandler:(id)handler;
- (void)currentLeewayWithHandler:(id)handler;
- (void)deleteRecordsForDevices:(id)devices;
- (void)engageUntil:(id)until forDevice:(id)device overrideAllSignals:(BOOL)signals withHandler:(id)handler;
- (void)fakeConnectionForDevice:(id)device;
- (void)fullChargeDeadlineForDevice:(id)device withHandler:(id)handler;
- (void)getAvailableDevicesWithHandler:(id)handler;
- (void)getStatusForDevice:(id)device withHandler:(id)handler;
- (void)isSmartChargingCurrentlyEnabledForDevice:(id)device withHandler:(id)handler;
- (void)lastActionForDevice:(id)device withHandler:(id)handler;
- (void)monitor:(id)monitor maySuggestNewFullChargeDeadline:(id)deadline;
- (void)persistentlyHandleSeeingDevice:(id)device;
- (void)persistentlySetExpectedHash:(id)hash forDevice:(id)device;
- (void)persistentlySetLastSentDate:(id)date forDevice:(id)device;
- (void)persistentlySetLastTimeseriesDate:(id)date forDevice:(id)device;
- (void)persistentlySetLastUnderchargeRecordedForPrediction:(id)prediction forDevice:(id)device;
- (void)persistentlySetStatusForDevice:(id)device withCurrentState:(unint64_t)state withEnabled:(BOOL)enabled withDisabledUntilDate:(id)date withTemporarilyDisabled:(BOOL)disabled;
- (void)recordBudMetricsLocallyForDevice:(id)device withTimeSpendAtLowerSoC:(unsigned __int16)c timeSpentAtHigherSoC:(unsigned __int16)soC engagementEventsSinceLastReport:(unsigned __int8)report underchargeEventsSinceLastReport:(unsigned __int8)lastReport chargingEventsSinceLastReport:(unsigned __int8)sinceLastReport budSocAtLastEngagement:(unsigned __int8)engagement successRatio:(unsigned __int16)self0;
- (void)reportDailyMetrics;
- (void)reportSessionMetricsForSide:(unsigned __int8)side withTimeSpendAtLowerSoC:(unsigned __int16)c timeSpentAtHigherSoC:(unsigned __int16)soC engagementEventsSinceLastReport:(unsigned __int8)report underchargeEventsSinceLastReport:(unsigned __int8)lastReport chargingEventsSinceLastReport:(unsigned __int8)sinceLastReport budSocAtLastEngagement:(unsigned __int8)engagement successRatio:(unsigned __int16)self0 deviceType:(id)self1;
- (void)setFakeConnectionStatusTo:(BOOL)to;
- (void)setTemporarilyDisabled:(BOOL)disabled until:(id)until forDevice:(id)device;
- (void)startMockingBluetoothForFakeDevice:(id)device;
- (void)stopMockingBluetooth;
- (void)timeSeriesForDevice:(id)device;
- (void)unfilteredDeadlineForDevice:(id)device withHandler:(id)handler;
@end

@implementation PowerUIAudioAccessorySmartChargeManager

- (PowerUIAudioAccessorySmartChargeManager)init
{
  v138 = *MEMORY[0x277D85DE8];
  v132.receiver = self;
  v132.super_class = PowerUIAudioAccessorySmartChargeManager;
  v2 = [(PowerUIAudioAccessorySmartChargeManager *)&v132 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.powerui.smartcharging.AudioAccessory", "main");
    accessoryLog = v2->_accessoryLog;
    v2->_accessoryLog = v3;

    v5 = v2->_accessoryLog;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "PowerUIAudioAccessorySmartChargeManager initializing...", buf, 2u);
    }

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.PowerUIAgent.btQueue", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    latestAnalyticsForDevice = v2->_latestAnalyticsForDevice;
    v2->_latestAnalyticsForDevice = dictionary;

    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    deviceArrayLock = v2->_deviceArrayLock;
    v2->_deviceArrayLock = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    accessoryStates = v2->_accessoryStates;
    v2->_accessoryStates = v13;

    v15 = [PowerUIAudioAccessorySmartChargeManager readArrayForPreferenceKey:@"com.apple.smartcharging.audioaccessories.deviceArray"];
    deviceArray = v2->_deviceArray;
    v2->_deviceArray = v15;

    v17 = v2;
    if (!v2->_deviceArray)
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v19 = v2->_deviceArray;
      v2->_deviceArray = v18;

      v20 = v2->_accessoryLog;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "No deviceArray loaded, set up new", buf, 2u);
      }
    }

    v21 = v2->_accessoryLog;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v2->_deviceArray;
      v23 = v21;
      v24 = [(NSMutableArray *)v22 count];
      *buf = 134217984;
      v134 = v24;
      _os_log_impl(&dword_21B766000, v23, OS_LOG_TYPE_DEFAULT, "Device array with %lu entries was loaded", buf, 0xCu);
    }

    v109 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    obj = v17->_deviceArray;
    v25 = v17;
    v26 = 0x2782D3000uLL;
    v111 = [(NSMutableArray *)obj countByEnumeratingWithState:&v128 objects:v137 count:16];
    if (v111)
    {
      v110 = *v129;
      *&v27 = 138412546;
      v107 = v27;
      v114 = v25;
      do
      {
        for (i = 0; i != v111; ++i)
        {
          if (*v129 != v110)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v128 + 1) + 8 * i);
          v30 = objc_alloc_init(PowerUIAccessoryStatus);
          v31 = [*(v26 + 2216) readNumberForPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.currentState." andDevice:v29];
          if (!v31)
          {
            v32 = v25->_accessoryLog;
            v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
            v31 = &unk_282D4E530;
            if (v33)
            {
              *buf = 138412290;
              v134 = v29;
              _os_log_error_impl(&dword_21B766000, v32, OS_LOG_TYPE_ERROR, "ERROR: No proper value stored for 'currentState' for device '%@'", buf, 0xCu);
              v31 = &unk_282D4E530;
            }
          }

          v113 = v31;
          -[PowerUIAccessoryStatus setCurrentState:](v30, "setCurrentState:", [v31 unsignedIntegerValue]);
          v34 = [*(v26 + 2216) readNumberForPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.enabled." andDevice:v29];
          if (!v34)
          {
            v35 = v25->_accessoryLog;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v134 = v29;
              _os_log_error_impl(&dword_21B766000, v35, OS_LOG_TYPE_ERROR, "ERROR: No proper value stored for 'enabled' for device '%@'", buf, 0xCu);
            }

            v34 = [MEMORY[0x277CCABB0] numberWithBool:1];
          }

          -[PowerUIAccessoryStatus setEnabled:](v30, "setEnabled:", [v34 BOOLValue]);
          v36 = [*(v26 + 2216) readNumberForPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.disabledUntilDate." andDevice:v29];
          v112 = v36;
          if (v36)
          {
            v37 = MEMORY[0x277CBEAA8];
            [v36 doubleValue];
            v38 = [v37 dateWithTimeIntervalSinceReferenceDate:?];
            [v38 timeIntervalSinceNow];
            if (v39 >= 0.0)
            {
              v40 = v39;
              [(PowerUIAccessoryStatus *)v30 setDisabledUntilDate:v38];
              [(PowerUIAccessoryStatus *)v30 setTemporarilyDisabled:1];
              v41 = dispatch_walltime(0, (v40 * 1000000000.0));
              v42 = v114->_queue;
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke;
              block[3] = &unk_2782D4AC0;
              v126 = v114;
              v127 = v29;
              v43 = v42;
              v25 = v114;
              dispatch_after(v41, v43, block);
              v44 = v114->_accessoryLog;
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v107;
                v134 = v29;
                v135 = 2048;
                v136 = v40 / 60.0;
                _os_log_impl(&dword_21B766000, v44, OS_LOG_TYPE_DEFAULT, "PowerUI restart: Re-enable device '%@' in %f minutes", buf, 0x16u);
              }
            }

            else
            {
              [(PowerUIAccessoryStatus *)v30 setDisabledUntilDate:0];
              [(PowerUIAccessoryStatus *)v30 setTemporarilyDisabled:0];
            }
          }

          else
          {
            [(PowerUIAccessoryStatus *)v30 setDisabledUntilDate:0];
            [(PowerUIAccessoryStatus *)v30 setTemporarilyDisabled:0];
          }

          v45 = [*(v26 + 2216) readNumberForPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.lastSentDate." andDevice:v29];
          v46 = v45;
          if (v45)
          {
            v47 = MEMORY[0x277CBEAA8];
            [v45 doubleValue];
            v48 = [v47 dateWithTimeIntervalSinceReferenceDate:?];
            [(PowerUIAccessoryStatus *)v30 setLastSentDate:v48];
          }

          else
          {
            [(PowerUIAccessoryStatus *)v30 setLastSentDate:0];
          }

          v49 = [*(v26 + 2216) readNumberForPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.lastSeenDate." andDevice:v29];
          v50 = v49;
          if (!v49)
          {
            [(PowerUIAccessoryStatus *)v30 setLastSeenDate:0];
LABEL_36:
            [v109 addObject:v29];
            goto LABEL_37;
          }

          v51 = MEMORY[0x277CBEAA8];
          [v49 doubleValue];
          v52 = [v51 dateWithTimeIntervalSinceReferenceDate:?];
          [(PowerUIAccessoryStatus *)v30 setLastSeenDate:v52];

          date = [MEMORY[0x277CBEAA8] date];
          lastSeenDate = [(PowerUIAccessoryStatus *)v30 lastSeenDate];
          [date timeIntervalSinceDate:lastSeenDate];
          v56 = v55;

          v25 = v114;
          if (v56 > 2592000.0)
          {
            goto LABEL_36;
          }

LABEL_37:
          v57 = [*(v26 + 2216) readNumberForPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.lastTimeseriesDate." andDevice:v29];
          v58 = v57;
          v59 = MEMORY[0x277CBEAA8];
          if (v57)
          {
            [v57 doubleValue];
            [v59 dateWithTimeIntervalSinceReferenceDate:?];
          }

          else
          {
            [MEMORY[0x277CBEAA8] distantPast];
          }
          v60 = ;
          [(PowerUIAccessoryStatus *)v30 setLastTimeseriesDate:v60];

          v61 = [*(v26 + 2216) readNumberForPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.lastUnderchargeRecordedForPrediction." andDevice:v29];
          v62 = v61;
          if (v61)
          {
            v63 = MEMORY[0x277CBEAA8];
            [v61 doubleValue];
            v64 = [v63 dateWithTimeIntervalSinceReferenceDate:?];
            [(PowerUIAccessoryStatus *)v30 setLastUnderchargeRecordedForPrediction:v64];
          }

          else
          {
            [(PowerUIAccessoryStatus *)v30 setLastUnderchargeRecordedForPrediction:0];
          }

          v65 = [PowerUIAudioAccessorySmartChargeManager readStringForPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.expectedHash." andDevice:v29];
          if (v65)
          {
            v66 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v65];
          }

          else
          {
            v67 = v25->_accessoryLog;
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v134 = v29;
              _os_log_impl(&dword_21B766000, v67, OS_LOG_TYPE_DEFAULT, "No proper value stored for 'expectedHash' for device '%@'", buf, 0xCu);
            }

            v66 = objc_alloc_init(MEMORY[0x277CCAD78]);
          }

          v68 = v66;
          [(PowerUIAccessoryStatus *)v30 setExpectedHash:v66];

          v25 = v114;
          [(NSMutableDictionary *)v114->_accessoryStates setObject:v30 forKey:v29];

          v26 = 0x2782D3000;
        }

        v111 = [(NSMutableArray *)obj countByEnumeratingWithState:&v128 objects:v137 count:16];
      }

      while (v111);
    }

    v69 = v25->_accessoryLog;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v70 = v25->_accessoryStates;
      v71 = v69;
      v72 = [(NSMutableDictionary *)v70 count];
      v73 = COERCE_DOUBLE([v109 count]);
      *buf = 134218240;
      v134 = v72;
      v135 = 2048;
      v136 = v73;
      _os_log_impl(&dword_21B766000, v71, OS_LOG_TYPE_DEFAULT, "AccessoryStates dict with %lu entries was loaded, %lu devices are old", buf, 0x16u);
    }

    [(PowerUIAudioAccessorySmartChargeManager *)v25 deleteRecordsForDevices:v109];
    v74 = objc_alloc_init(PowerUIMLAudioAccessoryModelPredictor);
    predictor = v25->_predictor;
    v25->_predictor = v74;

    [(PowerUIAudioAccessorySmartChargeManager *)v25 attachToBluetoothSession];
    v76 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.powerui.audioAccessorySmartChargeManager"];
    listener = v25->_listener;
    v25->_listener = v76;

    [(NSXPCListener *)v25->_listener setDelegate:v25];
    [(NSXPCListener *)v25->_listener resume];
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    notificationCenter = v25->_notificationCenter;
    v25->_notificationCenter = defaultCenter;

    v80 = dispatch_semaphore_create(0);
    btConnectionSemaphore = v25->_btConnectionSemaphore;
    v25->_btConnectionSemaphore = v80;

    v82 = [PowerUIWalletSignalMonitor monitorWithDelegate:v25];
    walletMonitor = v25->_walletMonitor;
    v25->_walletMonitor = v82;

    v84 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"com.apple.smartcharging.audioaccessories.hardcodedTimeDeltaInSeconds" inDomain:@"com.apple.smartcharging.topoffprotection.audioaccessories"];
    hardcodedTimeDelta = v25->_hardcodedTimeDelta;
    v25->_hardcodedTimeDelta = v84;

    v86 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"com.apple.smartcharging.audioaccessories.hardcodedTimeBetweenUpdatesInSeconds" inDomain:@"com.apple.smartcharging.topoffprotection.audioaccessories"];
    hardcodedTimeBetweenUpdates = v25->_hardcodedTimeBetweenUpdates;
    v25->_hardcodedTimeBetweenUpdates = v86;

    v88 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"firstNoteDisplayed" inDomain:@"com.apple.smartcharging.topoffprotection.audioaccessories"];
    v25->_firstNotificationDisplayed = [v88 BOOLValue];

    v89 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"com.apple.smartcharging.audioaccessories.budSideToRecord" inDomain:@"com.apple.smartcharging.topoffprotection.audioaccessories"];
    budSideToRecord = v25->_budSideToRecord;
    v25->_budSideToRecord = v89;

    if (!v25->_budSideToRecord)
    {
      v91 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:arc4random_uniform(2u) + 1];
      v92 = v25->_budSideToRecord;
      v25->_budSideToRecord = v91;

      [PowerUISmartChargeUtilities setNumber:v25->_budSideToRecord forPreferenceKey:@"com.apple.smartcharging.audioaccessories.budSideToRecord" inDomain:@"com.apple.smartcharging.topoffprotection.audioaccessories"];
    }

    v93 = *MEMORY[0x277D86238];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_291;
    handler[3] = &unk_2782D48D8;
    v94 = v25;
    v124 = v94;
    xpc_activity_register("com.apple.poweruiagent.audioAccessoriesDailyMetrics", v93, handler);
    v95 = objc_alloc_init(MEMORY[0x277CBEB38]);
    acceptMessageFromRightBudForDevice = v94->_acceptMessageFromRightBudForDevice;
    v94->_acceptMessageFromRightBudForDevice = v95;

    v97 = objc_alloc_init(MEMORY[0x277CBEB38]);
    acceptMessageFromLeftBudForDevice = v94->_acceptMessageFromLeftBudForDevice;
    v94->_acceptMessageFromLeftBudForDevice = v97;

    v99 = objc_alloc_init(PowerUIBluetoothHandler);
    btHandler = v94->_btHandler;
    v94->_btHandler = v99;

    *buf = 0;
    v101 = v25->_queue;
    v121[0] = MEMORY[0x277D85DD0];
    v121[1] = 3221225472;
    v121[2] = __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_295;
    v121[3] = &unk_2782D3E60;
    v102 = v94;
    v122 = v102;
    notify_register_dispatch("com.apple.powerui.audioAccessoryFirstUseNote", buf, v101, v121);
    out_token = 0;
    v103 = v25->_queue;
    v118[0] = MEMORY[0x277D85DD0];
    v118[1] = 3221225472;
    v118[2] = __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_299;
    v118[3] = &unk_2782D3E60;
    v104 = v102;
    v119 = v104;
    notify_register_dispatch("com.apple.powerui.startBTScan", &out_token, v103, v118);
    v117 = 0;
    v105 = v25->_queue;
    v115[0] = MEMORY[0x277D85DD0];
    v115[1] = 3221225472;
    v115[2] = __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_307;
    v115[3] = &unk_2782D3E60;
    v116 = v104;
    notify_register_dispatch("com.apple.powerui.stopBTScan", &v117, v105, v115);

    return v25;
  }

  return v2;
}

void __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_291(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    v5 = *(a1 + 32);

    [v5 reportDailyMetrics];
  }

  else if (!state)
  {
    v4 = *(*(a1 + 32) + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "Daily metrics checking in!", v6, 2u);
    }
  }
}

void __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_295(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21B766000, v2, OS_LOG_TYPE_DEFAULT, "First use note was called", v6, 2u);
  }

  v3 = +[PowerUINotificationManager sharedInstance];
  v4 = [*(a1 + 32) firstUseNotificationRequestForDeviceType:8206];
  v5 = [v3 postNotificationWithRequest:v4];
}

void __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_299(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, v2, OS_LOG_TYPE_DEFAULT, "startBTScan was called", buf, 2u);
  }

  v3 = objc_alloc_init(MEMORY[0x277CBE030]);
  v4 = *(a1 + 32);
  v5 = *(v4 + 152);
  *(v4 + 152) = v3;

  [*(*(a1 + 32) + 152) setDiscoveryFlags:0x20000000];
  objc_initWeak(&location, *(a1 + 32));
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_301;
  v23[3] = &unk_2782D4AE8;
  objc_copyWeak(&v24, &location);
  [*(*(a1 + 32) + 152) setDeviceFoundHandler:v23];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_303;
  v21[3] = &unk_2782D4AE8;
  objc_copyWeak(&v22, &location);
  [*(*(a1 + 32) + 152) setDeviceLostHandler:v21];
  v6 = *(a1 + 32);
  v7 = v6[19];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_304;
  v19[3] = &unk_2782D4160;
  v20 = v6;
  [v7 activateWithCompletion:v19];
  [MEMORY[0x277CBE030] devicesWithDiscoveryFlags:0x20000000 error:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v8 = v16 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v28 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = *(*(a1 + 32) + 40);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v12 identifier];
          *buf = 138412290;
          v27 = v14;
          _os_log_impl(&dword_21B766000, v13, OS_LOG_TYPE_DEFAULT, "device array: %@", buf, 0xCu);
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v28 count:16];
    }

    while (v9);
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_301(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained accessoryLog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 identifier];
    v7 = MEMORY[0x277CCABB0];
    [v3 accessoryStatusOBCTime];
    v8 = [v7 numberWithDouble:?];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Device found: %@ - Reported time interval: %@", &v9, 0x16u);
  }
}

void __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_303(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained accessoryLog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 stableIdentifier];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Device lost: %@", &v7, 0xCu);
  }
}

void __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_304(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "Error: %@", &v5, 0xCu);
  }
}

uint64_t __47__PowerUIAudioAccessorySmartChargeManager_init__block_invoke_307(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B766000, v2, OS_LOG_TYPE_DEFAULT, "stopBTScan was called", v4, 2u);
  }

  return [*(*(a1 + 32) + 152) invalidate];
}

- (id)returnAccessoryStatusForDevice:(id)device
{
  v13 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (deviceCopy)
  {
    v5 = [(NSMutableDictionary *)self->_accessoryStates objectForKey:deviceCopy];
    if (!v5)
    {
      v5 = objc_alloc_init(PowerUIAccessoryStatus);
      [(NSMutableDictionary *)self->_accessoryStates setObject:v5 forKey:deviceCopy];
      currentState = [(PowerUIAccessoryStatus *)v5 currentState];
      enabled = [(PowerUIAccessoryStatus *)v5 enabled];
      disabledUntilDate = [(PowerUIAccessoryStatus *)v5 disabledUntilDate];
      [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetStatusForDevice:deviceCopy withCurrentState:currentState withEnabled:enabled withDisabledUntilDate:disabledUntilDate withTemporarilyDisabled:[(PowerUIAccessoryStatus *)v5 temporarilyDisabled]];

      [(NSLock *)self->_deviceArrayLock lock];
      [(NSMutableArray *)self->_deviceArray addObject:deviceCopy];
      [PowerUIAudioAccessorySmartChargeManager setArray:self->_deviceArray forPreferenceKey:@"com.apple.smartcharging.audioaccessories.deviceArray"];
      accessoryLog = self->_accessoryLog;
      if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = deviceCopy;
        _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Add new device '%@' to deviceArray", &v11, 0xCu);
      }

      [(NSLock *)self->_deviceArrayLock unlock];
    }
  }

  else
  {
    if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
    {
      [PowerUIAudioAccessorySmartChargeManager returnAccessoryStatusForDevice:];
    }

    v5 = objc_alloc_init(PowerUIAccessoryStatus);
  }

  return v5;
}

- (void)addTimeSeriesDataToStream:(timeSeriesData *)stream withSide:(unsigned __int8)side withFirmwareVersion:(unsigned __int16)version withLog:(id)log
{
  versionCopy = version;
  sideCopy = side;
  v60 = *MEMORY[0x277D85DE8];
  logCopy = log;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v48 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:0 maxEvents:0 lastN:0 reversed:1];
  v9 = BiomeLibrary();
  device = [v9 Device];
  charging = [device Charging];
  accessoryChargingSession = [charging AccessoryChargingSession];
  v13 = [accessoryChargingSession publisherWithOptions:v48];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __106__PowerUIAudioAccessorySmartChargeManager_addTimeSeriesDataToStream_withSide_withFirmwareVersion_withLog___block_invoke;
  v52[3] = &__block_descriptor_33_e22_B16__0__BMStoreEvent_8l;
  v53 = sideCopy;
  v14 = [v13 filterWithIsIncluded:v52];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __106__PowerUIAudioAccessorySmartChargeManager_addTimeSeriesDataToStream_withSide_withFirmwareVersion_withLog___block_invoke_2;
  v50[3] = &unk_2782D3E10;
  v15 = logCopy;
  v51 = v15;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __106__PowerUIAudioAccessorySmartChargeManager_addTimeSeriesDataToStream_withSide_withFirmwareVersion_withLog___block_invoke_329;
  v49[3] = &unk_2782D4350;
  v49[4] = &v54;
  v16 = [v14 sinkWithCompletion:v50 shouldContinue:v49];

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v17 = v55[3];
    *buf = 134218240;
    *v59 = v17;
    *&v59[8] = 1024;
    *&v59[10] = sideCopy;
    _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_INFO, "Previous end date set to %llu from previous record for bud side: %hhu.", buf, 0x12u);
  }

  v47 = 0;
  v18 = 0;
  v19 = sideCopy == 2;
  if (sideCopy == 1)
  {
    v19 = 2;
  }

  v45 = v19;
  while (1)
  {
    v20 = &stream[v18];
    if (!v20->var1)
    {
      break;
    }

    if (v20->var2 && (v21 = v18 + 1, v22 = &stream[v18 + 1], v22->var2))
    {
      if (v20->var1 == 1)
      {
        if (v22->var1 == 2)
        {
          if (v22->var0 >= v20->var0)
          {
            if (v55[3] > v20->var0)
            {
              v29 = v15;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v55[3]];
                *buf = 67109378;
                *v59 = v18;
                *&v59[4] = 2112;
                *&v59[6] = v30;
                _os_log_impl(&dword_21B766000, v29, OS_LOG_TYPE_INFO, "Skipping event at i == %d because startDate is earlier than previous end date (%@)", buf, 0x12u);
              }

              goto LABEL_23;
            }

            if (v22->var0 - v20->var0 < 0x278D01)
            {
              v31 = objc_alloc(MEMORY[0x277CF1080]);
              v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:versionCopy];
              v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20->var0];
              v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v22->var0];
              v35 = [v31 initWithProductID:&unk_282D4E578 firmwareVersion:v32 startTimestamp:v33 endTimestamp:v34 side:v45];

              v36 = BiomeLibrary();
              device2 = [v36 Device];
              charging2 = [device2 Charging];
              accessoryChargingSession2 = [charging2 AccessoryChargingSession];
              source = [accessoryChargingSession2 source];
              [source sendEvent:v35];

              ++v47;
              v18 = v21;
              goto LABEL_23;
            }

            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              *v59 = v18;
              v23 = v15;
              v24 = "Skipping event at i == %d because charge duration was longer than 30 days";
LABEL_16:
              v25 = 8;
LABEL_22:
              _os_log_impl(&dword_21B766000, v23, OS_LOG_TYPE_INFO, v24, buf, v25);
            }
          }

          else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            *v59 = v18;
            v23 = v15;
            v24 = "Skipping event at i == %d because startDate is later than endDate";
            goto LABEL_16;
          }
        }

        else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          var1 = v20->var1;
          *buf = 67109376;
          *v59 = v18;
          *&v59[4] = 1024;
          *&v59[6] = var1;
          v23 = v15;
          v24 = "Skipping event at i == %d because event data at i+1 is %hhu (!= 2).";
          goto LABEL_21;
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v26 = v20->var1;
        *buf = 67109376;
        *v59 = v18;
        *&v59[4] = 1024;
        *&v59[6] = v26;
        v23 = v15;
        v24 = "Skipping event at i == %d because event data is %hhu (!= 1).";
LABEL_21:
        v25 = 14;
        goto LABEL_22;
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v59 = v18;
      v23 = v15;
      v24 = "Skipping event at i == %d because 'offset' is FALSE for i or i+1.";
      goto LABEL_16;
    }

LABEL_23:
    if (v18++ >= 0x60)
    {
      goto LABEL_36;
    }
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *v59 = v18;
    _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_INFO, "Reached end of records at i == %d", buf, 8u);
  }

LABEL_36:
  v41 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v47 < 1)
  {
    if (v41)
    {
      *buf = 0;
      v42 = "No valid charging time series events found for accessory.";
      v43 = v15;
      v44 = 2;
LABEL_41:
      _os_log_impl(&dword_21B766000, v43, OS_LOG_TYPE_INFO, v42, buf, v44);
    }
  }

  else if (v41)
  {
    *buf = 67109120;
    *v59 = v47;
    v42 = "Saved %d charging time series events to stream.";
    v43 = v15;
    v44 = 8;
    goto LABEL_41;
  }

  _Block_object_dispose(&v54, 8);
}

uint64_t __106__PowerUIAudioAccessorySmartChargeManager_addTimeSeriesDataToStream_withSide_withFirmwareVersion_withLog___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  if ([v4 side] == 1)
  {
    v5 = *(a1 + 32);

    if (v5 == 2)
    {
      v6 = 1;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v7 = [v3 eventBody];
  if ([v7 side] == 2)
  {
    v6 = *(a1 + 32);

    if (v6 == 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v6 = 0;
LABEL_10:

  return v6;
}

void __106__PowerUIAudioAccessorySmartChargeManager_addTimeSeriesDataToStream_withSide_withFirmwareVersion_withLog___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __106__PowerUIAudioAccessorySmartChargeManager_addTimeSeriesDataToStream_withSide_withFirmwareVersion_withLog___block_invoke_2_cold_1(v4, v3);
    }
  }
}

uint64_t __106__PowerUIAudioAccessorySmartChargeManager_addTimeSeriesDataToStream_withSide_withFirmwareVersion_withLog___block_invoke_329(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  [v3 endTimestamp];
  *(*(*(a1 + 32) + 8) + 24) = v4;

  return 0;
}

- (void)recordBudMetricsLocallyForDevice:(id)device withTimeSpendAtLowerSoC:(unsigned __int16)c timeSpentAtHigherSoC:(unsigned __int16)soC engagementEventsSinceLastReport:(unsigned __int8)report underchargeEventsSinceLastReport:(unsigned __int8)lastReport chargingEventsSinceLastReport:(unsigned __int8)sinceLastReport budSocAtLastEngagement:(unsigned __int8)engagement successRatio:(unsigned __int16)self0
{
  lastReportCopy = lastReport;
  sinceLastReportCopy = sinceLastReport;
  soCCopy = soC;
  reportCopy = report;
  cCopy = c;
  device = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.budMetrics", device];
  v11 = MEMORY[0x277CBEB38];
  v49 = device;
  v12 = [PowerUISmartChargeUtilities readDictForPreferenceKey:"readDictForPreferenceKey:inDomain:" inDomain:?];
  v13 = [v11 dictionaryWithDictionary:v12];

  v14 = 4;
  do
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.timeSpentAtLowerSoC", v14];
    v16 = [v13 objectForKeyedSubscript:v15];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.timeSpentAtLowerSoC", (v14 + 1)];
    [v13 setObject:v16 forKeyedSubscript:v17];

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.timeSpentAtHigherSoC", v14];
    v19 = [v13 objectForKeyedSubscript:v18];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.timeSpentAtHigherSoC", (v14 + 1)];
    [v13 setObject:v19 forKeyedSubscript:v20];

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.engagementEventsSinceLastReport", v14];
    v22 = [v13 objectForKeyedSubscript:v21];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.engagementEventsSinceLastReport", (v14 + 1)];
    [v13 setObject:v22 forKeyedSubscript:v23];

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.underchargeEventsSinceLastReport", v14];
    v25 = [v13 objectForKeyedSubscript:v24];
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.underchargeEventsSinceLastReport", (v14 + 1)];
    [v13 setObject:v25 forKeyedSubscript:v26];

    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.chargingEventsSinceLastReport", v14];
    v28 = [v13 objectForKeyedSubscript:v27];
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.chargingEventsSinceLastReport", (v14 + 1)];
    [v13 setObject:v28 forKeyedSubscript:v29];

    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.budSocAtLastEngagement", v14];
    v31 = [v13 objectForKeyedSubscript:v30];
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.budSocAtLastEngagement", (v14 + 1)];
    [v13 setObject:v31 forKeyedSubscript:v32];

    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.successRatio", v14];
    v34 = [v13 objectForKeyedSubscript:v33];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.successRatio", (v14 + 1)];
    [v13 setObject:v34 forKeyedSubscript:v35];

    v36 = v14 != 0;
    v14 = (v14 - 1);
  }

  while (v14 != 0 && v36);
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:cCopy];
  [v13 setObject:v37 forKeyedSubscript:@"1.timeSpentAtLowerSoC"];

  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:soCCopy];
  [v13 setObject:v38 forKeyedSubscript:@"1.timeSpentAtHigherSoC"];

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:reportCopy];
  [v13 setObject:v39 forKeyedSubscript:@"1.engagementEventsSinceLastReport"];

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:lastReportCopy];
  [v13 setObject:v40 forKeyedSubscript:@"1.underchargeEventsSinceLastReport"];

  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sinceLastReportCopy];
  [v13 setObject:v41 forKeyedSubscript:@"1.chargingEventsSinceLastReport"];

  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:engagement];
  [v13 setObject:v42 forKeyedSubscript:@"1.budSocAtLastEngagement"];

  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:ratio];
  [v13 setObject:v43 forKeyedSubscript:@"1.successRatio"];

  [PowerUISmartChargeUtilities setDict:v13 forPreferenceKey:v49 inDomain:@"com.apple.smartcharging.topoffprotection.audioaccessories"];
}

- (void)reportSessionMetricsForSide:(unsigned __int8)side withTimeSpendAtLowerSoC:(unsigned __int16)c timeSpentAtHigherSoC:(unsigned __int16)soC engagementEventsSinceLastReport:(unsigned __int8)report underchargeEventsSinceLastReport:(unsigned __int8)lastReport chargingEventsSinceLastReport:(unsigned __int8)sinceLastReport budSocAtLastEngagement:(unsigned __int8)engagement successRatio:(unsigned __int16)self0 deviceType:(id)self1
{
  sinceLastReportCopy = sinceLastReport;
  lastReportCopy = lastReport;
  reportCopy = report;
  soCCopy = soC;
  cCopy = c;
  sideCopy = side;
  v36 = *MEMORY[0x277D85DE8];
  v18 = MEMORY[0x277CBEB38];
  typeCopy = type;
  dictionary = [v18 dictionary];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sideCopy];
  [dictionary setObject:v21 forKeyedSubscript:@"BudSide"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:cCopy];
  [dictionary setObject:v22 forKeyedSubscript:@"TimeSpentAtLowerSoC"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:soCCopy];
  [dictionary setObject:v23 forKeyedSubscript:@"TimeSpentAtHigherSoC"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:reportCopy];
  [dictionary setObject:v24 forKeyedSubscript:@"EngagementEventsSinceLastReport"];

  v25 = [MEMORY[0x277CCABB0] numberWithInt:reportCopy != 0];
  [dictionary setObject:v25 forKeyedSubscript:@"AtLeastOneEngagementEventSinceLastReport"];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:lastReportCopy];
  [dictionary setObject:v26 forKeyedSubscript:@"UnderchargeEventsSinceLastReport"];

  v27 = [MEMORY[0x277CCABB0] numberWithInt:lastReportCopy != 0];
  [dictionary setObject:v27 forKeyedSubscript:@"AtLeastOneUnderchargeEventSinceLastReport"];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sinceLastReportCopy];
  [dictionary setObject:v28 forKeyedSubscript:@"ChargingEventsSinceLastReport"];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:engagement];
  [dictionary setObject:v29 forKeyedSubscript:@"BudSocAtLastEngagement"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:ratio];
  [dictionary setObject:v30 forKeyedSubscript:@"SuccessRatio"];

  [dictionary setObject:typeCopy forKeyedSubscript:@"AudioAccessoryType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accessoryLog = self->_accessoryLog;
    if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = dictionary;
      _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "In mocking mode, do not report session analytics: %@", buf, 0xCu);
    }
  }

  else
  {
    v32 = dictionary;
    AnalyticsSendEventLazy();
    v33 = self->_accessoryLog;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v32;
      _os_log_impl(&dword_21B766000, v33, OS_LOG_TYPE_DEFAULT, "Reported session metrics to CoreAnalytics %@", buf, 0xCu);
    }
  }
}

- (BOOL)runUpdateForDevice:(BTDeviceImpl *)device withHash:(id)hash asInitialUpdate:(BOOL)update
{
  updateCopy = update;
  v116 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  if (device)
  {
    v9 = os_transaction_create();
    hardcodedTimeDelta = self->_hardcodedTimeDelta;
    v11 = [(PowerUIBluetoothHandler *)self->_btHandler getAddressStringForDevice:device];
    v12 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:v11];
    v13 = v12;
    if (hashCopy)
    {
      expectedHash = [v12 expectedHash];

      if (expectedHash != hashCopy)
      {
        accessoryLog = self->_accessoryLog;
        LOBYTE(device) = 0;
        if (!os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
        {
LABEL_37:

          goto LABEL_38;
        }

        *buf = 138412290;
        v113 = *&hashCopy;
        _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "runUpdate hash '%@' does not match, this message must be old.", buf, 0xCu);
LABEL_16:
        LOBYTE(device) = 0;
        goto LABEL_37;
      }
    }

    else
    {
      v17 = self->_accessoryLog;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "runUpdate called without hash, proceed.", buf, 2u);
      }
    }

    if (![(PowerUIBluetoothHandler *)self->_btHandler isDeviceConnected:device forSession:self->_session])
    {
      v22 = self->_accessoryLog;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v113 = *&v11;
        _os_log_impl(&dword_21B766000, v22, OS_LOG_TYPE_DEFAULT, "Device with address '%@' is not connected to AACP, do not run OBC update.", buf, 0xCu);
      }

      [v13 setManagerState:4];
      goto LABEL_16;
    }

    v108 = v9;
    requiredFullChargeDate = [(PowerUIWalletSignalMonitor *)self->_walletMonitor requiredFullChargeDate];
    v107 = requiredFullChargeDate;
    if (requiredFullChargeDate)
    {
      v19 = requiredFullChargeDate;
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      v21 = [v19 isEqualToDate:distantPast];
    }

    else
    {
      v21 = 0;
    }

    btHandler = [(PowerUIAudioAccessorySmartChargeManager *)self btHandler];
    v24 = [btHandler protocolForDevice:device];

    if (v24 == 3)
    {
      if (v21)
      {
        v25 = self->_accessoryLog;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "A boarding pass was found within 24 hours, temporarily disable OBC via v2 protocol", buf, 2u);
        }

        LOBYTE(device) = [(PowerUIAudioAccessorySmartChargeManager *)self setStateViaV2Protocol:3 forDevice:device];
      }

      else
      {
        LOBYTE(device) = 1;
      }

      goto LABEL_36;
    }

    if ([v13 temporarilyDisabled])
    {
      v26 = self->_accessoryLog;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v113 = *&v11;
        v27 = "Device with address '%@' has OBC temporarily disabled, do not run OBC update.";
LABEL_34:
        _os_log_impl(&dword_21B766000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
        goto LABEL_35;
      }

      goto LABEL_35;
    }

    if (([v13 enabled] & 1) == 0)
    {
      v26 = self->_accessoryLog;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v113 = *&v11;
        v27 = "Device with address '%@' has OBC disabled, do not run OBC update.";
        goto LABEL_34;
      }

LABEL_35:
      [v13 setManagerState:2];
      LOBYTE(device) = 0;
LABEL_36:
      v9 = v108;

      goto LABEL_37;
    }

    if (v21)
    {
      v28 = self->_accessoryLog;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v28, OS_LOG_TYPE_DEFAULT, "A boarding pass was found within 24 hours, temporarily disable OBC", buf, 2u);
      }

      date = [MEMORY[0x277CBEAA8] date];
      v30 = [(PowerUIAudioAccessorySmartChargeManager *)self defaultDateToDisableUntilGivenDate:date];
      LOBYTE(device) = 1;
      [(PowerUIAudioAccessorySmartChargeManager *)self setTemporarilyDisabled:1 until:v30 forDevice:v11];

      [v13 setManagerState:5];
      goto LABEL_36;
    }

    lastSentDate = [v13 lastSentDate];
    v33 = self->_accessoryLog;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v113 = *&v11;
      v114 = 2112;
      v115 = hashCopy;
      _os_log_impl(&dword_21B766000, v33, OS_LOG_TYPE_DEFAULT, "runUpdate called for device '%@', hash: %@", buf, 0x16u);
    }

    date2 = [MEMORY[0x277CBEAA8] date];
    v106 = date2;
    if (updateCopy)
    {
      v35 = self->_accessoryLog;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v35, OS_LOG_TYPE_DEFAULT, "This is the initial update, re-send last prediction.", buf, 2u);
      }

      v36 = lastSentDate;
      [lastSentDate timeIntervalSinceDate:date2];
      v38 = v37;
      v39 = _os_feature_enabled_impl();
      v40 = 0;
      if (v39 && v38 > 0.0)
      {
        v40 = [(PowerUIAudioAccessorySmartChargeManager *)self sendTimeDeltaInSeconds:v38 toAccessory:device];
      }

      v105 = v40;
      [v13 setManagerState:1];
      integerValue2 = 60;
LABEL_85:
      v89 = dispatch_walltime(0, 1000000000 * integerValue2);
      v90 = objc_alloc_init(MEMORY[0x277CCAD78]);
      [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetExpectedHash:v90 forDevice:v11];
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __87__PowerUIAudioAccessorySmartChargeManager_runUpdateForDevice_withHash_asInitialUpdate___block_invoke;
      block[3] = &unk_2782D4B58;
      block[4] = self;
      deviceCopy = device;
      v92 = v90;
      v110 = v92;
      dispatch_after(v89, queue, block);
      v93 = self->_accessoryLog;
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        v94 = MEMORY[0x277CCABB0];
        v95 = v93;
        v96 = [v94 numberWithDouble:integerValue2 / 60.0];
        *buf = 138412290;
        v113 = *&v96;
        _os_log_impl(&dword_21B766000, v95, OS_LOG_TYPE_DEFAULT, "Next update queued in %@ minutes", buf, 0xCu);
      }

      LOBYTE(device) = v105 == 0;

      goto LABEL_36;
    }

    v104 = [(PowerUIMLAudioAccessoryModelPredictor *)self->_predictor chargingDecisionForDate:date2 forAudioAccessory:v11];
    if ([v104 state] != 1 || hardcodedTimeDelta)
    {
      if ([v104 state] != 2 || hardcodedTimeDelta)
      {
        if ([v104 state] != 3 || hardcodedTimeDelta)
        {
          if (![v104 state] || hardcodedTimeDelta)
          {
            [v104 smartChargeDuration];
            if (hardcodedTimeDelta)
            {
              integerValue = [(NSNumber *)self->_hardcodedTimeDelta integerValue];
              v99 = self->_accessoryLog;
              if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                v113 = integerValue;
                _os_log_impl(&dword_21B766000, v99, OS_LOG_TYPE_DEFAULT, "Applied manual override for prediction, it is now: %f", buf, 0xCu);
              }
            }

            else
            {
              integerValue = v97 * 60.0;
            }

            if (_os_feature_enabled_impl())
            {
              v105 = [(PowerUIAudioAccessorySmartChargeManager *)self sendTimeDeltaInSeconds:integerValue toAccessory:device];
            }

            else
            {
              v100 = self->_accessoryLog;
              if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_21B766000, v100, OS_LOG_TYPE_DEFAULT, "FeatureFlag not enabled or device type not supported, do not send message.", buf, 2u);
              }

              v105 = 0;
            }

            [v13 setManagerState:6];
            goto LABEL_65;
          }

          if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
          {
            [PowerUIAudioAccessorySmartChargeManager runUpdateForDevice:withHash:asInitialUpdate:];
          }

LABEL_64:
          v105 = 0;
LABEL_65:
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          btHandler2 = [(PowerUIAudioAccessorySmartChargeManager *)self btHandler];
          v49 = -[PowerUIAudioAccessorySmartChargeManager nameForProductID:](self, "nameForProductID:", [btHandler2 productIDForDevice:device]);
          [dictionary setObject:v49 forKeyedSubscript:@"AudioAccessoryType"];

          v50 = MEMORY[0x277CCABB0];
          [v104 engagementConfidence];
          v51 = [v50 numberWithDouble:?];
          [dictionary setObject:v51 forKeyedSubscript:@"EngagementModelPrediction"];

          v52 = MEMORY[0x277CCABB0];
          [v104 engagementConfidence];
          v103 = [v52 numberWithInt:(5 * ((v53 * 100.0) / 5))];
          [dictionary setObject:? forKeyedSubscript:?];
          v54 = MEMORY[0x277CCABB0];
          [v104 smartChargeDuration];
          v55 = [v54 numberWithDouble:?];
          [dictionary setObject:v55 forKeyedSubscript:@"DurationModelPrediction"];

          v56 = MEMORY[0x277CCABB0];
          [v104 smartChargeDuration];
          v58 = 30 * (v57 / 30.0);
          if (v58 < 0)
          {
            v59 = 0xFFFFFFFFLL;
          }

          else
          {
            v59 = v58;
          }

          v102 = [v56 numberWithInt:v59];
          [dictionary setObject:? forKeyedSubscript:?];
          modelVersion = [v104 modelVersion];
          [dictionary setObject:modelVersion forKeyedSubscript:@"ModelVersion"];

          v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v104, "state")}];
          [dictionary setObject:v61 forKeyedSubscript:@"PredictionContainerState"];

          lastSeenDate = [v13 lastSeenDate];
          [lastSeenDate timeIntervalSinceDate:lastSentDate];
          v64 = v63;

          v65 = [MEMORY[0x277CCABB0] numberWithDouble:v64];
          [dictionary setObject:v65 forKeyedSubscript:@"PredictionRealityDelta"];

          v66 = v64 / 3600.0;
          if (v64 / 3600.0 > 48.0)
          {
            v66 = 48.0;
          }

          v101 = [MEMORY[0x277CCABB0] numberWithDouble:v66];
          [dictionary setObject:? forKeyedSubscript:?];
          [lastSentDate timeIntervalSinceDate:v106];
          v68 = v67;
          v69 = [(NSMutableDictionary *)self->_latestAnalyticsForDevice objectForKey:v11];
          v36 = lastSentDate;
          if (v69 && (v70 = v69, -[NSMutableDictionary objectForKeyedSubscript:](self->_latestAnalyticsForDevice, "objectForKeyedSubscript:", v11), v71 = objc_claimAutoreleasedReturnValue(), [v71 objectForKey:@"UnderchargeHappened"], v72 = objc_claimAutoreleasedReturnValue(), v72, v71, v70, v72))
          {
            v73 = [(NSMutableDictionary *)self->_latestAnalyticsForDevice objectForKeyedSubscript:v11];
            v74 = [v73 objectForKey:@"UnderchargeHappened"];
            [dictionary setObject:v74 forKeyedSubscript:@"UnderchargeHappened"];

            v75 = self->_accessoryLog;
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              v76 = v75;
              v77 = [dictionary objectForKeyedSubscript:@"UnderchargeHappened"];
              *buf = 138412290;
              v113 = *&v77;
              _os_log_impl(&dword_21B766000, v76, OS_LOG_TYPE_DEFAULT, "Undercharge decision already made, it was: %@", buf, 0xCu);
            }
          }

          else if (v68 <= 0.0 || ([v13 lastUnderchargeRecordedForPrediction], v78 = objc_claimAutoreleasedReturnValue(), v79 = objc_msgSend(v36, "isEqualToDate:", v78), v78, (v79 & 1) != 0))
          {
            v80 = self->_accessoryLog;
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              v81 = MEMORY[0x277CCABB0];
              v82 = v80;
              v83 = [v81 numberWithDouble:v68];
              *buf = 138412546;
              v113 = *&v83;
              v114 = 2112;
              v115 = v36;
              _os_log_impl(&dword_21B766000, v82, OS_LOG_TYPE_DEFAULT, "Not an undercharge, either last prediciton delta  %@ < 0 or already recorded for last prediction %@", buf, 0x16u);
            }

            [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"UnderchargeHappened"];
          }

          else
          {
            v84 = self->_accessoryLog;
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
            {
              v85 = MEMORY[0x277CCABB0];
              v86 = v84;
              v87 = [v85 numberWithDouble:v68];
              *buf = 138412546;
              v113 = *&v87;
              v114 = 2112;
              v115 = v36;
              _os_log_impl(&dword_21B766000, v86, OS_LOG_TYPE_DEFAULT, "New undercharge, last prediciton delta %@ > 0 and not already recorded for last prediction %@", buf, 0x16u);
            }

            [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UnderchargeHappened"];
            [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetLastUnderchargeRecordedForPrediction:v36 forDevice:v11];
          }

          [(NSMutableDictionary *)self->_latestAnalyticsForDevice setObject:dictionary forKeyedSubscript:v11];

          hardcodedTimeBetweenUpdates = self->_hardcodedTimeBetweenUpdates;
          if (hardcodedTimeBetweenUpdates)
          {
            integerValue2 = [(NSNumber *)hardcodedTimeBetweenUpdates integerValue];
          }

          else
          {
            integerValue2 = 3600;
          }

          goto LABEL_85;
        }

        v46 = self->_accessoryLog;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B766000, v46, OS_LOG_TYPE_DEFAULT, "Model prediction timeDelta is below zero, do not send timeDelta.", buf, 2u);
        }

        v43 = v13;
        v44 = 11;
      }

      else
      {
        v45 = self->_accessoryLog;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B766000, v45, OS_LOG_TYPE_DEFAULT, "Model did not engage, do not send a timeDelta.", buf, 2u);
        }

        v43 = v13;
        v44 = 3;
      }
    }

    else
    {
      v42 = self->_accessoryLog;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v42, OS_LOG_TYPE_DEFAULT, "Not enough data, do not send a timeDelta.", buf, 2u);
      }

      v43 = v13;
      v44 = 10;
    }

    [v43 setManagerState:v44];
    [(PowerUIAudioAccessorySmartChargeManager *)self setOBCState:0 forDevice:v11];
    goto LABEL_64;
  }

  v16 = self->_accessoryLog;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "runUpdate called for nil device.", buf, 2u);
    LOBYTE(device) = 0;
  }

LABEL_38:

  return device;
}

- (id)nameForProductID:(unsigned int)d
{
  if (d > 8218)
  {
    if (d > 8227)
    {
      switch(d)
      {
        case 0x2024u:
          return @"B698c";
        case 0x2027u:
          return @"B788";
        case 0x2028u:
          return @"B788CH";
      }
    }

    else
    {
      switch(d)
      {
        case 0x201Bu:
          return @"B768M";
        case 0x201Eu:
          return @"B768CHE";
        case 0x2020u:
          return @"B768CHM";
      }
    }
  }

  else if (d > 8210)
  {
    switch(d)
    {
      case 0x2013u:
        return @"B688";
      case 0x2014u:
        return @"B698";
      case 0x2019u:
        return @"B768E";
    }
  }

  else
  {
    switch(d)
    {
      case 0x2002u:
        return @"B188";
      case 0x200Eu:
        return @"B298";
      case 0x200Fu:
        return @"B288";
    }
  }

  if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
  {
    [PowerUIAudioAccessorySmartChargeManager nameForProductID:];
  }

  return @"Unknown";
}

- (unint64_t)sendTimeDeltaInSeconds:(unsigned int)seconds toAccessory:(BTDeviceImpl *)accessory
{
  v5 = *&seconds;
  v31 = *MEMORY[0x277D85DE8];
  BTAccessoryManagerGetDefault();
  v7 = [(PowerUIBluetoothHandler *)self->_btHandler getAddressStringForDevice:accessory];
  v30 = 0;
  v29 = 0;
  btHandler = [(PowerUIAudioAccessorySmartChargeManager *)self btHandler];
  v9 = [btHandler protocolForDevice:accessory];
  if (v9 == 3)
  {
    v10 = 2;
  }

  else if (v9 == 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = 0;
    if (v9 == 1)
    {
      LODWORD(v29) = 1000 * v5;
      goto LABEL_8;
    }
  }

  LOBYTE(v29) = v10;
  *(&v29 + 1) = 1000 * v5;
LABEL_8:

  v11 = [(PowerUIBluetoothHandler *)self->_btHandler sendCustomMessageWrapperWithManager:0 withMessageType:0x20000 withDeviceHandle:accessory withData:&v29 withDataSize:9];
  accessoryLog = self->_accessoryLog;
  if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = MEMORY[0x277CCABB0];
    v14 = accessoryLog;
    v15 = [v13 numberWithUnsignedInt:v5];
    0xE10uLL = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5 / 0xE10uLL];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v11];
    *buf = 138412802;
    v24 = v15;
    v25 = 2112;
    v26 = 0xE10uLL;
    v27 = 2112;
    v28 = v17;
    _os_log_impl(&dword_21B766000, v14, OS_LOG_TYPE_DEFAULT, "... custom message sent - timeDelta: %@ seconds (%@ hours) - Error code: %@", buf, 0x20u);
  }

  if (!v11)
  {
    v18 = MEMORY[0x277CBEAA8];
    date = [MEMORY[0x277CBEAA8] date];
    v20 = [v18 dateWithTimeInterval:date sinceDate:v5];

    [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetLastSentDate:v20 forDevice:v7];
    v21 = self->_accessoryLog;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v20;
      _os_log_impl(&dword_21B766000, v21, OS_LOG_TYPE_DEFAULT, "Update AccessoryStatus with last sent date: %@", buf, 0xCu);
    }

    [(NSDistributedNotificationCenter *)self->_notificationCenter postNotificationName:@"com.apple.powerui.audioaccessorysmartchargedeadlinechanged" object:v7];
  }

  return v11;
}

- (void)reportDailyMetrics
{
  v27 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    [(NSLock *)self->_deviceArrayLock lock];
    if ([(NSMutableArray *)self->_deviceArray count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v3 = self->_deviceArray;
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v4)
      {
        v5 = v4;
        LODWORD(v6) = 0;
        LODWORD(v7) = 0;
        LODWORD(v8) = 0;
        v9 = *v21;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v21 != v9)
            {
              objc_enumerationMutation(v3);
            }

            v11 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:*(*(&v20 + 1) + 8 * i)];
            enabled = [v11 enabled];
            v7 = v7 + (enabled ^ 1);
            v8 = (v8 + enabled);
            v6 = v6 + [v11 temporarilyDisabled];
          }

          v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
        }

        while (v5);
      }

      else
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
      }

      [(NSLock *)self->_deviceArrayLock unlock];
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v15 = [MEMORY[0x277CCABB0] numberWithInt:v8];
      [dictionary setObject:v15 forKeyedSubscript:@"NumberOfEnabledDevices"];

      v16 = [MEMORY[0x277CCABB0] numberWithInt:v7];
      [dictionary setObject:v16 forKeyedSubscript:@"NumberOfDisabledDevices"];

      v17 = [MEMORY[0x277CCABB0] numberWithInt:v6];
      [dictionary setObject:v17 forKeyedSubscript:@"NumberOfTemporarilyDisabledDevices"];

      v18 = dictionary;
      AnalyticsSendEventLazy();
      accessoryLog = self->_accessoryLog;
      if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v18;
        _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Reported daily metrics to CoreAnalytics %@", buf, 0xCu);
      }
    }

    else
    {
      deviceArrayLock = self->_deviceArrayLock;

      [(NSLock *)deviceArrayLock unlock];
    }
  }
}

- (id)firstUseNotificationRequestForDeviceType:(unsigned int)type
{
  v4 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/PrivateFrameworks/PowerUI.framework"];
  v6 = [MEMORY[0x277CCA8D8] bundleWithURL:v5];
  v7 = @"Localizable";
  v8 = [v6 localizedStringForKey:@"OBC_FEATURE_ENABLED_TITLE" value:&stru_282D0B728 table:@"Localizable"];
  [v4 setTitle:v8];

  v9 = objc_alloc_init(MEMORY[0x277CCABB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [v9 setLocale:currentLocale];

  [v9 setNumberStyle:3];
  [v9 setMaximumFractionDigits:0];
  [v9 setMultiplier:&unk_282D4E548];
  v11 = [v9 stringFromNumber:&unk_282D4E590];
  if (type - 8206 > 0x16 || ((1 << (type - 14)) & 0x400041) == 0)
  {
    v7 = @"Localizable-B688";
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = [v6 localizedStringForKey:@"AUDIOACCESSORY_OBC_FIRST_USE_BODY" value:&stru_282D0B728 table:v7];
  v14 = [v12 stringWithFormat:v13, v11];
  [v4 setBody:v14];

  [v4 setCategoryIdentifier:@"firstTimeCategory"];
  [v4 setShouldHideDate:1];
  [v4 setShouldHideTime:1];
  [v4 setShouldSuppressDefaultAction:1];
  v15 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:@"bolt.badge.clock.fill"];
  [v4 setIcon:v15];

  v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:21600.0];
  [v4 setExpirationDate:v16];

  v17 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"audioAccessoryFirstUseNotification" content:v4 trigger:0];
  [v17 setDestinations:6];

  return v17;
}

- (void)client:(id)client connectAndDisableOBCforDevice:(id)device withHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  deviceCopy = device;
  handlerCopy = handler;
  accessoryLog = self->_accessoryLog;
  if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = deviceCopy;
    _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Request connectAndDisableOBCforDevice for address: %@", &v27, 0xCu);
  }

  v12 = [(PowerUIBluetoothHandler *)self->_btHandler getDeviceForAddressString:deviceCopy forSession:self->_session];
  if (!v12)
  {
    v22 = self->_accessoryLog;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_21B766000, v22, OS_LOG_TYPE_DEFAULT, "No device for connectAndDisableOBCforDevice.", &v27, 2u);
    }

    goto LABEL_12;
  }

  v13 = v12;
  if (![(PowerUIBluetoothHandler *)self->_btHandler isDeviceConnected:v12 forSession:self->_session])
  {
    v14 = dispatch_semaphore_create(0);
    btConnectionSemaphore = self->_btConnectionSemaphore;
    self->_btConnectionSemaphore = v14;

    v16 = [(PowerUIBluetoothHandler *)self->_btHandler deviceConnectWrapper:v13];
    v17 = self->_btConnectionSemaphore;
    v18 = dispatch_time(0, 15000000000);
    v19 = dispatch_semaphore_wait(v17, v18);
    v20 = v19;
    if (v16 || v19)
    {
      v23 = self->_accessoryLog;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = MEMORY[0x277CCABB0];
        v25 = v23;
        v26 = [v24 numberWithLong:v20];
        v27 = 138412546;
        v28 = deviceCopy;
        v29 = 2112;
        v30 = v26;
        _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "Connecting device '%@' was not successful. timeout = %@", &v27, 0x16u);
      }

LABEL_12:
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
      goto LABEL_13;
    }
  }

  [(PowerUIAudioAccessorySmartChargeManager *)self client:clientCopy setState:3 forDevice:deviceCopy withHandler:handlerCopy];
  v21 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:deviceCopy];
  [v21 setManagerState:8];

LABEL_13:
}

- (void)isSmartChargingCurrentlyEnabledForDevice:(id)device withHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  handlerCopy = handler;
  if (deviceCopy)
  {
    v8 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:deviceCopy];
    accessoryLog = self->_accessoryLog;
    if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = MEMORY[0x277CCABB0];
      v11 = accessoryLog;
      v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v8, "currentState")}];
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "Returning current state: %@", &v13, 0xCu);
    }

    handlerCopy[2](handlerCopy, [v8 currentState], 0);
  }

  else
  {
    if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
    {
      [PowerUIAudioAccessorySmartChargeManager isSmartChargingCurrentlyEnabledForDevice:withHandler:];
    }

    handlerCopy[2](handlerCopy, 0, 0);
  }
}

- (BOOL)setOBCState:(BOOL)state forDevice:(id)device
{
  stateCopy = state;
  v36 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (self->_session)
  {
    v7 = [(PowerUIBluetoothHandler *)self->_btHandler getDeviceForAddressString:deviceCopy forSession:?];
    BTAccessoryManagerGetDefault();
    v8 = [(PowerUIBluetoothHandler *)self->_btHandler isDeviceConnected:v7 forSession:self->_session];
    accessoryLog = self->_accessoryLog;
    v10 = os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (stateCopy)
      {
        if (v10)
        {
          v11 = MEMORY[0x277CCABB0];
          v12 = accessoryLog;
          v13 = [v11 numberWithBool:1];
          *buf = 138412546;
          v33 = v13;
          v34 = 2112;
          v35 = deviceCopy;
          _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "Sending enabling state '%@' to device with address '%@'.", buf, 0x16u);
        }

        [(PowerUIAudioAccessorySmartChargeManager *)self runUpdateForDevice:v7 withHash:0];
LABEL_25:
        v15 = 1;
        goto LABEL_26;
      }

      if (v10)
      {
        v18 = MEMORY[0x277CCABB0];
        v19 = accessoryLog;
        v20 = [v18 numberWithBool:0];
        *buf = 138412546;
        v33 = v20;
        v34 = 2112;
        v35 = deviceCopy;
        _os_log_impl(&dword_21B766000, v19, OS_LOG_TYPE_DEFAULT, "Sending disabling state '%@' to device with address '%@'.", buf, 0x16u);
      }

      v31 = 0;
      v30 = 0;
      btHandler = [(PowerUIAudioAccessorySmartChargeManager *)self btHandler];
      v22 = [btHandler protocolForDevice:v7];
      if (v22 == 3)
      {
        v23 = 2;
      }

      else if (v22 == 2)
      {
        v23 = 1;
      }

      else
      {
        v23 = 0;
        if (v22 == 1)
        {
          LODWORD(v30) = 0;
          goto LABEL_21;
        }
      }

      LOBYTE(v30) = v23;
      *(&v30 + 1) = 0;
LABEL_21:

      v24 = [(PowerUIBluetoothHandler *)self->_btHandler sendCustomMessageWrapperWithManager:0 withMessageType:0x20000 withDeviceHandle:v7 withData:&v30 withDataSize:9];
      v25 = self->_accessoryLog;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = MEMORY[0x277CCABB0];
        v27 = v25;
        v28 = [v26 numberWithUnsignedLong:v24];
        *buf = 138412546;
        v33 = deviceCopy;
        v34 = 2112;
        v35 = v28;
        _os_log_impl(&dword_21B766000, v27, OS_LOG_TYPE_DEFAULT, "Message sent to disable OBC for device '%@' - Error code: %@", buf, 0x16u);
      }

      if (!v24)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (!v10)
    {
LABEL_24:
      v15 = 0;
      goto LABEL_26;
    }

    *buf = 138412290;
    v33 = deviceCopy;
    v16 = "Device with address '%@' is not connected to AACP, do not try to set OBC state.";
    v17 = accessoryLog;
LABEL_11:
    _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
    goto LABEL_24;
  }

  v14 = self->_accessoryLog;
  v15 = 0;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = deviceCopy;
    v16 = "Bluetooth session has not been intialized, device with address '%@' is not connected, do not try to set OBC state.";
    v17 = v14;
    goto LABEL_11;
  }

LABEL_26:

  return v15;
}

- (void)client:(id)client setState:(unint64_t)state forDevice:(id)device withHandler:(id)handler
{
  v46 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  deviceCopy = device;
  handlerCopy = handler;
  v13 = [(PowerUIBluetoothHandler *)self->_btHandler getDeviceForAddressString:deviceCopy forSession:self->_session];
  if (v13)
  {
    v14 = v13;
    v15 = [(PowerUIBluetoothHandler *)self->_btHandler protocolForDevice:v13];
    accessoryLog = self->_accessoryLog;
    if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = accessoryLog;
      v18 = [(PowerUIAudioAccessorySmartChargeManager *)self stringFromState:state];
      v40 = 138412802;
      v41 = clientCopy;
      v42 = 2112;
      stateCopy = v18;
      v44 = 1024;
      v45 = v15;
      _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "%@ requests state %@. Using protocol: %hhu", &v40, 0x1Cu);
    }

    if ((v15 - 1) <= 1)
    {
      v19 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:deviceCopy];
      currentState = [v19 currentState];
      v21 = self->_accessoryLog;
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (currentState == state)
      {
        if (v22)
        {
          v23 = v21;
          v24 = [(PowerUIAudioAccessorySmartChargeManager *)self stringFromState:state];
          v40 = 138412546;
          v41 = clientCopy;
          v42 = 2112;
          stateCopy = v24;
          _os_log_impl(&dword_21B766000, v23, OS_LOG_TYPE_DEFAULT, "%@ requests state %@, but this is already the current state. Do nothing.", &v40, 0x16u);
        }

        handlerCopy[2](handlerCopy, 1, 0);
        goto LABEL_38;
      }

      if (v22)
      {
        v30 = v21;
        v31 = [(PowerUIAudioAccessorySmartChargeManager *)self stringFromState:state];
        v40 = 138412546;
        v41 = clientCopy;
        v42 = 2112;
        stateCopy = v31;
        _os_log_impl(&dword_21B766000, v30, OS_LOG_TYPE_DEFAULT, "%@ requests state: %@", &v40, 0x16u);
      }

      if (state > 1)
      {
        if (state == 2)
        {
          handlerCopy[2](handlerCopy, 0, 0);
          goto LABEL_38;
        }

        if (state == 3)
        {
          date = [MEMORY[0x277CBEAA8] date];
          v37 = [(PowerUIAudioAccessorySmartChargeManager *)self defaultDateToDisableUntilGivenDate:date];
          [(PowerUIAudioAccessorySmartChargeManager *)self setTemporarilyDisabled:1 until:v37 forDevice:deviceCopy];

LABEL_37:
          handlerCopy[2](handlerCopy, 1, 0);
          [(NSDistributedNotificationCenter *)self->_notificationCenter postNotificationName:@"com.apple.powerui.audioaccessorysmartchargestatuschanged" object:deviceCopy];
          goto LABEL_38;
        }
      }

      else
      {
        if (!state)
        {
          [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetStatusForDevice:deviceCopy withCurrentState:0 withEnabled:0 withDisabledUntilDate:0 withTemporarilyDisabled:0];
          selfCopy2 = self;
          v33 = 0;
          goto LABEL_36;
        }

        if (state == 1)
        {
          [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetStatusForDevice:deviceCopy withCurrentState:1 withEnabled:1 withDisabledUntilDate:0 withTemporarilyDisabled:0];
          selfCopy2 = self;
          v33 = 1;
LABEL_36:
          [(PowerUIAudioAccessorySmartChargeManager *)selfCopy2 setOBCState:v33 forDevice:deviceCopy];
          goto LABEL_37;
        }
      }

      v38 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PowerUISmartChargingErrorDomain" code:1 userInfo:0];
      (handlerCopy)[2](handlerCopy, 0, v38);

LABEL_38:
      goto LABEL_39;
    }

    if (v15)
    {
      if (v15 == 3)
      {
        switch(state)
        {
          case 0uLL:
            [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetStatusForDevice:deviceCopy withCurrentState:0 withEnabled:0 withDisabledUntilDate:0 withTemporarilyDisabled:0];
            selfCopy5 = self;
            v29 = 0;
            goto LABEL_43;
          case 3uLL:
            v39 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:86400.0];
            [(PowerUIAudioAccessorySmartChargeManager *)self setTemporarilyDisabled:1 until:v39 forDevice:deviceCopy];

            selfCopy5 = self;
            v29 = 3;
            goto LABEL_43;
          case 1uLL:
            [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetStatusForDevice:deviceCopy withCurrentState:1 withEnabled:1 withDisabledUntilDate:0 withTemporarilyDisabled:0];
            selfCopy5 = self;
            v29 = 1;
LABEL_43:
            handlerCopy[2](handlerCopy, [(PowerUIAudioAccessorySmartChargeManager *)selfCopy5 setStateViaV2Protocol:v29 forDevice:v14], 0);
            goto LABEL_39;
        }

        goto LABEL_12;
      }

      v34 = self->_accessoryLog;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 67109120;
        LODWORD(v41) = v15;
        _os_log_impl(&dword_21B766000, v34, OS_LOG_TYPE_DEFAULT, "protocol %hhu is unsupported, do nothing", &v40, 8u);
      }
    }

    else if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
    {
      [PowerUIAudioAccessorySmartChargeManager client:setState:forDevice:withHandler:];
    }

    v26 = MEMORY[0x277CCA9B8];
    v27 = 4;
    goto LABEL_30;
  }

  v25 = self->_accessoryLog;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v40 = 138412546;
    v41 = clientCopy;
    v42 = 2048;
    stateCopy = state;
    _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "No device for client '%@' setState '%lu' request.", &v40, 0x16u);
  }

LABEL_12:
  v26 = MEMORY[0x277CCA9B8];
  v27 = 1;
LABEL_30:
  v35 = [v26 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:v27 userInfo:0];
  (handlerCopy)[2](handlerCopy, 0, v35);

LABEL_39:
}

- (BOOL)setStateViaV2Protocol:(unint64_t)protocol forDevice:(BTDeviceImpl *)device
{
  v24 = *MEMORY[0x277D85DE8];
  if (!self->_session)
  {
    accessoryLog = self->_accessoryLog;
    v9 = os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT);
    LOBYTE(v10) = 0;
    if (!v9)
    {
      return v10;
    }

    *buf = 0;
    v11 = "Bluetooth session has not been intialized, device  is not connected, do not try to set OBC state.";
    goto LABEL_11;
  }

  BTAccessoryManagerGetDefault();
  if (![(PowerUIBluetoothHandler *)self->_btHandler isDeviceConnected:device forSession:self->_session])
  {
    accessoryLog = self->_accessoryLog;
    v12 = os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT);
    LOBYTE(v10) = 0;
    if (!v12)
    {
      return v10;
    }

    *buf = 0;
    v11 = "Device is not connected to AACP, do not try to set OBC state.";
LABEL_11:
    _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
LABEL_12:
    LOBYTE(v10) = 0;
    return v10;
  }

  v23 = 0;
  if (protocol == 3)
  {
    v7 = 254;
    goto LABEL_15;
  }

  if (protocol == 1)
  {
    v7 = 253;
    goto LABEL_15;
  }

  if (protocol)
  {
    v10 = os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR);
    if (!v10)
    {
      return v10;
    }

    [PowerUIAudioAccessorySmartChargeManager setStateViaV2Protocol:forDevice:];
    goto LABEL_12;
  }

  v7 = 255;
LABEL_15:
  v21 = 2;
  v22 = v7;
  v13 = [(PowerUIBluetoothHandler *)self->_btHandler sendCustomMessageWrapperWithManager:0 withMessageType:0x20000 withDeviceHandle:device withData:&v21 withDataSize:9];
  for (i = 0; i != 9; ++i)
  {
    v15 = self->_accessoryLog;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(&v21 + i);
      *buf = 67109120;
      LODWORD(protocolCopy) = v16;
      _os_log_debug_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEBUG, "  var: %u", buf, 8u);
    }
  }

  v17 = self->_accessoryLog;
  if (v13)
  {
    v10 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!v10)
    {
      return v10;
    }

    [(PowerUIAudioAccessorySmartChargeManager *)v17 setStateViaV2Protocol:v13 forDevice:protocol];
    goto LABEL_12;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    protocolCopy = protocol;
    _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "OBC Message (%lu) sent to device", buf, 0xCu);
  }

  LOBYTE(v10) = 1;
  return v10;
}

- (id)getOBCDeadlineFromCBDevice:(id)device
{
  v34[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = dispatch_semaphore_create(0);
  v6 = objc_alloc_init(MEMORY[0x277CBE030]);
  discovery = self->_discovery;
  self->_discovery = v6;

  [(CBDiscovery *)self->_discovery setDiscoveryFlags:0x20000000];
  v34[0] = deviceCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  [(CBDiscovery *)self->_discovery setDeviceFilter:v8];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__7;
  v28 = __Block_byref_object_dispose__7;
  v29 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __70__PowerUIAudioAccessorySmartChargeManager_getOBCDeadlineFromCBDevice___block_invoke;
  v21[3] = &unk_2782D4B80;
  v23 = &v24;
  v9 = v5;
  v22 = v9;
  [(CBDiscovery *)self->_discovery setDeviceFoundHandler:v21];
  v10 = self->_discovery;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__PowerUIAudioAccessorySmartChargeManager_getOBCDeadlineFromCBDevice___block_invoke_2;
  v20[3] = &unk_2782D4160;
  v20[4] = self;
  [(CBDiscovery *)v10 activateWithCompletion:v20];
  v11 = dispatch_time(0, 3000000000);
  v12 = dispatch_semaphore_wait(v9, v11);
  accessoryLog = self->_accessoryLog;
  if (v12)
  {
    if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
    {
      [PowerUIAudioAccessorySmartChargeManager getOBCDeadlineFromCBDevice:];
    }
  }

  else if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v25[5];
    *buf = 138412546;
    v31 = deviceCopy;
    v32 = 2112;
    v33 = v14;
    _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Got deadline from device (%@): %@", buf, 0x16u);
  }

  [(CBDiscovery *)self->_discovery invalidate];
  v15 = v25[5];
  date = [MEMORY[0x277CBEAA8] date];
  v17 = [v15 laterDate:date];
  LODWORD(v15) = v17 == v25[5];

  if (v15)
  {
    v18 = v25[5];
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v24, 8);

  return v18;
}

intptr_t __70__PowerUIAudioAccessorySmartChargeManager_getOBCDeadlineFromCBDevice___block_invoke(intptr_t result, void *a2)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    v3 = result;
    [a2 accessoryStatusOBCTime];
    if (v4 <= 0.0)
    {
      [MEMORY[0x277CBEAA8] distantPast];
    }

    else
    {
      [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    }
    v5 = ;
    v6 = *(*(v3 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(v3 + 32);

    return dispatch_semaphore_signal(v8);
  }

  return result;
}

void __70__PowerUIAudioAccessorySmartChargeManager_getOBCDeadlineFromCBDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "Error: %@", &v5, 0xCu);
  }
}

- (void)fullChargeDeadlineForDevice:(id)device withHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  handlerCopy = handler;
  btHandler = [(PowerUIAudioAccessorySmartChargeManager *)self btHandler];
  v9 = [btHandler getDeviceForAddressString:deviceCopy forSession:self->_session];

  btHandler2 = [(PowerUIAudioAccessorySmartChargeManager *)self btHandler];
  v11 = [btHandler2 protocolForDevice:v9];

  if (v11 == 3)
  {
    if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_DEBUG))
    {
      [PowerUIAudioAccessorySmartChargeManager fullChargeDeadlineForDevice:withHandler:];
    }

    v12 = [(PowerUIAudioAccessorySmartChargeManager *)self getOBCDeadlineFromCBDevice:deviceCopy];
    if (v12)
    {
      v13 = [PowerUISmartChargeUtilities roundedDateFromDate:v12];
      handlerCopy[2](handlerCopy, v13, 0);
    }

    else
    {
      handlerCopy[2](handlerCopy, 0, 0);
    }
  }

  else if ((v11 - 255) > 0xFFFFFF01)
  {
    v12 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:deviceCopy];
    lastSentDate = [v12 lastSentDate];
    v16 = [PowerUISmartChargeUtilities roundedDateFromDate:lastSentDate];

    [v16 timeIntervalSinceNow];
    if (v17 <= 0.0)
    {

      v16 = 0;
    }

    accessoryLog = self->_accessoryLog;
    if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v16;
      _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "fullChargeDeadline requested, returning: %@", &v19, 0xCu);
    }

    handlerCopy[2](handlerCopy, v16, 0);
  }

  else
  {
    v14 = self->_accessoryLog;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = deviceCopy;
      v21 = 1024;
      v22 = v11;
      _os_log_impl(&dword_21B766000, v14, OS_LOG_TYPE_DEFAULT, "Query for OBC deadline for device %@, but protocol is: %hhu", &v19, 0x12u);
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v12);
  }
}

- (void)unfilteredDeadlineForDevice:(id)device withHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:device];
  lastSentDate = [v7 lastSentDate];
  accessoryLog = self->_accessoryLog;
  if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = lastSentDate;
    _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Unfiltered deadline requested, returning: %@", &v10, 0xCu);
  }

  handlerCopy[2](handlerCopy, lastSentDate, 0);
}

- (void)client:(id)client updateOBCDeadline:(id)deadline forDevice:(id)device withHandler:(id)handler
{
  v41 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  deadlineCopy = deadline;
  deviceCopy = device;
  handlerCopy = handler;
  date = [MEMORY[0x277CBEAA8] date];
  if (deadlineCopy && ([deadlineCopy timeIntervalSinceDate:date], v15 <= 172800.0))
  {
    v17 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:deviceCopy];
    lastSentDate = [v17 lastSentDate];
    if (lastSentDate && (v19 = lastSentDate, [v17 lastSentDate], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "compare:", deadlineCopy), v20, v19, v21 == 1))
    {
      accessoryLog = self->_accessoryLog;
      if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
      {
        v23 = accessoryLog;
        lastSentDate2 = [v17 lastSentDate];
        v33 = 138413058;
        v34 = clientCopy;
        v35 = 2112;
        v36 = deadlineCopy;
        v37 = 2112;
        v38 = deviceCopy;
        v39 = 2112;
        v40 = lastSentDate2;
        _os_log_impl(&dword_21B766000, v23, OS_LOG_TYPE_DEFAULT, "%@ requests deadline update '%@' for device '%@', but on device deadline (%@) is newer", &v33, 0x2Au);
      }

      [(NSDistributedNotificationCenter *)self->_notificationCenter postNotificationName:@"com.apple.powerui.audioaccessorysmartchargedeadlinechanged" object:deviceCopy];
    }

    else
    {
      lastSentDate3 = [v17 lastSentDate];
      if (!lastSentDate3 || (v26 = lastSentDate3, [v17 lastSentDate], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "compare:", deadlineCopy), v27, v26, v28 == -1))
      {
        v30 = self->_accessoryLog;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v30;
          lastSentDate4 = [v17 lastSentDate];
          v33 = 138413058;
          v34 = clientCopy;
          v35 = 2112;
          v36 = deadlineCopy;
          v37 = 2112;
          v38 = deviceCopy;
          v39 = 2112;
          v40 = lastSentDate4;
          _os_log_impl(&dword_21B766000, v31, OS_LOG_TYPE_DEFAULT, "%@ requests deadline update '%@' for device '%@'. Update on device deadline (%@)", &v33, 0x2Au);
        }

        [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetLastSentDate:deadlineCopy forDevice:deviceCopy];
      }

      else
      {
        v29 = self->_accessoryLog;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v33 = 138412802;
          v34 = clientCopy;
          v35 = 2112;
          v36 = deadlineCopy;
          v37 = 2112;
          v38 = deviceCopy;
          _os_log_impl(&dword_21B766000, v29, OS_LOG_TYPE_DEFAULT, "%@ requests deadline update '%@' for device '%@', but dates are equal", &v33, 0x20u);
        }
      }
    }

    [v17 setManagerState:9];
    handlerCopy[2](handlerCopy, 1, 0);
  }

  else
  {
    v16 = self->_accessoryLog;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 138412802;
      v34 = clientCopy;
      v35 = 2112;
      v36 = deadlineCopy;
      v37 = 2112;
      v38 = deviceCopy;
      _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "ERROR: %@ requests invalid deadline update '%@' for device '%@'", &v33, 0x20u);
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PowerUISmartChargingErrorDomain" code:3 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v17);
  }
}

- (void)persistentlySetStatusForDevice:(id)device withCurrentState:(unint64_t)state withEnabled:(BOOL)enabled withDisabledUntilDate:(id)date withTemporarilyDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  enabledCopy = enabled;
  dateCopy = date;
  deviceCopy = device;
  v24 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:deviceCopy];
  [v24 setCurrentState:state];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
  [PowerUIAudioAccessorySmartChargeManager setNumber:v14 forPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.currentState." andDevice:deviceCopy];

  [v24 setEnabled:enabledCopy];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  [PowerUIAudioAccessorySmartChargeManager setNumber:v15 forPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.enabled." andDevice:deviceCopy];

  [v24 setDisabledUntilDate:dateCopy];
  v16 = MEMORY[0x277CCABB0];
  [dateCopy timeIntervalSinceReferenceDate];
  v18 = v17;

  v19 = [v16 numberWithDouble:v18];
  [PowerUIAudioAccessorySmartChargeManager setNumber:v19 forPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.disabledUntilDate." andDevice:deviceCopy];

  [v24 setTemporarilyDisabled:disabledCopy];
  date = [MEMORY[0x277CBEAA8] date];
  [v24 setLastSeenDate:date];

  v21 = MEMORY[0x277CCABB0];
  lastSeenDate = [v24 lastSeenDate];
  [lastSeenDate timeIntervalSinceReferenceDate];
  v23 = [v21 numberWithDouble:?];
  [PowerUIAudioAccessorySmartChargeManager setNumber:v23 forPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.lastSeenDate." andDevice:deviceCopy];
}

- (void)persistentlySetLastSentDate:(id)date forDevice:(id)device
{
  deviceCopy = device;
  dateCopy = date;
  v12 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:deviceCopy];
  [v12 setLastSentDate:dateCopy];
  v8 = MEMORY[0x277CCABB0];
  [dateCopy timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = [v8 numberWithDouble:v10];
  [PowerUIAudioAccessorySmartChargeManager setNumber:v11 forPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.lastSentDate." andDevice:deviceCopy];

  [(NSDistributedNotificationCenter *)self->_notificationCenter postNotificationName:@"com.apple.powerui.audioaccessorysmartchargedeadlinechanged" object:deviceCopy];
}

- (void)persistentlySetLastTimeseriesDate:(id)date forDevice:(id)device
{
  deviceCopy = device;
  dateCopy = date;
  v12 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:deviceCopy];
  [v12 setLastTimeseriesDate:dateCopy];
  v8 = MEMORY[0x277CCABB0];
  [dateCopy timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = [v8 numberWithDouble:v10];
  [PowerUIAudioAccessorySmartChargeManager setNumber:v11 forPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.lastTimeseriesDate." andDevice:deviceCopy];
}

- (void)persistentlySetLastUnderchargeRecordedForPrediction:(id)prediction forDevice:(id)device
{
  deviceCopy = device;
  predictionCopy = prediction;
  v12 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:deviceCopy];
  [v12 setLastUnderchargeRecordedForPrediction:predictionCopy];
  v8 = MEMORY[0x277CCABB0];
  [predictionCopy timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = [v8 numberWithDouble:v10];
  [PowerUIAudioAccessorySmartChargeManager setNumber:v11 forPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.lastUnderchargeRecordedForPrediction." andDevice:deviceCopy];
}

- (void)persistentlyHandleSeeingDevice:(id)device
{
  deviceCopy = device;
  v9 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:deviceCopy];
  date = [MEMORY[0x277CBEAA8] date];
  [v9 setLastSeenDate:date];

  v6 = MEMORY[0x277CCABB0];
  lastSeenDate = [v9 lastSeenDate];
  [lastSeenDate timeIntervalSinceReferenceDate];
  v8 = [v6 numberWithDouble:?];
  [PowerUIAudioAccessorySmartChargeManager setNumber:v8 forPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.lastSeenDate." andDevice:deviceCopy];
}

- (void)persistentlySetExpectedHash:(id)hash forDevice:(id)device
{
  deviceCopy = device;
  hashCopy = hash;
  v9 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:deviceCopy];
  [v9 setExpectedHash:hashCopy];
  uUIDString = [hashCopy UUIDString];

  [PowerUIAudioAccessorySmartChargeManager setString:uUIDString forPreferenceKeyPrefix:@"com.apple.smartcharging.audioaccessories.expectedHash." andDevice:deviceCopy];
}

+ (void)setNumber:(id)number forPreferenceKeyPrefix:(id)prefix andDevice:(id)device
{
  value = number;
  CFPreferencesSetAppValue([prefix stringByAppendingString:device], value, @"com.apple.smartcharging.topoffprotection.audioaccessories");
}

+ (id)readNumberForPreferenceKeyPrefix:(id)prefix andDevice:(id)device
{
  v4 = CFPreferencesCopyAppValue([prefix stringByAppendingString:device], @"com.apple.smartcharging.topoffprotection.audioaccessories");

  return v4;
}

+ (void)setString:(id)string forPreferenceKeyPrefix:(id)prefix andDevice:(id)device
{
  value = string;
  CFPreferencesSetAppValue([prefix stringByAppendingString:device], value, @"com.apple.smartcharging.topoffprotection.audioaccessories");
}

+ (id)readStringForPreferenceKeyPrefix:(id)prefix andDevice:(id)device
{
  v4 = CFPreferencesCopyAppValue([prefix stringByAppendingString:device], @"com.apple.smartcharging.topoffprotection.audioaccessories");

  return v4;
}

+ (id)readArrayForPreferenceKey:(id)key
{
  v3 = CFPreferencesCopyAppValue(key, @"com.apple.smartcharging.topoffprotection.audioaccessories");
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithArray:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)stringFromState:(unint64_t)state
{
  if (state > 3)
  {
    return @"Unknown state";
  }

  else
  {
    return off_2782D4BA0[state];
  }
}

- (id)defaultDateToDisableUntilGivenDate:(id)date
{
  v11 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (defaultDateToDisableUntilGivenDate__onceToken != -1)
  {
    [PowerUIAudioAccessorySmartChargeManager defaultDateToDisableUntilGivenDate:];
  }

  v5 = [defaultDateToDisableUntilGivenDate__calendar components:60 fromDate:dateCopy];
  if ([v5 hour] >= 6)
  {
    [v5 setDay:{objc_msgSend(v5, "day") + 1}];
  }

  [v5 setHour:6];
  v6 = [defaultDateToDisableUntilGivenDate__calendar dateFromComponents:v5];
  accessoryLog = self->_accessoryLog;
  if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Feature disabled until: %@", &v9, 0xCu);
  }

  return v6;
}

uint64_t __78__PowerUIAudioAccessorySmartChargeManager_defaultDateToDisableUntilGivenDate___block_invoke()
{
  defaultDateToDisableUntilGivenDate__calendar = [MEMORY[0x277CBEA80] currentCalendar];

  return MEMORY[0x2821F96F8]();
}

- (void)setTemporarilyDisabled:(BOOL)disabled until:(id)until forDevice:(id)device
{
  disabledCopy = disabled;
  v32 = *MEMORY[0x277D85DE8];
  untilCopy = until;
  deviceCopy = device;
  if (deviceCopy)
  {
    if (untilCopy)
    {
      [untilCopy timeIntervalSinceNow];
      v11 = v10;
      if (v10 < 0.0)
      {
        disabledCopy = 0;
      }
    }

    else
    {
      v11 = 0.0;
    }

    v12 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:deviceCopy];
    v13 = [(PowerUIBluetoothHandler *)self->_btHandler getDeviceForAddressString:deviceCopy forSession:self->_session];
    if (!v13 && os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
    {
      [PowerUIAudioAccessorySmartChargeManager setTemporarilyDisabled:until:forDevice:];
    }

    v14 = [(PowerUIBluetoothHandler *)self->_btHandler protocolForDevice:v13];
    temporarilyDisabled = [v12 temporarilyDisabled];
    if (disabledCopy)
    {
      v16 = temporarilyDisabled ^ 1;
      if (!untilCopy)
      {
        v16 = 1;
      }

      if ((v16 & 1) != 0 || ([v12 disabledUntilDate], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(untilCopy, "isEqualToDate:", v17), v17, (v18 & 1) == 0))
      {
        [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetStatusForDevice:deviceCopy withCurrentState:3 withEnabled:1 withDisabledUntilDate:untilCopy withTemporarilyDisabled:1];
        if ((v14 - 1) <= 1)
        {
          [(PowerUIAudioAccessorySmartChargeManager *)self setOBCState:0 forDevice:deviceCopy];
        }

        [(NSDistributedNotificationCenter *)self->_notificationCenter postNotificationName:@"com.apple.powerui.audioaccessorysmartchargestatuschanged" object:deviceCopy];
        accessoryLog = self->_accessoryLog;
        if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = deviceCopy;
          _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Set state to temporarilyDisabled for device '%@'", buf, 0xCu);
        }

        v20 = dispatch_walltime(0, (v11 * 1000000000.0));
        queue = self->_queue;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __82__PowerUIAudioAccessorySmartChargeManager_setTemporarilyDisabled_until_forDevice___block_invoke;
        v26[3] = &unk_2782D4AC0;
        v26[4] = self;
        v22 = deviceCopy;
        v27 = v22;
        dispatch_after(v20, queue, v26);
        v23 = self->_accessoryLog;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v29 = v22;
          v30 = 2048;
          v31 = v11 / 60.0;
          _os_log_impl(&dword_21B766000, v23, OS_LOG_TYPE_DEFAULT, "Re-enable device '%@' in %f minutes", buf, 0x16u);
        }
      }

      goto LABEL_29;
    }

    if (temporarilyDisabled)
    {
      [(PowerUIAudioAccessorySmartChargeManager *)self persistentlySetStatusForDevice:deviceCopy withCurrentState:1 withEnabled:1 withDisabledUntilDate:0 withTemporarilyDisabled:0];
      if ((v14 - 1) <= 1)
      {
        [(PowerUIAudioAccessorySmartChargeManager *)self setOBCState:1 forDevice:deviceCopy];
      }

      [(NSDistributedNotificationCenter *)self->_notificationCenter postNotificationName:@"com.apple.powerui.audioaccessorysmartchargestatuschanged" object:deviceCopy];
      v24 = self->_accessoryLog;
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 138412290;
      v29 = deviceCopy;
      v25 = "Re-enable device '%@' (previously temporarily disabled)";
    }

    else
    {
      v24 = self->_accessoryLog;
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
LABEL_29:

        goto LABEL_30;
      }

      *buf = 138412290;
      v29 = deviceCopy;
      v25 = "Attempted to re-enable device '%@', but it was not temporarily disabled";
    }

    _os_log_impl(&dword_21B766000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
    goto LABEL_29;
  }

LABEL_30:
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v24 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  accessoryLog = self->_accessoryLog;
  if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = connectionCopy;
    _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Received new connection: %@", buf, 0xCu);
  }

  v8 = [connectionCopy valueForEntitlement:@"com.apple.powerui.smartcharging.AudioAccessory"];
  v9 = v8;
  if ((!v8 || ([v8 BOOLValue] & 1) == 0) && os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
  {
    [PowerUIAudioAccessorySmartChargeManager listener:shouldAcceptNewConnection:];
  }

  v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_282D58AB0];
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  [v10 setClasses:v13 forSelector:sel_getAvailableDevicesWithHandler_ argumentIndex:0 ofReply:1];

  v14 = MEMORY[0x277CBEB98];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v14 setWithObjects:{v15, v16, v17, v18, objc_opt_class(), 0}];
  [v10 setClasses:v19 forSelector:sel_getStatusForDevice_withHandler_ argumentIndex:0 ofReply:1];

  [connectionCopy setExportedInterface:v10];
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)engageUntil:(id)until forDevice:(id)device overrideAllSignals:(BOOL)signals withHandler:(id)handler
{
  btHandler = self->_btHandler;
  session = self->_session;
  handlerCopy = handler;
  untilCopy = until;
  v13 = [(PowerUIBluetoothHandler *)btHandler getDeviceForAddressString:device forSession:session];
  date = [MEMORY[0x277CBEAA8] date];
  [untilCopy timeIntervalSinceDate:date];
  v15 = v14;

  handlerCopy[2](handlerCopy, [(PowerUIAudioAccessorySmartChargeManager *)self sendTimeDeltaInSeconds:v15 toAccessory:v13]== 0, 0);
}

- (void)getAvailableDevicesWithHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  deviceArrayLock = self->_deviceArrayLock;
  handlerCopy = handler;
  [(NSLock *)deviceArrayLock lock];
  v6 = [(NSMutableArray *)self->_deviceArray copy];
  accessoryLog = self->_accessoryLog;
  if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCABB0];
    deviceArray = self->_deviceArray;
    v10 = accessoryLog;
    v11 = [v8 numberWithUnsignedInteger:{-[NSMutableArray count](deviceArray, "count")}];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "Available devices were requested, available: %@ - copy count: %@", &v13, 0x16u);
  }

  [(NSLock *)self->_deviceArrayLock unlock];
  handlerCopy[2](handlerCopy, v6);
}

- (void)getStatusForDevice:(id)device withHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB38];
  handlerCopy = handler;
  deviceCopy = device;
  dictionary = [v6 dictionary];
  v10 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:deviceCopy];
  if ([v10 enabled])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [dictionary setValue:v11 forKey:@"enabled"];
  if ([v10 temporarilyDisabled])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [dictionary setValue:v12 forKey:@"temporarilyDisabled"];
  v13 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v13 setDateFormat:@"yyyy-MM-dd 'at' HH:mm"];
  lastSentDate = [v10 lastSentDate];
  v15 = [v13 stringFromDate:lastSentDate];

  [dictionary setValue:v15 forKey:@"lastSentDate"];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v10, "minutesSavedSinceLastReport")}];
  v17 = [v16 description];
  [dictionary setValue:v17 forKey:@"minutesSavedSinceLastReport"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v10, "underchargesSinceLastReport")}];
  v19 = [v18 description];
  [dictionary setValue:v19 forKey:@"underchargesSinceLastReport"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v10, "chargingEventsSinceLastReport")}];
  v21 = [v20 description];
  [dictionary setValue:v21 forKey:@"chargingEventsSinceLastReport"];

  [dictionary setValue:deviceCopy forKey:@"deviceName"];
  v22 = [dictionary copy];
  accessoryLog = self->_accessoryLog;
  if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = v22;
    _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Status Requested: %@", &v24, 0xCu);
  }

  handlerCopy[2](handlerCopy, v22);
}

- (void)deleteRecordsForDevices:(id)devices
{
  v36 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  [(NSLock *)self->_deviceArrayLock lock];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = devicesCopy;
  v24 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v24)
  {
    v23 = *v27;
    *&v5 = 138412546;
    v21 = v5;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        accessoryLog = self->_accessoryLog;
        if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
        {
          deviceArray = self->_deviceArray;
          v10 = accessoryLog;
          v11 = [(NSMutableArray *)deviceArray count];
          *buf = v21;
          v32 = v7;
          v33 = 2048;
          v34 = v11;
          _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "Delete device '%@' from known devices (%lu).", buf, 0x16u);
        }

        [(NSMutableArray *)self->_deviceArray removeObject:v7, v21];
        [(NSMutableDictionary *)self->_accessoryStates removeObjectForKey:v7];
        v25 = [@"com.apple.smartcharging.audioaccessories.currentState." stringByAppendingString:v7];
        v30[0] = v25;
        v12 = [@"com.apple.smartcharging.audioaccessories.enabled." stringByAppendingString:v7];
        v30[1] = v12;
        v13 = [@"com.apple.smartcharging.audioaccessories.disabledUntilDate." stringByAppendingString:v7];
        v30[2] = v13;
        v14 = [@"com.apple.smartcharging.audioaccessories.temporarilyDisabled." stringByAppendingString:v7];
        v30[3] = v14;
        v15 = [@"com.apple.smartcharging.audioaccessories.lastSentDate." stringByAppendingString:v7];
        v30[4] = v15;
        v16 = [@"com.apple.smartcharging.audioaccessories.lastSeenDate." stringByAppendingString:v7];
        v30[5] = v16;
        v17 = [@"com.apple.smartcharging.audioaccessories.lastTimeseriesDate." stringByAppendingString:v7];
        v30[6] = v17;
        v18 = [@"com.apple.smartcharging.audioaccessories.lastUnderchargeRecordedForPrediction." stringByAppendingString:v7];
        v30[7] = v18;
        [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:8];
        v20 = v19 = self;

        [PowerUIAudioAccessorySmartChargeManager bulkDeleteDefaultsEntries:v20];
        self = v19;
      }

      v24 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v24);
  }

  [PowerUIAudioAccessorySmartChargeManager setArray:self->_deviceArray forPreferenceKey:@"com.apple.smartcharging.audioaccessories.deviceArray"];
  [(NSLock *)self->_deviceArrayLock unlock];
}

- (void)lastActionForDevice:(id)device withHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:device];
  handlerCopy[2](handlerCopy, [v7 managerState]);
}

- (void)clearLastActionForDevice:(id)device
{
  v3 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:device];
  [v3 setManagerState:0];
}

- (void)startMockingBluetoothForFakeDevice:(id)device
{
  v12 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (!+[PowerUISmartChargeUtilities isInternalBuild]&& os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
  {
    [PowerUIAudioAccessorySmartChargeManager startMockingBluetoothForFakeDevice:];
  }

  accessoryLog = self->_accessoryLog;
  if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = deviceCopy;
    _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Start mocking bluetooth for fake device name: %@", &v10, 0xCu);
  }

  v6 = [(PowerUIAudioAccessorySmartChargeManager *)self returnAccessoryStatusForDevice:deviceCopy];
  v7 = objc_alloc_init(MEMORY[0x277CCAD78]);
  [v6 setExpectedHash:v7];

  v8 = [[PowerUIBluetoothHandlerFake alloc] init:deviceCopy];
  btHandler = self->_btHandler;
  self->_btHandler = v8;
}

- (void)stopMockingBluetooth
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  accessoryLog = self->_accessoryLog;
  if (isKindOfClass)
  {
    if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Stop mocking bluetooth", v7, 2u);
    }

    v5 = objc_alloc_init(PowerUIBluetoothHandler);
    btHandler = self->_btHandler;
    self->_btHandler = v5;
  }

  else if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
  {
    [PowerUIAudioAccessorySmartChargeManager stopMockingBluetooth];
  }
}

- (void)fakeConnectionForDevice:(id)device
{
  deviceCopy = device;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PowerUIBluetoothHandler *)self->_btHandler getDeviceForAddressString:deviceCopy forSession:self->_session];
    btConnectionUpdateCallback(v5, v6, 0, 11, 0, self);
    accessoryLog = self->_accessoryLog;
    if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v8 = "Connection callback called with fake event";
      v9 = &v10;
LABEL_6:
      _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }
  }

  else
  {
    accessoryLog = self->_accessoryLog;
    if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Abort faking connections: Not in mocking mode";
      v9 = buf;
      goto LABEL_6;
    }
  }
}

- (void)setFakeConnectionStatusTo:(BOOL)to
{
  toCopy = to;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    btHandler = self->_btHandler;

    [(PowerUIBluetoothHandler *)btHandler setFakeDeviceConnected:toCopy];
  }

  else
  {
    accessoryLog = self->_accessoryLog;
    if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Abort setting fake connection status: Not in mocking mode", v7, 2u);
    }
  }
}

- (void)currentLeewayWithHandler:(id)handler
{
  v5 = MEMORY[0x277CCABB0];
  handlerCopy = handler;
  predictor = [(PowerUIAudioAccessorySmartChargeManager *)self predictor];
  [predictor lastUsedLeeway];
  v7 = [v5 numberWithDouble:?];
  (*(handler + 2))(handlerCopy, v7, 0);
}

- (void)timeSeriesForDevice:(id)device
{
  v15 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  accessoryLog = self->_accessoryLog;
  if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = deviceCopy;
    _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Triggering time series response for device '%@'.", buf, 0xCu);
  }

  *buf = 0;
  BTAccessoryManagerGetDefault();
  v6 = [(PowerUIBluetoothHandler *)self->_btHandler getDeviceForAddressString:deviceCopy forSession:self->_session];
  if (v6)
  {
    v7 = v6;
    v13 = 0;
    v8 = self->_accessoryLog;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "memset done, about to send message...", v12, 2u);
    }

    v9 = [(PowerUIBluetoothHandler *)self->_btHandler sendCustomMessageWrapperWithManager:*buf withMessageType:0x80000 withDeviceHandle:v7 withData:&v13 withDataSize:1];
    v10 = self->_accessoryLog;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "timeseries message sent...", v12, 2u);
    }

    if (v9)
    {
      v11 = self->_accessoryLog;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(PowerUIAudioAccessorySmartChargeManager *)v11 timeSeriesForDevice:v9];
      }
    }
  }

  else if (os_log_type_enabled(self->_accessoryLog, OS_LOG_TYPE_ERROR))
  {
    [PowerUIAudioAccessorySmartChargeManager timeSeriesForDevice:];
  }
}

- (void)monitor:(id)monitor maySuggestNewFullChargeDeadline:(id)deadline
{
  v24 = *MEMORY[0x277D85DE8];
  deadlineCopy = deadline;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v7 = [deadlineCopy isEqualToDate:distantFuture];

  if ((v7 & 1) == 0)
  {
    accessoryLog = self->_accessoryLog;
    if (os_log_type_enabled(accessoryLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = deadlineCopy;
      _os_log_impl(&dword_21B766000, accessoryLog, OS_LOG_TYPE_DEFAULT, "Force reevaluation, signal monitor sent a new deadline: %@", buf, 0xCu);
    }

    v16 = deadlineCopy;
    [(NSLock *)self->_deviceArrayLock lock];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = self->_deviceArray;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          v15 = self->_accessoryLog;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v23 = v14;
            _os_log_debug_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEBUG, "  handling device %@...", buf, 0xCu);
          }

          [(PowerUIAudioAccessorySmartChargeManager *)self runUpdateForDevice:[(PowerUIBluetoothHandler *)self->_btHandler getDeviceForAddressString:v14 forSession:self->_session] withHash:0];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [(NSLock *)self->_deviceArrayLock unlock];
    deadlineCopy = v16;
  }
}

void __106__PowerUIAudioAccessorySmartChargeManager_addTimeSeriesDataToStream_withSide_withFirmwareVersion_withLog___block_invoke_2_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 error];
  v5 = [v4 description];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_21B766000, v3, OS_LOG_TYPE_ERROR, "Error getting accessory charging event: %@", v6, 0xCu);
}

- (void)setStateViaV2Protocol:(uint64_t)a3 forDevice:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a1;
  v7 = [v5 numberWithUnsignedLong:a2];
  *v14 = 134218242;
  *&v14[4] = a3;
  *&v14[12] = 2112;
  *&v14[14] = v7;
  OUTLINED_FUNCTION_4_0(&dword_21B766000, v8, v9, "Failed to send OBC Message (%lu) to device - Error code: %@", v10, v11, v12, v13, *v14, *&v14[8], *&v14[16]);
}

- (void)fullChargeDeadlineForDevice:withHandler:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_21B766000, v0, OS_LOG_TYPE_DEBUG, "Query CB OBC deadline from device %@", v1, 0xCu);
}

- (void)timeSeriesForDevice:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithUnsignedLong:a2];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0(&dword_21B766000, v6, v7, "Error code '%@' sending OBCv2 message to device '%@'.", v8, v9, v10, v11);
}

- (void)timeSeriesForDevice:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end