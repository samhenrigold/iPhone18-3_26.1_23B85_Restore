@interface DEDAnalytics
+ (id)log;
+ (void)didCheckInDeferredExtensionsWithCount:(unint64_t)count;
+ (void)didCompleteBugSessionWithState:(int64_t)state;
+ (void)didCreateBugSessionForApp:(id)app;
+ (void)didStartDaemon;
+ (void)didStartExtensionWithIdentifier:(id)identifier;
+ (void)extensionDidScheduleExtensionWithIdentifier:(id)identifier delay:(unint64_t)delay;
+ (void)extensionWithIdentifier:(id)identifier didCompleteWithFileCount:(unint64_t)count bytesCollected:(unint64_t)collected duration:(unint64_t)duration errorCode:(int64_t)code;
+ (void)finisherDidCompleteWithDuration:(unint64_t)duration uploadedByteCount:(unint64_t)count usingFinishingMove:(int64_t)move withState:(int64_t)state;
+ (void)finisherDidStartWithFileCount:(unint64_t)count expectedByteUploadCount:(unint64_t)uploadCount finishingMove:(int64_t)move;
+ (void)logBugSessionStartWithDeviceType:(id)type isRemote:(BOOL)remote success:(BOOL)success errorCode:(int64_t)code;
@end

@implementation DEDAnalytics

+ (id)log
{
  if (log_onceToken_2 != -1)
  {
    +[DEDAnalytics log];
  }

  v3 = log_log_2;

  return v3;
}

void __19__DEDAnalytics_log__block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "ded-analytics");
  v1 = log_log_2;
  log_log_2 = v0;
}

+ (void)didStartDaemon
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [self log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136446210;
    v5 = "+[DEDAnalytics didStartDaemon]";
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_INFO, "%{public}s", &v4, 0xCu);
  }

  v3 = objc_opt_new();
  AWDPostMetric();
}

+ (void)didCheckInDeferredExtensionsWithCount:(unint64_t)count
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136446210;
    v7 = "+[DEDAnalytics didCheckInDeferredExtensionsWithCount:]";
    _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_INFO, "%{public}s", &v6, 0xCu);
  }

  v5 = objc_opt_new();
  [v5 setNumtasks:count];
  AWDPostMetric();
}

+ (void)didCreateBugSessionForApp:(id)app
{
  v9 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v5 = [self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136446210;
    v8 = "+[DEDAnalytics didCreateBugSessionForApp:]";
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_INFO, "%{public}s", &v7, 0xCu);
  }

  v6 = objc_opt_new();
  [v6 setHostapp:appCopy];

  AWDPostMetric();
}

+ (void)didStartExtensionWithIdentifier:(id)identifier
{
  v9 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136446210;
    v8 = "+[DEDAnalytics didStartExtensionWithIdentifier:]";
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_INFO, "%{public}s", &v7, 0xCu);
  }

  v6 = objc_opt_new();
  [v6 setExtension:identifierCopy];

  AWDPostMetric();
}

+ (void)extensionDidScheduleExtensionWithIdentifier:(id)identifier delay:(unint64_t)delay
{
  v11 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = [self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136446210;
    v10 = "+[DEDAnalytics extensionDidScheduleExtensionWithIdentifier:delay:]";
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_INFO, "%{public}s", &v9, 0xCu);
  }

  v8 = objc_opt_new();
  [v8 setExtension:identifierCopy];

  [v8 setDelay:delay];
  AWDPostMetric();
}

+ (void)extensionWithIdentifier:(id)identifier didCompleteWithFileCount:(unint64_t)count bytesCollected:(unint64_t)collected duration:(unint64_t)duration errorCode:(int64_t)code
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v13 = [self log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 136446210;
    v16 = "+[DEDAnalytics extensionWithIdentifier:didCompleteWithFileCount:bytesCollected:duration:errorCode:]";
    _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_INFO, "%{public}s", &v15, 0xCu);
  }

  v14 = objc_opt_new();
  [v14 setExtension:identifierCopy];

  [v14 setNumfiles:count];
  [v14 setNumbytes:collected];
  [v14 setDuration:duration];
  [v14 setError:code];
  AWDPostMetric();
}

+ (void)finisherDidStartWithFileCount:(unint64_t)count expectedByteUploadCount:(unint64_t)uploadCount finishingMove:(int64_t)move
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = [self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136446210;
    v12 = "+[DEDAnalytics finisherDidStartWithFileCount:expectedByteUploadCount:finishingMove:]";
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_INFO, "%{public}s", &v11, 0xCu);
  }

  v9 = objc_opt_new();
  [v9 setNumfiles:count];
  [v9 setNumbytes:uploadCount];
  if ((move - 1) < 3)
  {
    moveCopy = move;
  }

  else
  {
    moveCopy = 0;
  }

  [v9 setType:moveCopy];
  AWDPostMetric();
}

+ (void)finisherDidCompleteWithDuration:(unint64_t)duration uploadedByteCount:(unint64_t)count usingFinishingMove:(int64_t)move withState:(int64_t)state
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = [self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 136446210;
    v14 = "+[DEDAnalytics finisherDidCompleteWithDuration:uploadedByteCount:usingFinishingMove:withState:]";
    _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_INFO, "%{public}s", &v13, 0xCu);
  }

  v11 = objc_opt_new();
  [v11 setDuration:duration];
  [v11 setNumbytes:count];
  if ((move - 1) < 3)
  {
    moveCopy = move;
  }

  else
  {
    moveCopy = 0;
  }

  [v11 setType:moveCopy];
  [v11 setState:state];
  AWDPostMetric();
}

+ (void)didCompleteBugSessionWithState:(int64_t)state
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136446210;
    v7 = "+[DEDAnalytics didCompleteBugSessionWithState:]";
    _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_INFO, "%{public}s", &v6, 0xCu);
  }

  v5 = objc_opt_new();
  [v5 setSessionState:state];
  AWDPostMetric();
}

+ (void)logBugSessionStartWithDeviceType:(id)type isRemote:(BOOL)remote success:(BOOL)success errorCode:(int64_t)code
{
  typeCopy = type;
  if (logBugSessionStartWithDeviceType_isRemote_success_errorCode__onceToken != -1)
  {
    +[DEDAnalytics logBugSessionStartWithDeviceType:isRemote:success:errorCode:];
  }

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __76__DEDAnalytics_logBugSessionStartWithDeviceType_isRemote_success_errorCode___block_invoke_2;
  v17 = &unk_278F66158;
  remoteCopy = remote;
  successCopy = success;
  v18 = typeCopy;
  codeCopy = code;
  v10 = typeCopy;
  v11 = AnalyticsSendEventLazy();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__DEDAnalytics_logBugSessionStartWithDeviceType_isRemote_success_errorCode___block_invoke_34;
  v12[3] = &__block_descriptor_33_e5_v8__0l;
  v13 = v11;
  if (logBugSessionStartWithDeviceType_isRemote_success_errorCode__logOnceToken != -1)
  {
    dispatch_once(&logBugSessionStartWithDeviceType_isRemote_success_errorCode__logOnceToken, v12);
  }
}

uint64_t __76__DEDAnalytics_logBugSessionStartWithDeviceType_isRemote_success_errorCode___block_invoke()
{
  logBugSessionStartWithDeviceType_isRemote_success_errorCode__SessionStartLog = os_log_create("com.apple.feedback.analytics", "session-start");

  return MEMORY[0x2821F96F8]();
}

id __76__DEDAnalytics_logBugSessionStartWithDeviceType_isRemote_success_errorCode___block_invoke_2(uint64_t a1)
{
  v15[5] = *MEMORY[0x277D85DE8];
  v2 = @"Unknown";
  if (*(a1 + 32))
  {
    v2 = *(a1 + 32);
  }

  v15[0] = v2;
  v14[0] = @"device_type";
  v14[1] = @"is_remote";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v15[1] = v3;
  v14[2] = @"success";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 49)];
  v15[2] = v4;
  v14[3] = @"error_code";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v15[3] = v5;
  v14[4] = @"process_name";
  v6 = +[DEDConstants processName];
  v15[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];

  v8 = logBugSessionStartWithDeviceType_isRemote_success_errorCode__SessionStartLog;
  if (os_log_type_enabled(logBugSessionStartWithDeviceType_isRemote_success_errorCode__SessionStartLog, OS_LOG_TYPE_INFO))
  {
    v10 = 138543618;
    v11 = @"com.apple.feedback.bugSessionStart";
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_INFO, "%{public}@: %{public}@", &v10, 0x16u);
  }

  return v7;
}

void __76__DEDAnalytics_logBugSessionStartWithDeviceType_isRemote_success_errorCode___block_invoke_34(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = logBugSessionStartWithDeviceType_isRemote_success_errorCode__SessionStartLog;
  v3 = os_log_type_enabled(logBugSessionStartWithDeviceType_isRemote_success_errorCode__SessionStartLog, OS_LOG_TYPE_DEFAULT);
  if (v1 == 1)
  {
    if (!v3)
    {
      return;
    }

    v5 = 138543362;
    v6 = @"com.apple.feedback.bugSessionStart";
    v4 = "%{public}@ is enabled";
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v5 = 138543362;
    v6 = @"com.apple.feedback.bugSessionStart";
    v4 = "%{public}@ is NOT enabled";
  }

  _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, v4, &v5, 0xCu);
}

@end