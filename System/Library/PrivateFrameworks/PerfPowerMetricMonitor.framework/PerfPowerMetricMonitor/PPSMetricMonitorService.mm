@interface PPSMetricMonitorService
+ (id)sharedInstance;
- (BOOL)_canStartMonitoringForClient:(id)client withError:(id *)error;
- (BOOL)_getHeadlessClientStatus;
- (BOOL)_hasEntitlements:(id)entitlements;
- (BOOL)_isProcessAlive:(int)alive;
- (BOOL)_shouldAcceptNewConnection:(id)connection;
- (BOOL)_shouldAcceptheadlessClientConnection:(id)connection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PPSMetricMonitorService)init;
- (PPSMetricMonitorServiceDelegate)delegate;
- (double)_postAccountingProcessesForSubsystem:(int64_t)subsystem processes:(id)processes metrics:(id)metrics;
- (double)_quantizePowerMetric:(double)metric;
- (id)_checkIfProcessesAreAlive:(id)alive;
- (id)_findProcesses:(id)processes;
- (id)fullProcessNameForPid:(int)pid;
- (void)_addProcessesNeededForAccounting:(id)accounting;
- (void)_cancelHeadlessTimeoutTimer;
- (void)_cancelProcessPollingTimer;
- (void)_cancelQueryTimer;
- (void)_collectMetricsAndUpdateHeadlessClient;
- (void)_collectMetricsWithTimeout:(int)timeout;
- (void)_collectMetricsWithTimeout:(int)timeout andUpdateClient:(id)client;
- (void)_emitPowerSignpostWithMetric:(id)metric value:(id)value;
- (void)_emitPowerSignpostWithMetric:(id)metric value:(id)value pid:(id)pid;
- (void)_handleConnectionEndedWithClient:(id)client;
- (void)_pollForProcessNames:(id)names;
- (void)_sendMetricMonitorTimeoutNotification;
- (void)_startHeadlessTimeoutTimer;
- (void)_startProcessPollingTimer:(id)timer;
- (void)_updateAndTrimSleepWakeHistoryRelativeTo:(unint64_t)to;
- (void)collectMetricsOnDemand:(id)demand;
- (void)emitPowerMetrics:(id)metrics ofClient:(id)client;
- (void)emitTracingToolPowerMetrics:(id)metrics ofClient:(id)client;
- (void)finishMonitoringAndSendMetrics;
- (void)headlessClientMonitoredProcesses:(id)processes;
- (void)isMonitoringForHeadlessWithCompletion:(id)completion;
- (void)setHeadlessQueryTimer:(double)timer;
- (void)setUpWithConfiguration:(id)configuration completion:(id)completion;
- (void)startHeadlessUpdateTimer:(double)timer;
- (void)startMonitoringPids:(id)pids forClient:(id)client withError:(id *)error;
- (void)startMonitoringProcessWithName:(id)name completion:(id)completion;
- (void)startMonitoringProcessWithPID:(id)d completion:(id)completion;
- (void)startMonitoringProcessesWithName:(id)name completion:(id)completion;
- (void)startMonitoringProcessesWithNames:(id)names withPIDs:(id)ds completion:(id)completion;
- (void)startMonitoringProcessesWithPID:(id)d completion:(id)completion;
- (void)startMonitoringSystemMetricsWithCompletion:(id)completion;
- (void)startXPCListener;
- (void)stopMonitoringHeadlessClient;
@end

@implementation PPSMetricMonitorService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[PPSMetricMonitorService sharedInstance];
  }

  v3 = sharedInstance_service;

  return v3;
}

uint64_t __41__PPSMetricMonitorService_sharedInstance__block_invoke()
{
  sharedInstance_service = objc_alloc_init(PPSMetricMonitorService);

  return MEMORY[0x2821F96F8]();
}

- (PPSMetricMonitorService)init
{
  v20.receiver = self;
  v20.super_class = PPSMetricMonitorService;
  v2 = [(PPSMetricMonitorService *)&v20 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    clients = v2->_clients;
    v2->_clients = dictionary;

    v2->_hasHeadlessClient = 0;
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.PerfPowerMetricMonitor.monitorQueue", v5);
    metricQueryQueue = v2->_metricQueryQueue;
    v2->_metricQueryQueue = v6;

    v2->_updateInterval = 0.0;
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    lastQueryDate = v2->_lastQueryDate;
    v2->_lastQueryDate = distantPast;

    array = [MEMORY[0x277CBEB18] array];
    sleepWakeHistory = v2->_sleepWakeHistory;
    v2->_sleepWakeHistory = array;

    monitoredStartTime = v2->_monitoredStartTime;
    v2->_monitoredStartTime = 0;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    headlessClientTrackedProcesses = v2->_headlessClientTrackedProcesses;
    v2->_headlessClientTrackedProcesses = dictionary2;

    v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"backboardd", @"videocodecd", 0}];
    postAccountingProcessesScreenState = v2->_postAccountingProcessesScreenState;
    v2->_postAccountingProcessesScreenState = v15;

    v17 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"audiomxd", 0}];
    postAccountingAudio = v2->_postAccountingAudio;
    v2->_postAccountingAudio = v17;
  }

  return v2;
}

- (void)startXPCListener
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isMonitoringForHeadlessWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService isMonitoringForHeadlessWithCompletion:];
  }

  completionCopy[2](completionCopy, [(PPSMetricMonitorService *)self _getHeadlessClientStatus]);
}

- (void)headlessClientMonitoredProcesses:(id)processes
{
  processesCopy = processes;
  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__PPSMetricMonitorService_headlessClientMonitoredProcesses___block_invoke;
  v7[3] = &unk_278847B70;
  v7[4] = self;
  v8 = processesCopy;
  v6 = processesCopy;
  dispatch_sync(metricQueryQueue, v7);
}

void __60__PPSMetricMonitorService_headlessClientMonitoredProcesses___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  v3 = [v2 objectForKeyedSubscript:&unk_2843008A0];

  if (v3)
  {
    v4 = [*(a1 + 32) clients];
    v9 = [v4 objectForKeyedSubscript:&unk_2843008A0];

    v5 = *(a1 + 40);
    v6 = [v9 monitoredProcessNames];
    v7 = [v6 copy];
    (*(v5 + 16))(v5, v7);
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);

    v8();
  }
}

- (void)stopMonitoringHeadlessClient
{
  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PPSMetricMonitorService_stopMonitoringHeadlessClient__block_invoke;
  block[3] = &unk_278847A30;
  block[4] = self;
  dispatch_sync(metricQueryQueue, block);
}

void __55__PPSMetricMonitorService_stopMonitoringHeadlessClient__block_invoke(uint64_t a1)
{
  v2 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __55__PPSMetricMonitorService_stopMonitoringHeadlessClient__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) clients];
  v4 = [v3 objectForKeyedSubscript:&unk_2843008A0];

  if (v4)
  {
    [*(a1 + 32) _handleConnectionEndedWithClient:v4];
    [*(a1 + 32) _cancelQueryTimer];
    v5 = [*(a1 + 32) delegate];
    [v5 disableAccounting];
  }

  v6 = [*(a1 + 32) clients];
  v7 = [v6 count];

  if (!v7)
  {
    v8 = [*(a1 + 32) delegate];
    [v8 allClientsDidDisconnect];
  }

  [*(a1 + 32) setHasHeadlessClient:0];
  [*(a1 + 32) _cancelHeadlessTimeoutTimer];
  v9 = [*(a1 + 32) monitoredStartTime];

  if (v9)
  {
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [*(a1 + 32) monitoredStartTime];
    [v10 timeIntervalSinceDate:v11];

    [*(a1 + 32) setMonitoredStartTime:0];
    v12 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __55__PPSMetricMonitorService_stopMonitoringHeadlessClient__block_invoke_cold_2();
    }

    AnalyticsSendEventLazy();
  }
}

id __55__PPSMetricMonitorService_stopMonitoringHeadlessClient__block_invoke_112(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"monitoringDuration";
  v1 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (BOOL)_getHeadlessClientStatus
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__PPSMetricMonitorService__getHeadlessClientStatus__block_invoke;
  v5[3] = &unk_278847B98;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(metricQueryQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void *__51__PPSMetricMonitorService__getHeadlessClientStatus__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) hasHeadlessClient];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)_postAccountingProcessesForSubsystem:(int64_t)subsystem processes:(id)processes metrics:(id)metrics
{
  v34 = *MEMORY[0x277D85DE8];
  processesCopy = processes;
  metricsCopy = metrics;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [processesCopy countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    v12 = 0.0;
    v27 = processesCopy;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(processesCopy);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        delegate = [(PPSMetricMonitorService *)self delegate];
        v16 = [delegate pidForProcessName:v14];

        if (v16 >= 1)
        {
          processMetrics = [metricsCopy processMetrics];
          v18 = [MEMORY[0x277CCABB0] numberWithInt:v16];
          v19 = [processMetrics objectForKey:v18];

          if (v19)
          {
            if (subsystem == 1)
            {
              processMetrics2 = [metricsCopy processMetrics];
              v21 = [MEMORY[0x277CCABB0] numberWithInt:v16];
              v22 = [processMetrics2 objectForKeyedSubscript:v21];
              gpuEnergy = [v22 gpuEnergy];
            }

            else
            {
              if (subsystem)
              {
                continue;
              }

              processMetrics2 = [metricsCopy processMetrics];
              v21 = [MEMORY[0x277CCABB0] numberWithInt:v16];
              v22 = [processMetrics2 objectForKeyedSubscript:v21];
              gpuEnergy = [v22 cpuEnergy];
            }

            v24 = gpuEnergy;
            value = [gpuEnergy value];
            v12 = v12 + [value unsignedLongLongValue] / 1000000000.0;

            processesCopy = v27;
          }
        }
      }

      v10 = [processesCopy countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (!v10)
      {
        goto LABEL_17;
      }
    }
  }

  v12 = 0.0;
LABEL_17:

  return v12;
}

- (double)_quantizePowerMetric:(double)metric
{
  v3 = metric * 30.0;
  delegate = [(PPSMetricMonitorService *)self delegate];
  [delegate metricNormalizer];
  v6 = v3 / v5;

  result = 0.0;
  if (v6 >= 0.1)
  {
    result = 0.1;
    if (v6 >= 0.5)
    {
      if (v6 >= 30.0)
      {
        return round((v6 + -30.0) / 3.0) * 3.0 + 30.0;
      }

      else
      {
        return round(v6);
      }
    }
  }

  return result;
}

- (void)emitTracingToolPowerMetrics:(id)metrics ofClient:(id)client
{
  v264 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  clientCopy = client;
  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  dispatch_assert_queue_V2(metricQueryQueue);

  v9 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService emitTracingToolPowerMetrics:ofClient:];
  }

  v10 = mach_continuous_time();
  previousMct = [(PPSMetricMonitorService *)self previousMct];
  delegate = [(PPSMetricMonitorService *)self delegate];
  v13 = [delegate getMachTimeFromSeconds:1.5];

  previousGPUMct = [(PPSMetricMonitorService *)self previousGPUMct];
  v15 = v10 - v13;
  if (v10 < v13)
  {
    v15 = 0;
  }

  v227 = v15;
  networkingTrackPreviousMct = [(PPSMetricMonitorService *)self networkingTrackPreviousMct];
  if (v10 <= previousMct)
  {
    v115 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitorService emitTracingToolPowerMetrics:ofClient:];
    }

    [(PPSMetricMonitorService *)self setPreviousMct:v10];
  }

  else
  {
    v17 = networkingTrackPreviousMct + 1;
    if (networkingTrackPreviousMct + 1 >= previousMct)
    {
      v18 = previousMct;
    }

    else
    {
      v18 = networkingTrackPreviousMct + 1;
    }

    if (previousGPUMct >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = previousGPUMct;
    }

    [(PPSMetricMonitorService *)self _updateAndTrimSleepWakeHistoryRelativeTo:v19];
    sampleTime = [metricsCopy sampleTime];
    [sampleTime doubleValue];
    v22 = v21;

    [(PPSMetricMonitorService *)self _postAccountingProcessesForSubsystem:0 processes:self->_postAccountingProcessesScreenState metrics:metricsCopy];
    v225 = v23;
    [(PPSMetricMonitorService *)self _postAccountingProcessesForSubsystem:1 processes:self->_postAccountingProcessesScreenState metrics:metricsCopy];
    v226 = v24;
    [(PPSMetricMonitorService *)self _postAccountingProcessesForSubsystem:0 processes:self->_postAccountingAudio metrics:metricsCopy];
    v26 = v25;
    v232 = 0u;
    v233 = 0u;
    v234 = 0u;
    v235 = 0u;
    v155 = clientCopy;
    obj = [clientCopy monitoredPIDs];
    v27 = [obj countByEnumeratingWithState:&v232 objects:v263 count:16];
    v229 = v10;
    if (v27)
    {
      v28 = v27;
      v222 = 0;
      v218 = 0;
      v156 = previousGPUMct + 1;
      v221 = v10 - v17;
      v231 = *v233;
      selfCopy = self;
      v220 = metricsCopy;
      v224 = previousGPUMct;
      v157 = v17;
      do
      {
        v29 = 0;
        v228 = v28;
        do
        {
          if (*v233 != v231)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v232 + 1) + 8 * v29);
          processMetrics = [metricsCopy processMetrics];
          v32 = [processMetrics objectForKey:v30];

          if (v32)
          {
            headlessClientTrackedProcesses = [(PPSMetricMonitorService *)self headlessClientTrackedProcesses];
            v34 = [headlessClientTrackedProcesses objectForKeyedSubscript:v30];

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ([v34 isEqualToString:@"videocodecd"] & 1) == 0 && (objc_msgSend(v34, "isEqualToString:", @"backboardd") & 1) == 0 && (objc_msgSend(v34, "isEqualToString:", @"audiomxd") & 1) == 0)
            {
              processMetrics2 = [metricsCopy processMetrics];
              v36 = [processMetrics2 objectForKeyedSubscript:v30];
              weightOnScreen = [v36 weightOnScreen];
              [weightOnScreen doubleValue];
              v39 = v38;

              if (v39 <= 0.0)
              {
                v40 = 0.0;
              }

              else
              {
                v40 = v225 * v39;
              }

              if (v39 <= 0.0)
              {
                v41 = 0.0;
              }

              else
              {
                v41 = v226 * v39;
              }

              processMetrics3 = [metricsCopy processMetrics];
              v43 = [processMetrics3 objectForKeyedSubscript:v30];
              audioActive = [v43 audioActive];

              if (audioActive)
              {
                v45 = v26 + v40;
              }

              else
              {
                v45 = v40;
              }

              processMetrics4 = [metricsCopy processMetrics];
              v47 = [processMetrics4 objectForKeyedSubscript:v30];
              cpuEnergy = [v47 cpuEnergy];
              value = [cpuEnergy value];
              unsignedLongLongValue = [value unsignedLongLongValue];

              processMetrics5 = [metricsCopy processMetrics];
              v52 = [processMetrics5 objectForKeyedSubscript:v30];
              gpuEnergy = [v52 gpuEnergy];
              value2 = [gpuEnergy value];
              v55 = (v41 + [value2 unsignedLongLongValue] / 1000000000.0) / v22;

              v57 = powerMetricsTotalsLogHandle(v56);
              intValue = [v30 intValue];
              if ((intValue - 1) <= 0xFFFFFFFD)
              {
                v59 = intValue;
                if (os_signpost_enabled(v57))
                {
                  spid = v59;
                  headlessClientTrackedProcesses2 = [(PPSMetricMonitorService *)self headlessClientTrackedProcesses];
                  v214 = [headlessClientTrackedProcesses2 objectForKeyedSubscript:v30];
                  uTF8String = [v214 UTF8String];
                  [(PPSMetricMonitorService *)self _quantizePowerMetric:(v45 + unsignedLongLongValue / 1000000000.0) / v22];
                  v181 = v60;
                  [(PPSMetricMonitorService *)self _quantizePowerMetric:v55];
                  v179 = v61;
                  processMetrics6 = [metricsCopy processMetrics];
                  v210 = [processMetrics6 objectForKeyedSubscript:v30];
                  qosUtility = [v210 qosUtility];
                  [qosUtility doubleValue];
                  v177 = v62;
                  processMetrics7 = [metricsCopy processMetrics];
                  v204 = [processMetrics7 objectForKeyedSubscript:v30];
                  qosBackground = [v204 qosBackground];
                  [qosBackground doubleValue];
                  v174 = v63;
                  processMetrics8 = [metricsCopy processMetrics];
                  v198 = [processMetrics8 objectForKeyedSubscript:v30];
                  qosUserInitiated = [v198 qosUserInitiated];
                  [qosUserInitiated doubleValue];
                  v171 = v64;
                  processMetrics9 = [metricsCopy processMetrics];
                  v192 = [processMetrics9 objectForKeyedSubscript:v30];
                  qosUserInteractive = [v192 qosUserInteractive];
                  [qosUserInteractive doubleValue];
                  v168 = v65;
                  processMetrics10 = [metricsCopy processMetrics];
                  v186 = [processMetrics10 objectForKeyedSubscript:v30];
                  cpuInstructions = [v186 cpuInstructions];
                  value3 = [cpuInstructions value];
                  unsignedLongLongValue2 = [value3 unsignedLongLongValue];
                  processMetrics11 = [metricsCopy processMetrics];
                  v180 = [processMetrics11 objectForKeyedSubscript:v30];
                  aneTime = [v180 aneTime];
                  [aneTime doubleValue];
                  v163 = v66;
                  processMetrics12 = [metricsCopy processMetrics];
                  v175 = [processMetrics12 objectForKeyedSubscript:v30];
                  locationDesiredAccuracy = [v175 locationDesiredAccuracy];
                  [locationDesiredAccuracy doubleValue];
                  v67 = v26;
                  v69 = v68;
                  processMetrics13 = [metricsCopy processMetrics];
                  v170 = [processMetrics13 objectForKeyedSubscript:v30];
                  applicationState = [v170 applicationState];
                  intValue2 = [applicationState intValue];
                  processMetrics14 = [metricsCopy processMetrics];
                  v166 = [processMetrics14 objectForKeyedSubscript:v30];
                  displayPower = [v166 displayPower];
                  [displayPower doubleValue];
                  [(PPSMetricMonitorService *)self _quantizePowerMetric:v70 / v22];
                  v71 = v22;
                  v73 = v72;
                  v158 = [(PPSMetricMonitorService *)self previousMct]+ 1;
                  processMetrics15 = [metricsCopy processMetrics];
                  v161 = [processMetrics15 objectForKeyedSubscript:v30];
                  qosDefault = [v161 qosDefault];
                  [qosDefault doubleValue];
                  v75 = v74;
                  processMetrics16 = [metricsCopy processMetrics];
                  v77 = [processMetrics16 objectForKeyedSubscript:v30];
                  [v77 qosMaintenance];
                  v79 = v78 = v57;
                  [v79 doubleValue];
                  v80 = v55;
                  v82 = v81;
                  processMetrics17 = [metricsCopy processMetrics];
                  v84 = [processMetrics17 objectForKeyedSubscript:v30];
                  qosUnspecified = [v84 qosUnspecified];
                  [qosUnspecified doubleValue];
                  *buf = 136450306;
                  v237 = uTF8String;
                  v238 = 2050;
                  v239 = v181;
                  v240 = 2050;
                  v241 = v179;
                  v242 = 2050;
                  *v243 = v177;
                  *&v243[8] = 2050;
                  *v244 = v174;
                  *&v244[8] = 2050;
                  *&v244[10] = v171;
                  *&v244[18] = 2050;
                  *&v244[20] = v168;
                  *&v244[28] = 2050;
                  *&v244[30] = unsignedLongLongValue2;
                  v245 = 2050;
                  v246 = v163;
                  v247 = 2050;
                  v248 = v69;
                  v26 = v67;
                  v249 = 1026;
                  v250 = intValue2;
                  v251 = 2050;
                  v252 = v73;
                  v22 = v71;
                  v253 = 2050;
                  v254 = v158;
                  v255 = 2050;
                  v256 = v229;
                  v257 = 2050;
                  v258 = v75;
                  v259 = 2050;
                  v260 = v82;
                  v55 = v80;
                  v261 = 2050;
                  v262 = v86;
                  _os_signpost_emit_with_name_impl(&dword_22E4FA000, v78, OS_SIGNPOST_EVENT, spid, "Per-app subsystem power", "Process name: %{public}s\nSignpost ID is PID\nCPU Power Impact = %{public, name=CPU_Power_Impact}.2f\nGPU Power Impact = %{public, name=GPU_Power_Impact}.2f\nQOS Utility = %{public, name=QOS_Utility, units=s}.2f s\nQOS Background = %{public, name=QOS_Background, units=s}.2f s\nQOS User Initiated = %{public, name=QOS_User_Initiated, units=s}.2f s\nQOS User Interactive = %{public, name=QOS_User_Interactive, units=s}.2f s\nCPU Instructions = %{public, name=CPU_Instructions}lld \nANE Time = %{public, name=ANE_Time, units=s}.2f s \nLocation Desired Accuracy = %{public, name=Location_Desired_Accuracy}.2f \nApplication State = %{public, name=Application_State}d \nDisplay Power Impact = %{public, name=Display_Power_Impact}.2f\n%{public, signpost.description:begin_time}llu\n%{public, signpost.description:end_time}llu\nQOS Default = %{public, name=QOS_Default, units=s}.2f s\nQOS Maintenance = %{public, name=QOS_Maintenance, units=s}.2f s\nQOS Unspecified = %{public, name=QOS_Unspecified, units=s}.2f s\n", buf, 0xA8u);

                  metricsCopy = v220;
                  v57 = v78;

                  self = selfCopy;
                }
              }

              v28 = v228;
              if (v227 > v224)
              {
                v88 = powerMetricsTotalsLogHandle(v87);
                intValue3 = [v30 intValue];
                if ((intValue3 - 1) <= 0xFFFFFFFD)
                {
                  v90 = intValue3;
                  if (os_signpost_enabled(v88))
                  {
                    v91 = v90;
                    headlessClientTrackedProcesses3 = [(PPSMetricMonitorService *)self headlessClientTrackedProcesses];
                    v93 = [headlessClientTrackedProcesses3 objectForKeyedSubscript:v30];
                    *&v94 = COERCE_DOUBLE([v93 UTF8String]);
                    [(PPSMetricMonitorService *)self _quantizePowerMetric:v55];
                    *buf = 134349826;
                    v237 = v156;
                    v238 = 2050;
                    v239 = v227;
                    v240 = 2082;
                    v241 = *&v94;
                    v28 = v228;
                    v242 = 2050;
                    *v243 = v95;
                    _os_signpost_emit_with_name_impl(&dword_22E4FA000, v88, OS_SIGNPOST_EVENT, v91, "Per-app GPU power impact", "%{public, signpost.description:begin_time}llu\n%{public, signpost.description:end_time}llu\nProcess name: %{public}s\nSignpost ID is PID\nGPU Power Impact = %{public, name=GPU_Power_Impact}.2f\n", buf, 0x2Au);
                  }
                }

                v218 = 1;
              }

              processMetrics18 = [metricsCopy processMetrics];
              v97 = [processMetrics18 objectForKeyedSubscript:v30];
              networkingPower = [v97 networkingPower];

              if (networkingPower)
              {
                delegate2 = [(PPSMetricMonitorService *)self delegate];
                [delegate2 getSecondsFromMachTime:v221];
                v101 = v100;

                v103 = powerMetricsTotalsLogHandle(v102);
                intValue4 = [v30 intValue];
                if ((intValue4 - 1) <= 0xFFFFFFFD)
                {
                  v105 = intValue4;
                  if (os_signpost_enabled(v103))
                  {
                    v207 = v105;
                    headlessClientTrackedProcesses4 = [(PPSMetricMonitorService *)self headlessClientTrackedProcesses];
                    v217 = [headlessClientTrackedProcesses4 objectForKeyedSubscript:v30];
                    *&v197 = COERCE_DOUBLE([v217 UTF8String]);
                    processMetrics19 = [metricsCopy processMetrics];
                    v213 = [processMetrics19 objectForKeyedSubscript:v30];
                    wifiIn = [v213 wifiIn];
                    intValue5 = [wifiIn intValue];
                    processMetrics20 = [metricsCopy processMetrics];
                    v205 = [processMetrics20 objectForKeyedSubscript:v30];
                    wifiOut = [v205 wifiOut];
                    spida = [wifiOut intValue];
                    processMetrics21 = [metricsCopy processMetrics];
                    v199 = [processMetrics21 objectForKeyedSubscript:v30];
                    cellIn = [v199 cellIn];
                    intValue6 = [cellIn intValue];
                    processMetrics22 = [metricsCopy processMetrics];
                    v107 = [processMetrics22 objectForKeyedSubscript:v30];
                    cellOut = [v107 cellOut];
                    intValue7 = [cellOut intValue];
                    processMetrics23 = [v220 processMetrics];
                    v111 = [processMetrics23 objectForKeyedSubscript:v30];
                    networkingPower2 = [v111 networkingPower];
                    [networkingPower2 doubleValue];
                    [(PPSMetricMonitorService *)selfCopy _quantizePowerMetric:v113 / v101];
                    *buf = 134350850;
                    v237 = v157;
                    v238 = 2050;
                    v239 = v229;
                    v240 = 2082;
                    v241 = *&v197;
                    v242 = 1026;
                    *v243 = intValue5;
                    *&v243[4] = 1026;
                    *&v243[6] = spida;
                    *v244 = 1026;
                    *&v244[2] = intValue6;
                    *&v244[6] = 1026;
                    *&v244[8] = intValue7;
                    metricsCopy = v220;
                    *&v244[12] = 2050;
                    *&v244[14] = v114;
                    _os_signpost_emit_with_name_impl(&dword_22E4FA000, v103, OS_SIGNPOST_EVENT, v207, "Per-app networking power", "%{public, signpost.description:begin_time}llu\n%{public, signpost.description:end_time}llu\nProcess name: %{public}s\nSignpost ID is PID\nWifi In = %{public, name=Wifi_In, units=B}d B\nWifi Out = %{public, name=Wifi_Out, units=B}d B\nCellular In = %{public, name=Cellular_In, units=B}d B\nCellular Out = %{public, name=Cellular_Out, units=B}d B\nNetworking Power Impact = %{public, name=Networking_Power_Impact}.2f\n", buf, 0x42u);

                    self = selfCopy;
                    v28 = v228;
                  }
                }

                v222 = 1;
              }

              v10 = v229;
            }
          }

          ++v29;
        }

        while (v28 != v29);
        v28 = [obj countByEnumeratingWithState:&v232 objects:v263 count:16];
      }

      while (v28);
    }

    else
    {
      v222 = 0;
      v218 = 0;
    }

    delegate3 = [(PPSMetricMonitorService *)self delegate];
    isPluggedIn = [delegate3 isPluggedIn];

    v118 = 0.0;
    if ((isPluggedIn & 1) == 0)
    {
      delegate4 = [(PPSMetricMonitorService *)self delegate];
      [delegate4 batteryCapacity];
      v121 = v120;

      systemLoadPower = [metricsCopy systemLoadPower];
      [systemLoadPower doubleValue];
      v124 = v123 * 1000.0 / v121 * 100.0;

      v118 = v124 / v22;
    }

    delegate5 = [(PPSMetricMonitorService *)self delegate];
    [delegate5 brightnessPercent];
    v127 = v126;

    v129 = powerMetricsTotalsLogHandle(v128);
    if (os_signpost_enabled(v129))
    {
      v130 = [(PPSMetricMonitorService *)self previousMct]+ 1;
      thermalPressure = [metricsCopy thermalPressure];
      displayAPL = [metricsCopy displayAPL];
      [displayAPL doubleValue];
      v134 = v133;
      displayFPS = [metricsCopy displayFPS];
      [displayFPS doubleValue];
      *buf = 134350848;
      v237 = v130;
      v238 = 2050;
      v239 = v229;
      v240 = 2050;
      v241 = v118;
      v242 = 2050;
      *v243 = thermalPressure;
      *&v243[8] = 1026;
      *v244 = isPluggedIn;
      *&v244[4] = 2050;
      *&v244[6] = v134;
      *&v244[14] = 2050;
      *&v244[16] = v136;
      *&v244[24] = 2050;
      *&v244[26] = round(v127 * 100.0);
      _os_signpost_emit_with_name_impl(&dword_22E4FA000, v129, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SystemMetrics", "%{public, signpost.description:begin_time}llu\n%{public, signpost.description:end_time}llu\nSystem Power Usage (sampled power) = %{public, name=System_Power_Usage, units=%/hr}.2f %%/hr\nThermal State = %{public, name=Thermal_State}ld \nCharging Status = %{public, name=Charging_State}d \nDisplay APL = %{public, name=Display_APL}.2f \nFrame Rate = %{public, name=Frame_Rate, units =fps}.2f FPS \nDisplay Brightness Percentage = %{public, name=Display_Brightness_Percentage, units=%}.2f %%\n", buf, 0x4Eu);

      v10 = v229;
    }

    v137 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitorService emitTracingToolPowerMetrics:metricsCopy ofClient:?];
    }

    v138 = PPSMetricMonitorLogHandleForCategory(2);
    clientCopy = v155;
    if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitorService emitTracingToolPowerMetrics:metricsCopy ofClient:?];
    }

    v139 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitorService emitTracingToolPowerMetrics:metricsCopy ofClient:?];
    }

    [(PPSMetricMonitorService *)self setPreviousMct:v10];
    if (v222)
    {
      [(PPSMetricMonitorService *)self setNetworkingTrackPreviousMct:v10];
    }

    if (v218)
    {
      [(PPSMetricMonitorService *)self setPreviousGPUMct:v227];
    }

    sleepWakeHistory = [(PPSMetricMonitorService *)self sleepWakeHistory];
    lastObject = [sleepWakeHistory lastObject];
    if (!lastObject)
    {
      goto LABEL_72;
    }

    v142 = lastObject;
    sleepWakeHistory2 = [(PPSMetricMonitorService *)self sleepWakeHistory];
    lastObject2 = [sleepWakeHistory2 lastObject];
    isEmitted = [lastObject2 isEmitted];

    if ((isEmitted & 1) == 0)
    {
      v147 = powerMetricsTotalsLogHandle(v146);
      if (os_signpost_enabled(v147))
      {
        sleepWakeHistory3 = [(PPSMetricMonitorService *)self sleepWakeHistory];
        lastObject3 = [sleepWakeHistory3 lastObject];
        sleepTime = [lastObject3 sleepTime];
        sleepWakeHistory4 = [(PPSMetricMonitorService *)self sleepWakeHistory];
        lastObject4 = [sleepWakeHistory4 lastObject];
        wakeTime = [lastObject4 wakeTime];
        *buf = 134349312;
        v237 = sleepTime;
        v238 = 2050;
        v239 = wakeTime;
        _os_signpost_emit_with_name_impl(&dword_22E4FA000, v147, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DidSleep", "%{public, signpost.description:begin_time}llu\n%{public, signpost.description:end_time}llu\n", buf, 0x16u);
      }

      sleepWakeHistory = [(PPSMetricMonitorService *)self sleepWakeHistory];
      lastObject5 = [sleepWakeHistory lastObject];
      [lastObject5 setIsEmitted:1];

LABEL_72:
    }
  }
}

- (void)emitPowerMetrics:(id)metrics ofClient:(id)client
{
  v122 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  clientCopy = client;
  v8 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService emitPowerMetrics:ofClient:];
  }

  displayPower = [metricsCopy displayPower];
  value = [displayPower value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Display_Power_W" value:value];

  displayAPL = [metricsCopy displayAPL];
  value2 = [displayAPL value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Display_APL" value:value2];

  dramPower = [metricsCopy dramPower];
  value3 = [dramPower value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"DRAM_Power_W" value:value3];

  otherSocPower = [metricsCopy otherSocPower];
  value4 = [otherSocPower value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Other_SoC_Power_W" value:value4];

  cpuPower = [metricsCopy cpuPower];
  value5 = [cpuPower value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"CPU_Power_W" value:value5];

  gpuPower = [metricsCopy gpuPower];
  value6 = [gpuPower value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"GPU_Power_W" value:value6];

  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(metricsCopy, "thermalPressure")}];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Thermal_State" value:v21];

  v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(metricsCopy, "inducedThermalPressure")}];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Induced_Thermal_State" value:v22];

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v109 = clientCopy;
  obj = [clientCopy monitoredPIDs];
  v23 = [obj countByEnumeratingWithState:&v116 objects:v121 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v117;
    do
    {
      v26 = 0;
      do
      {
        if (*v117 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v116 + 1) + 8 * v26);
        processMetrics = [metricsCopy processMetrics];
        v29 = [processMetrics objectForKeyedSubscript:v27];
        gpuCost = [v29 gpuCost];
        value7 = [gpuCost value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"GPU_Cost" value:value7 pid:v27];

        processMetrics2 = [metricsCopy processMetrics];
        v33 = [processMetrics2 objectForKeyedSubscript:v27];
        gpuTime = [v33 gpuTime];
        value8 = [gpuTime value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"GPU_Time" value:value8 pid:v27];

        processMetrics3 = [metricsCopy processMetrics];
        v37 = [processMetrics3 objectForKeyedSubscript:v27];
        cpuInstructions = [v37 cpuInstructions];
        value9 = [cpuInstructions value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"CPU_Inst" value:value9 pid:v27];

        processMetrics4 = [metricsCopy processMetrics];
        v41 = [processMetrics4 objectForKeyedSubscript:v27];
        cpuPInstructions = [v41 cpuPInstructions];
        value10 = [cpuPInstructions value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"CPU_PInst" value:value10 pid:v27];

        processMetrics5 = [metricsCopy processMetrics];
        v45 = [processMetrics5 objectForKeyedSubscript:v27];
        bytesRead = [v45 bytesRead];
        value11 = [bytesRead value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Disk_Read" value:value11 pid:v27];

        processMetrics6 = [metricsCopy processMetrics];
        v49 = [processMetrics6 objectForKeyedSubscript:v27];
        bytesWritten = [v49 bytesWritten];
        value12 = [bytesWritten value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Disk_Write" value:value12 pid:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [obj countByEnumeratingWithState:&v116 objects:v121 count:16];
    }

    while (v24);
  }

  batteryPower = [metricsCopy batteryPower];
  value13 = [batteryPower value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Battery_Power_W" value:value13];

  dcInputPower = [metricsCopy dcInputPower];
  value14 = [dcInputPower value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"DC_Input_Power_W" value:value14];

  chargingRate = [metricsCopy chargingRate];
  value15 = [chargingRate value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Charging_Rate_mA" value:value15];

  cellularPower = [metricsCopy cellularPower];
  value16 = [cellularPower value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Cellular_Power_W" value:value16];

  skinTemperature = [metricsCopy skinTemperature];
  value17 = [skinTemperature value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Skin_Temp_C" value:value17];

  batteryTemperature = [metricsCopy batteryTemperature];
  value18 = [batteryTemperature value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Battery_Temp_C" value:value18];

  systemLoadPower = [metricsCopy systemLoadPower];
  value19 = [systemLoadPower value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"System_Load_Power_W" value:value19];

  wifiPower = [metricsCopy wifiPower];
  value20 = [wifiPower value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"WiFi_Power_W" value:value20];

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  obja = [v109 monitoredPIDs];
  v68 = [obja countByEnumeratingWithState:&v112 objects:v120 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v113;
    do
    {
      v71 = 0;
      do
      {
        if (*v113 != v70)
        {
          objc_enumerationMutation(obja);
        }

        v72 = *(*(&v112 + 1) + 8 * v71);
        processMetrics7 = [metricsCopy processMetrics];
        v74 = [processMetrics7 objectForKeyedSubscript:v72];
        energyCost = [v74 energyCost];
        value21 = [energyCost value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Energy_Cost" value:value21 pid:v72];

        processMetrics8 = [metricsCopy processMetrics];
        v78 = [processMetrics8 objectForKeyedSubscript:v72];
        energyOverhead = [v78 energyOverhead];
        value22 = [energyOverhead value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Energy_Overhead" value:value22 pid:v72];

        processMetrics9 = [metricsCopy processMetrics];
        v82 = [processMetrics9 objectForKeyedSubscript:v72];
        applicationState = [v82 applicationState];
        value23 = [applicationState value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Application_State" value:value23 pid:v72];

        processMetrics10 = [metricsCopy processMetrics];
        v86 = [processMetrics10 objectForKeyedSubscript:v72];
        ongoingLocation = [v86 ongoingLocation];
        value24 = [ongoingLocation value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Ongoing_Location" value:value24 pid:v72];

        processMetrics11 = [metricsCopy processMetrics];
        v90 = [processMetrics11 objectForKeyedSubscript:v72];
        locationCost = [v90 locationCost];
        value25 = [locationCost value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Location_Cost" value:value25 pid:v72];

        processMetrics12 = [metricsCopy processMetrics];
        v94 = [processMetrics12 objectForKeyedSubscript:v72];
        wifiIn = [v94 wifiIn];
        value26 = [wifiIn value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"WiFi_In" value:value26 pid:v72];

        processMetrics13 = [metricsCopy processMetrics];
        v98 = [processMetrics13 objectForKeyedSubscript:v72];
        wifiOut = [v98 wifiOut];
        value27 = [wifiOut value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"WiFi_Out" value:value27 pid:v72];

        processMetrics14 = [metricsCopy processMetrics];
        v102 = [processMetrics14 objectForKeyedSubscript:v72];
        cellIn = [v102 cellIn];
        value28 = [cellIn value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Cell_In" value:value28 pid:v72];

        processMetrics15 = [metricsCopy processMetrics];
        v106 = [processMetrics15 objectForKeyedSubscript:v72];
        cellOut = [v106 cellOut];
        value29 = [cellOut value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Cell_Out" value:value29 pid:v72];

        ++v71;
      }

      while (v69 != v71);
      v69 = [obja countByEnumeratingWithState:&v112 objects:v120 count:16];
    }

    while (v69);
  }
}

- (BOOL)_shouldAcceptNewConnection:(id)connection
{
  v33 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v6 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = processIdentifier;
    _os_log_impl(&dword_22E4FA000, v6, OS_LOG_TYPE_DEFAULT, "New client connection from PID %d", &buf, 8u);
  }

  v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284301658];
  [connectionCopy setRemoteObjectInterface:v7];

  remoteObjectInterface = [connectionCopy remoteObjectInterface];
  v9 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [remoteObjectInterface setClasses:v9 forSelector:sel_updateWithMetricCollection_ argumentIndex:0 ofReply:0];

  v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284302200];
  [connectionCopy setExportedInterface:v10];

  exportedInterface = [connectionCopy exportedInterface];
  v12 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [exportedInterface setClasses:v12 forSelector:sel_setUpWithConfiguration_completion_ argumentIndex:0 ofReply:0];

  [connectionCopy setExportedObject:self];
  v13 = [connectionCopy remoteObjectProxyWithErrorHandler:&__block_literal_global_245];
  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_246;
  block[3] = &unk_278847BC0;
  block[4] = self;
  v31 = processIdentifier;
  v15 = connectionCopy;
  v29 = v15;
  v16 = v13;
  v30 = v16;
  dispatch_sync(metricQueryQueue, block);

  objc_initWeak(&buf, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_248;
  v25[3] = &unk_278847C10;
  v27 = processIdentifier;
  v25[4] = self;
  objc_copyWeak(&v26, &buf);
  [v15 setInterruptionHandler:v25];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_2;
  v21 = &unk_278847C10;
  v24 = processIdentifier;
  selfCopy = self;
  objc_copyWeak(&v23, &buf);
  [v15 setInvalidationHandler:&v18];
  [v15 resume];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&buf);

  return 1;
}

void __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_cold_1();
  }
}

void __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_246(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [[PPSClient alloc] initWithConnection:*(a1 + 40) remoteProxy:*(a1 + 48)];
  v3 = [*(a1 + 32) clients];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 56);
    v7 = [*(a1 + 32) clients];
    v8 = [v7 allKeys];
    v9[0] = 67109378;
    v9[1] = v6;
    v10 = 2112;
    v11 = v8;
    _os_log_impl(&dword_22E4FA000, v5, OS_LOG_TYPE_DEFAULT, "New client connection from PID %d. Current clients: %@", v9, 0x12u);
  }
}

void __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_248(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 67109120;
    v9 = v3;
    _os_log_impl(&dword_22E4FA000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection from PID: %d interrupted", buf, 8u);
  }

  v4 = [*(a1 + 32) metricQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_249;
  block[3] = &unk_278847BE8;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = *(a1 + 48);
  block[4] = *(a1 + 32);
  dispatch_sync(v4, block);

  objc_destroyWeak(&v6);
}

void __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_249(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained clients];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v13 = [v3 objectForKeyedSubscript:v4];

  if (v13)
  {
    v5 = [v13 config];
    v6 = [v5 isHeadless];

    v7 = *(a1 + 32);
    if (v6)
    {
      v8 = [v7 clients];
      [v8 setObject:v13 forKeyedSubscript:&unk_2843008A0];

      v9 = [*(a1 + 32) clients];
      v10 = MEMORY[0x277CCABB0];
      v11 = [v13 connection];
      v12 = [v10 numberWithInt:{objc_msgSend(v11, "processIdentifier")}];
      [v9 removeObjectForKey:v12];
    }

    else
    {
      [v7 _handleConnectionEndedWithClient:v13];
    }
  }
}

void __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 67109120;
    v9 = v3;
    _os_log_impl(&dword_22E4FA000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection from PID %d invalidated", buf, 8u);
  }

  v4 = [*(a1 + 32) metricQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_250;
  block[3] = &unk_278847BE8;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = *(a1 + 48);
  block[4] = *(a1 + 32);
  dispatch_sync(v4, block);

  objc_destroyWeak(&v6);
}

void __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_250(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained clients];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v17 = [v3 objectForKeyedSubscript:v4];

  if (v17)
  {
    v5 = [v17 config];
    v6 = [v5 isHeadless];

    v7 = *(a1 + 32);
    if (v6)
    {
      v8 = [v7 clients];
      [v8 setObject:v17 forKeyedSubscript:&unk_2843008A0];

      v9 = [*(a1 + 32) clients];
      v10 = MEMORY[0x277CCABB0];
      v11 = [v17 connection];
      v12 = [v10 numberWithInt:{objc_msgSend(v11, "processIdentifier")}];
      [v9 removeObjectForKey:v12];
    }

    else
    {
      [v7 _handleConnectionEndedWithClient:v17];
    }
  }

  v13 = [*(a1 + 32) clients];
  v14 = [v13 count];

  if (!v14)
  {
    v15 = objc_loadWeakRetained((a1 + 40));
    v16 = [v15 delegate];
    [v16 allClientsDidDisconnect];
  }
}

- (BOOL)_shouldAcceptheadlessClientConnection:(id)connection
{
  connectionCopy = connection;
  v5 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService _shouldAcceptheadlessClientConnection:];
  }

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2843022E8];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)_collectMetricsWithTimeout:(int)timeout
{
  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  dispatch_assert_queue_V2(metricQueryQueue);

  v6 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService _collectMetricsWithTimeout:];
  }

  lastQueryDate = [(PPSMetricMonitorService *)self lastQueryDate];
  [lastQueryDate timeIntervalSinceNow];
  v9 = v8;

  if (v9 < -0.1)
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [(PPSMetricMonitorService *)self setLastQueryDate:v10];

    delegate = [(PPSMetricMonitorService *)self delegate];
    v12 = [delegate collectMetricsWithTimeout:timeout];

    v13 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitorService _collectMetricsWithTimeout:];
    }

    clients = [(PPSMetricMonitorService *)self clients];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__PPSMetricMonitorService__collectMetricsWithTimeout___block_invoke;
    v16[3] = &unk_278847C38;
    v17 = v12;
    v15 = v12;
    [clients enumerateKeysAndObjectsUsingBlock:v16];
  }
}

void __54__PPSMetricMonitorService__collectMetricsWithTimeout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 clientMetrics];

  if (!v7)
  {
    v8 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __54__PPSMetricMonitorService__collectMetricsWithTimeout___block_invoke_cold_1();
    }

    v9 = objc_alloc_init(PPSMetricCollection);
    [v6 setClientMetrics:v9];

    v10 = [v6 clientMetrics];
    v11 = [v6 monitoredPIDs];
    [v10 clearMetrics:v11];
  }

  v12 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __54__PPSMetricMonitorService__collectMetricsWithTimeout___block_invoke_cold_2();
  }

  v13 = [v6 clientMetrics];
  v14 = *(a1 + 32);
  v15 = [v6 monitoredPIDs];
  [v13 combineWithMetricCollection:v14 trackedPids:v15];
}

- (void)_collectMetricsAndUpdateHeadlessClient
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_cancelQueryTimer
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startHeadlessUpdateTimer:(double)timer
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    timerCopy = timer;
    _os_log_impl(&dword_22E4FA000, v5, OS_LOG_TYPE_DEFAULT, "Starting headless update timer with interval: %f", buf, 0xCu);
  }

  [(PPSMetricMonitorService *)self _cancelQueryTimer];
  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, metricQueryQueue);
  [(PPSMetricMonitorService *)self setHeadlessUpdateTimer:v7];

  headlessUpdateTimer = [(PPSMetricMonitorService *)self headlessUpdateTimer];
  dispatch_source_set_timer(headlessUpdateTimer, 0, (timer * 1000000000.0), 0x989680uLL);

  headlessUpdateTimer2 = [(PPSMetricMonitorService *)self headlessUpdateTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __52__PPSMetricMonitorService_startHeadlessUpdateTimer___block_invoke;
  handler[3] = &unk_278847A30;
  handler[4] = self;
  dispatch_source_set_event_handler(headlessUpdateTimer2, handler);

  date = [MEMORY[0x277CBEAA8] date];
  [(PPSMetricMonitorService *)self setMonitoredStartTime:date];

  headlessUpdateTimer3 = [(PPSMetricMonitorService *)self headlessUpdateTimer];
  dispatch_resume(headlessUpdateTimer3);
}

void __52__PPSMetricMonitorService_startHeadlessUpdateTimer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  v3 = [v2 objectForKeyedSubscript:&unk_2843008A0];

  v4 = [*(a1 + 32) _checkIfProcessesAreAlive:v3];
  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    v7 = 0;
    [v5 addMonitoredProcessesWithPIDs:v4 error:&v7];
  }

  [*(a1 + 32) _collectMetricsAndUpdateHeadlessClient];
  v6 = [v3 monitoredPIDs];
  [v6 addObjectsFromArray:v4];
}

- (void)setHeadlessQueryTimer:(double)timer
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    timerCopy = timer;
    _os_log_impl(&dword_22E4FA000, v5, OS_LOG_TYPE_DEFAULT, "Starting headless query timer with interval: %f", &v10, 0xCu);
  }

  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  dispatch_assert_queue_V2(metricQueryQueue);

  if (timer < 0.2)
  {
    v7 = PPSMetricMonitorLogHandleForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PPSMetricMonitorService setHeadlessQueryTimer:];
    }
  }

  headlessUpdateTimer = [(PPSMetricMonitorService *)self headlessUpdateTimer];

  if (headlessUpdateTimer)
  {
    [(PPSMetricMonitorService *)self setUpdateInterval:timer];
    headlessUpdateTimer2 = [(PPSMetricMonitorService *)self headlessUpdateTimer];
    dispatch_source_set_timer(headlessUpdateTimer2, 0, (timer * 1000000000.0), 0x989680uLL);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  serviceName = [connectionCopy serviceName];
  v7 = [serviceName isEqualToString:@"com.apple.PerfPowerMetricMonitor.xpc"];

  if (v7)
  {
    v8 = [(PPSMetricMonitorService *)self _shouldAcceptNewConnection:connectionCopy];
  }

  else
  {
    serviceName2 = [connectionCopy serviceName];
    v10 = [serviceName2 isEqualToString:@"com.apple.PerfPowerMetricMonitorHeadless.xpc"];

    if (!v10)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v8 = [(PPSMetricMonitorService *)self _shouldAcceptheadlessClientConnection:connectionCopy];
  }

  v11 = v8;
LABEL_7:

  return v11;
}

- (void)setUpWithConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  v7 = MEMORY[0x277CCAE80];
  completionCopy = completion;
  currentConnection = [v7 currentConnection];
  processIdentifier = [currentConnection processIdentifier];

  v11 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService setUpWithConfiguration:completion:];
  }

  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__PPSMetricMonitorService_setUpWithConfiguration_completion___block_invoke;
  block[3] = &unk_278847C60;
  v16 = processIdentifier;
  block[4] = self;
  v15 = configurationCopy;
  v13 = configurationCopy;
  dispatch_sync(metricQueryQueue, block);

  completionCopy[2](completionCopy);
}

void __61__PPSMetricMonitorService_setUpWithConfiguration_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v6 = [v2 objectForKeyedSubscript:v3];

  [v6 setConfig:*(a1 + 40)];
  v4 = [*(a1 + 32) delegate];
  LOBYTE(v3) = [v4 isMonitoringMetrics];

  if ((v3 & 1) == 0)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 setUpForMonitoring];
  }
}

- (void)startMonitoringSystemMetricsWithCompletion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  processIdentifier = [currentConnection processIdentifier];

  v7 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = processIdentifier;
    _os_log_impl(&dword_22E4FA000, v7, OS_LOG_TYPE_DEFAULT, "Start monitoring system metrics was called by client: %d", buf, 8u);
  }

  *buf = 0;
  v29 = buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __70__PPSMetricMonitorService_startMonitoringSystemMetricsWithCompletion___block_invoke;
  v17 = &unk_278847C88;
  v20 = buf;
  v21 = &v22;
  selfCopy = self;
  v9 = completionCopy;
  v19 = v9;
  dispatch_sync(metricQueryQueue, &v14);

  if (!v23[5])
  {
    config = [*(v29 + 5) config];
    if ([config isHeadless])
    {
      config2 = [*(v29 + 5) config];
      v12 = [config2 mode] == 0;

      if (v12)
      {
        self->_previousMct = mach_continuous_time();
        config3 = [*(v29 + 5) config];
        [config3 updateInterval];
        [(PPSMetricMonitorService *)self startHeadlessUpdateTimer:?];

        [(PPSMetricMonitorService *)self _startHeadlessTimeoutTimer];
      }
    }

    else
    {
    }

    (*(v9 + 2))(v9, 0);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(buf, 8);
}

void __70__PPSMetricMonitorService_startMonitoringSystemMetricsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277CCAE80] currentConnection];
  v5 = [v3 numberWithInt:{objc_msgSend(v4, "processIdentifier")}];
  v6 = [v2 objectForKeyedSubscript:v5];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  v11 = *(a1 + 32);
  v12 = *(*(*(a1 + 48) + 8) + 40);
  v13 = *(*(a1 + 56) + 8);
  obj = *(v13 + 40);
  LOBYTE(v5) = [v11 _canStartMonitoringForClient:v12 withError:&obj];
  objc_storeStrong((v13 + 40), obj);
  if (v5)
  {
    v14 = [*(a1 + 32) delegate];
    v15 = [v14 isMonitoringMetrics];

    if ((v15 & 1) == 0)
    {
      v16 = [*(a1 + 32) delegate];
      [v16 startMonitoring];
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)startMonitoringProcessWithPID:(id)d completion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = MEMORY[0x277CBEA60];
  completionCopy = completion;
  dCopy2 = d;
  v9 = [v6 arrayWithObjects:&dCopy count:1];

  [(PPSMetricMonitorService *)self startMonitoringProcessesWithPID:v9 completion:completionCopy, dCopy, v11];
}

- (void)startMonitoringProcessesWithPID:(id)d completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  processIdentifier = [currentConnection processIdentifier];

  v10 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *&buf[4] = processIdentifier;
    LOWORD(v30) = 2112;
    *(&v30 + 2) = dCopy;
    _os_log_impl(&dword_22E4FA000, v10, OS_LOG_TYPE_DEFAULT, "Start monitoring processes with pids was called by client: %d PID: %@", buf, 0x12u);
  }

  *buf = 0;
  *&v30 = buf;
  *(&v30 + 1) = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v28 = 0;
  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__PPSMetricMonitorService_startMonitoringProcessesWithPID_completion___block_invoke;
  block[3] = &unk_278847CB0;
  v21 = buf;
  v22 = &v23;
  block[4] = self;
  v12 = completionCopy;
  v20 = v12;
  v13 = dCopy;
  v19 = v13;
  dispatch_sync(metricQueryQueue, block);

  if (!v24[5])
  {
    config = [*(v30 + 40) config];
    if ([config isHeadless])
    {
      config2 = [*(v30 + 40) config];
      v16 = [config2 mode] == 0;

      if (v16)
      {
        config3 = [*(v30 + 40) config];
        [config3 updateInterval];
        [(PPSMetricMonitorService *)self startHeadlessUpdateTimer:?];

        [(PPSMetricMonitorService *)self _startHeadlessTimeoutTimer];
      }
    }

    else
    {
    }

    (*(v12 + 2))(v12, 0);
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(buf, 8);
}

void __70__PPSMetricMonitorService_startMonitoringProcessesWithPID_completion___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) clients];
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277CCAE80] currentConnection];
  v5 = [v3 numberWithInt:{objc_msgSend(v4, "processIdentifier")}];
  v6 = [v2 objectForKeyedSubscript:v5];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [*(*(*(a1 + 56) + 8) + 40) config];
  LODWORD(v5) = [v9 isHeadless];

  if (v5)
  {
    *(*(a1 + 32) + 32) = mach_continuous_time();
    *(*(a1 + 32) + 40) = mach_continuous_time();
    *(*(a1 + 32) + 48) = mach_continuous_time();
  }

  v10 = *(a1 + 32);
  v11 = *(*(*(a1 + 56) + 8) + 40);
  v12 = *(*(a1 + 64) + 8);
  obj = *(v12 + 40);
  v13 = [v10 _canStartMonitoringForClient:v11 withError:&obj];
  objc_storeStrong((v12 + 40), obj);
  if (v13)
  {
    v14 = [*(a1 + 40) mutableCopy];
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [*(*(*(a1 + 56) + 8) + 40) setMonitoredProcessNames:v15];

    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [*(*(*(a1 + 56) + 8) + 40) setRequestedProcessNames:v16];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v17 = v14;
    v18 = [v17 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v57;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v57 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v56 + 1) + 8 * i);
          v23 = [*(a1 + 32) fullProcessNameForPid:{objc_msgSend(v22, "intValue")}];
          if (v23)
          {
            v24 = [*(*(*(a1 + 56) + 8) + 40) monitoredProcessNames];
            [v24 addObject:v23];

            v25 = [*(a1 + 32) headlessClientTrackedProcesses];
            [v25 setObject:v23 forKeyedSubscript:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v19);
    }

    v26 = [*(*(*(a1 + 56) + 8) + 40) config];
    v27 = [v26 isHeadless];

    if (v27)
    {
      v50 = [MEMORY[0x277CBEB58] set];
      [*(a1 + 32) _addProcessesNeededForAccounting:*(*(*(a1 + 56) + 8) + 40)];
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v28 = [*(*(*(a1 + 56) + 8) + 40) requestedProcessNames];
      v29 = [v28 countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v53;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v53 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v52 + 1) + 8 * j);
            v34 = [*(a1 + 32) delegate];
            v35 = [v34 pidForProcessName:v33];

            if (v35 >= 1)
            {
              v36 = [MEMORY[0x277CCABB0] numberWithInt:v35];
              [v17 addObject:v36];

              [v50 addObject:v33];
              v37 = [*(a1 + 32) headlessClientTrackedProcesses];
              v38 = [MEMORY[0x277CCABB0] numberWithInt:v35];
              [v37 setObject:v33 forKeyedSubscript:v38];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v52 objects:v61 count:16];
        }

        while (v30);
      }

      v39 = [*(*(*(a1 + 56) + 8) + 40) requestedProcessNames];
      [v39 minusSet:v50];
    }

    v40 = [*(*(*(a1 + 56) + 8) + 40) config];
    v41 = [v40 includeBackBoardUsage];

    if (v41)
    {
      v42 = PPSMetricMonitorLogHandleForCategory(2);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        __70__PPSMetricMonitorService_startMonitoringProcessesWithPID_completion___block_invoke_cold_1();
      }

      v43 = MEMORY[0x277CCABB0];
      v44 = [*(a1 + 32) delegate];
      v45 = [v43 numberWithInt:{objc_msgSend(v44, "pidForProcessName:", @"backboardd"}];
      [v17 addObject:v45];
    }

    v46 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      __70__PPSMetricMonitorService_startMonitoringProcessesWithPID_completion___block_invoke_cold_2();
    }

    v47 = *(a1 + 32);
    v48 = *(*(*(a1 + 56) + 8) + 40);
    v49 = *(*(a1 + 64) + 8);
    v51 = *(v49 + 40);
    [v47 startMonitoringPids:v17 forClient:v48 withError:&v51];
    objc_storeStrong((v49 + 40), v51);
    if (*(*(*(a1 + 64) + 8) + 40))
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)startMonitoringProcessWithName:(id)name completion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = MEMORY[0x277CBEA60];
  completionCopy = completion;
  nameCopy2 = name;
  v9 = [v6 arrayWithObjects:&nameCopy count:1];

  [(PPSMetricMonitorService *)self startMonitoringProcessesWithName:v9 completion:completionCopy, nameCopy, v11];
}

- (void)_addProcessesNeededForAccounting:(id)accounting
{
  accountingCopy = accounting;
  config = [accountingCopy config];
  if ([config isHeadless])
  {
    requestedProcessNames = [accountingCopy requestedProcessNames];

    if (!requestedProcessNames)
    {
      goto LABEL_5;
    }

    requestedProcessNames2 = [accountingCopy requestedProcessNames];
    [requestedProcessNames2 addObject:@"backboardd"];

    requestedProcessNames3 = [accountingCopy requestedProcessNames];
    [requestedProcessNames3 addObject:@"videocodecd"];

    config = [accountingCopy requestedProcessNames];
    [config addObject:@"audiomxd"];
  }

LABEL_5:
}

- (void)startMonitoringProcessesWithName:(id)name completion:(id)completion
{
  v62 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  completionCopy = completion;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  processIdentifier = [currentConnection processIdentifier];

  v8 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *&buf[4] = processIdentifier;
    LOWORD(v58) = 2112;
    *(&v58 + 2) = nameCopy;
    _os_log_impl(&dword_22E4FA000, v8, OS_LOG_TYPE_DEFAULT, "Start monitoring processes with names was called by client: %d processName: %@ ", buf, 0x12u);
  }

  *buf = 0;
  *&v58 = buf;
  *(&v58 + 1) = 0x3032000000;
  v59 = __Block_byref_object_copy__1;
  v60 = __Block_byref_object_dispose__1;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__1;
  v54 = __Block_byref_object_dispose__1;
  v55 = 0;
  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__PPSMetricMonitorService_startMonitoringProcessesWithName_completion___block_invoke;
  block[3] = &unk_278847CD8;
  v47 = &v50;
  v48 = buf;
  block[4] = self;
  v49 = processIdentifier;
  v30 = completionCopy;
  v46 = v30;
  dispatch_sync(metricQueryQueue, block);

  if (!*(v58 + 40))
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:nameCopy];
    [v51[5] setMonitoredProcessNames:v10];

    v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:nameCopy];
    [v51[5] setRequestedProcessNames:v11];

    config = [v51[5] config];
    isHeadless = [config isHeadless];

    if (isHeadless)
    {
      [(PPSMetricMonitorService *)self _addProcessesNeededForAccounting:v51[5], v30];
      self->_previousMct = mach_continuous_time();
      self->_networkingTrackPreviousMct = mach_continuous_time();
      self->_previousGPUMct = mach_continuous_time();
    }

    v32 = [MEMORY[0x277CBEB58] set];
    array = [MEMORY[0x277CBEB18] array];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    requestedProcessNames = [v51[5] requestedProcessNames];
    v16 = [requestedProcessNames countByEnumeratingWithState:&v41 objects:v56 count:16];
    if (v16)
    {
      v17 = *v42;
      do
      {
        v18 = 0;
        do
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(requestedProcessNames);
          }

          v19 = *(*(&v41 + 1) + 8 * v18);
          delegate = [(PPSMetricMonitorService *)self delegate];
          v21 = [delegate pidForProcessName:v19];

          if (v21 >= 1)
          {
            v22 = [MEMORY[0x277CCABB0] numberWithInt:v21];
            [array addObject:v22];

            [v32 addObject:v19];
            config2 = [v51[5] config];
            isHeadless2 = [config2 isHeadless];

            if (isHeadless2)
            {
              headlessClientTrackedProcesses = [(PPSMetricMonitorService *)self headlessClientTrackedProcesses];
              v26 = [MEMORY[0x277CCABB0] numberWithInt:v21];
              [headlessClientTrackedProcesses setObject:v19 forKeyedSubscript:v26];
            }
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [requestedProcessNames countByEnumeratingWithState:&v41 objects:v56 count:16];
      }

      while (v16);
    }

    metricQueryQueue2 = [(PPSMetricMonitorService *)self metricQueryQueue];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __71__PPSMetricMonitorService_startMonitoringProcessesWithName_completion___block_invoke_2;
    v34[3] = &unk_278847D00;
    v40 = &v50;
    v35 = array;
    selfCopy = self;
    v37 = nameCopy;
    v38 = v32;
    v39 = v30;
    v28 = v32;
    v29 = array;
    dispatch_sync(metricQueryQueue2, v34);
  }

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(buf, 8);
}

uint64_t __71__PPSMetricMonitorService_startMonitoringProcessesWithName_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64)];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);
  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = *(*(a1 + 56) + 8);
  obj = *(v9 + 40);
  [v7 _canStartMonitoringForClient:v8 withError:&obj];
  objc_storeStrong((v9 + 40), obj);
  return (*(*(a1 + 40) + 16))();
}

void __71__PPSMetricMonitorService_startMonitoringProcessesWithName_completion___block_invoke_2(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count] || (objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "config"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isHeadless"), v2, v3))
  {
    v4 = a1 + 72;
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(*(*(a1 + 72) + 8) + 40);
    v22 = 0;
    [v5 startMonitoringPids:v6 forClient:v7 withError:&v22];
    v8 = v22;
    if (v8)
    {
      v9 = v8;
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v10 = [*(*(*(a1 + 72) + 8) + 40) requestedProcessNames];
      [v10 minusSet:*(a1 + 56)];

      v11 = PPSMetricMonitorLogHandleForCategory(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __71__PPSMetricMonitorService_startMonitoringProcessesWithName_completion___block_invoke_2_cold_2(a1 + 56, a1 + 72);
      }

      v12 = [*(*(*v4 + 8) + 40) config];
      if ([v12 isHeadless])
      {
        v13 = [*(*(*v4 + 8) + 40) config];
        v14 = [v13 mode];

        if (!v14)
        {
          v15 = *(a1 + 40);
          v16 = [*(*(*(a1 + 72) + 8) + 40) config];
          [v16 updateInterval];
          [v15 startHeadlessUpdateTimer:?];

          [*(a1 + 40) _startHeadlessTimeoutTimer];
        }
      }

      else
      {
      }

      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    v17 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __71__PPSMetricMonitorService_startMonitoringProcessesWithName_completion___block_invoke_2_cold_1();
    }

    v18 = *(a1 + 64);
    v19 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = @"Invalid process name";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v21 = [v19 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:5 userInfo:v20];
    (*(v18 + 16))(v18, v21);
  }
}

- (void)startMonitoringPids:(id)pids forClient:(id)client withError:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  pidsCopy = pids;
  clientCopy = client;
  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  dispatch_assert_queue_V2(metricQueryQueue);

  v11 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    connection = [clientCopy connection];
    v21[0] = 67109378;
    v21[1] = [connection processIdentifier];
    v22 = 2112;
    v23 = pidsCopy;
    _os_log_impl(&dword_22E4FA000, v11, OS_LOG_TYPE_DEFAULT, "Start monitoring pids was called by client: %d pids: %@ ", v21, 0x12u);
  }

  config = [clientCopy config];
  isHeadless = [config isHeadless];

  if (isHeadless)
  {
    delegate = [(PPSMetricMonitorService *)self delegate];
    [delegate enableAccounting];
  }

  delegate2 = [(PPSMetricMonitorService *)self delegate];
  isMonitoringMetrics = [delegate2 isMonitoringMetrics];

  delegate3 = [(PPSMetricMonitorService *)self delegate];
  [delegate3 addMonitoredProcessesWithPIDs:pidsCopy error:error];

  if (isMonitoringMetrics)
  {
    [(PPSMetricMonitorService *)self _collectMetricsWithTimeout:0];
  }

  else
  {
    delegate4 = [(PPSMetricMonitorService *)self delegate];
    [delegate4 startMonitoring];
  }

  v20 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:pidsCopy];
  [clientCopy setMonitoredPIDs:v20];
}

- (void)startMonitoringProcessesWithNames:(id)names withPIDs:(id)ds completion:(id)completion
{
  v80 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  dsCopy = ds;
  completionCopy = completion;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  processIdentifier = [currentConnection processIdentifier];

  v11 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *&buf[4] = processIdentifier;
    *v77 = 2112;
    *&v77[2] = namesCopy;
    *&v77[10] = 2112;
    *&v77[12] = dsCopy;
    _os_log_impl(&dword_22E4FA000, v11, OS_LOG_TYPE_DEFAULT, "Start monitoring processes with names and pids was called by client: %d process names: %@, PIDs: %@ ", buf, 0x1Cu);
  }

  *buf = 0;
  *v77 = buf;
  *&v77[8] = 0x3032000000;
  *&v77[16] = __Block_byref_object_copy__1;
  v78 = __Block_byref_object_dispose__1;
  v79 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__1;
  v71 = __Block_byref_object_dispose__1;
  v72 = 0;
  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__PPSMetricMonitorService_startMonitoringProcessesWithNames_withPIDs_completion___block_invoke;
  block[3] = &unk_278847CD8;
  v64 = &v67;
  v65 = buf;
  block[4] = self;
  v66 = processIdentifier;
  v41 = completionCopy;
  v63 = v41;
  dispatch_sync(metricQueryQueue, block);

  if (*(*v77 + 40))
  {
    v41[2]();
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:namesCopy];
    [v68[5] setMonitoredProcessNames:v13];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v14 = dsCopy;
    v15 = [v14 countByEnumeratingWithState:&v58 objects:v75 count:16];
    if (v15)
    {
      v16 = *v59;
      do
      {
        v17 = 0;
        do
        {
          if (*v59 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = -[PPSMetricMonitorService fullProcessNameForPid:](self, "fullProcessNameForPid:", [*(*(&v58 + 1) + 8 * v17) intValue]);
          if (v18)
          {
            monitoredProcessNames = [v68[5] monitoredProcessNames];
            [monitoredProcessNames addObject:v18];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v58 objects:v75 count:16];
      }

      while (v15);
    }

    v20 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:namesCopy];
    [v68[5] setRequestedProcessNames:v20];

    config = [v68[5] config];
    LODWORD(v20) = [config isHeadless];

    if (v20)
    {
      [(PPSMetricMonitorService *)self _addProcessesNeededForAccounting:v68[5]];
    }

    v43 = [MEMORY[0x277CBEB58] set];
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v14];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    requestedProcessNames = [v68[5] requestedProcessNames];
    v24 = [requestedProcessNames countByEnumeratingWithState:&v54 objects:v74 count:16];
    if (v24)
    {
      v25 = *v55;
      do
      {
        v26 = 0;
        do
        {
          if (*v55 != v25)
          {
            objc_enumerationMutation(requestedProcessNames);
          }

          v27 = *(*(&v54 + 1) + 8 * v26);
          delegate = [(PPSMetricMonitorService *)self delegate];
          v29 = [delegate pidForProcessName:v27];

          if (v29 >= 1)
          {
            v30 = [MEMORY[0x277CCABB0] numberWithInt:v29];
            [v22 addObject:v30];

            [v43 addObject:v27];
          }

          ++v26;
        }

        while (v24 != v26);
        v24 = [requestedProcessNames countByEnumeratingWithState:&v54 objects:v74 count:16];
      }

      while (v24);
    }

    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__1;
    v52 = __Block_byref_object_dispose__1;
    v53 = 0;
    metricQueryQueue2 = [(PPSMetricMonitorService *)self metricQueryQueue];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __81__PPSMetricMonitorService_startMonitoringProcessesWithNames_withPIDs_completion___block_invoke_2;
    v44[3] = &unk_278847D28;
    v44[4] = self;
    v32 = v22;
    v45 = v32;
    v46 = &v67;
    v47 = &v48;
    dispatch_sync(metricQueryQueue2, v44);

    if (v49[5])
    {
      v41[2]();
    }

    else
    {
      requestedProcessNames2 = [v68[5] requestedProcessNames];
      [requestedProcessNames2 minusSet:v43];

      v34 = PPSMetricMonitorLogHandleForCategory(2);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        requestedProcessNames3 = [v68[5] requestedProcessNames];
        [(PPSMetricMonitorService *)v43 startMonitoringProcessesWithNames:requestedProcessNames3 withPIDs:v73 completion:v34];
      }

      requestedProcessNames4 = [v68[5] requestedProcessNames];
      v37 = [requestedProcessNames4 count] == 0;

      if (!v37)
      {
        [(PPSMetricMonitorService *)self _startProcessPollingTimer:v68[5]];
      }

      config2 = [v68[5] config];
      isHeadless = [config2 isHeadless];

      if (isHeadless)
      {
        [(PPSMetricMonitorService *)self _startHeadlessTimeoutTimer];
      }

      (v41[2])(v41, 0);
    }

    _Block_object_dispose(&v48, 8);
  }

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(buf, 8);
}

uint64_t __81__PPSMetricMonitorService_startMonitoringProcessesWithNames_withPIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64)];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);
  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = *(*(a1 + 56) + 8);
  obj = *(v9 + 40);
  [v7 _canStartMonitoringForClient:v8 withError:&obj];
  objc_storeStrong((v9 + 40), obj);
  return (*(*(a1 + 40) + 16))();
}

void __81__PPSMetricMonitorService_startMonitoringProcessesWithNames_withPIDs_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(*(a1[6] + 8) + 40);
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  [v2 startMonitoringPids:v1 forClient:v3 withError:&obj];
  objc_storeStrong((v4 + 40), obj);
}

- (void)_collectMetricsWithTimeout:(int)timeout andUpdateClient:(id)client
{
  v4 = *&timeout;
  clientCopy = client;
  v7 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService _collectMetricsWithTimeout:clientCopy andUpdateClient:?];
  }

  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  dispatch_assert_queue_V2(metricQueryQueue);

  [(PPSMetricMonitorService *)self _collectMetricsWithTimeout:v4];
  config = [clientCopy config];
  LODWORD(metricQueryQueue) = [config updateDelegate];

  if (metricQueryQueue)
  {
    remoteProxy = [clientCopy remoteProxy];
    clientMetrics = [clientCopy clientMetrics];
    v12 = [clientMetrics copy];
    [remoteProxy updateWithMetricCollection:v12];
  }

  config2 = [clientCopy config];
  emitSignposts = [config2 emitSignposts];

  if (emitSignposts)
  {
    clientMetrics2 = [clientCopy clientMetrics];
    [(PPSMetricMonitorService *)self emitPowerMetrics:clientMetrics2 ofClient:clientCopy];
  }
}

- (void)finishMonitoringAndSendMetrics
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __57__PPSMetricMonitorService_finishMonitoringAndSendMetrics__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];

  [*(a1 + 32) _collectMetricsWithTimeout:5 andUpdateClient:v4];
  v5 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __57__PPSMetricMonitorService_finishMonitoringAndSendMetrics__block_invoke_cold_1();
  }

  v6 = [v4 clientMetrics];
  v7 = [v4 monitoredPIDs];
  [v6 clearMetrics:v7];
}

- (void)collectMetricsOnDemand:(id)demand
{
  demandCopy = demand;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  processIdentifier = [currentConnection processIdentifier];

  v7 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService collectMetricsOnDemand:];
  }

  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PPSMetricMonitorService_collectMetricsOnDemand___block_invoke;
  block[3] = &unk_278847D78;
  v12 = processIdentifier;
  block[4] = self;
  v11 = demandCopy;
  v9 = demandCopy;
  dispatch_sync(metricQueryQueue, block);
}

void __50__PPSMetricMonitorService_collectMetricsOnDemand___block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) clients];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 requestedProcessNames];
    v6 = [v5 count];

    if (v6)
    {
      v7 = PPSMetricMonitorLogHandleForCategory(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __50__PPSMetricMonitorService_collectMetricsOnDemand___block_invoke_cold_1(v4, v7);
      }
    }

    [*(a1 + 32) _collectMetricsWithTimeout:1 andUpdateClient:v4];
    v8 = *(a1 + 40);
    v9 = [v4 clientMetrics];
    v10 = [v9 copy];
    (*(v8 + 16))(v8, v10, 0);

    v11 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __57__PPSMetricMonitorService_finishMonitoringAndSendMetrics__block_invoke_cold_1();
    }

    v12 = [v4 clientMetrics];
    v13 = [v4 monitoredPIDs];
    [v12 clearMetrics:v13];
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"PID %d does not have a valid connection", *(a1 + 48)];
    v14 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v14 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:0 userInfo:v15];

    v16 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __50__PPSMetricMonitorService_collectMetricsOnDemand___block_invoke_cold_3();
    }
  }
}

- (BOOL)_canStartMonitoringForClient:(id)client withError:(id *)error
{
  v29[1] = *MEMORY[0x277D85DE8];
  clientCopy = client;
  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  dispatch_assert_queue_V2(metricQueryQueue);

  v8 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService _canStartMonitoringForClient:clientCopy withError:?];
  }

  config = [clientCopy config];

  if (config)
  {
    config2 = [clientCopy config];
    isHeadless = [config2 isHeadless];

    if (!isHeadless)
    {
      v19 = 1;
      goto LABEL_14;
    }

    if ([(PPSMetricMonitorService *)self hasHeadlessClient])
    {
      v12 = PPSMetricMonitorLogHandleForCategory(2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PPSMetricMonitorService _canStartMonitoringForClient:withError:];
      }

      v13 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277CCA450];
      v27 = @"Only one headless client is allowed";
      v14 = MEMORY[0x277CBEAC0];
      v15 = &v27;
      v16 = &v26;
    }

    else
    {
      connection = [clientCopy connection];
      v22 = [(PPSMetricMonitorService *)self _hasEntitlements:connection];

      if (v22)
      {
        v19 = 1;
        [(PPSMetricMonitorService *)self setHasHeadlessClient:1];
        goto LABEL_14;
      }

      v23 = PPSMetricMonitorLogHandleForCategory(2);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [PPSMetricMonitorService _canStartMonitoringForClient:withError:];
      }

      v13 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA450];
      v25 = @"Missing headless client entitlement";
      v14 = MEMORY[0x277CBEAC0];
      v15 = &v25;
      v16 = &v24;
    }
  }

  else
  {
    v17 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [PPSMetricMonitorService _canStartMonitoringForClient:clientCopy withError:v17];
    }

    v13 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v29[0] = @"Client config is nil";
    v14 = MEMORY[0x277CBEAC0];
    v15 = v29;
    v16 = &v28;
  }

  v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
  *error = [v13 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:0 userInfo:v18];

  v19 = 0;
LABEL_14:

  return v19;
}

- (void)_handleConnectionEndedWithClient:(id)client
{
  v35 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  dispatch_assert_queue_V2(metricQueryQueue);

  v6 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService _handleConnectionEndedWithClient:clientCopy];
  }

  config = [clientCopy config];
  isHeadless = [config isHeadless];

  clients = [(PPSMetricMonitorService *)self clients];
  v10 = clients;
  if (isHeadless)
  {
    [clients removeObjectForKey:&unk_2843008A0];

    [(PPSMetricMonitorService *)self _cancelHeadlessTimeoutTimer];
  }

  else
  {
    v11 = MEMORY[0x277CCABB0];
    connection = [clientCopy connection];
    v13 = [v11 numberWithInt:{objc_msgSend(connection, "processIdentifier")}];
    [v10 removeObjectForKey:v13];
  }

  monitoredPIDs = [clientCopy monitoredPIDs];

  if (monitoredPIDs)
  {
    v15 = [MEMORY[0x277CBEB58] set];
    clients2 = [(PPSMetricMonitorService *)self clients];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __60__PPSMetricMonitorService__handleConnectionEndedWithClient___block_invoke;
    v32[3] = &unk_278847C38;
    v17 = v15;
    v33 = v17;
    [clients2 enumerateKeysAndObjectsUsingBlock:v32];

    monitoredPIDs2 = [clientCopy monitoredPIDs];
    v19 = [monitoredPIDs2 mutableCopy];

    [v19 minusSet:v17];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      do
      {
        v24 = 0;
        do
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v28 + 1) + 8 * v24);
          delegate = [(PPSMetricMonitorService *)self delegate];
          [delegate removeMonitoredProcessWithPID:{objc_msgSend(v25, "intValue")}];

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v22);
    }
  }

  clientMetrics = [clientCopy clientMetrics];

  if (clientMetrics)
  {
    [clientCopy setClientMetrics:0];
  }
}

void __60__PPSMetricMonitorService__handleConnectionEndedWithClient___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 monitoredPIDs];
  [v3 unionSet:v4];
}

- (void)_startProcessPollingTimer:(id)timer
{
  timerCopy = timer;
  v5 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService _startProcessPollingTimer:timerCopy];
  }

  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, metricQueryQueue);
  [(PPSMetricMonitorService *)self setProcessPollingRepeatingTimer:v7];

  processPollingRepeatingTimer = [(PPSMetricMonitorService *)self processPollingRepeatingTimer];
  v9 = dispatch_time(0, 0);
  dispatch_source_set_timer(processPollingRepeatingTimer, v9, 0xBEBC200uLL, 0x989680uLL);

  objc_initWeak(&location, self);
  processPollingRepeatingTimer2 = [(PPSMetricMonitorService *)self processPollingRepeatingTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __53__PPSMetricMonitorService__startProcessPollingTimer___block_invoke;
  handler[3] = &unk_278847DA0;
  objc_copyWeak(&v16, &location);
  v11 = timerCopy;
  v15 = v11;
  dispatch_source_set_event_handler(processPollingRepeatingTimer2, handler);

  processPollingRepeatingTimer3 = [(PPSMetricMonitorService *)self processPollingRepeatingTimer];
  dispatch_resume(processPollingRepeatingTimer3);

  v13 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService _startProcessPollingTimer:];
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __53__PPSMetricMonitorService__startProcessPollingTimer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _pollForProcessNames:*(a1 + 32)];
}

- (void)_cancelProcessPollingTimer
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (BOOL)_isProcessAlive:(int)alive
{
  v3 = *&alive;
  v5 = [(PPSMetricMonitorService *)self fullProcessNameForPid:?];
  if (v5)
  {
    headlessClientTrackedProcesses = [(PPSMetricMonitorService *)self headlessClientTrackedProcesses];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    v8 = [headlessClientTrackedProcesses objectForKeyedSubscript:v7];
    v9 = [v5 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_checkIfProcessesAreAlive:(id)alive
{
  v35 = *MEMORY[0x277D85DE8];
  aliveCopy = alive;
  v5 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService _checkIfProcessesAreAlive:aliveCopy];
  }

  requestedProcessNames = [aliveCopy requestedProcessNames];
  v7 = [requestedProcessNames count];

  if (v7)
  {
    v26 = [(PPSMetricMonitorService *)self _findProcesses:aliveCopy];
  }

  else
  {
    v26 = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  monitoredPIDs = [aliveCopy monitoredPIDs];
  v9 = [monitoredPIDs copy];

  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        intValue = [*(*(&v28 + 1) + 8 * i) intValue];
        if (![(PPSMetricMonitorService *)self _isProcessAlive:intValue])
        {
          headlessClientTrackedProcesses = [(PPSMetricMonitorService *)self headlessClientTrackedProcesses];
          v16 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
          v17 = [headlessClientTrackedProcesses objectForKeyedSubscript:v16];

          v18 = PPSMetricMonitorLogHandleForCategory(2);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v33 = v17;
            _os_log_impl(&dword_22E4FA000, v18, OS_LOG_TYPE_INFO, "Process %@ has exited", buf, 0xCu);
          }

          requestedProcessNames2 = [aliveCopy requestedProcessNames];
          [requestedProcessNames2 addObject:v17];

          headlessClientTrackedProcesses2 = [(PPSMetricMonitorService *)self headlessClientTrackedProcesses];
          v21 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
          [headlessClientTrackedProcesses2 removeObjectForKey:v21];

          monitoredPIDs2 = [aliveCopy monitoredPIDs];
          v23 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
          [monitoredPIDs2 removeObject:v23];

          delegate = [(PPSMetricMonitorService *)self delegate];
          [delegate removeMonitoredProcessWithPID:intValue];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v11);
  }

  return v26;
}

- (id)_findProcesses:(id)processes
{
  v32 = *MEMORY[0x277D85DE8];
  processesCopy = processes;
  v5 = proc_listpids(1u, 0, 0, 0);
  if ((v5 & 0x80000000) != 0 || (v6 = v5, v7 = v5, (v8 = malloc_type_malloc(v5, 0x100004052888210uLL)) == 0))
  {
    v11 = 0;
  }

  else
  {
    v9 = v8;
    memset(v8, 255, v7);
    v27 = v9;
    v10 = proc_listpids(1u, 0, v9, v6);
    v11 = objc_opt_new();
    v12 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitorService _findProcesses:];
    }

    if (v10 >= 4)
    {
      if (v10 >> 2 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v10 >> 2;
      }

      do
      {
        v15 = *v9++;
        v14 = v15;
        if (v15 >= 1)
        {
          v16 = [(PPSMetricMonitorService *)self fullProcessNameForPid:v14];
          requestedProcessNames = [processesCopy requestedProcessNames];
          v18 = [requestedProcessNames containsObject:v16];

          if (v18)
          {
            v19 = PPSMetricMonitorLogHandleForCategory(2);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v29 = v14;
              v30 = 2112;
              v31 = v16;
              _os_log_impl(&dword_22E4FA000, v19, OS_LOG_TYPE_INFO, "Found PID (%d) for %@. Adding to monitor.", buf, 0x12u);
            }

            requestedProcessNames2 = [processesCopy requestedProcessNames];
            [requestedProcessNames2 removeObject:v16];

            v21 = [MEMORY[0x277CCABB0] numberWithInt:v14];
            [v11 addObject:v21];

            config = [processesCopy config];
            isHeadless = [config isHeadless];

            if (isHeadless)
            {
              headlessClientTrackedProcesses = [(PPSMetricMonitorService *)self headlessClientTrackedProcesses];
              v25 = [MEMORY[0x277CCABB0] numberWithInt:v14];
              [headlessClientTrackedProcesses setObject:v16 forKeyedSubscript:v25];
            }
          }
        }

        --v13;
      }

      while (v13);
    }

    free(v27);
  }

  return v11;
}

- (void)_pollForProcessNames:(id)names
{
  namesCopy = names;
  requestedProcessNames = [namesCopy requestedProcessNames];
  v6 = [requestedProcessNames count];

  if (v6)
  {
    v7 = [(PPSMetricMonitorService *)self _findProcesses:namesCopy];
    if ([v7 count])
    {
      delegate = [(PPSMetricMonitorService *)self delegate];
      v10 = 0;
      [delegate addMonitoredProcessesWithPIDs:v7 error:&v10];

      [(PPSMetricMonitorService *)self _collectMetricsWithTimeout:1];
      monitoredPIDs = [namesCopy monitoredPIDs];
      [monitoredPIDs addObjectsFromArray:v7];
    }
  }

  else
  {
    [(PPSMetricMonitorService *)self _cancelProcessPollingTimer];
    v7 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitorService _pollForProcessNames:];
    }
  }
}

- (id)fullProcessNameForPid:(int)pid
{
  v7 = *MEMORY[0x277D85DE8];
  if (pid < 1 || (bzero(buffer, 0x1000uLL), proc_pidpath(pid, buffer, 0x1000u) < 1))
  {
    v4 = 0;
  }

  else
  {
    buffer[4095] = 0;
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:basename(buffer)];
  }

  return v4;
}

- (void)_emitPowerSignpostWithMetric:(id)metric value:(id)value
{
  valueCopy = value;
  metricCopy = metric;
  v7 = PLLogPowerSignpost(metricCopy);
  PLEmitPowerSignpost(v7, metricCopy, valueCopy, 0);
}

- (void)_emitPowerSignpostWithMetric:(id)metric value:(id)value pid:(id)pid
{
  pidCopy = pid;
  valueCopy = value;
  metricCopy = metric;
  v10 = PLLogPowerSignpost(metricCopy);
  PLEmitPowerSignpost(v10, metricCopy, valueCopy, pidCopy);
}

- (void)_updateAndTrimSleepWakeHistoryRelativeTo:(unint64_t)to
{
  metricQueryQueue = [(PPSMetricMonitorService *)self metricQueryQueue];
  dispatch_assert_queue_V2(metricQueryQueue);

  delegate = [(PPSMetricMonitorService *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_18;
  }

  delegate2 = [(PPSMetricMonitorService *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
LABEL_18:
    v27 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [PPSMetricMonitorService _updateAndTrimSleepWakeHistoryRelativeTo:];
    }

    sleepWakeHistory = [(PPSMetricMonitorService *)self sleepWakeHistory];
    [sleepWakeHistory removeAllObjects];
    goto LABEL_21;
  }

  delegate3 = [(PPSMetricMonitorService *)self delegate];
  queryLastSleepTimeMCT = [delegate3 queryLastSleepTimeMCT];

  delegate4 = [(PPSMetricMonitorService *)self delegate];
  queryLastWakeTimeMCT = [delegate4 queryLastWakeTimeMCT];

  if (!queryLastSleepTimeMCT)
  {
    return;
  }

  sleepWakeHistory2 = [(PPSMetricMonitorService *)self sleepWakeHistory];
  sleepWakeHistory = [sleepWakeHistory2 lastObject];

  if (sleepWakeHistory && queryLastSleepTimeMCT <= [sleepWakeHistory sleepTime])
  {
    if (queryLastSleepTimeMCT == [sleepWakeHistory sleepTime])
    {
      if (queryLastWakeTimeMCT > [sleepWakeHistory wakeTime])
      {
        v28 = PPSMetricMonitorLogHandleForCategory(2);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [PPSMetricMonitorService _updateAndTrimSleepWakeHistoryRelativeTo:sleepWakeHistory];
        }

        [sleepWakeHistory setWakeTime:queryLastWakeTimeMCT];
      }

      goto LABEL_10;
    }

    v16 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
    {
      [(PPSMetricMonitorService *)sleepWakeHistory _updateAndTrimSleepWakeHistoryRelativeTo:queryLastSleepTimeMCT, &v16->super];
    }
  }

  else
  {
    v15 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitorService _updateAndTrimSleepWakeHistoryRelativeTo:];
    }

    v16 = [[PPSSleepWakeInterval alloc] initWithSleepTime:queryLastSleepTimeMCT wakeTime:queryLastWakeTimeMCT];
    sleepWakeHistory3 = [(PPSMetricMonitorService *)self sleepWakeHistory];
    [sleepWakeHistory3 addObject:v16];
  }

LABEL_10:
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __68__PPSMetricMonitorService__updateAndTrimSleepWakeHistoryRelativeTo___block_invoke;
  v29[3] = &__block_descriptor_40_e47_B24__0__PPSSleepWakeInterval_8__NSDictionary_16l;
  v29[4] = to;
  v18 = [MEMORY[0x277CCAC30] predicateWithBlock:v29];
  sleepWakeHistory4 = [(PPSMetricMonitorService *)self sleepWakeHistory];
  v20 = [sleepWakeHistory4 filteredArrayUsingPredicate:v18];

  v21 = [v20 count];
  sleepWakeHistory5 = [(PPSMetricMonitorService *)self sleepWakeHistory];
  v23 = [sleepWakeHistory5 count];

  if (v21 < v23)
  {
    v24 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [(PPSMetricMonitorService *)self _updateAndTrimSleepWakeHistoryRelativeTo:v20];
    }

    v25 = [v20 mutableCopy];
    [(PPSMetricMonitorService *)self setSleepWakeHistory:v25];
  }

  v26 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService _updateAndTrimSleepWakeHistoryRelativeTo:?];
  }

LABEL_21:
}

BOOL __68__PPSMetricMonitorService__updateAndTrimSleepWakeHistoryRelativeTo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ![v3 wakeTime] || objc_msgSend(v3, "wakeTime") == -1 || objc_msgSend(v3, "wakeTime") > *(a1 + 32);

  return v4;
}

- (void)_startHeadlessTimeoutTimer
{
  headlessTimeoutTimer = [(PPSMetricMonitorService *)self headlessTimeoutTimer];

  if (!headlessTimeoutTimer)
  {
    v4 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E4FA000, v4, OS_LOG_TYPE_DEFAULT, "Starting headless timeout timer", buf, 2u);
    }

    v5 = dispatch_get_global_queue(-32768, 0);
    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v5);
    [(PPSMetricMonitorService *)self setHeadlessTimeoutTimer:v6];

    headlessTimeoutTimer2 = [(PPSMetricMonitorService *)self headlessTimeoutTimer];
    v8 = dispatch_walltime(0, 36000000000000);
    dispatch_source_set_timer(headlessTimeoutTimer2, v8, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);

    headlessTimeoutTimer3 = [(PPSMetricMonitorService *)self headlessTimeoutTimer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __53__PPSMetricMonitorService__startHeadlessTimeoutTimer__block_invoke;
    handler[3] = &unk_278847A30;
    handler[4] = self;
    dispatch_source_set_event_handler(headlessTimeoutTimer3, handler);

    headlessTimeoutTimer4 = [(PPSMetricMonitorService *)self headlessTimeoutTimer];
    dispatch_resume(headlessTimeoutTimer4);
  }
}

uint64_t __53__PPSMetricMonitorService__startHeadlessTimeoutTimer__block_invoke(uint64_t a1)
{
  v2 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22E4FA000, v2, OS_LOG_TYPE_DEFAULT, "The timeout was reached, stopping timer", v4, 2u);
  }

  [*(a1 + 32) stopMonitoringHeadlessClient];
  return [*(a1 + 32) _sendMetricMonitorTimeoutNotification];
}

- (void)_cancelHeadlessTimeoutTimer
{
  headlessTimeoutTimer = [(PPSMetricMonitorService *)self headlessTimeoutTimer];

  if (headlessTimeoutTimer)
  {
    v4 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_22E4FA000, v4, OS_LOG_TYPE_DEFAULT, "Cancelling headless timeout timer", v6, 2u);
    }

    headlessTimeoutTimer2 = [(PPSMetricMonitorService *)self headlessTimeoutTimer];
    dispatch_source_cancel(headlessTimeoutTimer2);

    [(PPSMetricMonitorService *)self setHeadlessTimeoutTimer:0];
  }
}

- (void)_sendMetricMonitorTimeoutNotification
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = notify_post("com.apple.perfpowermetricmonitor.monitoring_timed_out");
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    while (1)
    {
      v5 = PPSMetricMonitorLogHandleForCategory(2);
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (v4 == 3)
      {
        break;
      }

      if (v6)
      {
        *buf = 67109376;
        v8 = v4;
        v9 = 1024;
        v10 = v3;
        _os_log_error_impl(&dword_22E4FA000, v5, OS_LOG_TYPE_ERROR, "Failed to post metricmonitor timeout notification(attempt %d). Status: %d Retrying", buf, 0xEu);
      }

      ++v4;
      v3 = notify_post("com.apple.perfpowermetricmonitor.monitoring_timed_out");
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    if (v6)
    {
      [PPSMetricMonitorService _sendMetricMonitorTimeoutNotification];
    }
  }

  else
  {
LABEL_7:
    v5 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E4FA000, v5, OS_LOG_TYPE_DEFAULT, "Successfully posted metricmonitor timeout notification.", buf, 2u);
    }
  }
}

- (BOOL)_hasEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  v4 = [entitlementsCopy valueForEntitlement:@"com.apple.PerfPowerMetricMonitorHeadless.client"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (PPSMetricMonitorServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)isMonitoringForHeadlessWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __55__PPSMetricMonitorService_stopMonitoringHeadlessClient__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __55__PPSMetricMonitorService_stopMonitoringHeadlessClient__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)emitTracingToolPowerMetrics:ofClient:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)emitTracingToolPowerMetrics:ofClient:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)emitTracingToolPowerMetrics:(void *)a1 ofClient:.cold.3(void *a1)
{
  v1 = [a1 displayPower];
  [v1 doubleValue];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)emitTracingToolPowerMetrics:(void *)a1 ofClient:.cold.4(void *a1)
{
  v1 = [a1 cellularPower];
  [v1 doubleValue];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)emitTracingToolPowerMetrics:(void *)a1 ofClient:.cold.5(void *a1)
{
  v1 = [a1 wifiPower];
  [v1 doubleValue];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)emitPowerMetrics:ofClient:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_shouldAcceptheadlessClientConnection:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_collectMetricsWithTimeout:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_collectMetricsWithTimeout:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __54__PPSMetricMonitorService__collectMetricsWithTimeout___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __54__PPSMetricMonitorService__collectMetricsWithTimeout___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)setHeadlessQueryTimer:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __70__PPSMetricMonitorService_startMonitoringProcessesWithPID_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __70__PPSMetricMonitorService_startMonitoringProcessesWithPID_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __71__PPSMetricMonitorService_startMonitoringProcessesWithName_completion___block_invoke_2_cold_2(uint64_t a1, uint64_t a2)
{
  v7 = [*(*(*a2 + 8) + 40) requestedProcessNames];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)startMonitoringProcessesWithNames:(uint8_t *)buf withPIDs:(os_log_t)log completion:.cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_22E4FA000, log, OS_LOG_TYPE_DEBUG, "Found procs :%@, pending:%@", buf, 0x16u);
}

- (void)_collectMetricsWithTimeout:(void *)a1 andUpdateClient:.cold.1(void *a1)
{
  v1 = [a1 connection];
  [v1 processIdentifier];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

- (void)collectMetricsOnDemand:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __50__PPSMetricMonitorService_collectMetricsOnDemand___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 requestedProcessNames];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_22E4FA000, a2, OS_LOG_TYPE_ERROR, "Failed to find matching PID for process name(s): %@", v4, 0xCu);
}

void __50__PPSMetricMonitorService_collectMetricsOnDemand___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_canStartMonitoringForClient:(void *)a1 withError:.cold.1(void *a1)
{
  v1 = [a1 connection];
  [v1 processIdentifier];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

- (void)_canStartMonitoringForClient:withError:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_canStartMonitoringForClient:withError:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_canStartMonitoringForClient:(void *)a1 withError:(NSObject *)a2 .cold.4(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 connection];
  [v3 processIdentifier];
  OUTLINED_FUNCTION_5_0();
  _os_log_fault_impl(&dword_22E4FA000, a2, OS_LOG_TYPE_FAULT, "Client %d config is nil", v4, 8u);
}

- (void)_handleConnectionEndedWithClient:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 connection];
  [v1 processIdentifier];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

- (void)_startProcessPollingTimer:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 connection];
  [v1 processIdentifier];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

- (void)_startProcessPollingTimer:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_checkIfProcessesAreAlive:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 connection];
  [v1 processIdentifier];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

- (void)_findProcesses:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pollForProcessNames:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_updateAndTrimSleepWakeHistoryRelativeTo:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_updateAndTrimSleepWakeHistoryRelativeTo:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 sleepTime];
  v6 = 134218240;
  v7 = a2;
  OUTLINED_FUNCTION_8();
  v8 = v5;
  _os_log_error_impl(&dword_22E4FA000, a3, OS_LOG_TYPE_ERROR, "Queried sleep time (%llu) is older than last known sleep time (%llu). Ignoring.", &v6, 0x16u);
}

- (void)_updateAndTrimSleepWakeHistoryRelativeTo:(void *)a1 .cold.3(void *a1)
{
  [a1 sleepTime];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_updateAndTrimSleepWakeHistoryRelativeTo:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_updateAndTrimSleepWakeHistoryRelativeTo:(void *)a1 .cold.5(void *a1, void *a2)
{
  v3 = [a1 sleepWakeHistory];
  [v3 count];
  [a2 count];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)_updateAndTrimSleepWakeHistoryRelativeTo:(void *)a1 .cold.6(void *a1)
{
  v1 = [a1 sleepWakeHistory];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_hasEntitlements:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end