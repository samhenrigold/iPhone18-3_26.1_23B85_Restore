@interface TRIIntegrationTestLogHandler
+ (BOOL)shouldUseOverrideLogHandler;
+ (void)addTestLoggerInPlaceOnClient:(id)client;
- (TRIIntegrationTestLogHandler)init;
- (void)logEvent:(id)event subgroupName:(id)name queue:(id)queue;
@end

@implementation TRIIntegrationTestLogHandler

- (TRIIntegrationTestLogHandler)init
{
  v30 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = TRIIntegrationTestLogHandler;
  v2 = [(TRIIntegrationTestLogHandler *)&v25 init];
  if (!v2)
  {
    return v2;
  }

  v3 = NSTemporaryDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"integration-test-logs"];
  tempDir = v2->_tempDir;
  v2->_tempDir = v4;

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = v2->_tempDir;
  v24 = 0;
  v8 = [defaultManager removeItemAtPath:v7 error:&v24];
  v9 = v24;

  v10 = TRILogCategory_Server();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v11)
    {
      v12 = v2->_tempDir;
      *buf = 138412290;
      v27 = v12;
      v13 = "Cleared temp directory %@ during test log handler setup.";
      v14 = v10;
      v15 = 12;
LABEL_7:
      _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_INFO, v13, buf, v15);
    }
  }

  else if (v11)
  {
    v16 = v2->_tempDir;
    *buf = 138412546;
    v27 = v16;
    v28 = 2112;
    v29 = v9;
    v13 = "Couldn't remove directory (it may already be gone, which is fine) %@: %@";
    v14 = v10;
    v15 = 22;
    goto LABEL_7;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = v2->_tempDir;
  v23 = v9;
  v19 = [defaultManager2 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:0 error:&v23];
  v20 = v23;

  if ((v19 & 1) == 0)
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v20;
      _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Failed to setup integration test log handler: %@", buf, 0xCu);
    }
  }

  return v2;
}

+ (BOOL)shouldUseOverrideLogHandler
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = +[TRIIntegrationTestingDefaultsOverrides shouldUseIntegrationTestLogger];
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = @"NO";
    if (v2)
    {
      v5 = @"YES";
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_debug_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEBUG, "Should use integration test logger? %@", &v6, 0xCu);
  }

  return v2;
}

+ (void)addTestLoggerInPlaceOnClient:(id)client
{
  clientCopy = client;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_debug_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEBUG, "Adding integration test logger to triald loggers", v10, 2u);
  }

  v5 = objc_opt_new();
  logger = [clientCopy logger];
  logHandlers = [logger logHandlers];
  v8 = [logHandlers arrayByAddingObject:v5];

  v9 = [[TRILogger alloc] initWithClient:clientCopy projectId:1 logHandlers:v8];
  [clientCopy setLogger:v9];
}

- (void)logEvent:(id)event subgroupName:(id)name queue:(id)queue
{
  v27 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  tempDir = self->_tempDir;
  v8 = objc_opt_new();
  uUIDString = [v8 UUIDString];
  v10 = [(NSString *)tempDir stringByAppendingPathComponent:uUIDString];

  data = [eventCopy data];
  v20 = 0;
  v12 = [data writeToFile:v10 options:1 error:&v20];
  v13 = v20;
  if ((v12 & 1) == 0)
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = v10;
      v23 = 2112;
      v24 = v13;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Failed to write event to file %@: %@", buf, 0x16u);
    }
  }

  v15 = TRILogCategory_Server();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    logEventId = [eventCopy logEventId];
    denormalizedEvent = [eventCopy denormalizedEvent];
    trialSystemTelemetry = [denormalizedEvent trialSystemTelemetry];
    trialdTaskName = [trialSystemTelemetry trialdTaskName];
    *buf = 138412802;
    v22 = logEventId;
    v23 = 2112;
    v24 = trialdTaskName;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_INFO, "Integration test logger wrote: id %@, task name %@, to: %@", buf, 0x20u);
  }
}

@end