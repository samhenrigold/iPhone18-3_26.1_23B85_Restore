@interface PLDiscretionaryIntervalManager
- (PLDiscretionaryEnergyMonitor)discretionaryEnergyMonitor;
- (PLDiscretionaryIntervalManager)initWithEnergyMonitor:(id)monitor andMockData:(id)data;
- (id)coalesceIntervals:(id)intervals;
- (id)createOpenIntervalTimer;
- (id)createPowerlogReportTimer;
- (void)createOpenIntervalTimer;
- (void)createPowerlogReportTimer;
- (void)handleOpenIntervalTimer;
- (void)handlePowerlogReportTimer;
- (void)handleStartEvent:(id)event withInfo:(id)info;
- (void)handleStopEvent:(id)event withInfo:(id)info;
- (void)logActivityNameToInvolvedIdentifiers;
- (void)logDiscretionaryIntervals;
- (void)reportIntervalsToPowerlog;
- (void)reportQuickEnergyForInterval:(id)interval withIdentifier:(id)identifier andAdjustSnapshotToNow:(BOOL)now;
@end

@implementation PLDiscretionaryIntervalManager

- (PLDiscretionaryIntervalManager)initWithEnergyMonitor:(id)monitor andMockData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  monitorCopy = monitor;
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = PLDiscretionaryIntervalManager;
  v8 = [(PLDiscretionaryIntervalManager *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v10 = PLLogDiscretionaryEnergyMonitor(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = dataCopy;
      _os_log_impl(&dword_1BACB7000, v10, OS_LOG_TYPE_DEFAULT, "Initializing DiscretionaryIntervalManager, with mockData=%@", buf, 0xCu);
    }

    [(PLDiscretionaryIntervalManager *)v9 setMockData:dataCopy];
    v11 = objc_opt_new();
    [(PLDiscretionaryIntervalManager *)v9 setIdentifierToDiscretionaryIntervals:v11];

    v12 = objc_opt_new();
    [(PLDiscretionaryIntervalManager *)v9 setActivityNameToInvolvedIdentifiers:v12];

    [(PLDiscretionaryIntervalManager *)v9 setDiscretionaryEnergyMonitor:monitorCopy];
    [(PLDiscretionaryIntervalManager *)v9 setQuickEnergyEnabled:1];
    createOpenIntervalTimer = [(PLDiscretionaryIntervalManager *)v9 createOpenIntervalTimer];
    [(PLDiscretionaryIntervalManager *)v9 setOpenIntervalTimer:createOpenIntervalTimer];

    createPowerlogReportTimer = [(PLDiscretionaryIntervalManager *)v9 createPowerlogReportTimer];
    [(PLDiscretionaryIntervalManager *)v9 setPowerlogReportTimer:createPowerlogReportTimer];

    v16 = PLLogDiscretionaryEnergyMonitor(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BACB7000, v16, OS_LOG_TYPE_DEFAULT, "Finished initializing DiscretionaryIntervalManager", buf, 2u);
    }
  }

  return v9;
}

- (void)handleStartEvent:(id)event withInfo:(id)info
{
  eventCopy = event;
  infoCopy = info;
  v8 = PLLogDiscretionaryEnergyMonitor(infoCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryIntervalManager handleStartEvent:withInfo:];
  }

  v9 = [infoCopy objectForKeyedSubscript:@"involvedIdentifiers"];
  activityNameToInvolvedIdentifiers = [(PLDiscretionaryIntervalManager *)self activityNameToInvolvedIdentifiers];
  [activityNameToInvolvedIdentifiers setObject:v9 forKeyedSubscript:eventCopy];

  v11 = [infoCopy objectForKeyedSubscript:@"involvedIdentifiers"];
  v12 = [infoCopy objectForKeyedSubscript:@"requiresNetwork"];
  LODWORD(activityNameToInvolvedIdentifiers) = [v12 BOOLValue];

  if (activityNameToInvolvedIdentifiers)
  {
    v13 = [v11 mutableCopy];

    [v13 addObject:@"discretionaryNetworkTasks"];
    v11 = v13;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60__PLDiscretionaryIntervalManager_handleStartEvent_withInfo___block_invoke;
  v16[3] = &unk_1E7F186B8;
  v16[4] = self;
  v17 = infoCopy;
  v14 = infoCopy;
  v15 = PLLogDiscretionaryEnergyMonitor([v11 enumerateObjectsUsingBlock:v16]);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryIntervalManager handleStartEvent:? withInfo:?];
  }
}

void __60__PLDiscretionaryIntervalManager_handleStartEvent_withInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) identifierToDiscretionaryIntervals];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (!v5)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [*(a1 + 32) identifierToDiscretionaryIntervals];
    [v6 setObject:v5 forKeyedSubscript:v3];
  }

  v7 = [v5 count];
  if (v7 && ([v5 lastObject], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isClosed"), v8, (v9 & 1) == 0))
  {
    v16 = PLLogDiscretionaryEnergyMonitor(v7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __60__PLDiscretionaryIntervalManager_handleStartEvent_withInfo___block_invoke_cold_1();
    }

    v17 = [v5 lastObject];
    [v17 openCount];
    [v17 setOpenCount:v18 + 1.0];

    v15 = [v5 lastObject];
    [(PLDiscretionaryInterval *)v15 startCount];
    [(PLDiscretionaryInterval *)v15 setStartCount:v19 + 1.0];
  }

  else
  {
    v10 = PLLogDiscretionaryEnergyMonitor(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __60__PLDiscretionaryIntervalManager_handleStartEvent_withInfo___block_invoke_cold_2();
    }

    v11 = [PLDiscretionaryInterval alloc];
    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) quickEnergyEnabled];
    v14 = [*(a1 + 32) mockData];
    v15 = [(PLDiscretionaryInterval *)v11 initWithIdentifier:v3 andInfo:v12 andSnapshottingEnabled:v13 andMockData:v14];

    [v5 addObject:v15];
  }
}

- (void)handleStopEvent:(id)event withInfo:(id)info
{
  eventCopy = event;
  infoCopy = info;
  v8 = PLLogDiscretionaryEnergyMonitor(infoCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryIntervalManager handleStopEvent:withInfo:];
  }

  activityNameToInvolvedIdentifiers = [(PLDiscretionaryIntervalManager *)self activityNameToInvolvedIdentifiers];
  v10 = [activityNameToInvolvedIdentifiers objectForKeyedSubscript:eventCopy];

  if (v10)
  {
    v12 = [infoCopy mutableCopy];
    v13 = PLLogDiscretionaryEnergyMonitor(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PLDiscretionaryIntervalManager handleStopEvent:? withInfo:?];
    }

    activityNameToInvolvedIdentifiers2 = [(PLDiscretionaryIntervalManager *)self activityNameToInvolvedIdentifiers];
    v15 = [activityNameToInvolvedIdentifiers2 objectForKeyedSubscript:eventCopy];
    [v12 setObject:v15 forKeyedSubscript:@"involvedIdentifiers"];

    v16 = [v12 objectForKeyedSubscript:@"involvedIdentifiers"];
    v17 = [v16 mutableCopy];

    v18 = [infoCopy objectForKeyedSubscript:@"requiresNetwork"];
    bOOLValue = [v18 BOOLValue];

    if (bOOLValue)
    {
      [v17 addObject:@"discretionaryNetworkTasks"];
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__PLDiscretionaryIntervalManager_handleStopEvent_withInfo___block_invoke;
    v21[3] = &unk_1E7F18708;
    v21[4] = self;
    v20 = PLLogDiscretionaryEnergyMonitor([v17 enumerateObjectsUsingBlock:v21]);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [PLDiscretionaryIntervalManager handleStopEvent:? withInfo:?];
    }
  }

  else
  {
    v12 = PLLogDiscretionaryEnergyMonitor(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PLDiscretionaryIntervalManager handleStopEvent:eventCopy withInfo:self];
    }
  }
}

void __59__PLDiscretionaryIntervalManager_handleStopEvent_withInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) identifierToDiscretionaryIntervals];
  v5 = [v4 objectForKeyedSubscript:v3];

  if ([v5 count])
  {
    v6 = [v5 lastObject];
    v7 = [v6 isClosed];
    if (v7)
    {
      v8 = PLLogDiscretionaryEnergyMonitor(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __59__PLDiscretionaryIntervalManager_handleStopEvent_withInfo___block_invoke_cold_2();
      }

LABEL_15:

      goto LABEL_16;
    }

    [v6 openCount];
    [v6 setOpenCount:v9 + -1.0];
    if ([v6 shouldClose])
    {
      if ([*(a1 + 32) quickEnergyEnabled])
      {
        [*(a1 + 32) reportQuickEnergyForInterval:v6 withIdentifier:v3 andAdjustSnapshotToNow:0];
      }

      [v6 closeInterval];
      v10 = [*(a1 + 32) activityNameToInvolvedIdentifiers];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __59__PLDiscretionaryIntervalManager_handleStopEvent_withInfo___block_invoke_345;
      v16[3] = &unk_1E7F186E0;
      v17 = v3;
      v11 = [v10 keysOfEntriesPassingTest:v16];

      v12 = [v11 count];
      if (v12)
      {
        v13 = [*(a1 + 32) activityNameToInvolvedIdentifiers];
        v14 = [v11 allObjects];
        [v13 removeObjectsForKeys:v14];
      }

      v15 = PLLogDiscretionaryEnergyMonitor(v12);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __59__PLDiscretionaryIntervalManager_handleStopEvent_withInfo___block_invoke_cold_1();
      }

      v8 = v17;
      goto LABEL_15;
    }
  }

  else
  {
    v6 = PLLogDiscretionaryEnergyMonitor(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __59__PLDiscretionaryIntervalManager_handleStopEvent_withInfo___block_invoke_cold_3();
    }
  }

LABEL_16:
}

- (void)reportIntervalsToPowerlog
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__PLDiscretionaryIntervalManager_reportIntervalsToPowerlog__block_invoke(id *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v38 = a2;
  v4 = a3;
  v5 = PLLogDiscretionaryEnergyMonitor(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __59__PLDiscretionaryIntervalManager_reportIntervalsToPowerlog__block_invoke_cold_1();
  }

  v6 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v50 count:16];
  v36 = v6;
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        v14 = [v13 originalStartDate];
        v15 = [v13 endDate];
        if (([v13 isClosed] & 1) == 0)
        {
          [v13 checkOpenIntervalDuration:v38];
          v10 |= v16 > 600.0;
          v17 = [MEMORY[0x1E695DF00] date];

          v49 = v13;
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
          v19 = [v18 mutableCopy];
          v6 = v36;
          [a1[4] setObject:v19 forKeyedSubscript:v38];

          v15 = v17;
        }

        v47[0] = @"startDate";
        v47[1] = @"endDate";
        v48[0] = v14;
        v48[1] = v15;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
        v21 = [v20 mutableCopy];
        [v6 addObject:v21];
      }

      v9 = [v7 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v9);

    if (v10)
    {
      [a1[5] logActivityNameToInvolvedIdentifiers];
    }
  }

  else
  {
  }

  v22 = [v38 isEqualToString:@"discretionaryNetworkTasks"];
  if ((v22 & 1) == 0)
  {
    v23 = PLLogDiscretionaryEnergyMonitor(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __59__PLDiscretionaryIntervalManager_reportIntervalsToPowerlog__block_invoke_cold_2();
    }

    v24 = objc_opt_new();
    [v24 setObject:&unk_1F38E30B0 forKeyedSubscript:@"updateType"];
    v25 = MEMORY[0x1E695DEC8];
    v26 = [a1[5] coalesceIntervals:v6];
    v27 = [v25 arrayWithArray:v26];
    [v24 setObject:v27 forKeyedSubscript:@"eventIntervals"];

    v28 = v38;
    v29 = +[PLCPUEnergySnapshot identifierToAccountingName];
    v30 = [v29 objectForKeyedSubscript:v28];

    if (v30)
    {
      v31 = +[PLCPUEnergySnapshot identifierToAccountingName];
      v32 = [v31 objectForKeyedSubscript:v28];

      v34 = PLLogDiscretionaryEnergyMonitor(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v44 = v28;
        v45 = 2112;
        v46 = v32;
        _os_log_impl(&dword_1BACB7000, v34, OS_LOG_TYPE_INFO, "Adjusting identifier=%@ to accountingName=%@ before reporting to powerlog", buf, 0x16u);
      }
    }

    else
    {
      v32 = v28;
    }

    v6 = v36;
    [v24 setObject:v32 forKeyedSubscript:@"bundleID"];
    v35 = [v24 mutableCopy];
    [a1[6] addObject:v35];
  }
}

void __59__PLDiscretionaryIntervalManager_reportIntervalsToPowerlog__block_invoke_365(uint64_t a1, void *a2)
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

- (id)coalesceIntervals:(id)intervals
{
  v28 = *MEMORY[0x1E69E9840];
  intervalsCopy = intervals;
  v4 = PLLogDiscretionaryEnergyMonitor(intervalsCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryIntervalManager coalesceIntervals:];
  }

  array = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = intervalsCopy;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if (v8)
        {
          v12 = [*(*(&v23 + 1) + 8 * i) objectForKeyedSubscript:@"startDate"];
          v13 = [v8 objectForKeyedSubscript:@"endDate"];
          [v12 timeIntervalSinceDate:v13];
          v15 = v14;

          v16 = -v15;
          if (v15 >= 0.0)
          {
            v16 = v15;
          }

          if (v16 >= 5.0)
          {
            [array addObject:v8];
            v18 = v11;

            v8 = v18;
          }

          else
          {
            v17 = [v11 objectForKeyedSubscript:@"endDate"];
            [v8 setObject:v17 forKeyedSubscript:@"endDate"];
          }
        }

        else
        {
          v8 = [*(*(&v23 + 1) + 8 * i) mutableCopy];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);

    if (v8)
    {
      v19 = [array addObject:v8];
    }
  }

  else
  {

    v8 = 0;
  }

  v20 = PLLogDiscretionaryEnergyMonitor(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryIntervalManager coalesceIntervals:];
  }

  return array;
}

- (void)reportQuickEnergyForInterval:(id)interval withIdentifier:(id)identifier andAdjustSnapshotToNow:(BOOL)now
{
  nowCopy = now;
  v44 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  identifierCopy = identifier;
  v10 = PLLogDiscretionaryEnergyMonitor(identifierCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:nowCopy];
    v34 = 138412802;
    v35 = *&intervalCopy;
    v36 = 2112;
    v37 = identifierCopy;
    v38 = 2112;
    v39 = v33;
    _os_log_debug_impl(&dword_1BACB7000, v10, OS_LOG_TYPE_DEBUG, "reporting quick energy for interval=%@, identifier=%@, adjustSnapshotToNow=%@", &v34, 0x20u);
  }

  date = [MEMORY[0x1E695DF00] date];
  currentStartDate = [intervalCopy currentStartDate];
  [date timeIntervalSinceDate:currentStartDate];
  v14 = v13;

  cpuEnergySnapshot = [intervalCopy cpuEnergySnapshot];

  if (cpuEnergySnapshot)
  {
    cpuEnergySnapshot2 = [intervalCopy cpuEnergySnapshot];
    [cpuEnergySnapshot2 computeEnergyDiffUntilNow:identifierCopy andAdjustSnapshotToNow:nowCopy];
    v18 = v17;

    if (v18 > 0.0)
    {
      v20 = PLLogDiscretionaryEnergyMonitor(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        currentStartDate2 = [intervalCopy currentStartDate];
        v34 = 134219010;
        v35 = v18;
        v36 = 2112;
        v37 = identifierCopy;
        v38 = 2048;
        v39 = v14;
        v40 = 2112;
        v41 = currentStartDate2;
        v42 = 2112;
        v43 = date;
        _os_log_impl(&dword_1BACB7000, v20, OS_LOG_TYPE_DEFAULT, "Adding CPUEnergy=%f for identifier=%@ over %f seconds from startDate=%@ to endDate=%@", &v34, 0x34u);
      }

      discretionaryEnergyMonitor = [(PLDiscretionaryIntervalManager *)self discretionaryEnergyMonitor];
      [discretionaryEnergyMonitor incrementCPUEnergy:v18];
    }
  }

  networkEnergySnapshot = [intervalCopy networkEnergySnapshot];
  if (networkEnergySnapshot)
  {
    v24 = networkEnergySnapshot;
    v25 = [identifierCopy isEqualToString:@"discretionaryNetworkTasks"];

    if (v25)
    {
      networkEnergySnapshot2 = [intervalCopy networkEnergySnapshot];
      [networkEnergySnapshot2 computeEnergyDiffUntilNow:nowCopy];
      v28 = v27;

      if (v28 > 0.0)
      {
        v30 = PLLogDiscretionaryEnergyMonitor(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          currentStartDate3 = [intervalCopy currentStartDate];
          v34 = 134219010;
          v35 = v28;
          v36 = 2112;
          v37 = identifierCopy;
          v38 = 2048;
          v39 = v14;
          v40 = 2112;
          v41 = currentStartDate3;
          v42 = 2112;
          v43 = date;
          _os_log_impl(&dword_1BACB7000, v30, OS_LOG_TYPE_INFO, "Adding NetworkEnergy=%f for identifier=%@ over %f seconds from startDate=%@ to endDate=%@", &v34, 0x34u);
        }

        discretionaryEnergyMonitor2 = [(PLDiscretionaryIntervalManager *)self discretionaryEnergyMonitor];
        [discretionaryEnergyMonitor2 incrementNetworkEnergy:v28];
      }
    }
  }

  if (nowCopy)
  {
    [intervalCopy setCurrentStartDate:date];
  }
}

- (void)handleOpenIntervalTimer
{
  v3 = discretionaryEnergyMonitorQueue(self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PLDiscretionaryIntervalManager_handleOpenIntervalTimer__block_invoke;
  block[3] = &unk_1E7F187A0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __57__PLDiscretionaryIntervalManager_handleOpenIntervalTimer__block_invoke(uint64_t a1)
{
  v2 = PLLogDiscretionaryEnergyMonitor(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __57__PLDiscretionaryIntervalManager_handleOpenIntervalTimer__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) identifierToDiscretionaryIntervals];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__PLDiscretionaryIntervalManager_handleOpenIntervalTimer__block_invoke_369;
  v4[3] = &unk_1E7F18778;
  v4[4] = *(a1 + 32);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __57__PLDiscretionaryIntervalManager_handleOpenIntervalTimer__block_invoke_369(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 lastObject];
  v8 = [v6 lastObject];

  LOBYTE(v6) = [v8 isClosed];
  if ((v6 & 1) == 0)
  {
    v9 = [*(a1 + 32) quickEnergyEnabled];
    if (v9)
    {
      v10 = PLLogDiscretionaryEnergyMonitor(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __57__PLDiscretionaryIntervalManager_handleOpenIntervalTimer__block_invoke_369_cold_1();
      }

      [*(a1 + 32) reportQuickEnergyForInterval:v7 withIdentifier:v5 andAdjustSnapshotToNow:1];
    }
  }
}

- (void)handlePowerlogReportTimer
{
  v3 = discretionaryEnergyMonitorQueue(self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PLDiscretionaryIntervalManager_handlePowerlogReportTimer__block_invoke;
  block[3] = &unk_1E7F187A0;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __59__PLDiscretionaryIntervalManager_handlePowerlogReportTimer__block_invoke(uint64_t a1)
{
  v2 = PLLogDiscretionaryEnergyMonitor(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __59__PLDiscretionaryIntervalManager_handlePowerlogReportTimer__block_invoke_cold_1();
  }

  return [*(a1 + 32) reportIntervalsToPowerlog];
}

- (id)createOpenIntervalTimer
{
  v3 = PLLogDiscretionaryEnergyMonitor(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryIntervalManager createOpenIntervalTimer];
  }

  v4 = dispatch_get_global_queue(-32768, 0);
  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);

  v6 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(v5, v6, 0xDF8475800uLL, 0x165A0BC00uLL);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __57__PLDiscretionaryIntervalManager_createOpenIntervalTimer__block_invoke;
  handler[3] = &unk_1E7F187A0;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_resume(v5);

  return v5;
}

- (id)createPowerlogReportTimer
{
  v3 = PLLogDiscretionaryEnergyMonitor(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryIntervalManager createPowerlogReportTimer];
  }

  v4 = dispatch_get_global_queue(-32768, 0);
  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);

  v6 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(v5, v6, 0x8BB2C97000uLL, 0x165A0BC00uLL);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __59__PLDiscretionaryIntervalManager_createPowerlogReportTimer__block_invoke;
  handler[3] = &unk_1E7F187A0;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_resume(v5);

  return v5;
}

- (void)logActivityNameToInvolvedIdentifiers
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PLLogDiscretionaryEnergyMonitor(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    activityNameToInvolvedIdentifiers = [(PLDiscretionaryIntervalManager *)self activityNameToInvolvedIdentifiers];
    v6 = 134217984;
    v7 = [activityNameToInvolvedIdentifiers count];
    _os_log_impl(&dword_1BACB7000, v3, OS_LOG_TYPE_INFO, "Logging activityNameToInvolvedIdentifiers, count=%lu", &v6, 0xCu);
  }

  activityNameToInvolvedIdentifiers2 = [(PLDiscretionaryIntervalManager *)self activityNameToInvolvedIdentifiers];
  [activityNameToInvolvedIdentifiers2 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_372];
}

void __70__PLDiscretionaryIntervalManager_logActivityNameToInvolvedIdentifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = PLLogDiscretionaryEnergyMonitor(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1BACB7000, v6, OS_LOG_TYPE_INFO, "activityName=%@, involvedIdentifiers=%@", &v7, 0x16u);
  }
}

- (void)logDiscretionaryIntervals
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PLLogDiscretionaryEnergyMonitor(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifierToDiscretionaryIntervals = [(PLDiscretionaryIntervalManager *)self identifierToDiscretionaryIntervals];
    v6 = 134217984;
    v7 = [identifierToDiscretionaryIntervals count];
    _os_log_impl(&dword_1BACB7000, v3, OS_LOG_TYPE_DEFAULT, "Logging identifierToDiscretionaryIntervals, count=%lu", &v6, 0xCu);
  }

  identifierToDiscretionaryIntervals2 = [(PLDiscretionaryIntervalManager *)self identifierToDiscretionaryIntervals];
  [identifierToDiscretionaryIntervals2 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_374];
}

void __59__PLDiscretionaryIntervalManager_logDiscretionaryIntervals__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = PLLogDiscretionaryEnergyMonitor(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v26 = v4;
    v27 = 2048;
    v28 = [v5 count];
    _os_log_impl(&dword_1BACB7000, v6, OS_LOG_TYPE_INFO, "identifier=%@, intervalCount=%lu", buf, 0x16u);
  }

  v19 = v4;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = PLLogDiscretionaryEnergyMonitor(v7);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [v11 originalStartDate];
          v14 = [v11 currentStartDate];
          v15 = [v11 endDate];
          [v11 openCount];
          v17 = v16;
          [v11 startCount];
          *buf = 138413314;
          v26 = v13;
          v27 = 2112;
          v28 = v14;
          v29 = 2112;
          v30 = v15;
          v31 = 2048;
          v32 = v17;
          v33 = 2048;
          v34 = v18;
          _os_log_impl(&dword_1BACB7000, v12, OS_LOG_TYPE_INFO, "-> interval: originalStartDate=%@, currentStartDate=%@, endDate=%@, openCount=%f, startCount=%f", buf, 0x34u);
        }

        ++v10;
      }

      while (v8 != v10);
      v7 = [obj countByEnumeratingWithState:&v21 objects:v35 count:16];
      v8 = v7;
    }

    while (v7);
  }
}

- (PLDiscretionaryEnergyMonitor)discretionaryEnergyMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_discretionaryEnergyMonitor);

  return WeakRetained;
}

- (void)handleStartEvent:(void *)a1 withInfo:.cold.2(void *a1)
{
  v1 = [a1 identifierToDiscretionaryIntervals];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __60__PLDiscretionaryIntervalManager_handleStartEvent_withInfo___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __60__PLDiscretionaryIntervalManager_handleStartEvent_withInfo___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleStopEvent:(void *)a1 withInfo:.cold.2(void *a1)
{
  v1 = [a1 activityNameToInvolvedIdentifiers];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)handleStopEvent:(void *)a1 withInfo:.cold.3(void *a1)
{
  v1 = [a1 identifierToDiscretionaryIntervals];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)handleStopEvent:(uint64_t)a1 withInfo:(void *)a2 .cold.4(uint64_t a1, void *a2)
{
  v2 = [a2 activityNameToInvolvedIdentifiers];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __59__PLDiscretionaryIntervalManager_handleStopEvent_withInfo___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __59__PLDiscretionaryIntervalManager_handleStopEvent_withInfo___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __59__PLDiscretionaryIntervalManager_reportIntervalsToPowerlog__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)coalesceIntervals:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)coalesceIntervals:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __57__PLDiscretionaryIntervalManager_handleOpenIntervalTimer__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__PLDiscretionaryIntervalManager_handleOpenIntervalTimer__block_invoke_369_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __59__PLDiscretionaryIntervalManager_handlePowerlogReportTimer__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createOpenIntervalTimer
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createPowerlogReportTimer
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end