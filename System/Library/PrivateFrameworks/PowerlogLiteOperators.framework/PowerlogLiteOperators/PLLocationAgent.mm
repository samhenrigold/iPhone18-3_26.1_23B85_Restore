@interface PLLocationAgent
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitionClientStatus;
+ (id)entryEventForwardDefinitionGPSSubscription;
+ (id)entryEventForwardDefinitionGnssSession;
+ (id)entryEventForwardDefinitionLogLevel;
+ (id)entryEventForwardDefinitionOdometry;
+ (id)entryEventForwardDefinitionStatusBar;
+ (id)entryEventForwardDefinitionSuppressionManagerClient;
+ (id)entryEventForwardDefinitionTechStatus;
+ (id)entryEventForwardDefinitionViewObstructed;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitionMapsBusyness;
+ (id)entryEventIntervalDefinitionPDR;
+ (id)entryEventIntervalDefinitionSeparationAlert;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventNoneDefinitionClientStatusDebug;
+ (id)entryEventNoneDefinitions;
+ (id)entryEventPointDefinitionClientStatus;
+ (id)entryEventPointDefinitionMiLo;
+ (id)entryEventPointDefinitionMotionPacket;
+ (id)entryEventPointDefinitionWifiLocationScanRequesters;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)shouldRateLimitTechStatus;
- (PLLocationAgent)init;
- (id)getOpenEntryForClientSettings:(id)settings withTimeStarted:(id)started withClient:(id)client withType:(id)type withEntryKey:(id)key;
- (id)humanReadableNameForTechnology:(id)technology;
- (id)lastEntryWithClient:(id)client withType:(id)type withBundleID:(id)d withEntryKey:(id)key;
- (unint64_t)convertCheckInEvent:(id)event;
- (unint64_t)convertClientEvent:(id)event;
- (unint64_t)convertOdometryEvent:(id)event;
- (unint64_t)convertViewObstructedEvent:(id)event;
- (void)closeOpenEntryForClient:(id)client withOpenEntry:(id)entry withTimeStopped:(id)stopped;
- (void)initOperatorDependancies;
- (void)logEventForwardCheckInSession:(id)session;
- (void)logEventForwardClientStatuswithPayload:(id)payload;
- (void)logEventForwardGnssSession:(id)session;
- (void)logEventForwardOdometry:(id)odometry;
- (void)logEventForwardSuppressionManagerClient:(id)client;
- (void)logEventForwardTechStatus;
- (void)logEventForwardTechStatus_withLimiter;
- (void)logEventForwardViewObstructed:(id)obstructed;
- (void)logEventFowardGPSSubscription:(id)subscription;
- (void)logEventIntervalMapsBusynessState:(id)state;
- (void)logEventIntervalPDR:(id)r;
- (void)logEventIntervalSeparationAlert:(id)alert;
- (void)logEventNoneClientStatus;
- (void)logEventNoneClientStatusDebugWithClients:(id)clients;
- (void)logEventPointClientStatus;
- (void)logEventPointGeofenceTrigger:(id)trigger;
- (void)logEventPointMiLoScans:(id)scans;
- (void)logEventPointMotionPacket:(id)packet;
- (void)logEventPointWifiLocationScanRequesters:(id)requesters;
- (void)logPredictedContextInferenceEvent:(id)event;
- (void)logPredictedContextTrainingEvent:(id)event;
- (void)modelGpsSegmentPower:(id)power withGpsPower:(double)gpsPower withTotalDuration:(double)duration;
- (void)processesOfInterest:(id)interest;
- (void)resyncActiveClients;
- (void)updateClientsLocationInfo:(id)info;
- (void)updateGnssPowerMetric:(id)metric;
- (void)updateLocalCacheWithClient:(id)client withType:(id)type withBundleID:(id)d withEntry:(id)entry;
- (void)updateLocationDistributionEvents;
- (void)updateLocationQualificationEvents;
- (void)writeModeledPower;
@end

@implementation PLLocationAgent

- (void)logEventForwardTechStatus
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = PLLogLocation();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "begin", buf, 2u);
  }

  v22 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"TechStatus"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v22];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  definedKeys = [v4 definedKeys];
  v6 = [definedKeys countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    v9 = MEMORY[0x277CBEC28];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(definedKeys);
        }

        [v4 setObject:v9 forKeyedSubscript:*(*(&v27 + 1) + 8 * i)];
      }

      v7 = [definedKeys countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = CLCopyTechnologiesInUse();
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    v15 = MEMORY[0x277CBEC38];
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v23 + 1) + 8 * j);
        v18 = [(PLLocationAgent *)self humanReadableNameForTechnology:v17];
        [v4 setObject:v15 forKeyedSubscript:v18];

        v19 = PLLogLocation();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = [(PLLocationAgent *)self humanReadableNameForTechnology:v17];
          *buf = 138412290;
          v32 = v20;
          _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "Technology in use=%@", buf, 0xCu);
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v13);
  }

  [(PLOperator *)self logEntry:v4];
  v21 = PLLogLocation();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "end", buf, 2u);
  }
}

- (BOOL)shouldRateLimitTechStatus
{
  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) != 0 || !objc_msgSend(MEMORY[0x277D3F180], "liteMode"))
  {
    return 0;
  }

  lastTechStatusNotificationDate = [(PLLocationAgent *)self lastTechStatusNotificationDate];

  if (lastTechStatusNotificationDate)
  {
    lastTechStatusNotificationDate2 = [(PLLocationAgent *)self lastTechStatusNotificationDate];
    [lastTechStatusNotificationDate2 timeIntervalSinceNow];
    v6 = v5 >= -2.0;
  }

  else
  {
    lastTechStatusNotificationDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLLocationAgent *)self setLastTechStatusNotificationDate:lastTechStatusNotificationDate2];
    v6 = 0;
  }

  return v6;
}

- (void)logEventForwardTechStatus_withLimiter
{
  techStatusLimiterIsActive = [(PLLocationAgent *)self techStatusLimiterIsActive];
  objc_sync_enter(techStatusLimiterIsActive);
  techStatusLimiterIsActive2 = [(PLLocationAgent *)self techStatusLimiterIsActive];
  bOOLValue = [techStatusLimiterIsActive2 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    if ([(PLLocationAgent *)self shouldRateLimitTechStatus])
    {
      v6 = PLLogLocation();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Rate-limiting CLTechStatusChangedNotification", buf, 2u);
      }

      [(PLLocationAgent *)self setTechStatusLimiterIsActive:MEMORY[0x277CBEC38]];
      lastTechStatusNotificationDate = [(PLLocationAgent *)self lastTechStatusNotificationDate];
      [lastTechStatusNotificationDate timeIntervalSinceNow];
      v9 = dispatch_time(1000000000 * v8, 2000000000);
      workQueue = [(PLOperator *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__PLLocationAgent_logEventForwardTechStatus_withLimiter__block_invoke;
      block[3] = &unk_2782591D0;
      block[4] = self;
      dispatch_after(v9, workQueue, block);
    }

    else
    {
      [(PLLocationAgent *)self logEventForwardTechStatus];
      lastTechStatusNotificationDate = [MEMORY[0x277CBEAA8] monotonicDate];
      [(PLLocationAgent *)self setLastTechStatusNotificationDate:lastTechStatusNotificationDate];
    }
  }

  objc_sync_exit(techStatusLimiterIsActive);
}

uint64_t __23__PLLocationAgent_init__block_invoke(uint64_t a1)
{
  v2 = PLLogLocation();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "techStatusChanged callback", v4, 2u);
  }

  return [*(a1 + 32) logEventForwardTechStatus_withLimiter];
}

uint64_t __43__PLLocationAgent_initOperatorDependancies__block_invoke_434(uint64_t a1)
{
  if (notify_post("com.apple.powerlog.gpslogtrigger"))
  {
    v2 = PLLogLocation();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "GPS Notification failed.", v4, 2u);
    }
  }

  return [*(a1 + 32) writeModeledPower];
}

- (void)writeModeledPower
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0 && self->_gps_segment_timestamp != self->_gps_segment_lastWrittenTimestamp)
  {
    if (self->_gps_segment_power > 1000.0)
    {
      self->_gps_segment_power = 1000.0;
    }

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0] createPowerEventBackwardWithRootNodeID:48 withPower:self->_gps_segment_date withEndDate:self->_gps_segment_power];

    objc_storeStrong(&self->_gps_segment_lastWrittenDate, self->_gps_segment_date);
    self->_gps_segment_lastWrittenTimestamp = self->_gps_segment_timestamp;
  }
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_432(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received GnssPowerMetric XPC with payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) updateGnssPowerMetric:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received gpsactivation XPC with payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventFowardGPSSubscription:v6];
}

- (void)updateLocationDistributionEvents
{
  v75 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    selfCopy = self;
    activeClients = [(PLLocationAgent *)self activeClients];
    v4 = PLLogLocation();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v71 = activeClients;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "clientToOpenEntry=%@", buf, 0xCu);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v6 = activeClients;
    v7 = [v6 countByEnumeratingWithState:&v64 objects:v74 count:16];
    v54 = v6;
    if (v7)
    {
      v8 = v7;
      v9 = *v65;
      do
      {
        v10 = 0;
        do
        {
          if (*v65 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v64 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            v12 = objc_autoreleasePoolPush();
            v13 = [v6 objectForKeyedSubscript:v11];
            v14 = PLLogLocation();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v71 = v11;
              v72 = 2112;
              v73 = v13;
              _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "clientID=%@, openEntry=%@", buf, 0x16u);
            }

            v15 = [v13 objectForKeyedSubscript:@"LocationDesiredAccuracy"];
            v16 = v15;
            if (v15)
            {
              [v15 doubleValue];
              if (v17 < 1000.0)
              {
                entryDate = [v13 entryDate];

                if (entryDate)
                {
                  v19 = [v13 objectForKeyedSubscript:@"BundleId"];
                  if (v19)
                  {
                    v20 = v19;
                    goto LABEL_17;
                  }

                  if ([v11 hasPrefix:@"com.apple.locationd.bundle-"])
                  {
                    v53 = [v11 substringFromIndex:{objc_msgSend(@"com.apple.locationd.bundle-", "length")}];
                    v24 = MEMORY[0x277D3F258];
                    v25 = [MEMORY[0x277CBEBC0] fileURLWithPath:v53];
                    v20 = [v24 bundleIDFromURL:v25];

                    if (v20)
                    {
LABEL_17:
                      v21 = PLLogLocation();
                      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v71 = v20;
                        _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "bundleID=%@", buf, 0xCu);
                      }

                      [v16 doubleValue];
                      if (v22 >= 100.0)
                      {
                        v23 = dictionary2;
                      }

                      else
                      {
                        v23 = dictionary;
                      }

                      [v23 setObject:&unk_282C13500 forKeyedSubscript:v20];
                    }
                  }
                }
              }
            }

            objc_autoreleasePoolPop(v12);
            v6 = v54;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v64 objects:v74 count:16];
      }

      while (v8);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    allKeys = [dictionary allKeys];
    v27 = [allKeys countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v61;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v61 != v29)
          {
            objc_enumerationMutation(allKeys);
          }

          v31 = *(*(&v60 + 1) + 8 * i);
          v32 = [MEMORY[0x277CCABB0] numberWithDouble:{1.0 / objc_msgSend(dictionary, "count")}];
          [dictionary setObject:v32 forKeyedSubscript:v31];
        }

        v28 = [allKeys countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v28);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    allKeys2 = [dictionary2 allKeys];
    v34 = [allKeys2 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v57;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v57 != v36)
          {
            objc_enumerationMutation(allKeys2);
          }

          v38 = *(*(&v56 + 1) + 8 * j);
          v39 = [MEMORY[0x277CCABB0] numberWithDouble:{1.0 / objc_msgSend(dictionary2, "count")}];
          [dictionary2 setObject:v39 forKeyedSubscript:v38];
        }

        v35 = [allKeys2 countByEnumeratingWithState:&v56 objects:v68 count:16];
      }

      while (v35);
    }

    if ([dictionary count])
    {
      v40 = dictionary;
    }

    else
    {
      v40 = dictionary2;
    }

    [dictionary3 setValuesForKeysWithDictionary:v40];
    v41 = [dictionary isEqualToDictionary:selfCopy->_bundleIDToWeightUsingGPSCache];
    v42 = [dictionary2 isEqualToDictionary:selfCopy->_bundleIDToWeightUsingWiFiCache];
    v43 = [dictionary3 isEqualToDictionary:selfCopy->_bundleIDToWeightUsingLocationCache];
    v44 = v43;
    if (v41)
    {
      v45 = v42 == 0;
    }

    else
    {
      v45 = 1;
    }

    if (!v45 && (v43 & 1) != 0)
    {
      goto LABEL_55;
    }

    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    if (v41)
    {
      if (v42)
      {
        goto LABEL_52;
      }
    }

    else
    {
      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:23 withChildNodeNameToWeight:dictionary withStartDate:monotonicDate];

      mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
      [mEMORY[0x277D3F0C0]2 createDistributionEventForwardWithDistributionID:24 withChildNodeNameToWeight:dictionary withStartDate:monotonicDate];

      objc_storeStrong(&selfCopy->_bundleIDToWeightUsingGPSCache, dictionary);
      if (v42)
      {
LABEL_52:
        if (v44)
        {
LABEL_54:

LABEL_55:
          return;
        }

LABEL_53:
        mEMORY[0x277D3F0C0]3 = [MEMORY[0x277D3F0C0] sharedInstance];
        [mEMORY[0x277D3F0C0]3 createDistributionEventForwardWithDistributionID:30 withChildNodeNameToWeight:dictionary3 withStartDate:monotonicDate];

        objc_storeStrong(&selfCopy->_bundleIDToWeightUsingLocationCache, dictionary3);
        goto LABEL_54;
      }
    }

    mEMORY[0x277D3F0C0]4 = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0]4 createDistributionEventForwardWithDistributionID:25 withChildNodeNameToWeight:dictionary2 withStartDate:monotonicDate];

    objc_storeStrong(&selfCopy->_bundleIDToWeightUsingWiFiCache, dictionary2);
    if (v44)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_440(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogLocation();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Notification from ThermalMonitor: %@", &v6, 0xCu);
  }

  if (notify_post("com.apple.powerlog.gpslogtrigger"))
  {
    v5 = PLLogLocation();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v6) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "GPS Notification failed.", &v6, 2u);
    }
  }

  [*(a1 + 32) writeModeledPower];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_409(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "clientStatus XPC with payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventForwardClientStatuswithPayload:v6];
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLLocationAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"ClientStatus";
  entryEventPointDefinitionClientStatus = [self entryEventPointDefinitionClientStatus];
  v11[0] = entryEventPointDefinitionClientStatus;
  v10[1] = @"GeoFenceHandoff";
  entryEventPointDefinitionGeoFenceHandoff = [self entryEventPointDefinitionGeoFenceHandoff];
  v11[1] = entryEventPointDefinitionGeoFenceHandoff;
  v10[2] = @"WifiLocationScanRequesters";
  entryEventPointDefinitionWifiLocationScanRequesters = [self entryEventPointDefinitionWifiLocationScanRequesters];
  v11[2] = entryEventPointDefinitionWifiLocationScanRequesters;
  v10[3] = @"MiLoScanEvent";
  entryEventPointDefinitionMiLo = [self entryEventPointDefinitionMiLo];
  v11[3] = entryEventPointDefinitionMiLo;
  v10[4] = @"MotionPacket";
  entryEventPointDefinitionMotionPacket = [self entryEventPointDefinitionMotionPacket];
  v11[4] = entryEventPointDefinitionMotionPacket;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

+ (id)entryEventPointDefinitionClientStatus
{
  v29[2] = *MEMORY[0x277D85DE8];
  v28[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F498];
  v26[0] = *MEMORY[0x277D3F568];
  v26[1] = v2;
  v27[0] = &unk_282C1CDA8;
  v27[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F4A0];
  v26[2] = *MEMORY[0x277D3F558];
  v26[3] = v3;
  v27[2] = MEMORY[0x277CBEC38];
  v27[3] = MEMORY[0x277CBEC38];
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v29[0] = v23;
  v28[1] = *MEMORY[0x277D3F540];
  v24[0] = @"timestampEnd";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v25[0] = commonTypeDict_DateFormat;
  v24[1] = @"Type";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v25[1] = commonTypeDict_StringFormat;
  v24[2] = @"Client";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat_withBundleID];
  v25[2] = commonTypeDict_StringFormat_withBundleID;
  v24[3] = @"BundleId";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat_withBundleID];
  v25[3] = commonTypeDict_StringFormat_withBundleID2;
  v24[4] = @"Executable";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat_withProcessName];
  v25[4] = commonTypeDict_StringFormat_withProcessName;
  v24[5] = @"Authorized";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]6 commonTypeDict_BoolFormat];
  v25[5] = commonTypeDict_BoolFormat;
  v24[6] = @"LocationDesiredAccuracy";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
  v25[6] = commonTypeDict_RealFormat;
  v24[7] = @"LocationDistanceFilter";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]8 commonTypeDict_RealFormat];
  v25[7] = commonTypeDict_RealFormat2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:8];
  v29[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

  return v13;
}

+ (id)entryEventPointDefinitionWifiLocationScanRequesters
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_282C1CDB8;
  v14[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"scanRequester";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v11[1] = @"numRequests";
  v12[0] = commonTypeDict_StringFormat_withBundleID;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v12[1] = commonTypeDict_IntegerFormat;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

+ (id)entryEventPointDefinitionMiLo
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v20 = *MEMORY[0x277D3F568];
  v21 = &unk_282C1CDC8;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"BTScanDuration";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
  v19[0] = commonTypeDict_RealFormat;
  v18[1] = @"BleActiveScanRate";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v19[1] = commonTypeDict_IntegerFormat;
  v18[2] = @"NumLocalizations";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v19[2] = commonTypeDict_IntegerFormat2;
  v18[3] = @"NumRecordings";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v19[3] = commonTypeDict_IntegerFormat3;
  v18[4] = @"TriggerType";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v19[4] = commonTypeDict_IntegerFormat4;
  v18[5] = @"WiFiScanDuration";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
  v19[5] = commonTypeDict_RealFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:6];
  v23[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  return v11;
}

+ (id)entryEventPointDefinitionMotionPacket
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v14 = *MEMORY[0x277D3F568];
  v15 = &unk_282C1CDB8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v2;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"action";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v13[0] = commonTypeDict_IntegerFormat;
  v12[1] = @"nonWaking";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
  v13[1] = commonTypeDict_BoolFormat;
  v12[2] = @"type";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v13[2] = commonTypeDict_IntegerFormat2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v10;
}

+ (id)entryEventForwardDefinitions
{
  v17[9] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v16[0] = @"TechStatus";
    entryEventForwardDefinitionTechStatus = [self entryEventForwardDefinitionTechStatus];
    v17[0] = entryEventForwardDefinitionTechStatus;
    v16[1] = @"ClientStatus";
    entryEventForwardDefinitionClientStatus = [self entryEventForwardDefinitionClientStatus];
    v17[1] = entryEventForwardDefinitionClientStatus;
    v16[2] = @"LogLevel";
    entryEventForwardDefinitionLogLevel = [self entryEventForwardDefinitionLogLevel];
    v17[2] = entryEventForwardDefinitionLogLevel;
    v16[3] = @"StatusBar";
    entryEventForwardDefinitionStatusBar = [self entryEventForwardDefinitionStatusBar];
    v17[3] = entryEventForwardDefinitionStatusBar;
    v16[4] = @"GnssSession";
    entryEventForwardDefinitionGnssSession = [self entryEventForwardDefinitionGnssSession];
    v17[4] = entryEventForwardDefinitionGnssSession;
    v16[5] = @"GPSActivation";
    entryEventForwardDefinitionGPSSubscription = [self entryEventForwardDefinitionGPSSubscription];
    v17[5] = entryEventForwardDefinitionGPSSubscription;
    v16[6] = @"Odometry";
    entryEventForwardDefinitionOdometry = [self entryEventForwardDefinitionOdometry];
    v17[6] = entryEventForwardDefinitionOdometry;
    v16[7] = @"ViewObstructed";
    entryEventForwardDefinitionViewObstructed = [self entryEventForwardDefinitionViewObstructed];
    v17[7] = entryEventForwardDefinitionViewObstructed;
    v16[8] = @"SuppressionManagerClient";
    entryEventForwardDefinitionSuppressionManagerClient = [self entryEventForwardDefinitionSuppressionManagerClient];
    v17[8] = entryEventForwardDefinitionSuppressionManagerClient;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:9];
  }

  else
  {
    entryEventForwardDefinitionTechStatus = [self entryEventForwardDefinitionTechStatus];
    v15[0] = entryEventForwardDefinitionTechStatus;
    v14[1] = @"ClientStatus";
    entryEventForwardDefinitionClientStatus = [self entryEventForwardDefinitionClientStatus];
    v15[1] = entryEventForwardDefinitionClientStatus;
    v14[2] = @"StatusBar";
    entryEventForwardDefinitionLogLevel = [self entryEventForwardDefinitionStatusBar];
    v15[2] = entryEventForwardDefinitionLogLevel;
    v14[3] = @"GnssSession";
    entryEventForwardDefinitionStatusBar = [self entryEventForwardDefinitionGnssSession];
    v15[3] = entryEventForwardDefinitionStatusBar;
    v14[4] = @"GPSActivation";
    entryEventForwardDefinitionGnssSession = [self entryEventForwardDefinitionGPSSubscription];
    v15[4] = entryEventForwardDefinitionGnssSession;
    v14[5] = @"Odometry";
    entryEventForwardDefinitionGPSSubscription = [self entryEventForwardDefinitionOdometry];
    v15[5] = entryEventForwardDefinitionGPSSubscription;
    v14[6] = @"ViewObstructed";
    entryEventForwardDefinitionOdometry = [self entryEventForwardDefinitionViewObstructed];
    v15[6] = entryEventForwardDefinitionOdometry;
    v14[7] = @"SuppressionManagerClient";
    entryEventForwardDefinitionViewObstructed = [self entryEventForwardDefinitionSuppressionManagerClient];
    v15[7] = entryEventForwardDefinitionViewObstructed;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:8];
  }

  return v12;
}

+ (id)entryEventForwardDefinitionTechStatus
{
  v34[2] = *MEMORY[0x277D85DE8];
  v33[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v31[0] = *MEMORY[0x277D3F568];
  v31[1] = v2;
  v32[0] = &unk_282C1CDC8;
  v32[1] = MEMORY[0x277CBEC38];
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v34[0] = v28;
  v33[1] = *MEMORY[0x277D3F540];
  v29[0] = @"gps";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v30[0] = commonTypeDict_BoolFormat;
  v29[1] = @"nmea";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
  v30[1] = commonTypeDict_BoolFormat2;
  v29[2] = @"accessory";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v30[2] = commonTypeDict_BoolFormat3;
  v29[3] = @"wifi";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_BoolFormat];
  v30[3] = commonTypeDict_BoolFormat4;
  v29[4] = @"skyhook";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_BoolFormat];
  v30[4] = commonTypeDict_BoolFormat5;
  v29[5] = @"cell";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_BoolFormat];
  v30[5] = commonTypeDict_BoolFormat6;
  v29[6] = @"lac";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_BoolFormat];
  v30[6] = commonTypeDict_BoolFormat7;
  v29[7] = @"mcc";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_BoolFormat];
  v30[7] = commonTypeDict_BoolFormat8;
  v29[8] = @"gps_coarse";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_BoolFormat];
  v30[8] = commonTypeDict_BoolFormat9;
  v29[9] = @"pipeline";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_BoolFormat];
  v30[9] = commonTypeDict_BoolFormat10;
  v29[10] = @"wifi2";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_BoolFormat];
  v30[10] = commonTypeDict_BoolFormat11;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:11];
  v34[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

  return v12;
}

+ (id)entryEventForwardDefinitionClientStatus
{
  v30[2] = *MEMORY[0x277D85DE8];
  v29[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F498];
  v27[0] = *MEMORY[0x277D3F568];
  v27[1] = v2;
  v28[0] = &unk_282C1CDD8;
  v28[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F590];
  v27[2] = *MEMORY[0x277D3F558];
  v27[3] = v3;
  v28[2] = MEMORY[0x277CBEC38];
  v28[3] = &unk_282C13488;
  v4 = *MEMORY[0x277D3F4A0];
  v27[4] = *MEMORY[0x277D3F588];
  v27[5] = v4;
  v28[4] = &unk_282C1CDE8;
  v28[5] = MEMORY[0x277CBEC38];
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:6];
  v30[0] = v24;
  v29[1] = *MEMORY[0x277D3F540];
  v25[0] = @"timestampEnd";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v26[0] = commonTypeDict_DateFormat;
  v25[1] = @"Type";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v26[1] = commonTypeDict_StringFormat;
  v25[2] = @"Client";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat_withBundleID];
  v26[2] = commonTypeDict_StringFormat_withBundleID;
  v25[3] = @"BundleId";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat_withBundleID];
  v26[3] = commonTypeDict_StringFormat_withBundleID2;
  v25[4] = @"Executable";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat_withProcessName];
  v26[4] = commonTypeDict_StringFormat_withProcessName;
  v25[5] = @"LocationDesiredAccuracy";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
  v26[5] = commonTypeDict_RealFormat;
  v25[6] = @"LocationDistanceFilter";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
  v26[6] = commonTypeDict_RealFormat2;
  v25[7] = @"InUseLevel";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v26[7] = commonTypeDict_IntegerFormat;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:8];
  v30[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

  return v14;
}

+ (id)entryEventForwardDefinitionLogLevel
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v12 = *MEMORY[0x277D3F568];
  v13 = &unk_282C1CDB8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[0] = v2;
  v14[1] = *MEMORY[0x277D3F540];
  v10[0] = @"Level";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10[1] = @"RotationEnabled";
  v11[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
  v11[1] = commonTypeDict_BoolFormat;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

+ (id)entryEventForwardDefinitionStatusBar
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_282C1CDB8;
  v14[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"Status";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"BundleID";
  v12[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v12[1] = commonTypeDict_StringFormat_withBundleID;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

+ (id)entryEventForwardDefinitionGnssSession
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v12 = *MEMORY[0x277D3F568];
  v13 = &unk_282C1CDA8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[0] = v2;
  v14[1] = *MEMORY[0x277D3F540];
  v10[0] = @"eventType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10[1] = @"eventStatus";
  v11[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v11[1] = commonTypeDict_IntegerFormat2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

+ (id)entryEventForwardDefinitionGPSSubscription
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_282C1CDB8;
  v14[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"ServiceName";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v11[1] = @"Register";
  v12[0] = commonTypeDict_StringFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
  v12[1] = commonTypeDict_BoolFormat;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

+ (id)entryEventForwardDefinitionOdometry
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v15[0] = *MEMORY[0x277D3F568];
  v15[1] = v2;
  v16[0] = &unk_282C1CDB8;
  v16[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[0] = v3;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"odometryEvent";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v14[0] = commonTypeDict_IntegerFormat;
  v13[1] = @"updateInterval";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
  v14[1] = commonTypeDict_RealFormat;
  v13[2] = @"identifier";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v14[2] = commonTypeDict_StringFormat;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  return v11;
}

+ (id)entryEventForwardDefinitionSuppressionManagerClient
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v14 = *MEMORY[0x277D3F568];
  v15 = &unk_282C1CDB8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v2;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"clientEvent";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v13[0] = commonTypeDict_IntegerFormat;
  v12[1] = @"clientType";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v13[1] = commonTypeDict_IntegerFormat2;
  v12[2] = @"clientNumbers";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v13[2] = commonTypeDict_IntegerFormat3;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v10;
}

+ (id)entryEventForwardDefinitionViewObstructed
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D3F4E8];
  v10 = *MEMORY[0x277D3F568];
  v11 = &unk_282C1CDB8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v2;
  v12[1] = *MEMORY[0x277D3F540];
  v8 = @"VOEvent";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v9 = commonTypeDict_IntegerFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v6;
}

+ (id)entryEventBackwardDefinitions
{
  v25[1] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isGPSClass:1008002] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008003) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008005) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008004) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008006))
  {
    v24 = @"GPSPower";
    v22[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v20[0] = *MEMORY[0x277D3F568];
    v20[1] = v2;
    v21[0] = &unk_282C1CDA8;
    v21[1] = @"log";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v23[0] = v17;
    v22[1] = *MEMORY[0x277D3F540];
    v18[0] = @"startTime";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v19[0] = commonTypeDict_IntegerFormat;
    v18[1] = @"measuredInterval";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v19[1] = commonTypeDict_IntegerFormat2;
    v18[2] = @"activeInterval";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v19[2] = commonTypeDict_IntegerFormat3;
    v18[3] = @"averagePower";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v19[3] = commonTypeDict_IntegerFormat4;
    v18[4] = @"activeL5IntervalSec";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v19[4] = commonTypeDict_IntegerFormat5;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
    v23[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v25[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  return v12;
}

+ (id)entryEventIntervalDefinitions
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"MapsBusyness";
  entryEventIntervalDefinitionMapsBusyness = [self entryEventIntervalDefinitionMapsBusyness];
  v9[0] = entryEventIntervalDefinitionMapsBusyness;
  v8[1] = @"SeparationAlert";
  entryEventIntervalDefinitionSeparationAlert = [self entryEventIntervalDefinitionSeparationAlert];
  v9[1] = entryEventIntervalDefinitionSeparationAlert;
  v8[2] = @"PDR";
  entryEventIntervalDefinitionPDR = [self entryEventIntervalDefinitionPDR];
  v9[2] = entryEventIntervalDefinitionPDR;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

+ (id)entryEventIntervalDefinitionMapsBusyness
{
  v29[2] = *MEMORY[0x277D85DE8];
  v28[0] = *MEMORY[0x277D3F4E8];
  v26 = *MEMORY[0x277D3F568];
  v27 = &unk_282C1CDA8;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v29[0] = v23;
  v28[1] = *MEMORY[0x277D3F540];
  v24[0] = @"timestampEnd";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v25[0] = commonTypeDict_DateFormat;
  v24[1] = @"Launched";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v25[1] = commonTypeDict_IntegerFormat;
  v24[2] = @"HarvestedRealTimeOnPower";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v25[2] = commonTypeDict_IntegerFormat2;
  v24[3] = @"HarvestedRealTimeOnBattery";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v25[3] = commonTypeDict_IntegerFormat3;
  v24[4] = @"HarvestedDifferential";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v25[4] = commonTypeDict_IntegerFormat4;
  v24[5] = @"RateLimit";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v25[5] = commonTypeDict_IntegerFormat5;
  v24[6] = @"LocationNotUsable";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v25[6] = commonTypeDict_IntegerFormat6;
  v24[7] = @"LocationNoAuth";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v25[7] = commonTypeDict_IntegerFormat7;
  v24[8] = @"LocationUnavailable";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v25[8] = commonTypeDict_IntegerFormat8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:9];
  v29[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

  return v11;
}

+ (id)entryEventIntervalDefinitionSeparationAlert
{
  v29[2] = *MEMORY[0x277D85DE8];
  v28[0] = *MEMORY[0x277D3F4E8];
  v26 = *MEMORY[0x277D3F568];
  v27 = &unk_282C1CDB8;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v29[0] = v23;
  v28[1] = *MEMORY[0x277D3F540];
  v24[0] = @"timestampEnd";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v25[0] = commonTypeDict_DateFormat;
  v24[1] = @"DurationOfVisits";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
  v25[1] = commonTypeDict_RealFormat;
  v24[2] = @"NumberOfVisits";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v25[2] = commonTypeDict_IntegerFormat;
  v24[3] = @"TotalGeoFence";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v25[3] = commonTypeDict_IntegerFormat2;
  v24[4] = @"GPSAttribution";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v25[4] = commonTypeDict_IntegerFormat3;
  v24[5] = @"BTScanCount";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v25[5] = commonTypeDict_IntegerFormat4;
  v24[6] = @"WifiScanCount";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v25[6] = commonTypeDict_IntegerFormat5;
  v24[7] = @"Notifications";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v25[7] = commonTypeDict_IntegerFormat6;
  v24[8] = @"DevicesMonitored";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v25[8] = commonTypeDict_IntegerFormat7;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:9];
  v29[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

  return v11;
}

+ (id)entryEventIntervalDefinitionPDR
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v16 = *MEMORY[0x277D3F568];
  v17 = &unk_282C1CDB8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19[0] = v13;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"sessionEndTime";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
  v15[0] = commonTypeDict_RealFormat;
  v14[1] = @"numFences";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v15[1] = commonTypeDict_IntegerFormat;
  v14[2] = @"identifier";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v15[2] = commonTypeDict_StringFormat;
  v14[3] = @"sessionStartTime";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
  v15[3] = commonTypeDict_RealFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  return v11;
}

+ (id)entryEventNoneDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  if ([self isDebugEnabled])
  {
    v6 = @"ClientStatusDebug";
    entryEventNoneDefinitionClientStatusDebug = [self entryEventNoneDefinitionClientStatusDebug];
    v7[0] = entryEventNoneDefinitionClientStatusDebug;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

+ (id)entryEventNoneDefinitionClientStatusDebug
{
  v48[2] = *MEMORY[0x277D85DE8];
  v47[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v45[0] = *MEMORY[0x277D3F568];
  v45[1] = v2;
  v46[0] = &unk_282C1CDB8;
  v46[1] = MEMORY[0x277CBEC38];
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
  v48[0] = v42;
  v47[1] = *MEMORY[0x277D3F540];
  v43[0] = @"Client";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v44[0] = commonTypeDict_StringFormat;
  v43[1] = @"BundleId";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v44[1] = commonTypeDict_StringFormat_withBundleID;
  v43[2] = @"Executable";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v44[2] = commonTypeDict_StringFormat2;
  v43[3] = @"Authorized";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]4 commonTypeDict_BoolFormat];
  v44[3] = commonTypeDict_BoolFormat;
  v43[4] = @"LocationDesiredAccuracy";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
  v44[4] = commonTypeDict_RealFormat;
  v43[5] = @"LocationDistanceFilter";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
  v44[5] = commonTypeDict_RealFormat2;
  v43[6] = @"LocationTimeStarted";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat_isCFAbsoluteTime = [mEMORY[0x277D3F198]7 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v44[6] = commonTypeDict_DateFormat_isCFAbsoluteTime;
  v43[7] = @"LocationTimeStopped";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat_isCFAbsoluteTime2 = [mEMORY[0x277D3F198]8 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v44[7] = commonTypeDict_DateFormat_isCFAbsoluteTime2;
  v43[8] = @"FenceTimeStarted";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat_isCFAbsoluteTime3 = [mEMORY[0x277D3F198]9 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v44[8] = commonTypeDict_DateFormat_isCFAbsoluteTime3;
  v43[9] = @"FenceTimeStopped";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat_isCFAbsoluteTime4 = [mEMORY[0x277D3F198]10 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v44[9] = commonTypeDict_DateFormat_isCFAbsoluteTime4;
  v43[10] = @"SignificantTimeStarted";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat_isCFAbsoluteTime5 = [mEMORY[0x277D3F198]11 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v44[10] = commonTypeDict_DateFormat_isCFAbsoluteTime5;
  v43[11] = @"SignificantTimeStopped";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat_isCFAbsoluteTime6 = [mEMORY[0x277D3F198]12 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v44[11] = commonTypeDict_DateFormat_isCFAbsoluteTime6;
  v43[12] = @"BeaconRegionTimeStarted";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat_isCFAbsoluteTime7 = [mEMORY[0x277D3F198]13 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v44[12] = commonTypeDict_DateFormat_isCFAbsoluteTime7;
  v43[13] = @"BeaconRegionTimeStopped";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat_isCFAbsoluteTime8 = [mEMORY[0x277D3F198]14 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v44[13] = commonTypeDict_DateFormat_isCFAbsoluteTime8;
  v43[14] = @"RangeTimeStarted";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat_isCFAbsoluteTime9 = [mEMORY[0x277D3F198]15 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v44[14] = commonTypeDict_DateFormat_isCFAbsoluteTime9;
  v43[15] = @"RangeTimeStopped";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat_isCFAbsoluteTime10 = [mEMORY[0x277D3F198]16 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v44[15] = commonTypeDict_DateFormat_isCFAbsoluteTime10;
  v43[16] = @"VisitTimeStarted";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat_isCFAbsoluteTime11 = [mEMORY[0x277D3F198]17 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v44[16] = commonTypeDict_DateFormat_isCFAbsoluteTime11;
  v43[17] = @"VisitTimeStopped";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat_isCFAbsoluteTime12 = [mEMORY[0x277D3F198]18 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v44[17] = commonTypeDict_DateFormat_isCFAbsoluteTime12;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:18];
  v48[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];

  return v12;
}

- (PLLocationAgent)init
{
  v43 = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = PLLocationAgent;
  v2 = [(PLAgent *)&v40 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    clientStatusTypeStrings = v2->_clientStatusTypeStrings;
    v2->_clientStatusTypeStrings = dictionary;

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = [&unk_282C16B90 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v28)
    {
      v27 = *v37;
      do
      {
        v5 = 0;
        do
        {
          if (*v37 != v27)
          {
            objc_enumerationMutation(&unk_282C16B90);
          }

          v29 = v5;
          v6 = *(*(&v36 + 1) + 8 * v5);
          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          [(NSMutableDictionary *)v2->_clientStatusTypeStrings setObject:dictionary2 forKeyedSubscript:v6];

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v8 = [&unk_282C16BA8 countByEnumeratingWithState:&v32 objects:v41 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v33;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v33 != v10)
                {
                  objc_enumerationMutation(&unk_282C16BA8);
                }

                v12 = *(*(&v32 + 1) + 8 * i);
                v13 = [v6 stringByAppendingString:v12];
                v14 = [(NSMutableDictionary *)v2->_clientStatusTypeStrings objectForKeyedSubscript:v6];
                [v14 setObject:v13 forKeyedSubscript:v12];
              }

              v9 = [&unk_282C16BA8 countByEnumeratingWithState:&v32 objects:v41 count:16];
            }

            while (v9);
          }

          v5 = v29 + 1;
        }

        while (v29 + 1 != v28);
        v28 = [&unk_282C16B90 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v28);
    }

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    localCache = v2->_localCache;
    v2->_localCache = dictionary3;

    techStatusLimiterIsActive = v2->_techStatusLimiterIsActive;
    v2->_techStatusLimiterIsActive = MEMORY[0x277CBEC28];

    v18 = objc_alloc(MEMORY[0x277D3F160]);
    v19 = *MEMORY[0x277CBFB88];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __23__PLLocationAgent_init__block_invoke;
    v30[3] = &unk_2782597E8;
    v20 = v2;
    v31 = v20;
    v21 = [v18 initWithOperator:v20 forNotification:v19 requireState:0 withBlock:v30];
    techStatusChangedNotification = v20->_techStatusChangedNotification;
    v20->_techStatusChangedNotification = v21;

    v23 = objc_opt_new();
    processes = v20->_processes;
    v20->_processes = v23;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v20 selector:sel_processesOfInterest_ name:@"PLLocationAgent.addProcessesOfInterest" object:0];
  }

  return v2;
}

- (void)processesOfInterest:(id)interest
{
  userInfo = [interest userInfo];
  if (userInfo)
  {
    v8 = userInfo;
    v5 = [userInfo objectForKeyedSubscript:@"entry"];
    if (v5)
    {
      processes = [(PLLocationAgent *)self processes];
      v7 = [v8 objectForKeyedSubscript:@"entry"];
      [processes unionSet:v7];
    }

    userInfo = v8;
  }
}

- (void)initOperatorDependancies
{
  bundleIDToWeightUsingGPSCache = self->_bundleIDToWeightUsingGPSCache;
  self->_bundleIDToWeightUsingGPSCache = 0;

  bundleIDToWeightUsingWiFiCache = self->_bundleIDToWeightUsingWiFiCache;
  self->_bundleIDToWeightUsingWiFiCache = 0;

  bundleIDToWeightUsingLocationCache = self->_bundleIDToWeightUsingLocationCache;
  self->_bundleIDToWeightUsingLocationCache = 0;

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  activeClients = self->_activeClients;
  self->_activeClients = v6;

  v8 = [MEMORY[0x277CBEB58] set];
  activeBackgroundLocationClients = self->_activeBackgroundLocationClients;
  self->_activeBackgroundLocationClients = v8;

  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
  {
    if ([MEMORY[0x277D3F208] internalBuild])
    {
      v10 = objc_alloc(MEMORY[0x277D3F270]);
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke;
      v91[3] = &unk_27825A1D8;
      v91[4] = self;
      v11 = [v10 initWithOperator:self withRegistration:&unk_282C1A100 withBlock:v91];
      logLevelNotification = self->_logLevelNotification;
      self->_logLevelNotification = v11;
    }

    [(PLLocationAgent *)self logEventForwardClientStatuswithPayload:0];
    v13 = objc_alloc(MEMORY[0x277D3F270]);
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_398;
    v90[3] = &unk_27825A1D8;
    v90[4] = self;
    v14 = [v13 initWithOperator:self withRegistration:&unk_282C1A128 withBlock:v90];
    statusBarNotification = self->_statusBarNotification;
    self->_statusBarNotification = v14;

    v16 = objc_alloc(MEMORY[0x277D3F270]);
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_409;
    v89[3] = &unk_27825A1D8;
    v89[4] = self;
    v17 = [v16 initWithOperator:self withRegistration:&unk_282C1A150 withBlock:v89];
    clientStatusNotification = self->_clientStatusNotification;
    self->_clientStatusNotification = v17;

    v19 = objc_alloc(MEMORY[0x277D3F270]);
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_414;
    v88[3] = &unk_27825A1D8;
    v88[4] = self;
    v20 = [v19 initWithOperator:self withRegistration:&unk_282C1A178 withBlock:v88];
    separationAlertListener = self->_separationAlertListener;
    self->_separationAlertListener = v20;

    v22 = objc_alloc(MEMORY[0x277D3F270]);
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_424;
    v87[3] = &unk_27825A1D8;
    v87[4] = self;
    v23 = [v22 initWithOperator:self withRegistration:&unk_282C1A1A0 withBlock:v87];
    mapsBusynessStateListener = self->_mapsBusynessStateListener;
    self->_mapsBusynessStateListener = v23;

    if (([MEMORY[0x277D3F208] isGPSClass:1008002] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008003) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008005) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008004) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008006))
    {
      v25 = objc_alloc(MEMORY[0x277D3F270]);
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_432;
      v86[3] = &unk_27825A1D8;
      v86[4] = self;
      v26 = [v25 initWithOperator:self withRegistration:&unk_282C1A1C8 withBlock:v86];
      locationGPSListener = self->_locationGPSListener;
      self->_locationGPSListener = v26;

      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_434;
      v85[3] = &unk_2782597E8;
      v85[4] = self;
      v28 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v85];
      sbcLevelChanged = self->_sbcLevelChanged;
      self->_sbcLevelChanged = v28;

      v30 = objc_alloc(MEMORY[0x277D3F1F0]);
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_440;
      v84[3] = &unk_2782597E8;
      v84[4] = self;
      v31 = [v30 initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:v84];
      thermalMonitorListener = self->_thermalMonitorListener;
      self->_thermalMonitorListener = v31;
    }

    v33 = objc_alloc(MEMORY[0x277D3F270]);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_445;
    v83[3] = &unk_27825A1D8;
    v83[4] = self;
    v34 = [v33 initWithOperator:self withRegistration:&unk_282C1A1F0 withBlock:v83];
    wifiLocationScanRequestersListener = self->_wifiLocationScanRequestersListener;
    self->_wifiLocationScanRequestersListener = v34;

    v36 = objc_alloc(MEMORY[0x277D3F270]);
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_453;
    v82[3] = &unk_27825A1D8;
    v82[4] = self;
    v37 = [v36 initWithOperator:self withRegistration:&unk_282C1A218 withBlock:v82];
    odometryListener = self->_odometryListener;
    self->_odometryListener = v37;

    v39 = objc_alloc(MEMORY[0x277D3F270]);
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_461;
    v81[3] = &unk_27825A1D8;
    v81[4] = self;
    v40 = [v39 initWithOperator:self withRegistration:&unk_282C1A240 withBlock:v81];
    pdrListener = self->_pdrListener;
    self->_pdrListener = v40;

    v42 = objc_alloc(MEMORY[0x277D3F270]);
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_471;
    v80[3] = &unk_27825A1D8;
    v80[4] = self;
    v43 = [v42 initWithOperator:self withRegistration:&unk_282C1A268 withBlock:v80];
    [(PLLocationAgent *)self setCheckInSessionXPCListener:v43];

    v44 = objc_alloc(MEMORY[0x277D3F270]);
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_476;
    v79[3] = &unk_27825A1D8;
    v79[4] = self;
    v45 = [v44 initWithOperator:self withRegistration:&unk_282C1A290 withBlock:v79];
    miLoScansListener = self->_miLoScansListener;
    self->_miLoScansListener = v45;

    v47 = objc_alloc(MEMORY[0x277D3F270]);
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_484;
    v78[3] = &unk_27825A1D8;
    v78[4] = self;
    v48 = [v47 initWithOperator:self withRegistration:&unk_282C1A2B8 withBlock:v78];
    gpsSubscriptionListener = self->_gpsSubscriptionListener;
    self->_gpsSubscriptionListener = v48;

    v50 = objc_alloc(MEMORY[0x277D3F270]);
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_489;
    v77[3] = &unk_27825A1D8;
    v77[4] = self;
    v51 = [v50 initWithOperator:self withRegistration:&unk_282C1A2E0 withBlock:v77];
    gnssSessionListener = self->_gnssSessionListener;
    self->_gnssSessionListener = v51;

    v53 = objc_alloc(MEMORY[0x277D3F270]);
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_494;
    v76[3] = &unk_27825A1D8;
    v76[4] = self;
    v54 = [v53 initWithOperator:self withRegistration:&unk_282C1A308 withBlock:v76];
    motionPacketListener = self->_motionPacketListener;
    self->_motionPacketListener = v54;

    v56 = objc_alloc(MEMORY[0x277D3F270]);
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_502;
    v75[3] = &unk_27825A1D8;
    v75[4] = self;
    v57 = [v56 initWithOperator:self withRegistration:&unk_282C1A330 withBlock:v75];
    viewObstructedListener = self->_viewObstructedListener;
    self->_viewObstructedListener = v57;

    v59 = objc_alloc(MEMORY[0x277D3F270]);
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_510;
    v74[3] = &unk_27825A1D8;
    v74[4] = self;
    v60 = [v59 initWithOperator:self withRegistration:&unk_282C1A358 withBlock:v74];
    suppressionManagerClientListener = self->_suppressionManagerClientListener;
    self->_suppressionManagerClientListener = v60;

    v62 = objc_alloc(MEMORY[0x277D3F270]);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_518;
    v73[3] = &unk_27825A1D8;
    v73[4] = self;
    v63 = [v62 initWithOperator:self withRegistration:&unk_282C1A380 withBlock:v73];
    predictedContextInferenceListener = self->_predictedContextInferenceListener;
    self->_predictedContextInferenceListener = v63;

    v65 = objc_alloc(MEMORY[0x277D3F270]);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_526;
    v72[3] = &unk_27825A1D8;
    v72[4] = self;
    v66 = [v65 initWithOperator:self withRegistration:&unk_282C1A3A8 withBlock:v72];
    predictedContextTrainingMetrics = self->_predictedContextTrainingMetrics;
    self->_predictedContextTrainingMetrics = v66;

    v68 = objc_alloc(MEMORY[0x277D3F270]);
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_534;
    v71[3] = &unk_27825A1D8;
    v71[4] = self;
    v69 = [v68 initWithOperator:self withRegistration:&unk_282C1A3D0 withBlock:v71];
    geoFenceTriggerListener = self->_geoFenceTriggerListener;
    self->_geoFenceTriggerListener = v69;
  }
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "LogLevel changed with payload=%@", &v10, 0xCu);
  }

  v8 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LogLevel"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  [*(a1 + 32) logEntry:v9];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412290;
    v15 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "StatusBarOverride changed with payload=%@", &v14, 0xCu);
  }

  v8 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"StatusBar"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8];
  v10 = [v6 objectForKeyedSubscript:@"Status"];
  [v9 setObject:v10 forKeyedSubscript:@"Status"];

  v11 = MEMORY[0x277D3F258];
  v12 = [v6 objectForKeyedSubscript:@"Pid"];
  v13 = [v11 bundleIDFromPid:{objc_msgSend(v12, "intValue")}];
  [v9 setObject:v13 forKeyedSubscript:@"BundleID"];

  [*(a1 + 32) logEntry:v9];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SeparationAlert XPC with payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventIntervalSeparationAlert:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received Maps BusynessState XPC with payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventIntervalMapsBusynessState:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_445(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received WifiLocationScanRequesters XPC with payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventPointWifiLocationScanRequesters:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_453(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received InertialOdometryPowerMetric XPC with payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventForwardOdometry:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_461(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received PedestrianFencePowerMetric XPC with payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventIntervalPDR:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_471(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "CoreRoutine::CheckInSession callback %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventForwardCheckInSession:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_476(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received MiLoScanEvent XPC with payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventPointMiLoScans:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_489(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received GnssSession XPC with payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventForwardGnssSession:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received MotionPacket XPC with payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventPointMotionPacket:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_502(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ViewObstructedStateChange XPC with payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventForwardViewObstructed:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SuppressionManagerClientStateChange XPC with payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventForwardSuppressionManagerClient:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "CoreRoutine PredictedContextInferenceEvent XPC with payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logPredictedContextInferenceEvent:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_526(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "CoreRoutine PredictedContextTrainingEvent XPC with payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logPredictedContextTrainingEvent:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "CoreLocation GeofenceTrigger XPC with payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventPointGeofenceTrigger:v6];
}

- (id)humanReadableNameForTechnology:(id)technology
{
  v3 = [technology intValue] - 1;
  if (v3 > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_278262438[v3];
  }
}

- (void)logEventPointClientStatus
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = PLLogLocation();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "begin", buf, 2u);
  }

  v4 = CLCopyAppsUsingLocation();
  v5 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ClientStatus"];
  array = [MEMORY[0x277CBEB18] array];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__PLLocationAgent_logEventPointClientStatus__block_invoke;
  v13[3] = &unk_27825B638;
  v13[4] = self;
  v7 = v5;
  v14 = v7;
  v8 = array;
  v15 = v8;
  [v4 enumerateKeysAndObjectsUsingBlock:v13];
  if ([v8 count])
  {
    v9 = PLLogLocation();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "logging newOpenEntries=%@", buf, 0xCu);
    }

    v22 = v7;
    v23[0] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    [(PLOperator *)self logEntries:v10 withGroupID:v7];

    v11 = PLLogLocation();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v17 = "[PLLocationAgent logEventPointClientStatus]";
      v18 = 1024;
      v19 = 1270;
      v20 = 2112;
      v21 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "!!! %s/%d: location start signal; newOpenEntries=%@", buf, 0x1Cu);
    }
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
    [v11 setIsErrorEntry:1];
    [(PLOperator *)self logEntry:v11];
  }

  v12 = PLLogLocation();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "end", buf, 2u);
  }
}

void __44__PLLocationAgent_logEventPointClientStatus__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v34 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "client=%@", buf, 0xCu);
  }

  v8 = [*(a1 + 32) processes];
  if (([v8 containsObject:v5] & 1) != 0 || !objc_msgSend(MEMORY[0x277D3F258], "isPowerlogHelperd"))
  {
  }

  else
  {
    v9 = [MEMORY[0x277D3F258] isPerfPowerMetricd];

    if (v9)
    {
      goto LABEL_20;
    }
  }

  v26 = v5;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [*(a1 + 32) clientStatusTypeStrings];
  v10 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v10)
  {
    v12 = v10;
    v28 = *v30;
    *&v11 = 138412802;
    v25 = v11;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v29 + 1) + 8 * v13);
        v15 = [*(a1 + 32) clientStatusTypeStrings];
        v16 = [v15 objectForKeyedSubscript:v14];
        v17 = [v16 objectForKeyedSubscript:@"TimeStarted"];
        v18 = [v6 objectForKeyedSubscript:v17];

        v19 = [*(a1 + 32) clientStatusTypeStrings];
        v20 = [v19 objectForKeyedSubscript:v14];
        v21 = [v20 objectForKeyedSubscript:@"TimeStopped"];
        v22 = [v6 objectForKeyedSubscript:v21];

        if (v18 | v22)
        {
          v23 = PLLogLocation();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = v25;
            v34 = v14;
            v35 = 2112;
            v36 = v18;
            v37 = 2112;
            v38 = v22;
            _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "type=%@, timeStarted=%@, timeStopped=%@", buf, 0x20u);
          }

          v24 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 40) withRawData:v6];
          [v24 setObject:v26 forKeyedSubscript:@"Client"];
          [v24 setObject:v14 forKeyedSubscript:@"Type"];
          [*(a1 + 48) addObject:v24];
        }

        ++v13;
      }

      while (v12 != v13);
      v12 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v12);
  }

  v5 = v26;
LABEL_20:
}

- (void)logEventPointGeofenceTrigger:(id)trigger
{
  v16 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  v5 = [triggerCopy objectForKeyedSubscript:@"timestampValue"];

  if (v5)
  {
    v6 = MEMORY[0x277CBEAA8];
    v7 = [triggerCopy objectForKeyedSubscript:@"timestampValue"];
    [v7 doubleValue];
    v8 = [v6 dateWithTimeIntervalSinceReferenceDate:?];

    convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

    v10 = PLLogLocation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = [triggerCopy objectForKeyedSubscript:@"timestampValue"];
      v13[0] = 67109378;
      v13[1] = [v12 intValue];
      v14 = 2112;
      v15 = convertFromSystemToMonotonic;
      _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "LocationMetrics GeofenceTrigger logging absolute time %d as logging timestamp %@", v13, 0x12u);
    }

    [(PLOperator *)self logForSubsystem:@"CoreLocation" category:@"GeofenceTrigger" data:triggerCopy date:convertFromSystemToMonotonic];
  }

  else
  {
    v11 = PLLogLocation();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13[0]) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "LocationMetrics GeofenceTrigger timestamp is missing, logging current time as timestamp", v13, 2u);
    }

    [(PLOperator *)self logForSubsystem:@"CoreLocation" category:@"GeofenceTrigger" data:triggerCopy];
  }
}

- (void)logEventPointWifiLocationScanRequesters:(id)requesters
{
  v4 = *MEMORY[0x277D3F5E8];
  requestersCopy = requesters;
  v7 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"WifiLocationScanRequesters"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:requestersCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointMiLoScans:(id)scans
{
  v4 = *MEMORY[0x277D3F5E8];
  scansCopy = scans;
  v7 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"MiLoScanEvent"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:scansCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointMotionPacket:(id)packet
{
  v4 = *MEMORY[0x277D3F5E8];
  packetCopy = packet;
  v7 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"MotionPacket"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:packetCopy];

  [(PLOperator *)self logEntry:v6];
}

void __56__PLLocationAgent_logEventForwardTechStatus_withLimiter__block_invoke(uint64_t a1)
{
  [*(a1 + 32) logEventForwardTechStatus];
  [*(a1 + 32) setTechStatusLimiterIsActive:MEMORY[0x277CBEC28]];
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) setLastTechStatusNotificationDate:v2];
}

- (void)updateLocalCacheWithClient:(id)client withType:(id)type withBundleID:(id)d withEntry:(id)entry
{
  v35 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  typeCopy = type;
  dCopy = d;
  entryCopy = entry;
  v14 = PLLogLocation();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v29 = 138412802;
    v30 = clientCopy;
    v31 = 2112;
    v32 = typeCopy;
    v33 = 2112;
    v34 = entryCopy;
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "client=%@, type=%@, entry=%@", &v29, 0x20u);
  }

  if (clientCopy && typeCopy)
  {
    if (!dCopy)
    {
      dCopy = &stru_282B650A0;
    }

    localCache = [(PLLocationAgent *)self localCache];
    v16 = [localCache objectForKeyedSubscript:clientCopy];

    if (!v16)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      localCache2 = [(PLLocationAgent *)self localCache];
      [localCache2 setObject:dictionary forKeyedSubscript:clientCopy];
    }

    localCache3 = [(PLLocationAgent *)self localCache];
    v20 = [localCache3 objectForKeyedSubscript:clientCopy];
    v21 = [v20 objectForKeyedSubscript:typeCopy];

    if (!v21)
    {
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      localCache4 = [(PLLocationAgent *)self localCache];
      v24 = [localCache4 objectForKeyedSubscript:clientCopy];
      [v24 setObject:dictionary2 forKeyedSubscript:typeCopy];
    }

    null = entryCopy;
    if (!entryCopy)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    localCache5 = [(PLLocationAgent *)self localCache];
    v27 = [localCache5 objectForKeyedSubscript:clientCopy];
    v28 = [v27 objectForKeyedSubscript:typeCopy];
    [v28 setObject:null forKeyedSubscript:dCopy];

    if (!entryCopy)
    {
    }
  }
}

- (id)lastEntryWithClient:(id)client withType:(id)type withBundleID:(id)d withEntryKey:(id)key
{
  v27[3] = *MEMORY[0x277D85DE8];
  clientCopy = client;
  typeCopy = type;
  dCopy = d;
  keyCopy = key;
  v14 = 0;
  if (clientCopy && typeCopy)
  {
    if (!dCopy)
    {
      dCopy = &stru_282B650A0;
    }

    localCache = [(PLLocationAgent *)self localCache];
    v16 = [localCache objectForKeyedSubscript:clientCopy];
    v17 = [v16 objectForKeyedSubscript:typeCopy];
    v18 = [v17 objectForKeyedSubscript:dCopy];

    if (!v18)
    {
      v26 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"Client" withValue:clientCopy withComparisonOperation:0];
      v19 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"Type" withValue:typeCopy withComparisonOperation:0];
      v20 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"BundleId" withValue:dCopy withComparisonOperation:0];
      v21 = objc_msgSend_storage(self);
      v27[0] = v26;
      v27[1] = v19;
      v27[2] = v20;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
      v18 = [v21 lastEntryForKey:keyCopy withComparisons:v22 isSingleton:0];

      [(PLLocationAgent *)self updateLocalCacheWithClient:clientCopy withType:typeCopy withBundleID:dCopy withEntry:v18];
    }

    null = [MEMORY[0x277CBEB68] null];
    if (v18 == null)
    {
      v24 = 0;
    }

    else
    {
      v24 = v18;
    }

    v14 = v24;
  }

  return v14;
}

- (void)resyncActiveClients
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = PLLogLocation();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8) = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "ResyncingActiveClients on powerlog init", &v8, 2u);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLLocationAgent *)self setLastResyncActiveClientsDate:monotonicDate];

  v5 = PLLogLocation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    lastResyncActiveClientsDate = [(PLLocationAgent *)self lastResyncActiveClientsDate];
    v8 = 138412290;
    v9 = lastResyncActiveClientsDate;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "lastResyncActiveClientsDate: %@", &v8, 0xCu);
  }

  v6 = CLCopyAppsUsingLocation();
  [(PLLocationAgent *)self updateClientsLocationInfo:v6];
}

- (void)logEventForwardClientStatuswithPayload:(id)payload
{
  v17 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v5 = os_transaction_create();
  lastResyncActiveClientsDate = [(PLLocationAgent *)self lastResyncActiveClientsDate];

  v7 = PLLogLocation();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (lastResyncActiveClientsDate)
  {
    if (v8)
    {
      LOWORD(v15) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received Client status change notification", &v15, 2u);
    }

    if (payloadCopy)
    {
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      lastResyncActiveClientsDate2 = [(PLLocationAgent *)self lastResyncActiveClientsDate];
      [monotonicDate timeIntervalSinceDate:lastResyncActiveClientsDate2];
      v12 = v11;

      if (v12 >= 3600.0)
      {
        v14 = PLLogLocation();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = 134217984;
          v16 = v12;
          _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "diff: %f", &v15, 0xCu);
        }

        [(PLLocationAgent *)self resyncActiveClients];
      }

      else
      {
        [(PLLocationAgent *)self updateClientsLocationInfo:payloadCopy];
      }
    }

    else
    {
      v13 = PLLogLocation();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v15) = 0;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "No payload!", &v15, 2u);
      }
    }
  }

  else
  {
    if (v8)
    {
      LOWORD(v15) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Initializing lastResyncActiveClientsDate", &v15, 2u);
    }

    [(PLLocationAgent *)self resyncActiveClients];
  }
}

- (id)getOpenEntryForClientSettings:(id)settings withTimeStarted:(id)started withClient:(id)client withType:(id)type withEntryKey:(id)key
{
  keyCopy = key;
  typeCopy = type;
  clientCopy = client;
  startedCopy = started;
  v16 = [settings mutableCopy];
  v17 = MEMORY[0x277CBEAA8];
  [startedCopy doubleValue];
  v19 = v18;

  v20 = [v17 dateWithTimeIntervalSinceReferenceDate:v19];
  convertFromSystemToMonotonic = [v20 convertFromSystemToMonotonic];
  [v16 setObject:convertFromSystemToMonotonic forKeyedSubscript:@"entryDate"];

  v22 = v16;
  v23 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:keyCopy withRawData:v22];

  [v23 setObject:clientCopy forKeyedSubscript:@"Client"];
  [v23 setObject:typeCopy forKeyedSubscript:@"Type"];
  v24 = [v23 objectForKeyedSubscript:@"BundleId"];
  [(PLLocationAgent *)self updateLocalCacheWithClient:clientCopy withType:typeCopy withBundleID:v24 withEntry:v23];

  return v23;
}

- (void)closeOpenEntryForClient:(id)client withOpenEntry:(id)entry withTimeStopped:(id)stopped
{
  v30 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  entryCopy = entry;
  v10 = MEMORY[0x277CBEAA8];
  [stopped doubleValue];
  v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
  convertFromSystemToMonotonic = [v11 convertFromSystemToMonotonic];

  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __73__PLLocationAgent_closeOpenEntryForClient_withOpenEntry_withTimeStopped___block_invoke;
  v25 = &unk_278259658;
  v26 = entryCopy;
  v27 = convertFromSystemToMonotonic;
  v13 = convertFromSystemToMonotonic;
  v14 = entryCopy;
  [(PLOperator *)self updateEntry:v14 withBlock:&v22];
  v15 = [(PLLocationAgent *)self activeClients:v22];
  v16 = [v15 objectForKey:clientCopy];

  if (v16)
  {
    v17 = [v16 objectForKeyedSubscript:@"BundleId"];
    activeClients = [(PLLocationAgent *)self activeClients];
    [activeClients removeObjectForKey:clientCopy];

    if (v17)
    {
      activeBackgroundLocationClients = [(PLLocationAgent *)self activeBackgroundLocationClients];
      [activeBackgroundLocationClients removeObject:v17];
    }

    v20 = PLLogLocation();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      activeClients2 = [(PLLocationAgent *)self activeClients];
      *buf = 138412290;
      v29 = activeClients2;
      _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "Active clients: %@", buf, 0xCu);
    }
  }
}

void __73__PLLocationAgent_closeOpenEntryForClient_withOpenEntry_withTimeStopped___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"timestampEnd"];
  v2 = PLLogLocation();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = 136315650;
    v5 = "[PLLocationAgent closeOpenEntryForClient:withOpenEntry:withTimeStopped:]_block_invoke";
    v6 = 1024;
    v7 = 1556;
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "!!! %s/%d: location terminate signal; lastEntry=%@", &v4, 0x1Cu);
  }
}

- (void)updateClientsLocationInfo:(id)info
{
  v31 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = objc_autoreleasePoolPush();
  v6 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ClientStatus"];
  if ([(PLOperator *)self isDebugEnabled])
  {
    [(PLLocationAgent *)self logEventNoneClientStatusDebugWithClients:infoCopy];
  }

  array = [MEMORY[0x277CBEB18] array];
  date = [MEMORY[0x277CBEAA8] date];
  activeBackgroundLocationClients = [(PLLocationAgent *)self activeBackgroundLocationClients];
  v10 = [activeBackgroundLocationClients copy];

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __45__PLLocationAgent_updateClientsLocationInfo___block_invoke;
  v22 = &unk_278262418;
  selfCopy = self;
  v11 = v6;
  v24 = v11;
  v12 = array;
  v25 = v12;
  v13 = date;
  v26 = v13;
  [infoCopy enumerateKeysAndObjectsUsingBlock:&v19];
  if ([v12 count])
  {
    v14 = PLLogLocation();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v30 = v12;
      _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "logging newOpenEntries=%@", buf, 0xCu);
    }

    v27 = v11;
    v28 = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    [(PLOperator *)self logEntries:v15 withGroupID:v11];
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
    [v15 setIsErrorEntry:1];
    [(PLOperator *)self logEntry:v15];
  }

  [(PLLocationAgent *)self updateLocationDistributionEvents];
  activeBackgroundLocationClients2 = [(PLLocationAgent *)self activeBackgroundLocationClients];
  v17 = [v10 isEqualToSet:activeBackgroundLocationClients2];

  if ((v17 & 1) == 0)
  {
    [(PLLocationAgent *)self updateLocationQualificationEvents];
  }

  objc_autoreleasePoolPop(v5);
  v18 = PLLogLocation();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "end", buf, 2u);
  }
}

void __45__PLLocationAgent_updateClientsLocationInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v51 = a2;
  v5 = a3;
  v6 = PLLogLocation();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v60 = v51;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "client=%@", buf, 0xCu);
  }

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = [*(a1 + 32) clientStatusTypeStrings];
    v53 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (!v53)
    {
      goto LABEL_60;
    }

    v52 = *v56;
    *&v7 = 138412546;
    v45 = v7;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v56 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v55 + 1) + 8 * v8);
        context = objc_autoreleasePoolPush();
        v10 = [*(a1 + 32) clientStatusTypeStrings];
        v11 = [v10 objectForKeyedSubscript:v9];
        v12 = [v11 objectForKeyedSubscript:@"TimeStarted"];
        v13 = [v5 objectForKeyedSubscript:v12];

        v14 = [*(a1 + 32) clientStatusTypeStrings];
        v15 = [v14 objectForKeyedSubscript:v9];
        v16 = [v15 objectForKeyedSubscript:@"TimeStopped"];
        v17 = [v5 objectForKeyedSubscript:v16];

        v18 = [v5 objectForKeyedSubscript:@"InUseLevel"];
        v19 = PLLogLocation();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v60 = v18;
          _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "InUseLevel = %@", buf, 0xCu);
        }

        if (v13 | v17)
        {
          if (v13)
          {
            v20 = [v5 objectForKeyedSubscript:@"LocationDesiredAccuracy"];
            v21 = v20;
            if (v20 && [v20 integerValue]>= 6378136)
            {
              if ([v21 integerValue]!= 2147483642)
              {
                [v21 integerValue];
              }

              goto LABEL_53;
            }
          }

          else
          {
            v21 = PLLogLocation();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v60 = v9;
              v61 = 2112;
              v62 = 0;
              v63 = 2112;
              v64 = v17;
              _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "type=%@, timeStarted=%@, timeStopped=%@", buf, 0x20u);
            }
          }

          v21 = [v5 objectForKeyedSubscript:@"BundleId"];
          v22 = [*(a1 + 32) lastEntryWithClient:v51 withType:v9 withBundleID:v21 withEntryKey:*(a1 + 40)];
          v23 = PLLogLocation();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v60 = v22;
            _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "lastEntry=%@", buf, 0xCu);
          }

          if (!v22 || ([v22 objectForKeyedSubscript:@"timestampEnd"], v24 = objc_claimAutoreleasedReturnValue(), v24, v24))
          {
            v25 = PLLogLocation();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "last entry doesn't exist or last entry stopped", buf, 2u);
            }

            if (v13)
            {
              v26 = [*(a1 + 32) getOpenEntryForClientSettings:v5 withTimeStarted:v13 withClient:v51 withType:v9 withEntryKey:*(a1 + 40)];
              [*(a1 + 48) addObject:v26];
              if (v26)
              {
                goto LABEL_28;
              }

LABEL_52:

LABEL_53:
              goto LABEL_54;
            }

LABEL_51:
            v26 = 0;
            goto LABEL_52;
          }

          v32 = PLLogLocation();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "last entry exists and is still open", buf, 2u);
          }

          v46 = [v18 intValue];
          v49 = v22;
          v33 = [v22 objectForKeyedSubscript:@"InUseLevel"];
          v34 = [v33 intValue];

          v35 = PLLogLocation();
          v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);
          if (!v13 || v46 == v34)
          {
            v40 = v35;
            if (v17)
            {
              v22 = v49;
              if (v36)
              {
                *buf = 0;
                _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "Location event stopped", buf, 2u);
              }

              [*(a1 + 32) closeOpenEntryForClient:v51 withOpenEntry:v49 withTimeStopped:v17];
              goto LABEL_51;
            }

            v22 = v49;
            if (v36)
            {
              *buf = 0;
              _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "Location event still open", buf, 2u);
            }

            v26 = v49;
          }

          else
          {
            if (v36)
            {
              [v49 objectForKeyedSubscript:@"InUseLevel"];
              v43 = v42 = v35;
              *buf = v45;
              v60 = v43;
              v61 = 2112;
              v62 = v18;
              _os_log_debug_impl(&dword_21A4C6000, v42, OS_LOG_TYPE_DEBUG, "Inuse level changed from %@ to %@", buf, 0x16u);

              v35 = v42;
            }

            v47 = v18;

            v37 = MEMORY[0x277CCABB0];
            [*(a1 + 56) timeIntervalSinceReferenceDate];
            v38 = [v37 numberWithDouble:?];
            v39 = PLLogLocation();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              *buf = v45;
              v60 = v13;
              v61 = 2112;
              v62 = v38;
              _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "TimestampStarted: %@ TimestampInUseLevel: %@", buf, 0x16u);
            }

            [*(a1 + 32) closeOpenEntryForClient:v51 withOpenEntry:v49 withTimeStopped:v38];
            v22 = v49;
            v26 = [*(a1 + 32) getOpenEntryForClientSettings:v5 withTimeStarted:v38 withClient:v51 withType:v9 withEntryKey:*(a1 + 40)];
            [*(a1 + 48) addObject:v26];

            v18 = v47;
            if (!v26)
            {
              goto LABEL_52;
            }
          }

LABEL_28:
          if ([v9 isEqualToString:{@"Location", v45}])
          {
            v48 = v22;
            v27 = PLLogLocation();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v60 = v26;
              _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "still open location openEntry=%@", buf, 0xCu);
            }

            v28 = [*(a1 + 32) activeClients];
            [v28 setObject:v26 forKeyedSubscript:v51];

            v29 = PLLogLocation();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              v41 = [*(a1 + 32) activeClients];
              *buf = 138412290;
              v60 = v41;
              _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "Active clients: %@", buf, 0xCu);
            }

            v30 = [v26 objectForKeyedSubscript:@"BundleId"];
            if (v30 && ![v18 intValue])
            {
              v31 = [*(a1 + 32) activeBackgroundLocationClients];
              [v31 addObject:v30];
            }

            v22 = v48;
          }

          goto LABEL_52;
        }

LABEL_54:

        objc_autoreleasePoolPop(context);
        ++v8;
      }

      while (v53 != v8);
      v44 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
      v53 = v44;
      if (!v44)
      {
LABEL_60:

        break;
      }
    }
  }
}

- (unint64_t)convertClientEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isEqualToString:@"enabled"])
  {
    v4 = 1;
  }

  else if ([eventCopy isEqualToString:@"disabled"])
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (unint64_t)convertViewObstructedEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isEqualToString:@"suppress"])
  {
    v4 = 1;
  }

  else if ([eventCopy isEqualToString:@"unsuppress"])
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)logEventForwardSuppressionManagerClient:(id)client
{
  v4 = *MEMORY[0x277D3F5D0];
  clientCopy = client;
  v10 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"SuppressionManagerClient"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10 withRawData:clientCopy];
  v7 = [clientCopy objectForKeyedSubscript:@"clientEvent"];

  v8 = [(PLLocationAgent *)self convertClientEvent:v7];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v6 setObject:v9 forKeyedSubscript:@"clientEvent"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardViewObstructed:(id)obstructed
{
  v4 = *MEMORY[0x277D3F5D0];
  obstructedCopy = obstructed;
  v10 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"ViewObstructed"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v7 = [obstructedCopy objectForKeyedSubscript:@"VOEvent"];

  v8 = [(PLLocationAgent *)self convertViewObstructedEvent:v7];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v6 setObject:v9 forKeyedSubscript:@"VOEvent"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventFowardGPSSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v4 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"GPSActivation"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  v6 = [subscriptionCopy objectForKeyedSubscript:@"ServiceName"];
  v7 = [v6 rangeOfString:@"peer silo:"];
  v9 = v8;
  v10 = [v6 rangeOfString:@">"];
  v11 = 0;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v6 substringWithRange:{v7 + v9, v10 - (v7 + v9)}];
  }

  [v5 setObject:v11 forKeyedSubscript:@"ServiceName"];
  v12 = MEMORY[0x277CCABB0];
  v13 = [subscriptionCopy objectForKeyedSubscript:@"Register"];
  v14 = [v12 numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
  [v5 setObject:v14 forKeyedSubscript:@"Register"];

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventForwardGnssSession:(id)session
{
  v19 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"GnssSession"];
  v6 = [sessionCopy objectForKeyedSubscript:@"eventCfTimeSec"];

  if (v6)
  {
    v7 = MEMORY[0x277CBEAA8];
    v8 = [sessionCopy objectForKeyedSubscript:@"eventCfTimeSec"];
    [v8 doubleValue];
    v9 = [v7 dateWithTimeIntervalSinceReferenceDate:?];

    convertFromSystemToMonotonic = [v9 convertFromSystemToMonotonic];

    v11 = PLLogLocation();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = [sessionCopy objectForKeyedSubscript:@"eventCfTimeSec"];
      v16[0] = 67109378;
      v16[1] = [v15 intValue];
      v17 = 2112;
      v18 = convertFromSystemToMonotonic;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "GnssSession logging absolute time %d as logging timestamp %@", v16, 0x12u);
    }

    v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withDate:convertFromSystemToMonotonic];
    v13 = [sessionCopy objectForKeyedSubscript:@"eventType"];
    [v12 setObject:v13 forKeyedSubscript:@"eventType"];

    v14 = [sessionCopy objectForKeyedSubscript:@"eventStatus"];
    [v12 setObject:v14 forKeyedSubscript:@"eventStatus"];

    [(PLOperator *)self logEntry:v12];
  }

  else
  {
    convertFromSystemToMonotonic = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:sessionCopy];
    [(PLOperator *)self logEntry:convertFromSystemToMonotonic];
  }
}

- (unint64_t)convertOdometryEvent:(id)event
{
  v9 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([eventCopy isEqualToString:@"start"])
  {
    v4 = 1;
  }

  else if ([eventCopy isEqualToString:@"stop"])
  {
    v4 = 0;
  }

  else
  {
    v5 = PLLogLocation();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = eventCopy;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Unknown odometryEvent %@", &v7, 0xCu);
    }

    v4 = 2;
  }

  return v4;
}

- (unint64_t)convertCheckInEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isEqualToString:@"start"])
  {
    v4 = 1;
  }

  else if ([eventCopy isEqualToString:@"stop"])
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)logEventForwardOdometry:(id)odometry
{
  v4 = *MEMORY[0x277D3F5D0];
  odometryCopy = odometry;
  v12 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"Odometry"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12];
  v7 = [odometryCopy objectForKeyedSubscript:@"odometryEvent"];
  v8 = [(PLLocationAgent *)self convertOdometryEvent:v7];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v6 setObject:v9 forKeyedSubscript:@"odometryEvent"];

  v10 = [odometryCopy objectForKeyedSubscript:@"updateInterval"];
  [v6 setObject:v10 forKeyedSubscript:@"updateInterval"];

  v11 = [odometryCopy objectForKeyedSubscript:@"identifier"];

  [v6 setObject:v11 forKeyedSubscript:@"identifier"];
  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardCheckInSession:(id)session
{
  v12 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = [sessionCopy mutableCopy];
  v6 = [sessionCopy objectForKeyedSubscript:@"event"];

  v7 = [(PLLocationAgent *)self convertCheckInEvent:v6];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  [v5 setObject:v8 forKeyedSubscript:@"event"];

  v9 = PLLogLocation();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "CheckInSession updated payload: %@", &v10, 0xCu);
  }

  [(PLOperator *)self logForSubsystem:@"CoreRoutine" category:@"CheckInSession" data:v5];
}

- (void)logPredictedContextInferenceEvent:(id)event
{
  v18 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = [eventCopy mutableCopy];
  v6 = [eventCopy objectForKeyedSubscript:@"inferenceLatency"];

  if (v6)
  {
    v7 = [eventCopy objectForKeyedSubscript:@"inferenceLatency"];
    [v7 doubleValue];
    v9 = v8;

    [MEMORY[0x277D3F258] roundToSigFigDouble:2 withSigFig:v9];
    v11 = v10;
    v12 = PLLogLocation();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134218240;
      v15 = v9;
      v16 = 2048;
      v17 = v11;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "CoreRoutine PredictedContextInferenceEvent rounded %f latency to %f", &v14, 0x16u);
    }

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [v5 setValue:v13 forKey:@"inferenceLatency"];
  }

  [(PLOperator *)self logForSubsystem:@"CoreRoutine" category:@"PredictedContextInferenceEvent" data:v5];
}

- (void)logPredictedContextTrainingEvent:(id)event
{
  v18 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = [eventCopy mutableCopy];
  v6 = [eventCopy objectForKeyedSubscript:@"trainingDuration"];

  if (v6)
  {
    v7 = [eventCopy objectForKeyedSubscript:@"trainingDuration"];
    [v7 doubleValue];
    v9 = v8;

    [MEMORY[0x277D3F258] roundToSigFigDouble:2 withSigFig:v9];
    v11 = v10;
    v12 = PLLogLocation();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134218240;
      v15 = v9;
      v16 = 2048;
      v17 = v11;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "CoreRoutine PredictedContextTrainingEvent rounded %f latency to %f", &v14, 0x16u);
    }

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [v5 setValue:v13 forKey:@"trainingDuration"];
  }

  [(PLOperator *)self logForSubsystem:@"CoreRoutine" category:@"PredictedContextTrainingEvent" data:v5];
}

- (void)logEventIntervalSeparationAlert:(id)alert
{
  v4 = *MEMORY[0x277D3F5D8];
  alertCopy = alert;
  v13 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"SeparationAlert"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13 withRawData:alertCopy];
  v7 = [alertCopy objectForKeyedSubscript:@"timestamp"];

  [v7 doubleValue];
  v9 = v8;

  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
  convertFromSystemToMonotonic = [v10 convertFromSystemToMonotonic];
  [v6 setEntryDate:convertFromSystemToMonotonic];

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [v6 setObject:monotonicDate forKeyedSubscript:@"timestampEnd"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventIntervalMapsBusynessState:(id)state
{
  v4 = *MEMORY[0x277D3F5D8];
  stateCopy = state;
  v21 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"MapsBusyness"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v21];
  v7 = [stateCopy objectForKeyedSubscript:&unk_282C134E8];
  [v7 doubleValue];
  v9 = v8;

  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
  convertFromSystemToMonotonic = [v10 convertFromSystemToMonotonic];
  [v6 setEntryDate:convertFromSystemToMonotonic];

  v12 = [stateCopy objectForKeyedSubscript:&unk_282C13500];
  [v6 setObject:v12 forKeyedSubscript:@"Launched"];

  v13 = [stateCopy objectForKeyedSubscript:&unk_282C13518];
  [v6 setObject:v13 forKeyedSubscript:@"HarvestedRealTimeOnPower"];

  v14 = [stateCopy objectForKeyedSubscript:&unk_282C13530];
  [v6 setObject:v14 forKeyedSubscript:@"HarvestedRealTimeOnBattery"];

  v15 = [stateCopy objectForKeyedSubscript:&unk_282C13548];
  [v6 setObject:v15 forKeyedSubscript:@"HarvestedDifferential"];

  v16 = [stateCopy objectForKeyedSubscript:&unk_282C13560];
  [v6 setObject:v16 forKeyedSubscript:@"RateLimit"];

  v17 = [stateCopy objectForKeyedSubscript:&unk_282C13578];
  [v6 setObject:v17 forKeyedSubscript:@"LocationNotUsable"];

  v18 = [stateCopy objectForKeyedSubscript:&unk_282C13590];
  [v6 setObject:v18 forKeyedSubscript:@"LocationNoAuth"];

  v19 = [stateCopy objectForKeyedSubscript:&unk_282C135A8];

  [v6 setObject:v19 forKeyedSubscript:@"LocationUnavailable"];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [v6 setObject:monotonicDate forKeyedSubscript:@"timestampEnd"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventIntervalPDR:(id)r
{
  v4 = *MEMORY[0x277D3F5D8];
  rCopy = r;
  v7 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"PDR"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:rCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventNoneClientStatus
{
  v3 = CLCopyAppsUsingLocation();
  [(PLLocationAgent *)self logEventNoneClientStatusDebugWithClients:v3];
}

- (void)logEventNoneClientStatusDebugWithClients:(id)clients
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D3F5E0];
  clientsCopy = clients;
  v6 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"ClientStatusDebug"];
  v7 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__PLLocationAgent_logEventNoneClientStatusDebugWithClients___block_invoke;
  v11[3] = &unk_27825EA68;
  v12 = v6;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  [clientsCopy enumerateKeysAndObjectsUsingBlock:v11];

  v14 = v9;
  v15[0] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [(PLOperator *)self logEntries:v10 withGroupID:v9];
}

void __60__PLLocationAgent_logEventNoneClientStatusDebugWithClients___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 32) withRawData:v6];
  [v7 setObject:v5 forKeyedSubscript:@"Client"];
  [*(a1 + 40) addObject:v7];
  v8 = PLLogLocation();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Client=%@ entry=%@ clientSettings=%@", &v9, 0x20u);
  }
}

- (void)updateLocationQualificationEvents
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    activeBackgroundLocationClients = [(PLLocationAgent *)self activeBackgroundLocationClients];
    allObjects = [activeBackgroundLocationClients allObjects];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [mEMORY[0x277D3F0C0] createQualificationEventForwardWithQualificationID:15 withChildNodeNames:allObjects withStartDate:monotonicDate];
  }
}

- (void)updateGnssPowerMetric:(id)metric
{
  metricCopy = metric;
  v4 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"GPSPower"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  v6 = [metricCopy objectForKey:@"intervalStartTime"];
  [v5 setObject:v6 forKeyedSubscript:@"startTime"];

  v7 = [metricCopy objectForKey:@"measuredInterval"];
  [v5 setObject:v7 forKeyedSubscript:@"measuredInterval"];

  v8 = [metricCopy objectForKey:@"activeInterval"];
  [v5 setObject:v8 forKeyedSubscript:@"activeInterval"];

  v9 = MEMORY[0x277CCABB0];
  v10 = [metricCopy objectForKey:@"averagePower"];
  [v10 doubleValue];
  v12 = [v9 numberWithInt:(100 * v11)];
  [v5 setObject:v12 forKeyedSubscript:@"averagePower"];

  v13 = [metricCopy objectForKey:@"activeL5IntervalSec"];
  [v5 setObject:v13 forKeyedSubscript:@"activeL5IntervalSec"];

  [(PLOperator *)self logEntry:v5];
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    entryDate = [v5 entryDate];
    v15 = [metricCopy objectForKey:@"averagePower"];
    [v15 doubleValue];
    v17 = v16;
    v18 = [metricCopy objectForKey:@"measuredInterval"];
    [v18 doubleValue];
    [(PLLocationAgent *)self modelGpsSegmentPower:entryDate withGpsPower:v17 withTotalDuration:v19];
  }
}

- (void)modelGpsSegmentPower:(id)power withGpsPower:(double)gpsPower withTotalDuration:(double)duration
{
  powerCopy = power;
  isHomePod = [MEMORY[0x277D3F208] isHomePod];
  if ((isHomePod & 1) == 0)
  {
    isHomePod = [powerCopy timeIntervalSince1970];
    v11 = v10;
    if (self->_gps_segment_lastWrittenDate)
    {
      gps_segment_lastWrittenTimestamp = self->_gps_segment_lastWrittenTimestamp;
      v13 = self->_gps_segment_timestamp - gps_segment_lastWrittenTimestamp;
      v14 = 0.0;
      if (v13 > 0.0)
      {
        v14 = v13 * self->_gps_segment_power;
      }

      v15 = v11 - gps_segment_lastWrittenTimestamp;
      if (v15 > 0.0)
      {
        self->_gps_segment_power = (v14 + gpsPower * duration) / v15;
        objc_storeStrong(&self->_gps_segment_date, power);
        self->_gps_segment_timestamp = v11;
      }
    }

    else
    {
      objc_storeStrong(&self->_gps_segment_lastWrittenDate, power);
      self->_gps_segment_lastWrittenTimestamp = v11;
      objc_storeStrong(&self->_gps_segment_date, power);
      self->_gps_segment_timestamp = self->_gps_segment_lastWrittenTimestamp;
      self->_gps_segment_power = gpsPower;
    }
  }

  MEMORY[0x2821F96F8](isHomePod);
}

@end