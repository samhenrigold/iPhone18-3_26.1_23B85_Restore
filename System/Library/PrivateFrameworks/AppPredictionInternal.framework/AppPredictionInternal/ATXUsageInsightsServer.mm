@interface ATXUsageInsightsServer
+ (id)sharedInstance;
- (ATXUsageInsightsServer)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)fetchAllContinuousUsageSessionsWithCompletion:(id)completion;
- (void)fetchAllDeliveredNotificationsWithCompletion:(id)completion;
- (void)fetchAllInterruptingAppSessionsWithCompletion:(id)completion;
- (void)fetchAllMindlessCyclingSessionsWithCompletion:(id)completion;
- (void)fetchAllPhubbingSessionsWithCompletion:(id)completion;
- (void)fetchSuggestedBundleIDsForAllowListForAllModesWithCompletion:(id)completion;
- (void)fetchSuggestedBundleIDsForDenyListForAllModesWithCompletion:(id)completion;
- (void)fetchUsageInsightsInferredATXModeEventsWithCompletion:(id)completion;
@end

@implementation ATXUsageInsightsServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_7 != -1)
  {
    +[ATXUsageInsightsServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_9;

  return v3;
}

void __40__ATXUsageInsightsServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_9;
  sharedInstance__pasExprOnceResult_9 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXUsageInsightsServer)init
{
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = ATXUsageInsightsServer;
  v2 = [(ATXUsageInsightsServer *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = __atxlog_handle_usage_insights(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "ATXUsageInsightsServer: launched", buf, 2u);
    }

    v5 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.UsageInsights"];
    listener = v3->_listener;
    v3->_listener = v5;

    [(NSXPCListener *)v3->_listener setDelegate:v3];
    v7 = __atxlog_handle_usage_insights([(NSXPCListener *)v3->_listener resume]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[ATXUsageInsightsServer init]";
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%s: Listening for connections", buf, 0xCu);
    }
  }

  return v3;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v31 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = __atxlog_handle_usage_insights(connectionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[ATXUsageInsightsServer listener:shouldAcceptNewConnection:]";
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "%s: Connection attempted", buf, 0xCu);
  }

  v9 = [connectionCopy valueForEntitlement:@"com.apple.proactive.UsageInsights"];
  v10 = v9;
  if (v9 && (v9 = objc_opt_respondsToSelector(), (v9 & 1) != 0) && (v9 = [v10 BOOLValue], (v9 & 1) != 0))
  {
    v11 = __atxlog_handle_usage_insights(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[ATXUsageInsightsServer listener:shouldAcceptNewConnection:]";
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "%s: Connection established", buf, 0xCu);
    }

    v12 = ATXUsageInsightsInterface();
    [connectionCopy setExportedInterface:v12];

    [connectionCopy setExportedObject:self];
    objc_initWeak(buf, connectionCopy);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __61__ATXUsageInsightsServer_listener_shouldAcceptNewConnection___block_invoke;
    v27[3] = &unk_2785977B0;
    objc_copyWeak(&v28, buf);
    [connectionCopy setInterruptionHandler:v27];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __61__ATXUsageInsightsServer_listener_shouldAcceptNewConnection___block_invoke_23;
    v25 = &unk_2785977B0;
    objc_copyWeak(&v26, buf);
    [connectionCopy setInvalidationHandler:&v22];
    [connectionCopy resume];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
    v13 = 1;
  }

  else
  {
    v14 = __atxlog_handle_usage_insights(v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ATXUsageInsightsServer *)connectionCopy listener:v14 shouldAcceptNewConnection:v15, v16, v17, v18, v19, v20];
    }

    v13 = 0;
  }

  return v13;
}

void __61__ATXUsageInsightsServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = __atxlog_handle_usage_insights(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__ATXUsageInsightsServer_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __61__ATXUsageInsightsServer_listener_shouldAcceptNewConnection___block_invoke_23(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = __atxlog_handle_usage_insights(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__ATXUsageInsightsServer_listener_shouldAcceptNewConnection___block_invoke_23_cold_1();
  }
}

- (void)fetchAllDeliveredNotificationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = objc_opt_new();
  [v8 successfullyAccumulatedNotificationEvents];
  v4 = objc_alloc(MEMORY[0x277CEB4D0]);
  allDeliveredNotifications = [v8 allDeliveredNotifications];
  v6 = [v4 initWithAllDeliveredNotifications:allDeliveredNotifications allInterruptingAppSessions:0];

  allDeliveredNotifications2 = [v6 allDeliveredNotifications];
  completionCopy[2](completionCopy, allDeliveredNotifications2, 0);
}

- (void)fetchSuggestedBundleIDsForAllowListForAllModesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__ATXUsageInsightsServer_fetchSuggestedBundleIDsForAllowListForAllModesWithCompletion___block_invoke;
  v6[3] = &unk_27859A2B8;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 suggestedBundleIDsForAllowListWithCompletion:v6];
}

- (void)fetchSuggestedBundleIDsForDenyListForAllModesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__ATXUsageInsightsServer_fetchSuggestedBundleIDsForDenyListForAllModesWithCompletion___block_invoke;
  v6[3] = &unk_27859A2B8;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 suggestedBundleIDsForDenyListWithCompletion:v6];
}

- (void)fetchUsageInsightsInferredATXModeEventsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_opt_new();
  usageInsightsInferredATXModeEvents = [v5 usageInsightsInferredATXModeEvents];
  completionCopy[2](completionCopy, usageInsightsInferredATXModeEvents, 0);
}

- (void)fetchAllInterruptingAppSessionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = objc_opt_new();
  [v8 successfullyAccumulatedInterruptingSessions];
  v4 = objc_alloc(MEMORY[0x277CEB4D0]);
  allInterruptingAppSessions = [v8 allInterruptingAppSessions];
  v6 = [v4 initWithAllDeliveredNotifications:0 allInterruptingAppSessions:allInterruptingAppSessions];

  allInterruptingAppSessions2 = [v6 allInterruptingAppSessions];
  completionCopy[2](completionCopy, allInterruptingAppSessions2, 0);
}

- (void)fetchAllPhubbingSessionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = objc_opt_new();
  [v8 successfullyAccumulatedPhubbingEvents];
  v4 = objc_alloc(MEMORY[0x277CEB798]);
  phubbingSessions = [v8 phubbingSessions];
  v6 = [v4 initWithPhubbingSessions:phubbingSessions];

  phubbingSessions2 = [v6 phubbingSessions];
  completionCopy[2](completionCopy, phubbingSessions2, 0);
}

- (void)fetchAllMindlessCyclingSessionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = objc_opt_new();
  [v8 accumulateMindlessCyclingEvents];
  v4 = objc_alloc(MEMORY[0x277CEB488]);
  mindlessCyclingEvents = [v8 mindlessCyclingEvents];
  v6 = [v4 initWithContinuousDeviceUsageEvent:0 mindlessCyclingEvents:mindlessCyclingEvents];

  mindlessCyclingEvents2 = [v6 mindlessCyclingEvents];
  completionCopy[2](completionCopy, mindlessCyclingEvents2, 0);
}

- (void)fetchAllContinuousUsageSessionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = objc_opt_new();
  [v8 successfullyAccumulatedContinuousUseEvents];
  v4 = objc_alloc(MEMORY[0x277CEB488]);
  continuousUseSessions = [v8 continuousUseSessions];
  v6 = [v4 initWithContinuousDeviceUsageEvent:continuousUseSessions mindlessCyclingEvents:0];

  continuousDeviceUsageEvents = [v6 continuousDeviceUsageEvents];
  completionCopy[2](completionCopy, continuousDeviceUsageEvents, 0);
}

- (void)listener:(uint64_t)a3 shouldAcceptNewConnection:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = 138412546;
  *&v8[4] = a1;
  *&v8[12] = 2112;
  *&v8[14] = @"com.apple.proactive.UsageInsights";
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, a2, a3, "ATXUsageInsightsServer: Rejecting connection %@ without entitlement %@", a5, a6, a7, a8, *v8, *&v8[8], *&v8[16], *MEMORY[0x277D85DE8]);
}

void __61__ATXUsageInsightsServer_listener_shouldAcceptNewConnection___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, v0, v1, "%s: Unexpected Interruption: %@", v2, v3, v4, v5, v6);
}

void __61__ATXUsageInsightsServer_listener_shouldAcceptNewConnection___block_invoke_23_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, v0, v1, "%s: Connection invalidated: %@", v2, v3, v4, v5, v6);
}

@end