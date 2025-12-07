@interface SAAnalytics
- (SAAnalytics)init;
- (SAAnalytics)initWithSettings:(id)settings;
- (void)addAggressiveScanRequest:(BOOL)request;
- (void)addAlertWithContext:(id)context;
- (void)addDeviceFetchResultCount:(unint64_t)count type1count:(unint64_t)type1count type2count:(unint64_t)type2count type3count:(unint64_t)type3count type4count:(unint64_t)type4count type5count:(unint64_t)type5count type6count:(unint64_t)type6count type7count:(unint64_t)self0 type8count:(unint64_t)self1 safeCount:(unint64_t)self2 usingSameSafe:(BOOL)self3;
- (void)addGpsLocationRequest:(BOOL)request;
- (void)addScanDuration:(double)duration;
- (void)addScanDurationForFindingRelevantItemsOnly:(double)only;
- (void)addVisit:(BOOL)visit withRadius:(unint64_t)radius;
- (void)addWakeTimerRequest;
- (void)addWifiLocationRequest:(BOOL)request;
- (void)publishAndResetAggregation;
- (void)resetAggregation;
- (void)setActiveState:(BOOL)state;
- (void)setInSafeLocationState:(BOOL)state;
- (void)setInTravelState:(BOOL)state;
- (void)setInUnsafeLocationState:(BOOL)state;
- (void)submitAlertRateEvent:(id)event alertType:(id)type;
- (void)submitBeaconMonitoringEvent:(BOOL)event safeLocationsMatch:(BOOL)match;
- (void)submitDefaultAlertRateEvent;
- (void)submitEvent:(id)event content:(id)content;
@end

@implementation SAAnalytics

- (SAAnalytics)init
{
  v3 = objc_alloc_init(SAAnalyticsSettings);
  v4 = [(SAAnalytics *)self initWithSettings:v3];

  return v4;
}

- (SAAnalytics)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v14.receiver = self;
  v14.super_class = SAAnalytics;
  v6 = [(SAAnalytics *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
  }

  lastActivated = v7->_lastActivated;
  v7->_lastActivated = 0;

  lastSafeEntry = v7->_lastSafeEntry;
  v7->_lastSafeEntry = 0;

  lastUnsafeEntry = v7->_lastUnsafeEntry;
  v7->_lastUnsafeEntry = 0;

  lastTravelStart = v7->_lastTravelStart;
  v7->_lastTravelStart = 0;

  [(SAAnalytics *)v7 setNumDevicesAtSafeExit:-1];
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(SAAnalytics *)v7 setNumEnabledPerType:v12];

  return v7;
}

- (void)submitEvent:(id)event content:(id)content
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  contentCopy = content;
  enableSubmission = [(SAAnalyticsSettings *)self->_settings enableSubmission];
  v9 = TASALog;
  v10 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
  if (enableSubmission)
  {
    if (v10)
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2113;
      v17 = eventCopy;
      v18 = 2113;
      v19 = contentCopy;
      _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAAnalytics Submitting analytics event, eventName:%{private}@, content:%{private}@}", buf, 0x26u);
    }

    v11 = contentCopy;
    AnalyticsSendEventLazy();
  }

  else if (v10)
  {
    *buf = 68289539;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2113;
    v17 = eventCopy;
    v18 = 2113;
    v19 = contentCopy;
    _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAAnalytics submission not enabled, eventName:%{private}@, content:%{private}@}", buf, 0x26u);
  }
}

- (void)publishAndResetAggregation
{
  v82[31] = *MEMORY[0x277D85DE8];
  lastActivated = [(SAAnalytics *)self lastActivated];

  if (lastActivated)
  {
    v4 = [MEMORY[0x277CBEAA8] now];
    lastActivated2 = [(SAAnalytics *)self lastActivated];
    [v4 timeIntervalSinceDate:lastActivated2];
    [(SAAnalytics *)self setAggActiveDuration:[(SAAnalytics *)self aggActiveDuration]+ v6];

    v7 = [MEMORY[0x277CBEAA8] now];
    [(SAAnalytics *)self setLastActivated:v7];
  }

  lastSafeEntry = [(SAAnalytics *)self lastSafeEntry];

  if (lastSafeEntry)
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    lastSafeEntry2 = [(SAAnalytics *)self lastSafeEntry];
    [v9 timeIntervalSinceDate:lastSafeEntry2];
    [(SAAnalytics *)self setAggInSafeDuration:[(SAAnalytics *)self aggInSafeDuration]+ v11];

    v12 = [MEMORY[0x277CBEAA8] now];
    [(SAAnalytics *)self setLastSafeEntry:v12];
  }

  lastUnsafeEntry = [(SAAnalytics *)self lastUnsafeEntry];

  if (lastUnsafeEntry)
  {
    v14 = [MEMORY[0x277CBEAA8] now];
    lastUnsafeEntry2 = [(SAAnalytics *)self lastUnsafeEntry];
    [v14 timeIntervalSinceDate:lastUnsafeEntry2];
    [(SAAnalytics *)self setAggInUnsafeDuration:[(SAAnalytics *)self aggInUnsafeDuration]+ v16];

    v17 = [MEMORY[0x277CBEAA8] now];
    [(SAAnalytics *)self setLastUnsafeEntry:v17];
  }

  lastTravelStart = [(SAAnalytics *)self lastTravelStart];

  if (lastTravelStart)
  {
    v19 = [MEMORY[0x277CBEAA8] now];
    lastTravelStart2 = [(SAAnalytics *)self lastTravelStart];
    [v19 timeIntervalSinceDate:lastTravelStart2];
    [(SAAnalytics *)self setAggInTravelDuration:[(SAAnalytics *)self aggInTravelDuration]+ v21];

    v22 = [MEMORY[0x277CBEAA8] now];
    [(SAAnalytics *)self setLastTravelStart:v22];
  }

  v81[0] = @"numAlerts";
  v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numAlerts](self, "numAlerts")}];
  v82[0] = v80;
  v81[1] = @"numAlertsLeftBehind";
  v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numAlertsLeftBehind](self, "numAlertsLeftBehind")}];
  v82[1] = v79;
  v81[2] = @"numAlertsTraveling";
  v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numAlertsTraveling](self, "numAlertsTraveling")}];
  v82[2] = v78;
  v81[3] = @"numEnabled";
  v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numEnabled](self, "numEnabled")}];
  v82[3] = v77;
  v81[4] = @"numItems";
  numEnabledPerType = [(SAAnalytics *)self numEnabledPerType];
  v23 = [numEnabledPerType objectForKey:&unk_287710150];
  v75 = v23;
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = &unk_287710168;
  }

  v82[4] = v24;
  v81[5] = @"numAccessories";
  numEnabledPerType2 = [(SAAnalytics *)self numEnabledPerType];
  v25 = [numEnabledPerType2 objectForKey:&unk_287710180];
  v73 = v25;
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = &unk_287710168;
  }

  v82[5] = v26;
  v81[6] = @"numBTLE";
  numEnabledPerType3 = [(SAAnalytics *)self numEnabledPerType];
  v27 = [numEnabledPerType3 objectForKey:&unk_287710198];
  v71 = v27;
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = &unk_287710168;
  }

  v82[6] = v28;
  v81[7] = @"numDevices";
  numEnabledPerType4 = [(SAAnalytics *)self numEnabledPerType];
  v29 = [numEnabledPerType4 objectForKey:&unk_2877101B0];
  v69 = v29;
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = &unk_287710168;
  }

  v82[7] = v30;
  v81[8] = @"numiPhone";
  numEnabledPerType5 = [(SAAnalytics *)self numEnabledPerType];
  v31 = [numEnabledPerType5 objectForKey:&unk_2877101C8];
  v67 = v31;
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = &unk_287710168;
  }

  v82[8] = v32;
  v81[9] = @"numiPad";
  numEnabledPerType6 = [(SAAnalytics *)self numEnabledPerType];
  v33 = [numEnabledPerType6 objectForKey:&unk_2877101E0];
  v65 = v33;
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = &unk_287710168;
  }

  v82[9] = v34;
  v81[10] = @"numMacBook";
  numEnabledPerType7 = [(SAAnalytics *)self numEnabledPerType];
  v35 = [numEnabledPerType7 objectForKey:&unk_2877101F8];
  v63 = v35;
  if (v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = &unk_287710168;
  }

  v82[10] = v36;
  v81[11] = @"numAirPods";
  numEnabledPerType8 = [(SAAnalytics *)self numEnabledPerType];
  v37 = [numEnabledPerType8 objectForKey:&unk_287710210];
  v61 = v37;
  if (v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = &unk_287710168;
  }

  v82[11] = v38;
  v81[12] = @"numSafe";
  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numSafe](self, "numSafe")}];
  v82[12] = v60;
  v81[13] = @"numSafeInUse";
  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numSafeInUse](self, "numSafeInUse")}];
  v82[13] = v59;
  v81[14] = @"isAllUsingSameSafe";
  v58 = [MEMORY[0x277CCABB0] numberWithBool:{-[SAAnalytics isAllUsingSameSafe](self, "isAllUsingSameSafe")}];
  v82[14] = v58;
  v81[15] = @"numBTRequests";
  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numBTRequests](self, "numBTRequests")}];
  v82[15] = v57;
  v81[16] = @"numBTLeftBehindRequests";
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numBTLeftBehindRequests](self, "numBTLeftBehindRequests")}];
  v82[16] = v56;
  v81[17] = @"numBTTravelingRequests";
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numBTTravelingRequests](self, "numBTTravelingRequests")}];
  v82[17] = v55;
  v81[18] = @"numGpsRequests";
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numGpsRequests](self, "numGpsRequests")}];
  v82[18] = v54;
  v81[19] = @"numWifiRequests";
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numWifiRequests](self, "numWifiRequests")}];
  v82[19] = v53;
  v81[20] = @"numTimers";
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numTimers](self, "numTimers")}];
  v82[20] = v52;
  v81[21] = @"numDevicesAtSafeExit";
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numDevicesAtSafeExit](self, "numDevicesAtSafeExit")}];
  v82[21] = v51;
  v81[22] = @"numUnsafe";
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numUnsafe](self, "numUnsafe")}];
  v82[22] = v50;
  v81[23] = @"numUnsafeWithLOI";
  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numUnsafeWithLOI](self, "numUnsafeWithLOI")}];
  v82[23] = v49;
  v81[24] = @"numUnsafeWithoutLOI";
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numUnsafeWithoutLOI](self, "numUnsafeWithoutLOI")}];
  v82[24] = v39;
  v81[25] = @"aggActiveDuration";
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics aggActiveDuration](self, "aggActiveDuration")}];
  v82[25] = v40;
  v81[26] = @"aggInSafeDuration";
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics aggInSafeDuration](self, "aggInSafeDuration")}];
  v82[26] = v41;
  v81[27] = @"aggInUnsafeDuration";
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics aggInUnsafeDuration](self, "aggInUnsafeDuration")}];
  v82[27] = v42;
  v81[28] = @"aggInTravelDuration";
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics aggInTravelDuration](self, "aggInTravelDuration")}];
  v82[28] = v43;
  v81[29] = @"totalScanDuration";
  v44 = MEMORY[0x277CCABB0];
  [(SAAnalytics *)self aggScanDuration];
  v45 = [v44 numberWithDouble:?];
  v82[29] = v45;
  v81[30] = @"totalScanDurationForFindingRelevantItemsOnly";
  v46 = MEMORY[0x277CCABB0];
  [(SAAnalytics *)self aggScanDurationForFindingRelevantItemsOnly];
  v47 = [v46 numberWithDouble:?];
  v82[30] = v47;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:31];

  [(SAAnalytics *)self submitEvent:@"com.apple.clx.alert.heartbeats" content:v48];
  [(SAAnalytics *)self resetAggregation];
}

- (void)resetAggregation
{
  [(SAAnalytics *)self setNumAlerts:0];
  [(SAAnalytics *)self setNumAlertsLeftBehind:0];
  [(SAAnalytics *)self setNumAlertsTraveling:0];
  [(SAAnalytics *)self setNumBTRequests:0];
  [(SAAnalytics *)self setNumBTLeftBehindRequests:0];
  [(SAAnalytics *)self setNumBTTravelingRequests:0];
  [(SAAnalytics *)self setNumGpsRequests:0];
  [(SAAnalytics *)self setNumWifiRequests:0];
  [(SAAnalytics *)self setNumTimers:0];
  [(SAAnalytics *)self setNumDevicesAtSafeExit:-1];
  [(SAAnalytics *)self setNumUnsafe:0];
  [(SAAnalytics *)self setNumUnsafeWithLOI:0];
  [(SAAnalytics *)self setNumUnsafeWithoutLOI:0];
  [(SAAnalytics *)self setAggActiveDuration:0];
  [(SAAnalytics *)self setAggInSafeDuration:0];
  [(SAAnalytics *)self setAggInUnsafeDuration:0];
  [(SAAnalytics *)self setAggInTravelDuration:0];
  [(SAAnalytics *)self setAggScanDuration:0.0];

  [(SAAnalytics *)self setAggScanDurationForFindingRelevantItemsOnly:0.0];
}

- (void)submitDefaultAlertRateEvent
{
  v27 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(SAAnalytics *)self numEnabledPerType];
  v17 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v17)
  {
    v15 = *v19;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v18 + 1) + 8 * i);
        v24[0] = @"numOfAlertsPerDay";
        v24[1] = @"deviceType";
        v25[0] = &unk_287710168;
        v25[1] = v3;
        v24[2] = @"numEnabled";
        numEnabledPerType = [(SAAnalytics *)self numEnabledPerType];
        v5 = [numEnabledPerType objectForKey:v3];
        v6 = v5;
        if (v5)
        {
          v7 = v5;
        }

        else
        {
          v7 = &unk_287710168;
        }

        v24[3] = @"alertType";
        v25[2] = v7;
        v25[3] = &unk_2877101B0;
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

        [(SAAnalytics *)self submitEvent:@"com.apple.clx.sa.alertRate" content:v8];
        v22[0] = @"numOfAlertsPerDay";
        v22[1] = @"deviceType";
        v23[0] = &unk_287710168;
        v23[1] = v3;
        v22[2] = @"numEnabled";
        numEnabledPerType2 = [(SAAnalytics *)self numEnabledPerType];
        v10 = [numEnabledPerType2 objectForKey:v3];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = &unk_287710168;
        }

        v22[3] = @"alertType";
        v23[2] = v12;
        v23[3] = &unk_287710150;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];

        [(SAAnalytics *)self submitEvent:@"com.apple.clx.sa.alertRate" content:v13];
      }

      v17 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v17);
  }
}

- (void)submitAlertRateEvent:(id)event alertType:(id)type
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  typeCopy = type;
  if ([(SAAnalyticsSettings *)self->_settings enableSubmission])
  {
    numEnabledPerType = [(SAAnalytics *)self numEnabledPerType];
    v9 = [numEnabledPerType objectForKey:eventCopy];

    if (v9)
    {
      v15[0] = &unk_287710228;
      v15[1] = eventCopy;
      v10 = [(SAAnalytics *)self numEnabledPerType:@"numOfAlertsPerDay"];
      v11 = [v10 objectForKey:eventCopy];
      v14[3] = @"alertType";
      v15[2] = v11;
      v15[3] = typeCopy;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

      [(SAAnalytics *)self submitEvent:@"com.apple.clx.sa.alertRate" content:v12];
    }

    else
    {
      v13 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289026;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        _os_log_impl(&dword_2656EA000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:surfacing alert but there is no device being monitored}", buf, 0x12u);
      }
    }
  }
}

- (void)submitBeaconMonitoringEvent:(BOOL)event safeLocationsMatch:(BOOL)match
{
  matchCopy = match;
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"beaconGroupsComplete";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:event];
  v9[1] = @"safeLocationsMatch";
  v10[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithBool:matchCopy];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  [(SAAnalytics *)self submitEvent:@"com.apple.clx.sa.beaconMonitoring" content:v8];
}

- (void)addAlertWithContext:(id)context
{
  contextCopy = context;
  [(SAAnalytics *)self setNumAlerts:[(SAAnalytics *)self numAlerts]+ 1];
  v5 = [contextCopy objectForKeyedSubscript:&unk_287710240];

  integerValue = [v5 integerValue];
  if (integerValue == 1)
  {
    v8 = [(SAAnalytics *)self numAlertsLeftBehind]+ 1;

    [(SAAnalytics *)self setNumAlertsLeftBehind:v8];
  }

  else if (integerValue == 2)
  {
    v7 = [(SAAnalytics *)self numAlertsTraveling]+ 1;

    [(SAAnalytics *)self setNumAlertsTraveling:v7];
  }
}

- (void)addScanDuration:(double)duration
{
  [(SAAnalytics *)self aggScanDuration];
  v6 = v5 + duration;

  [(SAAnalytics *)self setAggScanDuration:v6];
}

- (void)addScanDurationForFindingRelevantItemsOnly:(double)only
{
  [(SAAnalytics *)self aggScanDurationForFindingRelevantItemsOnly];
  v6 = v5 + only;

  [(SAAnalytics *)self setAggScanDurationForFindingRelevantItemsOnly:v6];
}

- (void)addDeviceFetchResultCount:(unint64_t)count type1count:(unint64_t)type1count type2count:(unint64_t)type2count type3count:(unint64_t)type3count type4count:(unint64_t)type4count type5count:(unint64_t)type5count type6count:(unint64_t)type6count type7count:(unint64_t)self0 type8count:(unint64_t)self1 safeCount:(unint64_t)self2 usingSameSafe:(BOOL)self3
{
  [(SAAnalytics *)self setNumEnabled:count];
  numEnabledPerType = [(SAAnalytics *)self numEnabledPerType];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type1count];
  [numEnabledPerType setObject:v20 forKey:&unk_287710150];

  numEnabledPerType2 = [(SAAnalytics *)self numEnabledPerType];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type2count];
  [numEnabledPerType2 setObject:v22 forKey:&unk_287710180];

  numEnabledPerType3 = [(SAAnalytics *)self numEnabledPerType];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type3count];
  [numEnabledPerType3 setObject:v24 forKey:&unk_287710198];

  numEnabledPerType4 = [(SAAnalytics *)self numEnabledPerType];
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type4count];
  [numEnabledPerType4 setObject:v26 forKey:&unk_2877101B0];

  numEnabledPerType5 = [(SAAnalytics *)self numEnabledPerType];
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type5count];
  [numEnabledPerType5 setObject:v28 forKey:&unk_2877101C8];

  numEnabledPerType6 = [(SAAnalytics *)self numEnabledPerType];
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type6count];
  [numEnabledPerType6 setObject:v30 forKey:&unk_2877101E0];

  numEnabledPerType7 = [(SAAnalytics *)self numEnabledPerType];
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type7count];
  [numEnabledPerType7 setObject:v32 forKey:&unk_2877101F8];

  numEnabledPerType8 = [(SAAnalytics *)self numEnabledPerType];
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type8count];
  [numEnabledPerType8 setObject:v34 forKey:&unk_287710210];

  [(SAAnalytics *)self setNumSafeInUse:safeCount];

  [(SAAnalytics *)self setIsAllUsingSameSafe:safe];
}

- (void)addAggressiveScanRequest:(BOOL)request
{
  requestCopy = request;
  [(SAAnalytics *)self setNumBTRequests:[(SAAnalytics *)self numBTRequests]+ 1];
  if (requestCopy)
  {
    v5 = [(SAAnalytics *)self numBTTravelingRequests]+ 1;

    [(SAAnalytics *)self setNumBTTravelingRequests:v5];
  }

  else
  {
    v6 = [(SAAnalytics *)self numBTLeftBehindRequests]+ 1;

    [(SAAnalytics *)self setNumBTLeftBehindRequests:v6];
  }
}

- (void)addGpsLocationRequest:(BOOL)request
{
  v4 = [(SAAnalytics *)self numGpsRequests]+ 1;

  [(SAAnalytics *)self setNumGpsRequests:v4];
}

- (void)addWifiLocationRequest:(BOOL)request
{
  v4 = [(SAAnalytics *)self numWifiRequests]+ 1;

  [(SAAnalytics *)self setNumWifiRequests:v4];
}

- (void)addWakeTimerRequest
{
  v3 = [(SAAnalytics *)self numTimers]+ 1;

  [(SAAnalytics *)self setNumTimers:v3];
}

- (void)addVisit:(BOOL)visit withRadius:(unint64_t)radius
{
  visitCopy = visit;
  [(SAAnalytics *)self setNumUnsafe:[(SAAnalytics *)self numUnsafe:visit]+ 1];
  if (visitCopy)
  {
    v6 = [(SAAnalytics *)self numUnsafeWithLOI]+ 1;

    [(SAAnalytics *)self setNumUnsafeWithLOI:v6];
  }

  else
  {
    v7 = [(SAAnalytics *)self numUnsafeWithoutLOI]+ 1;

    [(SAAnalytics *)self setNumUnsafeWithoutLOI:v7];
  }
}

- (void)setActiveState:(BOOL)state
{
  stateCopy = state;
  lastActivated = [(SAAnalytics *)self lastActivated];

  if (stateCopy)
  {
    if (lastActivated)
    {
      return;
    }

    v10 = [MEMORY[0x277CBEAA8] now];
    [(SAAnalytics *)self setLastActivated:v10];
    lastActivated = v10;
  }

  else
  {
    if (!lastActivated)
    {
      return;
    }

    v7 = [MEMORY[0x277CBEAA8] now];
    lastActivated2 = [(SAAnalytics *)self lastActivated];
    [v7 timeIntervalSinceDate:lastActivated2];
    [(SAAnalytics *)self setAggActiveDuration:[(SAAnalytics *)self aggActiveDuration]+ v9];

    lastActivated = self->_lastActivated;
    self->_lastActivated = 0;
  }
}

- (void)setInSafeLocationState:(BOOL)state
{
  stateCopy = state;
  lastSafeEntry = [(SAAnalytics *)self lastSafeEntry];

  if (stateCopy)
  {
    if (lastSafeEntry)
    {
      return;
    }

    v10 = [MEMORY[0x277CBEAA8] now];
    [(SAAnalytics *)self setLastSafeEntry:v10];
    lastSafeEntry = v10;
  }

  else
  {
    if (!lastSafeEntry)
    {
      return;
    }

    v7 = [MEMORY[0x277CBEAA8] now];
    lastSafeEntry2 = [(SAAnalytics *)self lastSafeEntry];
    [v7 timeIntervalSinceDate:lastSafeEntry2];
    [(SAAnalytics *)self setAggInSafeDuration:[(SAAnalytics *)self aggInSafeDuration]+ v9];

    lastSafeEntry = self->_lastSafeEntry;
    self->_lastSafeEntry = 0;
  }
}

- (void)setInUnsafeLocationState:(BOOL)state
{
  stateCopy = state;
  lastUnsafeEntry = [(SAAnalytics *)self lastUnsafeEntry];

  if (stateCopy)
  {
    if (lastUnsafeEntry)
    {
      return;
    }

    v10 = [MEMORY[0x277CBEAA8] now];
    [(SAAnalytics *)self setLastUnsafeEntry:v10];
    lastUnsafeEntry = v10;
  }

  else
  {
    if (!lastUnsafeEntry)
    {
      return;
    }

    v7 = [MEMORY[0x277CBEAA8] now];
    lastUnsafeEntry2 = [(SAAnalytics *)self lastUnsafeEntry];
    [v7 timeIntervalSinceDate:lastUnsafeEntry2];
    [(SAAnalytics *)self setAggInUnsafeDuration:[(SAAnalytics *)self aggInUnsafeDuration]+ v9];

    lastUnsafeEntry = self->_lastUnsafeEntry;
    self->_lastUnsafeEntry = 0;
  }
}

- (void)setInTravelState:(BOOL)state
{
  stateCopy = state;
  lastTravelStart = [(SAAnalytics *)self lastTravelStart];

  if (stateCopy)
  {
    if (lastTravelStart)
    {
      return;
    }

    v10 = [MEMORY[0x277CBEAA8] now];
    [(SAAnalytics *)self setLastTravelStart:v10];
    lastTravelStart = v10;
  }

  else
  {
    if (!lastTravelStart)
    {
      return;
    }

    v7 = [MEMORY[0x277CBEAA8] now];
    lastTravelStart2 = [(SAAnalytics *)self lastTravelStart];
    [v7 timeIntervalSinceDate:lastTravelStart2];
    [(SAAnalytics *)self setAggInTravelDuration:[(SAAnalytics *)self aggInTravelDuration]+ v9];

    lastTravelStart = self->_lastTravelStart;
    self->_lastTravelStart = 0;
  }
}

@end