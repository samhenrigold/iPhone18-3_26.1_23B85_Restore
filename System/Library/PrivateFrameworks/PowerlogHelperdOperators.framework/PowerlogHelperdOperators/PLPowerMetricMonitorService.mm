@interface PLPowerMetricMonitorService
+ (void)load;
- (BOOL)_pidIsValid:(int)valid;
- (BOOL)_queryCurrentAudioState;
- (BOOL)_supportsGPUCoalitions;
- (BOOL)_supportsSMCDisplayPower;
- (BOOL)isMonitoringMetrics;
- (BOOL)isPluggedIn;
- (PLPowerMetricMonitorService)init;
- (double)_computeCPUCostWithCPUTicks:(id)ticks;
- (double)_computeDisplayCostWithAvgRed:(int)red avgGreen:(int)green avgBlue:(int)blue;
- (double)_computeGPUCostWithGPUSec:(id)sec;
- (double)_computeLocationCostWithWifiCost:(int)cost gpsCost:(int)gpsCost cellCost:(int)cellCost skyhookCost:(int)skyhookCost;
- (double)_computeNetworkingCostWithWifiIn:(int)in wifiOut:(int)out cellIn:(int)cellIn cellOut:(int)cellOut;
- (double)_getGPUTotalTime;
- (double)_parseAverageFPS:(id)s;
- (double)batteryCapacity;
- (double)metricNormalizer;
- (id)_convertToWattsFromMilliwatts:(id)milliwatts;
- (id)_getCurrentPlayingSessions;
- (id)collectMetricsWithTimeout:(double)timeout;
- (timeval)lastRawSleepTime;
- (unint64_t)queryLastSleepTimeMCT;
- (unint64_t)queryLastWakeTimeMCT;
- (void)_accountingMetrics;
- (void)_agentDidUpdateWithEntryKey:(id)key;
- (void)_calculateAccumSystemLoad:(id)load;
- (void)_calculateAndStoreSleepDuration;
- (void)_cancelBrightnessTimer;
- (void)_cancelMetricCollectionTimeoutTimer;
- (void)_cancelMetricCollectionTimer;
- (void)_cleanUp;
- (void)_collectMetricsWithTimeout:(double)timeout completionHandler:(id)handler;
- (void)_computeEnergyScoreForProcess;
- (void)_getCurrentPlayingSessions;
- (void)_getGPUTotalTime;
- (void)_handleAudioServerConnectionDied:(id)died;
- (void)_handleDisplayLayoutUpdate:(id)update;
- (void)_handlePowerNotification:(unsigned int)notification argument:(void *)argument;
- (void)_handleSessionPlayingDidChange:(id)change;
- (void)_metricCollectionTimedOut;
- (void)_parseAMCSample:(id)sample;
- (void)_parseApplicationMetricsFromEntry:(id)entry;
- (void)_parseDisplayAPLMetricsFromEntry:(id)entry cacheMetrics:(BOOL)metrics;
- (void)_parseDisplayAZLMetricsFromEntry:(id)entry;
- (void)_parseDisplayBacklightPowerMetricsFromEntry:(id)entry;
- (void)_parseEnergyModelOrPMPMetricsFromSample:(id)sample withSampleDuration:(double)duration sourceChannel:(int64_t)channel;
- (void)_parseGasGaugeMetricsFromEntry:(id)entry;
- (void)_parseLocationMetricsFromEntry:(id)entry;
- (void)_parseProcessNetworkMetricsFromEntry:(id)entry;
- (void)_parseSMCMetricsFromEntry:(id)entry;
- (void)_parseWifiPowerMetricsFromEntry:(id)entry;
- (void)_postAgentNotificationWithProcess:(id)process;
- (void)_queryCumulativeNetworkBytes;
- (void)_queryCurrentAudioState;
- (void)_registerNotificationWithAgent:(Class)agent type:(id)type tableName:(id)name isProcessSpecific:(BOOL)specific minRequestInterval:(double)interval block:(id)block;
- (void)_sampleCoalitions;
- (void)_sampleGPUTime;
- (void)_setLastActiveStartTimeAndLastSuspendTimeWithPid:(int)pid appState:(int)state currentTime:(id)time;
- (void)_setUpAgents;
- (void)_setUpIOReporting;
- (void)_setUpSleepWakeMonitoring;
- (void)_setupAudioSessionMonitoring;
- (void)_setupBatteryMetrics;
- (void)_setupMetrics;
- (void)_startBrightnessTimer;
- (void)_startMetricCollectionTimeoutTimerWithTimeout:(double)timeout block:(id)block;
- (void)_startMetricCollectionTimerWithInterval:(double)interval block:(id)block;
- (void)_tearDownAudioSessionMonitoring;
- (void)_tearDownSleepWakeMonitoring;
- (void)_updateAudioActiveMetrics;
- (void)_updateBatteryMetrics;
- (void)_updateDisplayMetrics;
- (void)_updateIOReportStats;
- (void)_updateMetricsWithThermalState;
- (void)addBrightnessSample;
- (void)addMonitoredProcessWithPID:(int)d error:(id *)error;
- (void)addMonitoredProcessesWithPIDs:(id)ds error:(id *)error;
- (void)allClientsDidDisconnect;
- (void)disableAccounting;
- (void)enableAccounting;
- (void)initOperatorDependancies;
- (void)invalidateScreenStateUpdates;
- (void)removeMonitoredProcessWithPID:(int)d;
- (void)setMetricCollectionTimerUpdateInterval:(double)interval;
- (void)setUpForMonitoring;
- (void)setUpScreenStateUpdates;
- (void)startMonitoring;
@end

@implementation PLPowerMetricMonitorService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLPowerMetricMonitorService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLPowerMetricMonitorService)init
{
  if (+[PLUtilities isPowerlogHelperd])
  {
    selfCopy = 0;
  }

  else
  {
    v37.receiver = self;
    v37.super_class = PLPowerMetricMonitorService;
    v4 = [(PLOperator *)&v37 init];
    v5 = v4;
    if (v4)
    {
      v4->_isMonitoring = 0;
      v4->_isCollectingMetrics = 0;
      v4->_isReadyToMonitor = 0;
      v4->_startedSetUp = 0;
      mEMORY[0x277D3A100] = [MEMORY[0x277D3A100] sharedInstance];
      metricMonitorService = v5->_metricMonitorService;
      v5->_metricMonitorService = mEMORY[0x277D3A100];

      [(PPSMetricMonitorService *)v5->_metricMonitorService setDelegate:v5];
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      trackedProcesses = v5->_trackedProcesses;
      v5->_trackedProcesses = dictionary;

      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      screenState = v5->_screenState;
      v5->_screenState = dictionary2;

      v12 = objc_alloc_init(MEMORY[0x277D3A0E8]);
      metrics = v5->_metrics;
      v5->_metrics = v12;

      v14 = objc_alloc_init(MEMORY[0x277D3A0E8]);
      cachedMetrics = v5->_cachedMetrics;
      v5->_cachedMetrics = v14;

      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      objc_storeStrong(&v5->_currQueryTime, monotonicDate);
      lastQueryTime = v5->_lastQueryTime;
      v5->_lastQueryTime = monotonicDate;
      v18 = monotonicDate;

      v5->_currQueryCount = 0;
      v5->_lastQueryCount = 0;
      v19 = [MEMORY[0x277CBEB58] set];
      systemMetricEntryKeys = v5->_systemMetricEntryKeys;
      v5->_systemMetricEntryKeys = v19;

      v21 = [MEMORY[0x277CBEB58] set];
      processSpecificMetricEntryKeys = v5->_processSpecificMetricEntryKeys;
      v5->_processSpecificMetricEntryKeys = v21;

      v23 = [MEMORY[0x277CBEB58] set];
      entryKeysToCollect = v5->_entryKeysToCollect;
      v5->_entryKeysToCollect = v23;

      v25 = [MEMORY[0x277CBEB58] set];
      entryKeysRequested = v5->_entryKeysRequested;
      v5->_entryKeysRequested = v25;

      v27 = [MEMORY[0x277CBEB58] set];
      entryKeysCollected = v5->_entryKeysCollected;
      v5->_entryKeysCollected = v27;

      dictionary3 = [MEMORY[0x277CBEB38] dictionary];
      entryKeyToEntryInfo = v5->_entryKeyToEntryInfo;
      v5->_entryKeyToEntryInfo = dictionary3;

      v31 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v32 = dispatch_queue_create("com.apple.PerfPowerMetricMonitor.monitorQueue", v31);
      monitorQueue = v5->_monitorQueue;
      v5->_monitorQueue = v32;

      v34 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"DisplayCost", @"CPUCost", @"NetworkCost", @"LocationCost", @"CurrentApplicationState", @"GPUCost", @"CurrentThermalState", @"InducedThermalState", 0}];
      energyScoringEntities = v5->_energyScoringEntities;
      v5->_energyScoringEntities = v34;

      v5->_accumSystemLoadCount = 0.0;
      v5->_accumSystemLoad = 0.0;
      v5->_networkCumulativeCount = 0;
      v5->_gpuTotalTime = 0.0;
      v5->_prevGpuTotalTime = 0.0;
      v5->_accountingEnabled = 0;
      v5->_totalCell = 0.0;
      v5->_totalWiFi = 0.0;
      v5->_prevCumulativeWiFiOutBytes = 0;
      v5->_prevCumulativeWiFiInBytes = 0;
      v5->_prevCumulativeCellularOutBytes = 0;
      v5->_prevCumulativeCellularInBytes = 0;
      v5->_receivedNetworkUpdate = 0;
      v5->_rootDomainConnect = 0;
      v5->_pmNotifier = 0;
      v5->_systemPowerPortRef = 0;
      v5->_lastSleepTime = 0;
      v5->_lastSleepDuration = 0;
      v5->_lastWakeTime = 0;
      v5->_currentPowerState = 0;
    }

    self = v5;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)initOperatorDependancies
{
  metricMonitorService = [(PLPowerMetricMonitorService *)self metricMonitorService];
  [metricMonitorService startXPCListener];
}

- (void)_cleanUp
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  [(PLPowerMetricMonitorService *)self setIsMonitoring:0];
  [(PLPowerMetricMonitorService *)self setIsReadyToMonitor:0];
  [(PLPowerMetricMonitorService *)self setStartedSetUp:0];
  v4 = [MEMORY[0x277CBEB58] set];
  [(PLPowerMetricMonitorService *)self setEntryKeysToCollect:v4];

  v5 = [MEMORY[0x277CBEB58] set];
  [(PLPowerMetricMonitorService *)self setEntryKeysRequested:v5];

  v6 = [MEMORY[0x277CBEB58] set];
  [(PLPowerMetricMonitorService *)self setEntryKeysCollected:v6];

  trackedProcesses = [(PLPowerMetricMonitorService *)self trackedProcesses];
  [trackedProcesses removeAllObjects];

  mainDisplayMonitor = [(PLPowerMetricMonitorService *)self mainDisplayMonitor];

  if (mainDisplayMonitor)
  {
    mainDisplayMonitor2 = [(PLPowerMetricMonitorService *)self mainDisplayMonitor];
    [mainDisplayMonitor2 invalidate];

    [(PLPowerMetricMonitorService *)self setMainDisplayMonitor:0];
  }

  screenState = [(PLPowerMetricMonitorService *)self screenState];
  [screenState removeAllObjects];

  [(PLPowerMetricMonitorService *)self _tearDownSleepWakeMonitoring];
  iokitPowerSource = self->_iokitPowerSource;
  self->_iokitPowerSource = 0;

  [(PLPowerMetricMonitorService *)self setLastSleepTime:0];
  [(PLPowerMetricMonitorService *)self setLastSleepDuration:0];
  [(PLPowerMetricMonitorService *)self setLastWakeTime:0];

  [(PLPowerMetricMonitorService *)self setCurrentPowerState:0];
}

- (BOOL)isMonitoringMetrics
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PLPowerMetricMonitorService_isMonitoringMetrics__block_invoke;
  v5[3] = &unk_279A5C3D0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(monitorQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void *__50__PLPowerMetricMonitorService_isMonitoringMetrics__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isMonitoring];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setUpForMonitoring
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__PLPowerMetricMonitorService_setUpForMonitoring__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setStartedSetUp:1];
  v2 = [*(a1 + 32) monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PLPowerMetricMonitorService_setUpForMonitoring__block_invoke_2;
  block[3] = &unk_279A5BDC0;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);
}

uint64_t __49__PLPowerMetricMonitorService_setUpForMonitoring__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setUpAgents];
  [*(a1 + 32) _setUpIOReporting];
  [*(a1 + 32) _setUpSleepWakeMonitoring];
  [*(a1 + 32) _setupBatteryMetrics];
  v2 = *(a1 + 32);

  return [v2 setIsReadyToMonitor:1];
}

- (void)setUpScreenStateUpdates
{
  configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD18] configurationForDefaultMainDisplayMonitor];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__PLPowerMetricMonitorService_setUpScreenStateUpdates__block_invoke;
  v6[3] = &unk_279A5C420;
  v6[4] = self;
  [configurationForDefaultMainDisplayMonitor setTransitionHandler:v6];
  v4 = [MEMORY[0x277D0AD10] monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
  mainDisplayMonitor = self->_mainDisplayMonitor;
  self->_mainDisplayMonitor = v4;
}

void __54__PLPowerMetricMonitorService_setUpScreenStateUpdates__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) monitorQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__PLPowerMetricMonitorService_setUpScreenStateUpdates__block_invoke_2;
  v7[3] = &unk_279A5C3F8;
  v7[4] = *(a1 + 32);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)invalidateScreenStateUpdates
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__PLPowerMetricMonitorService_invalidateScreenStateUpdates__block_invoke;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  dispatch_sync(monitorQueue, block);
}

void __59__PLPowerMetricMonitorService_invalidateScreenStateUpdates__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mainDisplayMonitor];

  if (v2)
  {
    v3 = [*(a1 + 32) mainDisplayMonitor];
    [v3 invalidate];

    [*(a1 + 32) setMainDisplayMonitor:0];
  }

  v4 = [*(a1 + 32) screenState];
  [v4 removeAllObjects];
}

- (void)_setupMetrics
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __44__PLPowerMetricMonitorService__setupMetrics__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) metrics];
  v7 = [v6 processMetrics];
  v8 = [v7 objectForKeyedSubscript:v24];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277D3A110]);
    [v9 setPid:{objc_msgSend(v5, "pid")}];
    v10 = [v5 name];
    [v9 setProcessName:v10];

    v11 = [v5 bundleId];
    [v9 setBundleID:v11];

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "coalitionID")}];
    [v9 setCoalitionID:v12];

    v13 = [*(a1 + 32) metrics];
    v14 = [v13 processMetrics];
    v15 = [v14 mutableCopy];

    [v15 setObject:v9 forKeyedSubscript:v24];
    v16 = [*(a1 + 32) metrics];
    [v16 setProcessMetrics:v15];

    v17 = MEMORY[0x277D3A108];
    v18 = [v5 applicationState];
    v19 = [v5 lastActiveStart];
    v20 = [v17 sampleWithValue:v18 timestamp:v19];
    v21 = [*(a1 + 32) metrics];
    v22 = [v21 processMetrics];
    v23 = [v22 objectForKeyedSubscript:v24];
    [v23 setApplicationState:v20];
  }
}

- (void)startMonitoring
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PLPowerMetricMonitorService_startMonitoring__block_invoke;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  dispatch_async(monitorQueue, block);
}

void __46__PLPowerMetricMonitorService_startMonitoring__block_invoke(uint64_t a1)
{
  v2 = PLLogPowerMetricMonitor(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v2, OS_LOG_TYPE_DEFAULT, "Starting to monitor", buf, 2u);
  }

  v3 = [*(a1 + 32) isMonitoring];
  if (v3)
  {
    v4 = PLLogPowerMetricMonitor(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46__PLPowerMetricMonitorService_startMonitoring__block_invoke_cold_1();
    }
  }

  else
  {
    v5 = PLLogPowerMetricMonitor([*(a1 + 32) setIsMonitoring:1]);
    if (os_signpost_enabled(v5))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_25EE51000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "startMonitoring", &unk_25F04A375, v8, 2u);
    }

    v6 = [*(a1 + 32) entryKeysToCollect];
    v7 = [*(a1 + 32) systemMetricEntryKeys];
    [v6 unionSet:v7];

    [*(a1 + 32) _setupMetrics];
  }
}

- (void)allClientsDidDisconnect
{
  v3 = PLLogPowerMetricMonitor(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_DEFAULT, "All clients disconnected", buf, 2u);
  }

  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PLPowerMetricMonitorService_allClientsDidDisconnect__block_invoke;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  dispatch_async(monitorQueue, block);
}

void __54__PLPowerMetricMonitorService_allClientsDidDisconnect__block_invoke(uint64_t a1)
{
  v2 = PLLogPowerMetricMonitor(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __54__PLPowerMetricMonitorService_allClientsDidDisconnect__block_invoke_cold_1();
  }

  [*(a1 + 32) _cancelMetricCollectionTimer];
  [*(a1 + 32) _cancelBrightnessTimer];
  [*(a1 + 32) _cancelMetricCollectionTimeoutTimer];
  [*(a1 + 32) _cleanUp];
  v3 = [MEMORY[0x277D3F1D8] sharedManager];
  [v3 signalInactive];
}

- (void)enableAccounting
{
  [(PLPowerMetricMonitorService *)self setUpScreenStateUpdates];

  [(PLPowerMetricMonitorService *)self setAccountingEnabled:1];
}

- (void)disableAccounting
{
  [(PLPowerMetricMonitorService *)self setAccountingEnabled:0];

  [(PLPowerMetricMonitorService *)self invalidateScreenStateUpdates];
}

- (void)_accountingMetrics
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__PLPowerMetricMonitorService__accountingMetrics__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 screenState];
  v8 = [v6 bundleId];

  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    v10 = MEMORY[0x277D3A108];
    v11 = MEMORY[0x277CCABB0];
    v32 = [*(a1 + 32) metrics];
    v31 = [v32 displayPower];
    [v31 doubleValue];
    v13 = v12;
    [v9 doubleValue];
    v15 = [v11 numberWithDouble:v13 * v14];
    v16 = [*(a1 + 32) metrics];
    v17 = [v16 displayPower];
    v18 = [v17 timestamp];
    v19 = [v10 sampleWithValue:v15 timestamp:v18];
    v20 = [*(a1 + 32) metrics];
    v21 = [v20 processMetrics];
    v22 = [v21 objectForKeyedSubscript:v33];
    [v22 setDisplayPower:v19];

    v23 = MEMORY[0x277D3A108];
    v24 = [*(a1 + 32) metrics];
    v25 = [v24 displayPower];
    v26 = [v25 timestamp];
    v27 = [v23 sampleWithValue:v9 timestamp:v26];
    v28 = [*(a1 + 32) metrics];
    v29 = [v28 processMetrics];
    v30 = [v29 objectForKeyedSubscript:v33];
    [v30 setWeightOnScreen:v27];
  }
}

- (id)collectMetricsWithTimeout:(double)timeout
{
  v5 = dispatch_semaphore_create(0);
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PLPowerMetricMonitorService_collectMetricsWithTimeout___block_invoke;
  block[3] = &unk_279A5C470;
  timeoutCopy = timeout;
  block[4] = self;
  v11 = v5;
  v7 = v5;
  dispatch_sync(monitorQueue, block);

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  metrics = [(PLPowerMetricMonitorService *)self metrics];

  return metrics;
}

void __57__PLPowerMetricMonitorService_collectMetricsWithTimeout___block_invoke(uint64_t a1)
{
  v2 = PLLogPowerMetricMonitor(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __57__PLPowerMetricMonitorService_collectMetricsWithTimeout___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) isMonitoring];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__PLPowerMetricMonitorService_collectMetricsWithTimeout___block_invoke_273;
    v7[3] = &unk_279A5C3F8;
    v7[4] = v4;
    v8 = *(a1 + 40);
    [v4 _collectMetricsWithTimeout:v7 completionHandler:v5];
  }

  else
  {
    v6 = PLLogPowerMetricMonitor(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __57__PLPowerMetricMonitorService_collectMetricsWithTimeout___block_invoke_cold_2();
    }

    dispatch_semaphore_signal(*(a1 + 40));
  }
}

intptr_t __57__PLPowerMetricMonitorService_collectMetricsWithTimeout___block_invoke_273(uint64_t a1)
{
  v2 = PLLogPowerMetricMonitor(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __57__PLPowerMetricMonitorService_collectMetricsWithTimeout___block_invoke_273_cold_1();
  }

  v3 = [*(a1 + 32) trackedProcesses];
  v4 = [v3 count];

  if (v4)
  {
    [*(a1 + 32) _computeEnergyScoreForProcess];
  }

  [*(a1 + 32) _updateDisplayMetrics];
  if ([*(a1 + 32) accountingEnabled])
  {
    [*(a1 + 32) _accountingMetrics];
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (void)addMonitoredProcessWithPID:(int)d error:(id *)error
{
  v7 = PLLogPowerMetricMonitor(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService addMonitoredProcessWithPID:error:];
  }

  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__PLPowerMetricMonitorService_addMonitoredProcessWithPID_error___block_invoke;
  block[3] = &unk_279A5C498;
  dCopy = d;
  block[4] = self;
  block[5] = error;
  dispatch_sync(monitorQueue, block);
}

void __64__PLPowerMetricMonitorService_addMonitoredProcessWithPID_error___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _pidIsValid:*(a1 + 48)];
  if (v2)
  {
    v3 = [*(a1 + 32) trackedProcesses];
    if (!v3 || (v4 = v3, [*(a1 + 32) trackedProcesses], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", *(a1 + 48)), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKeyedSubscript:", v6), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v4, !v7))
    {
      v8 = [[PLProcessMetadata alloc] initWithPid:*(a1 + 48)];
      v9 = [*(a1 + 32) trackedProcesses];
      v10 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
      [v9 setObject:v8 forKeyedSubscript:v10];

      v12 = PLLogPowerMetricMonitor(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __64__PLPowerMetricMonitorService_addMonitoredProcessWithPID_error___block_invoke_cold_2();
      }

      v13 = *(a1 + 32);
      v14 = [v13 trackedProcesses];
      v15 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
      v16 = [v14 objectForKeyedSubscript:v15];
      [v13 _postAgentNotificationWithProcess:v16];

      v17 = [*(a1 + 32) entryKeysToCollect];
      v18 = [*(a1 + 32) processSpecificMetricEntryKeys];
      [v17 unionSet:v18];

      goto LABEL_11;
    }
  }

  else
  {
    v19 = PLLogPowerMetricMonitor(v2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __64__PLPowerMetricMonitorService_addMonitoredProcessWithPID_error___block_invoke_cold_1();
    }

    if (*(a1 + 40))
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277D3A118];
      v22 = *MEMORY[0x277CCA450];
      v23[0] = @"Invalid PID";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      **(a1 + 40) = [v20 errorWithDomain:v21 code:4 userInfo:v8];
LABEL_11:
    }
  }
}

- (void)addMonitoredProcessesWithPIDs:(id)ds error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [dsCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(dsCopy);
        }

        intValue = [*(*(&v17 + 1) + 8 * v10) intValue];
        v16 = 0;
        [(PLPowerMetricMonitorService *)self addMonitoredProcessWithPID:intValue error:&v16];
        v12 = v16;
        v13 = v12;
        if (v12)
        {
          v14 = PLLogPowerMetricMonitor(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [(PLPowerMetricMonitorService *)v21 addMonitoredProcessesWithPIDs:v13 error:&v22, v14];
          }

          v15 = v13;
          *error = v13;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [dsCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }
}

- (void)removeMonitoredProcessWithPID:(int)d
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__PLPowerMetricMonitorService_removeMonitoredProcessWithPID___block_invoke;
  v6[3] = &unk_279A5C4C0;
  dCopy = d;
  v6[4] = self;
  dispatch_async(monitorQueue, v6);
}

void __61__PLPowerMetricMonitorService_removeMonitoredProcessWithPID___block_invoke(uint64_t a1)
{
  v2 = PLLogPowerMetricMonitor(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __61__PLPowerMetricMonitorService_removeMonitoredProcessWithPID___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) trackedProcesses];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v7 = [*(a1 + 32) trackedProcesses];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
    [v7 setObject:0 forKeyedSubscript:v8];
  }

  else
  {
    v7 = PLLogPowerMetricMonitor(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61__PLPowerMetricMonitorService_removeMonitoredProcessWithPID___block_invoke_cold_2();
    }
  }

  v9 = [*(a1 + 32) trackedProcesses];
  v10 = [v9 count];

  if (!v10)
  {
    v11 = [*(a1 + 32) entryKeysToCollect];
    v12 = [*(a1 + 32) processSpecificMetricEntryKeys];
    [v11 minusSet:v12];
  }
}

- (double)batteryCapacity
{
  if (batteryCapacity_onceToken != -1)
  {
    [PLPowerMetricMonitorService batteryCapacity];
  }

  return *&batteryCapacity_batteryCapacity;
}

void *__46__PLPowerMetricMonitorService_batteryCapacity__block_invoke()
{
  result = +[PLUtilities defaultBatteryEnergyCapacity];
  batteryCapacity_batteryCapacity = v1;
  return result;
}

- (double)metricNormalizer
{
  if (metricNormalizer_onceToken != -1)
  {
    [PLPowerMetricMonitorService metricNormalizer];
  }

  return *&metricNormalizer_val;
}

void *__47__PLPowerMetricMonitorService_metricNormalizer__block_invoke()
{
  result = [MEMORY[0x277D3F208] isDeviceClass:102030];
  if (result)
  {
    goto LABEL_2;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102031];
  if (result)
  {
    v1 = 3.080002;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102036];
  if (result)
  {
    goto LABEL_2;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102037];
  if (result)
  {
    v1 = 2.940002;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102040];
  if (result)
  {
    v1 = 2.600006;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102041];
  if (result)
  {
    v1 = 2.649994;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102045];
  v1 = 3.300003;
  if (result)
  {
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102046];
  if (result)
  {
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102049];
  if (result)
  {
    v1 = 2.729996;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102050];
  if (result)
  {
    goto LABEL_2;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102054];
  if (result)
  {
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102055];
  v1 = 3.349991;
  if (result)
  {
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102060];
  v2 = 0x400666601BC98A22;
  if (result)
  {
LABEL_21:
    v1 = *&v2;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102061];
  if (result)
  {
LABEL_2:
    v1 = 3.0;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102058];
  if (result)
  {
    v1 = 3.049988;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102059];
  if (result)
  {
    v1 = 3.599991;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102032];
  if (result)
  {
    v1 = 2.800003;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102035];
  v1 = 3.0;
  if (result)
  {
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102039];
  if (result)
  {
LABEL_31:
    v1 = 2.699997;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102043];
  if (result)
  {
    v1 = 2.599991;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102044];
  v1 = 2.649994;
  if ((result & 1) == 0)
  {
    result = [MEMORY[0x277D3F208] isDeviceClass:102047];
    v1 = 3.100006;
    if ((result & 1) == 0)
    {
      result = [MEMORY[0x277D3F208] isDeviceClass:102048];
      if ((result & 1) == 0)
      {
        result = [MEMORY[0x277D3F208] isDeviceClass:102052];
        v1 = 3.349991;
        if ((result & 1) == 0)
        {
          result = [MEMORY[0x277D3F208] isDeviceClass:102053];
          v1 = 3.599991;
          if ((result & 1) == 0)
          {
            result = [MEMORY[0x277D3F208] isDeviceClass:102034];
            if (result)
            {
              goto LABEL_31;
            }

            result = [MEMORY[0x277D3F208] isDeviceClass:102038];
            v1 = 2.699997;
            if ((result & 1) == 0)
            {
              result = [MEMORY[0x277D3F208] isDeviceClass:102033];
              v1 = 2.0;
              if ((result & 1) == 0)
              {
                result = [MEMORY[0x277D3F208] isDeviceClass:102042];
                if (result)
                {
                  v1 = 2.7;
                  goto LABEL_5;
                }

                result = [MEMORY[0x277D3F208] isDeviceClass:102056];
                v1 = 2.799988;
                if ((result & 1) == 0)
                {
                  result = [MEMORY[0x277D3F208] isDeviceClass:100050];
                  v1 = 3.2;
                  if ((result & 1) == 0)
                  {
                    result = [MEMORY[0x277D3F208] isDeviceClass:100051];
                    if ((result & 1) == 0)
                    {
                      result = [MEMORY[0x277D3F208] isDeviceClass:100062];
                      v1 = 3.199997;
                      if ((result & 1) == 0)
                      {
                        result = [MEMORY[0x277D3F208] isDeviceClass:100063];
                        if ((result & 1) == 0)
                        {
                          result = [MEMORY[0x277D3F208] isDeviceClass:100068];
                          if ((result & 1) == 0)
                          {
                            result = [MEMORY[0x277D3F208] isDeviceClass:100069];
                            if ((result & 1) == 0)
                            {
                              result = [MEMORY[0x277D3F208] isDeviceClass:100086];
                              v1 = 4.0;
                              if ((result & 1) == 0)
                              {
                                result = [MEMORY[0x277D3F208] isDeviceClass:100087];
                                if ((result & 1) == 0)
                                {
                                  result = [MEMORY[0x277D3F208] isDeviceClass:100042];
                                  v1 = 5.0;
                                  if ((result & 1) == 0)
                                  {
                                    result = [MEMORY[0x277D3F208] isDeviceClass:100043];
                                    if ((result & 1) == 0)
                                    {
                                      result = [MEMORY[0x277D3F208] isDeviceClass:100052];
                                      if ((result & 1) == 0)
                                      {
                                        result = [MEMORY[0x277D3F208] isDeviceClass:100053];
                                        if ((result & 1) == 0)
                                        {
                                          result = [MEMORY[0x277D3F208] isDeviceClass:100066];
                                          v1 = 6.249985;
                                          if ((result & 1) == 0)
                                          {
                                            result = [MEMORY[0x277D3F208] isDeviceClass:100067];
                                            if ((result & 1) == 0)
                                            {
                                              result = [MEMORY[0x277D3F208] isDeviceClass:100074];
                                              v2 = 0x401266640A6B93CDLL;
                                              if (result)
                                              {
                                                goto LABEL_21;
                                              }

                                              result = [MEMORY[0x277D3F208] isDeviceClass:100075];
                                              if (result)
                                              {
                                                v1 = 5.299988;
                                                goto LABEL_5;
                                              }

                                              result = [MEMORY[0x277D3F208] isDeviceClass:100076];
                                              if (result)
                                              {
LABEL_63:
                                                v1 = 5.5;
                                                goto LABEL_5;
                                              }

                                              result = [MEMORY[0x277D3F208] isDeviceClass:100077];
                                              if (result)
                                              {
                                                v1 = 5.699997;
                                                goto LABEL_5;
                                              }

                                              result = [MEMORY[0x277D3F208] isDeviceClass:100088];
                                              v1 = 5.399994;
                                              if ((result & 1) == 0)
                                              {
                                                result = [MEMORY[0x277D3F208] isDeviceClass:100089];
                                                if ((result & 1) == 0)
                                                {
                                                  result = [MEMORY[0x277D3F208] isDeviceClass:100090];
                                                  v1 = 5.899994;
                                                  if ((result & 1) == 0)
                                                  {
                                                    result = [MEMORY[0x277D3F208] isDeviceClass:100091];
                                                    if ((result & 1) == 0)
                                                    {
                                                      result = [MEMORY[0x277D3F208] isDeviceClass:100040];
                                                      v1 = 3.4;
                                                      if ((result & 1) == 0)
                                                      {
                                                        result = [MEMORY[0x277D3F208] isDeviceClass:100041];
                                                        if ((result & 1) == 0)
                                                        {
                                                          result = [MEMORY[0x277D3F208] isDeviceClass:100064];
                                                          v1 = 3.448929;
                                                          if ((result & 1) == 0)
                                                          {
                                                            result = [MEMORY[0x277D3F208] isDeviceClass:100065];
                                                            if ((result & 1) == 0)
                                                            {
                                                              result = [MEMORY[0x277D3F208] isDeviceClass:100084];
                                                              v1 = 3.449997;
                                                              if ((result & 1) == 0)
                                                              {
                                                                result = [MEMORY[0x277D3F208] isDeviceClass:100085];
                                                                if ((result & 1) == 0)
                                                                {
                                                                  result = [MEMORY[0x277D3F208] isDeviceClass:100046];
                                                                  v1 = 4.2;
                                                                  if ((result & 1) == 0)
                                                                  {
                                                                    result = [MEMORY[0x277D3F208] isDeviceClass:100047];
                                                                    if ((result & 1) == 0)
                                                                    {
                                                                      result = [MEMORY[0x277D3F208] isDeviceClass:100048];
                                                                      if ((result & 1) == 0)
                                                                      {
                                                                        result = [MEMORY[0x277D3F208] isDeviceClass:100049];
                                                                        if ((result & 1) == 0)
                                                                        {
                                                                          result = [MEMORY[0x277D3F208] isDeviceClass:100054];
                                                                          v1 = 4.199997;
                                                                          if ((result & 1) == 0)
                                                                          {
                                                                            result = [MEMORY[0x277D3F208] isDeviceClass:100056];
                                                                            if ((result & 1) == 0)
                                                                            {
                                                                              result = [MEMORY[0x277D3F208] isDeviceClass:100057];
                                                                              if ((result & 1) == 0)
                                                                              {
                                                                                result = [MEMORY[0x277D3F208] isDeviceClass:100058];
                                                                                if (result)
                                                                                {
                                                                                  v1 = 4.6;
                                                                                  goto LABEL_5;
                                                                                }

                                                                                result = [MEMORY[0x277D3F208] isDeviceClass:100060];
                                                                                if (result)
                                                                                {
                                                                                  goto LABEL_21;
                                                                                }

                                                                                result = [MEMORY[0x277D3F208] isDeviceClass:100061];
                                                                                v1 = 4.599991;
                                                                                if (result)
                                                                                {
                                                                                  goto LABEL_5;
                                                                                }

                                                                                result = [MEMORY[0x277D3F208] isDeviceClass:100070];
                                                                                if (result)
                                                                                {
                                                                                  goto LABEL_63;
                                                                                }

                                                                                result = [MEMORY[0x277D3F208] isDeviceClass:100071];
                                                                                v1 = 5.5;
                                                                                if ((result & 1) == 0)
                                                                                {
                                                                                  result = [MEMORY[0x277D3F208] isDeviceClass:100072];
                                                                                  v1 = 5.599991;
                                                                                  if ((result & 1) == 0)
                                                                                  {
                                                                                    result = [MEMORY[0x277D3F208] isDeviceClass:100073];
                                                                                    if ((result & 1) == 0)
                                                                                    {
                                                                                      result = [MEMORY[0x277D3F208] isDeviceClass:100080];
                                                                                      v1 = 8.599991;
                                                                                      if ((result & 1) == 0)
                                                                                      {
                                                                                        result = [MEMORY[0x277D3F208] isDeviceClass:100081];
                                                                                        if ((result & 1) == 0)
                                                                                        {
                                                                                          result = [MEMORY[0x277D3F208] isDeviceClass:100078];
                                                                                          v1 = 7.799988;
                                                                                          if ((result & 1) == 0)
                                                                                          {
                                                                                            result = [MEMORY[0x277D3F208] isDeviceClass:100079];
                                                                                            if ((result & 1) == 0)
                                                                                            {
                                                                                              result = [MEMORY[0x277D3F208] isDeviceClass:100092];
                                                                                              v1 = 11.0;
                                                                                              if ((result & 1) == 0)
                                                                                              {
                                                                                                result = [MEMORY[0x277D3F208] isDeviceClass:100093];
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = [MEMORY[0x277D3F208] isDeviceClass:100094];
                                                                                                  v1 = 11.5;
                                                                                                  if ((result & 1) == 0)
                                                                                                  {
                                                                                                    result = [MEMORY[0x277D3F208] isDeviceClass:100095];
                                                                                                    if (result)
                                                                                                    {
                                                                                                      v1 = 11.5;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v1 = 3.0;
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_5:
  metricNormalizer_val = *&v1;
  return result;
}

- (void)addBrightnessSample
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  brightnessSystemClient = [(PLPowerMetricMonitorService *)self brightnessSystemClient];
  v17 = [brightnessSystemClient copyPropertyForKey:@"DisplayBrightness"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v17 objectForKeyedSubscript:@"NitsPhysical"];
    [v5 doubleValue];
    v7 = v6;
    [(PLPowerMetricMonitorService *)self brightness];
    [(PLPowerMetricMonitorService *)self setBrightness:v7 + v8];

    v9 = [v17 objectForKeyedSubscript:@"EDRHeadroom"];
    [v9 doubleValue];
    v11 = v10;
    [(PLPowerMetricMonitorService *)self edrHeadroom];
    [(PLPowerMetricMonitorService *)self setEdrHeadroom:v11 + v12];

    v13 = [v17 objectForKeyedSubscript:@"Brightness"];
    [v13 doubleValue];
    v15 = v14;
    [(PLPowerMetricMonitorService *)self brightnessSum];
    [(PLPowerMetricMonitorService *)self setBrightnessSum:v15 + v16];

    [(PLPowerMetricMonitorService *)self setSampleCount:[(PLPowerMetricMonitorService *)self sampleCount]+ 1];
  }
}

- (void)_setUpAgents
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  if (+[PLSMCAgent supportsBasicSMC])
  {
    v4 = objc_opt_class();
    v5 = *MEMORY[0x277D3F5E8];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __43__PLPowerMetricMonitorService__setUpAgents__block_invoke;
    v31[3] = &unk_279A5C4E8;
    v31[4] = self;
    v6 = v31;
  }

  else
  {
    v4 = objc_opt_class();
    v5 = *MEMORY[0x277D3F5E8];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __43__PLPowerMetricMonitorService__setUpAgents__block_invoke_2;
    v30[3] = &unk_279A5C4E8;
    v30[4] = self;
    v6 = v30;
  }

  [(PLPowerMetricMonitorService *)self _registerNotificationWithAgent:v4 type:v5 tableName:@"MetricMonitorInstantKeys" isProcessSpecific:0 minRequestInterval:v6 block:0.0];
  v7 = objc_alloc_init(MEMORY[0x277CFD390]);
  brightnessSystemClient = self->_brightnessSystemClient;
  self->_brightnessSystemClient = v7;

  v9 = objc_opt_class();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __43__PLPowerMetricMonitorService__setUpAgents__block_invoke_3;
  v29[3] = &unk_279A5C4E8;
  v29[4] = self;
  [(PLPowerMetricMonitorService *)self _registerNotificationWithAgent:v9 type:v5 tableName:@"MetricMonitorInstantKeys" isProcessSpecific:0 minRequestInterval:v29 block:1.0];
  [(PLPowerMetricMonitorService *)self _setupAudioSessionMonitoring];
  v10 = [MEMORY[0x277D3F208] hasCapability:0];
  v11 = MEMORY[0x277D3F5C8];
  if ((v10 & 1) != 0 || [MEMORY[0x277D3F208] hasCapability:8])
  {
    v12 = [MEMORY[0x277D3F208] hasCapability:8];
    v13 = objc_opt_class();
    v14 = *v11;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __43__PLPowerMetricMonitorService__setUpAgents__block_invoke_4;
    v28[3] = &unk_279A5C510;
    v28[4] = self;
    *&v28[5] = v12;
    [(PLPowerMetricMonitorService *)self _registerNotificationWithAgent:v13 type:v14 tableName:@"APLStats" isProcessSpecific:0 minRequestInterval:v28 block:v12];
    v15 = *MEMORY[0x277D3F5D0];
  }

  else
  {
    v16 = objc_opt_class();
    v15 = *MEMORY[0x277D3F5D0];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __43__PLPowerMetricMonitorService__setUpAgents__block_invoke_5;
    v27[3] = &unk_279A5C4E8;
    v27[4] = self;
    [(PLPowerMetricMonitorService *)self _registerNotificationWithAgent:v16 type:v15 tableName:@"DisplayBacklight" isProcessSpecific:0 minRequestInterval:v27 block:0.0];
  }

  v17 = objc_opt_class();
  v18 = *MEMORY[0x277D3F5D8];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __43__PLPowerMetricMonitorService__setUpAgents__block_invoke_6;
  v26[3] = &unk_279A5C4E8;
  v26[4] = self;
  [(PLPowerMetricMonitorService *)self _registerNotificationWithAgent:v17 type:v18 tableName:@"UsageDiff" isProcessSpecific:1 minRequestInterval:v26 block:5.0];
  v19 = objc_opt_class();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __43__PLPowerMetricMonitorService__setUpAgents__block_invoke_7;
  v25[3] = &unk_279A5C4E8;
  v25[4] = self;
  [(PLPowerMetricMonitorService *)self _registerNotificationWithAgent:v19 type:v5 tableName:@"ClientStatus" isProcessSpecific:1 minRequestInterval:v25 block:0.0];
  v20 = objc_opt_class();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __43__PLPowerMetricMonitorService__setUpAgents__block_invoke_8;
  v24[3] = &unk_279A5C4E8;
  v24[4] = self;
  [(PLPowerMetricMonitorService *)self _registerNotificationWithAgent:v20 type:v15 tableName:@"Application" isProcessSpecific:1 minRequestInterval:v24 block:0.0];
  if ([MEMORY[0x277D3F208] hasCapability:8])
  {
    v21 = objc_opt_class();
    v22 = *v11;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __43__PLPowerMetricMonitorService__setUpAgents__block_invoke_9;
    v23[3] = &unk_279A5C4E8;
    v23[4] = self;
    [(PLPowerMetricMonitorService *)self _registerNotificationWithAgent:v21 type:v22 tableName:@"AZLStats" isProcessSpecific:0 minRequestInterval:v23 block:1.0];
  }
}

void __43__PLPowerMetricMonitorService__setUpAgents__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setReceivedNetworkUpdate:1];
  [*(a1 + 32) _queryCumulativeNetworkBytes];
  [*(a1 + 32) _parseProcessNetworkMetricsFromEntry:v4];
}

- (void)_registerNotificationWithAgent:(Class)agent type:(id)type tableName:(id)name isProcessSpecific:(BOOL)specific minRequestInterval:(double)interval block:(id)block
{
  specificCopy = specific;
  blockCopy = block;
  nameCopy = name;
  typeCopy = type;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v18 = [(objc_class *)agent entryKeyForType:typeCopy andName:nameCopy];

  v20 = PLLogPowerMetricMonitor(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _registerNotificationWithAgent:type:tableName:isProcessSpecific:minRequestInterval:block:];
  }

  v21 = objc_alloc(MEMORY[0x277D3F1A8]);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __120__PLPowerMetricMonitorService__registerNotificationWithAgent_type_tableName_isProcessSpecific_minRequestInterval_block___block_invoke;
  v28[3] = &unk_279A5C560;
  v28[4] = self;
  v22 = blockCopy;
  v30 = v22;
  v23 = v18;
  v29 = v23;
  v24 = [v21 initWithOperator:self forEntryKey:v23 withBlock:v28];
  v25 = [[PLEntryInfo alloc] initWithNotificationComposition:v24 minRequestInterval:interval];
  entryKeyToEntryInfo = [(PLPowerMetricMonitorService *)self entryKeyToEntryInfo];
  [entryKeyToEntryInfo setObject:v25 forKeyedSubscript:v23];

  if (specificCopy)
  {
    [(PLPowerMetricMonitorService *)self processSpecificMetricEntryKeys];
  }

  else
  {
    [(PLPowerMetricMonitorService *)self systemMetricEntryKeys];
  }
  v27 = ;
  [v27 addObject:v23];
}

void __120__PLPowerMetricMonitorService__registerNotificationWithAgent_type_tableName_isProcessSpecific_minRequestInterval_block___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] monitorQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __120__PLPowerMetricMonitorService__registerNotificationWithAgent_type_tableName_isProcessSpecific_minRequestInterval_block___block_invoke_2;
  v6[3] = &unk_279A5C538;
  v6[4] = a1[4];
  v7 = v3;
  v9 = a1[6];
  v8 = a1[5];
  v5 = v3;
  dispatch_async(v4, v6);
}

void __120__PLPowerMetricMonitorService__registerNotificationWithAgent_type_tableName_isProcessSpecific_minRequestInterval_block___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) isCollectingMetrics];
  if (v2)
  {
    v4 = [*(a1 + 40) objectForKeyedSubscript:@"entry"];
    (*(*(a1 + 56) + 16))();
    [*(a1 + 32) _agentDidUpdateWithEntryKey:*(a1 + 48)];
  }

  else
  {
    v3 = PLLogPowerMetricMonitor(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __120__PLPowerMetricMonitorService__registerNotificationWithAgent_type_tableName_isProcessSpecific_minRequestInterval_block___block_invoke_2_cold_1();
    }
  }
}

- (void)_postAgentNotificationWithProcess:(id)process
{
  v24[1] = *MEMORY[0x277D85DE8];
  processCopy = process;
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CBEB58] set];
  bundleId = [processCopy bundleId];

  if (bundleId)
  {
    bundleId2 = [processCopy bundleId];
    [v4 addObject:bundleId2];

    bundleId3 = [processCopy bundleId];
    v10 = v6;
  }

  else
  {
    name = [processCopy name];

    if (!name)
    {
      goto LABEL_6;
    }

    bundleId3 = [processCopy name];
    v10 = v4;
  }

  [v10 addObject:bundleId3];

LABEL_6:
  v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(processCopy, "pid")}];
  [v5 addObject:v12];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v23 = @"entry";
  v24[0] = v4;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [defaultCenter postNotificationName:@"PLProcessNetworkAgent.addProcessesOfInterest" object:0 userInfo:v14];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v21 = @"entry";
  v22 = v5;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  [defaultCenter2 postNotificationName:@"PLProcessMonitorAgent.addProcessesOfInterest" object:0 userInfo:v16];

  if (v6)
  {
    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = @"entry";
    v20 = v6;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [defaultCenter3 postNotificationName:@"PLLocationAgent.addProcessesOfInterest" object:0 userInfo:v18];
  }
}

- (void)_setUpIOReporting
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v4 = [objc_alloc(MEMORY[0x277D3F1D0]) initWithGroup:@"Energy Model" andSubGroup:0];
  [(PLPowerMetricMonitorService *)self setEnergyModelStats:v4];

  energyModelStats = [(PLPowerMetricMonitorService *)self energyModelStats];

  if (!energyModelStats)
  {
    v7 = PLLogPowerMetricMonitor(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _setUpIOReporting];
    }
  }

  if ([MEMORY[0x277D3F208] hasDCP])
  {
    v8 = [objc_alloc(MEMORY[0x277D3F1D0]) initWithGroup:@"DCP" andSubGroup:@"swap"];
    [(PLPowerMetricMonitorService *)self setDcpSwapStats:v8];

    dcpSwapStats = [(PLPowerMetricMonitorService *)self dcpSwapStats];

    if (!dcpSwapStats)
    {
      v11 = PLLogPowerMetricMonitor(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PLPowerMetricMonitorService _setUpIOReporting];
      }
    }

    v12 = [objc_alloc(MEMORY[0x277D3F1D0]) initWithGroup:@"DCP" andSubGroup:@"scanout"];
    [(PLPowerMetricMonitorService *)self setDcpScanoutStats:v12];

    dcpScanoutStats = [(PLPowerMetricMonitorService *)self dcpScanoutStats];

    if (!dcpScanoutStats)
    {
      v15 = PLLogPowerMetricMonitor(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PLPowerMetricMonitorService _setUpIOReporting];
      }
    }

    v16 = [objc_alloc(MEMORY[0x277D3F1D0]) initWithGroup:@"DCP" andSubGroup:@"display stats"];
    [(PLPowerMetricMonitorService *)self setDcpDisplayStats:v16];

    dcpDisplayStats = [(PLPowerMetricMonitorService *)self dcpDisplayStats];

    if (!dcpDisplayStats)
    {
      v19 = PLLogPowerMetricMonitor(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [PLPowerMetricMonitorService _setUpIOReporting];
      }
    }
  }

  if (+[PLPowerMetricMonitorService deviceUsesPMPCounters])
  {
    v20 = [objc_alloc(MEMORY[0x277D3F1D0]) initWithGroup:@"PMP" andSubGroup:@"Energy Counters"];
    [(PLPowerMetricMonitorService *)self setPmpCountersStats:v20];

    pmpCountersStats = [(PLPowerMetricMonitorService *)self pmpCountersStats];

    if (!pmpCountersStats)
    {
      v23 = PLLogPowerMetricMonitor(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [PLPowerMetricMonitorService _setUpIOReporting];
      }
    }
  }

  v24 = [objc_alloc(MEMORY[0x277D3F1D0]) initWithGroup:@"AMC Stats" andSubGroup:@"Perf Counters"];
  [(PLPowerMetricMonitorService *)self setAmcStats:v24];

  amcStats = [(PLPowerMetricMonitorService *)self amcStats];

  if (!amcStats)
  {
    v27 = PLLogPowerMetricMonitor(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _setUpIOReporting];
    }
  }
}

- (void)_setupAudioSessionMonitoring
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __59__PLPowerMetricMonitorService__setupAudioSessionMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained monitorQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__PLPowerMetricMonitorService__setupAudioSessionMonitoring__block_invoke_2;
    v7[3] = &unk_279A5C3F8;
    v7[4] = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __59__PLPowerMetricMonitorService__setupAudioSessionMonitoring__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained monitorQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__PLPowerMetricMonitorService__setupAudioSessionMonitoring__block_invoke_4;
    v7[3] = &unk_279A5C3F8;
    v7[4] = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)_tearDownAudioSessionMonitoring
{
  v35 = *MEMORY[0x277D85DE8];
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  isMonitoringAudio = [(PLPowerMetricMonitorService *)self isMonitoringAudio];
  if (isMonitoringAudio)
  {
    v5 = PLLogPowerMetricMonitor(isMonitoringAudio);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, "Tearing down audio session monitoring", buf, 2u);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    audioNotificationObservers = [(PLPowerMetricMonitorService *)self audioNotificationObservers];
    v7 = [audioNotificationObservers countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      do
      {
        v10 = 0;
        do
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(audioNotificationObservers);
          }

          v11 = *(*(&v28 + 1) + 8 * v10);
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter removeObserver:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [audioNotificationObservers countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v8);
    }

    audioNotificationObservers2 = [(PLPowerMetricMonitorService *)self audioNotificationObservers];
    [audioNotificationObservers2 removeAllObjects];

    [(PLPowerMetricMonitorService *)self setIsMonitoringAudio:0];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    metrics = [(PLPowerMetricMonitorService *)self metrics];
    processMetrics = [metrics processMetrics];

    v16 = [processMetrics countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        v19 = 0;
        do
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(processMetrics);
          }

          v20 = *(*(&v24 + 1) + 8 * v19);
          metrics2 = [(PLPowerMetricMonitorService *)self metrics];
          processMetrics2 = [metrics2 processMetrics];
          v23 = [processMetrics2 objectForKeyedSubscript:v20];
          [v23 setAudioActive:0];

          ++v19;
        }

        while (v17 != v19);
        v17 = [processMetrics countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v17);
    }
  }
}

- (BOOL)_queryCurrentAudioState
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  mEMORY[0x277D26E60] = [MEMORY[0x277D26E60] sharedInstance];
  v5 = [mEMORY[0x277D26E60] attributeForKey:*MEMORY[0x277D26C78]];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    audioIsActive = [(PLPowerMetricMonitorService *)self audioIsActive];
    [(PLPowerMetricMonitorService *)self setCurrentPlayingSessions:v5];
    -[PLPowerMetricMonitorService setAudioIsActive:](self, "setAudioIsActive:", [v5 count] != 0);
    audioIsActive2 = [(PLPowerMetricMonitorService *)self audioIsActive];
    if (audioIsActive != audioIsActive2)
    {
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      [(PLPowerMetricMonitorService *)self setLastAudioStateChangeDate:monotonicDate];

      v10 = PLLogPowerMetricMonitor(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(PLPowerMetricMonitorService *)audioIsActive _queryCurrentAudioState];
      }

      audioIsActive2 = [(PLPowerMetricMonitorService *)self _updateAudioActiveMetrics];
    }

    v11 = PLLogPowerMetricMonitor(audioIsActive2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(PLPowerMetricMonitorService *)self _queryCurrentAudioState];
    }

    v12 = 1;
  }

  else
  {
    v11 = PLLogPowerMetricMonitor([(PLPowerMetricMonitorService *)self _updateAudioActiveMetrics]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _queryCurrentAudioState];
    }

    v12 = 0;
  }

  return v12;
}

- (id)_getCurrentPlayingSessions
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  mEMORY[0x277D26E60] = [MEMORY[0x277D26E60] sharedInstance];
  v5 = [mEMORY[0x277D26E60] attributeForKey:*MEMORY[0x277D26C78]];

  if (v5 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v7 = PLLogPowerMetricMonitor([(PLPowerMetricMonitorService *)self setCurrentPlayingSessions:v5]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(PLPowerMetricMonitorService *)v5 _getCurrentPlayingSessions];
    }

    v8 = v5;
  }

  else
  {
    v9 = PLLogPowerMetricMonitor(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _getCurrentPlayingSessions];
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (void)_updateAudioActiveMetrics
{
  v37 = *MEMORY[0x277D85DE8];
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  if ([(PLPowerMetricMonitorService *)self audioIsActive])
  {
    currentPlayingSessions = [(PLPowerMetricMonitorService *)self currentPlayingSessions];
    v5 = [currentPlayingSessions count];

    if (v5)
    {
      v6 = MEMORY[0x277CBEB58];
      currentPlayingSessions2 = [(PLPowerMetricMonitorService *)self currentPlayingSessions];
      v8 = [v6 setWithCapacity:{objc_msgSend(currentPlayingSessions2, "count")}];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      currentPlayingSessions3 = [(PLPowerMetricMonitorService *)self currentPlayingSessions];
      v10 = [currentPlayingSessions3 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v32;
        v13 = MEMORY[0x277D26C90];
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v32 != v12)
            {
              objc_enumerationMutation(currentPlayingSessions3);
            }

            v15 = [*(*(&v31 + 1) + 8 * i) objectForKeyedSubscript:*v13];
            if (v15)
            {
              [v8 addObject:v15];
            }
          }

          v11 = [currentPlayingSessions3 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v11);
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      metrics = [(PLPowerMetricMonitorService *)self metrics];
      processMetrics = [metrics processMetrics];

      v18 = [processMetrics countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v28;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v28 != v20)
            {
              objc_enumerationMutation(processMetrics);
            }

            v22 = *(*(&v27 + 1) + 8 * j);
            v23 = [v8 containsObject:v22];
            metrics2 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics2 = [metrics2 processMetrics];
            v26 = [processMetrics2 objectForKeyedSubscript:v22];
            [v26 setAudioActive:v23];
          }

          v19 = [processMetrics countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v19);
      }
    }
  }
}

- (void)_handleSessionPlayingDidChange:(id)change
{
  v28 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v7 = PLLogPowerMetricMonitor(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _handleSessionPlayingDidChange:changeCopy];
  }

  userInfo = [changeCopy userInfo];
  isKindOfClass = [userInfo objectForKeyedSubscript:*MEMORY[0x277D26DC0]];
  v10 = isKindOfClass;
  if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    audioIsActive = [(PLPowerMetricMonitorService *)self audioIsActive];
    [(PLPowerMetricMonitorService *)self setCurrentPlayingSessions:v10];
    -[PLPowerMetricMonitorService setAudioIsActive:](self, "setAudioIsActive:", [v10 count] != 0);
    if (audioIsActive != [(PLPowerMetricMonitorService *)self audioIsActive])
    {
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      [(PLPowerMetricMonitorService *)self setLastAudioStateChangeDate:monotonicDate];

      v14 = PLLogPowerMetricMonitor(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v16 = @"active";
        if (audioIsActive)
        {
          v17 = @"active";
        }

        else
        {
          v17 = @"inactive";
        }

        if (![(PLPowerMetricMonitorService *)self audioIsActive])
        {
          v16 = @"inactive";
        }

        v18 = [v10 count];
        lastAudioStateChangeDate = [(PLPowerMetricMonitorService *)self lastAudioStateChangeDate];
        v20 = 138413058;
        v21 = v17;
        v22 = 2112;
        v23 = v16;
        v24 = 2048;
        v25 = v18;
        v26 = 2112;
        v27 = lastAudioStateChangeDate;
        _os_log_debug_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEBUG, "Audio state changed: %@ -> %@, sessions: %lu at %@", &v20, 0x2Au);
      }

      [(PLPowerMetricMonitorService *)self _updateAudioActiveMetrics];
    }
  }

  else
  {
    v15 = PLLogPowerMetricMonitor(isKindOfClass);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _handleSessionPlayingDidChange:];
    }
  }
}

- (void)_handleAudioServerConnectionDied:(id)died
{
  v23 = *MEMORY[0x277D85DE8];
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v6 = PLLogPowerMetricMonitor(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [PLPowerMetricMonitorService _handleAudioServerConnectionDied:];
  }

  [(PLPowerMetricMonitorService *)self setIsMonitoringAudio:0];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  audioNotificationObservers = [(PLPowerMetricMonitorService *)self audioNotificationObservers];
  v8 = [audioNotificationObservers countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(audioNotificationObservers);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter removeObserver:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [audioNotificationObservers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  audioNotificationObservers2 = [(PLPowerMetricMonitorService *)self audioNotificationObservers];
  [audioNotificationObservers2 removeAllObjects];

  v15 = dispatch_time(0, 1000000000);
  monitorQueue2 = [(PLPowerMetricMonitorService *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__PLPowerMetricMonitorService__handleAudioServerConnectionDied___block_invoke;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  dispatch_after(v15, monitorQueue2, block);
}

- (void)_collectMetricsWithTimeout:(double)timeout completionHandler:(id)handler
{
  v63 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v9 = PLLogPowerMetricMonitor(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _collectMetricsWithTimeout:completionHandler:];
  }

  [(PLPowerMetricMonitorService *)self _cancelMetricCollectionTimeoutTimer];
  isCollectingMetrics = [(PLPowerMetricMonitorService *)self isCollectingMetrics];
  if (isCollectingMetrics)
  {
    v11 = PLLogPowerMetricMonitor(isCollectingMetrics);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _collectMetricsWithTimeout:completionHandler:];
    }

    [(PLPowerMetricMonitorService *)self _metricCollectionTimedOut];
  }

  currQueryTime = [(PLPowerMetricMonitorService *)self currQueryTime];
  [(PLPowerMetricMonitorService *)self setLastQueryTime:currQueryTime];

  [(PLPowerMetricMonitorService *)self setLastQueryCount:[(PLPowerMetricMonitorService *)self currQueryCount]];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLPowerMetricMonitorService *)self setCurrQueryTime:monotonicDate];

  [(PLPowerMetricMonitorService *)self setCurrQueryCount:[(PLPowerMetricMonitorService *)self lastQueryCount]+ 1];
  v14 = [MEMORY[0x277CBEB58] set];
  [(PLPowerMetricMonitorService *)self setEntryKeysRequested:v14];

  v15 = [MEMORY[0x277CBEB58] set];
  [(PLPowerMetricMonitorService *)self setEntryKeysCollected:v15];

  [(PLPowerMetricMonitorService *)self setReceivedNetworkUpdate:0];
  v16 = objc_alloc_init(MEMORY[0x277D3A0E8]);
  [(PLPowerMetricMonitorService *)self setMetrics:v16];

  cachedMetrics = [(PLPowerMetricMonitorService *)self cachedMetrics];
  v18 = [cachedMetrics copy];
  [(PLPowerMetricMonitorService *)self setMetrics:v18];

  trackedProcesses = [(PLPowerMetricMonitorService *)self trackedProcesses];
  LOBYTE(v18) = [trackedProcesses count] == 0;

  if ((v18 & 1) == 0)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    trackedProcesses2 = [(PLPowerMetricMonitorService *)self trackedProcesses];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __76__PLPowerMetricMonitorService__collectMetricsWithTimeout_completionHandler___block_invoke;
    v60[3] = &unk_279A5C5B0;
    v60[4] = self;
    v61 = dictionary;
    v22 = dictionary;
    [trackedProcesses2 enumerateKeysAndObjectsUsingBlock:v60];

    metrics = [(PLPowerMetricMonitorService *)self metrics];
    [metrics setProcessMetrics:v22];
  }

  objc_initWeak(&location, self);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __76__PLPowerMetricMonitorService__collectMetricsWithTimeout_completionHandler___block_invoke_2;
  v56[3] = &unk_279A5C5D8;
  objc_copyWeak(&v58, &location);
  v50 = handlerCopy;
  v57 = v50;
  [(PLPowerMetricMonitorService *)self setMetricCollectionCompletionHandler:v56];
  [(PLPowerMetricMonitorService *)self setIsCollectingMetrics:1];
  entryKeysToCollect = [(PLPowerMetricMonitorService *)self entryKeysToCollect];
  v25 = [entryKeysToCollect count] == 0;

  if (!v25)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    entryKeysToCollect2 = [(PLPowerMetricMonitorService *)self entryKeysToCollect];
    v27 = [entryKeysToCollect2 countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (!v27)
    {
      goto LABEL_22;
    }

    v28 = *v53;
    while (1)
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v53 != v28)
        {
          objc_enumerationMutation(entryKeysToCollect2);
        }

        v30 = *(*(&v52 + 1) + 8 * i);
        entryKeyToEntryInfo = [(PLPowerMetricMonitorService *)self entryKeyToEntryInfo];
        v32 = [entryKeyToEntryInfo objectForKeyedSubscript:v30];

        [v32 minRequestInterval];
        if (v33 == 0.0)
        {
          notificationComposition = [v32 notificationComposition];
          [notificationComposition requestEntry];

          entryKeysRequested = [(PLPowerMetricMonitorService *)self entryKeysRequested];
          [entryKeysRequested addObject:v30];
        }

        else
        {
          lastQueryDate = [v32 lastQueryDate];
          [lastQueryDate timeIntervalSinceNow];
          v38 = v37;
          [v32 minRequestInterval];
          v40 = v39 < -v38;

          if (!v40)
          {
            goto LABEL_20;
          }

          notificationComposition2 = [v32 notificationComposition];
          [notificationComposition2 requestEntry];

          entryKeysRequested2 = [(PLPowerMetricMonitorService *)self entryKeysRequested];
          [entryKeysRequested2 addObject:v30];

          entryKeysRequested = [MEMORY[0x277CBEAA8] now];
          entryKeyToEntryInfo2 = [(PLPowerMetricMonitorService *)self entryKeyToEntryInfo];
          v44 = [entryKeyToEntryInfo2 objectForKeyedSubscript:v30];
          [v44 setLastQueryDate:entryKeysRequested];
        }

LABEL_20:
      }

      v27 = [entryKeysToCollect2 countByEnumeratingWithState:&v52 objects:v62 count:16];
      if (!v27)
      {
LABEL_22:

        break;
      }
    }
  }

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __76__PLPowerMetricMonitorService__collectMetricsWithTimeout_completionHandler___block_invoke_3;
  v51[3] = &unk_279A5C600;
  *&v51[5] = timeout;
  v51[4] = self;
  [(PLPowerMetricMonitorService *)self _startMetricCollectionTimeoutTimerWithTimeout:v51 block:timeout];
  [(PLPowerMetricMonitorService *)self _updateIOReportStats];
  [(PLPowerMetricMonitorService *)self _updateMetricsWithThermalState];
  [(PLPowerMetricMonitorService *)self _sampleCoalitions];
  if (![(PLPowerMetricMonitorService *)self _supportsGPUCoalitions])
  {
    [(PLPowerMetricMonitorService *)self _sampleGPUTime];
  }

  [(PLPowerMetricMonitorService *)self _updateAudioActiveMetrics];
  v45 = MEMORY[0x277CCABB0];
  currQueryTime2 = [(PLPowerMetricMonitorService *)self currQueryTime];
  lastQueryTime = [(PLPowerMetricMonitorService *)self lastQueryTime];
  [currQueryTime2 timeIntervalSinceDate:lastQueryTime];
  v48 = [v45 numberWithDouble:?];
  metrics2 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics2 setSampleTime:v48];

  objc_destroyWeak(&v58);
  objc_destroyWeak(&location);
}

void __76__PLPowerMetricMonitorService__collectMetricsWithTimeout_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v58 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) metrics];
  v7 = [v6 processMetrics];
  v8 = [v7 objectForKeyedSubscript:v58];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277D3A110]);
    [v9 setPid:{objc_msgSend(v5, "pid")}];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "coalitionID")}];
    [v9 setCoalitionID:v10];

    v11 = [v5 name];
    [v9 setProcessName:v11];

    v12 = [v5 bundleId];
    [v9 setBundleID:v12];

    [*(a1 + 40) setObject:v9 forKeyedSubscript:v58];
    v13 = MEMORY[0x277D3A108];
    v14 = [v5 applicationState];
    v15 = [v5 lastActiveStart];
    v16 = [v13 sampleWithValue:v14 timestamp:v15];
    v17 = [*(a1 + 40) objectForKeyedSubscript:v58];
    [v17 setApplicationState:v16];

    v18 = [*(a1 + 32) cachedMetrics];
    v19 = [v18 processMetrics];
    v20 = [v19 objectForKeyedSubscript:v58];
    v21 = [v20 networkCost];
    v22 = [*(a1 + 40) objectForKeyedSubscript:v58];
    [v22 setNetworkCost:v21];

    v23 = [*(a1 + 32) cachedMetrics];
    v24 = [v23 processMetrics];
    v25 = [v24 objectForKeyedSubscript:v58];
    v26 = [v25 wifiIn];
    v27 = [*(a1 + 40) objectForKeyedSubscript:v58];
    [v27 setWifiIn:v26];

    v28 = [*(a1 + 32) cachedMetrics];
    v29 = [v28 processMetrics];
    v30 = [v29 objectForKeyedSubscript:v58];
    v31 = [v30 wifiOut];
    v32 = [*(a1 + 40) objectForKeyedSubscript:v58];
    [v32 setWifiOut:v31];

    v33 = [*(a1 + 32) cachedMetrics];
    v34 = [v33 processMetrics];
    v35 = [v34 objectForKeyedSubscript:v58];
    v36 = [v35 cellIn];
    v37 = [*(a1 + 40) objectForKeyedSubscript:v58];
    [v37 setCellIn:v36];

    v38 = [*(a1 + 32) cachedMetrics];
    v39 = [v38 processMetrics];
    v40 = [v39 objectForKeyedSubscript:v58];
    v41 = [v40 cellOut];
    v42 = [*(a1 + 40) objectForKeyedSubscript:v58];
    [v42 setCellOut:v41];

    v43 = [*(a1 + 32) cachedMetrics];
    v44 = [v43 processMetrics];
    v45 = [v44 objectForKeyedSubscript:v58];
    [v45 setNetworkCost:0];

    v46 = [*(a1 + 32) cachedMetrics];
    v47 = [v46 processMetrics];
    v48 = [v47 objectForKeyedSubscript:v58];
    [v48 setWifiIn:0];

    v49 = [*(a1 + 32) cachedMetrics];
    v50 = [v49 processMetrics];
    v51 = [v50 objectForKeyedSubscript:v58];
    [v51 setWifiOut:0];

    v52 = [*(a1 + 32) cachedMetrics];
    v53 = [v52 processMetrics];
    v54 = [v53 objectForKeyedSubscript:v58];
    [v54 setCellIn:0];

    v55 = [*(a1 + 32) cachedMetrics];
    v56 = [v55 processMetrics];
    v57 = [v56 objectForKeyedSubscript:v58];
    [v57 setCellOut:0];
  }
}

void __76__PLPowerMetricMonitorService__collectMetricsWithTimeout_completionHandler___block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsCollectingMetrics:0];
  if ((a2 & 1) == 0)
  {
    [WeakRetained _cancelMetricCollectionTimeoutTimer];
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

uint64_t __76__PLPowerMetricMonitorService__collectMetricsWithTimeout_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = PLLogPowerMetricMonitor(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __76__PLPowerMetricMonitorService__collectMetricsWithTimeout_completionHandler___block_invoke_3_cold_1(a1);
  }

  return [*(a1 + 32) _metricCollectionTimedOut];
}

- (void)_metricCollectionTimedOut
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_agentDidUpdateWithEntryKey:(id)key
{
  keyCopy = key;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  isCollectingMetrics = [(PLPowerMetricMonitorService *)self isCollectingMetrics];
  if (isCollectingMetrics)
  {
    v7 = PLLogPowerMetricMonitor(isCollectingMetrics);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PLPowerMetricMonitorService _agentDidUpdateWithEntryKey:];
    }

    entryKeysCollected = [(PLPowerMetricMonitorService *)self entryKeysCollected];
    v9 = [entryKeysCollected containsObject:keyCopy];

    if ((v9 & 1) == 0)
    {
      entryKeysCollected2 = [(PLPowerMetricMonitorService *)self entryKeysCollected];
      [entryKeysCollected2 addObject:keyCopy];

      entryKeysCollected3 = [(PLPowerMetricMonitorService *)self entryKeysCollected];
      v12 = [entryKeysCollected3 count];
      entryKeysRequested = [(PLPowerMetricMonitorService *)self entryKeysRequested];
      v14 = [entryKeysRequested count];

      if (v12 == v14)
      {
        metricCollectionCompletionHandler = [(PLPowerMetricMonitorService *)self metricCollectionCompletionHandler];

        if (metricCollectionCompletionHandler)
        {
          metricCollectionCompletionHandler2 = [(PLPowerMetricMonitorService *)self metricCollectionCompletionHandler];
          metricCollectionCompletionHandler2[2](metricCollectionCompletionHandler2, 0);

          [(PLPowerMetricMonitorService *)self setMetricCollectionCompletionHandler:0];
        }
      }
    }
  }
}

- (void)_updateIOReportStats
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  energyModelStats = [(PLPowerMetricMonitorService *)self energyModelStats];

  if (energyModelStats)
  {
    energyModelStats2 = [(PLPowerMetricMonitorService *)self energyModelStats];
    [energyModelStats2 updateStats];

    energyModelStats3 = [(PLPowerMetricMonitorService *)self energyModelStats];
    v7 = [energyModelStats3 calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:1];

    if (v7)
    {
      energyModelStats4 = [(PLPowerMetricMonitorService *)self energyModelStats];
      sampleTime = [energyModelStats4 sampleTime];
      energyModelStats5 = [(PLPowerMetricMonitorService *)self energyModelStats];
      sampleTimePrevious = [energyModelStats5 sampleTimePrevious];
      [sampleTime timeIntervalSinceDate:sampleTimePrevious];
      v13 = v12;

      [(PLPowerMetricMonitorService *)self _parseEnergyModelOrPMPMetricsFromSample:v7 withSampleDuration:0 sourceChannel:v13];
    }
  }

  dcpSwapStats = [(PLPowerMetricMonitorService *)self dcpSwapStats];

  if (dcpSwapStats)
  {
    dcpSwapStats2 = [(PLPowerMetricMonitorService *)self dcpSwapStats];
    [dcpSwapStats2 updateStats];

    dcpSwapStats3 = [(PLPowerMetricMonitorService *)self dcpSwapStats];
    v17 = [dcpSwapStats3 calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:0];

    if (v17)
    {
      [(PLPowerMetricMonitorService *)self _parseAverageFPS:v17];
      v18 = MEMORY[0x277D3A108];
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      dcpSwapStats4 = [(PLPowerMetricMonitorService *)self dcpSwapStats];
      sampleTime2 = [dcpSwapStats4 sampleTime];
      v22 = [v18 sampleWithValue:v19 timestamp:sampleTime2];
      metrics = [(PLPowerMetricMonitorService *)self metrics];
      [metrics setDisplayFPS:v22];
    }
  }

  dcpScanoutStats = [(PLPowerMetricMonitorService *)self dcpScanoutStats];

  if (dcpScanoutStats)
  {
    dcpScanoutStats2 = [(PLPowerMetricMonitorService *)self dcpScanoutStats];
    [dcpScanoutStats2 updateStats];

    dcpScanoutStats3 = [(PLPowerMetricMonitorService *)self dcpScanoutStats];
    v27 = [dcpScanoutStats3 calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:0];

    if (v27)
    {
      [(PLPowerMetricMonitorService *)self _parseAverageFPS:v27];
      v28 = MEMORY[0x277D3A108];
      v29 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      dcpScanoutStats4 = [(PLPowerMetricMonitorService *)self dcpScanoutStats];
      sampleTime3 = [dcpScanoutStats4 sampleTime];
      v32 = [v28 sampleWithValue:v29 timestamp:sampleTime3];
      metrics2 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics2 setScanoutFPS:v32];
    }
  }

  dcpDisplayStats = [(PLPowerMetricMonitorService *)self dcpDisplayStats];

  if (dcpDisplayStats)
  {
    dcpDisplayStats2 = [(PLPowerMetricMonitorService *)self dcpDisplayStats];
    [dcpDisplayStats2 updateStats];

    dcpDisplayStats3 = [(PLPowerMetricMonitorService *)self dcpDisplayStats];
    v37 = [dcpDisplayStats3 calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:0];

    if (v37)
    {
      v38 = [v37 objectForKeyedSubscript:@"power"];
      [v38 doubleValue];
      v40 = v39 / 1000000.0;

      v41 = MEMORY[0x277D3A108];
      v42 = [MEMORY[0x277CCABB0] numberWithDouble:v40];
      dcpDisplayStats4 = [(PLPowerMetricMonitorService *)self dcpDisplayStats];
      sampleTime4 = [dcpDisplayStats4 sampleTime];
      v45 = [v41 sampleWithValue:v42 timestamp:sampleTime4];
      metrics3 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics3 setDisplayEnergy:v45];
    }
  }

  if (+[PLPowerMetricMonitorService deviceUsesPMPCounters])
  {
    pmpCountersStats = [(PLPowerMetricMonitorService *)self pmpCountersStats];

    if (pmpCountersStats)
    {
      pmpCountersStats2 = [(PLPowerMetricMonitorService *)self pmpCountersStats];
      [pmpCountersStats2 updateStats];

      pmpCountersStats3 = [(PLPowerMetricMonitorService *)self pmpCountersStats];
      v50 = [pmpCountersStats3 calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:1];

      if (v50)
      {
        pmpCountersStats4 = [(PLPowerMetricMonitorService *)self pmpCountersStats];
        sampleTime5 = [pmpCountersStats4 sampleTime];
        pmpCountersStats5 = [(PLPowerMetricMonitorService *)self pmpCountersStats];
        sampleTimePrevious2 = [pmpCountersStats5 sampleTimePrevious];
        [sampleTime5 timeIntervalSinceDate:sampleTimePrevious2];
        v56 = v55;

        [(PLPowerMetricMonitorService *)self _parseEnergyModelOrPMPMetricsFromSample:v50 withSampleDuration:1 sourceChannel:v56];
      }
    }
  }

  amcStats = [(PLPowerMetricMonitorService *)self amcStats];

  if (amcStats)
  {
    amcStats2 = [(PLPowerMetricMonitorService *)self amcStats];
    [amcStats2 updateStats];

    amcStats3 = [(PLPowerMetricMonitorService *)self amcStats];
    v60 = [amcStats3 calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:1];

    if (v60)
    {
      [(PLPowerMetricMonitorService *)self _parseAMCSample:v60];
    }

    else
    {
      v62 = PLLogPowerMetricMonitor(v61);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [PLPowerMetricMonitorService _updateIOReportStats];
      }
    }
  }
}

- (void)_parseDisplayAPLMetricsFromEntry:(id)entry cacheMetrics:(BOOL)metrics
{
  metricsCopy = metrics;
  entryCopy = entry;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  if (![(PLPowerMetricMonitorService *)self _supportsSMCDisplayPower])
  {
    v7 = [entryCopy objectForKeyedSubscript:@"AvgPower"];
    v8 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v7];

    v9 = MEMORY[0x277D3A108];
    entryDate = [entryCopy entryDate];
    v11 = [v9 sampleWithValue:v8 timestamp:entryDate];
    metrics = [(PLPowerMetricMonitorService *)self metrics];
    [metrics setDisplayPower:v11];
  }

  v13 = [entryCopy objectForKeyedSubscript:@"AvgAPL"];
  v14 = MEMORY[0x277D3A108];
  entryDate2 = [entryCopy entryDate];
  v16 = [v14 sampleWithValue:v13 timestamp:entryDate2];
  metrics2 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics2 setDisplayAPL:v16];

  v18 = [entryCopy objectForKeyedSubscript:@"AvgRed"];
  intValue = [v18 intValue];
  v20 = [entryCopy objectForKeyedSubscript:@"AvgGreen"];
  intValue2 = [v20 intValue];
  v22 = [entryCopy objectForKeyedSubscript:@"AvgBlue"];
  -[PLPowerMetricMonitorService _computeDisplayCostWithAvgRed:avgGreen:avgBlue:](self, "_computeDisplayCostWithAvgRed:avgGreen:avgBlue:", intValue, intValue2, [v22 intValue]);
  v24 = v23;

  v25 = MEMORY[0x277D3A108];
  v26 = [MEMORY[0x277CCABB0] numberWithInt:v24];
  entryDate3 = [entryCopy entryDate];
  v28 = [v25 sampleWithValue:v26 timestamp:entryDate3];
  metrics3 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics3 setDisplayCost:v28];

  if (metricsCopy)
  {
    if (![(PLPowerMetricMonitorService *)self _supportsSMCDisplayPower])
    {
      metrics4 = [(PLPowerMetricMonitorService *)self metrics];
      displayPower = [metrics4 displayPower];
      cachedMetrics = [(PLPowerMetricMonitorService *)self cachedMetrics];
      [cachedMetrics setDisplayPower:displayPower];
    }

    metrics5 = [(PLPowerMetricMonitorService *)self metrics];
    displayAPL = [metrics5 displayAPL];
    cachedMetrics2 = [(PLPowerMetricMonitorService *)self cachedMetrics];
    [cachedMetrics2 setDisplayAPL:displayAPL];

    metrics6 = [(PLPowerMetricMonitorService *)self metrics];
    displayCost = [metrics6 displayCost];
    cachedMetrics3 = [(PLPowerMetricMonitorService *)self cachedMetrics];
    [cachedMetrics3 setDisplayCost:displayCost];
  }
}

- (void)_parseDisplayAZLMetricsFromEntry:(id)entry
{
  entryCopy = entry;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v5 = [entryCopy objectForKeyedSubscript:@"AZLAccum"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [entryCopy objectForKeyedSubscript:@"BLFrameCount"];
  [v8 doubleValue];
  v10 = v9;

  if (v10 != 0.0)
  {
    v11 = MEMORY[0x277D3A108];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / v10 * 0.000000953674316];
    entryDate = [entryCopy entryDate];
    v14 = [v11 sampleWithValue:v12 timestamp:entryDate];
    metrics = [(PLPowerMetricMonitorService *)self metrics];
    [metrics setDisplayAZL:v14];

    metrics2 = [(PLPowerMetricMonitorService *)self metrics];
    displayAZL = [metrics2 displayAZL];
    cachedMetrics = [(PLPowerMetricMonitorService *)self cachedMetrics];
    [cachedMetrics setDisplayAZL:displayAZL];
  }
}

- (void)_parseDisplayBacklightPowerMetricsFromEntry:(id)entry
{
  entryCopy = entry;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  if (![(PLPowerMetricMonitorService *)self _supportsSMCDisplayPower])
  {
    v5 = [entryCopy objectForKeyedSubscript:@"DisplayPower"];
    v6 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v5];

    v7 = MEMORY[0x277D3A108];
    entryDate = [entryCopy entryDate];
    v9 = [v7 sampleWithValue:v6 timestamp:entryDate];
    metrics = [(PLPowerMetricMonitorService *)self metrics];
    [metrics setDisplayPower:v9];
  }
}

- (void)_parseEnergyModelOrPMPMetricsFromSample:(id)sample withSampleDuration:(double)duration sourceChannel:(int64_t)channel
{
  sampleCopy = sample;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  if (duration > 0.0)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    kPLSoCClassOfDevice = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
    if (channel == 1 || kPLSoCClassOfDevice > 1001015)
    {
      channelCopy = channel;
      v218 = kPLSoCClassOfDevice;
      v14 = [sampleCopy objectForKeyedSubscript:@"DRAM"];
      [v14 doubleValue];
      v16 = v15 / duration * 1.2;

      v17 = MEMORY[0x277D3A108];
      v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
      monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
      v20 = [v17 sampleWithValue:v18 timestamp:monotonicDate2];
      metrics = [(PLPowerMetricMonitorService *)self metrics];
      [metrics setDramPower:v20];

      v22 = [sampleCopy objectForKeyedSubscript:@"ANE"];
      [v22 doubleValue];
      v24 = v23 / duration * 1.2;

      v25 = MEMORY[0x277D3A108];
      v26 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
      monotonicDate3 = [MEMORY[0x277CBEAA8] monotonicDate];
      v28 = [v25 sampleWithValue:v26 timestamp:monotonicDate3];
      metrics2 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics2 setAnePower:v28];

      [sampleCopy objectForKeyedSubscript:@"SOC_REST"];
      v30 = v220 = monotonicDate;
      [v30 doubleValue];
      v32 = v31;
      v33 = [sampleCopy objectForKeyedSubscript:@"AVE"];
      [v33 doubleValue];
      v35 = v32 + v34;
      v36 = [sampleCopy objectForKeyedSubscript:@"DCS"];
      [v36 doubleValue];
      v38 = v35 + v37;
      v39 = [sampleCopy objectForKeyedSubscript:@"DISP"];
      [v39 doubleValue];
      v41 = v38 + v40;
      v42 = [sampleCopy objectForKeyedSubscript:@"ISP"];
      [v42 doubleValue];
      v44 = v41 + v43;
      v45 = [sampleCopy objectForKeyedSubscript:@"MSR"];
      [v45 doubleValue];
      v47 = v44 + v46;
      v48 = [sampleCopy objectForKeyedSubscript:@"VDEC"];
      [v48 doubleValue];
      v50 = v47 + v49;
      v51 = [sampleCopy objectForKeyedSubscript:@"SOC_AON"];
      [v51 doubleValue];
      v53 = v50 + v52;

      monotonicDate = v220;
      v54 = MEMORY[0x277D3A108];
      v55 = [MEMORY[0x277CCABB0] numberWithDouble:v53 / duration * 1.2];
      monotonicDate4 = [MEMORY[0x277CBEAA8] monotonicDate];
      v57 = [v54 sampleWithValue:v55 timestamp:monotonicDate4];
      metrics3 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics3 setOtherSocPower:v57];

      v59 = [sampleCopy objectForKeyedSubscript:@"GPU SRAM"];
      [v59 doubleValue];
      v61 = v60;

      v62 = MEMORY[0x277D3A108];
      v63 = [MEMORY[0x277CCABB0] numberWithDouble:v61];
      v64 = [v62 sampleWithValue:v63 timestamp:v220];
      metrics4 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics4 setGpuSRAMEnergy:v64];

      v66 = [sampleCopy objectForKeyedSubscript:@"ANE"];
      [v66 doubleValue];
      v68 = v67;

      v69 = MEMORY[0x277D3A108];
      v70 = [MEMORY[0x277CCABB0] numberWithDouble:v68];
      v71 = [v69 sampleWithValue:v70 timestamp:v220];
      metrics5 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics5 setAneEnergy:v71];

      v73 = [sampleCopy objectForKeyedSubscript:@"DCS"];
      [v73 doubleValue];
      v75 = v74;

      v76 = MEMORY[0x277D3A108];
      v77 = [MEMORY[0x277CCABB0] numberWithDouble:v75];
      v78 = [v76 sampleWithValue:v77 timestamp:v220];
      metrics6 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics6 setDcsEnergy:v78];

      v80 = [sampleCopy objectForKeyedSubscript:@"DRAM"];
      [v80 doubleValue];
      v82 = v81;

      v83 = MEMORY[0x277D3A108];
      v84 = [MEMORY[0x277CCABB0] numberWithDouble:v82];
      v85 = [v83 sampleWithValue:v84 timestamp:v220];
      metrics7 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics7 setDramEnergy:v85];

      v87 = [sampleCopy objectForKeyedSubscript:@"PCIe Port 0 Energy"];

      if (v87)
      {
        v88 = [sampleCopy objectForKeyedSubscript:@"PCIe Port 0 Energy"];
        [v88 doubleValue];
        v90 = v89 + 0.0;
      }

      else
      {
        v90 = 0.0;
      }

      v91 = [sampleCopy objectForKeyedSubscript:@"PCIe Port 1 Energy"];

      if (v91)
      {
        v92 = [sampleCopy objectForKeyedSubscript:@"PCIe Port 1 Energy"];
        [v92 doubleValue];
        v90 = v90 + v93;
      }

      v94 = [sampleCopy objectForKeyedSubscript:@"PCIe Port 2 Energy"];

      if (v94)
      {
        v95 = [sampleCopy objectForKeyedSubscript:@"PCIe Port 2 Energy"];
        [v95 doubleValue];
        v90 = v90 + v96;
      }

      v97 = MEMORY[0x277D3A108];
      v98 = [MEMORY[0x277CCABB0] numberWithDouble:v90];
      v99 = [v97 sampleWithValue:v98 timestamp:v220];
      metrics8 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics8 setPcieEnergy:v99];

      kPLSoCClassOfDevice = v218;
      if (channelCopy)
      {
        goto LABEL_20;
      }
    }

    else if (channel)
    {
LABEL_20:

      goto LABEL_21;
    }

    v101 = MEMORY[0x277CCABB0];
    v219 = kPLSoCClassOfDevice;
    v102 = [sampleCopy objectForKeyedSubscript:@"CPU Energy"];
    [v102 doubleValue];
    v104 = [v101 numberWithDouble:v103 / duration * 1.2];

    v105 = MEMORY[0x277D3A108];
    monotonicDate5 = [MEMORY[0x277CBEAA8] monotonicDate];
    v217 = v104;
    v107 = [v105 sampleWithValue:v104 timestamp:monotonicDate5];
    metrics9 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics9 setCpuPower:v107];

    v109 = MEMORY[0x277CCABB0];
    v110 = [sampleCopy objectForKeyedSubscript:@"GPU Energy"];
    [v110 doubleValue];
    v112 = [v109 numberWithDouble:v111 / duration * 1.2];

    v113 = MEMORY[0x277D3A108];
    monotonicDate6 = [MEMORY[0x277CBEAA8] monotonicDate];
    v115 = [v113 sampleWithValue:v112 timestamp:monotonicDate6];
    [(PLPowerMetricMonitorService *)self metrics];
    v116 = v221 = monotonicDate;
    [v116 setGpuPower:v115];

    monotonicDate = v221;
    v117 = [sampleCopy objectForKeyedSubscript:@"CPU Energy"];
    [v117 doubleValue];
    v119 = v118;

    v120 = MEMORY[0x277D3A108];
    v121 = [MEMORY[0x277CCABB0] numberWithDouble:v119];
    v122 = [v120 sampleWithValue:v121 timestamp:v221];
    metrics10 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics10 setCpuEnergy:v122];

    v124 = [sampleCopy objectForKeyedSubscript:@"GPU Energy"];
    [v124 doubleValue];
    v126 = v125;
    v215 = v125;

    v127 = MEMORY[0x277D3A108];
    v128 = [MEMORY[0x277CCABB0] numberWithDouble:v126];
    v129 = [v127 sampleWithValue:v128 timestamp:v221];
    metrics11 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics11 setGpuEnergy:v129];

    v131 = [sampleCopy objectForKeyedSubscript:@"ECPM"];
    [v131 doubleValue];
    v214 = v132;

    v133 = [sampleCopy objectForKeyedSubscript:@"PCPM"];
    [v133 doubleValue];
    v213 = v134;

    v135 = [sampleCopy objectForKeyedSubscript:@"ECPM_SRAM"];
    [v135 doubleValue];
    v212 = v136;

    v137 = [sampleCopy objectForKeyedSubscript:@"PCPM_SRAM"];
    [v137 doubleValue];
    v211 = v138;

    v139 = [sampleCopy objectForKeyedSubscript:@"ECPU"];
    [v139 doubleValue];
    v210 = v140;

    v141 = [sampleCopy objectForKeyedSubscript:@"PCPU"];
    [v141 doubleValue];
    v209 = v142;

    v143 = [sampleCopy objectForKeyedSubscript:@"ISP"];
    [v143 doubleValue];
    v208 = v144;

    v145 = [sampleCopy objectForKeyedSubscript:@"AVE"];
    [v145 doubleValue];
    v207 = v146;

    v147 = [sampleCopy objectForKeyedSubscript:@"MSR"];
    [v147 doubleValue];
    v206 = v148;

    v149 = [sampleCopy objectForKeyedSubscript:@"DISP"];
    [v149 doubleValue];
    v205 = v150;

    v151 = [sampleCopy objectForKeyedSubscript:@"DISPEXT"];
    [v151 doubleValue];
    v153 = v152;

    v154 = [sampleCopy objectForKeyedSubscript:@"VDEC"];
    [v154 doubleValue];
    v156 = v155;

    v157 = [sampleCopy objectForKeyedSubscript:@"SOC_AON"];
    [v157 doubleValue];
    v159 = v158;

    v160 = [sampleCopy objectForKeyedSubscript:@"GPU SRAM"];
    [v160 doubleValue];
    durationCopy = duration;
    v162 = v161;

    v163 = [sampleCopy objectForKeyedSubscript:@"ANE"];
    [v163 doubleValue];
    v165 = v164;

    v166 = [sampleCopy objectForKeyedSubscript:@"SOC_REST"];
    [v166 doubleValue];
    v168 = v167;

    v169 = [sampleCopy objectForKeyedSubscript:@"DCS"];
    [v169 doubleValue];
    v171 = v170;

    v172 = [sampleCopy objectForKeyedSubscript:@"DRAM"];
    [v172 doubleValue];
    v174 = v173;

    v175 = MEMORY[0x277D3A108];
    v174 = [MEMORY[0x277CCABB0] numberWithDouble:v168 + v159 + v156 + v153 + v205 + v206 + v207 + v208 + v215 + v214 + v213 + v212 + v211 + v210 + v209 + v162 + v165 + v171 + v174];
    v177 = [v175 sampleWithValue:v174 timestamp:v221];
    metrics12 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics12 setPackageEnergy:v177];

    if (v219 < 1001011)
    {
      v179 = MEMORY[0x277CCABB0];
      v180 = [sampleCopy objectForKeyedSubscript:@"DRAM Energy"];
      [v180 doubleValue];
      v182 = [v179 numberWithDouble:v181 / durationCopy * 1.2];

      v183 = MEMORY[0x277D3A108];
      monotonicDate7 = [MEMORY[0x277CBEAA8] monotonicDate];
      v185 = [v183 sampleWithValue:v182 timestamp:monotonicDate7];
      metrics13 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics13 setDramPower:v185];

      v187 = [sampleCopy objectForKeyedSubscript:@"Rest of SoC Energy"];
      [v187 doubleValue];
      v189 = v188;
      v190 = [sampleCopy objectForKeyedSubscript:@"ISP Energy"];
      [v190 doubleValue];
      v192 = v189 + v191;
      v193 = [sampleCopy objectForKeyedSubscript:@"VDEC Energy"];
      [v193 doubleValue];
      v195 = v192 + v194;
      v196 = [sampleCopy objectForKeyedSubscript:@"VENC Energy"];
      [v196 doubleValue];
      v198 = v195 + v197;

      monotonicDate = v221;
      v199 = [MEMORY[0x277CCABB0] numberWithDouble:v198 / durationCopy * 1.2];
      v200 = MEMORY[0x277D3A108];
      monotonicDate8 = [MEMORY[0x277CBEAA8] monotonicDate];
      v202 = [v200 sampleWithValue:v199 timestamp:monotonicDate8];
      metrics14 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics14 setOtherSocPower:v202];
    }

    goto LABEL_20;
  }

  v13 = PLLogPowerMetricMonitor(v10);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [PLPowerMetricMonitorService _parseEnergyModelOrPMPMetricsFromSample:withSampleDuration:sourceChannel:];
  }

LABEL_21:
}

- (double)_parseAverageFPS:(id)s
{
  sCopy = s;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v6 = +[PLDisplayAgent dcpSubFrameMap];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__PLPowerMetricMonitorService__parseAverageFPS___block_invoke;
  v12[3] = &unk_279A5C628;
  v7 = sCopy;
  v13 = v7;
  v14 = &v20;
  v15 = &v16;
  [v6 enumerateKeysAndObjectsUsingBlock:v12];

  v8 = v17[3];
  v9 = 0.0;
  if (v8 != 0.0)
  {
    v10 = v21[3];
    if (v10 != 0.0)
    {
      v9 = 1.0 / (v8 / v10);
    }
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v9;
}

double __48__PLPowerMetricMonitorService__parseAverageFPS___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  [v7 doubleValue];
  v9 = v8;

  *(*(a1[5] + 8) + 24) = v9 + *(*(a1[5] + 8) + 24);
  [v6 doubleValue];
  v11 = v10;

  v12 = *(a1[6] + 8);
  result = *(v12 + 24) + v9 * (1.0 / v11);
  *(v12 + 24) = result;
  return result;
}

- (void)_parseAMCSample:(id)sample
{
  sampleCopy = sample;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v6 = [sampleCopy objectForKeyedSubscript:@"DCS"];
  [v6 doubleValue];
  v8 = v7;

  v9 = MEMORY[0x277D3A108];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  v11 = [v9 sampleWithValue:v10 timestamp:monotonicDate];
  metrics = [(PLPowerMetricMonitorService *)self metrics];
  [metrics setDramBytes:v11];

  v13 = [sampleCopy objectForKeyedSubscript:@"ANE DCS RD"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [sampleCopy objectForKeyedSubscript:@"ANE DCS WR"];
  [v16 doubleValue];
  v18 = v17;

  v19 = MEMORY[0x277D3A108];
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v15 + v18];
  v21 = [v19 sampleWithValue:v20 timestamp:monotonicDate];
  metrics2 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics2 setAneDCSBytes:v21];

  v23 = [sampleCopy objectForKeyedSubscript:@"ANE RD"];
  [v23 doubleValue];
  v25 = v24;

  v26 = [sampleCopy objectForKeyedSubscript:@"ANE WR"];

  [v26 doubleValue];
  v28 = v27;

  v29 = MEMORY[0x277D3A108];
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:v25 + v28];
  v31 = [v29 sampleWithValue:v30 timestamp:monotonicDate];
  metrics3 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics3 setAneFabricBytes:v31];
}

- (void)_parseSMCMetricsFromEntry:(id)entry
{
  entryCopy = entry;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v6 = [entryCopy objectForKeyedSubscript:@"B0AP"];
  v7 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v6];

  v8 = MEMORY[0x277D3A108];
  entryDate = [entryCopy entryDate];
  v78 = v7;
  v10 = [v8 sampleWithValue:v7 timestamp:entryDate];
  metrics = [(PLPowerMetricMonitorService *)self metrics];
  [metrics setBatteryPower:v10];

  v12 = [entryCopy objectForKeyedSubscript:@"zSPi"];
  v13 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v12];

  v14 = MEMORY[0x277D3A108];
  entryDate2 = [entryCopy entryDate];
  v77 = v13;
  v16 = [v14 sampleWithValue:v13 timestamp:entryDate2];
  metrics2 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics2 setDcInputPower:v16];

  v18 = [entryCopy objectForKeyedSubscript:@"CHAS"];
  v19 = MEMORY[0x277D3A108];
  entryDate3 = [entryCopy entryDate];
  v21 = [v19 sampleWithValue:v18 timestamp:entryDate3];
  metrics3 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics3 setChargingRate:v21];

  v23 = [entryCopy objectForKeyedSubscript:@"xRPE"];
  v24 = MEMORY[0x277D3A108];
  entryDate4 = [entryCopy entryDate];
  v76 = v23;
  v26 = [v24 sampleWithValue:v23 timestamp:entryDate4];
  metrics4 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics4 setCellularPower:v26];

  v28 = [entryCopy objectForKeyedSubscript:@"TVMx"];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v31 = [entryCopy objectForKeyedSubscript:@"TVRM"];
    v32 = v31;
    if (v31)
    {
      v30 = v31;
    }

    else
    {
      v33 = [entryCopy objectForKeyedSubscript:@"TVBM"];
      v34 = v33;
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = [entryCopy objectForKeyedSubscript:@"TVBH"];
      }

      v30 = v35;
    }
  }

  if ([MEMORY[0x277D3F208] isDeviceClass:102058])
  {
    v36 = [entryCopy objectForKeyedSubscript:@"TVBE"];

    v30 = v36;
  }

  v37 = MEMORY[0x277D3A108];
  entryDate5 = [entryCopy entryDate];
  v39 = [v37 sampleWithValue:v30 timestamp:entryDate5];
  metrics5 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics5 setSkinTemperature:v39];

  v41 = [entryCopy objectForKeyedSubscript:@"TB0T"];
  v42 = MEMORY[0x277D3A108];
  entryDate6 = [entryCopy entryDate];
  v44 = [v42 sampleWithValue:v41 timestamp:entryDate6];
  metrics6 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics6 setBatteryTemperature:v44];

  _supportsSMCDisplayPower = [(PLPowerMetricMonitorService *)self _supportsSMCDisplayPower];
  v47 = 0x277CCA000;
  if (_supportsSMCDisplayPower)
  {
    v74 = [entryCopy objectForKeyedSubscript:@"PDEP"];
    v48 = [entryCopy objectForKeyedSubscript:@"PDLP"];
    v49 = MEMORY[0x277CCABB0];
    [v74 doubleValue];
    v51 = v50;
    [v48 doubleValue];
    v53 = [v49 numberWithDouble:v51 + v52];
    v54 = v41;
    v55 = v18;
    v56 = MEMORY[0x277D3A108];
    entryDate7 = [entryCopy entryDate];
    v58 = [v56 sampleWithValue:v53 timestamp:entryDate7];
    metrics7 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics7 setDisplayPower:v58];

    v18 = v55;
    v41 = v54;

    v47 = 0x277CCA000uLL;
  }

  if (v18)
  {
    v60 = [entryCopy objectForKeyedSubscript:@"zSLi"];
    v75 = v18;
    [v18 doubleValue];
    if (v61 == 0.0)
    {
      v62 = *(v47 + 2992);
      v63 = [entryCopy objectForKeyedSubscript:@"B0AP"];
      [v63 doubleValue];
      v65 = [v62 numberWithDouble:-v64];
    }

    else
    {
      v65 = v60;
    }

    v67 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v65];

    v68 = MEMORY[0x277D3A108];
    entryDate8 = [entryCopy entryDate];
    v70 = [v68 sampleWithValue:v67 timestamp:entryDate8];
    metrics8 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics8 setSystemLoadPower:v70];

    v72 = [*(v47 + 2992) numberWithInt:v60 != 0];
    metrics9 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics9 setIsSystemPowerAvailableWhileCharging:v72 != 0];

    [(PLPowerMetricMonitorService *)self _calculateAccumSystemLoad:entryCopy];
    v18 = v75;
  }

  else
  {
    v66 = PLLogPowerMetricMonitor(_supportsSMCDisplayPower);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      [PLPowerMetricMonitorService _parseSMCMetricsFromEntry:];
    }
  }
}

- (void)_setupBatteryMetrics
{
  v3 = *MEMORY[0x277CD28A0];
  v4 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(v3, v4);
  if (MatchingService)
  {
    v6 = MatchingService;
    v7 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:MatchingService];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:@"ExternalConnected"];
      [(PLPowerMetricMonitorService *)self setChargerConnected:[v9 BOOLValue]];
    }

    else
    {
      v9 = PLLogPowerMetricMonitor(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PLPowerMetricMonitorService _setupBatteryMetrics];
      }
    }

    IOObjectRelease(v6);
  }

  else
  {
    v8 = PLLogPowerMetricMonitor(MatchingService);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _setupBatteryMetrics];
    }
  }

  [(PLPowerMetricMonitorService *)self _updateBatteryMetrics];
}

- (void)_updateBatteryMetrics
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x277D3F1C8]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__PLPowerMetricMonitorService__updateBatteryMetrics__block_invoke;
  v7[3] = &unk_279A5C650;
  objc_copyWeak(&v8, &location);
  v5 = [v4 initWithOperator:self forService:@"IOPMPowerSource" withBlock:v7];
  iokitPowerSource = self->_iokitPowerSource;
  self->_iokitPowerSource = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __52__PLPowerMetricMonitorService__updateBatteryMetrics__block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a3 == -536723200 && WeakRetained)
  {
    v8 = WeakRetained;
    v6 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:a2];
    v7 = [v6 objectForKeyedSubscript:@"ExternalConnected"];
    [v8 setChargerConnected:{objc_msgSend(v7, "BOOLValue")}];

    WeakRetained = v8;
  }
}

- (void)_parseWifiPowerMetricsFromEntry:(id)entry
{
  entryCopy = entry;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v6 = [entryCopy objectForKeyedSubscript:@"WifiPower"];
  v31 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v6];

  v7 = MEMORY[0x277D3A108];
  entryDate = [entryCopy entryDate];
  v9 = [v7 sampleWithValue:v31 timestamp:entryDate];
  metrics = [(PLPowerMetricMonitorService *)self metrics];
  [metrics setWifiPower:v9];

  v11 = [entryCopy objectForKeyedSubscript:@"AWDLDown"];
  LODWORD(entryDate) = [v11 BOOLValue];

  v12 = MEMORY[0x277D3A108];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:entryDate ^ 1];
  entryDate2 = [entryCopy entryDate];
  v15 = [v12 sampleWithValue:v13 timestamp:entryDate2];
  metrics2 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics2 setWifiAWDLStatus:v15];

  v17 = MEMORY[0x277D3A108];
  v18 = [entryCopy objectForKeyedSubscript:@"AWDLRanging"];
  entryDate3 = [entryCopy entryDate];

  v20 = [v17 sampleWithValue:v18 timestamp:entryDate3];
  metrics3 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics3 setWifiAWDLRange:v20];

  metrics4 = [(PLPowerMetricMonitorService *)self metrics];
  wifiPower = [metrics4 wifiPower];
  cachedMetrics = [(PLPowerMetricMonitorService *)self cachedMetrics];
  [cachedMetrics setWifiPower:wifiPower];

  metrics5 = [(PLPowerMetricMonitorService *)self metrics];
  wifiAWDLStatus = [metrics5 wifiAWDLStatus];
  cachedMetrics2 = [(PLPowerMetricMonitorService *)self cachedMetrics];
  [cachedMetrics2 setWifiAWDLStatus:wifiAWDLStatus];

  metrics6 = [(PLPowerMetricMonitorService *)self metrics];
  wifiAWDLRange = [metrics6 wifiAWDLRange];
  cachedMetrics3 = [(PLPowerMetricMonitorService *)self cachedMetrics];
  [cachedMetrics3 setWifiAWDLRange:wifiAWDLRange];
}

- (void)_parseGasGaugeMetricsFromEntry:(id)entry
{
  entryCopy = entry;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v5 = [entryCopy objectForKeyedSubscript:@"GasGaugePower"];
  [v5 doubleValue];
  v7 = v6;

  if (v7 <= 0.0)
  {
    v8 = MEMORY[0x277D3A108];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / -1000.0];
    entryDate = [entryCopy entryDate];
    v11 = [v8 sampleWithValue:v9 timestamp:entryDate];
    metrics = [(PLPowerMetricMonitorService *)self metrics];
    [metrics setSystemLoadPower:v11];
  }

  metrics2 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics2 setIsSystemPowerAvailableWhileCharging:0];
}

- (void)_parseProcessNetworkMetricsFromEntry:(id)entry
{
  v108 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v4 = PLLogPower(entryCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _parseProcessNetworkMetricsFromEntry:];
  }

  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  trackedProcesses = [(PLPowerMetricMonitorService *)self trackedProcesses];
  v7 = [trackedProcesses count];

  if (v7)
  {
    v9 = [entryCopy objectForKeyedSubscript:@"BundleName"];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    trackedProcesses2 = [(PLPowerMetricMonitorService *)self trackedProcesses];
    allKeys = [trackedProcesses2 allKeys];

    obj = allKeys;
    v12 = [allKeys countByEnumeratingWithState:&v101 objects:v107 count:16];
    if (v12)
    {
      v14 = v12;
      v15 = *v102;
      *&v13 = 138412290;
      v90 = v13;
      v91 = *v102;
      v92 = v9;
      do
      {
        v16 = 0;
        v93 = v14;
        do
        {
          if (*v102 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v101 + 1) + 8 * v16);
          trackedProcesses3 = [(PLPowerMetricMonitorService *)self trackedProcesses];
          v19 = [trackedProcesses3 objectForKeyedSubscript:v17];
          bundleId = [v19 bundleId];

          v21 = [bundleId isEqualToString:v9];
          if (v21)
          {
            v95 = bundleId;
            v22 = PLLogPowerMetricMonitor(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = v90;
              v106 = entryCopy;
              _os_log_debug_impl(&dword_25EE51000, v22, OS_LOG_TYPE_DEBUG, "ProcessNetworkEntry=%@", buf, 0xCu);
            }

            v100 = [entryCopy objectForKeyedSubscript:@"WifiIn"];
            v99 = [entryCopy objectForKeyedSubscript:@"WifiOut"];
            v98 = [entryCopy objectForKeyedSubscript:@"CellIn"];
            v97 = [entryCopy objectForKeyedSubscript:@"CellOut"];
            v23 = MEMORY[0x277D3A108];
            entryDate = [entryCopy entryDate];
            v25 = [v23 sampleWithValue:v100 timestamp:entryDate];
            metrics = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics = [metrics processMetrics];
            v28 = [processMetrics objectForKeyedSubscript:v17];
            [v28 setWifiIn:v25];

            v29 = MEMORY[0x277D3A108];
            entryDate2 = [entryCopy entryDate];
            v31 = [v29 sampleWithValue:v99 timestamp:entryDate2];
            metrics2 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics2 = [metrics2 processMetrics];
            v34 = [processMetrics2 objectForKeyedSubscript:v17];
            [v34 setWifiOut:v31];

            v35 = MEMORY[0x277D3A108];
            entryDate3 = [entryCopy entryDate];
            v37 = [v35 sampleWithValue:v98 timestamp:entryDate3];
            metrics3 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics3 = [metrics3 processMetrics];
            v40 = [processMetrics3 objectForKeyedSubscript:v17];
            [v40 setCellIn:v37];

            v41 = MEMORY[0x277D3A108];
            entryDate4 = [entryCopy entryDate];
            v43 = [v41 sampleWithValue:v97 timestamp:entryDate4];
            metrics4 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics4 = [metrics4 processMetrics];
            v46 = [processMetrics4 objectForKeyedSubscript:v17];
            [v46 setCellOut:v43];

            metrics5 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics5 = [metrics5 processMetrics];
            v49 = [processMetrics5 objectForKeyedSubscript:v17];
            wifiIn = [v49 wifiIn];
            cachedMetrics = [(PLPowerMetricMonitorService *)self cachedMetrics];
            processMetrics6 = [cachedMetrics processMetrics];
            v53 = [processMetrics6 objectForKeyedSubscript:v17];
            [v53 setWifiIn:wifiIn];

            metrics6 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics7 = [metrics6 processMetrics];
            v56 = [processMetrics7 objectForKeyedSubscript:v17];
            wifiOut = [v56 wifiOut];
            metrics7 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics8 = [metrics7 processMetrics];
            v60 = [processMetrics8 objectForKeyedSubscript:v17];
            [v60 setWifiOut:wifiOut];

            metrics8 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics9 = [metrics8 processMetrics];
            v63 = [processMetrics9 objectForKeyedSubscript:v17];
            cellIn = [v63 cellIn];
            metrics9 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics10 = [metrics9 processMetrics];
            v67 = [processMetrics10 objectForKeyedSubscript:v17];
            [v67 setCellIn:cellIn];

            metrics10 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics11 = [metrics10 processMetrics];
            v70 = [processMetrics11 objectForKeyedSubscript:v17];
            cellOut = [v70 cellOut];
            metrics11 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics12 = [metrics11 processMetrics];
            v74 = [processMetrics12 objectForKeyedSubscript:v17];
            [v74 setCellOut:cellOut];

            -[PLPowerMetricMonitorService _computeNetworkingCostWithWifiIn:wifiOut:cellIn:cellOut:](self, "_computeNetworkingCostWithWifiIn:wifiOut:cellIn:cellOut:", [v100 intValue], objc_msgSend(v99, "intValue"), objc_msgSend(v98, "intValue"), objc_msgSend(v97, "intValue"));
            v76 = MEMORY[0x277D3A108];
            v77 = [MEMORY[0x277CCABB0] numberWithInt:v75];
            entryDate5 = [entryCopy entryDate];
            v79 = [v76 sampleWithValue:v77 timestamp:entryDate5];
            metrics12 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics13 = [metrics12 processMetrics];
            v82 = [processMetrics13 objectForKeyedSubscript:v17];
            [v82 setNetworkCost:v79];

            metrics13 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics14 = [metrics13 processMetrics];
            v85 = [processMetrics14 objectForKeyedSubscript:v17];
            networkCost = [v85 networkCost];
            cachedMetrics2 = [(PLPowerMetricMonitorService *)self cachedMetrics];
            processMetrics15 = [cachedMetrics2 processMetrics];
            v89 = [processMetrics15 objectForKeyedSubscript:v17];
            [v89 setNetworkCost:networkCost];

            v15 = v91;
            v9 = v92;
            v14 = v93;
            bundleId = v95;
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [obj countByEnumeratingWithState:&v101 objects:v107 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v9 = PLLogPowerMetricMonitor(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _parseProcessNetworkMetricsFromEntry:];
    }
  }
}

- (void)_queryCumulativeNetworkBytes
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_parseLocationMetricsFromEntry:(id)entry
{
  v64 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  trackedProcesses = [(PLPowerMetricMonitorService *)self trackedProcesses];
  v7 = [trackedProcesses count];

  if (v7)
  {
    v9 = [entryCopy objectForKeyedSubscript:@"BundleId"];
    if (v9)
    {
      null = [MEMORY[0x277CBEB68] null];

      if (v9 != null)
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        trackedProcesses2 = [(PLPowerMetricMonitorService *)self trackedProcesses];
        allKeys = [trackedProcesses2 allKeys];

        obj = allKeys;
        v13 = [allKeys countByEnumeratingWithState:&v57 objects:v63 count:16];
        if (!v13)
        {
          goto LABEL_22;
        }

        v15 = v13;
        v16 = *v58;
        *&v14 = 138412290;
        v51 = v14;
        v53 = *v58;
        v54 = v9;
        selfCopy = self;
        while (1)
        {
          v17 = 0;
          v55 = v15;
          do
          {
            if (*v58 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v57 + 1) + 8 * v17);
            trackedProcesses3 = [(PLPowerMetricMonitorService *)self trackedProcesses];
            v20 = [trackedProcesses3 objectForKeyedSubscript:v18];
            bundleId = [v20 bundleId];

            if ([bundleId isEqualToString:v9])
            {
              v22 = [entryCopy objectForKeyedSubscript:@"timestampEnd"];
              if (v22)
              {

                goto LABEL_12;
              }

              v31 = [entryCopy objectForKeyedSubscript:@"LocationDesiredAccuracy"];

              if (v31)
              {
                v32 = PLLogPowerMetricMonitor(v23);
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                {
                  *buf = v51;
                  v62 = v9;
                  _os_log_debug_impl(&dword_25EE51000, v32, OS_LOG_TYPE_DEBUG, "location start signal; bundleId=%@", buf, 0xCu);
                }

                v33 = MEMORY[0x277D3A108];
                entryDate = [entryCopy entryDate];
                v35 = [v33 sampleWithValue:MEMORY[0x277CBEC38] timestamp:entryDate];
                metrics = [(PLPowerMetricMonitorService *)self metrics];
                processMetrics = [metrics processMetrics];
                v38 = [processMetrics objectForKeyedSubscript:v18];
                [v38 setOngoingLocation:v35];

                v39 = MEMORY[0x277CCABB0];
                [(PLPowerMetricMonitorService *)self _computeLocationCostWithWifiCost:0 gpsCost:1 cellCost:0 skyhookCost:0];
                entryDate4 = [v39 numberWithDouble:?];
                v40 = MEMORY[0x277D3A108];
                entryDate2 = [entryCopy entryDate];
                v42 = [v40 sampleWithValue:entryDate4 timestamp:entryDate2];
                metrics2 = [(PLPowerMetricMonitorService *)self metrics];
                processMetrics2 = [metrics2 processMetrics];
                [processMetrics2 objectForKeyedSubscript:v18];
                v46 = v45 = entryCopy;
                [v46 setLocationCost:v42];

                v47 = MEMORY[0x277D3A108];
                v27 = [v45 objectForKeyedSubscript:@"LocationDesiredAccuracy"];
                entryDate3 = [v45 entryDate];
                processMetrics4 = [v47 sampleWithValue:v27 timestamp:entryDate3];
                metrics3 = [(PLPowerMetricMonitorService *)selfCopy metrics];
                processMetrics3 = [metrics3 processMetrics];
                v49 = [processMetrics3 objectForKeyedSubscript:v18];
                [v49 setLocationDesiredAccuracy:processMetrics4];

                entryCopy = v45;
                self = selfCopy;
              }

              else
              {
LABEL_12:
                v24 = PLLogPowerMetricMonitor(v23);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                {
                  *buf = v51;
                  v62 = v9;
                  _os_log_debug_impl(&dword_25EE51000, v24, OS_LOG_TYPE_DEBUG, "location terminate signal; bundleId=%@", buf, 0xCu);
                }

                v25 = MEMORY[0x277D3A108];
                entryDate4 = [entryCopy entryDate];
                v27 = [v25 sampleWithValue:MEMORY[0x277CBEC28] timestamp:entryDate4];
                entryDate3 = [(PLPowerMetricMonitorService *)self metrics];
                processMetrics4 = [entryDate3 processMetrics];
                metrics3 = [processMetrics4 objectForKeyedSubscript:v18];
                [metrics3 setOngoingLocation:v27];
              }

              v16 = v53;
              v9 = v54;
              v15 = v55;
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
          if (!v15)
          {
LABEL_22:

            break;
          }
        }
      }
    }
  }

  else
  {
    v50 = PLLogPowerMetricMonitor(v8);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _parseProcessNetworkMetricsFromEntry:];
    }
  }
}

- (void)_parseApplicationMetricsFromEntry:(id)entry
{
  entryCopy = entry;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  trackedProcesses = [(PLPowerMetricMonitorService *)self trackedProcesses];
  v7 = [trackedProcesses count];

  if (v7)
  {
    v9 = [entryCopy objectForKeyedSubscript:@"pid"];
    trackedProcesses2 = [(PLPowerMetricMonitorService *)self trackedProcesses];
    v11 = [trackedProcesses2 objectForKeyedSubscript:v9];

    if (v11)
    {
      v13 = [entryCopy objectForKeyedSubscript:@"State"];
      v14 = MEMORY[0x277D3A108];
      entryDate = [entryCopy entryDate];
      v16 = [v14 sampleWithValue:v13 timestamp:entryDate];
      metrics = [(PLPowerMetricMonitorService *)self metrics];
      processMetrics = [metrics processMetrics];
      v19 = [processMetrics objectForKeyedSubscript:v9];
      [v19 setApplicationState:v16];

      trackedProcesses3 = [(PLPowerMetricMonitorService *)self trackedProcesses];
      v21 = [trackedProcesses3 objectForKeyedSubscript:v9];
      [v21 setApplicationState:v13];

      intValue = [v9 intValue];
      intValue2 = [v13 intValue];
      currQueryTime = [(PLPowerMetricMonitorService *)self currQueryTime];
      [(PLPowerMetricMonitorService *)self _setLastActiveStartTimeAndLastSuspendTimeWithPid:intValue appState:intValue2 currentTime:currQueryTime];
    }

    else
    {
      v25 = PLLogPowerMetricMonitor(v12);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [PLPowerMetricMonitorService _parseApplicationMetricsFromEntry:];
      }
    }
  }

  else
  {
    v9 = PLLogPowerMetricMonitor(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(&dword_25EE51000, v9, OS_LOG_TYPE_INFO, "Not currently tracking a PID", v26, 2u);
    }
  }
}

- (void)_updateMetricsWithThermalState
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  if (_updateMetricsWithThermalState_onceToken != -1)
  {
    [PLPowerMetricMonitorService _updateMetricsWithThermalState];
  }

  state64 = 0;
  notify_get_state(_updateMetricsWithThermalState_thermalStateToken, &state64);
  v4 = state64;
  metrics = [(PLPowerMetricMonitorService *)self metrics];
  [metrics setThermalPressure:v4];

  v6 = [_updateMetricsWithThermalState_cltmDefaults stringForKey:@"thermalSimulationMode"];
  v7 = v6;
  if (v6)
  {
    if ([v6 isEqualToString:@"nominal"])
    {
      v8 = 0;
    }

    else if ([v7 isEqualToString:@"light"])
    {
      v8 = 10;
    }

    else if ([v7 isEqualToString:@"moderate"])
    {
      v8 = 20;
    }

    else if ([v7 isEqualToString:@"heavy"])
    {
      v8 = 30;
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = -1;
  }

  metrics2 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics2 setInducedThermalPressure:v8];
}

uint64_t __61__PLPowerMetricMonitorService__updateMetricsWithThermalState__block_invoke()
{
  notify_register_check(*MEMORY[0x277D85E48], &_updateMetricsWithThermalState_thermalStateToken);
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.cltm"];
  _updateMetricsWithThermalState_cltmDefaults = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (id)_convertToWattsFromMilliwatts:(id)milliwatts
{
  v3 = MEMORY[0x277CCABB0];
  [milliwatts doubleValue];
  v5 = v4 / 1000.0;

  return [v3 numberWithDouble:v5];
}

- (void)_startBrightnessTimer
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v4 = PLLogPowerMetricMonitor([(PLPowerMetricMonitorService *)self _cancelBrightnessTimer]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_INFO, "Starting timer needed for display metrics", buf, 2u);
  }

  monitorQueue2 = [(PLPowerMetricMonitorService *)self monitorQueue];
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, monitorQueue2);
  [(PLPowerMetricMonitorService *)self setDisplayUpdatesTimer:v6];

  displayUpdatesTimer = [(PLPowerMetricMonitorService *)self displayUpdatesTimer];
  v8 = dispatch_time(0, 0);
  dispatch_source_set_timer(displayUpdatesTimer, v8, 0x3B9ACA00uLL, 0);

  displayUpdatesTimer2 = [(PLPowerMetricMonitorService *)self displayUpdatesTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __52__PLPowerMetricMonitorService__startBrightnessTimer__block_invoke;
  handler[3] = &unk_279A5BDC0;
  handler[4] = self;
  dispatch_source_set_event_handler(displayUpdatesTimer2, handler);

  displayUpdatesTimer3 = [(PLPowerMetricMonitorService *)self displayUpdatesTimer];
  dispatch_resume(displayUpdatesTimer3);
}

- (void)_handleDisplayLayoutUpdate:(id)update
{
  v39 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = updateCopy;
  if (updateCopy)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    elements = [updateCopy elements];
    v7 = [elements countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (!v7)
    {
LABEL_20:

      goto LABEL_21;
    }

    v8 = v7;
    v9 = *v34;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(elements);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        [v12 frame];
        v14 = v13;
        [v12 frame];
        v10 = v10 + v14 * v15;
      }

      v8 = [elements countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v8);

    if (v10 != 0.0)
    {
      v16 = objc_opt_new();
      [(PLPowerMetricMonitorService *)self setScreenState:v16];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      elements = [v5 elements];
      v17 = [elements countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v30;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(elements);
            }

            v21 = *(*(&v29 + 1) + 8 * j);
            bundleIdentifier = [v21 bundleIdentifier];
            if (bundleIdentifier)
            {
              [v21 bundleIdentifier];
            }

            else
            {
              [v21 identifier];
            }
            v23 = ;

            [v21 frame];
            v25 = v24;
            [v21 frame];
            v27 = [MEMORY[0x277CCABB0] numberWithDouble:v25 * v26 / v10];
            screenState = [(PLPowerMetricMonitorService *)self screenState];
            [screenState setObject:v27 forKeyedSubscript:v23];
          }

          v18 = [elements countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v18);
      }

      goto LABEL_20;
    }
  }

LABEL_21:
}

- (BOOL)_supportsSMCDisplayPower
{
  if (_supportsSMCDisplayPower_onceToken != -1)
  {
    [PLPowerMetricMonitorService _supportsSMCDisplayPower];
  }

  return _supportsSMCDisplayPower_smc_display_power_supported;
}

void *__55__PLPowerMetricMonitorService__supportsSMCDisplayPower__block_invoke()
{
  result = [MEMORY[0x277D3F208] hasCapability:0];
  if (result)
  {
    result = [MEMORY[0x277D3F208] isiPad];
    if (result)
    {
      _supportsSMCDisplayPower_smc_display_power_supported = 1;
    }
  }

  return result;
}

- (double)_computeDisplayCostWithAvgRed:(int)red avgGreen:(int)green avgBlue:(int)blue
{
  v5 = (green / 255.0 * 0.25 + red / 255.0 * 0.31 + blue * 0.44 / 255.0) * 600.0;
  v6 = PLLogPowerMetricMonitor(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _computeDisplayCostWithAvgRed:avgGreen:avgBlue:];
  }

  return v5;
}

- (double)_computeNetworkingCostWithWifiIn:(int)in wifiOut:(int)out cellIn:(int)cellIn cellOut:(int)cellOut
{
  v6 = (out + in + cellIn + cellOut);
  v7 = PLLogPowerMetricMonitor(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _computeNetworkingCostWithWifiIn:wifiOut:cellIn:cellOut:];
  }

  return v6;
}

- (double)_computeLocationCostWithWifiCost:(int)cost gpsCost:(int)gpsCost cellCost:(int)cellCost skyhookCost:(int)skyhookCost
{
  if (cost <= 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = 50;
  }

  if (gpsCost <= 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 200;
  }

  v8 = v7 | v6;
  if (cellCost <= 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = 100;
  }

  if (skyhookCost <= 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 50;
  }

  v11 = (v8 + v9 + v10);
  if (v11 < 50.0)
  {
    v11 = 50.0;
  }

  v12 = fmin(v11, 200.0);
  v13 = PLLogPowerMetricMonitor(self);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _computeLocationCostWithWifiCost:gpsCost:cellCost:skyhookCost:];
  }

  return v12;
}

- (double)_computeGPUCostWithGPUSec:(id)sec
{
  secCopy = sec;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  [secCopy doubleValue];
  v7 = v6;

  currQueryTime = [(PLPowerMetricMonitorService *)self currQueryTime];
  lastQueryTime = [(PLPowerMetricMonitorService *)self lastQueryTime];
  [currQueryTime timeIntervalSinceDate:lastQueryTime];
  v11 = v10;

  if (v11 * 1000000000.0 > 0.0)
  {
    v7 = fmin(v7 / (v11 * 1000000000.0) * 1000.0 * 0.5, 1000.0);
  }

  v13 = PLLogPowerMetricMonitor(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _computeGPUCostWithGPUSec:];
  }

  return v7;
}

- (double)_computeCPUCostWithCPUTicks:(id)ticks
{
  v19 = *MEMORY[0x277D85DE8];
  ticksCopy = ticks;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  [ticksCopy doubleValue];
  v7 = v6;

  [PLUtilities secondsFromMachTime:v7];
  v9 = v8;
  currQueryTime = [(PLPowerMetricMonitorService *)self currQueryTime];
  lastQueryTime = [(PLPowerMetricMonitorService *)self lastQueryTime];
  [currQueryTime timeIntervalSinceDate:lastQueryTime];
  v13 = v12;

  if (v13 > 0.0)
  {
    v9 = fmin(v9 / v13 * 1000.0 * 0.5, 1000.0);
  }

  v15 = PLLogPowerMetricMonitor(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v17 = 134217984;
    v18 = v9;
    _os_log_impl(&dword_25EE51000, v15, OS_LOG_TYPE_INFO, "CPU Cost=%f", &v17, 0xCu);
  }

  return v9;
}

- (void)_updateDisplayMetrics
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  if ([(PLPowerMetricMonitorService *)self sampleCount])
  {
    v4 = MEMORY[0x277D3A108];
    v5 = MEMORY[0x277CCABB0];
    [(PLPowerMetricMonitorService *)self brightness];
    v7 = [v5 numberWithDouble:{v6 / -[PLPowerMetricMonitorService sampleCount](self, "sampleCount")}];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v9 = [v4 sampleWithValue:v7 timestamp:monotonicDate];
    metrics = [(PLPowerMetricMonitorService *)self metrics];
    [metrics setBrightness:v9];

    v11 = MEMORY[0x277D3A108];
    v12 = MEMORY[0x277CCABB0];
    [(PLPowerMetricMonitorService *)self edrHeadroom];
    v14 = [v12 numberWithDouble:{v13 / -[PLPowerMetricMonitorService sampleCount](self, "sampleCount")}];
    monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
    v16 = [v11 sampleWithValue:v14 timestamp:monotonicDate2];
    metrics2 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics2 setEdrHeadroom:v16];

    [(PLPowerMetricMonitorService *)self brightnessSum];
    [(PLPowerMetricMonitorService *)self setBrightnessPercentage:v18 / [(PLPowerMetricMonitorService *)self sampleCount]];
    metrics3 = [(PLPowerMetricMonitorService *)self metrics];
    brightness = [metrics3 brightness];
    cachedMetrics = [(PLPowerMetricMonitorService *)self cachedMetrics];
    [cachedMetrics setBrightness:brightness];

    metrics4 = [(PLPowerMetricMonitorService *)self metrics];
    edrHeadroom = [metrics4 edrHeadroom];
    cachedMetrics2 = [(PLPowerMetricMonitorService *)self cachedMetrics];
    [cachedMetrics2 setEdrHeadroom:edrHeadroom];

    [(PLPowerMetricMonitorService *)self setEdrHeadroom:0.0];
    [(PLPowerMetricMonitorService *)self setBrightness:0.0];
    [(PLPowerMetricMonitorService *)self setBrightnessSum:0.0];

    [(PLPowerMetricMonitorService *)self setSampleCount:0];
  }

  else
  {
    cachedMetrics3 = [(PLPowerMetricMonitorService *)self cachedMetrics];
    brightness2 = [cachedMetrics3 brightness];
    metrics5 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics5 setBrightness:brightness2];

    cachedMetrics4 = [(PLPowerMetricMonitorService *)self cachedMetrics];
    edrHeadroom2 = [cachedMetrics4 edrHeadroom];
    metrics6 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics6 setEdrHeadroom:edrHeadroom2];
  }
}

- (void)_computeEnergyScoreForProcess
{
  v263 = *MEMORY[0x277D85DE8];
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  selfCopy = self;
  trackedProcesses = [(PLPowerMetricMonitorService *)self trackedProcesses];
  v5 = [trackedProcesses count];

  if (v5)
  {
    v235 = objc_opt_new();
    v7 = objc_opt_new();
    costElement = [(PLPowerMetricMonitorService *)self costElement];

    if (!costElement)
    {
      v9 = +[PLDTCostElement getCostElementInstance];
      [(PLPowerMetricMonitorService *)self setCostElement:v9];
    }

    v243 = 0u;
    v244 = 0u;
    v241 = 0u;
    v242 = 0u;
    trackedProcesses2 = [(PLPowerMetricMonitorService *)self trackedProcesses];
    allKeys = [trackedProcesses2 allKeys];

    obj = allKeys;
    v223 = [allKeys countByEnumeratingWithState:&v241 objects:v262 count:16];
    if (v223)
    {
      v222 = *v242;
      v228 = v7;
      do
      {
        v12 = 0;
        do
        {
          if (*v242 != v222)
          {
            objc_enumerationMutation(obj);
          }

          v226 = v12;
          v13 = *(*(&v241 + 1) + 8 * v12);
          v260[0] = @"cost";
          v14 = MEMORY[0x277CCABB0];
          metrics = [(PLPowerMetricMonitorService *)selfCopy metrics];
          processMetrics = [metrics processMetrics];
          v17 = [processMetrics objectForKeyedSubscript:v13];
          cpuCost = [v17 cpuCost];
          value = [cpuCost value];
          [value doubleValue];
          v20 = [v14 numberWithDouble:?];
          v260[1] = @"overhead";
          v261[0] = v20;
          v261[1] = &unk_2871458E0;
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v261 forKeys:v260 count:2];
          [v228 setObject:v21 forKeyedSubscript:@"CPUCost"];

          v258[0] = @"cost";
          v22 = MEMORY[0x277CCABB0];
          metrics2 = [(PLPowerMetricMonitorService *)selfCopy metrics];
          processMetrics2 = [metrics2 processMetrics];
          v25 = [processMetrics2 objectForKeyedSubscript:v13];
          networkCost = [v25 networkCost];
          value2 = [networkCost value];
          [value2 doubleValue];
          v28 = [v22 numberWithDouble:?];
          v258[1] = @"overhead";
          v259[0] = v28;
          v259[1] = &unk_2871458E0;
          v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v259 forKeys:v258 count:2];
          [v228 setObject:v29 forKeyedSubscript:@"NetworkCost"];

          v256[0] = @"cost";
          v30 = MEMORY[0x277CCABB0];
          metrics3 = [(PLPowerMetricMonitorService *)selfCopy metrics];
          processMetrics3 = [metrics3 processMetrics];
          v33 = [processMetrics3 objectForKeyedSubscript:v13];
          locationCost = [v33 locationCost];
          value3 = [locationCost value];
          [value3 doubleValue];
          v36 = [v30 numberWithDouble:?];
          v256[1] = @"overhead";
          v257[0] = v36;
          v257[1] = &unk_2871458E0;
          v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v257 forKeys:v256 count:2];
          [v228 setObject:v37 forKeyedSubscript:@"LocationCost"];

          v254[0] = @"cost";
          v38 = MEMORY[0x277CCABB0];
          metrics4 = [(PLPowerMetricMonitorService *)selfCopy metrics];
          processMetrics4 = [metrics4 processMetrics];
          v41 = [processMetrics4 objectForKeyedSubscript:v13];
          applicationState = [v41 applicationState];
          value4 = [applicationState value];
          [value4 doubleValue];
          v44 = [v38 numberWithDouble:?];
          v254[1] = @"overhead";
          v255[0] = v44;
          v255[1] = &unk_2871458E0;
          v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v255 forKeys:v254 count:2];
          [v228 setObject:v45 forKeyedSubscript:@"CurrentApplicationState"];

          v252[0] = @"cost";
          v46 = MEMORY[0x277CCABB0];
          metrics5 = [(PLPowerMetricMonitorService *)selfCopy metrics];
          processMetrics5 = [metrics5 processMetrics];
          v231 = v13;
          v49 = [processMetrics5 objectForKeyedSubscript:v13];
          gpuCost = [v49 gpuCost];
          value5 = [gpuCost value];
          [value5 doubleValue];
          v52 = [v46 numberWithDouble:?];
          v252[1] = @"overhead";
          v253[0] = v52;
          v253[1] = &unk_2871458E0;
          v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v253 forKeys:v252 count:2];
          [v228 setObject:v53 forKeyedSubscript:@"GPUCost"];

          v7 = v228;
          v250[0] = @"cost";
          v54 = MEMORY[0x277CCABB0];
          metrics6 = [(PLPowerMetricMonitorService *)selfCopy metrics];
          v56 = [v54 numberWithInteger:{objc_msgSend(metrics6, "thermalPressure")}];
          v250[1] = @"overhead";
          v251[0] = v56;
          v251[1] = &unk_2871458E0;
          v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v251 forKeys:v250 count:2];
          [v228 setObject:v57 forKeyedSubscript:@"CurrentThermalState"];

          metrics7 = [(PLPowerMetricMonitorService *)selfCopy metrics];
          inducedThermalPressure = [metrics7 inducedThermalPressure];

          if (inducedThermalPressure == -1)
          {
            v62 = 0;
          }

          else
          {
            v60 = MEMORY[0x277CCABB0];
            metrics8 = [(PLPowerMetricMonitorService *)selfCopy metrics];
            v62 = [v60 numberWithInteger:{objc_msgSend(metrics8, "inducedThermalPressure")}];
          }

          if (v62)
          {
            v63 = v62;
          }

          else
          {
            v63 = &unk_2871458F8;
          }

          v248[0] = @"cost";
          v248[1] = @"overhead";
          v249[0] = v63;
          v249[1] = &unk_2871458F8;
          v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v249 forKeys:v248 count:2];
          [v228 setObject:v64 forKeyedSubscript:@"InducedThermalState"];

          if ([MEMORY[0x277D3F208] hasCapability:0])
          {
            metrics9 = [(PLPowerMetricMonitorService *)selfCopy metrics];
            processMetrics6 = [metrics9 processMetrics];
            v67 = [processMetrics6 objectForKeyedSubscript:v231];
            applicationState2 = [v67 applicationState];
            value6 = [applicationState2 value];
            [value6 doubleValue];
            v71 = v70;

            if (v71 == 8.0)
            {
              v72 = MEMORY[0x277CCABB0];
              metrics10 = [(PLPowerMetricMonitorService *)selfCopy metrics];
              displayCost = [metrics10 displayCost];
              value7 = [displayCost value];
              [value7 doubleValue];
              v76 = [v72 numberWithDouble:?];
            }

            else
            {
              v76 = 0;
            }

            v224 = v76;
            if (v76)
            {
              v77 = v76;
            }

            else
            {
              v77 = &unk_2871458E0;
            }

            v246[0] = @"cost";
            v246[1] = @"overhead";
            v247[0] = v77;
            v247[1] = &unk_2871458E0;
            v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v247 forKeys:v246 count:2];
            [v228 setObject:v78 forKeyedSubscript:@"DisplayCost"];
          }

          else
          {
            v224 = 0;
          }

          v239 = 0u;
          v240 = 0u;
          v237 = 0u;
          v238 = 0u;
          energyScoringEntities = [(PLPowerMetricMonitorService *)selfCopy energyScoringEntities];
          v233 = [energyScoringEntities countByEnumeratingWithState:&v237 objects:v245 count:16];
          v225 = v62;
          if (!v233)
          {
            v79 = 0.0;
            v80 = 0.0;
            goto LABEL_59;
          }

          v232 = *v238;
          v79 = 0.0;
          v80 = 0.0;
          do
          {
            v81 = 0;
            do
            {
              if (*v238 != v232)
              {
                objc_enumerationMutation(energyScoringEntities);
              }

              v82 = *(*(&v237 + 1) + 8 * v81);
              v83 = [v7 objectForKey:v82];

              if (v83)
              {
                v236 = v81;
                v234 = v82;
                if ([v82 isEqualToString:@"NetworkCost"])
                {
                  costElement2 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  v85 = [v7 objectForKeyedSubscript:@"NetworkCost"];
                  v86 = [v85 objectForKeyedSubscript:@"cost"];
                  [v86 doubleValue];
                  v88 = v87;
                  lastQueryTime = [(PLPowerMetricMonitorService *)selfCopy lastQueryTime];
                  [costElement2 addNetworkingEvent:lastQueryTime atTime:objc_msgSend(v231 withPid:"intValue") withAppState:8 withQueryCount:{-[PLPowerMetricMonitorService lastQueryCount](selfCopy, "lastQueryCount"), v88}];

                  costElement3 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  currQueryTime = [(PLPowerMetricMonitorService *)selfCopy currQueryTime];
                  intValue = [v231 intValue];
                  trackedProcesses3 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v93 = [trackedProcesses3 objectForKeyedSubscript:v231];
                  lastActiveStart = [v93 lastActiveStart];
                  trackedProcesses4 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v96 = [trackedProcesses4 objectForKeyedSubscript:v231];
                  lastSuspendStart = [v96 lastSuspendStart];
                  v98 = [costElement3 getNetworkingCostUptoTime:currQueryTime withPid:intValue withLastActiveStart:lastActiveStart withLastSuspendStart:lastSuspendStart withAppState:8 withQueryCount:{-[PLPowerMetricMonitorService currQueryCount](selfCopy, "currQueryCount")}];
                  [v235 setObject:v98 forKeyedSubscript:@"NetworkCost"];

                  v99 = [v235 objectForKeyedSubscript:@"NetworkCost"];
                  v100 = [v99 objectForKeyedSubscript:@"cost"];
                  [v100 doubleValue];
                  v80 = v80 + v101;

                  v102 = [v235 objectForKeyedSubscript:@"NetworkCost"];
                  v103 = [v102 objectForKeyedSubscript:@"overhead"];
                  [v103 doubleValue];
                  v79 = v79 + v104;

                  v105 = MEMORY[0x277D3A108];
                  v106 = MEMORY[0x277CCABB0];
                  v107 = [v235 objectForKeyedSubscript:@"NetworkCost"];
                  v108 = [v107 objectForKeyedSubscript:@"cost"];
                  [v108 doubleValue];
                  v109 = [v106 numberWithDouble:?];
                  trackedProcesses5 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v111 = [trackedProcesses5 objectForKeyedSubscript:v231];
                  lastActiveStart2 = [v111 lastActiveStart];
                  v113 = [v105 sampleWithValue:v109 timestamp:lastActiveStart2];
                  v114 = v107;
                  metrics11 = [(PLPowerMetricMonitorService *)selfCopy metrics];
                  processMetrics7 = [metrics11 processMetrics];
                  v117 = [processMetrics7 objectForKeyedSubscript:v231];
                  [v117 setNetworkCost:v113];

                  v82 = v234;
                  v7 = v228;

                  goto LABEL_40;
                }

                if ([v82 isEqualToString:@"LocationCost"])
                {
                  costElement4 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  v119 = [v7 objectForKeyedSubscript:@"LocationCost"];
                  v120 = [v119 objectForKeyedSubscript:@"cost"];
                  [v120 doubleValue];
                  v122 = v121;
                  lastQueryTime2 = [(PLPowerMetricMonitorService *)selfCopy lastQueryTime];
                  [costElement4 addLocationEvent:lastQueryTime2 atTime:objc_msgSend(v231 withPid:"intValue") withAppState:{8, v122}];

                  costElement5 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  currQueryTime2 = [(PLPowerMetricMonitorService *)selfCopy currQueryTime];
                  intValue2 = [v231 intValue];
                  trackedProcesses6 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v128 = [trackedProcesses6 objectForKeyedSubscript:v231];
                  lastActiveStart3 = [v128 lastActiveStart];
                  trackedProcesses7 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v131 = [trackedProcesses7 objectForKeyedSubscript:v231];
                  lastSuspendStart2 = [v131 lastSuspendStart];
                  v133 = [costElement5 getLocationCostUptoTime:currQueryTime2 withPid:intValue2 withLastActiveStart:lastActiveStart3 withLastSuspendStart:lastSuspendStart2 withAppState:8];
                  v134 = v235;
                  [v235 setObject:v133 forKeyedSubscript:@"LocationCost"];

                  v7 = v228;
                  v135 = v235;
                  v136 = @"LocationCost";
                  goto LABEL_34;
                }

                if ([v82 isEqualToString:@"CPUCost"])
                {
                  costElement6 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  v143 = [v7 objectForKeyedSubscript:@"CPUCost"];
                  v144 = [v143 objectForKeyedSubscript:@"cost"];
                  [v144 doubleValue];
                  v146 = v145;
                  lastQueryTime3 = [(PLPowerMetricMonitorService *)selfCopy lastQueryTime];
                  [costElement6 addCpuEvent:lastQueryTime3 atTime:objc_msgSend(v231 withPid:"intValue") withAppState:{8, v146}];

                  costElement7 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  currQueryTime3 = [(PLPowerMetricMonitorService *)selfCopy currQueryTime];
                  intValue3 = [v231 intValue];
                  trackedProcesses8 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v152 = [trackedProcesses8 objectForKeyedSubscript:v231];
                  lastActiveStart4 = [v152 lastActiveStart];
                  trackedProcesses9 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v155 = [trackedProcesses9 objectForKeyedSubscript:v231];
                  lastSuspendStart3 = [v155 lastSuspendStart];
                  v157 = [costElement7 getCpuCostUptoTime:currQueryTime3 withPid:intValue3 withLastActiveStart:lastActiveStart4 withLastSuspendStart:lastSuspendStart3 withAppState:8];
                  [v235 setObject:v157 forKeyedSubscript:@"CPUCost"];

                  v7 = v228;
                  v158 = [v235 objectForKeyedSubscript:@"CPUCost"];
                  v159 = [v158 objectForKeyedSubscript:@"cost"];
                  [v159 doubleValue];
                  v80 = v80 + v160;

                  v82 = v234;
                  v140 = v235;
                  v141 = @"CPUCost";
                  goto LABEL_39;
                }

                if ([v82 isEqualToString:@"GPUCost"])
                {
                  costElement8 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  v162 = [v7 objectForKeyedSubscript:@"GPUCost"];
                  v163 = [v162 objectForKeyedSubscript:@"cost"];
                  [v163 doubleValue];
                  v165 = v164;
                  lastQueryTime4 = [(PLPowerMetricMonitorService *)selfCopy lastQueryTime];
                  [costElement8 addGpuEvent:lastQueryTime4 atTime:objc_msgSend(v231 withPid:"intValue") withAppState:{8, v165}];

                  costElement9 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  currQueryTime4 = [(PLPowerMetricMonitorService *)selfCopy currQueryTime];
                  intValue4 = [v231 intValue];
                  trackedProcesses10 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v171 = [trackedProcesses10 objectForKeyedSubscript:v231];
                  lastActiveStart5 = [v171 lastActiveStart];
                  trackedProcesses11 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v174 = [trackedProcesses11 objectForKeyedSubscript:v231];
                  lastSuspendStart4 = [v174 lastSuspendStart];
                  v176 = [costElement9 getGpuCostUptoTime:currQueryTime4 withPid:intValue4 withLastActiveStart:lastActiveStart5 withLastSuspendStart:lastSuspendStart4 withAppState:8];
                  [v235 setObject:v176 forKeyedSubscript:@"GPUCost"];

                  v7 = v228;
                  v177 = [v235 objectForKeyedSubscript:@"GPUCost"];
                  v178 = [v177 objectForKeyedSubscript:@"cost"];
                  [v178 doubleValue];
                  v80 = v80 + v179;

                  v82 = v234;
                  v140 = v235;
                  v141 = @"GPUCost";
                  goto LABEL_39;
                }

                if ([MEMORY[0x277D3F208] hasCapability:0] && objc_msgSend(v82, "isEqualToString:", @"DisplayCost"))
                {
                  costElement10 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  v191 = [v7 objectForKeyedSubscript:@"DisplayCost"];
                  v192 = [v191 objectForKeyedSubscript:@"cost"];
                  [v192 doubleValue];
                  v194 = v193;
                  lastQueryTime5 = [(PLPowerMetricMonitorService *)selfCopy lastQueryTime];
                  [costElement10 addDisplayEvent:lastQueryTime5 atTime:objc_msgSend(v231 withPid:"intValue") withAppState:{8, v194}];

                  costElement11 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  currQueryTime5 = [(PLPowerMetricMonitorService *)selfCopy currQueryTime];
                  intValue5 = [v231 intValue];
                  trackedProcesses12 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v200 = [trackedProcesses12 objectForKeyedSubscript:v231];
                  lastActiveStart6 = [v200 lastActiveStart];
                  trackedProcesses13 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v203 = [trackedProcesses13 objectForKeyedSubscript:v231];
                  lastSuspendStart5 = [v203 lastSuspendStart];
                  v205 = [costElement11 getDisplayCostUptoTime:currQueryTime5 withPid:intValue5 withLastActiveStart:lastActiveStart6 withLastSuspendStart:lastSuspendStart5 withAppState:8];
                  v134 = v235;
                  [v235 setObject:v205 forKeyedSubscript:@"DisplayCost"];

                  v7 = v228;
                  v135 = v235;
                  v136 = @"DisplayCost";
LABEL_34:
                  v137 = [v135 objectForKeyedSubscript:v136];
                  v138 = [v137 objectForKeyedSubscript:@"cost"];
                  [v138 doubleValue];
                  v80 = v80 + v139;

                  v82 = v234;
                  v140 = v134;
                  v141 = v136;
LABEL_39:
                  v114 = [v140 objectForKeyedSubscript:v141];
                  v180 = [v114 objectForKeyedSubscript:@"overhead"];
                  [v180 doubleValue];
                  v79 = v79 + v181;
                }

                else
                {
                  v114 = [v7 objectForKeyedSubscript:v82];
                  [v235 setObject:v114 forKeyedSubscript:v82];
                }

LABEL_40:

                if ([v82 isEqualToString:@"CurrentApplicationState"])
                {
                  v182 = [v235 objectForKeyedSubscript:v82];
                  v183 = [v182 objectForKeyedSubscript:@"cost"];
                  [v183 doubleValue];
                  if (v184 == 4.0 || ([v82 isEqualToString:@"CurrentThermalState"] & 1) == 0)
                  {
                  }

                  else
                  {
                    v185 = [v82 isEqualToString:@"InducedThermalState"];

                    if (v185)
                    {
LABEL_49:
                      v81 = v236;
                      goto LABEL_50;
                    }
                  }
                }

                if ([v82 isEqualToString:@"CurrentApplicationState"])
                {
                  v186 = [v235 objectForKeyedSubscript:v82];
                  v187 = [v186 objectForKeyedSubscript:@"cost"];
                  [v187 doubleValue];
                  v189 = v188;

                  if (v189 == 4.0)
                  {
                    v80 = v80 + 200.0;
                  }
                }

                goto LABEL_49;
              }

LABEL_50:
              ++v81;
            }

            while (v233 != v81);
            v206 = [energyScoringEntities countByEnumeratingWithState:&v237 objects:v245 count:16];
            v233 = v206;
          }

          while (v206);
LABEL_59:

          v207 = MEMORY[0x277D3A108];
          v208 = [MEMORY[0x277CCABB0] numberWithDouble:v80];
          monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
          v210 = [v207 sampleWithValue:v208 timestamp:monotonicDate];
          metrics12 = [(PLPowerMetricMonitorService *)selfCopy metrics];
          processMetrics8 = [metrics12 processMetrics];
          v213 = [processMetrics8 objectForKeyedSubscript:v231];
          [v213 setEnergyCost:v210];

          v214 = MEMORY[0x277D3A108];
          v215 = [MEMORY[0x277CCABB0] numberWithDouble:v79];
          monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
          v217 = [v214 sampleWithValue:v215 timestamp:monotonicDate2];
          metrics13 = [(PLPowerMetricMonitorService *)selfCopy metrics];
          processMetrics9 = [metrics13 processMetrics];
          v220 = [processMetrics9 objectForKeyedSubscript:v231];
          [v220 setEnergyOverhead:v217];

          v12 = v226 + 1;
        }

        while (v226 + 1 != v223);
        v223 = [obj countByEnumeratingWithState:&v241 objects:v262 count:16];
      }

      while (v223);
    }
  }

  else
  {
    v235 = PLLogPowerMetricMonitor(v6);
    if (os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _parseProcessNetworkMetricsFromEntry:];
    }
  }
}

- (BOOL)_pidIsValid:(int)valid
{
  v9 = *MEMORY[0x277D85DE8];
  if (valid < 1)
  {
    return 0;
  }

  v4 = proc_listpids(1u, 0, 0, 0);
  memset(__b, 255, sizeof(__b));
  proc_listpids(1u, 0, __b, 4096);
  result = 0;
  if (v4 >= 4)
  {
    v6 = 0;
    do
    {
      v7 = __b[v6];
      result = v7 == valid;
      if (v7 == valid)
      {
        break;
      }

      if (v6 > 0x3FE)
      {
        break;
      }

      ++v6;
    }

    while (v4 >> 2 > v6);
  }

  return result;
}

- (void)_setLastActiveStartTimeAndLastSuspendTimeWithPid:(int)pid appState:(int)state currentTime:(id)time
{
  v6 = *&pid;
  timeCopy = time;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  trackedProcesses = [(PLPowerMetricMonitorService *)self trackedProcesses];
  v10 = [trackedProcesses count];

  if (v10)
  {
    trackedProcesses2 = [(PLPowerMetricMonitorService *)self trackedProcesses];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    v13 = [trackedProcesses2 objectForKeyedSubscript:v12];
    lastActiveStart = [v13 lastActiveStart];

    trackedProcesses3 = [(PLPowerMetricMonitorService *)self trackedProcesses];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    v17 = [trackedProcesses3 objectForKeyedSubscript:v16];
    lastSuspendStart = [v17 lastSuspendStart];

    if (state == 8 || state == 4)
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];

      if (lastActiveStart != distantPast)
      {
        distantFuture = [MEMORY[0x277CBEAA8] distantFuture];

        if (lastSuspendStart == distantFuture || lastSuspendStart <= lastActiveStart)
        {
          goto LABEL_13;
        }
      }

      trackedProcesses4 = [(PLPowerMetricMonitorService *)self trackedProcesses];
      v22 = [MEMORY[0x277CCABB0] numberWithInt:v6];
      v23 = [trackedProcesses4 objectForKeyedSubscript:v22];
      [v23 setLastActiveStart:timeCopy];
    }

    else
    {
      distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];

      if (lastSuspendStart != distantFuture2)
      {
        distantPast2 = [MEMORY[0x277CBEAA8] distantPast];

        if (lastActiveStart == distantPast2 || lastSuspendStart >= lastActiveStart)
        {
          goto LABEL_13;
        }
      }

      trackedProcesses4 = [(PLPowerMetricMonitorService *)self trackedProcesses];
      v22 = [MEMORY[0x277CCABB0] numberWithInt:v6];
      v23 = [trackedProcesses4 objectForKeyedSubscript:v22];
      [v23 setLastSuspendStart:timeCopy];
    }

LABEL_13:
  }
}

- (void)_startMetricCollectionTimerWithInterval:(double)interval block:(id)block
{
  blockCopy = block;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  _cancelMetricCollectionTimer = [(PLPowerMetricMonitorService *)self _cancelMetricCollectionTimer];
  if (interval >= 0.2)
  {
    monitorQueue2 = [(PLPowerMetricMonitorService *)self monitorQueue];
    v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, monitorQueue2);
    [(PLPowerMetricMonitorService *)self setMetricCollectionRepeatingTimer:v11];

    metricCollectionRepeatingTimer = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];
    dispatch_source_set_timer(metricCollectionRepeatingTimer, 0, (interval * 1000000000.0), 0x989680uLL);

    metricCollectionRepeatingTimer2 = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];
    dispatch_source_set_event_handler(metricCollectionRepeatingTimer2, blockCopy);

    metricCollectionRepeatingTimer3 = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];
    dispatch_resume(metricCollectionRepeatingTimer3);
  }

  else
  {
    metricCollectionRepeatingTimer3 = PLLogPowerMetricMonitor(_cancelMetricCollectionTimer);
    if (os_log_type_enabled(metricCollectionRepeatingTimer3, OS_LOG_TYPE_FAULT))
    {
      [PLPowerMetricMonitorService _startMetricCollectionTimerWithInterval:block:];
    }
  }
}

- (void)setMetricCollectionTimerUpdateInterval:(double)interval
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  if (interval >= 0.2)
  {
    metricCollectionRepeatingTimer = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];

    if (metricCollectionRepeatingTimer)
    {
      metricCollectionRepeatingTimer2 = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];
      dispatch_source_set_timer(metricCollectionRepeatingTimer2, 0, (interval * 1000000000.0), 0x989680uLL);
    }
  }

  else
  {
    v7 = PLLogPowerMetricMonitor(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [PLPowerMetricMonitorService _startMetricCollectionTimerWithInterval:block:];
    }
  }
}

- (void)_cancelMetricCollectionTimer
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  metricCollectionRepeatingTimer = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];

  if (metricCollectionRepeatingTimer)
  {
    metricCollectionRepeatingTimer2 = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];
    dispatch_source_cancel(metricCollectionRepeatingTimer2);

    [(PLPowerMetricMonitorService *)self setMetricCollectionRepeatingTimer:0];
  }
}

- (void)_startMetricCollectionTimeoutTimerWithTimeout:(double)timeout block:(id)block
{
  blockCopy = block;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  [(PLPowerMetricMonitorService *)self _cancelMetricCollectionTimeoutTimer];
  monitorQueue2 = [(PLPowerMetricMonitorService *)self monitorQueue];
  v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, monitorQueue2);
  [(PLPowerMetricMonitorService *)self setMetricCollectionTimeoutTimer:v9];

  metricCollectionTimeoutTimer = [(PLPowerMetricMonitorService *)self metricCollectionTimeoutTimer];
  v11 = dispatch_time(0, (timeout * 1000000000.0));
  dispatch_source_set_timer(metricCollectionTimeoutTimer, v11, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);

  metricCollectionTimeoutTimer2 = [(PLPowerMetricMonitorService *)self metricCollectionTimeoutTimer];
  dispatch_source_set_event_handler(metricCollectionTimeoutTimer2, blockCopy);

  metricCollectionTimeoutTimer3 = [(PLPowerMetricMonitorService *)self metricCollectionTimeoutTimer];
  dispatch_resume(metricCollectionTimeoutTimer3);
}

- (void)_cancelMetricCollectionTimeoutTimer
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  metricCollectionTimeoutTimer = [(PLPowerMetricMonitorService *)self metricCollectionTimeoutTimer];

  if (metricCollectionTimeoutTimer)
  {
    metricCollectionTimeoutTimer2 = [(PLPowerMetricMonitorService *)self metricCollectionTimeoutTimer];
    dispatch_source_cancel(metricCollectionTimeoutTimer2);

    [(PLPowerMetricMonitorService *)self setMetricCollectionTimeoutTimer:0];
  }
}

- (void)_cancelBrightnessTimer
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v5 = PLLogPowerMetricMonitor(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, "Cancelling timer needed for display metrics", v8, 2u);
  }

  displayUpdatesTimer = [(PLPowerMetricMonitorService *)self displayUpdatesTimer];

  if (displayUpdatesTimer)
  {
    displayUpdatesTimer2 = [(PLPowerMetricMonitorService *)self displayUpdatesTimer];
    dispatch_source_cancel(displayUpdatesTimer2);

    [(PLPowerMetricMonitorService *)self setDisplayUpdatesTimer:0];
  }

  [(PLPowerMetricMonitorService *)self setBrightness:0.0];
  [(PLPowerMetricMonitorService *)self setBrightnessPercentage:0.0];
  [(PLPowerMetricMonitorService *)self setBrightnessSum:0.0];
  [(PLPowerMetricMonitorService *)self setSampleCount:0];
  [(PLPowerMetricMonitorService *)self setEdrHeadroom:0.0];
}

- (BOOL)_supportsGPUCoalitions
{
  if (_supportsGPUCoalitions_onceToken != -1)
  {
    [PLPowerMetricMonitorService _supportsGPUCoalitions];
  }

  return _supportsGPUCoalitions_gpu_coliations_supported;
}

void *__53__PLPowerMetricMonitorService__supportsGPUCoalitions__block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
  if (result == 1001018 || (result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice], result == 1001019) || (result = objc_msgSend(MEMORY[0x277D3F208], "kPLSoCClassOfDevice"), result > 1001020))
  {
    _supportsGPUCoalitions_gpu_coliations_supported = 1;
  }

  return result;
}

- (double)_getGPUTotalTime
{
  v2 = proc_listcoalitions();
  v3 = malloc_type_malloc(2 * v2, 0x1000040451B5BE8uLL);
  v4 = proc_listcoalitions();
  if (v4 > 2 * v2)
  {
    v5 = -1.0;
    if (!v3)
    {
      return v5;
    }

    goto LABEL_18;
  }

  v5 = 0.0;
  if (v4 >= 0x10)
  {
    if (v4 >> 4 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 >> 4;
    }

    v7 = v3;
    do
    {
      v8 = malloc_type_malloc(0x168uLL, 0x1000040DAE56E47uLL);
      v7 += 16;
      v4 = coalition_info_resource_usage();
      if (v4)
      {
        if (!v8)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v5 = v5 + v8[8];
      }

      free(v8);
LABEL_14:
      --v6;
    }

    while (v6);
  }

  v9 = PLLogPowerMetricMonitor(v4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _getGPUTotalTime];
  }

  if (v3)
  {
LABEL_18:
    free(v3);
  }

  return v5;
}

- (void)_sampleGPUTime
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  [(PLPowerMetricMonitorService *)self _getGPUTotalTime];
  v5 = v4;
  [(PLPowerMetricMonitorService *)self prevGpuTotalTime];
  if (v6 != 0.0)
  {
    [(PLPowerMetricMonitorService *)self prevGpuTotalTime];
    [(PLPowerMetricMonitorService *)self setGpuTotalTime:v5 - v7];
  }

  [(PLPowerMetricMonitorService *)self setPrevGpuTotalTime:v5];
}

- (void)_sampleCoalitions
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  trackedProcesses = [(PLPowerMetricMonitorService *)self trackedProcesses];
  v5 = [trackedProcesses count];

  if (v5)
  {
    trackedProcesses2 = [(PLPowerMetricMonitorService *)self trackedProcesses];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke;
    v7[3] = &unk_279A5C448;
    v7[4] = self;
    [trackedProcesses2 enumerateKeysAndObjectsUsingBlock:v7];
  }
}

void __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = malloc_type_malloc(0x168uLL, 0x1000040DAE56E47uLL);
  [v6 coalitionID];
  v8 = coalition_info_resource_usage();
  if (!v8)
  {
    v10 = objc_alloc_init(PLCoalitionSample);
    [(PLCoalitionSample *)v10 setInstructions:v7[31]];
    [(PLCoalitionSample *)v10 setPInstructions:v7[35]];
    [(PLCoalitionSample *)v10 setBytesread:v7[6]];
    [(PLCoalitionSample *)v10 setByteswritten:v7[7]];
    [(PLCoalitionSample *)v10 setGpuTime:v7[8]];
    [(PLCoalitionSample *)v10 setGpuEnergy:v7[42] + v7[41] - v7[43]];
    [(PLCoalitionSample *)v10 setCpuTime:v7[9] + v7[3] - v7[10]];
    [(PLCoalitionSample *)v10 setAneEnergy:v7[39]];
    [(PLCoalitionSample *)v10 setAneTime:v7[38]];
    [(PLCoalitionSample *)v10 setCpuEnergy:v7[20] + v7[11] - v7[21]];
    [(PLCoalitionSample *)v10 setQOSUtility:v7[27]];
    [(PLCoalitionSample *)v10 setQOSBackground:v7[26]];
    [(PLCoalitionSample *)v10 setQOSUserInitiated:v7[29]];
    [(PLCoalitionSample *)v10 setQOSUserInteractive:v7[30]];
    [(PLCoalitionSample *)v10 setQOSDefault:v7[28]];
    [(PLCoalitionSample *)v10 setQOSMaintenance:v7[25]];
    v11 = PLLogPowerMetricMonitor([(PLCoalitionSample *)v10 setQOSUnspecified:v7[24]]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke_cold_2();
    }

    v12 = [v6 coalitionSample];
    v13 = PLLogPowerMetricMonitor(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      v157 = v6;
      if (v14)
      {
        __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke_cold_3();
      }

      v15 = [(PLCoalitionSample *)v10 instructions];
      v146 = v15 - [v12 instructions];
      v16 = [(PLCoalitionSample *)v10 pInstructions];
      v142 = v16 - [v12 pInstructions];
      v17 = [(PLCoalitionSample *)v10 bytesread];
      v138 = v17 - [v12 bytesread];
      v18 = [(PLCoalitionSample *)v10 byteswritten];
      v134 = v18 - [v12 byteswritten];
      v19 = [(PLCoalitionSample *)v10 gpuTime];
      v20 = v19 - [v12 gpuTime];
      v21 = [(PLCoalitionSample *)v10 gpuEnergy];
      v130 = v21 - [v12 gpuEnergy];
      v22 = [(PLCoalitionSample *)v10 cpuTime];
      v23 = v22 - [v12 cpuTime];
      v24 = [(PLCoalitionSample *)v10 aneEnergy];
      v128 = v24 - [v12 aneEnergy];
      v25 = [(PLCoalitionSample *)v10 aneTime];
      v126 = v25 - [v12 aneTime];
      v26 = [(PLCoalitionSample *)v10 cpuEnergy];
      v132 = v26 - [v12 cpuEnergy];
      v27 = [(PLCoalitionSample *)v10 QOSUtility];
      v136 = v27 - [v12 QOSUtility];
      v28 = [(PLCoalitionSample *)v10 QOSBackground];
      v140 = v28 - [v12 QOSBackground];
      v29 = [(PLCoalitionSample *)v10 QOSUserInitiated];
      v144 = v29 - [v12 QOSUserInitiated];
      v30 = [(PLCoalitionSample *)v10 QOSUserInteractive];
      v148 = v30 - [v12 QOSUserInteractive];
      v31 = [(PLCoalitionSample *)v10 QOSDefault];
      v150 = v31 - [v12 QOSDefault];
      v32 = [(PLCoalitionSample *)v10 QOSMaintenance];
      v152 = v32 - [v12 QOSMaintenance];
      v33 = [(PLCoalitionSample *)v10 QOSUnspecified];
      v154 = v33 - [v12 QOSUnspecified];
      v125 = [MEMORY[0x277CBEAA8] monotonicDate];
      v159 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
      v155 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
      v34 = MEMORY[0x277CCABB0];
      [*(a1 + 32) _computeGPUCostWithGPUSec:v159];
      v153 = [v34 numberWithDouble:?];
      v35 = MEMORY[0x277CCABB0];
      [*(a1 + 32) _computeCPUCostWithCPUTicks:v155];
      v158 = [v35 numberWithDouble:?];
      v36 = MEMORY[0x277CCABB0];
      v37 = [*(a1 + 32) currQueryTime];
      v38 = [*(a1 + 32) lastQueryTime];
      [v37 timeIntervalSinceDate:v38];
      v39 = [v36 numberWithDouble:?];
      v40 = [*(a1 + 32) metrics];
      [v40 processMetrics];
      v41 = v156 = v12;
      [v41 objectForKeyedSubscript:v5];
      v42 = v160 = v5;
      [v42 setSampleTime:v39];

      v43 = [MEMORY[0x277D3A108] sampleWithValue:v153 timestamp:v125];
      v44 = [*(a1 + 32) metrics];
      v45 = [v44 processMetrics];
      v46 = [v45 objectForKeyedSubscript:v160];
      [v46 setGpuCost:v43];

      v47 = [MEMORY[0x277D3A108] sampleWithValue:v158 timestamp:v125];
      v48 = [*(a1 + 32) metrics];
      v49 = [v48 processMetrics];
      v50 = [v49 objectForKeyedSubscript:v160];
      [v50 setCpuCost:v47];

      v51 = [MEMORY[0x277D3A108] sampleWithValue:v159 timestamp:v125];
      v52 = [*(a1 + 32) metrics];
      v53 = [v52 processMetrics];
      v54 = [v53 objectForKeyedSubscript:v160];
      [v54 setGpuTime:v51];

      v147 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v146];
      v55 = [MEMORY[0x277D3A108] sampleWithValue:v147 timestamp:v125];
      v56 = [*(a1 + 32) metrics];
      v57 = [v56 processMetrics];
      v58 = [v57 objectForKeyedSubscript:v160];
      [v58 setCpuInstructions:v55];

      v143 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v142];
      v59 = [MEMORY[0x277D3A108] sampleWithValue:v143 timestamp:v125];
      v60 = [*(a1 + 32) metrics];
      v61 = [v60 processMetrics];
      v62 = [v61 objectForKeyedSubscript:v160];
      [v62 setCpuPInstructions:v59];

      v139 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v138];
      v63 = [MEMORY[0x277D3A108] sampleWithValue:v139 timestamp:v125];
      v64 = [*(a1 + 32) metrics];
      v65 = [v64 processMetrics];
      v66 = [v65 objectForKeyedSubscript:v160];
      [v66 setBytesRead:v63];

      v135 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v134];
      v67 = [MEMORY[0x277D3A108] sampleWithValue:v135 timestamp:v125];
      v68 = [*(a1 + 32) metrics];
      v69 = [v68 processMetrics];
      v70 = [v69 objectForKeyedSubscript:v160];
      [v70 setBytesWritten:v67];

      v129 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v128];
      v71 = [MEMORY[0x277D3A108] sampleWithValue:v129 timestamp:v125];
      v72 = [*(a1 + 32) metrics];
      v73 = [v72 processMetrics];
      v74 = [v73 objectForKeyedSubscript:v160];
      [v74 setAneEnergy:v71];

      v75 = MEMORY[0x277CCABB0];
      [PLUtilities secondsFromMachTime:v126];
      v127 = [v75 numberWithDouble:?];
      v76 = [MEMORY[0x277D3A108] sampleWithValue:v127 timestamp:v125];
      v77 = [*(a1 + 32) metrics];
      v78 = [v77 processMetrics];
      v79 = [v78 objectForKeyedSubscript:v160];
      [v79 setAneTime:v76];

      v131 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v130];
      v80 = [MEMORY[0x277D3A108] sampleWithValue:v131 timestamp:v125];
      v81 = [*(a1 + 32) metrics];
      v82 = [v81 processMetrics];
      v83 = [v82 objectForKeyedSubscript:v160];
      [v83 setGpuEnergy:v80];

      v133 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v132];
      v84 = [MEMORY[0x277D3A108] sampleWithValue:v133 timestamp:v125];
      v85 = [*(a1 + 32) metrics];
      v86 = [v85 processMetrics];
      v87 = [v86 objectForKeyedSubscript:v160];
      [v87 setCpuEnergy:v84];

      v88 = MEMORY[0x277CCABB0];
      [PLUtilities secondsFromMachTime:v136];
      v137 = [v88 numberWithDouble:?];
      v89 = [MEMORY[0x277D3A108] sampleWithValue:v137 timestamp:v125];
      v90 = [*(a1 + 32) metrics];
      v91 = [v90 processMetrics];
      v92 = [v91 objectForKeyedSubscript:v160];
      [v92 setQosUtility:v89];

      v93 = MEMORY[0x277CCABB0];
      [PLUtilities secondsFromMachTime:v140];
      v141 = [v93 numberWithDouble:?];
      v94 = [MEMORY[0x277D3A108] sampleWithValue:v141 timestamp:v125];
      v95 = [*(a1 + 32) metrics];
      v96 = [v95 processMetrics];
      v97 = [v96 objectForKeyedSubscript:v160];
      [v97 setQosBackground:v94];

      v98 = MEMORY[0x277CCABB0];
      [PLUtilities secondsFromMachTime:v144];
      v145 = [v98 numberWithDouble:?];
      v99 = [MEMORY[0x277D3A108] sampleWithValue:v145 timestamp:v125];
      v100 = [*(a1 + 32) metrics];
      v101 = [v100 processMetrics];
      v102 = [v101 objectForKeyedSubscript:v160];
      [v102 setQosUserInitiated:v99];

      v103 = MEMORY[0x277CCABB0];
      [PLUtilities secondsFromMachTime:v148];
      v149 = [v103 numberWithDouble:?];
      v104 = [MEMORY[0x277D3A108] sampleWithValue:v149 timestamp:v125];
      v105 = [*(a1 + 32) metrics];
      v106 = [v105 processMetrics];
      v107 = [v106 objectForKeyedSubscript:v160];
      [v107 setQosUserInteractive:v104];

      v108 = MEMORY[0x277CCABB0];
      [PLUtilities secondsFromMachTime:v150];
      v151 = [v108 numberWithDouble:?];
      v109 = [MEMORY[0x277D3A108] sampleWithValue:v151 timestamp:v125];
      v110 = [*(a1 + 32) metrics];
      v111 = [v110 processMetrics];
      v112 = [v111 objectForKeyedSubscript:v160];
      [v112 setQosDefault:v109];

      v113 = MEMORY[0x277CCABB0];
      [PLUtilities secondsFromMachTime:v152];
      v114 = [v113 numberWithDouble:?];
      v115 = [MEMORY[0x277D3A108] sampleWithValue:v114 timestamp:v125];
      v116 = [*(a1 + 32) metrics];
      v117 = [v116 processMetrics];
      v118 = [v117 objectForKeyedSubscript:v160];
      [v118 setQosMaintenance:v115];

      v119 = MEMORY[0x277CCABB0];
      [PLUtilities secondsFromMachTime:v154];
      v120 = [v119 numberWithDouble:?];
      v121 = [MEMORY[0x277D3A108] sampleWithValue:v120 timestamp:v125];
      v13 = v125;
      v122 = [*(a1 + 32) metrics];
      v123 = [v122 processMetrics];
      v124 = [v123 objectForKeyedSubscript:v160];
      [v124 setQosUnspecified:v121];

      v12 = v156;
      v5 = v160;

      v6 = v157;
    }

    else if (v14)
    {
      __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke_cold_4();
    }

    [v6 setCoalitionSample:v10];
    goto LABEL_15;
  }

  v9 = PLLogPowerMetricMonitor(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke_cold_1();
  }

  if (v7)
  {
LABEL_15:
    free(v7);
  }
}

- (void)_calculateAccumSystemLoad:(id)load
{
  loadCopy = load;
  [(PLPowerMetricMonitorService *)self accumSystemLoad];
  v6 = v5;
  v7 = [loadCopy objectForKeyedSubscript:@"zSLa"];
  v8 = [loadCopy objectForKeyedSubscript:@"zSLc"];
  if (v6 != 0.0)
  {
    v9 = MEMORY[0x277CCABB0];
    [v7 doubleValue];
    v11 = v10;
    [(PLPowerMetricMonitorService *)self accumSystemLoad];
    v13 = [v9 numberWithDouble:v11 - v12];
    v14 = MEMORY[0x277CCABB0];
    [v8 doubleValue];
    v16 = v15;
    [(PLPowerMetricMonitorService *)self accumSystemLoadCount];
    v18 = [v14 numberWithDouble:v16 - v17];
    [v18 doubleValue];
    v20 = v19;
    doubleValue = [v13 doubleValue];
    if (v20 == 0.0 || v22 == 0.0)
    {
      v37 = PLLogPowerMetricMonitor(doubleValue);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        [PLPowerMetricMonitorService _calculateAccumSystemLoad:];
      }

      v31 = [loadCopy objectForKeyedSubscript:@"zSLi"];
    }

    else
    {
      [v18 doubleValue];
      v24 = v23;
      doubleValue2 = [v13 doubleValue];
      if (v24 < 0.0 || v26 < 0.0)
      {
        v43 = PLLogPowerMetricMonitor(doubleValue2);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [PLPowerMetricMonitorService _calculateAccumSystemLoad:];
        }

        metrics = [(PLPowerMetricMonitorService *)self metrics];
        [metrics setAccumSystemLoad:0];

        v32 = 0;
        goto LABEL_15;
      }

      v27 = MEMORY[0x277CCABB0];
      [v13 doubleValue];
      v29 = v28;
      [v18 doubleValue];
      v31 = [v27 numberWithDouble:v29 / v30];
    }

    v38 = v31;
    v32 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v31];

    v39 = MEMORY[0x277D3A108];
    entryDate = [loadCopy entryDate];
    v41 = [v39 sampleWithValue:v32 timestamp:entryDate];
    metrics2 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics2 setAccumSystemLoad:v41];

LABEL_15:
    [v7 doubleValue];
    [(PLPowerMetricMonitorService *)self setAccumSystemLoad:?];
    [v8 doubleValue];
    [(PLPowerMetricMonitorService *)self setAccumSystemLoadCount:?];

    goto LABEL_16;
  }

  [v7 doubleValue];
  [(PLPowerMetricMonitorService *)self setAccumSystemLoad:?];
  [v8 doubleValue];
  [(PLPowerMetricMonitorService *)self setAccumSystemLoadCount:?];
  v32 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:0];
  v33 = MEMORY[0x277D3A108];
  entryDate2 = [loadCopy entryDate];
  v35 = [v33 sampleWithValue:v32 timestamp:entryDate2];
  metrics3 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics3 setAccumSystemLoad:v35];

LABEL_16:
}

- (BOOL)isPluggedIn
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PLPowerMetricMonitorService_isPluggedIn__block_invoke;
  v5[3] = &unk_279A5C3D0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(monitorQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void *__42__PLPowerMetricMonitorService_isPluggedIn__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) chargerConnected];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_setUpSleepWakeMonitoring
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v5 = PLLogPowerMetricMonitor(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, "Setting up sleep/wake monitoring.", buf, 2u);
  }

  systemPowerPortRef = [(PLPowerMetricMonitorService *)self systemPowerPortRef];
  if (systemPowerPortRef)
  {
    v7 = PLLogPowerMetricMonitor(systemPowerPortRef);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
LABEL_7:

      return;
    }

    *v18 = 0;
    v8 = "Sleep/wake monitoring already set up.";
    v9 = v18;
LABEL_6:
    _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
    goto LABEL_7;
  }

  v10 = PLLogPowerMetricMonitor([(PLPowerMetricMonitorService *)self setCurrentPowerState:1]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&dword_25EE51000, v10, OS_LOG_TYPE_INFO, "Current State Initialized: Awake", v17, 2u);
  }

  [(PLPowerMetricMonitorService *)self setRootDomainConnect:IORegisterForSystemPower(self, &self->_systemPowerPortRef, PowerChangedCallback_0, &self->_pmNotifier)];
  rootDomainConnect = [(PLPowerMetricMonitorService *)self rootDomainConnect];
  if (rootDomainConnect)
  {
    rootDomainConnect = [(PLPowerMetricMonitorService *)self systemPowerPortRef];
    if (rootDomainConnect)
    {
      systemPowerPortRef2 = [(PLPowerMetricMonitorService *)self systemPowerPortRef];
      monitorQueue2 = [(PLPowerMetricMonitorService *)self monitorQueue];
      IONotificationPortSetDispatchQueue(systemPowerPortRef2, monitorQueue2);

      v7 = PLLogPowerMetricMonitor(v14);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_7;
      }

      v16 = 0;
      v8 = "Successfully registered for sleep/wake notifications.";
      v9 = &v16;
      goto LABEL_6;
    }
  }

  v15 = PLLogPowerMetricMonitor(rootDomainConnect);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [PLPowerMetricMonitorService _setUpSleepWakeMonitoring];
  }

  self->_rootDomainConnect = 0;
  self->_systemPowerPortRef = 0;
  self->_pmNotifier = 0;
}

- (void)_tearDownSleepWakeMonitoring
{
  v14 = *MEMORY[0x277D85DE8];
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v5 = PLLogPowerMetricMonitor(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, "Tearing down sleep/wake monitoring.", &v12, 2u);
  }

  if ([(PLPowerMetricMonitorService *)self systemPowerPortRef])
  {
    IONotificationPortSetDispatchQueue([(PLPowerMetricMonitorService *)self systemPowerPortRef], 0);
    IONotificationPortDestroy([(PLPowerMetricMonitorService *)self systemPowerPortRef]);
    [(PLPowerMetricMonitorService *)self setSystemPowerPortRef:0];
  }

  rootDomainConnect = [(PLPowerMetricMonitorService *)self rootDomainConnect];
  if (rootDomainConnect)
  {
    IODeregisterForSystemPower(&self->_pmNotifier);
    IOObjectRelease([(PLPowerMetricMonitorService *)self rootDomainConnect]);
    [(PLPowerMetricMonitorService *)self setRootDomainConnect:0];
    rootDomainConnect = [(PLPowerMetricMonitorService *)self setPmNotifier:0];
  }

  v7 = PLLogPowerMetricMonitor(rootDomainConnect);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_INFO, "Sleep/wake monitoring teardown complete.", &v12, 2u);
  }

  currentPowerState = [(PLPowerMetricMonitorService *)self currentPowerState];
  if (currentPowerState)
  {
    v9 = PLLogPowerMetricMonitor(currentPowerState);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      currentPowerState2 = [(PLPowerMetricMonitorService *)self currentPowerState];
      v11 = "Sleeping";
      if (currentPowerState2 == 1)
      {
        v11 = "Awake";
      }

      v12 = 136446210;
      v13 = v11;
      _os_log_impl(&dword_25EE51000, v9, OS_LOG_TYPE_INFO, "Current State Final: %{public}s", &v12, 0xCu);
    }
  }

  [(PLPowerMetricMonitorService *)self setCurrentPowerState:0];
}

- (void)_handlePowerNotification:(unsigned int)notification argument:(void *)argument
{
  v21 = *MEMORY[0x277D85DE8];
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v9 = PLLogPowerMetricMonitor(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _handlePowerNotification:argument:];
  }

  currentPowerState = [(PLPowerMetricMonitorService *)self currentPowerState];
  HIDWORD(v12) = notification + 536870288;
  LODWORD(v12) = notification + 536870288;
  v11 = v12 >> 4;
  v13 = PLLogPowerMetricMonitor(currentPowerState);
  v14 = v13;
  if (v11 <= 1)
  {
    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_24;
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

      *v20 = 0;
      v15 = "SystemWillSleep received.";
    }

    else
    {
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
LABEL_23:

        [(PLPowerMetricMonitorService *)self setCurrentPowerState:2];
        IOAllowPowerChange([(PLPowerMetricMonitorService *)self rootDomainConnect], argument);
        goto LABEL_27;
      }

      *v20 = 0;
      v15 = "CanSystemSleep received.";
    }

    _os_log_impl(&dword_25EE51000, v14, OS_LOG_TYPE_INFO, v15, v20, 2u);
    goto LABEL_23;
  }

  switch(v11)
  {
    case 2:
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&dword_25EE51000, v14, OS_LOG_TYPE_INFO, "SystemWillNotSleep received.", v20, 2u);
      }

      if ([(PLPowerMetricMonitorService *)self currentPowerState]== 2)
      {
        [(PLPowerMetricMonitorService *)self setCurrentPowerState:1];
      }

      break;
    case 9:
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&dword_25EE51000, v14, OS_LOG_TYPE_INFO, "SystemHasPoweredOn received.", v20, 2u);
      }

      [(PLPowerMetricMonitorService *)self setCurrentPowerState:1];
      [(PLPowerMetricMonitorService *)self _calculateAndStoreSleepDuration];
      break;
    case 11:
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&dword_25EE51000, v14, OS_LOG_TYPE_INFO, "SystemWillPowerOn received.", v20, 2u);
      }

LABEL_26:

      break;
    default:
LABEL_24:
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLPowerMetricMonitorService _handlePowerNotification:argument:];
      }

      goto LABEL_26;
  }

LABEL_27:
  if ([(PLPowerMetricMonitorService *)self currentPowerState]!= currentPowerState)
  {
    currentPowerState2 = [(PLPowerMetricMonitorService *)self currentPowerState];
    if (currentPowerState2)
    {
      v17 = PLLogPowerMetricMonitor(currentPowerState2);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        currentPowerState3 = [(PLPowerMetricMonitorService *)self currentPowerState];
        v19 = "Sleeping";
        if (currentPowerState3 == 1)
        {
          v19 = "Awake";
        }

        *v20 = 136446210;
        *&v20[4] = v19;
        _os_log_impl(&dword_25EE51000, v17, OS_LOG_TYPE_INFO, "Current State Changed: %{public}s", v20, 0xCu);
      }
    }
  }
}

- (void)_calculateAndStoreSleepDuration
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (unint64_t)queryLastSleepTimeMCT
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__PLPowerMetricMonitorService_queryLastSleepTimeMCT__block_invoke;
  v6[3] = &unk_279A5C3D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(monitorQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__52__PLPowerMetricMonitorService_queryLastSleepTimeMCT__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) lastSleepTime];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)queryLastWakeTimeMCT
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__PLPowerMetricMonitorService_queryLastWakeTimeMCT__block_invoke;
  v6[3] = &unk_279A5C3D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(monitorQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__51__PLPowerMetricMonitorService_queryLastWakeTimeMCT__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) lastWakeTime];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (timeval)lastRawSleepTime
{
  objc_copyStruct(v4, &self->_lastRawSleepTime, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.tv_usec = v3;
  result.tv_sec = v2;
  return result;
}

void __54__PLPowerMetricMonitorService_allClientsDidDisconnect__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__PLPowerMetricMonitorService_collectMetricsWithTimeout___block_invoke_273_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__PLPowerMetricMonitorService_addMonitoredProcessWithPID_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __64__PLPowerMetricMonitorService_addMonitoredProcessWithPID_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)addMonitoredProcessesWithPIDs:(void *)a3 error:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 description];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_25EE51000, a4, OS_LOG_TYPE_ERROR, "Error while trying to addMonitoredProcessWithPID: %@", a1, 0xCu);
}

void __61__PLPowerMetricMonitorService_removeMonitoredProcessWithPID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __61__PLPowerMetricMonitorService_removeMonitoredProcessWithPID___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_registerNotificationWithAgent:type:tableName:isProcessSpecific:minRequestInterval:block:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_queryCurrentAudioState
{
  [self audioIsActive];
  [a2 count];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

- (void)_getCurrentPlayingSessions
{
  [self count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_handleSessionPlayingDidChange:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 userInfo];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_collectMetricsWithTimeout:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __76__PLPowerMetricMonitorService__collectMetricsWithTimeout_completionHandler___block_invoke_3_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 32) entryKeysRequested];
  v3 = [*(a1 + 32) entryKeysCollected];
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)_agentDidUpdateWithEntryKey:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_parseEnergyModelOrPMPMetricsFromSample:withSampleDuration:sourceChannel:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_parseSMCMetricsFromEntry:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_parseProcessNetworkMetricsFromEntry:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_parseApplicationMetricsFromEntry:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_computeDisplayCostWithAvgRed:avgGreen:avgBlue:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_computeNetworkingCostWithWifiIn:wifiOut:cellIn:cellOut:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_computeLocationCostWithWifiCost:gpsCost:cellCost:skyhookCost:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_computeGPUCostWithGPUSec:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_startMetricCollectionTimerWithInterval:block:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_7_1();
  _os_log_fault_impl(&dword_25EE51000, v0, OS_LOG_TYPE_FAULT, "Interval %f s is lower than minimum %f s; aborting", v1, 0x16u);
}

- (void)_getGPUTotalTime
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_25EE51000, v1, OS_LOG_TYPE_DEBUG, "sampling coalitions for %@ -> %@", v2, 0x16u);
}

void __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_calculateAccumSystemLoad:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end