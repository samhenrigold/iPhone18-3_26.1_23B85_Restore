@interface NetworkQualityExecutions
- (BOOL)isDraining;
- (NetworkQualityExecutions)initWithConfiguration:(id)configuration;
- (NetworkQualityExecutions)initWithConfiguration:(id)configuration delegate:(id)delegate;
- (id)createDefaultNSURLSessionConfiguration;
- (id)createDefaultRequestwithURL:(id)l;
- (int64_t)currentThroughput;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)_cancelWithOptionalError:(id)error;
- (void)_sendSymptomReport;
- (void)cancel;
- (void)captureError:(id)error;
- (void)checkTimeout;
- (void)drain;
- (void)execDLWithCompletionHandler:(id)handler;
- (void)execParallelWithCompletionHandler:(id)handler;
- (void)execULWithCompletionHandler:(id)handler;
- (void)reallyExecuteDL;
- (void)reallyExecuteParallel;
- (void)reallyExecuteUL;
- (void)reportingCompletionHandler:(id)handler;
- (void)run;
- (void)runWithCompletionHandler:(id)handler;
- (void)setTimeout;
- (void)shareProgress;
- (void)validateAndAdjustRuntimeParameters:(id)parameters;
@end

@implementation NetworkQualityExecutions

- (void)validateAndAdjustRuntimeParameters:(id)parameters
{
  parametersCopy = parameters;
  maxRuntime = [parametersCopy maxRuntime];
  if ([parametersCopy maxRuntime] || objc_msgSend(parametersCopy, "minRuntime") < 1 || objc_msgSend(parametersCopy, "minRuntime") >= 46)
  {
    if (![parametersCopy maxRuntime] && objc_msgSend(parametersCopy, "minRuntime") >= 1)
    {
      v10 = [parametersCopy minRuntime] + 1;
      v11 = parametersCopy;
LABEL_17:
      [v11 setMaxRuntime:v10];
      goto LABEL_18;
    }

    minRuntime = [parametersCopy minRuntime];
    maxRuntime2 = [parametersCopy maxRuntime];
    if (minRuntime >= maxRuntime2)
    {
      netqual_log_init(maxRuntime2, v7);
      v8 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        [(NetworkQualityExecutions *)v8 validateAndAdjustRuntimeParameters:parametersCopy];
      }

      if ([parametersCopy maxRuntime] < 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = [parametersCopy maxRuntime] - 1;
      }

      [parametersCopy setMinRuntime:v9];
    }
  }

  if (maxRuntime <= 0)
  {
    v11 = parametersCopy;
    v10 = 45;
    goto LABEL_17;
  }

LABEL_18:
}

- (NetworkQualityExecutions)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v24.receiver = self;
  v24.super_class = NetworkQualityExecutions;
  v5 = [(NetworkQualityExecutions *)&v24 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [configurationCopy mutableCopy];
  config = v5->config;
  v5->config = v6;

  v8 = nw_activity_create();
  parentNWActivity = v5->_parentNWActivity;
  v5->_parentNWActivity = v8;

  v10 = dispatch_queue_create("com.apple.networkQuality.executions", 0);
  executionsQueue = v5->_executionsQueue;
  v5->_executionsQueue = v10;

  v12 = objc_alloc_init(MEMORY[0x277CCABD8]);
  operationQueue = v5->_operationQueue;
  v5->_operationQueue = v12;

  [(NSOperationQueue *)v5->_operationQueue setUnderlyingQueue:v5->_executionsQueue];
  [(NSOperationQueue *)v5->_operationQueue setMaxConcurrentOperationCount:1];
  [(NSOperationQueue *)v5->_operationQueue setQualityOfService:17];
  v5->cancelled = 0;
  v5->_throughputMetExitCriteria = 0;
  *&v5->_drainingInProgress = 0;
  v14 = objc_alloc_init(NetworkQualityExecutionsResult);
  progressResults = v5->_progressResults;
  v5->_progressResults = v14;

  networkInterfaceName = [(NetworkQualityConfiguration *)v5->config networkInterfaceName];

  if (!networkInterfaceName)
  {
LABEL_5:
    [(NetworkQualityExecutions *)v5 validateAndAdjustRuntimeParameters:v5->config];
    v5->_stage = 0;
LABEL_6:
    v21 = v5;
    goto LABEL_7;
  }

  networkInterfaceName2 = [(NetworkQualityConfiguration *)v5->config networkInterfaceName];
  [networkInterfaceName2 cStringUsingEncoding:4];
  v18 = nw_interface_create_with_name();

  if (v18)
  {

    goto LABEL_5;
  }

  netqual_log_init(v19, v20);
  v23 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    [(NetworkQualityExecutions *)&v5->config initWithConfiguration:v23];
  }

  v21 = 0;
LABEL_7:

  return v21;
}

- (NetworkQualityExecutions)initWithConfiguration:(id)configuration delegate:(id)delegate
{
  delegateCopy = delegate;
  v8 = [(NetworkQualityExecutions *)self initWithConfiguration:configuration];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_delegate, delegate);
  }

  return v9;
}

- (id)createDefaultNSURLSessionConfiguration
{
  defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [defaultSessionConfiguration setRequestCachePolicy:1];
  [defaultSessionConfiguration setURLCache:0];
  if ([(NetworkQualityConfiguration *)self->config forceHTTP3])
  {
    [defaultSessionConfiguration set_allowsHTTP3:1];
  }

  if ([(NetworkQualityConfiguration *)self->config forceL4S])
  {
    [defaultSessionConfiguration set_enablesL4S:1];
  }

  if ([(NetworkQualityConfiguration *)self->config forceDisableL4S])
  {
    [defaultSessionConfiguration set_enablesL4S:0];
  }

  if ([(NetworkQualityConfiguration *)self->config privateRelay])
  {
    [defaultSessionConfiguration set_sourceApplicationSecondaryIdentifier:@"com.apple.networkQuality.private-relay"];
  }

  if ([(NetworkQualityConfiguration *)self->config multipathServiceType])
  {
    [defaultSessionConfiguration setMultipathServiceType:{-[NetworkQualityConfiguration multipathServiceType](self->config, "multipathServiceType")}];
  }

  if ([(NetworkQualityConfiguration *)self->config useUnifiedHTTPStack])
  {
    [defaultSessionConfiguration setUsesClassicLoadingMode:0];
  }

  return defaultSessionConfiguration;
}

- (id)createDefaultRequestwithURL:(id)l
{
  v4 = [MEMORY[0x277CCAB70] requestWithURL:l];
  networkInterfaceName = [(NetworkQualityConfiguration *)self->config networkInterfaceName];

  if (networkInterfaceName)
  {
    networkInterfaceName2 = [(NetworkQualityConfiguration *)self->config networkInterfaceName];
    [v4 setBoundInterfaceIdentifier:networkInterfaceName2];
  }

  if (![(NetworkQualityConfiguration *)self->config forceHTTP1]&& ![(NetworkQualityConfiguration *)self->config forceHTTP2])
  {
    if (![(NetworkQualityConfiguration *)self->config forceHTTP3])
    {
      goto LABEL_8;
    }

    [v4 setAssumesHTTP3Capable:1];
  }

  [v4 _CFURLRequest];
  _CFURLRequestSetAllowedProtocolTypes();
LABEL_8:
  [v4 setValue:@"identity" forHTTPHeaderField:@"Accept-Encoding"];

  return v4;
}

- (void)checkTimeout
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = v3;
  if (self->_timeout)
  {
    [v3 timeIntervalSinceDate:?];
    if (v5 > 0.0)
    {
      timeout = self->_timeout;
      self->_timeout = 0;

      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Timed out waiting for stage %s to drain", NetworkQualityStages_to_string(self->_stage)];
      netqual_log_init(v7, v8);
      v9 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v7;
        v11 = v9;
        *buf = 136315650;
        v18 = "[NetworkQualityExecutions checkTimeout]";
        v19 = 1024;
        v20 = 289;
        v21 = 2080;
        uTF8String = [v7 UTF8String];
        _os_log_impl(&dword_25B962000, v11, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] %s. Moving on.", buf, 0x1Cu);
      }

      if ([(NetworkQualityExecutions *)self isDraining])
      {
        v12 = MEMORY[0x277CCA9B8];
        v15 = *MEMORY[0x277CCA450];
        v16 = v7;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v14 = [v12 errorWithDomain:@"NetworkQualityErrorDomain" code:1011 userInfo:v13];

        [(NetworkQualityExecutions *)self reportingCompletionHandler:v14];
      }

      else
      {
        [(NetworkQualityExecutions *)self run];
      }
    }
  }
}

- (void)shareProgress
{
  obj = [MEMORY[0x277CBEAA8] now];
  [(NetworkQualityExecutions *)self checkTimeout];
  if (self->_delegate)
  {
    [obj timeIntervalSinceDate:self->_lastProgressUpdate];
    if (v3 >= 0.2)
    {
      objc_storeStrong(&self->_lastProgressUpdate, obj);
      [(NetworkQualityResult *)self->_progressResults setIndex:[(NetworkQualityResult *)self->_progressResults index]+ 1];
      [(NetworkQualityResult *)self->_progressResults setTimestamp:obj];
      [(NetworkQualityExecutionsDelegate *)self->_delegate progress:self->_progressResults];
    }
  }
}

- (int64_t)currentThroughput
{
  downlinkCapacity = [(NetworkQualityResult *)self->_progressResults downlinkCapacity];
  value = [downlinkCapacity value];

  if (value)
  {
    downlinkCapacity2 = [(NetworkQualityResult *)self->_progressResults downlinkCapacity];
    value2 = [downlinkCapacity2 value];
    integerValue = [value2 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  uplinkCapacity = [(NetworkQualityResult *)self->_progressResults uplinkCapacity];
  value3 = [uplinkCapacity value];

  if (value3)
  {
    uplinkCapacity2 = [(NetworkQualityResult *)self->_progressResults uplinkCapacity];
    value4 = [uplinkCapacity2 value];
    integerValue2 = [value4 integerValue];

    if (integerValue2 < integerValue)
    {
      uplinkCapacity3 = [(NetworkQualityResult *)self->_progressResults uplinkCapacity];
      value5 = [uplinkCapacity3 value];
      integerValue = [value5 integerValue];
    }
  }

  if (integerValue == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return integerValue;
  }
}

- (void)reportingCompletionHandler:(id)handler
{
  if (!self->cancelled)
  {
    [(NetworkQualityExecutions *)self captureError:?];
    if (!handler)
    {
      [(NetworkQualityExecutions *)self _sendSymptomReport];
    }

    nw_activity_complete_with_reason();
    completionHandler = self->_completionHandler;
    progressResults = self->_progressResults;
    error = [(NetworkQualityResult *)progressResults error];
    completionHandler[2](completionHandler, progressResults, error);

    [(NetworkQualityExecutions *)self _cancelWithOptionalError:0];
  }
}

- (void)drain
{
  v39 = *MEMORY[0x277D85DE8];
  if (self->_drainingInProgress)
  {
    netqual_log_init(self, a2);
    v2 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v34 = "[NetworkQualityExecutions drain]";
      v35 = 1024;
      v36 = 369;
      _os_log_impl(&dword_25B962000, v2, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Drain already in progress, ignoring duplicate call", buf, 0x12u);
    }

    return;
  }

  if ([(NetworkQualityConfiguration *)self->config minRuntime]>= 1 && self->_stage >= 3u && self->_startCapacityTest)
  {
    if ([(NetworkQualityConfiguration *)self->config parallel])
    {
      v4 = 1;
    }

    else
    {
      upload = [(NetworkQualityConfiguration *)self->config upload];
      download = [(NetworkQualityConfiguration *)self->config download];
      if (download && upload)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }

      if (!download && !upload)
      {
        goto LABEL_18;
      }
    }

    v5 = ([(NetworkQualityConfiguration *)self->config minRuntime]/ v4);
    v6 = [MEMORY[0x277CBEAA8] now];
    [v6 timeIntervalSinceDate:self->_startCapacityTest];
    v8 = (v5 - v7);

    netqual_log_init(v9, v10);
    v11 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v34 = "[NetworkQualityExecutions drain]";
      v35 = 1024;
      v36 = 394;
      v37 = 2048;
      v38 = v8;
      _os_log_impl(&dword_25B962000, v11, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] not draining until minRuntime expired in %ld seconds", buf, 0x1Cu);
    }

    if (v8 >= 1)
    {
      v12 = dispatch_time(0, 1000000000 * v8);
      executionsQueue = self->_executionsQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __33__NetworkQualityExecutions_drain__block_invoke;
      block[3] = &unk_279969378;
      block[4] = self;
      dispatch_after(v12, executionsQueue, block);
      return;
    }
  }

LABEL_18:
  startCapacityTest = self->_startCapacityTest;
  self->_startCapacityTest = 0;

  self->_throughputMetExitCriteria = 0;
  *&self->_drainingInProgress = 1;
  if (self->latencyDelegate)
  {
    netqual_log_init(is_complete, v18);
    v19 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      latencyDelegate = self->latencyDelegate;
      *buf = 136315650;
      v34 = "[NetworkQualityExecutions drain]";
      v35 = 1024;
      v36 = 413;
      v37 = 2112;
      v38 = latencyDelegate;
      _os_log_impl(&dword_25B962000, v19, OS_LOG_TYPE_DEFAULT, "%s:%u - [Draining] Canceling Latency Delegate %@", buf, 0x1Cu);
    }

    v21 = self->latencyDelegate;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __33__NetworkQualityExecutions_drain__block_invoke_51;
    v31[3] = &unk_2799693A0;
    v31[4] = self;
    is_complete = [(LatencyURLSessionDelegate *)v21 cancelWithCompletionHandler:v31];
    if (self->dlDelegate || self->ulDelegate)
    {
      is_complete = nw_activity_is_complete();
      if ((is_complete & 1) == 0)
      {
        is_complete = nw_activity_complete_with_reason();
      }
    }

    if (!self->dlDelegate)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (self->dlDelegate)
  {
LABEL_28:
    netqual_log_init(is_complete, v18);
    v22 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      dlDelegate = self->dlDelegate;
      *buf = 136315650;
      v34 = "[NetworkQualityExecutions drain]";
      v35 = 1024;
      v36 = 441;
      v37 = 2112;
      v38 = dlDelegate;
      _os_log_impl(&dword_25B962000, v22, OS_LOG_TYPE_DEFAULT, "%s:%u - [Draining] Canceling dl delegate %@", buf, 0x1Cu);
    }

    v24 = self->dlDelegate;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __33__NetworkQualityExecutions_drain__block_invoke_55;
    v30[3] = &unk_2799693A0;
    v30[4] = self;
    is_complete = [(ThroughputDelegate *)v24 cancelWithCompletionHandler:v30];
    goto LABEL_31;
  }

  if (self->ulDelegate)
  {
LABEL_31:
    if (self->ulDelegate)
    {
      netqual_log_init(is_complete, v18);
      v25 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        ulDelegate = self->ulDelegate;
        *buf = 136315650;
        v34 = "[NetworkQualityExecutions drain]";
        v35 = 1024;
        v36 = 463;
        v37 = 2112;
        v38 = ulDelegate;
        _os_log_impl(&dword_25B962000, v25, OS_LOG_TYPE_DEFAULT, "%s:%u - [Draining] Canceling ul delegate %@", buf, 0x1Cu);
      }

      v27 = self->ulDelegate;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __33__NetworkQualityExecutions_drain__block_invoke_56;
      v29[3] = &unk_2799693A0;
      v29[4] = self;
      [(ThroughputDelegate *)v27 cancelWithCompletionHandler:v29];
    }

    return;
  }

  netqual_log_init(is_complete, v18);
  v28 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v34 = "[NetworkQualityExecutions drain]";
    v35 = 1024;
    v36 = 484;
    _os_log_impl(&dword_25B962000, v28, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Finished draining stage - moving on", buf, 0x12u);
  }

  self->_drainingInProgress = 0;
  if (![(NetworkQualityExecutions *)self isDraining])
  {
    [NetworkQualityExecutions drain];
  }

  [(NetworkQualityExecutions *)self run];
}

void __33__NetworkQualityExecutions_drain__block_invoke_51(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  netqual_log_init(v3, v4);
  v5 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 80);
    v12 = 136315650;
    v13 = "[NetworkQualityExecutions drain]_block_invoke";
    v14 = 1024;
    v15 = 415;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_25B962000, v5, OS_LOG_TYPE_DEFAULT, "%s:%u - [Draining] Canceled latency delegate %@", &v12, 0x1Cu);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 80);
  *(v7 + 80) = 0;

  v10 = *(a1 + 32);
  if (v3)
  {
    [v10 reportingCompletionHandler:v3];
  }

  else if (!v10[10] && !v10[8] && !v10[9])
  {
    netqual_log_init(v10, v9);
    v11 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[NetworkQualityExecutions drain]_block_invoke";
      v14 = 1024;
      v15 = 425;
      _os_log_impl(&dword_25B962000, v11, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Finished draining stage - moving on", &v12, 0x12u);
    }

    *(*(a1 + 32) + 248) = 0;
    if (([*(a1 + 32) isDraining] & 1) == 0)
    {
      __33__NetworkQualityExecutions_drain__block_invoke_51_cold_1();
    }

    [*(a1 + 32) run];
  }
}

void __33__NetworkQualityExecutions_drain__block_invoke_55(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  netqual_log_init(v3, v4);
  v5 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 64);
    v12 = 136315650;
    v13 = "[NetworkQualityExecutions drain]_block_invoke";
    v14 = 1024;
    v15 = 444;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_25B962000, v5, OS_LOG_TYPE_DEFAULT, "%s:%u - [Draining] Canceled dl delegate %@", &v12, 0x1Cu);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  *(v7 + 64) = 0;

  v10 = *(a1 + 32);
  if (v3)
  {
    [v10 reportingCompletionHandler:v3];
  }

  else if (!v10[10] && !v10[8] && !v10[9])
  {
    netqual_log_init(v10, v9);
    v11 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[NetworkQualityExecutions drain]_block_invoke";
      v14 = 1024;
      v15 = 454;
      _os_log_impl(&dword_25B962000, v11, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Finished draining stage - moving on", &v12, 0x12u);
    }

    *(*(a1 + 32) + 248) = 0;
    if (([*(a1 + 32) isDraining] & 1) == 0)
    {
      __33__NetworkQualityExecutions_drain__block_invoke_55_cold_1();
    }

    [*(a1 + 32) run];
  }
}

void __33__NetworkQualityExecutions_drain__block_invoke_56(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  netqual_log_init(v3, v4);
  v5 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 72);
    v12 = 136315650;
    v13 = "[NetworkQualityExecutions drain]_block_invoke";
    v14 = 1024;
    v15 = 466;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_25B962000, v5, OS_LOG_TYPE_DEFAULT, "%s:%u - [Draining] Canceled ul delegate %@", &v12, 0x1Cu);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 72);
  *(v7 + 72) = 0;

  v10 = *(a1 + 32);
  if (v3)
  {
    [v10 reportingCompletionHandler:v3];
  }

  else if (!v10[10] && !v10[8] && !v10[9])
  {
    netqual_log_init(v10, v9);
    v11 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[NetworkQualityExecutions drain]_block_invoke";
      v14 = 1024;
      v15 = 476;
      _os_log_impl(&dword_25B962000, v11, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Finished draining stage - moving on", &v12, 0x12u);
    }

    *(*(a1 + 32) + 248) = 0;
    if (([*(a1 + 32) isDraining] & 1) == 0)
    {
      __33__NetworkQualityExecutions_drain__block_invoke_56_cold_1();
    }

    [*(a1 + 32) run];
  }
}

- (BOOL)isDraining
{
  if ([(NetworkQualityExecutions *)self currentStageIs:2]|| [(NetworkQualityExecutions *)self currentStageIs:5]|| [(NetworkQualityExecutions *)self currentStageIs:8])
  {
    return 1;
  }

  return [(NetworkQualityExecutions *)self currentStageIs:11];
}

- (void)setTimeout
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [(NSDate *)self->_start dateByAddingTimeInterval:[(NetworkQualityConfiguration *)self->config maxRuntime]];
  [v4 timeIntervalSinceDate:v3];
  v6 = v5;

  if ([(NetworkQualityExecutions *)self isDraining])
  {
    v7 = [v3 dateByAddingTimeInterval:5.0];
    timeout = self->_timeout;
    self->_timeout = v7;

    v9 = 0;
    v10 = 5000000000;
  }

  else
  {
    if ([(NetworkQualityConfiguration *)self->config idleLatency])
    {
      v9 = self->_stage < 2u;
    }

    else
    {
      v9 = 0;
    }

    if ([(NetworkQualityConfiguration *)self->config parallel]&& [(NetworkQualityConfiguration *)self->config download]&& [(NetworkQualityConfiguration *)self->config upload]&& self->_stage < 4u)
    {
      ++v9;
    }

    if ([(NetworkQualityConfiguration *)self->config parallel]&& [(NetworkQualityConfiguration *)self->config download]&& [(NetworkQualityConfiguration *)self->config upload]&& [(NetworkQualityConfiguration *)self->config workingLatency]&& self->_stage < 5u)
    {
      ++v9;
    }

    if (![(NetworkQualityConfiguration *)self->config parallel]&& [(NetworkQualityConfiguration *)self->config download]&& self->_stage < 7u)
    {
      ++v9;
    }

    if (![(NetworkQualityConfiguration *)self->config parallel]&& [(NetworkQualityConfiguration *)self->config download]&& [(NetworkQualityConfiguration *)self->config workingLatency]&& self->_stage < 8u)
    {
      ++v9;
    }

    if (![(NetworkQualityConfiguration *)self->config parallel]&& [(NetworkQualityConfiguration *)self->config upload]&& self->_stage < 0xAu)
    {
      ++v9;
    }

    if (![(NetworkQualityConfiguration *)self->config parallel]&& [(NetworkQualityConfiguration *)self->config upload]&& [(NetworkQualityConfiguration *)self->config workingLatency]&& self->_stage < 0xBu)
    {
      ++v9;
    }

    else if (!v9)
    {
      [NetworkQualityExecutions setTimeout];
    }

    v10 = (v6 * 1000.0 * 1000.0 * 1000.0 / v9);
  }

  v11 = [v3 dateByAddingTimeInterval:v10 / 1000000000.0];
  v12 = self->_timeout;
  self->_timeout = v11;

  netqual_log_init(v13, v14);
  v15 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    stage = self->_stage;
    v17 = NetworkQualityStages_to_string(stage);
    v18 = self->_timeout;
    *buf = 136316930;
    v23 = "[NetworkQualityExecutions setTimeout]";
    v24 = 1024;
    v25 = 553;
    v26 = 2080;
    v27 = v17;
    v28 = 1024;
    v29 = stage;
    v30 = 2112;
    v31 = v18;
    v32 = 2112;
    v33 = v3;
    v34 = 1024;
    v35 = v9;
    v36 = 2048;
    v37 = v6;
    _os_log_impl(&dword_25B962000, v15, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] In stage %s (%u), setting timeout to %@ - now %@ (divisor: %u, timeLeft %.3f)", buf, 0x46u);
  }

  v19 = dispatch_time(0, v10);
  executionsQueue = self->_executionsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__NetworkQualityExecutions_setTimeout__block_invoke;
  block[3] = &unk_279969378;
  block[4] = self;
  dispatch_after(v19, executionsQueue, block);
}

- (void)run
{
  v71 = *MEMORY[0x277D85DE8];
  netqual_log_init(self, a2);
  v3 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    stage = self->_stage;
    v5 = NetworkQualityStages_to_string(stage);
    v6 = NetworkQualityStages_to_string(stage + 1);
    cancelled = self->cancelled;
    *buf = 136316162;
    v62 = "[NetworkQualityExecutions run]";
    v63 = 1024;
    v64 = 563;
    v65 = 2080;
    v66 = v5;
    v67 = 2080;
    v68 = v6;
    v69 = 1024;
    v70 = cancelled;
    _os_log_impl(&dword_25B962000, v3, OS_LOG_TYPE_DEFAULT, "%s:%u - Current Stage=%s | Next Stage=%s | Cancelled=%d", buf, 0x2Cu);
  }

  v8 = self->_stage;
  if (!v8)
  {
    nw_activity_activate();
    v8 = self->_stage;
  }

  self->_stage = v8 + 1;
  if (self->cancelled)
  {
    return;
  }

  if ([(NetworkQualityExecutions *)self currentStageIs:1])
  {
    if ([(NetworkQualityConfiguration *)self->config idleLatency])
    {
      [(NetworkQualityExecutions *)self setTimeout];
      v9 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig URLForURLType:0];
      v10 = [(NetworkQualityExecutions *)self createDefaultRequestwithURL:v9];

      if ([(NetworkQualityConfiguration *)self->config latencyMeasurementServiceType])
      {
        [v10 setNetworkServiceType:{-[NetworkQualityConfiguration latencyMeasurementServiceType](self->config, "latencyMeasurementServiceType")}];
      }

      v11 = [IdleLatencyURLSessionDelegate alloc];
      config = self->config;
      v13 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig testEndpoint:0];
      v14 = [LatencyURLSessionDelegate initWithConfiguration:v11 testName:"initWithConfiguration:testName:queue:testEndpoint:resultsObject:resultsDelegate:tcpKey:tlsKey:reqrespKey:selfKey:" queue:config testEndpoint:@"il_tcp_handshake_443" resultsObject:@"il_tls_handshake" resultsDelegate:@"il_h2_req_resp" tcpKey:0 tlsKey:? reqrespKey:? selfKey:?];

      if (self->latencyDelegate)
      {
        [NetworkQualityExecutions run];
      }

      self->latencyDelegate = v14;
      v15 = v14;

      v16 = nw_activity_create();
      idleLatencyNWActivity = self->_idleLatencyNWActivity;
      self->_idleLatencyNWActivity = v16;

      nw_activity_set_parent_activity();
      nw_activity_activate();
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __31__NetworkQualityExecutions_run__block_invoke;
      v60[3] = &unk_2799693A0;
      v60[4] = self;
      v18 = v60;
LABEL_12:
      [(LatencyURLSessionDelegate *)v15 executeTaskWithRequest:v10 completionHandler:v18];

      return;
    }

    goto LABEL_59;
  }

  if ([(NetworkQualityExecutions *)self currentStageIs:2])
  {
LABEL_14:
    [(NetworkQualityExecutions *)self drain];
    return;
  }

  if ([(NetworkQualityExecutions *)self currentStageIs:3])
  {
    if ([(NetworkQualityConfiguration *)self->config parallel]&& [(NetworkQualityConfiguration *)self->config download]&& [(NetworkQualityConfiguration *)self->config upload])
    {
      [(NetworkQualityExecutions *)self setTimeout];
      v19 = [MEMORY[0x277CBEAA8] now];
      startCapacityTest = self->_startCapacityTest;
      self->_startCapacityTest = v19;

      [(NetworkQualityExecutions *)self reallyExecuteParallel];
      if ([(NetworkQualityConfiguration *)self->config workingLatency])
      {
        v21 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig URLForURLType:0];
        v10 = [(NetworkQualityExecutions *)self createDefaultRequestwithURL:v21];

        if ([(NetworkQualityConfiguration *)self->config latencyMeasurementServiceType])
        {
          [v10 setNetworkServiceType:{-[NetworkQualityConfiguration latencyMeasurementServiceType](self->config, "latencyMeasurementServiceType")}];
        }

        v22 = [WorkingLatencyURLSessionDelegate alloc];
        v23 = self->config;
        v24 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig testEndpoint:0];
        getSessions = [(ThroughputDelegate *)self->dlDelegate getSessions];
        v26 = [WorkingLatencyURLSessionDelegate initWithConfiguration:v22 testName:"initWithConfiguration:testName:queue:testEndpoint:resultsObject:resultsDelegate:urlSessions:tcpKey:tlsKey:reqrespKey:selfKey:" queue:v23 testEndpoint:getSessions resultsObject:@"lud_foreign_tcp_handshake_443" resultsDelegate:@"lud_foreign_tls_handshake" urlSessions:@"lud_foreign_h2_req_resp" tcpKey:@"lud_self_h2_req_resp" tlsKey:? reqrespKey:? selfKey:?];

        if (self->latencyDelegate)
        {
          [NetworkQualityExecutions run];
        }

        self->latencyDelegate = v26;
        v15 = v26;

        v27 = nw_activity_create();
        workingLatencyNWActivity = self->_workingLatencyNWActivity;
        self->_workingLatencyNWActivity = v27;

        nw_activity_set_parent_activity();
        nw_activity_activate();
        [(LatencyURLSessionDelegate *)v15 isDownlinkTest];
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __31__NetworkQualityExecutions_run__block_invoke_82;
        v59[3] = &unk_2799693A0;
        v59[4] = self;
        v18 = v59;
        goto LABEL_12;
      }

      return;
    }

LABEL_59:
    [(NetworkQualityExecutions *)self run];
    return;
  }

  if ([(NetworkQualityExecutions *)self currentStageIs:4])
  {
    if (![(NetworkQualityConfiguration *)self->config parallel]|| ![(NetworkQualityConfiguration *)self->config download]|| ![(NetworkQualityConfiguration *)self->config upload]|| ![(NetworkQualityConfiguration *)self->config workingLatency])
    {
      goto LABEL_59;
    }

    [(NetworkQualityExecutions *)self setTimeout];
    latencyDelegate = self->latencyDelegate;
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __31__NetworkQualityExecutions_run__block_invoke_83;
    v58[3] = &unk_279969378;
    v58[4] = self;
    v30 = v58;
LABEL_30:
    [(LatencyURLSessionDelegate *)latencyDelegate waitForSaturation:v30];
    return;
  }

  if ([(NetworkQualityExecutions *)self currentStageIs:5])
  {
    goto LABEL_14;
  }

  if ([(NetworkQualityExecutions *)self currentStageIs:6])
  {
    if ([(NetworkQualityConfiguration *)self->config download]&& ![(NetworkQualityConfiguration *)self->config parallel])
    {
      [(NetworkQualityExecutions *)self setTimeout];
      v31 = [MEMORY[0x277CBEAA8] now];
      v32 = self->_startCapacityTest;
      self->_startCapacityTest = v31;

      [(NetworkQualityExecutions *)self reallyExecuteDL];
      if ([(NetworkQualityConfiguration *)self->config workingLatency])
      {
        v33 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig URLForURLType:0];
        v10 = [(NetworkQualityExecutions *)self createDefaultRequestwithURL:v33];

        if ([(NetworkQualityConfiguration *)self->config latencyMeasurementServiceType])
        {
          [v10 setNetworkServiceType:{-[NetworkQualityConfiguration latencyMeasurementServiceType](self->config, "latencyMeasurementServiceType")}];
        }

        v34 = [WorkingLatencyURLSessionDelegate alloc];
        v35 = self->config;
        v36 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig testEndpoint:0];
        getSessions2 = [(ThroughputDelegate *)self->dlDelegate getSessions];
        v38 = [WorkingLatencyURLSessionDelegate initWithConfiguration:v34 testName:"initWithConfiguration:testName:queue:testEndpoint:resultsObject:resultsDelegate:urlSessions:tcpKey:tlsKey:reqrespKey:selfKey:" queue:v35 testEndpoint:getSessions2 resultsObject:@"lud_foreign_dl_tcp_handshake_443" resultsDelegate:@"lud_foreign_dl_tls_handshake" urlSessions:@"lud_foreign_dl_h2_req_resp" tcpKey:@"lud_self_dl_h2_req_resp" tlsKey:? reqrespKey:? selfKey:?];

        if (self->latencyDelegate)
        {
          [NetworkQualityExecutions run];
        }

        self->latencyDelegate = v38;
        v15 = v38;

        v39 = nw_activity_create();
        v40 = self->_workingLatencyNWActivity;
        self->_workingLatencyNWActivity = v39;

        nw_activity_set_parent_activity();
        nw_activity_activate();
        [(LatencyURLSessionDelegate *)v15 isDownlinkTest];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __31__NetworkQualityExecutions_run__block_invoke_96;
        v57[3] = &unk_2799693A0;
        v57[4] = self;
        v18 = v57;
        goto LABEL_12;
      }

      return;
    }

    goto LABEL_59;
  }

  if ([(NetworkQualityExecutions *)self currentStageIs:7])
  {
    if (![(NetworkQualityConfiguration *)self->config download]|| [(NetworkQualityConfiguration *)self->config parallel]|| ![(NetworkQualityConfiguration *)self->config workingLatency])
    {
      goto LABEL_59;
    }

    [(NetworkQualityExecutions *)self setTimeout];
    latencyDelegate = self->latencyDelegate;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __31__NetworkQualityExecutions_run__block_invoke_97;
    v56[3] = &unk_279969378;
    v56[4] = self;
    v30 = v56;
    goto LABEL_30;
  }

  if ([(NetworkQualityExecutions *)self currentStageIs:8])
  {
    goto LABEL_14;
  }

  if ([(NetworkQualityExecutions *)self currentStageIs:9])
  {
    if ([(NetworkQualityConfiguration *)self->config upload]&& ![(NetworkQualityConfiguration *)self->config parallel])
    {
      [(NetworkQualityExecutions *)self setTimeout];
      v41 = [MEMORY[0x277CBEAA8] now];
      v42 = self->_startCapacityTest;
      self->_startCapacityTest = v41;

      [(NetworkQualityExecutions *)self reallyExecuteUL];
      if ([(NetworkQualityConfiguration *)self->config workingLatency])
      {
        v43 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig URLForURLType:0];
        v10 = [(NetworkQualityExecutions *)self createDefaultRequestwithURL:v43];

        if ([(NetworkQualityConfiguration *)self->config latencyMeasurementServiceType])
        {
          [v10 setNetworkServiceType:{-[NetworkQualityConfiguration latencyMeasurementServiceType](self->config, "latencyMeasurementServiceType")}];
        }

        v44 = [WorkingLatencyURLSessionDelegate alloc];
        v45 = self->config;
        v46 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig testEndpoint:0];
        getSessions3 = [(ThroughputDelegate *)self->ulDelegate getSessions];
        v48 = [WorkingLatencyURLSessionDelegate initWithConfiguration:v44 testName:"initWithConfiguration:testName:queue:testEndpoint:resultsObject:resultsDelegate:urlSessions:tcpKey:tlsKey:reqrespKey:selfKey:" queue:v45 testEndpoint:getSessions3 resultsObject:@"lud_foreign_ul_tcp_handshake_443" resultsDelegate:@"lud_foreign_ul_tls_handshake" urlSessions:@"lud_foreign_ul_h2_req_resp" tcpKey:@"lud_self_ul_h2_req_resp" tlsKey:? reqrespKey:? selfKey:?];

        if (self->latencyDelegate)
        {
          [NetworkQualityExecutions run];
        }

        self->latencyDelegate = v48;
        v15 = v48;

        v49 = nw_activity_create();
        v50 = self->_workingLatencyNWActivity;
        self->_workingLatencyNWActivity = v49;

        nw_activity_set_parent_activity();
        nw_activity_activate();
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __31__NetworkQualityExecutions_run__block_invoke_110;
        v55[3] = &unk_2799693A0;
        v55[4] = self;
        v18 = v55;
        goto LABEL_12;
      }

      return;
    }

    goto LABEL_59;
  }

  if ([(NetworkQualityExecutions *)self currentStageIs:10])
  {
    if (![(NetworkQualityConfiguration *)self->config upload]|| [(NetworkQualityConfiguration *)self->config parallel]|| ![(NetworkQualityConfiguration *)self->config workingLatency])
    {
      goto LABEL_59;
    }

    [(NetworkQualityExecutions *)self setTimeout];
    latencyDelegate = self->latencyDelegate;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __31__NetworkQualityExecutions_run__block_invoke_111;
    v54[3] = &unk_279969378;
    v54[4] = self;
    v30 = v54;
    goto LABEL_30;
  }

  v51 = [(NetworkQualityExecutions *)self currentStageIs:11];
  if (v51)
  {
    goto LABEL_14;
  }

  netqual_log_init(v51, v52);
  v53 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v62 = "[NetworkQualityExecutions run]";
    v63 = 1024;
    v64 = 916;
    _os_log_impl(&dword_25B962000, v53, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Running stage FINISH", buf, 0x12u);
  }

  [(NetworkQualityExecutions *)self reportingCompletionHandler:0];
}

void __31__NetworkQualityExecutions_run__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) isDraining] & 1) == 0)
  {
    if (v3)
    {
      [v3 code];
      v4 = nw_activity_complete_with_reason();
      netqual_log_init(v4, v5);
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        __31__NetworkQualityExecutions_run__block_invoke_cold_1();
      }

      [*(a1 + 32) reportingCompletionHandler:v3];
    }

    else
    {
      v6 = nw_activity_complete_with_reason();
      netqual_log_init(v6, v7);
      v8 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315394;
        v10 = "[NetworkQualityExecutions run]_block_invoke";
        v11 = 1024;
        v12 = 629;
        _os_log_impl(&dword_25B962000, v8, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Finished idle latency stage - moving to draining", &v9, 0x12u);
      }

      [*(a1 + 32) run];
    }
  }
}

void __31__NetworkQualityExecutions_run__block_invoke_82(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 code];
    v5 = nw_activity_complete_with_reason();
    netqual_log_init(v5, v6);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __31__NetworkQualityExecutions_run__block_invoke_82_cold_1();
    }

    [*(a1 + 32) reportingCompletionHandler:v4];
  }

  else
  {
    nw_activity_complete_with_reason();
  }
}

uint64_t __31__NetworkQualityExecutions_run__block_invoke_83(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  netqual_log_init(a1, a2);
  v3 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[NetworkQualityExecutions run]_block_invoke";
    v7 = 1024;
    v8 = 721;
    _os_log_impl(&dword_25B962000, v3, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Parallel Responsiveness saturated", &v5, 0x12u);
  }

  return [*(a1 + 32) run];
}

void __31__NetworkQualityExecutions_run__block_invoke_96(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 code];
    v5 = nw_activity_complete_with_reason();
    netqual_log_init(v5, v6);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __31__NetworkQualityExecutions_run__block_invoke_96_cold_1();
    }

    [*(a1 + 32) reportingCompletionHandler:v4];
  }

  else
  {
    nw_activity_complete_with_reason();
  }
}

uint64_t __31__NetworkQualityExecutions_run__block_invoke_97(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  netqual_log_init(a1, a2);
  v3 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[NetworkQualityExecutions run]_block_invoke";
    v7 = 1024;
    v8 = 812;
    _os_log_impl(&dword_25B962000, v3, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Downlink Responsiveness saturated", &v5, 0x12u);
  }

  return [*(a1 + 32) run];
}

void __31__NetworkQualityExecutions_run__block_invoke_110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 code];
    v5 = nw_activity_complete_with_reason();
    netqual_log_init(v5, v6);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __31__NetworkQualityExecutions_run__block_invoke_110_cold_1();
    }

    [*(a1 + 32) reportingCompletionHandler:v4];
  }

  else
  {
    nw_activity_complete_with_reason();
  }
}

uint64_t __31__NetworkQualityExecutions_run__block_invoke_111(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  netqual_log_init(a1, a2);
  v3 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[NetworkQualityExecutions run]_block_invoke";
    v7 = 1024;
    v8 = 901;
    _os_log_impl(&dword_25B962000, v3, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Uplink Responsiveness saturated", &v5, 0x12u);
  }

  return [*(a1 + 32) run];
}

- (void)runWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  executionsQueue = self->_executionsQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke;
  v7[3] = &unk_279969418;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(executionsQueue, v7);
}

void __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke(uint64_t a1)
{
  v105 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] now];
  v4 = a1 + 32;
  v3 = *(a1 + 32);
  v5 = *(v3 + 216);
  *(v3 + 216) = v2;

  objc_storeStrong((*v4 + 240), *(*v4 + 216));
  v6 = MEMORY[0x25F873620](*(a1 + 40));
  v7 = *(*(a1 + 32) + 200);
  *(*v4 + 200) = v6;

  v8 = [*(a1 + 32) createDefaultNSURLSessionConfiguration];
  v9 = [*(*(a1 + 32) + 176) configuration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v10 = [*(*(a1 + 32) + 176) bonjourHost];

    if (!v10)
    {
      v58 = [*(*(a1 + 32) + 176) configuration];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v60 = [NetworkQualityRemoteConfiguration alloc];
        v61 = [*(*(a1 + 32) + 176) configuration];
        v62 = [(NetworkQualityRemoteConfiguration *)v60 initWithDictionary:v61 andConfig:*(*(a1 + 32) + 176)];
        v63 = *(*(a1 + 32) + 104);
        *(*(a1 + 32) + 104) = v62;

        netqual_log_init(v64, v65);
        v66 = os_log_netqual;
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
        {
          *v101 = 136315394;
          *&v101[4] = "[NetworkQualityExecutions runWithCompletionHandler:]_block_invoke";
          *&v101[12] = 1024;
          *&v101[14] = 1092;
          _os_log_impl(&dword_25B962000, v66, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Moving to initial stage", v101, 0x12u);
        }

        [*(a1 + 32) run];
      }

      else
      {
        v70 = *(a1 + 40);
        v71 = objc_alloc(MEMORY[0x277CCA9B8]);
        v90 = *MEMORY[0x277CCA450];
        v91 = @"Unknown object type";
        v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        v73 = [v71 initWithDomain:@"NetworkQualityErrorDomain" code:1002 userInfo:v72];
        (*(v70 + 16))(v70, 0, v73);
      }

      goto LABEL_40;
    }
  }

  *v101 = 0;
  *&v101[8] = v101;
  *&v101[16] = 0x3032000000;
  v102 = __Block_byref_object_copy_;
  v103 = __Block_byref_object_dispose_;
  v104 = 0;
  v11 = [*(*(a1 + 32) + 176) bonjourHost];
  v12 = v11 == 0;

  v13 = *(*(a1 + 32) + 176);
  if (v12)
  {
    v28 = [v13 configuration];
    bonjour_service = 0;
    v21 = *(*&v101[8] + 40);
    *(*&v101[8] + 40) = v28;
  }

  else
  {
    v14 = [v13 bonjourHost];
    v15 = v14;
    bonjour_service = nw_endpoint_create_bonjour_service([v14 UTF8String], "_nq._tcp", "local");

    v17 = dispatch_semaphore_create(0);
    v18 = nw_resolver_create_with_endpoint();
    v19 = dispatch_get_global_queue(0, 0);
    v86[6] = MEMORY[0x277D85DD0];
    v86[7] = 3221225472;
    v86[8] = __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_114;
    v86[9] = &unk_2799693C8;
    v89 = v101;
    v20 = v18;
    v87 = v20;
    v21 = v17;
    v88 = v21;
    nw_resolver_set_update_handler();

    v22 = dispatch_time(0, 5000000000);
    v23 = dispatch_semaphore_wait(v21, v22);
    if (!*(*&v101[8] + 40))
    {
      netqual_log_init(v23, v24);
      v25 = os_log_netqual;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = [*(*(a1 + 32) + 176) bonjourHost];
        __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_cold_1(v26, v100, v25);
      }

      v27 = *(*&v101[8] + 40);
      *(*&v101[8] + 40) = @"https://networkquality/.well-known/nq";
    }
  }

  netqual_log_init(v29, v30);
  v31 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(*&v101[8] + 40);
    *buf = 136315650;
    v95 = "[NetworkQualityExecutions runWithCompletionHandler:]_block_invoke";
    v96 = 1024;
    v97 = 973;
    v98 = 2112;
    v99 = v32;
    _os_log_impl(&dword_25B962000, v31, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Configuration URL: %@", buf, 0x1Cu);
  }

  l4s_enabled = network_config_get_l4s_enabled();
  [v8 setTimeoutIntervalForRequest:15.0];
  v34 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v8 delegate:*(a1 + 32) delegateQueue:0];
  v35 = *(a1 + 32);
  v36 = *(v35 + 88);
  *(v35 + 88) = v34;

  v37 = MEMORY[0x277CCAB70];
  v38 = [MEMORY[0x277CBEBC0] URLWithString:*(*&v101[8] + 40)];
  v39 = [v37 requestWithURL:v38];

  v40 = [*(*(a1 + 32) + 176) networkInterfaceName];
  LOBYTE(v38) = v40 == 0;

  if ((v38 & 1) == 0)
  {
    v41 = [*(*(a1 + 32) + 176) networkInterfaceName];
    [v39 setBoundInterfaceIdentifier:v41];
  }

  if ([*(*(a1 + 32) + 176) forceHTTP3])
  {
    [v39 setAssumesHTTP3Capable:1];
  }

  [v39 setValue:@"identity" forHTTPHeaderField:@"Accept-Encoding"];
  v42 = *(a1 + 32);
  v43 = *(v42 + 88);
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_134;
  v86[3] = &unk_2799693F0;
  v86[4] = v42;
  v86[5] = v101;
  v44 = [v43 dataTaskWithRequest:v39 completionHandler:v86];
  v45 = v44;
  if (bonjour_service)
  {
    [v44 set_hostOverride:bonjour_service];
LABEL_39:
    [v45 resume];

    _Block_object_dispose(v101, 8);
    goto LABEL_40;
  }

  v46 = [*(*(a1 + 32) + 176) hostOverride];
  v47 = v46 == 0;

  if (v47)
  {
    v67 = [*(*(a1 + 32) + 176) hasCustomConfigurationSet];
    if (v67)
    {
      goto LABEL_39;
    }

    if ((l4s_enabled - 1) >= 2)
    {
      v67 = [*(*(a1 + 32) + 176) forceL4S];
      if ((v67 & 1) == 0)
      {
        v67 = [*(*(a1 + 32) + 176) forceDisableL4S];
        if (!v67)
        {
          goto LABEL_39;
        }
      }
    }

    netqual_log_init(v67, v68);
    v69 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v95 = "[NetworkQualityExecutions runWithCompletionHandler:]_block_invoke";
      v96 = 1024;
      v97 = 1084;
      _os_log_impl(&dword_25B962000, v69, OS_LOG_TYPE_DEFAULT, "%s:%u - Using L4S Server pool for test run.", buf, 0x12u);
    }

    host = nw_endpoint_create_host("mensura-l4s.networking.apple", "443");
    [v45 set_hostOverride:host];
    goto LABEL_38;
  }

  v48 = MEMORY[0x277CBEBC0];
  v49 = [*(*(a1 + 32) + 176) configuration];
  host = [v48 URLWithString:v49];

  v51 = [host scheme];
  v52 = [host port];
  v53 = v52 == 0;

  if (!v53)
  {
    v54 = [host port];
    v55 = [v54 stringValue];
    v56 = v55;
    v57 = [v55 UTF8String];

LABEL_37:
    v74 = [*(*(a1 + 32) + 176) hostOverride];
    v75 = v74;
    v76 = nw_endpoint_create_host([v74 UTF8String], v57);
    [v45 set_hostOverride:v76];

LABEL_38:
    goto LABEL_39;
  }

  if ([v51 isEqualToString:@"https"] & 1) != 0 || (objc_msgSend(v51, "isEqualToString:", @"file"))
  {
    v57 = "443";
    goto LABEL_37;
  }

  if ([v51 isEqualToString:@"http"])
  {
    v57 = "80";
    goto LABEL_37;
  }

  v77 = MEMORY[0x277CCACA8];
  v78 = [*(*(a1 + 32) + 176) configuration];
  v79 = [*(*(a1 + 32) + 176) hostOverride];
  v80 = [v77 stringWithFormat:@"URL %@ not valid for use with host-override %@", v78, v79];

  netqual_log_init(v81, v82);
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_cold_2();
  }

  v83 = MEMORY[0x277CCA9B8];
  v92 = *MEMORY[0x277CCA450];
  v93 = v80;
  v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
  v85 = [v83 errorWithDomain:@"NetworkQualityErrorDomain" code:1006 userInfo:v84];

  [*(a1 + 32) reportingCompletionHandler:v85];
  _Block_object_dispose(v101, 8);

LABEL_40:
}

void __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_114(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  if (nw_array_get_count())
  {
    v4 = nw_array_get_object_at_index();
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:nw_endpoint_get_hostname(v4)];
    if ([v5 hasSuffix:@"."])
    {
      v6 = [v5 substringToIndex:{objc_msgSend(v5, "length") - 1}];

      v5 = v6;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:nw_endpoint_copy_port_string(v4)];
    if ([v7 isEqualToString:@"443"])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"https://%@/.well-known/nq", v5, v11];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"https://%@:%@/.well-known/nq", v5, v7];
    }
    v8 = ;
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  nw_resolver_cancel();
  dispatch_semaphore_signal(*(a1 + 40));
}

void __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_134(uint64_t a1, void *a2, void *a3, void *a4)
{
  v48[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [*(*(a1 + 32) + 88) invalidateAndCancel];
  v10 = *(a1 + 32);
  v11 = *(v10 + 88);
  *(v10 + 88) = 0;

  v12 = v8;
  v13 = [v12 allHeaderFields];
  v14 = [v13 objectForKeyedSubscript:@"Apple-Client-ASN"];

  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v16 = [v15 numberFromString:v14];
    if (v16)
    {
      [*(*(a1 + 32) + 184) setAsn:v16];
    }
  }

  v17 = [v12 allHeaderFields];
  v18 = [v17 objectForKeyedSubscript:@"Apple-Client-ASN-Company"];

  if (v18)
  {
    [*(*(a1 + 32) + 184) setAsnName:v18];
  }

  if (v9)
  {
    [*(a1 + 32) reportingCompletionHandler:v9];
  }

  else
  {
    v19 = [v12 statusCode];
    if (v7 && v19 == 200)
    {
      v21 = [[NetworkQualityRemoteConfiguration alloc] initWithData:v7 andConfig:*(*(a1 + 32) + 176)];
      v22 = v21;
      if (v21)
      {
        v23 = [(NetworkQualityRemoteConfiguration *)v21 testEndpoint];
        [*(*(a1 + 32) + 184) setTestEndpoint:v23];

        objc_storeStrong((*(a1 + 32) + 104), v22);
        netqual_log_init(v24, v25);
        v26 = os_log_netqual;
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v42 = "[NetworkQualityExecutions runWithCompletionHandler:]_block_invoke";
          v43 = 1024;
          v44 = 1050;
          _os_log_impl(&dword_25B962000, v26, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Moving to initial stage", buf, 0x12u);
        }

        v27 = [MEMORY[0x277CBEAA8] now];
        v28 = *(a1 + 32);
        v29 = *(v28 + 216);
        *(v28 + 216) = v27;

        [*(a1 + 32) run];
      }

      else
      {
        v38 = MEMORY[0x277CCA9B8];
        v45 = *MEMORY[0x277CCA450];
        v46 = @"Could not parse server side configuration";
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v40 = [v38 errorWithDomain:@"NetworkQualityErrorDomain" code:1000 userInfo:v39];

        [*(a1 + 32) reportingCompletionHandler:v40];
      }
    }

    else
    {
      netqual_log_init(v19, v20);
      v30 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_134_cold_1(v30, v12, v7);
      }

      v31 = MEMORY[0x277CCA9B8];
      v47[0] = @"statusCode";
      v32 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "statusCode")}];
      v33 = [v32 stringValue];
      v47[1] = @"URL";
      v34 = *(*(*(a1 + 40) + 8) + 40);
      v48[0] = v33;
      v48[1] = v34;
      v47[2] = *MEMORY[0x277CCA450];
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected HTTP status code 200, got %lu", objc_msgSend(v12, "statusCode")];
      v48[2] = v35;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];
      v37 = [v31 errorWithDomain:@"NetworkQualityErrorDomain" code:1003 userInfo:v36];

      [*(a1 + 32) reportingCompletionHandler:v37];
    }
  }
}

- (void)captureError:(id)error
{
  errorCopy = error;
  error = [(NetworkQualityResult *)self->_progressResults error];

  if (!error)
  {
    [(NetworkQualityResult *)self->_progressResults setError:errorCopy];
  }
}

- (void)execDLWithCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  netqual_log_init(handlerCopy, v5);
  v6 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[NetworkQualityExecutions execDLWithCompletionHandler:]";
    v22 = 1024;
    v23 = 1113;
    _os_log_impl(&dword_25B962000, v6, OS_LOG_TYPE_DEFAULT, "%s:%u - Running Multi-flow Download Test", buf, 0x12u);
  }

  v7 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig URLForURLType:1];
  v8 = [(NetworkQualityExecutions *)self createDefaultRequestwithURL:v7];

  if ([(NetworkQualityConfiguration *)self->config loadGeneratingNetworkServiceType])
  {
    [v8 setNetworkServiceType:{-[NetworkQualityConfiguration loadGeneratingNetworkServiceType](self->config, "loadGeneratingNetworkServiceType")}];
  }

  v9 = [DownloadThroughputDelegate alloc];
  operationQueue = self->_operationQueue;
  v11 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig testEndpoint:1];
  v12 = [(ThroughputDelegate *)v9 initWithExecution:self testName:@"tp_dl_multi_h2" withQueue:operationQueue testEndpoint:v11 withConfig:self->config resultsObject:self->_progressResults];

  if (self->dlDelegate)
  {
    [NetworkQualityExecutions execDLWithCompletionHandler:];
  }

  self->dlDelegate = v12;
  v13 = v12;

  v14 = nw_activity_create();
  downloadThroughputNWActivity = self->_downloadThroughputNWActivity;
  self->_downloadThroughputNWActivity = v14;

  nw_activity_set_parent_activity();
  nw_activity_activate();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __56__NetworkQualityExecutions_execDLWithCompletionHandler___block_invoke;
  v19[3] = &unk_279969378;
  v19[4] = self;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __56__NetworkQualityExecutions_execDLWithCompletionHandler___block_invoke_182;
  v17[3] = &unk_279969440;
  v17[4] = self;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [(ThroughputDelegate *)v13 executeTaskWithRequest:v8 saturationHandler:v19 completionHandler:v17];
}

void *__56__NetworkQualityExecutions_execDLWithCompletionHandler___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 64) metExitCriteria];
  v3 = v2;
  netqual_log_init(v2, v4);
  v5 = os_log_netqual;
  v6 = os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      v7 = *(*(a1 + 32) + 184);
      v8 = v5;
      v9 = [v7 downlinkCapacity];
      v10 = [v9 value];
      v11 = vcvtd_n_f64_s64([v10 integerValue], 0x14uLL);
      v12 = [*(*(a1 + 32) + 184) downlinkFlows];
      v13 = [v12 integerValue];
      v14 = [*(*(a1 + 32) + 184) downlinkBytesTransferred];
      v28 = 136316162;
      v29 = "[NetworkQualityExecutions execDLWithCompletionHandler:]_block_invoke";
      v30 = 1024;
      v31 = 1144;
      v32 = 2048;
      v33 = v11;
      v34 = 2048;
      v35 = v13;
      v36 = 2048;
      v37 = [v14 integerValue];
      _os_log_impl(&dword_25B962000, v8, OS_LOG_TYPE_DEFAULT, "%s:%u - Exit throughput %.3f Mbps at %lu flows, transferred %ld bytes", &v28, 0x30u);
    }

    v15 = 250;
  }

  else
  {
    if (v6)
    {
      v16 = *(*(a1 + 32) + 184);
      v17 = v5;
      v18 = [v16 downlinkCapacity];
      v19 = [v18 value];
      v20 = vcvtd_n_f64_s64([v19 integerValue], 0x14uLL);
      v21 = [*(*(a1 + 32) + 184) downlinkFlows];
      v22 = [v21 integerValue];
      v23 = [*(*(a1 + 32) + 184) downlinkBytesTransferred];
      v28 = 136316162;
      v29 = "[NetworkQualityExecutions execDLWithCompletionHandler:]_block_invoke";
      v30 = 1024;
      v31 = 1151;
      v32 = 2048;
      v33 = v20;
      v34 = 2048;
      v35 = v22;
      v36 = 2048;
      v37 = [v23 integerValue];
      _os_log_impl(&dword_25B962000, v17, OS_LOG_TYPE_DEFAULT, "%s:%u - Saturation throughput %.3f Mbps at %lu flows, transferred %ld bytes", &v28, 0x30u);
    }

    v15 = 249;
  }

  *(*(a1 + 32) + v15) = 1;
  result = [*(a1 + 32) currentStageIs:6];
  if (result)
  {
    netqual_log_init(result, v25);
    v26 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 249))
      {
        v27 = "True";
      }

      else
      {
        v27 = "False";
      }

      v28 = 136315650;
      v29 = "[NetworkQualityExecutions execDLWithCompletionHandler:]_block_invoke";
      v30 = 1024;
      v31 = 1158;
      v32 = 2080;
      v33 = *&v27;
      _os_log_impl(&dword_25B962000, v26, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Downlink saturated %s, moving to responsiveness", &v28, 0x1Cu);
    }

    return [*(a1 + 32) run];
  }

  return result;
}

void __56__NetworkQualityExecutions_execDLWithCompletionHandler___block_invoke_182(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 code] != -999)
    {
      v5 = [v4 domain];
      if (v5 == @"NetworkQualityErrorDomain")
      {
        [v4 code];
      }

      else
      {
      }
    }

    v6 = nw_activity_complete_with_reason();
    netqual_log_init(v6, v7);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __56__NetworkQualityExecutions_execDLWithCompletionHandler___block_invoke_182_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    nw_activity_complete_with_reason();
  }
}

- (void)execULWithCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  netqual_log_init(handlerCopy, v5);
  v6 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[NetworkQualityExecutions execULWithCompletionHandler:]";
    v22 = 1024;
    v23 = 1183;
    _os_log_impl(&dword_25B962000, v6, OS_LOG_TYPE_DEFAULT, "%s:%u - Running Multi-flow Upload Test", buf, 0x12u);
  }

  v7 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig URLForURLType:2];
  v8 = [(NetworkQualityExecutions *)self createDefaultRequestwithURL:v7];

  if ([(NetworkQualityConfiguration *)self->config loadGeneratingNetworkServiceType])
  {
    [v8 setNetworkServiceType:{-[NetworkQualityConfiguration loadGeneratingNetworkServiceType](self->config, "loadGeneratingNetworkServiceType")}];
  }

  v9 = [UploadThroughputDelegate alloc];
  operationQueue = self->_operationQueue;
  v11 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig testEndpoint:2];
  v12 = [(ThroughputDelegate *)v9 initWithExecution:self testName:@"tp_ul_multi_h2" withQueue:operationQueue testEndpoint:v11 withConfig:self->config resultsObject:self->_progressResults];

  if (self->ulDelegate)
  {
    [NetworkQualityExecutions execULWithCompletionHandler:];
  }

  self->ulDelegate = v12;
  v13 = v12;

  v14 = nw_activity_create();
  uploadThroughputNWActivity = self->_uploadThroughputNWActivity;
  self->_uploadThroughputNWActivity = v14;

  nw_activity_set_parent_activity();
  nw_activity_activate();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __56__NetworkQualityExecutions_execULWithCompletionHandler___block_invoke;
  v19[3] = &unk_279969378;
  v19[4] = self;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __56__NetworkQualityExecutions_execULWithCompletionHandler___block_invoke_188;
  v17[3] = &unk_279969440;
  v17[4] = self;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [(ThroughputDelegate *)v13 executeTaskWithRequest:v8 saturationHandler:v19 completionHandler:v17];
}

void *__56__NetworkQualityExecutions_execULWithCompletionHandler___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 72) metExitCriteria];
  v3 = v2;
  netqual_log_init(v2, v4);
  v5 = os_log_netqual;
  v6 = os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      v7 = *(*(a1 + 32) + 184);
      v8 = v5;
      v9 = [v7 uplinkCapacity];
      v10 = [v9 value];
      v11 = vcvtd_n_f64_s64([v10 integerValue], 0x14uLL);
      v12 = [*(*(a1 + 32) + 184) uplinkFlows];
      v13 = [v12 integerValue];
      v14 = [*(*(a1 + 32) + 184) uplinkBytesTransferred];
      v28 = 136316162;
      v29 = "[NetworkQualityExecutions execULWithCompletionHandler:]_block_invoke";
      v30 = 1024;
      v31 = 1214;
      v32 = 2048;
      v33 = v11;
      v34 = 2048;
      v35 = v13;
      v36 = 2048;
      v37 = [v14 integerValue];
      _os_log_impl(&dword_25B962000, v8, OS_LOG_TYPE_DEFAULT, "%s:%u - Exit throughput %.3f Mbps at %lu flows, transferred %ld bytes", &v28, 0x30u);
    }

    v15 = 250;
  }

  else
  {
    if (v6)
    {
      v16 = *(*(a1 + 32) + 184);
      v17 = v5;
      v18 = [v16 uplinkCapacity];
      v19 = [v18 value];
      v20 = vcvtd_n_f64_s64([v19 integerValue], 0x14uLL);
      v21 = [*(*(a1 + 32) + 184) uplinkFlows];
      v22 = [v21 integerValue];
      v23 = [*(*(a1 + 32) + 184) uplinkBytesTransferred];
      v28 = 136316162;
      v29 = "[NetworkQualityExecutions execULWithCompletionHandler:]_block_invoke";
      v30 = 1024;
      v31 = 1221;
      v32 = 2048;
      v33 = v20;
      v34 = 2048;
      v35 = v22;
      v36 = 2048;
      v37 = [v23 integerValue];
      _os_log_impl(&dword_25B962000, v17, OS_LOG_TYPE_DEFAULT, "%s:%u - Saturation throughput %.3f Mbps at %lu flows, transferred %ld bytes", &v28, 0x30u);
    }

    v15 = 249;
  }

  *(*(a1 + 32) + v15) = 1;
  result = [*(a1 + 32) currentStageIs:9];
  if (result)
  {
    netqual_log_init(result, v25);
    v26 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 249))
      {
        v27 = "True";
      }

      else
      {
        v27 = "False";
      }

      v28 = 136315650;
      v29 = "[NetworkQualityExecutions execULWithCompletionHandler:]_block_invoke";
      v30 = 1024;
      v31 = 1228;
      v32 = 2080;
      v33 = *&v27;
      _os_log_impl(&dword_25B962000, v26, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Uplink saturated %s, moving to responsiveness", &v28, 0x1Cu);
    }

    return [*(a1 + 32) run];
  }

  return result;
}

void __56__NetworkQualityExecutions_execULWithCompletionHandler___block_invoke_188(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 code] != -999)
    {
      v5 = [v4 domain];
      if (v5 == @"NetworkQualityErrorDomain")
      {
        [v4 code];
      }

      else
      {
      }
    }

    v6 = nw_activity_complete_with_reason();
    netqual_log_init(v6, v7);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __56__NetworkQualityExecutions_execULWithCompletionHandler___block_invoke_188_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    nw_activity_complete_with_reason();
  }
}

- (void)execParallelWithCompletionHandler:(id)handler
{
  v47 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  netqual_log_init(handlerCopy, v5);
  v6 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v44 = "[NetworkQualityExecutions execParallelWithCompletionHandler:]";
    v45 = 1024;
    v46 = 1258;
    _os_log_impl(&dword_25B962000, v6, OS_LOG_TYPE_DEFAULT, "%s:%u - Running Multi-flow Parallel Test", buf, 0x12u);
  }

  v7 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig URLForURLType:1];
  v8 = [(NetworkQualityExecutions *)self createDefaultRequestwithURL:v7];

  if ([(NetworkQualityConfiguration *)self->config loadGeneratingNetworkServiceType])
  {
    [v8 setNetworkServiceType:{-[NetworkQualityConfiguration loadGeneratingNetworkServiceType](self->config, "loadGeneratingNetworkServiceType")}];
  }

  v9 = [DownloadThroughputDelegate alloc];
  operationQueue = self->_operationQueue;
  v11 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig testEndpoint:1];
  v12 = [(ThroughputDelegate *)v9 initWithExecution:self testName:@"tp_dl_parallel_h2" withQueue:operationQueue testEndpoint:v11 withConfig:self->config resultsObject:self->_progressResults];

  if (self->dlDelegate)
  {
    __assert_rtn("[NetworkQualityExecutions execParallelWithCompletionHandler:]", "Executions.m", 1274, "self->dlDelegate == nil");
  }

  objc_storeStrong(&self->dlDelegate, v12);
  v13 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig URLForURLType:2];
  v14 = [(NetworkQualityExecutions *)self createDefaultRequestwithURL:v13];

  if ([(NetworkQualityConfiguration *)self->config loadGeneratingNetworkServiceType])
  {
    [v14 setNetworkServiceType:{-[NetworkQualityConfiguration loadGeneratingNetworkServiceType](self->config, "loadGeneratingNetworkServiceType")}];
  }

  v15 = [UploadThroughputDelegate alloc];
  v16 = self->_operationQueue;
  v17 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig testEndpoint:2];
  v18 = [(ThroughputDelegate *)v15 initWithExecution:self testName:@"tp_ul_parallel_h2" withQueue:v16 testEndpoint:v17 withConfig:self->config resultsObject:self->_progressResults];

  if (self->ulDelegate)
  {
    __assert_rtn("[NetworkQualityExecutions execParallelWithCompletionHandler:]", "Executions.m", 1291, "self->ulDelegate == nil");
  }

  objc_storeStrong(&self->ulDelegate, v18);
  v19 = nw_activity_create();
  downloadThroughputNWActivity = self->_downloadThroughputNWActivity;
  self->_downloadThroughputNWActivity = v19;

  nw_activity_set_parent_activity();
  nw_activity_activate();
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke;
  v34[3] = &unk_279969468;
  v34[4] = self;
  v34[5] = v39;
  v34[6] = v41;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_195;
  v30[3] = &unk_279969490;
  v30[4] = self;
  v21 = handlerCopy;
  v31 = v21;
  v32 = v37;
  v33 = v35;
  [(ThroughputDelegate *)v12 executeTaskWithRequest:v8 saturationHandler:v34 completionHandler:v30];
  v22 = nw_activity_create();
  uploadThroughputNWActivity = self->_uploadThroughputNWActivity;
  self->_uploadThroughputNWActivity = v22;

  nw_activity_set_parent_activity();
  nw_activity_activate();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_196;
  v29[3] = &unk_279969468;
  v29[4] = self;
  v29[5] = v41;
  v29[6] = v39;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_197;
  v25[3] = &unk_279969490;
  v25[4] = self;
  v24 = v21;
  v26 = v24;
  v27 = v35;
  v28 = v37;
  [(ThroughputDelegate *)v18 executeTaskWithRequest:v14 saturationHandler:v29 completionHandler:v25];

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);
}

void __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  netqual_log_init(a1, a2);
  v3 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 184);
    v5 = v3;
    v6 = [v4 downlinkCapacity];
    v7 = [v6 value];
    v8 = vcvtd_n_f64_s64([v7 integerValue], 0x14uLL);
    v9 = [*(*(a1 + 32) + 184) downlinkFlows];
    v10 = [v9 integerValue];
    v11 = [*(*(a1 + 32) + 184) downlinkBytesTransferred];
    v12 = [v11 integerValue];
    v13 = *(*(*(a1 + 40) + 8) + 24);
    v19 = 136316418;
    v20 = "[NetworkQualityExecutions execParallelWithCompletionHandler:]_block_invoke";
    v21 = 1024;
    v22 = 1305;
    v23 = 2048;
    v24 = v8;
    v25 = 2048;
    v26 = v10;
    v27 = 2048;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(&dword_25B962000, v5, OS_LOG_TYPE_DEFAULT, "%s:%u - Download saturation throughput %.3f Mbps at %lu flows, transferred %ld bytes, uplink saturation %u", &v19, 0x36u);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v14 = [*(*(a1 + 32) + 72) metExitCriteria];
    v15 = 249;
    if (v14)
    {
      v15 = 250;
    }

    *(*(a1 + 32) + v15) = 1;
    v16 = [*(a1 + 32) currentStageIs:3];
    if (v16)
    {
      netqual_log_init(v16, v17);
      v18 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315394;
        v20 = "[NetworkQualityExecutions execParallelWithCompletionHandler:]_block_invoke";
        v21 = 1024;
        v22 = 1317;
        _os_log_impl(&dword_25B962000, v18, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] parallel saturated - moving to responsiveness", &v19, 0x12u);
      }

      [*(a1 + 32) run];
    }
  }
}

void __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_195(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 code] != -999)
    {
      v6 = [v4 domain];
      if (v6 == @"NetworkQualityErrorDomain")
      {
        [v4 code];
      }

      else
      {
      }
    }

    v7 = nw_activity_complete_with_reason();
    netqual_log_init(v7, v8);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_195_cold_1();
    }

    v5 = *(a1[5] + 16);
    goto LABEL_12;
  }

  nw_activity_complete_with_reason();
  *(*(a1[6] + 8) + 24) = 1;
  if (*(*(a1[7] + 8) + 24) == 1)
  {
    v5 = *(a1[5] + 16);
LABEL_12:
    v5();
  }
}

void __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_196(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  netqual_log_init(a1, a2);
  v3 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 184);
    v5 = v3;
    v6 = [v4 uplinkCapacity];
    v7 = [v6 value];
    v8 = vcvtd_n_f64_s64([v7 integerValue], 0x14uLL);
    v9 = [*(*(a1 + 32) + 184) uplinkFlows];
    v10 = [v9 integerValue];
    v11 = [*(*(a1 + 32) + 184) uplinkBytesTransferred];
    v12 = [v11 integerValue];
    v13 = *(*(*(a1 + 40) + 8) + 24);
    v19 = 136316418;
    v20 = "[NetworkQualityExecutions execParallelWithCompletionHandler:]_block_invoke";
    v21 = 1024;
    v22 = 1356;
    v23 = 2048;
    v24 = v8;
    v25 = 2048;
    v26 = v10;
    v27 = 2048;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(&dword_25B962000, v5, OS_LOG_TYPE_DEFAULT, "%s:%u - Upload saturation throughput %.3f Mbps at %lu flows, transferred %ld bytes, downlink saturation %u", &v19, 0x36u);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v14 = [*(*(a1 + 32) + 64) metExitCriteria];
    v15 = 249;
    if (v14)
    {
      v15 = 250;
    }

    *(*(a1 + 32) + v15) = 1;
    v16 = [*(a1 + 32) currentStageIs:3];
    if (v16)
    {
      netqual_log_init(v16, v17);
      v18 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315394;
        v20 = "[NetworkQualityExecutions execParallelWithCompletionHandler:]_block_invoke";
        v21 = 1024;
        v22 = 1367;
        _os_log_impl(&dword_25B962000, v18, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] parallel saturated - moving to responsiveness", &v19, 0x12u);
      }

      [*(a1 + 32) run];
    }
  }
}

void __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_197(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 code] != -999)
    {
      v6 = [v4 domain];
      if (v6 == @"NetworkQualityErrorDomain")
      {
        [v4 code];
      }

      else
      {
      }
    }

    v7 = nw_activity_complete_with_reason();
    netqual_log_init(v7, v8);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_197_cold_1();
    }

    v5 = *(a1[5] + 16);
    goto LABEL_12;
  }

  nw_activity_complete_with_reason();
  *(*(a1[6] + 8) + 24) = 1;
  if (*(*(a1[7] + 8) + 24) == 1)
  {
    v5 = *(a1[5] + 16);
LABEL_12:
    v5();
  }
}

- (void)reallyExecuteParallel
{
  v3 = [MEMORY[0x277CBEAA8] now];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__NetworkQualityExecutions_reallyExecuteParallel__block_invoke;
  v5[3] = &unk_2799694B8;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [(NetworkQualityExecutions *)self execParallelWithCompletionHandler:v5];
}

void __49__NetworkQualityExecutions_reallyExecuteParallel__block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 184) downlinkCapacity];
  v5 = [v4 value];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    [v6 timeIntervalSinceDate:*(a1 + 40)];
    v8 = v7;

    v9 = MEMORY[0x277CCABB0];
    v10 = [*(*(a1 + 32) + 184) downlinkBytesTransferred];
    v11 = [v9 numberWithInteger:{((8 * objc_msgSend(v10, "intValue")) / v8)}];
    v12 = [*(*(a1 + 32) + 184) downlinkCapacity];
    [v12 setValue:v11];

    v13 = [*(*(a1 + 32) + 184) downlinkCapacity];
    [v13 updateConfidence:1];
  }

  v14 = [*(*(a1 + 32) + 184) uplinkCapacity];
  v15 = [v14 value];

  if (!v15)
  {
    v16 = [MEMORY[0x277CBEAA8] now];
    [v16 timeIntervalSinceDate:*(a1 + 40)];
    v18 = v17;

    v19 = MEMORY[0x277CCABB0];
    v20 = [*(*(a1 + 32) + 184) uplinkBytesTransferred];
    v21 = [v19 numberWithInteger:{((8 * objc_msgSend(v20, "intValue")) / v18)}];
    v22 = [*(*(a1 + 32) + 184) uplinkCapacity];
    [v22 setValue:v21];

    v23 = [*(*(a1 + 32) + 184) uplinkCapacity];
    [v23 updateConfidence:1];
  }

  [*(a1 + 32) shareProgress];
  if (v3)
  {
    v24 = [v3 domain];
    if (v24 != @"NetworkQualityErrorDomain")
    {

LABEL_12:
      [*(a1 + 32) reportingCompletionHandler:v3];
      goto LABEL_13;
    }

    if ([v3 code] != 1005)
    {
      goto LABEL_12;
    }

    if ((*(*(a1 + 32) + 96) & 1) == 0)
    {
      v25 = [v3 domain];
      if (v25 == @"NetworkQualityErrorDomain")
      {
        if ([v3 code] == 1005)
        {
          v26 = [*(a1 + 32) isDraining];
          if ((v26 & 1) == 0)
          {
            netqual_log_init(v26, v27);
            v28 = os_log_netqual;
            if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
            {
              v29 = 136315394;
              v30 = "[NetworkQualityExecutions reallyExecuteParallel]_block_invoke";
              v31 = 1024;
              v32 = 1429;
              _os_log_impl(&dword_25B962000, v28, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Parallel data limit exceeded - moving to draining", &v29, 0x12u);
            }

            [*(a1 + 32) run];
          }
        }
      }

      else
      {
      }
    }
  }

LABEL_13:
}

- (void)reallyExecuteDL
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] now];
  netqual_log_init(v3, v4);
  v5 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[NetworkQualityExecutions reallyExecuteDL]";
    v11 = 1024;
    v12 = 1439;
    _os_log_impl(&dword_25B962000, v5, OS_LOG_TYPE_DEFAULT, "%s:%u - Running dl test", buf, 0x12u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__NetworkQualityExecutions_reallyExecuteDL__block_invoke;
  v7[3] = &unk_2799694B8;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  [(NetworkQualityExecutions *)self execDLWithCompletionHandler:v7];
}

void __43__NetworkQualityExecutions_reallyExecuteDL__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 184) downlinkCapacity];
  v5 = [v4 value];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    [v6 timeIntervalSinceDate:*(a1 + 40)];
    v8 = v7;

    v9 = MEMORY[0x277CCABB0];
    v10 = [*(*(a1 + 32) + 184) downlinkBytesTransferred];
    v11 = [v9 numberWithInteger:{((8 * objc_msgSend(v10, "intValue")) / v8)}];
    v12 = [*(*(a1 + 32) + 184) downlinkCapacity];
    [v12 setValue:v11];

    v13 = [*(*(a1 + 32) + 184) downlinkCapacity];
    [v13 updateConfidence:1];
  }

  [*(a1 + 32) shareProgress];
  if (v3)
  {
    v14 = [v3 domain];
    if (v14 != @"NetworkQualityErrorDomain")
    {

LABEL_10:
      [*(a1 + 32) reportingCompletionHandler:v3];
      goto LABEL_11;
    }

    if ([v3 code] != 1005)
    {
      goto LABEL_10;
    }

    if ((*(*(a1 + 32) + 96) & 1) == 0)
    {
      v15 = [v3 domain];
      if (v15 == @"NetworkQualityErrorDomain")
      {
        if ([v3 code] == 1005)
        {
          v16 = [*(a1 + 32) isDraining];
          if ((v16 & 1) == 0)
          {
            netqual_log_init(v16, v17);
            v18 = os_log_netqual;
            if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
            {
              v19 = 136315394;
              v20 = "[NetworkQualityExecutions reallyExecuteDL]_block_invoke";
              v21 = 1024;
              v22 = 1462;
              _os_log_impl(&dword_25B962000, v18, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Downlink data limit exceeded - moving to draining", &v19, 0x12u);
            }

            [*(a1 + 32) run];
          }
        }
      }

      else
      {
      }
    }
  }

LABEL_11:
}

- (void)reallyExecuteUL
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] now];
  netqual_log_init(v3, v4);
  v5 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[NetworkQualityExecutions reallyExecuteUL]";
    v11 = 1024;
    v12 = 1472;
    _os_log_impl(&dword_25B962000, v5, OS_LOG_TYPE_DEFAULT, "%s:%u - Running ul test", buf, 0x12u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__NetworkQualityExecutions_reallyExecuteUL__block_invoke;
  v7[3] = &unk_2799694B8;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  [(NetworkQualityExecutions *)self execULWithCompletionHandler:v7];
}

void __43__NetworkQualityExecutions_reallyExecuteUL__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 184) uplinkCapacity];
  v5 = [v4 value];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    [v6 timeIntervalSinceDate:*(a1 + 40)];
    v8 = v7;

    v9 = MEMORY[0x277CCABB0];
    v10 = [*(*(a1 + 32) + 184) uplinkBytesTransferred];
    v11 = [v9 numberWithInteger:{((8 * objc_msgSend(v10, "intValue")) / v8)}];
    v12 = [*(*(a1 + 32) + 184) uplinkCapacity];
    [v12 setValue:v11];

    v13 = [*(*(a1 + 32) + 184) uplinkCapacity];
    [v13 updateConfidence:1];
  }

  [*(a1 + 32) shareProgress];
  if (v3)
  {
    v14 = [v3 domain];
    if (v14 != @"NetworkQualityErrorDomain")
    {

LABEL_10:
      [*(a1 + 32) reportingCompletionHandler:v3];
      goto LABEL_11;
    }

    if ([v3 code] != 1005)
    {
      goto LABEL_10;
    }

    if ((*(*(a1 + 32) + 96) & 1) == 0)
    {
      v15 = [v3 domain];
      if (v15 == @"NetworkQualityErrorDomain")
      {
        if ([v3 code] == 1005)
        {
          v16 = [*(a1 + 32) isDraining];
          if ((v16 & 1) == 0)
          {
            netqual_log_init(v16, v17);
            v18 = os_log_netqual;
            if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
            {
              v19 = 136315394;
              v20 = "[NetworkQualityExecutions reallyExecuteUL]_block_invoke";
              v21 = 1024;
              v22 = 1495;
              _os_log_impl(&dword_25B962000, v18, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Uplink data limit exceeded - moving to draining", &v19, 0x12u);
            }

            [*(a1 + 32) run];
          }
        }
      }

      else
      {
      }
    }
  }

LABEL_11:
}

- (void)_cancelWithOptionalError:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  netqual_log_init(errorCopy, v5);
  v6 = os_log_netqual;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (errorCopy)
    {
      code = [errorCopy code];
    }

    else
    {
      code = 0;
    }

    v18 = 136315650;
    v19 = "[NetworkQualityExecutions _cancelWithOptionalError:]";
    v20 = 1024;
    v21 = 1504;
    v22 = 2048;
    v23 = code;
    _os_log_impl(&dword_25B962000, v6, OS_LOG_TYPE_DEFAULT, "%s:%u - Canceling with %ld", &v18, 0x1Cu);
  }

  if (!self->cancelled)
  {
    self->cancelled = 1;
    delegate = self->_delegate;
    self->_delegate = 0;

    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    [(NetworkQualityExecutions *)self captureError:errorCopy];
    dlDelegate = self->dlDelegate;
    if (dlDelegate)
    {
      [(ThroughputDelegate *)dlDelegate cancel];
      v11 = self->dlDelegate;
      self->dlDelegate = 0;
    }

    ulDelegate = self->ulDelegate;
    if (ulDelegate)
    {
      [(ThroughputDelegate *)ulDelegate cancel];
      v13 = self->ulDelegate;
      self->ulDelegate = 0;
    }

    latencyDelegate = self->latencyDelegate;
    if (latencyDelegate)
    {
      [(LatencyURLSessionDelegate *)latencyDelegate cancel];
      v15 = self->latencyDelegate;
      self->latencyDelegate = 0;
    }

    configSession = self->_configSession;
    if (configSession)
    {
      [(NSURLSession *)configSession invalidateAndCancel];
      v17 = self->_configSession;
      self->_configSession = 0;
    }

    if (errorCopy)
    {
      nw_activity_complete_with_reason();
    }
  }
}

- (void)cancel
{
  executionsQueue = self->_executionsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__NetworkQualityExecutions_cancel__block_invoke;
  block[3] = &unk_279969378;
  block[4] = self;
  dispatch_async(executionsQueue, block);
}

void __34__NetworkQualityExecutions_cancel__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA450];
  v6[0] = @"Test canceled by user.";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = [v2 errorWithDomain:@"NetworkQualityErrorDomain" code:1004 userInfo:v3];
  [v1 _cancelWithOptionalError:v4];
}

- (void)_sendSymptomReport
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_1();
  *(&v1[3] + 2) = 1567;
  _os_log_error_impl(&dword_25B962000, v0, OS_LOG_TYPE_ERROR, "%s:%u - Function getSymptomReporter failed", v1, 0x12u);
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  if ([(NetworkQualityConfiguration *)self->config validateCertificate])
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }

  else
  {
    v9 = MEMORY[0x277CCACF0];
    protectionSpace = [challengeCopy protectionSpace];
    v11 = [v9 credentialForTrust:{objc_msgSend(protectionSpace, "serverTrust")}];
    (handlerCopy)[2](handlerCopy, 0, v11);
  }
}

- (void)validateAndAdjustRuntimeParameters:(void *)a1 .cold.1(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = 136316162;
  v5 = "[NetworkQualityExecutions validateAndAdjustRuntimeParameters:]";
  v6 = 1024;
  v7 = 159;
  v8 = 2048;
  v9 = [a2 minRuntime];
  v10 = 2048;
  v11 = [a2 maxRuntime];
  v12 = 2048;
  v13 = [a2 maxRuntime] - 1;
  _os_log_error_impl(&dword_25B962000, v3, OS_LOG_TYPE_ERROR, "%s:%u - Minimum runtime %ld >= maxRuntime %ld, resetting minimum to %ld", &v4, 0x30u);
}

- (void)initWithConfiguration:(void *)a1 .cold.1(void **a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 networkInterfaceName];
  v5[0] = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25B962000, v3, OS_LOG_TYPE_ERROR, "%s:%u - Invalid interface name %@ specified", v5, 0x1Cu);
}

void __31__NetworkQualityExecutions_run__block_invoke_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - IdleLatencyURLSessionDelegate failed with an error: %@", v2, v3, v4, v5, v6);
}

void __31__NetworkQualityExecutions_run__block_invoke_82_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - WorkingLatencyURLSessionDelegate failed with an error: %@", v2, v3, v4, v5, v6);
}

void __31__NetworkQualityExecutions_run__block_invoke_96_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - WorkingLatencyURLSessionDelegate failed with an error: %@", v2, v3, v4, v5, v6);
}

void __31__NetworkQualityExecutions_run__block_invoke_110_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - WorkingLatencyURLSessionDelegate failed with an error: %@", v2, v3, v4, v5, v6);
}

void __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "[NetworkQualityExecutions runWithCompletionHandler:]_block_invoke_2";
  *(buf + 6) = 1024;
  *(buf + 14) = 964;
  *(buf + 9) = 2112;
  *(buf + 20) = a1;
  _os_log_error_impl(&dword_25B962000, log, OS_LOG_TYPE_ERROR, "%s:%u - Timed-out resolving %@. Defaulting confURL", buf, 0x1Cu);
}

void __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_cold_2()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - %@", v2, v3, v4, v5, v6);
}

void __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_134_cold_1(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  [a2 statusCode];
  *v7 = 136315906;
  OUTLINED_FUNCTION_1();
  *&v7[7] = 1026;
  v7[9] = 2048;
  v8 = v6;
  v9 = 2048;
  v10 = a3;
  _os_log_error_impl(&dword_25B962000, v5, OS_LOG_TYPE_ERROR, "%s:%u - Either the HTTP response %lu or network data %p are invalid", v7, 0x26u);
}

void __56__NetworkQualityExecutions_execDLWithCompletionHandler___block_invoke_182_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - Test failed with an error: %@", v2, v3, v4, v5, v6);
}

void __56__NetworkQualityExecutions_execULWithCompletionHandler___block_invoke_188_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - Test failed with an error: %@", v2, v3, v4, v5, v6);
}

void __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_195_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - Test failed with an error: %@", v2, v3, v4, v5, v6);
}

void __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_197_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - Test failed with an error: %@", v2, v3, v4, v5, v6);
}

@end