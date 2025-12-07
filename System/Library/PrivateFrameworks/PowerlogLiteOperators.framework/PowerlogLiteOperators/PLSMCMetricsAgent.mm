@interface PLSMCMetricsAgent
+ (BOOL)isEnabled;
+ (BOOL)shouldModelDisplayPowerFromSMC;
+ (BOOL)supportsSMC;
+ (id)parsePMUEvents:(unint64_t)events;
+ (void)load;
+ (void)reportPMUEventsToCA:(id)a;
- (BOOL)accumSupported;
- (BOOL)anyVirtualTemperatureAboveThreshold;
- (BOOL)isThermalMitigationAboveThreshold;
- (BOOL)isThermalPressureFanNoiseAboveThreshold;
- (BOOL)writeSMCKey:(id)key withValue:(unint64_t)value;
- (PLSMCMetricsAgent)init;
- (const)isKeyOSAccumSupported:(id)supported;
- (id)getAllKeys;
- (id)getAllowedAccumulatedKeys;
- (id)getAllowedInstantKeys;
- (id)getAllowedKeys:(id)keys;
- (id)getAllowedPowerDeliveryKeys;
- (id)getOSAccumListFrom:(id)from;
- (id)getTVKeys;
- (id)getValueFromAccumSample:(id)sample lastSample:(id)lastSample;
- (id)handleNonNumericKeys:(unsigned int)keys keyInfo:(id *)info;
- (id)handleNumericKeys:(unsigned int)keys keyInfo:(id *)info keyName:(id)name ret:(char)ret;
- (id)readAccumSMCKey:(id)key toOutput:(id *)output;
- (id)readSMCKey:(id)key;
- (id)sampleAccumulatedKeys:(id)keys;
- (void)dealloc;
- (void)handleSleepWakeStateChange;
- (void)initOSMetrics;
- (void)initOperatorDependancies;
- (void)log;
- (void)logAccumlatedLookUpTable;
- (void)logAccumulatedKeysToPL:(BOOL)l ToCA:(BOOL)a;
- (void)logDisplayPower;
- (void)logEventPointInstantKeys;
- (void)logPowerDeliveryKeys;
- (void)logSMCLookUpTable;
- (void)logThermalKeysToCoreAnalytics;
- (void)powerDeliveryCallback;
- (void)thermalMonitorCallback;
@end

@implementation PLSMCMetricsAgent

void *__45__PLSMCMetricsAgent_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  v2 = PLLogSMCMetrics();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Daily logging of look-up tables", v4, 2u);
  }

  [*(a1 + 32) logSMCLookUpTable];
  result = [*(a1 + 32) accumSupported];
  if (result)
  {
    result = _os_feature_enabled_impl();
    if (result)
    {
      return [*(a1 + 32) logAccumlatedLookUpTable];
    }
  }

  return result;
}

- (void)thermalMonitorCallback
{
  v10 = *MEMORY[0x277D85DE8];
  [(PLSMCMetricsAgent *)self setLoggingCounter:[(PLSMCMetricsAgent *)self loggingCounter]+ 1];
  v3 = PLLogSMCMetrics();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(PLSMCMetricsAgent *)self monitorCadence];
    v5[0] = 67109632;
    v5[1] = v4;
    v6 = 1024;
    loggingThreshold = [(PLSMCMetricsAgent *)self loggingThreshold];
    v8 = 1024;
    loggingCounter = [(PLSMCMetricsAgent *)self loggingCounter];
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Monitoring timer callback (interval %ds, threshold %d, count %d)", v5, 0x14u);
  }

  if ([(PLSMCMetricsAgent *)self anyVirtualTemperatureAboveThreshold])
  {
    [(PLSMCMetricsAgent *)self logEventPointInstantKeys];
  }

  if (os_variant_is_darwinos())
  {
    [(PLSMCMetricsAgent *)self logEventPointInstantKeys];
    [(PLSMCMetricsAgent *)self logAccumulatedKeysToPL:1 ToCA:1];
  }

  if ([(PLSMCMetricsAgent *)self loggingCounter]>= 0x1E)
  {
    [(PLSMCMetricsAgent *)self logThermalKeysToCoreAnalytics];
    [(PLSMCMetricsAgent *)self logAccumulatedKeysToPL:1 ToCA:1];
    [(PLSMCMetricsAgent *)self setLoggingCounter:0];
  }
}

- (BOOL)anyVirtualTemperatureAboveThreshold
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  getTVKeys = [(PLSMCMetricsAgent *)self getTVKeys];
  v4 = [getTVKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(getTVKeys);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if (([v8 isEqualToString:@"TVD0"] & 1) == 0)
        {
          v9 = [(PLSMCMetricsAgent *)self readSMCKey:v8];
          v10 = v9;
          if (v9)
          {
            [v9 floatValue];
            if (v11 > 35.0)
            {

              v12 = 1;
              goto LABEL_14;
            }
          }
        }
      }

      v5 = [getTVKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (id)getTVKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__PLSMCMetricsAgent_getTVKeys__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F3D88 != -1)
  {
    dispatch_once(&qword_2811F3D88, block);
  }

  return qword_2811F3D80;
}

- (void)powerDeliveryCallback
{
  v5 = *MEMORY[0x277D85DE8];
  [(PLSMCMetricsAgent *)self setPowerDeliveryCounter:[(PLSMCMetricsAgent *)self powerDeliveryCounter]+ 1];
  v3 = PLLogSMCMetrics();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 67109120;
    v4[1] = [(PLSMCMetricsAgent *)self powerDeliveryCounter];
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Power delivery callback (count %d)", v4, 8u);
  }

  if ([(PLSMCMetricsAgent *)self powerDeliveryCounter]>= 0x5A)
  {
    [(PLSMCMetricsAgent *)self logPowerDeliveryKeys];
    [(PLSMCMetricsAgent *)self setPowerDeliveryCounter:0];
  }
}

- (void)log
{
  [(PLSMCMetricsAgent *)self logEventPointInstantKeys];
  if ([(PLSMCMetricsAgent *)self accumSupported]&& _os_feature_enabled_impl())
  {

    [(PLSMCMetricsAgent *)self logAccumulatedKeysToPL:1 ToCA:1];
  }
}

- (void)logEventPointInstantKeys
{
  v15 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  loggedInstantKeysArray = self->_loggedInstantKeysArray;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__PLSMCMetricsAgent_logEventPointInstantKeys__block_invoke;
  v10[3] = &unk_278259CE0;
  v10[4] = self;
  v6 = dictionary;
  v11 = v6;
  v12 = dictionary2;
  v7 = dictionary2;
  [(NSArray *)loggedInstantKeysArray enumerateObjectsUsingBlock:v10];
  v8 = PLLogSMCMetrics();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Logging SMC Payload: %@", buf, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [v7 setObject:monotonicDate forKeyedSubscript:@"timestamp"];

  [MEMORY[0x277D3F258] postNotificationName:@"ThermalEntryNotification" object:self userInfo:v7];
  [(PLOperator *)self logForSubsystem:@"SMC" category:@"InstantKeyValues" data:v6];
}

void __45__PLSMCMetricsAgent_logEventPointInstantKeys__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [*(a1 + 32) readSMCKey:v12];
  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu", @"Key", a3];
    [v7 setObject:v6 forKeyedSubscript:v8];

    [*(a1 + 48) setObject:v6 forKeyedSubscript:v12];
    if (os_variant_is_darwinos())
    {
      v9 = MEMORY[0x277D3F200];
      v10 = [*(a1 + 32) instantGaugeArray];
      v11 = [v10 objectAtIndex:a3];
      [v6 doubleValue];
      [v9 setGauge:v11 withValue:?];
    }
  }

  objc_autoreleasePoolPop(v5);
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLSMCMetricsAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLSMCMetricsAgent)init
{
  v23.receiver = self;
  v23.super_class = PLSMCMetricsAgent;
  v2 = [(PLAgent *)&v23 init];
  v3 = v2;
  if (v2)
  {
    monitorTimer = v2->_monitorTimer;
    v2->_monitorTimer = 0;

    v3->_loggingCounter = 0;
    v3->_cycleCountInterval = 0.0;
    v3->_powerDeliveryCounter = 0;
    lastFocalSampleDate = v3->_lastFocalSampleDate;
    v3->_lastFocalSampleDate = 0;

    lastAccumlatedSample = v3->_lastAccumlatedSample;
    v3->_lastAccumlatedSample = 0;

    v7 = [MEMORY[0x277CBEB98] set];
    availableKeys = v3->_availableKeys;
    v3->_availableKeys = v7;

    lastDisplayAccumlatedSample = v3->_lastDisplayAccumlatedSample;
    v3->_lastDisplayAccumlatedSample = 0;

    array = [MEMORY[0x277CBEA60] array];
    loggedInstantKeysArray = v3->_loggedInstantKeysArray;
    v3->_loggedInstantKeysArray = array;

    array2 = [MEMORY[0x277CBEB18] array];
    accumGaugeArray = v3->_accumGaugeArray;
    v3->_accumGaugeArray = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    instantGaugeArray = v3->_instantGaugeArray;
    v3->_instantGaugeArray = array3;

    array4 = [MEMORY[0x277CBEA60] array];
    loggedAccumulatedKeysArray = v3->_loggedAccumulatedKeysArray;
    v3->_loggedAccumulatedKeysArray = array4;

    array5 = [MEMORY[0x277CBEA60] array];
    loggedPowerDeliveryKeysArray = v3->_loggedPowerDeliveryKeysArray;
    v3->_loggedPowerDeliveryKeysArray = array5;

    v3->_smcConnection = SMCOpenConnectionWithDefaultService();
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    lastDisplayAccumulatedSampleEndDate = v3->_lastDisplayAccumulatedSampleEndDate;
    v3->_lastDisplayAccumulatedSampleEndDate = monotonicDate;
  }

  return v3;
}

+ (BOOL)isEnabled
{
  if (!+[PLSMCMetricsAgent supportsSMC])
  {
    v3 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v7 = 0;
    v4 = "SMC telemetry is not supported";
    v5 = &v7;
LABEL_10:
    _os_log_error_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_ERROR, v4, v5, 2u);
    goto LABEL_7;
  }

  if ([MEMORY[0x277D3F180] longForKey:@"SMCMonitorCadence" ifNotSet:20])
  {
    return 1;
  }

  v3 = PLLogSMCMetrics();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 0;
    v4 = "SMC telemetry is disabled";
    v5 = &v6;
    goto LABEL_10;
  }

LABEL_7:

  return 0;
}

- (void)initOperatorDependancies
{
  v58 = *MEMORY[0x277D85DE8];
  getAllKeys = [(PLSMCMetricsAgent *)self getAllKeys];
  availableKeys = self->_availableKeys;
  self->_availableKeys = getAllKeys;

  v5 = PLLogSMCMetrics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v38 = [(NSSet *)self->_availableKeys count];
    v39 = self->_availableKeys;
    LODWORD(location) = 67109378;
    HIDWORD(location) = v38;
    v56 = 2112;
    v57 = v39;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "List of all SMC Keys (count %d): %@", &location, 0x12u);
  }

  getAllowedInstantKeys = [(PLSMCMetricsAgent *)self getAllowedInstantKeys];
  [getAllowedInstantKeys intersectSet:self->_availableKeys];

  getAllowedInstantKeys2 = [(PLSMCMetricsAgent *)self getAllowedInstantKeys];
  allObjects = [getAllowedInstantKeys2 allObjects];
  loggedInstantKeysArray = self->_loggedInstantKeysArray;
  self->_loggedInstantKeysArray = allObjects;

  v10 = PLLogSMCMetrics();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    loggedInstantKeysArray = [(PLSMCMetricsAgent *)self loggedInstantKeysArray];
    v41 = [loggedInstantKeysArray count];
    loggedInstantKeysArray2 = [(PLSMCMetricsAgent *)self loggedInstantKeysArray];
    LODWORD(location) = 67109378;
    HIDWORD(location) = v41;
    v56 = 2112;
    v57 = loggedInstantKeysArray2;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "List of collected instant SMC keys (count %d): %@", &location, 0x12u);
  }

  getAllowedAccumulatedKeys = [(PLSMCMetricsAgent *)self getAllowedAccumulatedKeys];
  [getAllowedAccumulatedKeys intersectSet:self->_availableKeys];

  getAllowedAccumulatedKeys2 = [(PLSMCMetricsAgent *)self getAllowedAccumulatedKeys];
  allObjects2 = [getAllowedAccumulatedKeys2 allObjects];
  v14 = [(PLSMCMetricsAgent *)self getOSAccumListFrom:allObjects2];
  loggedAccumulatedKeysArray = self->_loggedAccumulatedKeysArray;
  self->_loggedAccumulatedKeysArray = v14;

  v16 = PLLogSMCMetrics();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    loggedAccumulatedKeysArray = [(PLSMCMetricsAgent *)self loggedAccumulatedKeysArray];
    v44 = [loggedAccumulatedKeysArray count];
    loggedAccumulatedKeysArray2 = [(PLSMCMetricsAgent *)self loggedAccumulatedKeysArray];
    LODWORD(location) = 67109378;
    HIDWORD(location) = v44;
    v56 = 2112;
    v57 = loggedAccumulatedKeysArray2;
    _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "List of collected accumulated keys (count %d): %@", &location, 0x12u);
  }

  getAllowedPowerDeliveryKeys = [(PLSMCMetricsAgent *)self getAllowedPowerDeliveryKeys];
  [getAllowedPowerDeliveryKeys intersectsSet:self->_availableKeys];

  getAllowedPowerDeliveryKeys2 = [(PLSMCMetricsAgent *)self getAllowedPowerDeliveryKeys];
  allObjects3 = [getAllowedPowerDeliveryKeys2 allObjects];
  loggedPowerDeliveryKeysArray = self->_loggedPowerDeliveryKeysArray;
  self->_loggedPowerDeliveryKeysArray = allObjects3;

  v21 = PLLogSMCMetrics();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    getAllowedPowerDeliveryKeys3 = [(PLSMCMetricsAgent *)self getAllowedPowerDeliveryKeys];
    v47 = [getAllowedPowerDeliveryKeys3 count];
    getAllowedPowerDeliveryKeys4 = [(PLSMCMetricsAgent *)self getAllowedPowerDeliveryKeys];
    LODWORD(location) = 67109378;
    HIDWORD(location) = v47;
    v56 = 2112;
    v57 = getAllowedPowerDeliveryKeys4;
    _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "List of collected power delivery SMC keys (count %d): %@", &location, 0x12u);
  }

  [(PLSMCMetricsAgent *)self initOSMetrics];
  self->_monitorCadence = [MEMORY[0x277D3F180] longForKey:@"SMCMonitorCadence" ifNotSet:20];
  [(PLSMCMetricsAgent *)self logSMCLookUpTable];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __45__PLSMCMetricsAgent_initOperatorDependancies__block_invoke;
  v54[3] = &unk_2782597E8;
  v54[4] = self;
  v22 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v54];
  sbc = self->_sbc;
  self->_sbc = v22;

  v24 = objc_alloc(MEMORY[0x277D3F1F0]);
  v25 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  v26 = *MEMORY[0x277CBE580];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __45__PLSMCMetricsAgent_initOperatorDependancies__block_invoke_2;
  v53[3] = &unk_2782597E8;
  v53[4] = self;
  v27 = [v24 initWithWorkQueue:v25 forNotification:v26 withBlock:v53];

  [(PLSMCMetricsAgent *)self setDailyTaskNotification:v27];
  if ([(PLSMCMetricsAgent *)self accumSupported]&& _os_feature_enabled_impl())
  {
    [(PLSMCMetricsAgent *)self logAccumlatedLookUpTable];
    objc_initWeak(&location, self);
    mEMORY[0x277D3F220] = [MEMORY[0x277D3F220] sharedInstance];
    [(PLSMCMetricsAgent *)self setStateTracker:mEMORY[0x277D3F220]];

    stateTracker = [(PLSMCMetricsAgent *)self stateTracker];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __45__PLSMCMetricsAgent_initOperatorDependancies__block_invoke_54;
    v51[3] = &unk_278259C18;
    objc_copyWeak(&v52, &location);
    [stateTracker registerForStates:57 withOperator:self withBlock:v51];

    if (+[PLSMCMetricsAgent shouldModelDisplayPowerFromSMC])
    {
      [(PLSMCMetricsAgent *)self logDisplayPower];
      v30 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ScreenState"];
      v31 = objc_alloc(MEMORY[0x277D3F1A8]);
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __45__PLSMCMetricsAgent_initOperatorDependancies__block_invoke_2_56;
      v50[3] = &unk_2782597E8;
      v50[4] = self;
      v32 = [v31 initWithOperator:self forEntryKey:v30 withFilter:MEMORY[0x277CBEC10] withBlock:v50];
      [(PLSMCMetricsAgent *)self setScreenStateNotification:v32];
    }

    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);
  }

  v33 = objc_alloc(MEMORY[0x277D3F250]);
  date = [MEMORY[0x277CBEAA8] date];
  monitorCadence = self->_monitorCadence;
  workQueue = [(PLOperator *)self workQueue];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __45__PLSMCMetricsAgent_initOperatorDependancies__block_invoke_3;
  v49[3] = &unk_278259C40;
  v49[4] = self;
  v37 = [v33 initWithFireDate:date withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v49 withQueue:monitorCadence withBlock:0.0];
  [(PLSMCMetricsAgent *)self setMonitorTimer:v37];
}

void __45__PLSMCMetricsAgent_initOperatorDependancies__block_invoke_54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSleepWakeStateChange];
}

uint64_t __45__PLSMCMetricsAgent_initOperatorDependancies__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) thermalMonitorCallback];
  v2 = *(a1 + 32);

  return [v2 powerDeliveryCallback];
}

- (void)initOSMetrics
{
  v28 = *MEMORY[0x277D85DE8];
  if (os_variant_is_darwinos())
  {
    v3 = [MEMORY[0x277D3F200] createMetricGroup:@"SMC" withDimensions:0];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    loggedInstantKeysArray = [(PLSMCMetricsAgent *)self loggedInstantKeysArray];
    v5 = [loggedInstantKeysArray countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        v8 = 0;
        do
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(loggedInstantKeysArray);
          }

          v9 = [MEMORY[0x277D3F200] createGauge:v3 withLabel:*(*(&v22 + 1) + 8 * v8)];
          instantGaugeArray = [(PLSMCMetricsAgent *)self instantGaugeArray];
          [instantGaugeArray addObject:v9];

          ++v8;
        }

        while (v6 != v8);
        v6 = [loggedInstantKeysArray countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    loggedAccumulatedKeysArray = [(PLSMCMetricsAgent *)self loggedAccumulatedKeysArray];
    v12 = [loggedAccumulatedKeysArray countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(loggedAccumulatedKeysArray);
          }

          v16 = [MEMORY[0x277D3F200] createGauge:v3 withLabel:*(*(&v18 + 1) + 8 * v15)];
          accumGaugeArray = [(PLSMCMetricsAgent *)self accumGaugeArray];
          [accumGaugeArray addObject:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [loggedAccumulatedKeysArray countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v13);
    }
  }
}

- (void)logSMCLookUpTable
{
  loggedInstantKeysArray = self->_loggedInstantKeysArray;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__PLSMCMetricsAgent_logSMCLookUpTable__block_invoke;
  v3[3] = &unk_278259C68;
  v3[4] = self;
  [(NSArray *)loggedInstantKeysArray enumerateObjectsUsingBlock:v3];
}

void __38__PLSMCMetricsAgent_logSMCLookUpTable__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu", @"Key", a3];
    v12[0] = @"KeyIndex";
    v12[1] = @"KeyName";
    v13[0] = v7;
    v13[1] = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v9 = PLLogSMCMetrics();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v11 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Logging SMC Look-up table: %@", buf, 0xCu);
    }

    [*(a1 + 32) logForSubsystem:@"SMC" category:@"InstantLookUpTable" data:v8];
  }

  objc_autoreleasePoolPop(v6);
}

- (void)logThermalKeysToCoreAnalytics
{
  v3 = objc_autoreleasePoolPush();
  stateTracker = self->_stateTracker;
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v6 = [(PLStateTrackingComposition *)stateTracker getState:1 beforeDate:monotonicDate];

  v7 = self->_stateTracker;
  monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
  v9 = [(PLStateTrackingComposition *)v7 getState:8 beforeDate:monotonicDate2];

  v10 = self->_stateTracker;
  monotonicDate3 = [MEMORY[0x277CBEAA8] monotonicDate];
  v12 = [(PLStateTrackingComposition *)v10 getState:64 beforeDate:monotonicDate3];
  bOOLValue = [v12 BOOLValue];

  v14 = PLLogSMCMetrics();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "Log Thermal Aggregated Keys to CA", buf, 2u);
  }

  v15 = MEMORY[0x277CBEB38];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue ^ 1u];
  v17 = [v15 dictionaryWithObjectsAndKeys:{v6, @"Plugged", v9, @"Wake", v16, @"Active", 0}];

  loggedInstantKeysArray = self->_loggedInstantKeysArray;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __50__PLSMCMetricsAgent_logThermalKeysToCoreAnalytics__block_invoke;
  v22[3] = &unk_278259C90;
  v22[4] = self;
  v19 = v17;
  v23 = v19;
  [(NSArray *)loggedInstantKeysArray enumerateObjectsUsingBlock:v22];
  v21 = v19;
  v20 = v19;
  AnalyticsSendEventLazy();

  objc_autoreleasePoolPop(v3);
}

void __50__PLSMCMetricsAgent_logThermalKeysToCoreAnalytics__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) readSMCKey:v3];
  if (([v3 isEqualToString:@"SDTO"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"xPDS") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"TH0b") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"mlf0") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"mlf1") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"mlf2") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Ts0P") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"TVM0") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"TH0A") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"vofi") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"vopi"))
  {
    v5 = [v3 stringByAppendingString:@"_"];

    v3 = v5;
  }

  if ([v3 isEqualToString:@"SDTO"])
  {
    [v4 doubleValue];
    [MEMORY[0x277D3F258] roundToSigFigDouble:1 withSigFig:?];
    v7 = 10.0;
    v8 = v6 >= 5.0 && v6 < 10.0;
    if (!v8)
    {
      v7 = v6;
    }

    v8 = v6 < 5.0;
    v9 = 1.0;
    if (!v8)
    {
      v9 = v7;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v9];

    v4 = v10;
  }

  v11 = PLLogSMCMetrics();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "logging key to CA: %@", &v12, 0xCu);
  }

  if (v4)
  {
    [*(a1 + 40) setObject:v4 forKey:v3];
  }
}

- (void)logPowerDeliveryKeys
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_loggedPowerDeliveryKeysArray count])
  {
    v4 = 241;
    *&v3 = 67109120;
    v9 = v3;
    do
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      if ([(PLSMCMetricsAgent *)self writeSMCKey:@"SATR" withValue:v4 - 240])
      {
        loggedPowerDeliveryKeysArray = self->_loggedPowerDeliveryKeysArray;
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __41__PLSMCMetricsAgent_logPowerDeliveryKeys__block_invoke;
        v10[3] = &unk_278259D08;
        v10[4] = self;
        v11 = dictionary;
        v12 = v4 + 16;
        [(NSArray *)loggedPowerDeliveryKeysArray enumerateObjectsUsingBlock:v10];
        if (![(PLSMCMetricsAgent *)self writeSMCKey:@"SATR" withValue:v4])
        {
          v7 = PLLogSMCMetrics();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = v9;
            v14 = v4 - 240;
            _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "Could not clear counts for rail mode %d", buf, 8u);
          }
        }
      }

      else
      {
        v8 = PLLogSMCMetrics();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = v9;
          v14 = v4 - 240;
          _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "Could not set threshold rail mode to %d", buf, 8u);
        }
      }

      ++v4;
    }

    while (v4 != 247);
  }
}

void __41__PLSMCMetricsAgent_logPowerDeliveryKeys__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) readSMCKey:v3];
  if (v5)
  {
    [*(a1 + 40) setObject:v3 forKeyedSubscript:@"Key"];
    [*(a1 + 40) setObject:v5 forKeyedSubscript:@"Value"];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 48)];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:@"RailMode"];

    v7 = PLLogSMCMetrics();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 40);
      v9 = 138412290;
      v10 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Logging Power Delivery Payload: %@", &v9, 0xCu);
    }

    [*(a1 + 32) logForSubsystem:@"SMC" category:@"PowerDeliveryCLVRKeys" data:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)logAccumulatedKeysToPL:(BOOL)l ToCA:(BOOL)a
{
  aCopy = a;
  lCopy = l;
  v37 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = [(PLSMCMetricsAgent *)self sampleAccumulatedKeys:self->_loggedAccumulatedKeysArray];
  lastAccumlatedSample = [(PLSMCMetricsAgent *)self lastAccumlatedSample];
  v10 = [(PLSMCMetricsAgent *)self getValueFromAccumSample:v8 lastSample:lastAccumlatedSample];

  if (v10)
  {
    v29 = aCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [dictionary setObject:monotonicDate forKeyedSubscript:@"timestampEnd"];

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_cycleCountInterval];
    [dictionary setObject:v13 forKeyedSubscript:@"CycleCountDiff"];

    if (self->_cycleCountInterval <= 0.0)
    {
      v15 = [dictionary objectForKeyedSubscript:@"timestampEnd"];
    }

    else
    {
      monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
      v15 = [monotonicDate2 dateByAddingTimeInterval:-self->_cycleCountInterval];
    }

    loggedAccumulatedKeysArray = self->_loggedAccumulatedKeysArray;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __49__PLSMCMetricsAgent_logAccumulatedKeysToPL_ToCA___block_invoke;
    v31[3] = &unk_278259CE0;
    v17 = v10;
    v32 = v17;
    v18 = dictionary;
    v33 = v18;
    selfCopy = self;
    [(NSArray *)loggedAccumulatedKeysArray enumerateObjectsUsingBlock:v31];
    v19 = PLLogSMCMetrics();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v36 = v17;
      _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "Accumulated Payload: %@", buf, 0xCu);
    }

    v20 = v15;
    if (lCopy)
    {
      [(PLOperator *)self logForSubsystem:@"SMC" category:@"AccumulatedKeyValues" data:v18 date:v15];
      [v17 setObject:v15 forKeyedSubscript:@"timestamp"];
      monotonicDate3 = [MEMORY[0x277CBEAA8] monotonicDate];
      [v17 setObject:monotonicDate3 forKeyedSubscript:@"timestampEnd"];

      [MEMORY[0x277D3F258] postNotificationName:@"PowerEntryNotification" object:self userInfo:v17];
      self->_cycleCountInterval = 0.0;
      [(PLSMCMetricsAgent *)self setLastAccumlatedSample:v8];
    }

    if (v29)
    {
      stateTracker = self->_stateTracker;
      monotonicDate4 = [MEMORY[0x277CBEAA8] monotonicDate];
      v24 = [(PLStateTrackingComposition *)stateTracker getState:1 beforeDate:monotonicDate4];

      v25 = self->_stateTracker;
      monotonicDate5 = [MEMORY[0x277CBEAA8] monotonicDate];
      v27 = [(PLStateTrackingComposition *)v25 getState:8 beforeDate:monotonicDate5];

      if (v24 && v27)
      {
        [v17 setObject:v24 forKey:@"Plugged"];
        [v17 setObject:v27 forKey:@"Wake"];
        v28 = PLLogSMCMetrics();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "Log Accumulated Keys to CA", buf, 2u);
        }

        v30 = v17;
        AnalyticsSendEventLazy();
      }
    }
  }

  objc_autoreleasePoolPop(v7);
}

void __49__PLSMCMetricsAgent_logAccumulatedKeysToPL_ToCA___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [*(a1 + 32) objectForKeyedSubscript:v12];
  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu", @"Key", a3];
    [v7 setObject:v6 forKeyedSubscript:v8];

    if (os_variant_is_darwinos())
    {
      v9 = MEMORY[0x277D3F200];
      v10 = [*(a1 + 48) accumGaugeArray];
      v11 = [v10 objectAtIndex:a3];
      [v6 doubleValue];
      [v9 setGauge:v11 withValue:?];
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)logAccumlatedLookUpTable
{
  v9 = *MEMORY[0x277D85DE8];
  loggedAccumulatedKeysArray = self->_loggedAccumulatedKeysArray;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__PLSMCMetricsAgent_logAccumlatedLookUpTable__block_invoke;
  v6[3] = &unk_278259C68;
  v6[4] = self;
  [(NSArray *)loggedAccumulatedKeysArray enumerateObjectsUsingBlock:v6];
  v4 = PLLogSMCMetrics();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = self->_loggedAccumulatedKeysArray;
    *buf = 138412290;
    v8 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Accumulated Payload%@", buf, 0xCu);
  }
}

void __45__PLSMCMetricsAgent_logAccumlatedLookUpTable__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu", @"Key", a3];
    v12[0] = @"KeyIndex";
    v12[1] = @"KeyName";
    v13[0] = v7;
    v13[1] = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v9 = PLLogSMCMetrics();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v11 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Logging Accumulated Look-up table: %@", buf, 0xCu);
    }

    [*(a1 + 32) logForSubsystem:@"SMC" category:@"AccumulatedLookUpTable" data:v8];
  }

  objc_autoreleasePoolPop(v6);
}

- (void)logDisplayPower
{
  v3 = [(PLSMCMetricsAgent *)self sampleAccumulatedKeys:&unk_282C13F80];
  if (v3)
  {
    lastDisplayAccumlatedSample = [(PLSMCMetricsAgent *)self lastDisplayAccumlatedSample];
    v5 = [(PLSMCMetricsAgent *)self getValueFromAccumSample:v3 lastSample:lastDisplayAccumlatedSample];

    if (v5)
    {
      [(PLOperator *)self logForSubsystem:@"SMC" category:@"DisplayPower" data:v5];
      v6 = [v5 objectForKeyedSubscript:@"PDEP"];
      [v6 doubleValue];
      v8 = v7;
      v9 = [v5 objectForKeyedSubscript:@"PDLP"];
      [v9 doubleValue];
      v11 = (v8 + v10) * 1000.0;

      lastDisplayAccumulatedSampleEndDate = [(PLSMCMetricsAgent *)self lastDisplayAccumulatedSampleEndDate];
      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      [mEMORY[0x277D3F0C0] createPowerEventIntervalWithRootNodeID:56 withPower:lastDisplayAccumulatedSampleEndDate withStartDate:monotonicDate withEndDate:v11];

      [(PLSMCMetricsAgent *)self setLastDisplayAccumlatedSample:v3];
      monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
      [(PLSMCMetricsAgent *)self setLastDisplayAccumulatedSampleEndDate:monotonicDate2];
    }
  }

  else
  {
    v16 = PLLogSMCMetrics();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_ERROR, "Failed to sample OSAccumulator channel", v17, 2u);
    }
  }
}

- (id)getValueFromAccumSample:(id)sample lastSample:(id)lastSample
{
  sampleCopy = sample;
  lastSampleCopy = lastSample;
  if (sampleCopy)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy_;
    v26 = __Block_byref_object_dispose_;
    v27 = objc_opt_new();
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0xBFF0000000000000;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__PLSMCMetricsAgent_getValueFromAccumSample_lastSample___block_invoke;
    v14[3] = &unk_278259D30;
    v8 = lastSampleCopy;
    v15 = v8;
    v16 = &v22;
    v17 = &v18;
    [sampleCopy enumerateKeysAndObjectsUsingBlock:v14];
    if ([v23[5] count] && ((v9 = v19, v10 = v19[3], !v8) || v10 > 1.0))
    {
      self->_cycleCountInterval = v10;
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:v9[3]];
      [v23[5] setObject:v12 forKeyedSubscript:@"CycleCountDiff"];

      v11 = v23[5];
    }

    else
    {
      v11 = 0;
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __56__PLSMCMetricsAgent_getValueFromAccumSample_lastSample___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v23 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = a1[4];
  if (!v9)
  {
    if (![v7 cycleCount])
    {
      v11 = 0;
      goto LABEL_19;
    }

    [v7 channelValue];
    v18 = v19 / [v7 cycleCount];
    v17 = [v7 cycleCount];
    v11 = 0;
    goto LABEL_12;
  }

  v10 = [v9 objectForKeyedSubscript:v23];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 cycleCount];
    if (v12 < [v7 cycleCount])
    {
      [v7 channelValue];
      v14 = v13;
      [v11 channelValue];
      v16 = v15;
      v17 = [v7 cycleCount] - v12;
      if (v17 < 1)
      {
        goto LABEL_19;
      }

      v18 = (v14 - v16) / v17;
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
  }

  if (![v7 cycleCount] || objc_msgSend(v7, "cycleCount") == v12)
  {
    goto LABEL_19;
  }

  [v7 channelValue];
  v18 = v20 / [v7 cycleCount];
  v17 = [v7 cycleCount];
LABEL_12:
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
  [*(*(a1[5] + 8) + 40) setObject:v21 forKeyedSubscript:v23];

  v22 = *(a1[6] + 8);
  if (*(v22 + 24) == -1.0)
  {
    *(v22 + 24) = v17;
    if ([v7 variant] == 2)
    {
      *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24) / 1000.0;
    }

    if (*(*(a1[6] + 8) + 24) <= 1.0 && a1[4])
    {
      *a4 = 1;
    }
  }

LABEL_19:

  objc_autoreleasePoolPop(v8);
}

- (id)sampleAccumulatedKeys:(id)keys
{
  v4 = MEMORY[0x277CBEB38];
  keysCopy = keys;
  dictionary = [v4 dictionary];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__PLSMCMetricsAgent_sampleAccumulatedKeys___block_invoke;
  v11[3] = &unk_278259C90;
  v11[4] = self;
  v7 = dictionary;
  v12 = v7;
  [keysCopy enumerateObjectsUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __43__PLSMCMetricsAgent_sampleAccumulatedKeys___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v8 = 0;
  v9 = 0;
  v5 = [*(a1 + 32) readAccumSMCKey:v3 toOutput:&v8];

  if (v5)
  {
    v6 = [*(a1 + 32) readAccumSMCKey:v3 toOutput:&v8];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v3];
  }

  v7 = PLLogSMCMetrics();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v11 = v3;
    v12 = 2048;
    v13 = v8;
    v14 = 1024;
    v15 = v9;
    v16 = 1024;
    v17 = BYTE4(v9);
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AccumulatedKeys: keyName=%@, channelValue=%f, cycleCount=%d, variant=%d", buf, 0x22u);
  }

  objc_autoreleasePoolPop(v4);
}

- (id)readAccumSMCKey:(id)key toOutput:(id *)output
{
  v20 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v7 = objc_autoreleasePoolPush();
  [keyCopy UTF8String];
  v8 = SMCMakeUInt32Key();
  if (![(PLSMCMetricsAgent *)self isKeyOSAccumSupported:keyCopy])
  {
    v9 = PLLogSMCMetrics();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = 67109120;
      LODWORD(v17) = v8;
      v10 = "Failed to fetch channelInfo for key %u";
      v11 = v9;
      v12 = 8;
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  [(PLSMCMetricsAgent *)self smcConnection];
  if (SMCOSAccumSampleChannel())
  {
    v9 = PLLogSMCMetrics();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      v10 = "SMCOSAccumSampleChannel fails";
      v11 = v9;
      v12 = 2;
LABEL_16:
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, v10, &v16, v12);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  var1 = output->var1;
  if (!var1)
  {
    v9 = PLLogSMCMetrics();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[PLSMCMetricsAgent readAccumSMCKey:toOutput:]";
      v18 = 1024;
      v19 = v8;
      v10 = "%s: Returned cycleCount is zero for %u key, returning kSMCReturnError";
      v11 = v9;
      v12 = 18;
      goto LABEL_16;
    }

LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  v13 = [PLSMCAccumOutputObject objectWithChannelValue:var1 cycleCount:output->var2 variant:output->var0];
  v9 = PLLogSMCMetrics();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    v17 = keyCopy;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Accumulated key: %@", &v16, 0xCu);
  }

LABEL_7:

  objc_autoreleasePoolPop(v7);

  return v13;
}

- (const)isKeyOSAccumSupported:(id)supported
{
  v8 = *MEMORY[0x277D85DE8];
  supportedCopy = supported;
  v5 = objc_autoreleasePoolPush();
  if (supportedCopy && ([supportedCopy UTF8String], SMCMakeUInt32Key()) && (-[PLSMCMetricsAgent smcConnection](self, "smcConnection"), !SMCGetKeyInfo()))
  {
    [(PLSMCMetricsAgent *)self smcConnection];
    ChannelInfoForKey = SMCAccumGetChannelInfoForKey();
  }

  else
  {
    ChannelInfoForKey = 0;
  }

  objc_autoreleasePoolPop(v5);

  return ChannelInfoForKey;
}

- (BOOL)accumSupported
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__PLSMCMetricsAgent_accumSupported__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F3D48 != -1)
  {
    dispatch_once(&qword_2811F3D48, block);
  }

  return _MergedGlobals_1_0;
}

uint64_t __35__PLSMCMetricsAgent_accumSupported__block_invoke(uint64_t a1)
{
  [*(a1 + 32) smcConnection];
  result = SMCOSAccumIsSupported();
  _MergedGlobals_1_0 = result;
  return result;
}

- (void)handleSleepWakeStateChange
{
  [(PLSMCMetricsAgent *)self setLastAccumlatedSample:0];
  if ([(PLStateTrackingComposition *)self->_stateTracker stateChanged:32])
  {
    v3 = [(PLStateTrackingComposition *)self->_stateTracker getLastState:32];
    bOOLValue = [v3 BOOLValue];

    if (bOOLValue)
    {
      [(PLSMCMetricsAgent *)self logAccumulatedKeysToPL:1 ToCA:1];
    }
  }

  if (+[PLSMCMetricsAgent shouldModelDisplayPowerFromSMC]&& [(PLSMCMetricsAgent *)self accumSupported])
  {
    lastDisplayAccumlatedSample = self->_lastDisplayAccumlatedSample;
    self->_lastDisplayAccumlatedSample = 0;

    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    lastDisplayAccumulatedSampleEndDate = self->_lastDisplayAccumulatedSampleEndDate;
    self->_lastDisplayAccumulatedSampleEndDate = monotonicDate;

    [(PLSMCMetricsAgent *)self logDisplayPower];
  }
}

- (void)dealloc
{
  if ([(PLSMCMetricsAgent *)self smcConnection])
  {
    [(PLSMCMetricsAgent *)self smcConnection];
    SMCCloseConnection();
  }

  v3.receiver = self;
  v3.super_class = PLSMCMetricsAgent;
  [(PLAgent *)&v3 dealloc];
}

- (id)handleNumericKeys:(unsigned int)keys keyInfo:(id *)info keyName:(id)name ret:(char)ret
{
  v36 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  [(PLSMCMetricsAgent *)self smcConnection];
  v9 = SMCReadKeyAsNumericWithKnownKeyInfo();
  if (v9)
  {
    v10 = v9;
    v11 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_3:

LABEL_4:
      v12 = 0;
      goto LABEL_10;
    }

    *buf = 67109120;
    v33 = v10;
    v19 = "SMCReadKeyAsNumeric error: %d";
LABEL_26:
    _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, v19, buf, 8u);
    goto LABEL_3;
  }

  var0 = info->var2.var0.var0;
  if (var0)
  {
    if (var0 == 2 || var0 == 1)
    {
      HIDWORD(v14) = 0;
      *&v14 = 0.0;
      v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
      goto LABEL_9;
    }

    v20 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
LABEL_18:

      goto LABEL_4;
    }

    v27 = info->var2.var0.var0;
    *buf = 67109120;
    v33 = v27;
    v28 = "Unknown numeric SMC type: %d";
    v29 = v20;
    v30 = 8;
LABEL_39:
    _os_log_error_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
    goto LABEL_18;
  }

  if (!info->var2.var0.var1)
  {
    var1 = info->var1;
    if ((var1 & 4) == 0)
    {
      if ((var1 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      var3 = info->var3;
      if (var3 > 3)
      {
        if (var3 == 4)
        {
          v23 = MEMORY[0x277CCABB0];
          goto LABEL_49;
        }

        if (var3 == 8)
        {
          v23 = MEMORY[0x277CCABB0];
          goto LABEL_49;
        }
      }

      else
      {
        if (var3 == 1)
        {
          v23 = MEMORY[0x277CCABB0];
          goto LABEL_49;
        }

        if (var3 == 2)
        {
          v23 = MEMORY[0x277CCABB0];
LABEL_49:
          v15 = [v23 numberWithUnsignedLong:0];
          goto LABEL_9;
        }
      }

      v20 = PLLogSMCMetrics();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

LABEL_46:
      v31 = info->var3;
      *buf = 67109378;
      v33 = v31;
      v34 = 2112;
      v35 = nameCopy;
      v28 = "Unsupported key size %d for SMC key %@.";
      v29 = v20;
      v30 = 18;
      goto LABEL_39;
    }

    v24 = info->var3;
    if (v24 > 3)
    {
      if (v24 == 4)
      {
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(0)];
        goto LABEL_9;
      }

      if (v24 == 8)
      {
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:bswap64(0)];
        goto LABEL_9;
      }
    }

    else
    {
      if (v24 == 1)
      {
        v25 = MEMORY[0x277CCABB0];
        v26 = 0;
        goto LABEL_43;
      }

      if (v24 == 2)
      {
        v25 = MEMORY[0x277CCABB0];
        v26 = bswap32(0) >> 16;
LABEL_43:
        v15 = [v25 numberWithUnsignedShort:v26];
        goto LABEL_9;
      }
    }

    v20 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

  [(PLSMCMetricsAgent *)self smcConnection];
  v17 = SMCReadKey();
  if (v17)
  {
    v18 = v17;
    v11 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    *buf = 67109120;
    v33 = v18;
    v19 = "SMCReadKey error: %d";
    goto LABEL_26;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInt:0];
LABEL_9:
  v12 = v15;
LABEL_10:

  return v12;
}

- (id)handleNonNumericKeys:(unsigned int)keys keyInfo:(id *)info
{
  v17 = *MEMORY[0x277D85DE8];
  if (!strcmp(&info->var2, "ioft"))
  {
    *buf = 0;
    [(PLSMCMetricsAgent *)self smcConnection];
    v7 = SMCReadKey();
    if (v7)
    {
      v8 = v7;
      v9 = PLLogSMCMetrics();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

LABEL_12:
        v6 = 0;
        goto LABEL_13;
      }

      v15[0] = 67109120;
      v15[1] = v8;
      v10 = v15;
LABEL_19:
      _os_log_error_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_ERROR, "SMCReadKey error: %d", v10, 8u);
      goto LABEL_11;
    }

    v14 = *buf * 0.0000152587891;
    *&v14 = v14;
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  }

  else
  {
    if (strcmp(&info->var2, "flag"))
    {
      if (!strcmp(&info->var2, "hex_"))
      {
        *buf = 0;
        [(PLSMCMetricsAgent *)self smcConnection];
        if (!SMCReadKey())
        {
          v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*buf];
          goto LABEL_13;
        }
      }

      goto LABEL_12;
    }

    v15[0] = 0;
    [(PLSMCMetricsAgent *)self smcConnection];
    v11 = SMCReadKey();
    if (v11)
    {
      v12 = v11;
      v9 = PLLogSMCMetrics();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buf = 67109120;
      *&buf[4] = v12;
      v10 = buf;
      goto LABEL_19;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15[0]];
  }

LABEL_13:

  return v6;
}

- (id)readSMCKey:(id)key
{
  v20 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = keyCopy;
  if (!keyCopy)
  {
    v12 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      v11 = 0;
      goto LABEL_14;
    }

    *buf = 0;
    v13 = "Invalid key name";
    v14 = v12;
    v15 = 2;
LABEL_18:
    _os_log_error_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    goto LABEL_10;
  }

  [keyCopy UTF8String];
  v6 = SMCMakeUInt32Key();
  if (!v6)
  {
    v12 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 67109120;
    *&buf[4] = 0;
    v13 = "SMCMakeUInt32Key error: %d";
    v14 = v12;
    v15 = 8;
    goto LABEL_18;
  }

  v7 = v6;
  memset(buf, 0, sizeof(buf));
  v19 = 0;
  [(PLSMCMetricsAgent *)self smcConnection];
  v8 = SMCGetKeyInfo();
  if (v8)
  {
    v9 = v8;
    v10 = PLLogSMCMetrics();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v17 = 67109120;
      *&v17[4] = v9;
      _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, "SMCGetKeyInfo error: %d", v17, 8u);
    }

    v11 = 0;
  }

  else
  {
    *v17 = *buf;
    *&v17[16] = v19;
    v11 = [(PLSMCMetricsAgent *)self handleNumericKeys:v7 keyInfo:v17 keyName:v5 ret:0];
    v10 = PLLogSMCMetrics();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *v17 = 138412546;
      *&v17[4] = v5;
      *&v17[12] = 2112;
      *&v17[14] = v11;
      _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "Read keys %@: %@", v17, 0x16u);
    }
  }

LABEL_14:

  return v11;
}

- (BOOL)writeSMCKey:(id)key withValue:(unint64_t)value
{
  v29 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v7 = keyCopy;
  if (!keyCopy)
  {
    v13 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      goto LABEL_10;
    }

    *v26 = 0;
    v14 = "Not a valid key name";
    v15 = v13;
    v16 = 2;
LABEL_16:
    _os_log_error_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_ERROR, v14, v26, v16);
    goto LABEL_9;
  }

  [keyCopy UTF8String];
  v8 = SMCMakeUInt32Key();
  if (!v8)
  {
    v13 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *v26 = 67109120;
    *&v26[4] = 0;
    v14 = "SMCMakeUInt32Key for %u key returned 0";
    v15 = v13;
    v16 = 8;
    goto LABEL_16;
  }

  v9 = v8;
  *v26 = 0;
  v27 = 0;
  v28 = 0;
  [(PLSMCMetricsAgent *)self smcConnection];
  v10 = SMCGetKeyInfo();
  if (v10)
  {
    v11 = v10;
    v12 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

LABEL_10:
      v17 = 0;
      goto LABEL_11;
    }

    *buf = 67109376;
    *v24 = v9;
    *&v24[4] = 1024;
    *&v24[6] = v11;
    v19 = "SMCGetKeyInfo for %u key failed with %d";
LABEL_14:
    _os_log_error_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_ERROR, v19, buf, 0xEu);
    goto LABEL_5;
  }

  [(PLSMCMetricsAgent *)self smcConnection];
  v20 = SMCWriteKeyAsNumeric();
  if (v20)
  {
    v21 = v20;
    v12 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 67109376;
    *v24 = v9;
    *&v24[4] = 1024;
    *&v24[6] = v21;
    v19 = "Writing to %u numeric key failed with %d";
    goto LABEL_14;
  }

  v22 = PLLogSMCMetrics();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *v24 = v7;
    *&v24[8] = 2048;
    valueCopy = value;
    _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@: %llu", buf, 0x16u);
  }

  v17 = 1;
LABEL_11:

  return v17;
}

- (id)getAllKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__PLSMCMetricsAgent_getAllKeys__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F3D58 != -1)
  {
    dispatch_once(&qword_2811F3D58, block);
  }

  return qword_2811F3D50;
}

void __31__PLSMCMetricsAgent_getAllKeys__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = qword_2811F3D50;
  qword_2811F3D50 = v2;

  v4 = 0;
  do
  {
    v5 = objc_autoreleasePoolPush();
    v10 = 0;
    [*(a1 + 32) smcConnection];
    v6 = SMCGetKeyFromIndex();
    if (!v6)
    {
      SMCUInt32ToString();
      v7 = qword_2811F3D50;
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
      [v7 addObject:v8];
    }

    objc_autoreleasePoolPop(v5);
    ++v4;
  }

  while (v6 != -4);
}

- (id)getAllowedKeys:(id)keys
{
  v23 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = getAllowedKeys__keyList;
  getAllowedKeys__keyList = v4;

  getAllowblocklist = [MEMORY[0x277D3F258] getAllowblocklist];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [getAllowblocklist objectForKeyedSubscript:{keysCopy, 0}];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        if (v12)
        {
          if ([keysCopy isEqualToString:@"PLSMCAgent_EventBackward_PowerAccumulatedKeys"])
          {
            v14 = [v12 substringToIndex:4];
            [getAllowedKeys__keyList addObject:v14];
          }

          else
          {
            [getAllowedKeys__keyList addObject:v12];
          }
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = getAllowedKeys__keyList;
  v16 = getAllowedKeys__keyList;

  return v15;
}

- (id)getAllowedInstantKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PLSMCMetricsAgent_getAllowedInstantKeys__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F3D68 != -1)
  {
    dispatch_once(&qword_2811F3D68, block);
  }

  return qword_2811F3D60;
}

uint64_t __42__PLSMCMetricsAgent_getAllowedInstantKeys__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) getAllowedKeys:@"PLSMCAgent_EventPoint_ThermalInstantKeys"];
  qword_2811F3D60 = v1;

  return MEMORY[0x2821F96F8](v1);
}

- (id)getAllowedAccumulatedKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PLSMCMetricsAgent_getAllowedAccumulatedKeys__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F3D78 != -1)
  {
    dispatch_once(&qword_2811F3D78, block);
  }

  return qword_2811F3D70;
}

void *__46__PLSMCMetricsAgent_getAllowedAccumulatedKeys__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) accumSupported];
  if (result)
  {
    result = _os_feature_enabled_impl();
    if (result)
    {
      v3 = [*(a1 + 32) getAllowedKeys:@"PLSMCAgent_EventBackward_PowerAccumulatedKeys"];
      qword_2811F3D70 = v3;

      return MEMORY[0x2821F96F8](v3);
    }
  }

  return result;
}

void __30__PLSMCMetricsAgent_getTVKeys__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = qword_2811F3D80;
  qword_2811F3D80 = v2;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(*(a1 + 32) + 136);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 hasPrefix:{@"TV", v10}])
        {
          [qword_2811F3D80 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)getAllowedPowerDeliveryKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PLSMCMetricsAgent_getAllowedPowerDeliveryKeys__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F3D98 != -1)
  {
    dispatch_once(&qword_2811F3D98, block);
  }

  return qword_2811F3D90;
}

uint64_t __48__PLSMCMetricsAgent_getAllowedPowerDeliveryKeys__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) getAllowedKeys:@"PLSMCAgent_EventBackward_PowerDeliveryCLVRKeys"];
  qword_2811F3D90 = v1;

  return MEMORY[0x2821F96F8](v1);
}

- (id)getOSAccumListFrom:(id)from
{
  fromCopy = from;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__PLSMCMetricsAgent_getOSAccumListFrom___block_invoke;
  v10[3] = &unk_278259658;
  v11 = fromCopy;
  selfCopy = self;
  v5 = qword_2811F3DA8;
  v6 = fromCopy;
  if (v5 != -1)
  {
    dispatch_once(&qword_2811F3DA8, v10);
  }

  v7 = qword_2811F3DA0;
  v8 = qword_2811F3DA0;

  return v7;
}

uint64_t __40__PLSMCMetricsAgent_getOSAccumListFrom___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = qword_2811F3DA0;
  qword_2811F3DA0 = v2;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__PLSMCMetricsAgent_getOSAccumListFrom___block_invoke_2;
  v6[3] = &unk_278259C68;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  return [v4 enumerateObjectsUsingBlock:v6];
}

void __40__PLSMCMetricsAgent_getOSAccumListFrom___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) isKeyOSAccumSupported:v4])
  {
    [qword_2811F3DA0 addObject:v4];
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)isThermalPressureFanNoiseAboveThreshold
{
  v3 = [(PLSMCMetricsAgent *)self readSMCKey:@"mTPL"];
  v4 = [(PLSMCMetricsAgent *)self readSMCKey:@"fdBA"];
  v5 = v3 && [v3 integerValue] > 0 || v4 && objc_msgSend(v4, "integerValue") > 22;

  return v5;
}

- (BOOL)isThermalMitigationAboveThreshold
{
  v2 = [(PLSMCMetricsAgent *)self readSMCKey:@"mxTM"];
  v3 = v2;
  v4 = v2 && [v2 integerValue] > 7;

  return v4;
}

+ (BOOL)shouldModelDisplayPowerFromSMC
{
  if (qword_2811F3DB0 != -1)
  {
    dispatch_once(&qword_2811F3DB0, &__block_literal_global_215);
  }

  return byte_2811F3D31;
}

void *__51__PLSMCMetricsAgent_shouldModelDisplayPowerFromSMC__block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLDisplayClassIsOneOf:{1002057, 0}];
  byte_2811F3D31 = result;
  return result;
}

+ (BOOL)supportsSMC
{
  if ([MEMORY[0x277D3F1B8] isVirtualDevice])
  {
    v2 = PLLogSMCMetrics();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_ERROR, "SMC is not supported on virtual devices", v5, 2u);
    }

    v3 = 0;
  }

  else
  {
    if (qword_2811F3DB8 != -1)
    {
      dispatch_once(&qword_2811F3DB8, &__block_literal_global_219);
    }

    v3 = byte_2811F3D32;
  }

  return v3 & 1;
}

void *__32__PLSMCMetricsAgent_supportsSMC__block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
  byte_2811F3D32 = result > 1001014;
  return result;
}

+ (id)parsePMUEvents:(unint64_t)events
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([&unk_282C13F98 count])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [&unk_282C13F98 objectAtIndexedSubscript:v6];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:(events >> v5)];
      [dictionary setObject:v8 forKeyedSubscript:v7];

      ++v6;
      v5 += 8;
    }

    while (v6 < [&unk_282C13F98 count]);
  }

  return dictionary;
}

+ (void)reportPMUEventsToCA:(id)a
{
  v12 = *MEMORY[0x277D85DE8];
  aCopy = a;
  if (![aCopy unsignedLongLongValue])
  {
    if (byte_2811F3D33)
    {
      goto LABEL_10;
    }

    if (qword_2811F3DC0 != -1)
    {
      dispatch_once(&qword_2811F3DC0, &__block_literal_global_242);
    }
  }

  unsignedLongLongValue = [aCopy unsignedLongLongValue];
  v5 = [PLSMCMetricsAgent parsePMUEvents:unsignedLongLongValue];
  if (v5)
  {
    v6 = PLLogSMCMetrics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v9 = unsignedLongLongValue;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_INFO, "PMU events: %llu -> %@", buf, 0x16u);
    }

    v7 = v5;
    AnalyticsSendEventLazy();
  }

LABEL_10:
}

void __41__PLSMCMetricsAgent_reportPMUEventsToCA___block_invoke(uint64_t a1)
{
  v1 = PLLogCommon();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_21A4C6000, v1, OS_LOG_TYPE_INFO, "PMU events: pushed empty event", v2, 2u);
  }

  byte_2811F3D33 = 1;
}

@end