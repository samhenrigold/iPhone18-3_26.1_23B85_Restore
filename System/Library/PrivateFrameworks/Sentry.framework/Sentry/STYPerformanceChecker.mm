@interface STYPerformanceChecker
+ (id)sharedPerfChecker;
- (int64_t)triage:(id)triage;
- (void)checkFramerateOfAnimationScenario:(id)scenario completionHandler:(id)handler;
- (void)checkLatencyOfResponsivenessScenario:(id)scenario completionHandler:(id)handler;
- (void)checkPerformanceOfScenarioReport:(id)report completionHandler:(id)handler;
- (void)dealloc;
- (void)reportError:(int64_t)error report:(id)report completionHandler:(id)handler;
@end

@implementation STYPerformanceChecker

+ (id)sharedPerfChecker
{
  if (sharedPerfChecker_onceToken != -1)
  {
    +[STYPerformanceChecker sharedPerfChecker];
  }

  v3 = sharedPerfChecker_sharedChecker;

  return v3;
}

void __42__STYPerformanceChecker_sharedPerfChecker__block_invoke()
{
  v15[3] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(STYPerformanceChecker);
  v1 = sharedPerfChecker_sharedChecker;
  sharedPerfChecker_sharedChecker = v0;

  if (sharedPerfChecker_sharedChecker)
  {
    v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, -15);
    v3 = dispatch_queue_create("com.apple.Sentry.Frameworking.framework.STYPerformanceChecker", v2);
    [sharedPerfChecker_sharedChecker setSerialUtilityQueue:v3];

    v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:8];
    [sharedPerfChecker_sharedChecker setPerfCheckerErrors:v4];

    v14[0] = &unk_2877088B8;
    v14[1] = &unk_2877088B8;
    v15[0] = @"Encountered unexpected configuration error.";
    v15[1] = @"System is under memory pressure.";
    v14[2] = &unk_2877088D0;
    v15[2] = @"System is under thermal pressure.";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    [sharedPerfChecker_sharedChecker setPerfCheckerErrors:v5];

    startMonitoringSystemConditions();
    [sharedPerfChecker_sharedChecker setUnderThermalPressure:0];
    [sharedPerfChecker_sharedChecker setUnderMemoryPressure:0];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = [v6 addObserverForName:kSTYNoMemoryPressureNotification object:0 queue:0 usingBlock:&__block_literal_global_21];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = [v8 addObserverForName:kSTYHeavyMemoryPressureNotification object:0 queue:0 usingBlock:&__block_literal_global_23];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = [v10 addObserverForName:kSTYNoThermalPressureNotification object:0 queue:0 usingBlock:&__block_literal_global_25];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = [v12 addObserverForName:kSTYHeavyThermalPressureNotification object:0 queue:0 usingBlock:&__block_literal_global_27];
  }
}

- (void)checkPerformanceOfScenarioReport:(id)report completionHandler:(id)handler
{
  reportCopy = report;
  handlerCopy = handler;
  scenario = [reportCopy scenario];
  v8 = [scenario kpi];

  if (v8 == -1001)
  {
    [(STYPerformanceChecker *)self checkFramerateOfAnimationScenario:reportCopy completionHandler:handlerCopy];
  }

  else
  {
    scenario2 = [reportCopy scenario];
    v10 = [scenario2 kpi];

    if (v10 == -1000)
    {
      [(STYPerformanceChecker *)self checkLatencyOfResponsivenessScenario:reportCopy completionHandler:handlerCopy];
    }

    else
    {
      [(STYPerformanceChecker *)self reportError:-100001 report:reportCopy completionHandler:handlerCopy];
    }
  }
}

- (void)reportError:(int64_t)error report:(id)report completionHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  handlerCopy = handler;
  v10 = +[STYFrameworkHelper sharedHelper];
  logHandle = [v10 logHandle];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
  {
    scenario = [reportCopy scenario];
    scenarioID = [scenario scenarioID];
    perfCheckerErrors = self->_perfCheckerErrors;
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:error];
    stringValue = [v22 stringValue];
    v24 = [(NSDictionary *)perfCheckerErrors valueForKey:stringValue];
    *buf = 138412802;
    v29 = scenarioID;
    v30 = 2048;
    errorCopy = error;
    v32 = 2112;
    v33 = v24;
    _os_log_error_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_ERROR, "Encountered error conditions while checking performance of %@ :  %ld / %@", buf, 0x20u);
  }

  v26 = *MEMORY[0x277CCA450];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = self->_perfCheckerErrors;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:error];
  stringValue2 = [v14 stringValue];
  v16 = [(NSDictionary *)v13 valueForKey:stringValue2];
  v17 = [mainBundle localizedStringForKey:v16 value:&stru_287705D88 table:0];
  v27 = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:STYPerformanceCheckerErrorDomain code:error userInfo:v18];
  handlerCopy[2](handlerCopy, 0, v19, reportCopy);
}

- (void)checkLatencyOfResponsivenessScenario:(id)scenario completionHandler:(id)handler
{
  scenarioCopy = scenario;
  handlerCopy = handler;
  serialUtilityQueue = self->_serialUtilityQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__STYPerformanceChecker_checkLatencyOfResponsivenessScenario_completionHandler___block_invoke;
  block[3] = &unk_279B9B508;
  block[4] = self;
  v12 = scenarioCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = scenarioCopy;
  dispatch_async(serialUtilityQueue, block);
}

uint64_t __80__STYPerformanceChecker_checkLatencyOfResponsivenessScenario_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) triage:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    return [v4 reportError:v3 report:v5 completionHandler:v6];
  }

  else
  {
    [*(a1 + 40) observedLatencyInMs];
    [*(a1 + 40) targetLatencyInMs];
    v8 = *(*(a1 + 48) + 16);

    return v8();
  }
}

- (void)checkFramerateOfAnimationScenario:(id)scenario completionHandler:(id)handler
{
  scenarioCopy = scenario;
  handlerCopy = handler;
  serialUtilityQueue = self->_serialUtilityQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__STYPerformanceChecker_checkFramerateOfAnimationScenario_completionHandler___block_invoke;
  block[3] = &unk_279B9B508;
  block[4] = self;
  v12 = scenarioCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = scenarioCopy;
  dispatch_async(serialUtilityQueue, block);
}

uint64_t __77__STYPerformanceChecker_checkFramerateOfAnimationScenario_completionHandler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) triage:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    return [v4 reportError:v3 report:v5 completionHandler:v6];
  }

  else
  {
    [*(a1 + 40) observedFps];
    v9 = v8;
    [*(a1 + 40) targetFps];
    v11 = v10;
    v12 = +[STYFrameworkHelper sharedHelper];
    v13 = [v12 logHandle];

    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v9 <= v11)
    {
      if (v14)
      {
        v20 = [*(a1 + 40) scenario];
        v21 = [v20 scenarioID];
        [*(a1 + 40) observedFps];
        v23 = v22;
        [*(a1 + 40) targetFps];
        v25 = 138412802;
        v26 = v21;
        v27 = 2048;
        v28 = v23;
        v29 = 2048;
        v30 = v24;
        _os_log_impl(&dword_2656CE000, v13, OS_LOG_TYPE_DEFAULT, " %@'s observed framerate of %.0f was below threshold of %.0f ", &v25, 0x20u);
      }
    }

    else if (v14)
    {
      v15 = [*(a1 + 40) scenario];
      v16 = [v15 scenarioID];
      [*(a1 + 40) observedFps];
      v18 = v17;
      [*(a1 + 40) targetFps];
      v25 = 138412802;
      v26 = v16;
      v27 = 2048;
      v28 = v18;
      v29 = 2048;
      v30 = v19;
      _os_log_impl(&dword_2656CE000, v13, OS_LOG_TYPE_DEFAULT, " %@'s observed framerate of %.0f was above threshold of %.0f ", &v25, 0x20u);
    }

    return (*(*(a1 + 48) + 16))();
  }
}

- (int64_t)triage:(id)triage
{
  if (self->_underThermalPressure)
  {
    return -1003;
  }

  if (self->_underMemoryPressure)
  {
    return -1002;
  }

  return 0;
}

- (void)dealloc
{
  stopMonitoringSystemConditions();
  v3.receiver = self;
  v3.super_class = STYPerformanceChecker;
  [(STYPerformanceChecker *)&v3 dealloc];
}

@end