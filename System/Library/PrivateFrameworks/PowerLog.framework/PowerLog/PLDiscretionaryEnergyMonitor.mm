@interface PLDiscretionaryEnergyMonitor
- (PLDiscretionaryEnergyMonitor)initWithCompletionBlock:(id)block;
- (PLDiscretionaryEnergyMonitor)initWithDebugMode:(BOOL)mode andMockData:(id)data andCompletionBlock:(id)block;
- (double)getPowerlogEnergySum:(id)sum;
- (id)createPowerlogQueryTimer;
- (id)createQuickEnergyAccumulatorTimer;
- (void)accumulateQuickEnergy;
- (void)createQuickEnergyAccumulatorTimer;
- (void)generateEnergyReport;
- (void)incrementCPUEnergy:(double)energy;
- (void)incrementNetworkEnergy:(double)energy;
- (void)logEnergyReport:(id)report;
- (void)logPowerlogResponse:(id)response;
- (void)logQuickEnergySnapshots;
- (void)queryPowerlogForDiscretionaryEnergy;
- (void)reportChargingStatus:(BOOL)status;
- (void)reportStartEvent:(id)event withInfo:(id)info;
- (void)reportStopEvent:(id)event withInfo:(id)info;
- (void)runCompletionBlockWithEnergyResponse:(id)response;
- (void)setStateForNotification:(id)notification withState:(id)state;
- (void)setupNotificationListeners;
- (void)testHighVolumeStartStopReporting:(id)reporting withInfo:(id)info withNumIterations:(double)iterations;
- (void)updateMockData:(id)data;
@end

@implementation PLDiscretionaryEnergyMonitor

- (PLDiscretionaryEnergyMonitor)initWithCompletionBlock:(id)block
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = PLDiscretionaryEnergyMonitor;
  v5 = [(PLDiscretionaryEnergyMonitor *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = PLLogDiscretionaryEnergyMonitor(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1BACB7000, v7, OS_LOG_TYPE_DEFAULT, "Initializing PLDiscretionaryEnergyMonitor...", v10, 2u);
    }

    v6 = [(PLDiscretionaryEnergyMonitor *)v6 initWithDebugMode:0 andMockData:0 andCompletionBlock:blockCopy];
    v8 = PLLogDiscretionaryEnergyMonitor(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1BACB7000, v8, OS_LOG_TYPE_DEFAULT, "Finished initializing PLDiscretionaryEnergyMonitor...", v10, 2u);
    }
  }

  return v6;
}

- (PLDiscretionaryEnergyMonitor)initWithDebugMode:(BOOL)mode andMockData:(id)data andCompletionBlock:(id)block
{
  modeCopy = mode;
  v29 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  blockCopy = block;
  v26.receiver = self;
  v26.super_class = PLDiscretionaryEnergyMonitor;
  v10 = [(PLDiscretionaryEnergyMonitor *)&v26 init];
  v11 = v10;
  if (v10)
  {
    v12 = discretionaryEnergyMonitorQueue([(PLDiscretionaryEnergyMonitor *)v10 setCompletionBlock:blockCopy]);
    [(PLDiscretionaryEnergyMonitor *)v11 setWorkQueue:v12];

    [(PLDiscretionaryEnergyMonitor *)v11 setMockData:0];
    v13 = modeCopy && +[PLModelingUtilities internalBuild];
    [(PLDiscretionaryEnergyMonitor *)v11 setDebugMode:v13];
    debugMode = [(PLDiscretionaryEnergyMonitor *)v11 debugMode];
    if (debugMode)
    {
      v15 = PLLogDiscretionaryEnergyMonitor(debugMode);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = dataCopy;
        _os_log_impl(&dword_1BACB7000, v15, OS_LOG_TYPE_INFO, "Initializing in debug mode with mockData=%@", buf, 0xCu);
      }

      if (dataCopy)
      {
        v16 = [dataCopy mutableCopy];
        [(PLDiscretionaryEnergyMonitor *)v11 setMockData:v16];

        mockData = [(PLDiscretionaryEnergyMonitor *)v11 mockData];
        v18 = [mockData objectForKeyedSubscript:@"LastPowerlogResponseMock"];
        [(PLDiscretionaryEnergyMonitor *)v11 setLastPowerlogResponse:v18];
      }
    }

    else if (+[PLModelingUtilities internalBuild])
    {
      [(PLDiscretionaryEnergyMonitor *)v11 setupNotificationListeners];
    }

    [(PLDiscretionaryEnergyMonitor *)v11 setAccumulatedCPUEnergy:0.0];
    [(PLDiscretionaryEnergyMonitor *)v11 setAccumulatedNetworkEnergy:0.0];
    [(PLDiscretionaryEnergyMonitor *)v11 setLastReportedTotalEnergy:0.0];
    [(PLDiscretionaryEnergyMonitor *)v11 setPowerlogEnergyLast:0.0];
    [(PLDiscretionaryEnergyMonitor *)v11 setPowerlogEnergyPrevious:0.0];
    createPowerlogQueryTimer = [(PLDiscretionaryEnergyMonitor *)v11 createPowerlogQueryTimer];
    [(PLDiscretionaryEnergyMonitor *)v11 setPowerlogQueryTimer:createPowerlogQueryTimer];

    createQuickEnergyAccumulatorTimer = [(PLDiscretionaryEnergyMonitor *)v11 createQuickEnergyAccumulatorTimer];
    [(PLDiscretionaryEnergyMonitor *)v11 setQuickEnergyAccumulatorTimer:createQuickEnergyAccumulatorTimer];

    v21 = objc_opt_new();
    [(PLDiscretionaryEnergyMonitor *)v11 setQuickEnergySnapshots:v21];

    [(PLDiscretionaryEnergyMonitor *)v11 queryPowerlogForDiscretionaryEnergy];
    [(PLDiscretionaryEnergyMonitor *)v11 accumulateQuickEnergy];
    [(PLDiscretionaryEnergyMonitor *)v11 setIsCharging:0];
    v22 = [PLDiscretionaryIntervalManager alloc];
    mockData2 = [(PLDiscretionaryEnergyMonitor *)v11 mockData];
    v24 = [(PLDiscretionaryIntervalManager *)v22 initWithEnergyMonitor:v11 andMockData:mockData2];
    [(PLDiscretionaryEnergyMonitor *)v11 setIntervalManager:v24];
  }

  return v11;
}

- (void)reportStartEvent:(id)event withInfo:(id)info
{
  eventCopy = event;
  infoCopy = info;
  v8 = PLLogDiscretionaryEnergyMonitor(infoCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryEnergyMonitor reportStartEvent:withInfo:];
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PLDiscretionaryEnergyMonitor_reportStartEvent_withInfo___block_invoke;
  block[3] = &unk_1E7F18808;
  block[4] = self;
  v13 = eventCopy;
  v14 = infoCopy;
  v10 = infoCopy;
  v11 = eventCopy;
  dispatch_async(workQueue, block);
}

void __58__PLDiscretionaryEnergyMonitor_reportStartEvent_withInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) intervalManager];
  [v2 handleStartEvent:*(a1 + 40) withInfo:*(a1 + 48)];
}

- (void)reportStopEvent:(id)event withInfo:(id)info
{
  eventCopy = event;
  infoCopy = info;
  v8 = PLLogDiscretionaryEnergyMonitor(infoCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryEnergyMonitor reportStopEvent:withInfo:];
  }

  v9 = dispatch_time(0, 1000000000);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PLDiscretionaryEnergyMonitor_reportStopEvent_withInfo___block_invoke;
  block[3] = &unk_1E7F18808;
  block[4] = self;
  v14 = eventCopy;
  v15 = infoCopy;
  v11 = infoCopy;
  v12 = eventCopy;
  dispatch_after(v9, workQueue, block);
}

void __57__PLDiscretionaryEnergyMonitor_reportStopEvent_withInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) intervalManager];
  [v2 handleStopEvent:*(a1 + 40) withInfo:*(a1 + 48)];
}

- (void)generateEnergyReport
{
  lastPowerlogResponse = [self lastPowerlogResponse];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __52__PLDiscretionaryEnergyMonitor_generateEnergyReport__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = PLLogDiscretionaryEnergyMonitor(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __52__PLDiscretionaryEnergyMonitor_generateEnergyReport__block_invoke_cold_1(a1, v7);
  }

  v9 = *(a1 + 32);
  v10 = [v7 timestamp];
  [v9 timeIntervalSinceDate:v10];
  v12 = v11;

  if (v12 <= 60.0)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }

  else
  {
    [*(a1 + 40) addObject:v7];
  }
}

- (void)queryPowerlogForDiscretionaryEnergy
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PLDiscretionaryEnergyMonitor_queryPowerlogForDiscretionaryEnergy__block_invoke;
  block[3] = &unk_1E7F187A0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __67__PLDiscretionaryEnergyMonitor_queryPowerlogForDiscretionaryEnergy__block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = PLLogDiscretionaryEnergyMonitor(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v35) = 0;
    _os_log_impl(&dword_1BACB7000, v2, OS_LOG_TYPE_INFO, "Querying powerlog for discretionary energy", &v35, 2u);
  }

  v3 = [*(a1 + 32) debugMode];
  if (v3)
  {
    v4 = PLLogDiscretionaryEnergyMonitor(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v35) = 0;
      _os_log_impl(&dword_1BACB7000, v4, OS_LOG_TYPE_INFO, "Not querying for powerlog response in debug mode, using lastPowerlogResponse instead", &v35, 2u);
    }

    v5 = [*(a1 + 32) lastPowerlogResponse];
  }

  else
  {
    v5 = PLQueryRegistered(24, @"BLMReportEnergyDuet", 0);
  }

  v6 = v5;
  v7 = PLLogDiscretionaryEnergyMonitor(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v35 = 138412290;
    v36 = v6;
    _os_log_impl(&dword_1BACB7000, v7, OS_LOG_TYPE_INFO, "Powerlog response: %@", &v35, 0xCu);
  }

  if (!v6 || ([v6 objectForKeyedSubscript:@"PermissionUnknown"], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = PLLogDiscretionaryEnergyMonitor(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __67__PLDiscretionaryEnergyMonitor_queryPowerlogForDiscretionaryEnergy__block_invoke_cold_2();
    }

    goto LABEL_32;
  }

  [*(a1 + 32) logPowerlogResponse:v6];
  v10 = [*(a1 + 32) lastPowerlogResponse];

  if (v10)
  {
    v10 = [*(a1 + 32) lastPowerlogResponse];
  }

  v11 = [v6 objectForKeyedSubscript:@"BLMEnergyResponseTimestamp"];
  [*(a1 + 32) setPowerlogTimestampLast:v11];

  [*(a1 + 32) getPowerlogEnergySum:v6];
  [*(a1 + 32) setPowerlogEnergyLast:?];
  v12 = [*(a1 + 32) setLastPowerlogResponse:v6];
  if (!v10)
  {
    goto LABEL_29;
  }

  v13 = [v10 objectForKeyedSubscript:@"BLMEnergyResponseTimestamp"];
  [*(a1 + 32) setPowerlogTimestampPrevious:v13];
  [*(a1 + 32) getPowerlogEnergySum:v10];
  [*(a1 + 32) setPowerlogEnergyPrevious:?];
  v14 = [*(a1 + 32) powerlogTimestampLast];

  v15 = 1;
  if (v13)
  {
    if (v14)
    {
      v16 = [*(a1 + 32) powerlogTimestampLast];
      [v16 timeIntervalSinceDate:v13];
      v18 = v17;

      if (v18 > 0.0)
      {
        [*(a1 + 32) powerlogEnergyLast];
        v20 = v19;
        [*(a1 + 32) powerlogEnergyPrevious];
        v22 = PLLogDiscretionaryEnergyMonitor([*(a1 + 32) setPowerlogEnergyDiff:v20 - v21]);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          [*(a1 + 32) powerlogEnergyPrevious];
          v24 = v23;
          [*(a1 + 32) powerlogEnergyLast];
          v26 = v25;
          [*(a1 + 32) powerlogEnergyDiff];
          v28 = v27;
          v29 = [*(a1 + 32) powerlogTimestampPrevious];
          v30 = [*(a1 + 32) powerlogTimestampLast];
          v35 = 134219010;
          v36 = v24;
          v37 = 2048;
          v38 = v26;
          v39 = 2048;
          v40 = v28;
          v41 = 2112;
          v42 = v29;
          v43 = 2112;
          v44 = v30;
          _os_log_impl(&dword_1BACB7000, v22, OS_LOG_TYPE_DEFAULT, "New Powerlog Accounting Energy: previousPowerlogEnergySum=%f, lastPowerlogEnergySum=%f, powerlogEnergyDiff=%f from previousResponseTimestamp=%@ to lastResponseTimestamp=%@", &v35, 0x34u);
        }

        v15 = 0;
      }
    }
  }

  v31 = [*(a1 + 32) powerlogTimestampLast];
  if (!v31)
  {

LABEL_29:
    v34 = PLLogDiscretionaryEnergyMonitor(v12);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      __67__PLDiscretionaryEnergyMonitor_queryPowerlogForDiscretionaryEnergy__block_invoke_cold_1();
    }

    [*(a1 + 32) generateEnergyReport];
    goto LABEL_32;
  }

  v32 = v31;
  v33 = [*(a1 + 32) powerlogTimestampPrevious];
  if (!v33)
  {
    v15 = 0;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_32:
}

- (void)runCompletionBlockWithEnergyResponse:(id)response
{
  responseCopy = response;
  completionBlock = [(PLDiscretionaryEnergyMonitor *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(PLDiscretionaryEnergyMonitor *)self completionBlock];
    (completionBlock2)[2](completionBlock2, responseCopy);
  }
}

- (id)createPowerlogQueryTimer
{
  v3 = dispatch_get_global_queue(-32768, 0);
  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3);

  v5 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(v4, v5, 0x8BB2C97000uLL, 0x165A0BC00uLL);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __56__PLDiscretionaryEnergyMonitor_createPowerlogQueryTimer__block_invoke;
  handler[3] = &unk_1E7F187A0;
  handler[4] = self;
  dispatch_source_set_event_handler(v4, handler);
  dispatch_resume(v4);

  return v4;
}

- (id)createQuickEnergyAccumulatorTimer
{
  v3 = PLLogDiscretionaryEnergyMonitor(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryEnergyMonitor createQuickEnergyAccumulatorTimer];
  }

  v4 = dispatch_get_global_queue(-32768, 0);
  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);

  v6 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(v5, v6, 0xDF8475800uLL, 0x165A0BC00uLL);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __65__PLDiscretionaryEnergyMonitor_createQuickEnergyAccumulatorTimer__block_invoke;
  handler[3] = &unk_1E7F187A0;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_resume(v5);

  return v5;
}

- (void)accumulateQuickEnergy
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PLDiscretionaryEnergyMonitor_accumulateQuickEnergy__block_invoke;
  block[3] = &unk_1E7F187A0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __53__PLDiscretionaryEnergyMonitor_accumulateQuickEnergy__block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = PLLogDiscretionaryEnergyMonitor(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v30) = 0;
    _os_log_impl(&dword_1BACB7000, v2, OS_LOG_TYPE_INFO, "accumulating quick energy", &v30, 2u);
  }

  v4 = PLLogDiscretionaryEnergyMonitor(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) accumulatedCPUEnergy];
    v6 = v5;
    [*(a1 + 32) accumulatedNetworkEnergy];
    v8 = v7;
    [*(a1 + 32) accumulatedCPUEnergy];
    v10 = v9;
    [*(a1 + 32) accumulatedNetworkEnergy];
    v30 = 134218496;
    v31 = v6;
    v32 = 2048;
    v33 = v8;
    v34 = 2048;
    v35 = v10 + v11;
    _os_log_impl(&dword_1BACB7000, v4, OS_LOG_TYPE_DEFAULT, "Creating quick energy snapshot, cpuEnergyTotal=%f, networkEnergyTotal=%f, totalEnergy=%f", &v30, 0x20u);
  }

  v12 = [PLQuickEnergySnapshot alloc];
  v14 = *(a1 + 32);
  v13 = (a1 + 32);
  [v14 accumulatedCPUEnergy];
  v16 = v15;
  [*v13 accumulatedNetworkEnergy];
  v18 = [(PLQuickEnergySnapshot *)v12 initWithEnergies:v16 andNetworkEnergy:v17];
  v19 = [*v13 quickEnergySnapshots];
  v20 = [v19 count];

  v21 = [*v13 quickEnergySnapshots];
  v22 = v21;
  if (v20)
  {
    v23 = [v21 lastObject];

    v24 = [(PLQuickEnergySnapshot *)v18 computeEnergyDiff:v23];
    if (v25 >= 1.0)
    {
      v28 = [*v13 quickEnergySnapshots];
      [v28 addObject:v18];

      v26 = PLLogDiscretionaryEnergyMonitor([*v13 generateEnergyReport]);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v29 = [*v13 quickEnergySnapshots];
        v30 = 138412290;
        v31 = v29;
        _os_log_impl(&dword_1BACB7000, v26, OS_LOG_TYPE_INFO, "quickEnergySnapshots=%@", &v30, 0xCu);
      }
    }

    else
    {
      v26 = PLLogDiscretionaryEnergyMonitor(v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        __53__PLDiscretionaryEnergyMonitor_accumulateQuickEnergy__block_invoke_cold_1();
      }
    }
  }

  else
  {
    [v21 addObject:v18];

    v23 = PLLogDiscretionaryEnergyMonitor(v27);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __53__PLDiscretionaryEnergyMonitor_accumulateQuickEnergy__block_invoke_cold_2(v13);
    }
  }
}

- (double)getPowerlogEnergySum:(id)sum
{
  sumCopy = sum;
  v4 = [sumCopy objectForKeyedSubscript:@"BLMEnergyForDuet"];
  v5 = [v4 count];

  if (v5)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v6 = [sumCopy objectForKeyedSubscript:@"BLMEnergyForDuet"];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__PLDiscretionaryEnergyMonitor_getPowerlogEnergySum___block_invoke;
    v9[3] = &unk_1E7F18858;
    v9[4] = &v10;
    [v6 enumerateObjectsUsingBlock:v9];
    v7 = v11[3];

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

void __53__PLDiscretionaryEnergyMonitor_getPowerlogEnergySum___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:@"energy"];
  [v4 doubleValue];
  *(*(*(a1 + 32) + 8) + 24) = v3 + *(*(*(a1 + 32) + 8) + 24);
}

- (void)reportChargingStatus:(BOOL)status
{
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__PLDiscretionaryEnergyMonitor_reportChargingStatus___block_invoke;
  v4[3] = &unk_1E7F18880;
  v4[4] = self;
  statusCopy = status;
  dispatch_async(workQueue, v4);
}

uint64_t __53__PLDiscretionaryEnergyMonitor_reportChargingStatus___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = PLLogDiscretionaryEnergyMonitor(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isCharging")}];
    v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
    v14 = 138412546;
    v15 = v3;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_1BACB7000, v2, OS_LOG_TYPE_DEFAULT, "Setting chargingStatus from isCharging=%@ to isCharging=%@", &v14, 0x16u);
  }

  v5 = [*(a1 + 32) isCharging];
  if ((v5 & 1) == 0 && *(a1 + 40) == 1)
  {
    v6 = PLLogDiscretionaryEnergyMonitor(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __53__PLDiscretionaryEnergyMonitor_reportChargingStatus___block_invoke_cold_1();
    }

    v7 = [*(a1 + 32) intervalManager];
    [v7 handleOpenIntervalTimer];

    v8 = [*(a1 + 32) intervalManager];
    [v8 disableQuickEnergy];
  }

  v9 = [*(a1 + 32) isCharging];
  if (v9 && (*(a1 + 40) & 1) == 0)
  {
    v10 = PLLogDiscretionaryEnergyMonitor(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __53__PLDiscretionaryEnergyMonitor_reportChargingStatus___block_invoke_cold_1();
    }

    v11 = [*(a1 + 32) intervalManager];
    [v11 handleOpenIntervalTimer];

    v12 = [*(a1 + 32) intervalManager];
    [v12 enableQuickEnergy];
  }

  return [*(a1 + 32) setIsCharging:*(a1 + 40)];
}

- (void)incrementCPUEnergy:(double)energy
{
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__PLDiscretionaryEnergyMonitor_incrementCPUEnergy___block_invoke;
  v4[3] = &unk_1E7F188A8;
  v4[4] = self;
  *&v4[5] = energy;
  dispatch_async(workQueue, v4);
}

void __51__PLDiscretionaryEnergyMonitor_incrementCPUEnergy___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isCharging];
  v3 = v2;
  v4 = PLLogDiscretionaryEnergyMonitor(v2);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __51__PLDiscretionaryEnergyMonitor_incrementCPUEnergy___block_invoke_cold_2();
    }
  }

  else
  {
    if (v5)
    {
      __51__PLDiscretionaryEnergyMonitor_incrementCPUEnergy___block_invoke_cold_1();
    }

    v6 = *(a1 + 32);
    [v6 accumulatedCPUEnergy];
    [v6 setAccumulatedCPUEnergy:v7 + *(a1 + 40)];
  }
}

- (void)incrementNetworkEnergy:(double)energy
{
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__PLDiscretionaryEnergyMonitor_incrementNetworkEnergy___block_invoke;
  v4[3] = &unk_1E7F188A8;
  v4[4] = self;
  *&v4[5] = energy;
  dispatch_async(workQueue, v4);
}

void __55__PLDiscretionaryEnergyMonitor_incrementNetworkEnergy___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isCharging];
  v3 = v2;
  v4 = PLLogDiscretionaryEnergyMonitor(v2);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __51__PLDiscretionaryEnergyMonitor_incrementCPUEnergy___block_invoke_cold_2();
    }
  }

  else
  {
    if (v5)
    {
      __55__PLDiscretionaryEnergyMonitor_incrementNetworkEnergy___block_invoke_cold_1();
    }

    v6 = *(a1 + 32);
    [v6 accumulatedNetworkEnergy];
    [v6 setAccumulatedNetworkEnergy:v7 + *(a1 + 40)];
  }
}

- (void)testHighVolumeStartStopReporting:(id)reporting withInfo:(id)info withNumIterations:(double)iterations
{
  v19 = *MEMORY[0x1E69E9840];
  reportingCopy = reporting;
  infoCopy = info;
  v10 = PLLogDiscretionaryEnergyMonitor(infoCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = reportingCopy;
    v15 = 2112;
    v16 = infoCopy;
    v17 = 2048;
    iterationsCopy = iterations;
    _os_log_impl(&dword_1BACB7000, v10, OS_LOG_TYPE_DEFAULT, "Testing high volume start/stops for activityName=%@, withInfo=%@ for %f iterations", &v13, 0x20u);
  }

  if (iterations > 0.0)
  {
    v11 = 1;
    do
    {
      [(PLDiscretionaryEnergyMonitor *)self reportStartEvent:reportingCopy withInfo:infoCopy];
      [(PLDiscretionaryEnergyMonitor *)self reportStopEvent:reportingCopy withInfo:infoCopy];
      v12 = v11++;
    }

    while (v12 < iterations);
  }
}

- (void)setupNotificationListeners
{
  v3 = PLLogDiscretionaryEnergyMonitor(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1BACB7000, v3, OS_LOG_TYPE_DEFAULT, "Setting up debug listeners", v16, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, didReceiveNotification, @"com.apple.energybudgetingdebug.quickEnergySnapshots", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v5, self, didReceiveNotification, @"com.apple.energybudgetingdebug.queryPowerlog", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v6, self, didReceiveNotification, @"com.apple.energybudgetingdebug.generateEnergyReport", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v7, self, didReceiveNotification, @"com.apple.energybudgetingdebug.discretionaryIntervals", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v8, self, didReceiveNotification, @"com.apple.energybudgetingdebug.lastPowerlogEnergy", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v9, self, didReceiveNotification, @"com.apple.energybudgetingdebug.lastPowerlogTimestamp", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v10, self, didReceiveNotification, @"com.apple.energybudgetingdebug.chargingStatus", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v11, self, didReceiveNotification, @"com.apple.energybudgetingdebug.lastReportedTotalEnergy", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v12 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v12, self, didReceiveNotification, @"com.apple.energybudgetingdebug.lastReportedCPUEnergy", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v13 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v13, self, didReceiveNotification, @"com.apple.energybudgetingdebug.lastReportedNetworkEnergy", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v14 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v14, self, didReceiveNotification, @"com.apple.energybudgetingdebug.accumulatedCPUEnergy", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v15 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v15, self, didReceiveNotification, @"com.apple.energybudgetingdebug.accumulatedNetworkEnergy", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)setStateForNotification:(id)notification withState:(id)state
{
  v15 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  stateCopy = state;
  v7 = PLLogDiscretionaryEnergyMonitor(stateCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = stateCopy;
    v13 = 2112;
    v14 = notificationCopy;
    _os_log_impl(&dword_1BACB7000, v7, OS_LOG_TYPE_INFO, "Setting state=%@ for notificationName=%@", &v11, 0x16u);
  }

  v11 = 0;
  v8 = notify_register_check([notificationCopy UTF8String], &v11);
  if (v8)
  {
    v9 = PLLogDiscretionaryEnergyMonitor(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PLDiscretionaryEnergyMonitor setStateForNotification:withState:];
    }

LABEL_9:

    goto LABEL_10;
  }

  v10 = notify_set_state(v11, [stateCopy unsignedLongLongValue]);
  if (v10)
  {
    v9 = PLLogDiscretionaryEnergyMonitor(v10);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PLDiscretionaryEnergyMonitor setStateForNotification:withState:];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)updateMockData:(id)data
{
  v17 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  debugMode = [(PLDiscretionaryEnergyMonitor *)self debugMode];
  v6 = debugMode;
  v7 = PLLogDiscretionaryEnergyMonitor(debugMode);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = dataCopy;
      _os_log_impl(&dword_1BACB7000, v8, OS_LOG_TYPE_INFO, "Updating to mockData=%@", &v15, 0xCu);
    }

    v8 = [dataCopy mutableCopy];
    v9 = [v8 objectForKeyedSubscript:@"LastPowerlogResponseMock"];
    mockData = [(PLDiscretionaryEnergyMonitor *)self mockData];
    [mockData setObject:v9 forKeyedSubscript:@"LastPowerlogResponseMock"];

    mockData2 = [(PLDiscretionaryEnergyMonitor *)self mockData];
    v12 = [mockData2 objectForKeyedSubscript:@"LastPowerlogResponseMock"];
    [(PLDiscretionaryEnergyMonitor *)self setLastPowerlogResponse:v12];

    v13 = [v8 objectForKeyedSubscript:@"CPUCoalitionsMock"];
    mockData3 = [(PLDiscretionaryEnergyMonitor *)self mockData];
    [mockData3 setObject:v13 forKeyedSubscript:@"CPUCoalitionsMock"];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [PLDiscretionaryEnergyMonitor updateMockData:];
  }
}

- (void)logPowerlogResponse:(id)response
{
  v13 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v4 = [responseCopy objectForKeyedSubscript:@"BLMEnergyForDuet"];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_525];

  v6 = PLLogDiscretionaryEnergyMonitor(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [responseCopy objectForKeyedSubscript:@"BLMEnergyResponseTimestamp"];
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1BACB7000, v6, OS_LOG_TYPE_INFO, "EnergyResponseTimestamp: %@", &v11, 0xCu);
  }

  v9 = PLLogDiscretionaryEnergyMonitor(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [responseCopy objectForKeyedSubscript:@"BLMUUIDForDuet"];
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&dword_1BACB7000, v9, OS_LOG_TYPE_INFO, "UUIDForDuet: %@", &v11, 0xCu);
  }
}

void __52__PLDiscretionaryEnergyMonitor_logPowerlogResponse___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLLogDiscretionaryEnergyMonitor(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1BACB7000, v3, OS_LOG_TYPE_INFO, "%@", &v4, 0xCu);
  }
}

- (void)logQuickEnergySnapshots
{
  quickEnergySnapshots = [(PLDiscretionaryEnergyMonitor *)self quickEnergySnapshots];
  [quickEnergySnapshots enumerateObjectsUsingBlock:&__block_literal_global_530];
}

void __55__PLDiscretionaryEnergyMonitor_logQuickEnergySnapshots__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLLogDiscretionaryEnergyMonitor(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1BACB7000, v3, OS_LOG_TYPE_INFO, "%@", &v4, 0xCu);
  }
}

- (void)logEnergyReport:(id)report
{
  reportCopy = report;
  v4 = PLLogDiscretionaryEnergyMonitor(reportCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryEnergyMonitor logEnergyReport:];
  }

  PLLogRegisteredEvent(70, @"DASEnergyReport", reportCopy);
}

void __52__PLDiscretionaryEnergyMonitor_generateEnergyReport__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 timestamp];
  [v2 timeIntervalSinceDate:v3];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __67__PLDiscretionaryEnergyMonitor_queryPowerlogForDiscretionaryEnergy__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __67__PLDiscretionaryEnergyMonitor_queryPowerlogForDiscretionaryEnergy__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)createQuickEnergyAccumulatorTimer
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __53__PLDiscretionaryEnergyMonitor_accumulateQuickEnergy__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __53__PLDiscretionaryEnergyMonitor_accumulateQuickEnergy__block_invoke_cold_2(id *a1)
{
  v1 = [*a1 quickEnergySnapshots];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __53__PLDiscretionaryEnergyMonitor_reportChargingStatus___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__PLDiscretionaryEnergyMonitor_incrementCPUEnergy___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__PLDiscretionaryEnergyMonitor_incrementCPUEnergy___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __55__PLDiscretionaryEnergyMonitor_incrementNetworkEnergy___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updateMockData:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEnergyReport:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end