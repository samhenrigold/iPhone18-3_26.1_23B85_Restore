@interface PLDTCostElement
+ (id)getCostElementInstance;
- (PLDTCostElement)init;
- (PLDTCostElement)initWithTime:(id)time;
- (id)getApplicationCostUptoTime:(id)time withPid:(int)pid withLastActiveStart:(id)start withLastSuspendStart:(id)suspendStart withAppState:(int)state;
- (id)getCostUptoTime:(id)time;
- (id)getCpuCostUptoTime:(id)time withPid:(int)pid withLastActiveStart:(id)start withLastSuspendStart:(id)suspendStart withAppState:(int)state;
- (id)getDisplayCostUptoTime:(id)time withPid:(int)pid withLastActiveStart:(id)start withLastSuspendStart:(id)suspendStart withAppState:(int)state;
- (id)getGpuCostUptoTime:(id)time withPid:(int)pid withLastActiveStart:(id)start withLastSuspendStart:(id)suspendStart withAppState:(int)state;
- (id)getLocationCostUptoTime:(id)time withPid:(int)pid withLastActiveStart:(id)start withLastSuspendStart:(id)suspendStart withAppState:(int)state;
- (id)getNetworkingCostUptoTime:(id)time withPid:(int)pid withLastActiveStart:(id)start withLastSuspendStart:(id)suspendStart withAppState:(int)state withQueryCount:(int)count;
- (void)addCpuEvent:(double)event atTime:(id)time withPid:(int)pid withAppState:(int)state;
- (void)addDisplayEvent:(double)event atTime:(id)time withPid:(int)pid withAppState:(int)state;
- (void)addEvent:(double)event atTime:(id)time;
- (void)addGpuEvent:(double)event atTime:(id)time withPid:(int)pid withAppState:(int)state;
- (void)addLocationEvent:(double)event atTime:(id)time withPid:(int)pid withAppState:(int)state;
- (void)addNetworkingEvent:(double)event atTime:(id)time withPid:(int)pid withAppState:(int)state withQueryCount:(int)count;
@end

@implementation PLDTCostElement

+ (id)getCostElementInstance
{
  if (getCostElementInstance_onceCostElement != -1)
  {
    +[PLDTCostElement getCostElementInstance];
  }

  v3 = getCostElementInstance_singletonCostElement;

  return v3;
}

uint64_t __41__PLDTCostElement_getCostElementInstance__block_invoke()
{
  v0 = objc_alloc_init(PLDTCostElement);
  getCostElementInstance_singletonCostElement = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (PLDTCostElement)init
{
  v6.receiver = self;
  v6.super_class = PLDTCostElement;
  v2 = [(PLDTCostElement *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = _trackedProcesses;
    _trackedProcesses = v3;
  }

  return v2;
}

- (PLDTCostElement)initWithTime:(id)time
{
  timeCopy = time;
  v11.receiver = self;
  v11.super_class = PLDTCostElement;
  v6 = [(PLDTCostElement *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_startDate, time);
    objc_storeStrong(&v7->_costReturnedTillDate, time);
    v7->_costAggregated = 0.0;
    v8 = objc_opt_new();
    v9 = _trackedProcesses;
    _trackedProcesses = v8;
  }

  return v7;
}

- (void)addEvent:(double)event atTime:(id)time
{
  timeCopy = time;
  objc_sync_enter(@"___Sync___");
  [(PLDTCostElement *)self costAggregated];
  [(PLDTCostElement *)self setCostAggregated:v6 + event];
  if (event > 0.0)
  {
    [(PLDTCostElement *)self setLastOverheadStart:timeCopy];
  }

  objc_sync_exit(@"___Sync___");
}

- (void)addNetworkingEvent:(double)event atTime:(id)time withPid:(int)pid withAppState:(int)state withQueryCount:(int)count
{
  v7 = *&count;
  v9 = *&pid;
  timeCopy = time;
  objc_sync_enter(@"___Sync___");
  v11 = _trackedProcesses;
  v12 = [MEMORY[0x277CCABB0] numberWithInt:v9];
  v13 = [v11 objectForKey:v12];

  if (!v13)
  {
    v14 = _trackedProcesses;
    v15 = objc_opt_new();
    v16 = [MEMORY[0x277CCABB0] numberWithInt:v9];
    [v14 setObject:v15 forKey:v16];

    v17 = _trackedProcesses;
    v18 = [MEMORY[0x277CCABB0] numberWithInt:v9];
    v19 = [v17 objectForKeyedSubscript:v18];
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    [v19 setObject:distantPast forKey:@"networkingCostReturnedTillDate"];
  }

  v22 = state == 8 || state == 4;
  if (event > 0.0 && v22)
  {
    v23 = _trackedProcesses;
    v24 = [MEMORY[0x277CCABB0] numberWithInt:v9];
    v25 = [v23 objectForKeyedSubscript:v24];
    v26 = [v25 objectForKey:@"networkingCostAggregated"];

    v27 = _trackedProcesses;
    v28 = [MEMORY[0x277CCABB0] numberWithInt:v9];
    v29 = [v27 objectForKeyedSubscript:v28];
    if (v26)
    {
      v30 = MEMORY[0x277CCABB0];
      v31 = _trackedProcesses;
      v32 = [MEMORY[0x277CCABB0] numberWithInt:v9];
      v33 = [v31 objectForKeyedSubscript:v32];
      v34 = [v33 objectForKeyedSubscript:@"networkingCostAggregated"];
      [v34 doubleValue];
      event = [v30 numberWithDouble:v35 + event];
      [v29 setObject:event forKey:@"networkingCostAggregated"];
    }

    else
    {
      v32 = [MEMORY[0x277CCABB0] numberWithDouble:event];
      [v29 setObject:v32 forKey:@"networkingCostAggregated"];
    }

    v37 = _trackedProcesses;
    v38 = [MEMORY[0x277CCABB0] numberWithInt:v9];
    v39 = [v37 objectForKeyedSubscript:v38];
    [v39 setObject:timeCopy forKey:@"lastNetworkingOverheadStart"];

    v40 = _trackedProcesses;
    v41 = [MEMORY[0x277CCABB0] numberWithInt:v9];
    v42 = [v40 objectForKeyedSubscript:v41];
    v43 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    [v42 setObject:v43 forKey:@"lastNetworkingOverheadStartCount"];
  }

  objc_sync_exit(@"___Sync___");
}

- (void)addLocationEvent:(double)event atTime:(id)time withPid:(int)pid withAppState:(int)state
{
  v6 = *&pid;
  timeCopy = time;
  objc_sync_enter(@"___Sync___");
  v8 = _trackedProcesses;
  v9 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v10 = [v8 objectForKey:v9];

  if (!v10)
  {
    v11 = _trackedProcesses;
    v12 = objc_opt_new();
    v13 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    [v11 setObject:v12 forKey:v13];
  }

  if (event > 0.0)
  {
    v14 = _trackedProcesses;
    v15 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    v16 = [v14 objectForKeyedSubscript:v15];
    v17 = [v16 objectForKey:@"locationCostAggregated"];

    v18 = _trackedProcesses;
    v19 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    v20 = [v18 objectForKeyedSubscript:v19];
    if (v17)
    {
      v21 = MEMORY[0x277CCABB0];
      v22 = _trackedProcesses;
      v23 = [MEMORY[0x277CCABB0] numberWithInt:v6];
      v24 = [v22 objectForKeyedSubscript:v23];
      v25 = [v24 objectForKeyedSubscript:@"locationCostAggregated"];
      [v25 doubleValue];
      event = [v21 numberWithDouble:v26 + event];
      [v20 setObject:event forKey:@"locationCostAggregated"];
    }

    else
    {
      v23 = [MEMORY[0x277CCABB0] numberWithDouble:event];
      [v20 setObject:v23 forKey:@"locationCostAggregated"];
    }

    v28 = _trackedProcesses;
    v29 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    v30 = [v28 objectForKeyedSubscript:v29];
    [v30 setObject:timeCopy forKey:@"lastLocationOverheadStart"];
  }

  objc_sync_exit(@"___Sync___");
}

- (void)addCpuEvent:(double)event atTime:(id)time withPid:(int)pid withAppState:(int)state
{
  v7 = *&pid;
  timeCopy = time;
  objc_sync_enter(@"___Sync___");
  v9 = _trackedProcesses;
  v10 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  v11 = [v9 objectForKey:v10];

  if (!v11)
  {
    v12 = _trackedProcesses;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    [v12 setObject:v13 forKey:v14];
  }

  v16 = state == 8 || state == 4;
  if (event > 0.0 && v16)
  {
    v17 = _trackedProcesses;
    v18 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    v19 = [v17 objectForKeyedSubscript:v18];
    v20 = [v19 objectForKey:@"cpuCostAggregated"];

    v21 = _trackedProcesses;
    v22 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    v23 = [v21 objectForKeyedSubscript:v22];
    if (v20)
    {
      v24 = MEMORY[0x277CCABB0];
      v25 = _trackedProcesses;
      v26 = [MEMORY[0x277CCABB0] numberWithInt:v7];
      v27 = [v25 objectForKeyedSubscript:v26];
      v28 = [v27 objectForKeyedSubscript:@"cpuCostAggregated"];
      [v28 doubleValue];
      event = [v24 numberWithDouble:v29 + event];
      [v23 setObject:event forKey:@"cpuCostAggregated"];
    }

    else
    {
      v26 = [MEMORY[0x277CCABB0] numberWithDouble:event];
      [v23 setObject:v26 forKey:@"cpuCostAggregated"];
    }

    v31 = _trackedProcesses;
    v32 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    v33 = [v31 objectForKeyedSubscript:v32];
    [v33 setObject:timeCopy forKey:@"lastCpuOverheadStart"];
  }

  objc_sync_exit(@"___Sync___");
}

- (void)addGpuEvent:(double)event atTime:(id)time withPid:(int)pid withAppState:(int)state
{
  v7 = *&pid;
  timeCopy = time;
  objc_sync_enter(@"___Sync___");
  v9 = _trackedProcesses;
  v10 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  v11 = [v9 objectForKey:v10];

  if (!v11)
  {
    v12 = _trackedProcesses;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    [v12 setObject:v13 forKey:v14];
  }

  if (event > 0.0 && state == 8)
  {
    v15 = _trackedProcesses;
    v16 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    v17 = [v15 objectForKeyedSubscript:v16];
    v18 = [v17 objectForKey:@"gpuCostAggregated"];

    v19 = _trackedProcesses;
    v20 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    v21 = [v19 objectForKeyedSubscript:v20];
    if (v18)
    {
      v22 = MEMORY[0x277CCABB0];
      v23 = _trackedProcesses;
      v24 = [MEMORY[0x277CCABB0] numberWithInt:v7];
      v25 = [v23 objectForKeyedSubscript:v24];
      v26 = [v25 objectForKeyedSubscript:@"gpuCostAggregated"];
      [v26 doubleValue];
      event = [v22 numberWithDouble:v27 + event];
      [v21 setObject:event forKey:@"gpuCostAggregated"];
    }

    else
    {
      v24 = [MEMORY[0x277CCABB0] numberWithDouble:event];
      [v21 setObject:v24 forKey:@"gpuCostAggregated"];
    }

    v29 = _trackedProcesses;
    v30 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    v31 = [v29 objectForKeyedSubscript:v30];
    [v31 setObject:timeCopy forKey:@"lastGpuOverheadStart"];
  }

  objc_sync_exit(@"___Sync___");
}

- (void)addDisplayEvent:(double)event atTime:(id)time withPid:(int)pid withAppState:(int)state
{
  v7 = *&pid;
  timeCopy = time;
  objc_sync_enter(@"___Sync___");
  v9 = _trackedProcesses;
  v10 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  v11 = [v9 objectForKey:v10];

  if (!v11)
  {
    v12 = _trackedProcesses;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    [v12 setObject:v13 forKey:v14];
  }

  if (event > 0.0 && state == 8)
  {
    v15 = _trackedProcesses;
    v16 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    v17 = [v15 objectForKeyedSubscript:v16];
    v18 = [v17 objectForKey:@"displayCostAggregated"];

    v19 = _trackedProcesses;
    v20 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    v21 = [v19 objectForKeyedSubscript:v20];
    if (v18)
    {
      v22 = MEMORY[0x277CCABB0];
      v23 = _trackedProcesses;
      v24 = [MEMORY[0x277CCABB0] numberWithInt:v7];
      v25 = [v23 objectForKeyedSubscript:v24];
      v26 = [v25 objectForKeyedSubscript:@"displayCostAggregated"];
      [v26 doubleValue];
      event = [v22 numberWithDouble:v27 + event];
      [v21 setObject:event forKey:@"displayCostAggregated"];
    }

    else
    {
      v24 = [MEMORY[0x277CCABB0] numberWithDouble:event];
      [v21 setObject:v24 forKey:@"displayCostAggregated"];
    }

    v29 = _trackedProcesses;
    v30 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    v31 = [v29 objectForKeyedSubscript:v30];
    [v31 setObject:timeCopy forKey:@"lastDisplayOverheadStart"];
  }

  objc_sync_exit(@"___Sync___");
}

- (id)getCostUptoTime:(id)time
{
  timeCopy = time;
  v5 = objc_opt_new();
  costReturnedTillDate = [(PLDTCostElement *)self costReturnedTillDate];
  [timeCopy timeIntervalSinceDate:costReturnedTillDate];
  v8 = v7;

  [v5 setObject:&unk_287146420 forKeyedSubscript:@"cost"];
  [v5 setObject:&unk_287146420 forKeyedSubscript:@"overhead"];
  if (v8 >= 0.0)
  {
    objc_sync_enter(@"___Sync___");
    if (v8 > 0.0)
    {
      [(PLDTCostElement *)self costAggregated];
      if (v9 > 0.0)
      {
        [(PLDTCostElement *)self costAggregated];
        v11 = [MEMORY[0x277CCABB0] numberWithDouble:{fmin(v10 / v8 * 0.0009765625 * 0.0009765625 * 500.0 + 500.0, 1000.0)}];
        [v5 setObject:v11 forKeyedSubscript:@"cost"];
      }
    }

    lastOverheadStart = [(PLDTCostElement *)self lastOverheadStart];
    [timeCopy timeIntervalSinceDate:lastOverheadStart];
    v14 = v13;

    if (v14 < 5.0)
    {
      [v5 setObject:&unk_287146438 forKeyedSubscript:@"overhead"];
    }

    [(PLDTCostElement *)self setCostAggregated:0.0];
    objc_sync_exit(@"___Sync___");
  }

  [(PLDTCostElement *)self setCostReturnedTillDate:timeCopy];

  return v5;
}

- (id)getNetworkingCostUptoTime:(id)time withPid:(int)pid withLastActiveStart:(id)start withLastSuspendStart:(id)suspendStart withAppState:(int)state withQueryCount:(int)count
{
  v11 = *&pid;
  timeCopy = time;
  startCopy = start;
  suspendStartCopy = suspendStart;
  v13 = objc_opt_new();
  v14 = _trackedProcesses;
  v15 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  v16 = [v14 objectForKeyedSubscript:v15];
  v17 = [v16 objectForKeyedSubscript:@"networkingCostReturnedTillDate"];
  [timeCopy timeIntervalSinceDate:v17];
  v19 = v18;

  objc_sync_enter(@"___Sync___");
  [v13 setObject:&unk_287146420 forKeyedSubscript:@"cost"];
  [v13 setObject:&unk_287146420 forKeyedSubscript:@"overhead"];
  v20 = _trackedProcesses;
  v21 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  v22 = [v20 objectForKeyedSubscript:v21];
  v23 = [v22 objectForKeyedSubscript:@"lastNetworkingOverheadStartCount"];

  v24 = _trackedProcesses;
  v25 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  v26 = [v24 objectForKeyedSubscript:v25];
  v27 = [v26 objectForKeyedSubscript:@"networkingCostAggregated"];

  if (v19 > 0.0)
  {
    [v27 doubleValue];
    if (v28 > 0.0)
    {
      [v27 doubleValue];
      v30 = [MEMORY[0x277CCABB0] numberWithDouble:{fmin(v29 / v19 * 0.0009765625 * 0.0009765625 * 500.0 + 500.0, 1000.0)}];
      [v13 setObject:v30 forKeyedSubscript:@"cost"];
    }
  }

  if ((count - [v23 intValue]) <= 11)
  {
    if (v23)
    {
      null = [MEMORY[0x277CBEB68] null];

      if (v23 != null)
      {
        [v13 setObject:&unk_287146438 forKeyedSubscript:@"overhead"];
      }
    }
  }

  v32 = _trackedProcesses;
  v33 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  v34 = [v32 objectForKeyedSubscript:v33];
  [v34 setObject:&unk_287146420 forKeyedSubscript:@"networkingCostAggregated"];

  v35 = _trackedProcesses;
  v36 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  v37 = [v35 objectForKeyedSubscript:v36];
  [v37 setObject:0 forKeyedSubscript:@"lastNetworkingOverheadStartCount"];

  objc_sync_exit(@"___Sync___");
  v38 = _trackedProcesses;
  v39 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  v40 = [v38 objectForKeyedSubscript:v39];
  [v40 setObject:timeCopy forKeyedSubscript:@"networkingCostReturnedTillDate"];

  return v13;
}

- (id)getLocationCostUptoTime:(id)time withPid:(int)pid withLastActiveStart:(id)start withLastSuspendStart:(id)suspendStart withAppState:(int)state
{
  v9 = *&pid;
  timeCopy = time;
  startCopy = start;
  suspendStartCopy = suspendStart;
  v13 = objc_opt_new();
  objc_sync_enter(@"___Sync___");
  v14 = _trackedProcesses;
  v15 = [MEMORY[0x277CCABB0] numberWithInt:v9];
  v16 = [v14 objectForKeyedSubscript:v15];
  v17 = [v16 objectForKeyedSubscript:@"locationCostAggregated"];
  [v13 setObject:v17 forKeyedSubscript:@"cost"];

  [v13 setObject:&unk_287146420 forKeyedSubscript:@"overhead"];
  v18 = _trackedProcesses;
  v19 = [MEMORY[0x277CCABB0] numberWithInt:v9];
  v20 = [v18 objectForKeyedSubscript:v19];
  [v20 setObject:&unk_287146420 forKeyedSubscript:@"locationCostAggregated"];

  objc_sync_exit(@"___Sync___");

  return v13;
}

- (id)getCpuCostUptoTime:(id)time withPid:(int)pid withLastActiveStart:(id)start withLastSuspendStart:(id)suspendStart withAppState:(int)state
{
  v10 = *&pid;
  timeCopy = time;
  startCopy = start;
  suspendStartCopy = suspendStart;
  v14 = objc_opt_new();
  objc_sync_enter(@"___Sync___");
  [v14 setObject:&unk_287146420 forKeyedSubscript:@"cost"];
  [v14 setObject:&unk_287146420 forKeyedSubscript:@"overhead"];
  if (state == 8 || state == 4)
  {
    v15 = _trackedProcesses;
    v16 = [MEMORY[0x277CCABB0] numberWithInt:v10];
    v17 = [v15 objectForKeyedSubscript:v16];
    v18 = [v17 objectForKeyedSubscript:@"cpuCostAggregated"];
    [v14 setObject:v18 forKeyedSubscript:@"cost"];
  }

  v19 = _trackedProcesses;
  v20 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  v21 = [v19 objectForKeyedSubscript:v20];
  [v21 setObject:&unk_287146420 forKeyedSubscript:@"cpuCostAggregated"];

  objc_sync_exit(@"___Sync___");

  return v14;
}

- (id)getGpuCostUptoTime:(id)time withPid:(int)pid withLastActiveStart:(id)start withLastSuspendStart:(id)suspendStart withAppState:(int)state
{
  v10 = *&pid;
  timeCopy = time;
  startCopy = start;
  suspendStartCopy = suspendStart;
  v14 = objc_opt_new();
  objc_sync_enter(@"___Sync___");
  [v14 setObject:&unk_287146420 forKeyedSubscript:@"cost"];
  [v14 setObject:&unk_287146420 forKeyedSubscript:@"overhead"];
  if (state == 8)
  {
    v15 = _trackedProcesses;
    v16 = [MEMORY[0x277CCABB0] numberWithInt:v10];
    v17 = [v15 objectForKeyedSubscript:v16];
    v18 = [v17 objectForKeyedSubscript:@"gpuCostAggregated"];
    [v14 setObject:v18 forKeyedSubscript:@"cost"];
  }

  v19 = _trackedProcesses;
  v20 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  v21 = [v19 objectForKeyedSubscript:v20];
  [v21 setObject:&unk_287146420 forKeyedSubscript:@"gpuCostAggregated"];

  objc_sync_exit(@"___Sync___");

  return v14;
}

- (id)getApplicationCostUptoTime:(id)time withPid:(int)pid withLastActiveStart:(id)start withLastSuspendStart:(id)suspendStart withAppState:(int)state
{
  v7 = *&state;
  timeCopy = time;
  startCopy = start;
  suspendStartCopy = suspendStart;
  v13 = objc_opt_new();
  objc_sync_enter(@"___Sync___");
  v14 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  [v13 setObject:v14 forKeyedSubscript:@"cost"];

  [v13 setObject:&unk_287146420 forKeyedSubscript:@"overhead"];
  if (v7 == 4)
  {
    [v13 setObject:&unk_287146450 forKeyedSubscript:@"cost"];
  }

  objc_sync_exit(@"___Sync___");

  return v13;
}

- (id)getDisplayCostUptoTime:(id)time withPid:(int)pid withLastActiveStart:(id)start withLastSuspendStart:(id)suspendStart withAppState:(int)state
{
  v10 = *&pid;
  timeCopy = time;
  startCopy = start;
  suspendStartCopy = suspendStart;
  v14 = objc_opt_new();
  objc_sync_enter(@"___Sync___");
  [v14 setObject:&unk_287146420 forKeyedSubscript:@"cost"];
  [v14 setObject:&unk_287146420 forKeyedSubscript:@"overhead"];
  if (state == 8)
  {
    v15 = _trackedProcesses;
    v16 = [MEMORY[0x277CCABB0] numberWithInt:v10];
    v17 = [v15 objectForKeyedSubscript:v16];
    v18 = [v17 objectForKeyedSubscript:@"displayCostAggregated"];
    [v14 setObject:v18 forKeyedSubscript:@"cost"];
  }

  v19 = _trackedProcesses;
  v20 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  v21 = [v19 objectForKeyedSubscript:v20];
  [v21 setObject:&unk_287146420 forKeyedSubscript:@"displayCostAggregated"];

  objc_sync_exit(@"___Sync___");

  return v14;
}

@end