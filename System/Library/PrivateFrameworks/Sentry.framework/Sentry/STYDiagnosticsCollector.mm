@interface STYDiagnosticsCollector
+ (id)sharedDiagnosticsCollector;
- (void)collectTailspinForScenarioReport:(id)report tailspinFileDescriptor:(int)descriptor completionHandler:(id)handler;
@end

@implementation STYDiagnosticsCollector

+ (id)sharedDiagnosticsCollector
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__STYDiagnosticsCollector_sharedDiagnosticsCollector__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedDiagnosticsCollector_onceToken != -1)
  {
    dispatch_once(&sharedDiagnosticsCollector_onceToken, block);
  }

  v2 = sharedDiagnosticsCollector_sharedDiagnosticCollector;

  return v2;
}

void __53__STYDiagnosticsCollector_sharedDiagnosticsCollector__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedDiagnosticsCollector_sharedDiagnosticCollector;
  sharedDiagnosticsCollector_sharedDiagnosticCollector = v1;

  if (sharedDiagnosticsCollector_sharedDiagnosticCollector)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, -15);
    v3 = dispatch_queue_create("com.apple.Sentry.Frameworking.framework.STYDiagnosticsCollector", v4);
    [sharedDiagnosticsCollector_sharedDiagnosticCollector setSerialUtilityQueue:v3];
  }
}

- (void)collectTailspinForScenarioReport:(id)report tailspinFileDescriptor:(int)descriptor completionHandler:(id)handler
{
  v6 = *&descriptor;
  v20[1] = *MEMORY[0x277D85DE8];
  reportCopy = report;
  handlerCopy = handler;
  if (fcntl(v6, 1))
  {
    v19 = *MEMORY[0x277CCA450];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [mainBundle localizedStringForKey:@"File descriptor check via fcntl failed" value:&stru_287705D88 table:0];
    v20[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:STYDiagnosticsCollectorErrorDomain code:-1001 userInfo:v11];
    v13 = +[STYDiagCollectorLogger sharedLogger];
    logHandle = [v13 logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [STYDiagnosticsCollector collectTailspinForScenarioReport:logHandle tailspinFileDescriptor:? completionHandler:?];
    }

    handlerCopy[2](handlerCopy, 0, v6, reportCopy, v12);
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __101__STYDiagnosticsCollector_collectTailspinForScenarioReport_tailspinFileDescriptor_completionHandler___block_invoke;
    v15[3] = &unk_279B9B450;
    v17 = handlerCopy;
    v18 = v6;
    v16 = reportCopy;
    v11 = MEMORY[0x26675BCB0](v15);
    tailspin_dump_output();

    v12 = v17;
  }
}

void __101__STYDiagnosticsCollector_collectTailspinForScenarioReport_tailspinFileDescriptor_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v9 = *MEMORY[0x277CCA450];
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 localizedStringForKey:@"Error dumping tailspin" value:&stru_287705D88 table:0];
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:STYDiagnosticsCollectorErrorDomain code:-1002 userInfo:v6];
    v7 = +[STYDiagCollectorLogger sharedLogger];
    v8 = [v7 logHandle];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __101__STYDiagnosticsCollector_collectTailspinForScenarioReport_tailspinFileDescriptor_completionHandler___block_invoke_cold_1(v8);
    }
  }

  (*(*(a1 + 40) + 16))();
}

@end