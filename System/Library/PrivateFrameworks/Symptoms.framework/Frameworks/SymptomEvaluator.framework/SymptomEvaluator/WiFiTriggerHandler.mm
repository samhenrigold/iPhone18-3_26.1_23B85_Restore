@interface WiFiTriggerHandler
+ (id)configureClass:(id)class;
+ (id)getHandlerByName:(id)name;
+ (id)getNetScoreInfo;
+ (id)sharedInstance;
+ (void)_triggerAllowedByRSSI:(BOOL)i receiptTimestamp:(id)timestamp;
+ (void)initialize;
+ (void)triggerAllowedByRSSI:(BOOL)i receiptTimestamp:(id)timestamp;
- (BOOL)insufficientRxTrafficDetectedFrom:(id)from atTime:(id)time To:(id)to;
- (BOOL)noteSymptom:(id)symptom;
- (NSString)description;
- (WiFiTriggerHandler)init;
- (id)_getARPInfo;
- (id)_getAWDInfo:(id)info;
- (id)_getDNSInfo;
- (id)_getND6Info;
- (id)_getNetScoreInfo;
- (int)_impactFromFlags:(unsigned int)flags andFlows:(unint64_t)flows;
- (int)combineScoreARP:(int)p ND6:(int)d6 DNS:(int)s RTT:(int)t flows:(int)flows;
- (int)configureInstance:(id)instance;
- (int)read:(id)read returnedValues:(id)values;
- (int64_t)_getDataStallsScore;
- (void)_reset;
- (void)checkUniqueStallCountOnInterfaceType:(int64_t)type stallType:(unint64_t)stallType;
- (void)dampeningStage:(id)stage;
- (void)didReceiveSyndrome:(id)syndrome;
- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block;
- (void)refuteStage:(id)stage;
@end

@implementation WiFiTriggerHandler

+ (void)initialize
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = gInstanceDictionary;
  gInstanceDictionary = v2;

  MEMORY[0x2821F96F8](v2, v3);
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__WiFiTriggerHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_1 != -1)
  {
    dispatch_once(&sharedInstance_pred_1, block);
  }

  v2 = sharedInstance_sharedInstance_1;

  return v2;
}

void __36__WiFiTriggerHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_1;
  sharedInstance_sharedInstance_1 = v1;

  [ManagedEventTransport setInfoProvider:sharedInstance_sharedInstance_1 forId:1];
  v3 = sharedInstance_sharedInstance_1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[WiFiTriggerHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

- (WiFiTriggerHandler)init
{
  v23.receiver = self;
  v23.super_class = WiFiTriggerHandler;
  v2 = [(WiFiTriggerHandler *)&v23 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __26__WiFiTriggerHandler_init__block_invoke;
    v21[3] = &unk_27898A690;
    v4 = v2;
    v22 = v4;
    v5 = [defaultCenter addObserverForName:@"kNotificationNewConnectivityEpochWiFi" object:0 queue:0 usingBlock:v21];
    wifiEpochObserver = v4->_wifiEpochObserver;
    v4->_wifiEpochObserver = v5;

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __26__WiFiTriggerHandler_init__block_invoke_6;
    v19[3] = &unk_27898A690;
    v7 = v4;
    v20 = v7;
    v8 = [defaultCenter addObserverForName:@"kNotificationNewConnectivityEpochCell" object:0 queue:0 usingBlock:v19];
    cellEpochObserver = v7->_cellEpochObserver;
    v7->_cellEpochObserver = v8;

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __26__WiFiTriggerHandler_init__block_invoke_7;
    v17[3] = &unk_27898A690;
    v10 = v7;
    v18 = v10;
    v11 = [defaultCenter addObserverForName:@"kNotificationNewPrimaryInterface" object:0 queue:0 usingBlock:v17];
    primaryInterfaceObserver = v10->_primaryInterfaceObserver;
    v10->_primaryInterfaceObserver = v11;

    v13 = +[DataStallHandler sharedInstance];
    dataStallHandler = v10->_dataStallHandler;
    v10->_dataStallHandler = v13;

    [(DataStallHandler *)v10->_dataStallHandler addDelegate:v10];
    shared_prefs_store = get_shared_prefs_store();
    prefs_add_client(shared_prefs_store, "trigger_disconnect_disable_gate", &__block_literal_global_3);
  }

  return v2;
}

uint64_t __26__WiFiTriggerHandler_init__block_invoke(uint64_t a1)
{
  v2 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "reset, wifi Epoch change", v4, 2u);
  }

  return [*(a1 + 32) _reset];
}

uint64_t __26__WiFiTriggerHandler_init__block_invoke_6(uint64_t a1)
{
  v2 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "reset, cell Epoch change", v4, 2u);
  }

  return [*(a1 + 32) _reset];
}

uint64_t __26__WiFiTriggerHandler_init__block_invoke_7(uint64_t a1)
{
  v2 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "reset, primary interface change", v4, 2u);
  }

  return [*(a1 + 32) _reset];
}

void __26__WiFiTriggerHandler_init__block_invoke_10(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && MEMORY[0x238389170](v3) == MEMORY[0x277D86448])
  {
    forceNoGate = xpc_BOOL_get_value(v4);
    v6 = dispatch_time(0, 30000000000);
    dispatch_after(v6, MEMORY[0x277D85CD0], &__block_literal_global_13);
  }

  else
  {
    v5 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = gTriggeringAllowed;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "invalid value for trigger_disconnect_disable_gating behavior. Maintaining current value (%d)", v7, 8u);
    }
  }
}

void __26__WiFiTriggerHandler_init__block_invoke_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = gTriggeringAllowed;
  v1 = forceNoGate;
  v2 = [MEMORY[0x277CBEAA8] date];
  [WiFiTriggerHandler _triggerAllowedByRSSI:v1 receiptTimestamp:v2];

  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109376;
    v4[1] = v0;
    v5 = 1024;
    v6 = gTriggeringAllowed;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "set trigger_disconnect_disable_gate to (was/is): %d/%d", v4, 0xEu);
  }
}

- (void)_reset
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__WiFiTriggerHandler__reset__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __28__WiFiTriggerHandler__reset__block_invoke(uint64_t a1)
{
  v2 = gQueuedDetails;
  gQueuedDetails = 0;

  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = 0;

  v5 = gQueuedTimestamp;
  gQueuedTimestamp = 0;

  v6 = gOpenedTimestamp;
  gOpenedTimestamp = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  *(*(a1 + 32) + 48) = 0;
  *(*(a1 + 32) + 52) = 0;
  *(*(a1 + 32) + 56) = 0;
  *(*(a1 + 32) + 60) = 0;
  *(*(a1 + 32) + 64) = 0;
  v9 = *(a1 + 32);
  v10 = *(v9 + 104);
  *(v9 + 104) = 0;

  v11 = *(a1 + 32);
  v12 = *(v11 + 112);
  *(v11 + 112) = 0;

  v13 = *(a1 + 32);
  v14 = *(v13 + 120);
  *(v13 + 120) = 0;

  ++*(*(a1 + 32) + 128);
  *(*(a1 + 32) + 136) = 0;
  *(*(a1 + 32) + 144) = 0;
  v15 = *(a1 + 32);
  v16 = *(v15 + 152);
  *(v15 + 152) = 0;
}

- (int)configureInstance:(id)instance
{
  instanceCopy = instance;
  v4 = [instanceCopy objectForKey:@"SYNDROME_DAMPENING_INTERVAL"];
  v5 = v4;
  if (v4)
  {
    gDampeningInterval = [v4 unsignedShortValue];
  }

  v6 = [instanceCopy objectForKey:@"REFUTER_MODE"];
  v7 = v6;
  if (v6)
  {
    unsignedShortValue = [v6 unsignedShortValue];
    gRefuterMode = unsignedShortValue;
    [AppTracker setAppTrackerVerbose:unsignedShortValue];
  }

  v9 = [instanceCopy objectForKey:@"FOREGROUND_APP_IGNORE_LIST"];
  if (v9)
  {
    [AppTracker setWifiNeverNoteList:v9];
  }

  v10 = [instanceCopy objectForKey:@"FOREGROUND_APP_NO_IGNORE_LIST"];
  if (v10)
  {
    [AppTracker setWifiAlwaysNoteList:v10];
  }

  v11 = [instanceCopy objectForKey:@"MEDIA_DAEMON_CHECK_NETWORKING_LIST"];
  if (v11)
  {
    [AppTracker setWifiDaemonCheckList:v11];
  }

  return 0;
}

- (int)read:(id)read returnedValues:(id)values
{
  readCopy = read;
  valuesCopy = values;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [valuesCopy setObject:v8 forKey:@"GENERIC_CONFIG_TARGET"];

  v9 = [readCopy objectForKey:@"REFUTER_MODE"];
  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:gRefuterMode];
    [valuesCopy setObject:v10 forKey:@"REFUTER_MODE"];
  }

  v11 = [readCopy objectForKey:@"SYNDROME_DAMPENING_INTERVAL"];
  if (v11)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:gDampeningInterval];
    [valuesCopy setObject:v12 forKey:@"SYNDROME_DAMPENING_INTERVAL"];
  }

  return 0;
}

+ (id)getHandlerByName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  p_isa = [gInstanceDictionary objectForKey:nameCopy];
  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = nameCopy;
    v8 = v6;
    v16 = 136315138;
    uTF8String = [nameCopy UTF8String];
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "getHandlerByName  %s", &v16, 0xCu);
  }

  if (!p_isa)
  {
    v11 = objc_alloc_init(WiFiTriggerHandler);
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_syndromeName, name);
      uTF8String2 = [nameCopy UTF8String];
      if (!uTF8String2)
      {
        [WiFiTriggerHandler getHandlerByName:?];
      }

      v13 = strdup(uTF8String2);
      if (!v13)
      {
        [WiFiTriggerHandler getHandlerByName:?];
      }

      p_isa[2] = v13;
      [gInstanceDictionary setObject:p_isa forKey:nameCopy];
      v14 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v15 = p_isa[2];
        v16 = 136315138;
        uTF8String = v15;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "getHandlerByName  created %s", &v16, 0xCu);
      }
    }
  }

  v9 = p_isa;

  return v9;
}

+ (void)_triggerAllowedByRSSI:(BOOL)i receiptTimestamp:(id)timestamp
{
  iCopy = i;
  v30 = *MEMORY[0x277D85DE8];
  timestampCopy = timestamp;
  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (iCopy)
    {
      v7 = "open";
    }

    else
    {
      v7 = "close";
    }

    v8 = MEMORY[0x277CBEAA8];
    v9 = v6;
    date = [v8 date];
    [date timeIntervalSinceDate:timestampCopy];
    v26 = 136315394;
    v27 = *&v7;
    v28 = 2048;
    v29 = v11;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Setting TD latch to %s with a propagation delay of %f", &v26, 0x16u);
  }

  gTriggeringAllowed = (iCopy | forceNoGate) & 1;
  if (((iCopy | forceNoGate) & 1) == 0)
  {
    v18 = gOpenedTimestamp;
    gOpenedTimestamp = 0;

    +[TrackedFlow stopPollingWifiFlows];
    v19 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    LOWORD(v26) = 0;
    v20 = "Disallow triggered disconnect notifications";
LABEL_15:
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, v20, &v26, 2u);
    goto LABEL_20;
  }

  [TrackedFlow startPollingWifiFlows:300];
  date2 = [MEMORY[0x277CBEAA8] date];
  v13 = gOpenedTimestamp;
  gOpenedTimestamp = date2;

  if (!gQueuedTimestamp)
  {
    v19 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    LOWORD(v26) = 0;
    v20 = "Allow future triggered disconnects, nothing currently queued";
    goto LABEL_15;
  }

  date3 = [MEMORY[0x277CBEAA8] date];
  [date3 timeIntervalSinceDate:gQueuedTimestamp];
  v16 = v15;

  if (v16 <= 1.0)
  {
    v21 = gQueuedHandler;
    v22 = gQueuedDetails;
    v23 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 134217984;
      v27 = v16;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "Send queued WiFi trigger, age is %f", &v26, 0xCu);
    }

    [v21 didReceiveSyndrome:v22];
  }

  else
  {
    v17 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 134217984;
      v27 = v16;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "Discard queued WiFi trigger, too old, %f", &v26, 0xCu);
    }
  }

  v24 = gQueuedDetails;
  gQueuedDetails = 0;

  v25 = gQueuedTimestamp;
  gQueuedTimestamp = 0;

LABEL_20:
}

+ (void)triggerAllowedByRSSI:(BOOL)i receiptTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WiFiTriggerHandler_triggerAllowedByRSSI_receiptTimestamp___block_invoke;
  block[3] = &unk_27898A6B8;
  iCopy = i;
  v10 = timestampCopy;
  selfCopy = self;
  v7 = timestampCopy;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (id)_getAWDInfo:(id)info
{
  v51 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v45 = 0;
  v46 = 0;
  _getARPFailureCount = [(WiFiTriggerHandler *)self _getARPFailureCount];
  _getND6FailureCount = [(WiFiTriggerHandler *)self _getND6FailureCount];
  v7 = COERCE_DOUBLE([(WiFiTriggerHandler *)self _getDataStallsScore]);
  v8 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v50 = v7;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Data Stall score: %lu", buf, 0xCu);
  }

  +[CellFallbackHandler appPolicyDenialsScore];
  v10 = v9;
  v11 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v50 = v10;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Policy denial score: %f", buf, 0xCu);
  }

  v12 = [NetworkAnalyticsEngine getDNSCountsOn:3 total:&v46 impacted:&v45];
  v13 = 0.0;
  if (self->_lastRefutePeriodTimestamp)
  {
    if (infoCopy)
    {
      [infoCopy timeIntervalSinceDate:?];
      v15 = v14;
    }

    else
    {
      v15 = 0.0;
    }

    lastRefutePeriodTraffic = self->_lastRefutePeriodTraffic;
    lastRefutePeriodDuration = self->_lastRefutePeriodDuration;
  }

  else
  {
    lastRefutePeriodTraffic = 0;
    lastRefutePeriodDuration = 0.0;
    v15 = 0.0;
  }

  v44 = infoCopy;
  if (gOpenedTimestamp)
  {
    [gOpenedTimestamp timeIntervalSinceNow];
    v13 = -v18;
  }

  v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyAWDValidState];
  v47[0] = v43;
  v42 = [MEMORY[0x277CCABB0] numberWithBool:v12];
  v48[0] = v42;
  v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyAWDWiFiDNSTotalServers];
  v47[1] = v41;
  v40 = [MEMORY[0x277CCABB0] numberWithInteger:v46];
  v48[1] = v40;
  v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyAWDWiFiDNSImpactedServers];
  v47[2] = v39;
  v38 = [MEMORY[0x277CCABB0] numberWithInteger:v45];
  v48[2] = v38;
  v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyAWDARPFailureCount];
  v47[3] = v37;
  v36 = [MEMORY[0x277CCABB0] numberWithInteger:_getARPFailureCount];
  v48[3] = v36;
  v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyAWDND6FailureCount];
  v47[4] = v35;
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:_getND6FailureCount];
  v48[4] = v34;
  v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyAWDTrafficWatchRxCount];
  v47[5] = v33;
  v32 = [MEMORY[0x277CCABB0] numberWithInteger:lastRefutePeriodTraffic];
  v48[5] = v32;
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyAWDTrafficWatchDuration];
  v47[6] = v19;
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:lastRefutePeriodDuration];
  v48[6] = v20;
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyAWDTrafficWatchTimeSince];
  v47[7] = v21;
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
  v48[7] = v22;
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyAWDGateOpenDuration];
  v47[8] = v23;
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  v48[8] = v24;
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyAWDDataStallsScore];
  v47[9] = v25;
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:*&v7];
  v48[9] = v26;
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyAWDRNFDenialsScore];
  v47[10] = v27;
  *&v28 = v10;
  v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
  v48[10] = v29;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:11];

  return v31;
}

- (id)_getARPInfo
{
  v13[2] = *MEMORY[0x277D85DE8];
  _getARPFailureCount = [(WiFiTriggerHandler *)self _getARPFailureCount];
  v3 = _getARPFailureCount;
  if (_getARPFailureCount == 2)
  {
    v4 = 25;
  }

  else
  {
    v4 = 0;
  }

  if (_getARPFailureCount <= 1)
  {
    v5 = 50;
  }

  else
  {
    v5 = v4;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScore];
  v12[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScoreInfo];
  v12[1] = v8;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Current ARP symptoms: %d", v3];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v10;
}

- (id)_getND6Info
{
  v13[2] = *MEMORY[0x277D85DE8];
  _getND6FailureCount = [(WiFiTriggerHandler *)self _getND6FailureCount];
  v3 = _getND6FailureCount;
  if (_getND6FailureCount == 2)
  {
    v4 = 25;
  }

  else
  {
    v4 = 0;
  }

  if (_getND6FailureCount <= 1)
  {
    v5 = 50;
  }

  else
  {
    v5 = v4;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScore];
  v12[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScoreInfo];
  v12[1] = v8;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Current ND6 symptoms: %d", v3];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v10;
}

- (id)_getDNSInfo
{
  v15[2] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 0;
  v2 = [NetworkAnalyticsEngine getDNSCountsOn:3 total:&v13 impacted:&v12];
  v3 = v2;
  if (v12 == 1)
  {
    v4 = 25;
  }

  else
  {
    v4 = 0;
  }

  if (v2 && v12 > 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 50;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScore];
  v14[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v15[0] = v7;
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScoreInfo];
  v14[1] = v8;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Current DNS servers total %ld, impacted : %ld valid %d", v13, v12, v3];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v10;
}

- (int64_t)_getDataStallsScore
{
  v13 = *MEMORY[0x277D85DE8];
  if ((forceNoGate & 1) == 0 && !gOpenedTimestamp)
  {
    return 50;
  }

  v2 = [DataStallHandler uniqStallCountForInterfaceType:1 stallType:1 foregroundOnly:1 since:gOpenedTimestamp];
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Data Stall count: %lu", &v11, 0xCu);
  }

  if (!v2)
  {
    return 50;
  }

  if (v2 > 2)
  {
    return 0;
  }

  v4 = +[TrackedFlow getPolledFlowInfo];
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScore];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      intValue = [v6 intValue];
      v8 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 67109120;
        LODWORD(v12) = intValue;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Data Stall consults polled flow score: %d", &v11, 8u);
      }

      if (intValue)
      {
        v9 = 25;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 25;
    }
  }

  else
  {
    v9 = 25;
  }

  return v9;
}

- (int)combineScoreARP:(int)p ND6:(int)d6 DNS:(int)s RTT:(int)t flows:(int)flows
{
  result = 0;
  if (p)
  {
    if (d6)
    {
      if (s)
      {
        if (t)
        {
          result = 25;
          if (t >= 50 && s >= 50 && p >= 50 && d6 >= 50 && flows >= 50)
          {
            if (t == 50)
            {
              return flows;
            }

            else
            {
              return (flows + t) >> 1;
            }
          }
        }
      }
    }
  }

  return result;
}

- (id)_getNetScoreInfo
{
  v40[3] = *MEMORY[0x277D85DE8];
  _getARPInfo = [(WiFiTriggerHandler *)self _getARPInfo];
  _getND6Info = [(WiFiTriggerHandler *)self _getND6Info];
  _getDNSInfo = [(WiFiTriggerHandler *)self _getDNSInfo];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [(WiFiTriggerHandler *)self _getAWDInfo:date];

  if (_getARPInfo)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScore];
    v9 = [(__CFString *)_getARPInfo objectForKeyedSubscript:v8];

    if (v9)
    {
      intValue = [v9 intValue];
    }

    else
    {
      intValue = 50;
    }
  }

  else
  {
    intValue = 50;
  }

  v36 = _getND6Info;
  if (_getND6Info)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScore];
    v12 = [(__CFString *)_getND6Info objectForKeyedSubscript:v11];

    if (v12)
    {
      intValue2 = [v12 intValue];
    }

    else
    {
      intValue2 = 50;
    }
  }

  else
  {
    intValue2 = 50;
  }

  v35 = _getDNSInfo;
  if (_getDNSInfo)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScore];
    v15 = [(__CFString *)_getDNSInfo objectForKeyedSubscript:v14];

    if (v15)
    {
      intValue3 = [v15 intValue];
    }

    else
    {
      intValue3 = 50;
    }

    v30 = _getDNSInfo;
  }

  else
  {
    intValue3 = 50;
    v30 = @"No further info";
  }

  v17 = [(WiFiTriggerHandler *)self combineScoreARP:intValue ND6:intValue2 DNS:intValue3 RTT:50 flows:50];
  v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerNetScore];
  v39[0] = v34;
  v33 = [MEMORY[0x277CCABB0] numberWithInt:v17];
  v40[0] = v33;
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerAWDInfo];
  v39[1] = v18;
  v40[1] = v7;
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerNetScoreReasons];
  v39[2] = v19;
  [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerARPState];
  v20 = v32 = v7;
  v37[0] = v20;
  if (_getARPInfo)
  {
    v21 = _getARPInfo;
  }

  else
  {
    v21 = @"No further info";
  }

  v38[0] = v21;
  [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerND6State];
  v22 = v31 = _getARPInfo;
  v37[1] = v22;
  if (v36)
  {
    v23 = v36;
  }

  else
  {
    v23 = @"No further info";
  }

  v38[1] = v23;
  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerDNSState];
  v37[2] = v24;
  v38[2] = v30;
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerRTTState];
  v37[3] = v25;
  v38[3] = @"No further info";
  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerFlowState];
  v37[4] = v26;
  v38[4] = @"No further info";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:5];
  v40[2] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];

  return v28;
}

+ (id)getNetScoreInfo
{
  v2 = +[WiFiTriggerHandler sharedInstance];
  _getNetScoreInfo = [v2 _getNetScoreInfo];

  return _getNetScoreInfo;
}

- (int)_impactFromFlags:(unsigned int)flags andFlows:(unint64_t)flows
{
  if (flows)
  {
    v4 = 0;
  }

  else
  {
    v4 = (flags & 4) == 0;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return 100;
  }
}

- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__WiFiTriggerHandler_generateInfoForId_context_uuid_completionBlock___block_invoke;
  v9[3] = &unk_27898A708;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  [AppTracker getWifiNetworkActivity:v9];
}

void __69__WiFiTriggerHandler_generateInfoForId_context_uuid_completionBlock___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4, double a5)
{
  v9 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__WiFiTriggerHandler_generateInfoForId_context_uuid_completionBlock___block_invoke_2;
  v12[3] = &unk_27898A6E0;
  v10 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v9;
  v17 = a2;
  v15 = a3;
  v16 = a5;
  v14 = v10;
  v11 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __69__WiFiTriggerHandler_generateInfoForId_context_uuid_completionBlock___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB38];
  v3 = [*(a1 + 32) _getNetScoreInfo];
  v4 = [v2 dictionaryWithDictionary:v3];

  if (v4)
  {
    v5 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = v6;
      v8 = v5;
      v33 = 136315138;
      *v34 = [v6 UTF8String];
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "More info %s", &v33, 0xCu);
    }

    v9 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 72);
      v11 = *(a1 + 56);
      v12 = *(a1 + 40);
      v13 = v12;
      v14 = v9;
      v15 = [v12 UTF8String];
      v33 = 67109634;
      *v34 = v10;
      *&v34[4] = 2048;
      *&v34[6] = v11;
      v35 = 2080;
      v36 = v15;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "Also flags %d  count %llu  details %s", &v33, 0x1Cu);
    }

    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerNetScore];
    v17 = [v4 objectForKey:v16];

    v18 = 100;
    if (v17)
    {
      v18 = 100 - [v17 intValue];
    }

    v19 = [*(a1 + 32) _impactFromFlags:*(a1 + 72) andFlows:*(a1 + 56)];
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      v21 = 1;
    }

    else
    {
      v21 = v19 == 0;
    }

    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 1;
    }

    v23 = [MEMORY[0x277CCABB0] numberWithInt:v22];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerImpact];
    [v4 setObject:v23 forKey:v24];

    v25 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 72)];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerImpactFlags];
    [v4 setObject:v25 forKey:v26];

    v27 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerElapsedSinceClose];
    [v4 setObject:v27 forKey:v28];

    v29 = *(a1 + 40);
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerImpactReasons];
    [v4 setObject:v29 forKey:v30];

    v31 = *(a1 + 48);
    v32 = [MEMORY[0x277CBEAA8] date];
    (*(v31 + 16))(v31, 0, "WiFiTriggerStatus", v32, "collected on demand", 0, v4);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)checkUniqueStallCountOnInterfaceType:(int64_t)type stallType:(unint64_t)stallType
{
  v7 = *MEMORY[0x277D85DE8];
  if (((forceNoGate & 1) != 0 || gOpenedTimestamp) && type == 1 && stallType == 1)
  {
    v4 = [(DataStallHandler *)self->_dataStallHandler uniqStallCountForInterfaceType:1 stallType:1 foregroundOnly:1 since:gOpenedTimestamp];
    v5 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Incoming checkUniqueStallCountOnInterfaceType has %d uniques", v6, 8u);
    }

    if (v4)
    {
      internal_symptom_create();
      internal_symptom_send();
    }
  }
}

- (BOOL)noteSymptom:(id)symptom
{
  eventKey = [symptom eventKey];
  v4 = [SymptomStore keyFromSymptomName:@"com.apple.symptoms.kevent.arp-alive"];
  v5 = [eventKey isEqualToString:v4];

  if (v5)
  {
    v6 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = 2;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Clear old arp symptoms", buf, 2u);
      v8 = @"com.apple.symptoms.kevent.arp-failure";
    }

    else
    {
      v8 = @"com.apple.symptoms.kevent.arp-failure";
      v7 = 2;
    }

LABEL_9:
    [SymptomStore resetSymptomsWithKey:v8];
    v12 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "ARP OK tell health status stage", v27, 2u);
    }

    v13 = [ManagedEventHandler getHandlerByName:@"arp-alive"];
    v14 = [[DecisionDetails alloc] initWithReason:"arp-alive" code:v7 evaluations:0];
    v15 = v14;
    if (v13 && v14)
    {
      [v13 didReceiveSyndrome:v14];
    }

    goto LABEL_15;
  }

  v9 = [SymptomStore keyFromSymptomName:@"com.apple.symptoms.kevent.nd6-alive"];
  v10 = [eventKey isEqualToString:v9];

  if (v10)
  {
    v11 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Clear old ND6 symptoms", v30, 2u);
    }

    v8 = @"com.apple.symptoms.kevent.nd6-failure";
    v7 = 6;
    goto LABEL_9;
  }

  v18 = [SymptomStore keyFromSymptomName:@"com.apple.symptoms.wifi.dns.alive"];
  v19 = [eventKey isEqualToString:v18];

  if (v19)
  {
    v20 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "DNS alive", v29, 2u);
    }

    v21 = [ManagedEventHandler getHandlerByName:@"dns-alive"];
    v22 = [[DecisionDetails alloc] initWithReason:"dns-alive" code:3 evaluations:0];
    v23 = v22;
    if (v21 && v22)
    {
      [v21 didReceiveSyndrome:v22];
    }

    goto LABEL_15;
  }

  v24 = [SymptomStore keyFromSymptomName:@"com.apple.symptoms.wifi.unique_fg_data_stall"];
  v25 = [eventKey isEqualToString:v24];

  if (!v25)
  {
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v26 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 0;
    _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "Data Stall symptom, unique, foreground", v28, 2u);
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ at %p name %@  ", v5, self, self->_syndromeName];

  return v6;
}

- (void)dampeningStage:(id)stage
{
  *&v30[5] = *MEMORY[0x277D85DE8];
  stageCopy = stage;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v7 = v6;

  LODWORD(v8) = gDampeningInterval;
  if (v7 - self->_lastReportTime >= v8)
  {
    self->_lastReportTime = v7;
    v12 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      syndromeUTF8Name = self->_syndromeUTF8Name;
      v27 = 136315138;
      v28 = syndromeUTF8Name;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "WiFi Trigger Syndrome Handler about to cause event for %s", &v27, 0xCu);
    }

    additionalInfo = [stageCopy additionalInfo];
    if (!additionalInfo)
    {
      additionalInfo = objc_alloc_init(MEMORY[0x277CBEB38]);
      [stageCopy setAdditionalInfo:additionalInfo];
    }

    if ([stageCopy reasonCode] == 3)
    {
      date2 = 0;
    }

    else
    {
      date2 = [MEMORY[0x277CBEAA8] date];
    }

    v16 = [(WiFiTriggerHandler *)self _getAWDInfo:date2];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyAWDValidState];
    v18 = [v16 objectForKeyedSubscript:v17];

    if (!v18 || ![v18 BOOLValue])
    {
      goto LABEL_22;
    }

    if ([stageCopy reasonCode] == 3)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyAWDWiFiDNSTotalServers];
      v20 = [v16 objectForKeyedSubscript:v19];

      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyAWDWiFiDNSImpactedServers];
      v22 = [v16 objectForKeyedSubscript:v21];

      if (!v20 || !v22 || (v23 = [v20 integerValue], v23 != objc_msgSend(v22, "integerValue")))
      {
        v26 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
        {
          v27 = 138412546;
          v28 = v20;
          v29 = 2112;
          *v30 = v22;
          _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_INFO, "WiFi Ignore DNS trigger, DNS conditions changed back to total %@  impacted %@", &v27, 0x16u);
        }

        goto LABEL_22;
      }
    }

    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerAWDInfo];
    [additionalInfo setObject:v16 forKey:v24];

    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyDefRouteRTTVals];
    [additionalInfo setObject:@"No further RTT info" forKey:v25];

    [(ManagedEventHandler *)self->_eventHandler didReceiveSyndrome:stageCopy];
LABEL_22:

    goto LABEL_23;
  }

  v9 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_syndromeUTF8Name;
    v11 = (v7 - self->_lastReportTime);
    v27 = 136315650;
    v28 = v10;
    v29 = 1024;
    *v30 = v11;
    v30[2] = 1024;
    *&v30[3] = gDampeningInterval;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "WiFi Trigger Ignore syndrome  %s, too close in time to previous evaluation (%d secs, need %d secs)", &v27, 0x18u);
  }

LABEL_23:
}

- (BOOL)insufficientRxTrafficDetectedFrom:(id)from atTime:(id)time To:(id)to
{
  v57 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  timeCopy = time;
  toCopy = to;
  if (fromCopy && [fromCopy count])
  {
    if (toCopy && [toCopy count])
    {
      firstObject = [fromCopy firstObject];
      firstObject2 = [toCopy firstObject];
      v13 = [firstObject objectForKeyedSubscript:@"bytesIn"];
      v44 = [firstObject objectForKeyedSubscript:@"rxOOOBytes"];
      v43 = [firstObject objectForKeyedSubscript:@"rxDupeBytes"];
      v14 = [firstObject2 objectForKeyedSubscript:@"bytesIn"];
      v15 = [firstObject2 objectForKeyedSubscript:@"rxOOOBytes"];
      [firstObject2 objectForKeyedSubscript:@"rxDupeBytes"];
      v42 = v41 = firstObject;
      if (v13 && v44 && v43 && v14 && v15 && v42 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        longLongValue = [v13 longLongValue];
        longLongValue2 = [v44 longLongValue];
        v18 = longLongValue - (longLongValue2 + [v43 longLongValue]);
        longLongValue3 = [v14 longLongValue];
        longLongValue4 = [v15 longLongValue];
        v36 = longLongValue3 - (longLongValue4 + [v42 longLongValue]);
        v37 = v18;
        v20 = v36 - v18;
        date = [MEMORY[0x277CBEAA8] date];
        self->_lastRefutePeriodTraffic = v20;
        [date timeIntervalSinceDate:timeCopy];
        self->_lastRefutePeriodDuration = v22;
        v40 = date;
        objc_storeStrong(&self->_lastRefutePeriodTimestamp, date);
        v23 = rnfLogHandle;
        v24 = os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT);
        v38 = v14;
        v25 = v13;
        if (v20 <= 0)
        {
          if (v24)
          {
            *buf = 134218496;
            v46 = v20;
            v47 = 2048;
            v48 = v36;
            v49 = 2048;
            v50 = v37;
            _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "Insufficient progress %lld, current Rx %lld, baseline %lld", buf, 0x20u);
          }

          v26 = 1;
        }

        else
        {
          if (v24)
          {
            *buf = 134218496;
            v46 = v20;
            v47 = 2048;
            v48 = v36;
            v49 = 2048;
            v50 = v37;
            _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "Sufficient progress %lld, current Rx %lld changed from baseline %lld", buf, 0x20u);
          }

          v26 = 0;
        }

        v34 = v43;
        v33 = v44;
        v30 = v15;
        v31 = v38;
      }

      else
      {
        v25 = v13;
        v30 = v15;
        v31 = v14;
        v32 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 134219264;
          v46 = v25;
          v47 = 2048;
          v34 = v43;
          v33 = v44;
          v48 = v44;
          v49 = 2048;
          v50 = v43;
          v51 = 2048;
          v52 = v31;
          v53 = 2048;
          v54 = v30;
          v55 = 2048;
          v56 = v42;
          _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_ERROR, "Validation fail, ptrs %p %p %p %p %p %p", buf, 0x3Eu);
          v35 = v42;
          v26 = 0;
LABEL_32:

          goto LABEL_27;
        }

        v26 = 0;
        v34 = v43;
        v33 = v44;
      }

      v35 = v42;
      goto LABEL_32;
    }

    v27 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v28 = "No current data";
      goto LABEL_25;
    }
  }

  else
  {
    v27 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v28 = "No baseline data";
LABEL_25:
      _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
    }
  }

  v26 = 0;
LABEL_27:

  return v26;
}

- (void)refuteStage:(id)stage
{
  stageCopy = stage;
  if (self->_detailsAwaitingRefuter)
  {
    v6 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20[0]) = 0;
      v7 = "Notification already queued, drop later one";
      v8 = v20;
LABEL_11:
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else
  {
    v9 = self->_refuterAcitvationId + 1;
    self->_refuterAcitvationId = v9;
    v19 = 0;
    v20[0] = 0;
    if ([NetworkAnalyticsEngine getDNSCountsOn:3 total:v20 impacted:&v19])
    {
      v10 = v20[0];
      objc_storeStrong(&self->_detailsAwaitingRefuter, stage);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __34__WiFiTriggerHandler_refuteStage___block_invoke;
      v16[3] = &unk_27898A730;
      v17 = v9;
      v16[4] = self;
      [NetworkAnalyticsEngine performNetAttachmentQueryOn:3 reply:v16];
      if (v10 <= 2)
      {
        v11 = 10000000000;
      }

      else
      {
        v11 = 4000000000;
      }

      v12 = dispatch_time(0, v11);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __34__WiFiTriggerHandler_refuteStage___block_invoke_83;
      block[3] = &unk_27898A7A8;
      v15 = v9;
      block[4] = self;
      v14 = stageCopy;
      dispatch_after(v12, MEMORY[0x277D85CD0], block);
    }

    else
    {
      v6 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "Can't get DNS Server info for refute state, skipping";
        v8 = buf;
        goto LABEL_11;
      }
    }
  }
}

void __34__WiFiTriggerHandler_refuteStage___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 description];
    v12 = 136315138;
    v13 = [v7 UTF8String];
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "baseline result %s", &v12, 0xCu);
  }

  v8 = *(a1 + 32);
  if (*(a1 + 40) == *(v8 + 128))
  {
    objc_storeStrong((v8 + 112), a2);
    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = *(a1 + 32);
    v11 = *(v10 + 120);
    *(v10 + 120) = v9;
  }
}

void __34__WiFiTriggerHandler_refuteStage___block_invoke_83(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  if (v1 == *(v2 + 128))
  {
    if ((gTriggeringAllowed & 1) != 0 || forceNoGate == 1)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __34__WiFiTriggerHandler_refuteStage___block_invoke_2;
      v11[3] = &unk_27898A780;
      v13 = v1;
      v11[4] = v2;
      v12 = *(a1 + 40);
      [NetworkAnalyticsEngine performNetAttachmentQueryOn:3 reply:v11];
    }

    else
    {
      v5 = *(v2 + 112);
      *(v2 + 112) = 0;

      v6 = *(a1 + 32);
      v7 = *(v6 + 104);
      *(v6 + 104) = 0;

      v8 = *(a1 + 32);
      v9 = *(v8 + 120);
      *(v8 + 120) = 0;
    }
  }

  else
  {
    v4 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "skip, refute block scheduled when no longer applicable", v10, 2u);
    }
  }
}

void __34__WiFiTriggerHandler_refuteStage___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 description];
    *buf = 136315138;
    v14 = [v6 UTF8String];
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "later result %s", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__WiFiTriggerHandler_refuteStage___block_invoke_84;
  v9[3] = &unk_27898A758;
  v12 = *(a1 + 48);
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __34__WiFiTriggerHandler_refuteStage___block_invoke_84(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2 == *(v3 + 128))
  {
    v4 = [v3 insufficientRxTrafficDetectedFrom:*(v3 + 112) atTime:*(v3 + 120) To:*(a1 + 40)];
    v5 = rnfLogHandle;
    v6 = os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = *(*(a1 + 32) + 120);
        v8 = v5;
        [v7 timeIntervalSinceNow];
        v17 = 134217984;
        v18 = -v9;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "refute stage finds insufficient traffic after %f secs to suppress notification, passthrough", &v17, 0xCu);
      }

      [*(a1 + 32) dampeningStage:*(a1 + 48)];
    }

    else if (v6)
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "skip, refute stage suppresses notification", &v17, 2u);
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 112);
    *(v11 + 112) = 0;

    v13 = *(a1 + 32);
    v14 = *(v13 + 104);
    *(v13 + 104) = 0;

    v15 = *(a1 + 32);
    v16 = *(v15 + 120);
    *(v15 + 120) = 0;
  }

  else
  {
    v10 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "skip, delayed result produced when no longer wanted", &v17, 2u);
    }
  }
}

- (void)didReceiveSyndrome:(id)syndrome
{
  v35 = *MEMORY[0x277D85DE8];
  syndromeCopy = syndrome;
  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    *v32 = 136315138;
    *&v32[4] = [syndromeCopy reason];
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "%s", v32, 0xCu);
  }

  if (!self->_eventHandler)
  {
    v8 = [ManagedEventHandler getHandlerByName:self->_syndromeName];
    eventHandler = self->_eventHandler;
    self->_eventHandler = v8;

    v10 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      syndromeUTF8Name = self->_syndromeUTF8Name;
      v11 = self->_eventHandler;
      *v32 = 134218242;
      *&v32[4] = v11;
      v33 = 2080;
      v34 = syndromeUTF8Name;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "WiFi Trigger Syndrome Handler allocated Managed Event Handler at %p for %s", v32, 0x16u);
    }
  }

  reasonCode = [syndromeCopy reasonCode];
  switch(reasonCode)
  {
    case 6:
      goto LABEL_9;
    case 3:
      v17 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "DNS failure tell health status stage", v32, 2u);
      }

      v15 = "dns-failure";
      v16 = @"dns-failure";
      goto LABEL_15;
    case 2:
LABEL_9:
      v14 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "ARP/ND6 failure tell health status stage", v32, 2u);
      }

      v15 = "arp-failure";
      v16 = @"arp-failure";
LABEL_15:
      v18 = [ManagedEventHandler getHandlerByName:v16];
      v19 = -[DecisionDetails initWithReason:code:evaluations:]([DecisionDetails alloc], "initWithReason:code:evaluations:", v15, [syndromeCopy reasonCode], 0);
      goto LABEL_17;
  }

  v19 = 0;
  v18 = 0;
LABEL_17:
  reasonCode2 = [syndromeCopy reasonCode];
  switch(reasonCode2)
  {
    case 2:
      v21 = 1;
      goto LABEL_23;
    case 3:
      v21 = 4;
      goto LABEL_23;
    case 6:
      v21 = 7;
LABEL_23:
      [CellOutrankHandler noteOutrankEvent:v21];
      break;
  }

  if (v18 && v19)
  {
    [v18 didReceiveSyndrome:v19];
  }

  if ((gTriggeringAllowed & 1) == 0 && forceNoGate != 1)
  {
    v25 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v26 = self->_syndromeUTF8Name;
      *v32 = 136315138;
      *&v32[4] = v26;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEFAULT, "Queue syndrome  %s, disallowed by RSSI at the moment)", v32, 0xCu);
    }

    objc_storeStrong(&gQueuedHandler, self);
    objc_storeStrong(&gQueuedDetails, syndrome);
    date = [MEMORY[0x277CBEAA8] date];
    v28 = gQueuedTimestamp;
    gQueuedTimestamp = date;

    goto LABEL_60;
  }

  reasonCode3 = [syndromeCopy reasonCode];
  v23 = rnfLogHandle;
  if (reasonCode3 > 3)
  {
    if (reasonCode3 <= 5)
    {
      if (reasonCode3 != 4)
      {
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 0;
          v24 = "Deal immediately with polled flow signatures";
LABEL_58:
          _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, v24, v32, 2u);
          goto LABEL_59;
        }

        goto LABEL_59;
      }

      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        v29 = "Deliberate skip, RTT triggers disabled for now";
        goto LABEL_53;
      }

      goto LABEL_60;
    }

    if (reasonCode3 == 6)
    {
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        v24 = "Deal immediately with ND6 signatures";
        goto LABEL_58;
      }

      goto LABEL_59;
    }

    if (reasonCode3 == 7)
    {
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        v24 = "Data Stall syndrome";
        goto LABEL_58;
      }

LABEL_59:
      [(WiFiTriggerHandler *)self dampeningStage:syndromeCopy, *v32];
      goto LABEL_60;
    }

LABEL_49:
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v30 = v23;
      reasonCode4 = [syndromeCopy reasonCode];
      *v32 = 134217984;
      *&v32[4] = reasonCode4;
      _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_ERROR, "Unknown AWD code %llu for wifi trigger disconnect", v32, 0xCu);
    }

    goto LABEL_60;
  }

  if (reasonCode3 != 1)
  {
    if (reasonCode3 == 2)
    {
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        v24 = "Deal immediately with ARP signatures";
        goto LABEL_58;
      }

      goto LABEL_59;
    }

    if (reasonCode3 == 3)
    {
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "DNS trigger calls refute stage", v32, 2u);
      }

      [(WiFiTriggerHandler *)self refuteStage:syndromeCopy];
      goto LABEL_60;
    }

    goto LABEL_49;
  }

  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v32 = 0;
    v29 = "Deliberate skip, Flow triggers disabled for now";
LABEL_53:
    _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, v29, v32, 2u);
  }

LABEL_60:
}

+ (void)getHandlerByName:(char *)a1 .cold.1(char **a1)
{
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_FAULT))
  {
    v8 = 0;
    OUTLINED_FUNCTION_0_1(&dword_23255B000, v2, v3, "strdup() failed", v4, v5, v6, v7, v8);
  }

  *a1 = 0;
  asprintf(a1, "strdup() failed");
  qword_27DDA0B50 = *a1;
  __break(1u);
}

+ (void)getHandlerByName:(char *)a1 .cold.2(char **a1)
{
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_FAULT))
  {
    v8 = 0;
    OUTLINED_FUNCTION_0_1(&dword_23255B000, v2, v3, "strict_strdup called with NULL string", v4, v5, v6, v7, v8);
  }

  *a1 = 0;
  asprintf(a1, "strict_strdup called with NULL string");
  qword_27DDA0B50 = *a1;
  __break(1u);
}

@end