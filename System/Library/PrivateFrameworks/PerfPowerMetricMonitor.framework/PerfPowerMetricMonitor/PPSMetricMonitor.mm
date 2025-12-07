@interface PPSMetricMonitor
- (BOOL)setUpdateInterval:(double)interval error:(id *)error;
- (BOOL)startMonitoringProcessWithName:(id)name error:(id *)error;
- (BOOL)startMonitoringProcessWithPID:(int)d error:(id *)error;
- (BOOL)startMonitoringProcessesWithName:(id)name error:(id *)error;
- (BOOL)startMonitoringProcessesWithNames:(id)names PIDs:(id)ds error:(id *)error;
- (BOOL)startMonitoringProcessesWithPID:(id)d error:(id *)error;
- (BOOL)startMonitoringSystemMetricsWithError:(id *)error;
- (PPSMetricMonitor)initWithConfiguration:(id)configuration delegate:(id)delegate error:(id *)error;
- (PPSMetricMonitorDelegate)delegate;
- (id)collectMetricsOnDemand;
- (id)collectMetricsOnSnapshot:(id *)snapshot;
- (void)_cancelUpdateTimer;
- (void)_handleXPCInterruption;
- (void)_resetMonitoringState;
- (void)_resumeMonitoring;
- (void)_setUpXPCConnectionWithConfig:(id)config;
- (void)_startUpdateTimer:(double)timer;
- (void)collectMetricsOnDemand;
- (void)endWithError:(id)error;
- (void)stopMonitoring;
- (void)updateWithMetricCollection:(id)collection;
@end

@implementation PPSMetricMonitor

- (PPSMetricMonitor)initWithConfiguration:(id)configuration delegate:(id)delegate error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  delegateCopy = delegate;
  v11 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v33 = configurationCopy;
    _os_log_impl(&dword_22E4FA000, v11, OS_LOG_TYPE_INFO, "Initializing with config : %@", buf, 0xCu);
  }

  v29.receiver = self;
  v29.super_class = PPSMetricMonitor;
  v12 = [(PPSMetricMonitor *)&v29 init];
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  objc_storeWeak(&v12->_delegate, delegateCopy);
  objc_storeStrong(&v12->_config, configuration);
  currentProcessPIDs = v12->_currentProcessPIDs;
  v12->_monitoringState = 0;
  v12->_currentProcessPIDs = 0;

  *&v12->_isInterrupted = 0;
  monitoredStartTime = v12->_monitoredStartTime;
  v12->_monitoredStartTime = 0;

  v16 = dispatch_queue_create("com.apple.PerfPowerMetricMonitor.xpcMessagingQueue", v13);
  xpcMessagingQueue = v12->_xpcMessagingQueue;
  v12->_xpcMessagingQueue = v16;

  v18 = dispatch_queue_create("com.apple.PerfPowerMetricMonitor.delegateQueue", v13);
  delegateQueue = v12->_delegateQueue;
  v12->_delegateQueue = v18;

  mode = [configurationCopy mode];
  v21 = 0.0;
  if ((mode - 1) < 3)
  {
    goto LABEL_5;
  }

  if (!mode)
  {
    [configurationCopy updateInterval];
    v21 = 0.2;
    if (v22 < 0.2)
    {
      v23 = PPSMetricMonitorLogHandleForCategory(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [PPSMetricMonitor initWithConfiguration:configurationCopy delegate:? error:?];
      }

LABEL_5:
      [configurationCopy setUpdateInterval:v21];
    }
  }

  if (![configurationCopy updateDelegate] || (objc_opt_respondsToSelector() & 1) != 0)
  {

LABEL_14:
    v24 = v12;
    goto LABEL_15;
  }

  v26 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
    [PPSMetricMonitor initWithConfiguration:delegate:error:];
  }

  if (error)
  {
    v27 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    v31 = @"Invalid configuration";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    *error = [v27 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:0 userInfo:v28];
  }

  v24 = 0;
LABEL_15:

  return v24;
}

- (BOOL)startMonitoringSystemMetricsWithError:(id *)error
{
  v37[1] = *MEMORY[0x277D85DE8];
  v5 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E4FA000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "startMonitoringSystemMetrics", "", buf, 2u);
  }

  v6 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitor startMonitoringSystemMetricsWithError:];
  }

  if (![(PPSMetricMonitor *)self monitoringState]|| [(PPSMetricMonitor *)self isInterrupted])
  {
    [(PPSMetricMonitor *)self _resetMonitoringState];
    connection = [(PPSMetricMonitor *)self connection];
    v8 = connection == 0;

    if (v8)
    {
      config = [(PPSMetricMonitor *)self config];
      [(PPSMetricMonitor *)self _setUpXPCConnectionWithConfig:config];
    }

    v10 = dispatch_semaphore_create(0);
    *buf = 0;
    v31 = buf;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy_;
    v34 = __Block_byref_object_dispose_;
    v35 = 0;
    xpcMessagingQueue = [(PPSMetricMonitor *)self xpcMessagingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PPSMetricMonitor_startMonitoringSystemMetricsWithError___block_invoke;
    block[3] = &unk_2788478F8;
    block[4] = self;
    v29 = buf;
    v12 = v10;
    v28 = v12;
    dispatch_sync(xpcMessagingQueue, block);

    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    v13 = *(v31 + 5);
    v14 = v13 == 0;
    if (v13)
    {
      if (error)
      {
        *error = v13;
      }

      config2 = [(PPSMetricMonitor *)self config];
      isHeadless = [config2 isHeadless];

      if (!isHeadless)
      {
        goto LABEL_27;
      }
    }

    else
    {
      connection2 = [(PPSMetricMonitor *)self connection];

      if (connection2)
      {
        [(PPSMetricMonitor *)self setMonitoringState:1];
      }

      config3 = [(PPSMetricMonitor *)self config];
      isHeadless2 = [config3 isHeadless];

      if (!isHeadless2)
      {
        config4 = [(PPSMetricMonitor *)self config];
        v25 = [config4 mode] == 0;

        if (!v25)
        {
LABEL_27:

          _Block_object_dispose(buf, 8);
          goto LABEL_28;
        }

        config5 = [(PPSMetricMonitor *)self config];
        [config5 updateInterval];
        [(PPSMetricMonitor *)self _startUpdateTimer:?];
LABEL_26:

        goto LABEL_27;
      }

      if (![(PPSMetricMonitor *)self isAnalyticsSent])
      {
        date = [MEMORY[0x277CBEAA8] date];
        [(PPSMetricMonitor *)self setMonitoredStartTime:date];

        [(PPSMetricMonitor *)self setIsAnalyticsSent:1];
      }
    }

    config5 = [(PPSMetricMonitor *)self connection];
    [config5 invalidate];
    goto LABEL_26;
  }

  if (!error)
  {
    return 0;
  }

  v18 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [PPSMetricMonitor startMonitoringSystemMetricsWithError:];
  }

  v19 = MEMORY[0x277CCA9B8];
  v36 = *MEMORY[0x277CCA450];
  v37[0] = @"Already monitoring";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  [v19 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:7 userInfo:v12];
  *error = v14 = 0;
LABEL_28:

  return v14;
}

void __58__PPSMetricMonitor_startMonitoringSystemMetricsWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__PPSMetricMonitor_startMonitoringSystemMetricsWithError___block_invoke_2;
  v5[3] = &unk_2788478D0;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v2 startMonitoringSystemMetricsWithCompletion:v5];
}

void __58__PPSMetricMonitor_startMonitoringSystemMetricsWithError___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)startMonitoringProcessWithPID:(int)d error:(id *)error
{
  v5 = *&d;
  v48[1] = *MEMORY[0x277D85DE8];
  v7 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitor startMonitoringProcessWithPID:error:];
  }

  if (![(PPSMetricMonitor *)self monitoringState]|| [(PPSMetricMonitor *)self isInterrupted])
  {
    [(PPSMetricMonitor *)self _resetMonitoringState];
    connection = [(PPSMetricMonitor *)self connection];
    v9 = connection == 0;

    if (v9)
    {
      config = [(PPSMetricMonitor *)self config];
      [(PPSMetricMonitor *)self _setUpXPCConnectionWithConfig:config];
    }

    v11 = dispatch_semaphore_create(0);
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy_;
    v44 = __Block_byref_object_dispose_;
    v45 = 0;
    xpcMessagingQueue = [(PPSMetricMonitor *)self xpcMessagingQueue];
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __56__PPSMetricMonitor_startMonitoringProcessWithPID_error___block_invoke;
    v35 = &unk_278847920;
    v39 = v5;
    selfCopy = self;
    v38 = &v40;
    v13 = v11;
    v37 = v13;
    dispatch_sync(xpcMessagingQueue, &v32);

    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    v14 = v41[5];
    v15 = v14 == 0;
    if (v14)
    {
      if (error)
      {
        *error = v14;
      }

      v16 = [(PPSMetricMonitor *)self config:v32];
      isHeadless = [v16 isHeadless];

      if (!isHeadless)
      {
        goto LABEL_23;
      }

      connection2 = [(PPSMetricMonitor *)self connection];
      [connection2 invalidate];
    }

    else
    {
      v21 = [(PPSMetricMonitor *)self connection:v32];

      if (v21)
      {
        [(PPSMetricMonitor *)self setMonitoringState:2];
        v22 = [MEMORY[0x277CCABB0] numberWithInt:v5];
        v46 = v22;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
        [(PPSMetricMonitor *)self setCurrentProcessPIDs:v23];
      }

      config2 = [(PPSMetricMonitor *)self config];
      isHeadless2 = [config2 isHeadless];

      if (isHeadless2)
      {
        connection3 = [(PPSMetricMonitor *)self connection];
        [connection3 invalidate];

        if (![(PPSMetricMonitor *)self isAnalyticsSent])
        {
          date = [MEMORY[0x277CBEAA8] date];
          [(PPSMetricMonitor *)self setMonitoredStartTime:date];

          AnalyticsSendEventLazy();
          v31 = PPSMetricMonitorLogHandleForCategory(1);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            [PPSMetricMonitor startMonitoringProcessWithPID:error:];
          }

          [(PPSMetricMonitor *)self setIsAnalyticsSent:1];
          goto LABEL_23;
        }
      }

      config3 = [(PPSMetricMonitor *)self config];
      v28 = [config3 mode] == 0;

      if (!v28)
      {
LABEL_23:

        _Block_object_dispose(&v40, 8);
        goto LABEL_24;
      }

      connection2 = [(PPSMetricMonitor *)self config];
      [connection2 updateInterval];
      [(PPSMetricMonitor *)self _startUpdateTimer:?];
    }

    goto LABEL_23;
  }

  if (!error)
  {
    return 0;
  }

  v19 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [PPSMetricMonitor startMonitoringProcessWithPID:error:];
  }

  v20 = MEMORY[0x277CCA9B8];
  v47 = *MEMORY[0x277CCA450];
  v48[0] = @"Already monitoring";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
  [v20 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:7 userInfo:v13];
  *error = v15 = 0;
LABEL_24:

  return v15;
}

void __56__PPSMetricMonitor_startMonitoringProcessWithPID_error___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) remoteProxy];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__PPSMetricMonitor_startMonitoringProcessWithPID_error___block_invoke_2;
  v7[3] = &unk_2788478D0;
  v6 = *(a1 + 40);
  v5 = v6;
  v8 = v6;
  [v2 startMonitoringProcessesWithPID:v4 completion:v7];
}

void __56__PPSMetricMonitor_startMonitoringProcessWithPID_error___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)startMonitoringProcessesWithPID:(id)d error:(id *)error
{
  v45[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitor startMonitoringProcessesWithPID:error:];
  }

  if (![(PPSMetricMonitor *)self monitoringState]|| [(PPSMetricMonitor *)self isInterrupted])
  {
    [(PPSMetricMonitor *)self _resetMonitoringState];
    connection = [(PPSMetricMonitor *)self connection];
    v9 = connection == 0;

    if (v9)
    {
      config = [(PPSMetricMonitor *)self config];
      [(PPSMetricMonitor *)self _setUpXPCConnectionWithConfig:config];
    }

    v11 = dispatch_semaphore_create(0);
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy_;
    v41 = __Block_byref_object_dispose_;
    v42 = 0;
    xpcMessagingQueue = [(PPSMetricMonitor *)self xpcMessagingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PPSMetricMonitor_startMonitoringProcessesWithPID_error___block_invoke;
    block[3] = &unk_278847968;
    block[4] = self;
    v13 = dCopy;
    v34 = v13;
    v36 = &v37;
    v14 = v11;
    v35 = v14;
    dispatch_sync(xpcMessagingQueue, block);

    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    v15 = v38[5];
    v16 = v15 == 0;
    if (v15)
    {
      if (error)
      {
        *error = v15;
      }

      config2 = [(PPSMetricMonitor *)self config];
      isHeadless = [config2 isHeadless];

      if (!isHeadless)
      {
        goto LABEL_27;
      }

      connection2 = [(PPSMetricMonitor *)self connection];
      [connection2 invalidate];
    }

    else
    {
      connection3 = [(PPSMetricMonitor *)self connection];

      if (connection3)
      {
        [(PPSMetricMonitor *)self setMonitoringState:2];
        v23 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v13];
        [(PPSMetricMonitor *)self setCurrentProcessPIDs:v23];
      }

      config3 = [(PPSMetricMonitor *)self config];
      isHeadless2 = [config3 isHeadless];

      if (isHeadless2 && (-[PPSMetricMonitor connection](self, "connection"), v26 = objc_claimAutoreleasedReturnValue(), [v26 invalidate], v26, !-[PPSMetricMonitor isAnalyticsSent](self, "isAnalyticsSent")))
      {
        date = [MEMORY[0x277CBEAA8] date];
        [(PPSMetricMonitor *)self setMonitoredStartTime:date];

        v30 = v13;
        AnalyticsSendEventLazy();
        v31 = PPSMetricMonitorLogHandleForCategory(1);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          -[PPSMetricMonitor startMonitoringProcessesWithPID:error:].cold.3(v43, [v30 count], v31);
        }

        [(PPSMetricMonitor *)self setIsAnalyticsSent:1];
        connection2 = v30;
      }

      else
      {
        config4 = [(PPSMetricMonitor *)self config];
        v28 = [config4 mode] == 0;

        if (!v28)
        {
LABEL_27:

          _Block_object_dispose(&v37, 8);
LABEL_28:

          goto LABEL_29;
        }

        connection2 = [(PPSMetricMonitor *)self config];
        [connection2 updateInterval];
        [(PPSMetricMonitor *)self _startUpdateTimer:?];
      }
    }

    goto LABEL_27;
  }

  if (error)
  {
    v20 = PPSMetricMonitorLogHandleForCategory(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [PPSMetricMonitor startMonitoringProcessWithPID:error:];
    }

    v21 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA450];
    v45[0] = @"Already monitoring";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    [v21 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:7 userInfo:v14];
    *error = v16 = 0;
    goto LABEL_28;
  }

  v16 = 0;
LABEL_29:

  return v16;
}

void __58__PPSMetricMonitor_startMonitoringProcessesWithPID_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__PPSMetricMonitor_startMonitoringProcessesWithPID_error___block_invoke_2;
  v6[3] = &unk_2788478D0;
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  [v2 startMonitoringProcessesWithPID:v3 completion:v6];
}

void __58__PPSMetricMonitor_startMonitoringProcessesWithPID_error___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id __58__PPSMetricMonitor_startMonitoringProcessesWithPID_error___block_invoke_3(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"targetAppCount";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (BOOL)startMonitoringProcessWithName:(id)name error:(id *)error
{
  v48[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitor startMonitoringProcessWithName:error:];
  }

  if (![(PPSMetricMonitor *)self monitoringState]|| [(PPSMetricMonitor *)self isInterrupted])
  {
    [(PPSMetricMonitor *)self _resetMonitoringState];
    connection = [(PPSMetricMonitor *)self connection];
    v9 = connection == 0;

    if (v9)
    {
      config = [(PPSMetricMonitor *)self config];
      [(PPSMetricMonitor *)self _setUpXPCConnectionWithConfig:config];
    }

    v11 = dispatch_semaphore_create(0);
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy_;
    v44 = __Block_byref_object_dispose_;
    v45 = 0;
    xpcMessagingQueue = [(PPSMetricMonitor *)self xpcMessagingQueue];
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __57__PPSMetricMonitor_startMonitoringProcessWithName_error___block_invoke;
    v35 = &unk_278847968;
    selfCopy = self;
    v13 = nameCopy;
    v37 = v13;
    v39 = &v40;
    v14 = v11;
    v38 = v14;
    dispatch_sync(xpcMessagingQueue, &v32);

    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    v15 = v41[5];
    v16 = v15 == 0;
    if (v15)
    {
      if (error)
      {
        *error = v15;
      }

      v17 = [(PPSMetricMonitor *)self config:v32];
      isHeadless = [v17 isHeadless];

      if (!isHeadless)
      {
        goto LABEL_23;
      }

      connection2 = [(PPSMetricMonitor *)self connection];
      [connection2 invalidate];
    }

    else
    {
      v22 = [(PPSMetricMonitor *)self connection:v32];

      if (v22)
      {
        [(PPSMetricMonitor *)self setMonitoringState:2];
        v46 = v13;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
        [(PPSMetricMonitor *)self setCurrentProcessNames:v23];
      }

      config2 = [(PPSMetricMonitor *)self config];
      isHeadless2 = [config2 isHeadless];

      if (isHeadless2)
      {
        connection3 = [(PPSMetricMonitor *)self connection];
        [connection3 invalidate];

        if (![(PPSMetricMonitor *)self isAnalyticsSent])
        {
          date = [MEMORY[0x277CBEAA8] date];
          [(PPSMetricMonitor *)self setMonitoredStartTime:date];

          AnalyticsSendEventLazy();
          v31 = PPSMetricMonitorLogHandleForCategory(1);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            [PPSMetricMonitor startMonitoringProcessWithPID:error:];
          }

          [(PPSMetricMonitor *)self setIsAnalyticsSent:1];
          goto LABEL_23;
        }
      }

      config3 = [(PPSMetricMonitor *)self config];
      v28 = [config3 mode] == 0;

      if (!v28)
      {
LABEL_23:

        _Block_object_dispose(&v40, 8);
        goto LABEL_24;
      }

      connection2 = [(PPSMetricMonitor *)self config];
      [connection2 updateInterval];
      [(PPSMetricMonitor *)self _startUpdateTimer:?];
    }

    goto LABEL_23;
  }

  if (!error)
  {
    v16 = 0;
    goto LABEL_25;
  }

  v20 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [PPSMetricMonitor startMonitoringProcessWithName:error:];
  }

  v21 = MEMORY[0x277CCA9B8];
  v47 = *MEMORY[0x277CCA450];
  v48[0] = @"Already monitoring";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
  [v21 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:7 userInfo:v14];
  *error = v16 = 0;
LABEL_24:

LABEL_25:
  return v16;
}

void __57__PPSMetricMonitor_startMonitoringProcessWithName_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__PPSMetricMonitor_startMonitoringProcessWithName_error___block_invoke_2;
  v6[3] = &unk_2788478D0;
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  [v2 startMonitoringProcessWithName:v3 completion:v6];
}

void __57__PPSMetricMonitor_startMonitoringProcessWithName_error___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)startMonitoringProcessesWithName:(id)name error:(id *)error
{
  v45[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitor startMonitoringProcessesWithName:error:];
  }

  if (![(PPSMetricMonitor *)self monitoringState]|| [(PPSMetricMonitor *)self isInterrupted])
  {
    [(PPSMetricMonitor *)self _resetMonitoringState];
    connection = [(PPSMetricMonitor *)self connection];
    v9 = connection == 0;

    if (v9)
    {
      config = [(PPSMetricMonitor *)self config];
      [(PPSMetricMonitor *)self _setUpXPCConnectionWithConfig:config];
    }

    v11 = dispatch_semaphore_create(0);
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy_;
    v41 = __Block_byref_object_dispose_;
    v42 = 0;
    xpcMessagingQueue = [(PPSMetricMonitor *)self xpcMessagingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__PPSMetricMonitor_startMonitoringProcessesWithName_error___block_invoke;
    block[3] = &unk_278847968;
    block[4] = self;
    v13 = nameCopy;
    v34 = v13;
    v36 = &v37;
    v14 = v11;
    v35 = v14;
    dispatch_sync(xpcMessagingQueue, block);

    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    v15 = v38[5];
    v16 = v15 == 0;
    if (v15)
    {
      if (error)
      {
        *error = v15;
      }

      config2 = [(PPSMetricMonitor *)self config];
      isHeadless = [config2 isHeadless];

      if (!isHeadless)
      {
        goto LABEL_27;
      }

      connection2 = [(PPSMetricMonitor *)self connection];
      [connection2 invalidate];
    }

    else
    {
      connection3 = [(PPSMetricMonitor *)self connection];

      if (connection3)
      {
        [(PPSMetricMonitor *)self setMonitoringState:2];
        v23 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v13];
        [(PPSMetricMonitor *)self setCurrentProcessNames:v23];
      }

      config3 = [(PPSMetricMonitor *)self config];
      isHeadless2 = [config3 isHeadless];

      if (isHeadless2 && (-[PPSMetricMonitor connection](self, "connection"), v26 = objc_claimAutoreleasedReturnValue(), [v26 invalidate], v26, !-[PPSMetricMonitor isAnalyticsSent](self, "isAnalyticsSent")))
      {
        date = [MEMORY[0x277CBEAA8] date];
        [(PPSMetricMonitor *)self setMonitoredStartTime:date];

        v30 = v13;
        AnalyticsSendEventLazy();
        v31 = PPSMetricMonitorLogHandleForCategory(1);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          -[PPSMetricMonitor startMonitoringProcessesWithPID:error:].cold.3(v43, [v30 count], v31);
        }

        [(PPSMetricMonitor *)self setIsAnalyticsSent:1];
        connection2 = v30;
      }

      else
      {
        config4 = [(PPSMetricMonitor *)self config];
        v28 = [config4 mode] == 0;

        if (!v28)
        {
LABEL_27:

          _Block_object_dispose(&v37, 8);
LABEL_28:

          goto LABEL_29;
        }

        connection2 = [(PPSMetricMonitor *)self config];
        [connection2 updateInterval];
        [(PPSMetricMonitor *)self _startUpdateTimer:?];
      }
    }

    goto LABEL_27;
  }

  if (error)
  {
    v20 = PPSMetricMonitorLogHandleForCategory(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [PPSMetricMonitor startMonitoringProcessWithName:error:];
    }

    v21 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA450];
    v45[0] = @"Already monitoring";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    [v21 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:7 userInfo:v14];
    *error = v16 = 0;
    goto LABEL_28;
  }

  v16 = 0;
LABEL_29:

  return v16;
}

void __59__PPSMetricMonitor_startMonitoringProcessesWithName_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__PPSMetricMonitor_startMonitoringProcessesWithName_error___block_invoke_2;
  v6[3] = &unk_2788478D0;
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  [v2 startMonitoringProcessesWithName:v3 completion:v6];
}

void __59__PPSMetricMonitor_startMonitoringProcessesWithName_error___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id __59__PPSMetricMonitor_startMonitoringProcessesWithName_error___block_invoke_3(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"targetAppCount";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (BOOL)startMonitoringProcessesWithNames:(id)names PIDs:(id)ds error:(id *)error
{
  v56[1] = *MEMORY[0x277D85DE8];
  namesCopy = names;
  dsCopy = ds;
  v10 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitor startMonitoringProcessesWithNames:PIDs:error:];
  }

  if (![(PPSMetricMonitor *)self monitoringState]|| [(PPSMetricMonitor *)self isInterrupted])
  {
    [(PPSMetricMonitor *)self _resetMonitoringState];
    connection = [(PPSMetricMonitor *)self connection];
    v12 = connection == 0;

    if (v12)
    {
      config = [(PPSMetricMonitor *)self config];
      [(PPSMetricMonitor *)self _setUpXPCConnectionWithConfig:config];
    }

    v14 = dispatch_semaphore_create(0);
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy_;
    v52 = __Block_byref_object_dispose_;
    v53 = 0;
    xpcMessagingQueue = [(PPSMetricMonitor *)self xpcMessagingQueue];
    block = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __65__PPSMetricMonitor_startMonitoringProcessesWithNames_PIDs_error___block_invoke;
    v42 = &unk_2788479B8;
    selfCopy = self;
    v44 = namesCopy;
    v16 = dsCopy;
    v45 = v16;
    v47 = &v48;
    v17 = v14;
    v46 = v17;
    dispatch_sync(xpcMessagingQueue, &block);

    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    v18 = v49[5];
    v19 = v18 == 0;
    if (v18)
    {
      if (error)
      {
        *error = v18;
      }
    }

    else
    {
      connection2 = [(PPSMetricMonitor *)self connection];

      if (connection2)
      {
        [(PPSMetricMonitor *)self setMonitoringState:2];
        v23 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v16];
        [(PPSMetricMonitor *)self setCurrentProcessPIDs:v23];
      }

      config2 = [(PPSMetricMonitor *)self config];
      isHeadless = [config2 isHeadless];

      if (isHeadless && ![(PPSMetricMonitor *)self isAnalyticsSent])
      {
        date = [MEMORY[0x277CBEAA8] date];
        [(PPSMetricMonitor *)self setMonitoredStartTime:date];

        v34 = MEMORY[0x277D85DD0];
        v35 = 3221225472;
        v36 = __65__PPSMetricMonitor_startMonitoringProcessesWithNames_PIDs_error___block_invoke_3;
        v37 = &unk_278847990;
        v27 = v16;
        v38 = v27;
        AnalyticsSendEventLazy();
        v28 = PPSMetricMonitorLogHandleForCategory(1);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          -[PPSMetricMonitor startMonitoringProcessesWithPID:error:].cold.3(v54, [v27 count], v28);
        }

        [(PPSMetricMonitor *)self setIsAnalyticsSent:1];
      }

      v29 = [(PPSMetricMonitor *)self config:v34];
      if ([v29 mode])
      {
      }

      else
      {
        config3 = [(PPSMetricMonitor *)self config];
        isHeadless2 = [config3 isHeadless];

        if ((isHeadless2 & 1) == 0)
        {
          config4 = [(PPSMetricMonitor *)self config];
          [config4 updateInterval];
          [(PPSMetricMonitor *)self _startUpdateTimer:?];
        }
      }
    }

    _Block_object_dispose(&v48, 8);
LABEL_27:

    goto LABEL_28;
  }

  if (error)
  {
    v20 = PPSMetricMonitorLogHandleForCategory(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [PPSMetricMonitor startMonitoringProcessesWithNames:PIDs:error:];
    }

    v21 = MEMORY[0x277CCA9B8];
    v55 = *MEMORY[0x277CCA450];
    v56[0] = @"Already monitoring";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
    [v21 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:7 userInfo:v17];
    *error = v19 = 0;
    goto LABEL_27;
  }

  v19 = 0;
LABEL_28:

  return v19;
}

void __65__PPSMetricMonitor_startMonitoringProcessesWithNames_PIDs_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__PPSMetricMonitor_startMonitoringProcessesWithNames_PIDs_error___block_invoke_2;
  v7[3] = &unk_2788478D0;
  v6 = *(a1 + 56);
  v5 = v6;
  v8 = v6;
  [v2 startMonitoringProcessesWithNames:v3 withPIDs:v4 completion:v7];
}

void __65__PPSMetricMonitor_startMonitoringProcessesWithNames_PIDs_error___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id __65__PPSMetricMonitor_startMonitoringProcessesWithNames_PIDs_error___block_invoke_3(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"targetAppCount";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)collectMetricsOnSnapshot:(id *)snapshot
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = [(PPSMetricMonitor *)self monitoringState];
    *&buf[12] = 1024;
    *&buf[14] = [(PPSMetricMonitor *)self isInterrupted];
    _os_log_impl(&dword_22E4FA000, v5, OS_LOG_TYPE_DEFAULT, "collecting snapshot, monitoringState=%ld, isInterrupted=%d", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  if ([(PPSMetricMonitor *)self isInterrupted])
  {
    v6 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v28 = @"Cannot collect metrics when interrupted";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v8 = [v6 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:3 userInfo:v7];
  }

  else
  {
    if ([(PPSMetricMonitor *)self monitoringState])
    {
      goto LABEL_8;
    }

    v9 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v26 = @"Cannot collect metrics when not monitoring";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v8 = [v9 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:10 userInfo:v7];
  }

  v10 = v20[5];
  v20[5] = v8;

LABEL_8:
  if (v20[5])
  {
    v11 = PPSMetricMonitorLogHandleForCategory(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PPSMetricMonitor collectMetricsOnSnapshot:];
    }
  }

  else
  {
    connection = [(PPSMetricMonitor *)self connection];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __45__PPSMetricMonitor_collectMetricsOnSnapshot___block_invoke;
    v18[3] = &unk_2788479E0;
    v18[4] = &v19;
    v13 = [connection synchronousRemoteObjectProxyWithErrorHandler:v18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __45__PPSMetricMonitor_collectMetricsOnSnapshot___block_invoke_2;
    v17[3] = &unk_278847A08;
    v17[4] = buf;
    v17[5] = &v19;
    [v13 collectMetricsOnDemand:v17];

    v14 = v20[5];
    if (v14)
    {
      *snapshot = v14;
    }
  }

  v15 = *(*&buf[8] + 40);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(buf, 8);

  return v15;
}

void __45__PPSMetricMonitor_collectMetricsOnSnapshot___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)collectMetricsOnDemand
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitor collectMetricsOnDemand];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = objc_alloc_init(PPSMetricCollection);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  if ([(PPSMetricMonitor *)self isInterrupted])
  {
    v4 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30[0] = @"Cannot collect metrics when interrupted";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v6 = [v4 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:3 userInfo:v5];
  }

  else
  {
    if ([(PPSMetricMonitor *)self monitoringState])
    {
      goto LABEL_8;
    }

    v7 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v28 = @"Cannot collect metrics when not monitoring";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v6 = [v7 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:10 userInfo:v5];
  }

  v8 = v16[5];
  v16[5] = v6;

LABEL_8:
  if (v16[5])
  {
    connection = PPSMetricMonitorLogHandleForCategory(1);
    if (os_log_type_enabled(connection, OS_LOG_TYPE_ERROR))
    {
      [PPSMetricMonitor collectMetricsOnDemand];
    }
  }

  else
  {
    connection = [(PPSMetricMonitor *)self connection];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__PPSMetricMonitor_collectMetricsOnDemand__block_invoke;
    v14[3] = &unk_2788479E0;
    v14[4] = &v15;
    v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v14];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__PPSMetricMonitor_collectMetricsOnDemand__block_invoke_2;
    v13[3] = &unk_278847A08;
    v13[4] = &v21;
    v13[5] = &v15;
    [v10 collectMetricsOnDemand:v13];
  }

  v11 = v22[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __42__PPSMetricMonitor_collectMetricsOnDemand__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)stopMonitoring
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __34__PPSMetricMonitor_stopMonitoring__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) remoteProxy];
  [v1 finishMonitoringAndSendMetrics];
}

- (BOOL)setUpdateInterval:(double)interval error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (interval < 0.2)
  {
    v7 = PPSMetricMonitorLogHandleForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PPSMetricMonitor setUpdateInterval:error:];
    }

    v8 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = @"Update interval smaller than 0.2 s is not supported; defaulting to 0.2 s";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *error = [v8 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:0 userInfo:v9];
  }

  v10 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v14 = 134217984;
    intervalCopy = interval;
    _os_log_impl(&dword_22E4FA000, v10, OS_LOG_TYPE_INFO, "Setting update interval to %f s", &v14, 0xCu);
  }

  updateTimer = [(PPSMetricMonitor *)self updateTimer];

  if (updateTimer)
  {
    updateTimer2 = [(PPSMetricMonitor *)self updateTimer];
    dispatch_source_set_timer(updateTimer2, 0, (interval * 1000000000.0), 0x989680uLL);
  }

  return 1;
}

- (void)_resetMonitoringState
{
  [(PPSMetricMonitor *)self setMonitoringState:0];
  [(PPSMetricMonitor *)self setCurrentProcessPIDs:0];
  [(PPSMetricMonitor *)self setCurrentProcessNames:0];

  [(PPSMetricMonitor *)self setIsInterrupted:0];
}

- (void)updateWithMetricCollection:(id)collection
{
  collectionCopy = collection;
  delegate = [(PPSMetricMonitor *)self delegate];

  if (delegate)
  {
    delegate2 = [(PPSMetricMonitor *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegateQueue = [(PPSMetricMonitor *)self delegateQueue];
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __47__PPSMetricMonitor_updateWithMetricCollection___block_invoke;
      v16 = &unk_278847A58;
      selfCopy = self;
      v18 = collectionCopy;
      dispatch_async(delegateQueue, &v13);

      goto LABEL_9;
    }

    v9 = PPSMetricMonitorLogHandleForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitor updateWithMetricCollection:];
    }
  }

  else
  {
    v9 = PPSMetricMonitorLogHandleForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PPSMetricMonitor updateWithMetricCollection:];
    }
  }

LABEL_9:
  v10 = [(PPSMetricMonitor *)self config:v13];
  mode = [v10 mode];

  if (mode == 1)
  {
    connection = [(PPSMetricMonitor *)self connection];
    [connection invalidate];
  }
}

void __47__PPSMetricMonitor_updateWithMetricCollection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 metricMonitor:*(a1 + 32) didUpdateWithMetrics:*(a1 + 40)];
}

- (void)endWithError:(id)error
{
  errorCopy = error;
  monitoredStartTime = [(PPSMetricMonitor *)self monitoredStartTime];

  if (monitoredStartTime)
  {
    date = [MEMORY[0x277CBEAA8] date];
    monitoredStartTime2 = [(PPSMetricMonitor *)self monitoredStartTime];
    [date timeIntervalSinceDate:monitoredStartTime2];

    [(PPSMetricMonitor *)self setMonitoredStartTime:0];
    v8 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitor endWithError:];
    }

    AnalyticsSendEventLazy();
  }

  delegate = [(PPSMetricMonitor *)self delegate];
  [delegate metricMonitor:self didEndWithError:errorCopy];

  [(PPSMetricMonitor *)self _resetMonitoringState];
}

id __33__PPSMetricMonitor_endWithError___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"monitoringDuration";
  v1 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)_setUpXPCConnectionWithConfig:(id)config
{
  configCopy = config;
  v5 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitor _setUpXPCConnectionWithConfig:];
  }

  v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.PerfPowerMetricMonitor.xpc" options:4096];
  [(PPSMetricMonitor *)self setConnection:v6];

  v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284302200];
  connection = [(PPSMetricMonitor *)self connection];
  [connection setRemoteObjectInterface:v7];

  connection2 = [(PPSMetricMonitor *)self connection];
  remoteObjectInterface = [connection2 remoteObjectInterface];
  v11 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [remoteObjectInterface setClasses:v11 forSelector:sel_setUpWithConfiguration_completion_ argumentIndex:0 ofReply:0];

  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284301658];
  connection3 = [(PPSMetricMonitor *)self connection];
  [connection3 setExportedInterface:v12];

  connection4 = [(PPSMetricMonitor *)self connection];
  exportedInterface = [connection4 exportedInterface];
  v16 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [exportedInterface setClasses:v16 forSelector:sel_updateWithMetricCollection_ argumentIndex:0 ofReply:0];

  connection5 = [(PPSMetricMonitor *)self connection];
  [connection5 setExportedObject:self];

  objc_initWeak(&location, self);
  connection6 = [(PPSMetricMonitor *)self connection];
  v19 = [connection6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_79];
  [(PPSMetricMonitor *)self setRemoteProxy:v19];

  connection7 = [(PPSMetricMonitor *)self connection];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_80;
  v31[3] = &unk_278847AC0;
  objc_copyWeak(&v32, &location);
  [connection7 setInterruptionHandler:v31];

  connection8 = [(PPSMetricMonitor *)self connection];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_81;
  v29[3] = &unk_278847AC0;
  objc_copyWeak(&v30, &location);
  [connection8 setInvalidationHandler:v29];

  v22 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E4FA000, v22, OS_LOG_TYPE_DEFAULT, "Connecting to perfpowermetricd", buf, 2u);
  }

  connection9 = [(PPSMetricMonitor *)self connection];
  [connection9 resume];

  xpcMessagingQueue = [(PPSMetricMonitor *)self xpcMessagingQueue];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_86;
  v26[3] = &unk_278847A58;
  v26[4] = self;
  v27 = configCopy;
  v25 = configCopy;
  dispatch_async(xpcMessagingQueue, v26);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_cold_1();
  }
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_80(uint64_t a1)
{
  v2 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_80_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleXPCInterruption];
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_81(uint64_t a1)
{
  v2 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_81_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnection:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setRemoteProxy:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 monitoringState];

  if (v6)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_82;
    block[3] = &unk_278847AC0;
    objc_copyWeak(&v10, (a1 + 32));
    dispatch_async(v8, block);

    objc_destroyWeak(&v10);
  }
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_82(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA450];
  v6[0] = @"XPC connection invalidated";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:1 userInfo:v3];
  [WeakRetained endWithError:v4];
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_86(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) remoteProxy];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_2;
  v4[3] = &unk_278847AC0;
  objc_copyWeak(&v5, &location);
  [v2 setUpWithConfiguration:v3 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_3;
    block[3] = &unk_278847AC0;
    objc_copyWeak(&v8, (a1 + 32));
    dispatch_async(v6, block);

    objc_destroyWeak(&v8);
  }
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  [v2 metricMonitorDidBecomeReady:WeakRetained];

  v3 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_22E4FA000, v3, OS_LOG_TYPE_INFO, "metric Monitor is ready", v4, 2u);
  }
}

- (void)_handleXPCInterruption
{
  [(PPSMetricMonitor *)self setIsInterrupted:1];
  delegate = [(PPSMetricMonitor *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegateQueue = [(PPSMetricMonitor *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PPSMetricMonitor__handleXPCInterruption__block_invoke;
    block[3] = &unk_278847A30;
    block[4] = self;
    dispatch_async(delegateQueue, block);
  }

  xpcMessagingQueue = [(PPSMetricMonitor *)self xpcMessagingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__PPSMetricMonitor__handleXPCInterruption__block_invoke_2;
  v7[3] = &unk_278847A30;
  v7[4] = self;
  dispatch_async(xpcMessagingQueue, v7);
}

void __42__PPSMetricMonitor__handleXPCInterruption__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 metricMonitorInterruptionDidBegin:*(a1 + 32)];
}

void __42__PPSMetricMonitor__handleXPCInterruption__block_invoke_2(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) remoteProxy];
  v3 = [*(a1 + 32) config];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__PPSMetricMonitor__handleXPCInterruption__block_invoke_3;
  v4[3] = &unk_278847AC0;
  objc_copyWeak(&v5, &location);
  [v2 setUpWithConfiguration:v3 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __42__PPSMetricMonitor__handleXPCInterruption__block_invoke_3(uint64_t a1)
{
  v2 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E4FA000, v2, OS_LOG_TYPE_DEFAULT, "Resumed XPC connection to perfpowermetricd", buf, 2u);
  }

  v3 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PPSMetricMonitor__handleXPCInterruption__block_invoke_91;
  block[3] = &unk_278847AC0;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
}

void __42__PPSMetricMonitor__handleXPCInterruption__block_invoke_91(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resumeMonitoring];
}

- (void)_resumeMonitoring
{
  currentProcessNames = [self currentProcessNames];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __37__PPSMetricMonitor__resumeMonitoring__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 metricMonitorInterruptionDidEnd:*(a1 + 32)];
}

void __37__PPSMetricMonitor__resumeMonitoring__block_invoke_2(uint64_t a1)
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  [v5 setObject:@"Failed to resume after interruption" forKeyedSubscript:*MEMORY[0x277CCA450]];
  v2 = *(a1 + 32);
  if (v2)
  {
    [v5 setObject:v2 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:3 userInfo:v5];
  [v3 endWithError:v4];
}

- (void)_cancelUpdateTimer
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_startUpdateTimer:(double)timer
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    timerCopy = timer;
    _os_log_impl(&dword_22E4FA000, v5, OS_LOG_TYPE_INFO, "Starting update timer with interval: %f", buf, 0xCu);
  }

  [(PPSMetricMonitor *)self _cancelUpdateTimer];
  delegateQueue = [(PPSMetricMonitor *)self delegateQueue];
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, delegateQueue);
  [(PPSMetricMonitor *)self setUpdateTimer:v7];

  updateTimer = [(PPSMetricMonitor *)self updateTimer];
  dispatch_source_set_timer(updateTimer, 0, (timer * 1000000000.0), 0x989680uLL);

  updateTimer2 = [(PPSMetricMonitor *)self updateTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __38__PPSMetricMonitor__startUpdateTimer___block_invoke;
  handler[3] = &unk_278847A30;
  handler[4] = self;
  dispatch_source_set_event_handler(updateTimer2, handler);

  updateTimer3 = [(PPSMetricMonitor *)self updateTimer];
  dispatch_resume(updateTimer3);
}

- (PPSMetricMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithConfiguration:(void *)a1 delegate:error:.cold.1(void *a1)
{
  [a1 updateInterval];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)startMonitoringSystemMetricsWithError:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startMonitoringSystemMetricsWithError:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startMonitoringProcessWithPID:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startMonitoringProcessWithPID:error:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startMonitoringProcessesWithPID:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)startMonitoringProcessesWithPID:(NSObject *)a3 error:.cold.3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  OUTLINED_FUNCTION_5(&dword_22E4FA000, a2, a3, "processes monitored count: %lu", a1);
}

- (void)startMonitoringProcessWithName:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)startMonitoringProcessWithName:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startMonitoringProcessesWithName:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)startMonitoringProcessesWithNames:PIDs:error:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_22E4FA000, v1, OS_LOG_TYPE_DEBUG, "Start monitoring processes with names and pids: %@ %@", v2, 0x16u);
}

- (void)startMonitoringProcessesWithNames:PIDs:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)collectMetricsOnDemand
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateWithMetricCollection:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateWithMetricCollection:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setUpXPCConnectionWithConfig:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_80_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_81_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end