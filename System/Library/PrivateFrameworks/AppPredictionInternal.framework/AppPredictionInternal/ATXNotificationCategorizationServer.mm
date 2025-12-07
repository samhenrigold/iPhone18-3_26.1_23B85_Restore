@interface ATXNotificationCategorizationServer
+ (id)sharedInstance;
- (ATXNotificationCategorizationServer)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)collectCoreAnalyticsJsonForNotification:(id)notification completion:(id)completion;
- (void)collectDynamicBreakthroughFeaturesForNotification:(id)notification completion:(id)completion;
- (void)fetchContextForMailWithRequest:(id)request completion:(id)completion;
- (void)fetchContextForMessageWithRequest:(id)request completion:(id)completion;
- (void)fetchContextForNotificationWithRequest:(id)request completion:(id)completion;
- (void)rankUserNotificationWithRequest:(id)request completion:(id)completion;
@end

@implementation ATXNotificationCategorizationServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_16 != -1)
  {
    +[ATXNotificationCategorizationServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_20;

  return v3;
}

void __53__ATXNotificationCategorizationServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_20;
  sharedInstance__pasExprOnceResult_20 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXNotificationCategorizationServer)init
{
  v32 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = ATXNotificationCategorizationServer;
  v2 = [(ATXNotificationCategorizationServer *)&v29 init];
  v3 = v2;
  if (v2)
  {
    v4 = __atxlog_handle_notification_categorization(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "ATXNotificationCategorizationServer: launched", buf, 2u);
    }

    objc_initWeak(&location, v3);
    v5 = [objc_alloc(MEMORY[0x277D425F0]) initWithBlock:&__block_literal_global_38_0];
    contactStore = v3->_contactStore;
    v3->_contactStore = v5;

    v7 = objc_alloc(MEMORY[0x277D425F0]);
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __43__ATXNotificationCategorizationServer_init__block_invoke_2;
    v26 = &unk_27859D180;
    objc_copyWeak(&v27, &location);
    v8 = [v7 initWithBlock:&v23];
    contactRelationships = v3->_contactRelationships;
    v3->_contactRelationships = v8;

    v10 = objc_alloc(MEMORY[0x277D425F0]);
    v11 = [v10 initWithBlock:{&__block_literal_global_44, v23, v24, v25, v26}];
    featuresCorrelator = v3->_featuresCorrelator;
    v3->_featuresCorrelator = v11;

    v13 = [objc_alloc(MEMORY[0x277D425F0]) initWithBlock:&__block_literal_global_48];
    notificationSenderImportanceModel = v3->_notificationSenderImportanceModel;
    v3->_notificationSenderImportanceModel = v13;

    v15 = [objc_alloc(MEMORY[0x277D425F0]) initWithBlock:&__block_literal_global_52_0];
    mailSenderImportanceModel = v3->_mailSenderImportanceModel;
    v3->_mailSenderImportanceModel = v15;

    v17 = [objc_alloc(MEMORY[0x277D425F0]) initWithBlock:&__block_literal_global_56_0];
    messageSenderImportanceModel = v3->_messageSenderImportanceModel;
    v3->_messageSenderImportanceModel = v17;

    v19 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.personalization.notificationCategorization"];
    listener = v3->_listener;
    v3->_listener = v19;

    [(NSXPCListener *)v3->_listener setDelegate:v3];
    v21 = __atxlog_handle_notification_categorization([(NSXPCListener *)v3->_listener resume]);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[ATXNotificationCategorizationServer init]";
      _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "%s: Listening for connections", buf, 0xCu);
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v3;
}

id __43__ATXNotificationCategorizationServer_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();

  return v2;
}

ATXContactRelationshipsCollector *__43__ATXNotificationCategorizationServer_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [ATXContactRelationshipsCollector alloc];
    v3 = [WeakRetained[6] result];
    v4 = [(ATXContactRelationshipsCollector *)v2 initWithContactStore:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __43__ATXNotificationCategorizationServer_init__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();

  return v2;
}

id __43__ATXNotificationCategorizationServer_init__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();

  return v2;
}

id __43__ATXNotificationCategorizationServer_init__block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();

  return v2;
}

id __43__ATXNotificationCategorizationServer_init__block_invoke_6(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v31 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = __atxlog_handle_notification_categorization(connectionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[ATXNotificationCategorizationServer listener:shouldAcceptNewConnection:]";
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "%s: Connection attempted", buf, 0xCu);
  }

  v9 = [connectionCopy valueForEntitlement:@"com.apple.personalization.notificationCategorization"];
  v10 = v9;
  if (v9 && (v9 = objc_opt_respondsToSelector(), (v9 & 1) != 0) && (v9 = [v10 BOOLValue], (v9 & 1) != 0))
  {
    v11 = __atxlog_handle_notification_categorization(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[ATXNotificationCategorizationServer listener:shouldAcceptNewConnection:]";
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "%s: Connection established", buf, 0xCu);
    }

    v12 = ATXNotificationCategorizationXPCInterface();
    [connectionCopy setExportedInterface:v12];

    [connectionCopy setExportedObject:self];
    objc_initWeak(buf, connectionCopy);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __74__ATXNotificationCategorizationServer_listener_shouldAcceptNewConnection___block_invoke;
    v27[3] = &unk_2785977B0;
    objc_copyWeak(&v28, buf);
    [connectionCopy setInterruptionHandler:v27];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __74__ATXNotificationCategorizationServer_listener_shouldAcceptNewConnection___block_invoke_64;
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
    v14 = __atxlog_handle_notification_categorization(v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationCategorizationServer *)connectionCopy listener:v14 shouldAcceptNewConnection:v15, v16, v17, v18, v19, v20];
    }

    v13 = 0;
  }

  return v13;
}

void __74__ATXNotificationCategorizationServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = __atxlog_handle_notification_categorization(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __74__ATXNotificationCategorizationServer_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __74__ATXNotificationCategorizationServer_listener_shouldAcceptNewConnection___block_invoke_64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = __atxlog_handle_notification_categorization(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __74__ATXNotificationCategorizationServer_listener_shouldAcceptNewConnection___block_invoke_64_cold_1();
  }
}

- (void)collectDynamicBreakthroughFeaturesForNotification:(id)notification completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  notificationCopy = notification;
  v8 = __atxlog_handle_notification_categorization(notificationCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315138;
    v23 = "[ATXNotificationCategorizationServer collectDynamicBreakthroughFeaturesForNotification:completion:]";
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Starting %s", &v22, 0xCu);
  }

  v10 = __atxlog_handle_notification_categorization(v9);
  v11 = os_signpost_id_generate(v10);

  v13 = __atxlog_handle_notification_categorization(v12);
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ATXNotificationCategorizationServer.dynamicBreakthroughDataCollection", " enableTelemetry=YES ", &v22, 2u);
  }

  result = [(_PASLazyResult *)self->_featuresCorrelator result];
  result2 = [(_PASLazyResult *)self->_contactStore result];
  result3 = [(_PASLazyResult *)self->_contactRelationships result];
  v18 = [result collectDynamicBreakthroughFeaturesForNotification:notificationCopy contactStore:result2 withContactRelationships:result3];

  v20 = __atxlog_handle_notification_categorization(v19);
  v21 = v20;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v21, OS_SIGNPOST_INTERVAL_END, v11, "ATXNotificationCategorizationServer.dynamicBreakthroughDataCollection", " enableTelemetry=YES ", &v22, 2u);
  }

  completionCopy[2](completionCopy, v18, 0);
}

- (void)collectCoreAnalyticsJsonForNotification:(id)notification completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  completionCopy = completion;
  v8 = __atxlog_handle_notification_categorization(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v36 = "[ATXNotificationCategorizationServer collectCoreAnalyticsJsonForNotification:completion:]";
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Starting %s", buf, 0xCu);
  }

  v10 = __atxlog_handle_notification_categorization(v9);
  v11 = os_signpost_id_generate(v10);

  v13 = __atxlog_handle_notification_categorization(v12);
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ATXNotificationCategorizationServer.collectCoreAnalyticsJsonForNotification", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = objc_opt_new();
  bundleID = [notificationCopy bundleID];
  notificationID = [notificationCopy notificationID];
  recordDate = [notificationCopy recordDate];
  [recordDate timeIntervalSinceReferenceDate];
  v19 = [v15 telemetryDataForNotificationWithBundleId:bundleID notificationId:notificationID recordTimestamp:?];

  if (!v19)
  {
    v21 = __atxlog_handle_notification_categorization(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationCategorizationServer collectCoreAnalyticsJsonForNotification:notificationCopy completion:v21];
    }
  }

  result = [(_PASLazyResult *)self->_featuresCorrelator result];
  result2 = [(_PASLazyResult *)self->_contactStore result];
  result3 = [(_PASLazyResult *)self->_contactRelationships result];
  v25 = [result collectDynamicBreakthroughFeaturesForNotification:notificationCopy contactStore:result2 withContactRelationships:result3];

  v26 = [ATXNotificationBreakthroughEventMetric coreAnalyticsDictionaryFromQueryResult:v19 featureCollectionSet:v25];
  v27 = __atxlog_handle_notification_categorization(v26);
  v28 = v27;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v28, OS_SIGNPOST_INTERVAL_END, v11, "ATXNotificationCategorizationServer.collectCoreAnalyticsJsonForNotification", " enableTelemetry=YES ", buf, 2u);
  }

  v34 = 0;
  v29 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v26 options:1 error:&v34];
  v30 = v34;
  v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v29 encoding:4];
  if (v30)
  {
    v32 = 0;
    v33 = v30;
  }

  else
  {
    v32 = v31;
    v33 = 0;
  }

  completionCopy[2](completionCopy, v32, v33);
}

- (void)rankUserNotificationWithRequest:(id)request completion:(id)completion
{
  v45 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v5 = __atxlog_handle_notification_categorization(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    userNotifications = [requestCopy userNotifications];
    *buf = 136315394;
    *&buf[4] = "[ATXNotificationCategorizationServer rankUserNotificationWithRequest:completion:]";
    *&buf[12] = 2048;
    *&buf[14] = [userNotifications count];
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: Received request to rank: %ld notifications", buf, 0x16u);
  }

  v27 = objc_opt_new();
  useLLM = [requestCopy useLLM];
  v8 = &unk_283A58F90;
  [v27 setObject:&unk_283A58F90 forKeyedSubscript:@"critical"];
  if (useLLM)
  {
    v8 = &unk_283A58FA0;
    v9 = &unk_283A58FB0;
  }

  else
  {
    v9 = &unk_283A58FC0;
  }

  [v27 setObject:v8 forKeyedSubscript:{@"timeSensitive", completionCopy}];
  [v27 setObject:&unk_283A58F90 forKeyedSubscript:@"isMessage"];
  [v27 setObject:v8 forKeyedSubscript:@"personScore"];
  [v27 setObject:v8 forKeyedSubscript:@"tendencyToOpenAppAfterNotification"];
  [v27 setObject:v9 forKeyedSubscript:@"llmScore"];
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  queue = dispatch_queue_create("ATXNotificationCategorizationServer.rankUserNotificationWithRequest.concurrent", v10);

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create("ATXNotificationCategorizationServer.rankUserNotificationWithRequest.serial", v11);

  v13 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v42 = __Block_byref_object_copy__52;
  v43 = __Block_byref_object_dispose__52;
  v44 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  userNotifications2 = [requestCopy userNotifications];
  v15 = [userNotifications2 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v15)
  {
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(userNotifications2);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __82__ATXNotificationCategorizationServer_rankUserNotificationWithRequest_completion___block_invoke;
        block[3] = &unk_27859C520;
        block[4] = v18;
        v29 = v27;
        v30 = v12;
        v31 = buf;
        dispatch_group_async(v13, queue, block);
      }

      v15 = [userNotifications2 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v15);
  }

  dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  v19 = objc_alloc(MEMORY[0x277CEB738]);
  v20 = [v19 initWithnotificationRankingSections:*(*&buf[8] + 40)];
  v21 = __atxlog_handle_notification_categorization(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [*(*&buf[8] + 40) count];
    *v36 = 136315394;
    v37 = "[ATXNotificationCategorizationServer rankUserNotificationWithRequest:completion:]";
    v38 = 2048;
    v39 = v22;
    _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "%s: Ranked notifications into %ld sections", v36, 0x16u);
  }

  (v24)[2](v24, v20, 0);
  _Block_object_dispose(buf, 8);
}

void __82__ATXNotificationCategorizationServer_rankUserNotificationWithRequest_completion___block_invoke(uint64_t a1)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_notification_categorization(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __82__ATXNotificationCategorizationServer_rankUserNotificationWithRequest_completion___block_invoke_cold_1(a1, v2);
  }

  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x277CEB728]);
  v5 = [*(a1 + 40) objectForKeyedSubscript:@"critical"];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "urgency") == 0}];
  v7 = [v4 initWithWeight:v5 value:v6];
  [v3 setObject:v7 forKeyedSubscript:@"critical"];

  v8 = objc_alloc(MEMORY[0x277CEB728]);
  v9 = [*(a1 + 40) objectForKeyedSubscript:@"timeSensitive"];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "urgency") == 1}];
  v11 = [v8 initWithWeight:v9 value:v10];
  [v3 setObject:v11 forKeyedSubscript:@"timeSensitive"];

  v12 = objc_alloc(MEMORY[0x277CEB728]);
  v13 = [*(a1 + 40) objectForKeyedSubscript:@"isMessage"];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isMessage")}];
  v15 = [v12 initWithWeight:v13 value:v14];
  [v3 setObject:v15 forKeyedSubscript:@"isMessage"];

  v16 = objc_alloc(MEMORY[0x277CEB728]);
  v17 = [*(a1 + 40) objectForKeyedSubscript:@"personScore"];
  v18 = [v16 initWithWeight:v17 value:&unk_283A560F0];
  [v3 setObject:v18 forKeyedSubscript:@"personScore"];

  v19 = objc_alloc(MEMORY[0x277CEB728]);
  v20 = [*(a1 + 40) objectForKeyedSubscript:@"tendencyToOpenAppAfterNotification"];
  v21 = [v19 initWithWeight:v20 value:&unk_283A560F0];
  [v3 setObject:v21 forKeyedSubscript:@"tendencyToOpenAppAfterNotification"];

  v22 = objc_alloc(MEMORY[0x277CEB728]);
  v23 = [*(a1 + 40) objectForKeyedSubscript:@"llmScore"];
  v24 = [v22 initWithWeight:v23 value:&unk_283A560F0];
  [v3 setObject:v24 forKeyedSubscript:@"llmScore"];

  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__52;
  v43 = __Block_byref_object_dispose__52;
  v44 = objc_opt_new();
  v25 = objc_alloc(MEMORY[0x277CEB730]);
  v26 = [v25 initWithFeatures:v3 metadata:v40[5]];
  v27 = objc_alloc(MEMORY[0x277CEB740]);
  v45[0] = *(a1 + 32);
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
  v29 = [v27 initWithUserNotifications:v28 featureSet:v26];

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __82__ATXNotificationCategorizationServer_rankUserNotificationWithRequest_completion___block_invoke_85;
  v34[3] = &unk_27859D228;
  v31 = *(a1 + 48);
  v30 = *(a1 + 56);
  v32 = *(a1 + 32);
  v35 = v29;
  v36 = v32;
  v37 = v30;
  v38 = &v39;
  v33 = v29;
  dispatch_sync(v31, v34);

  _Block_object_dispose(&v39, 8);
}

void __82__ATXNotificationCategorizationServer_rankUserNotificationWithRequest_completion___block_invoke_85(uint64_t a1)
{
  v2 = __atxlog_handle_notification_categorization([*(*(*(a1 + 48) + 8) + 40) addObject:*(a1 + 32)]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __82__ATXNotificationCategorizationServer_rankUserNotificationWithRequest_completion___block_invoke_85_cold_1(a1, v2);
  }
}

- (void)fetchContextForNotificationWithRequest:(id)request completion:(id)completion
{
  v33[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v8 = objc_opt_new();
  userNotification = [requestCopy userNotification];
  if (userNotification)
  {
    result = [(_PASLazyResult *)self->_notificationSenderImportanceModel result];
    v11 = [result calculateSenderImportanceForNotificationWithContextRequest:requestCopy];

    [v11 senderImportanceScore];
    v13 = v12;
    [v8 notificationSenderImportanceThreshold];
    if (v13 >= v14)
    {
      v28 = objc_alloc(MEMORY[0x277CEB6E8]);
      [v11 senderImportanceScore];
      v30 = v29;
      featureDictionary = [v11 featureDictionary];
      v31 = [v28 initWithNotificationSenderImportance:2 importanceConfidenceScore:featureDictionary notificationFeatureDictionary:v30];
    }

    else
    {
      [v11 senderImportanceScore];
      v16 = v15;
      [v8 notificationSenderImportanceThreshold];
      v18 = v17;
      v19 = objc_alloc(MEMORY[0x277CEB6E8]);
      [v11 senderImportanceScore];
      v21 = v20;
      featureDictionary = [v11 featureDictionary];
      v31 = [v19 initWithNotificationSenderImportance:v16 < v18 importanceConfidenceScore:featureDictionary notificationFeatureDictionary:v21];
    }

    completionCopy[2](completionCopy, v31, 0);
  }

  else
  {
    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CEB250];
    v25 = *MEMORY[0x277CEB258];
    v32 = *MEMORY[0x277CCA068];
    v33[0] = @"ATXNotificationCategorizationServer: Invalid Request Object: Nil ATXUserNotification object.";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v27 = [v23 errorWithDomain:v24 code:v25 userInfo:v26];
    (completionCopy)[2](completionCopy, 0, v27);
  }
}

- (void)fetchContextForMailWithRequest:(id)request completion:(id)completion
{
  v35[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v8 = objc_opt_new();
  mailMessage = [requestCopy mailMessage];
  if (mailMessage)
  {
    result = [(_PASLazyResult *)self->_mailSenderImportanceModel result];
    result2 = [(_PASLazyResult *)self->_contactStore result];
    result3 = [(_PASLazyResult *)self->_contactRelationships result];
    v13 = [result calculateSenderImportanceForMailWithContextRequest:requestCopy contactStore:result2 contactRelationships:result3];

    [v13 senderImportanceScore];
    v15 = v14;
    [v8 mailSenderImportanceThreshold];
    if (v15 >= v16)
    {
      v30 = objc_alloc(MEMORY[0x277CEB638]);
      [v13 senderImportanceScore];
      v32 = v31;
      featureDictionary = [v13 featureDictionary];
      v33 = [v30 initWithMailSenderImportance:2 importanceConfidenceScore:featureDictionary mailFeatureDictionary:v32];
    }

    else
    {
      [v13 senderImportanceScore];
      v18 = v17;
      [v8 mailSenderImportanceThreshold];
      v20 = v19;
      v21 = objc_alloc(MEMORY[0x277CEB638]);
      [v13 senderImportanceScore];
      v23 = v22;
      featureDictionary = [v13 featureDictionary];
      v33 = [v21 initWithMailSenderImportance:v18 < v20 importanceConfidenceScore:featureDictionary mailFeatureDictionary:v23];
    }

    completionCopy[2](completionCopy, v33, 0);
  }

  else
  {
    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CEB220];
    v27 = *MEMORY[0x277CEB228];
    v34 = *MEMORY[0x277CCA068];
    v35[0] = @"ATXNotificationCategorizationServer: Invalid Request Object: Nil ATXMailMessage object.";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v29 = [v25 errorWithDomain:v26 code:v27 userInfo:v28];
    (completionCopy)[2](completionCopy, 0, v29);
  }
}

- (void)fetchContextForMessageWithRequest:(id)request completion:(id)completion
{
  v35[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v8 = objc_opt_new();
  textMessage = [requestCopy textMessage];
  if (textMessage)
  {
    result = [(_PASLazyResult *)self->_messageSenderImportanceModel result];
    result2 = [(_PASLazyResult *)self->_contactStore result];
    result3 = [(_PASLazyResult *)self->_contactRelationships result];
    v13 = [result calculateSenderImportanceForMessageWithContextRequest:requestCopy contactStore:result2 contactRelationships:result3];

    [v13 senderImportanceScore];
    v15 = v14;
    [v8 messageSenderImportanceThreshold];
    if (v15 >= v16)
    {
      v30 = objc_alloc(MEMORY[0x277CEB660]);
      [v13 senderImportanceScore];
      v32 = v31;
      featureDictionary = [v13 featureDictionary];
      v33 = [v30 initWithMessageSenderImportance:2 importanceConfidenceScore:featureDictionary messageFeatureDictionary:v32];
    }

    else
    {
      [v13 senderImportanceScore];
      v18 = v17;
      [v8 messageSenderImportanceThreshold];
      v20 = v19;
      v21 = objc_alloc(MEMORY[0x277CEB660]);
      [v13 senderImportanceScore];
      v23 = v22;
      featureDictionary = [v13 featureDictionary];
      v33 = [v21 initWithMessageSenderImportance:v18 < v20 importanceConfidenceScore:featureDictionary messageFeatureDictionary:v23];
    }

    completionCopy[2](completionCopy, v33, 0);
  }

  else
  {
    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CEB240];
    v27 = *MEMORY[0x277CEB248];
    v34 = *MEMORY[0x277CCA068];
    v35[0] = @"ATXNotificationCategorizationServer: Invalid Request Object: Nil ATXTextMessage object.";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v29 = [v25 errorWithDomain:v26 code:v27 userInfo:v28];
    (completionCopy)[2](completionCopy, 0, v29);
  }
}

- (void)listener:(uint64_t)a3 shouldAcceptNewConnection:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = 138412546;
  *&v8[4] = a1;
  *&v8[12] = 2112;
  *&v8[14] = @"com.apple.personalization.notificationCategorization";
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, a2, a3, "ATXNotificationCategorizationServer: Rejecting connection %@ without entitlement %@", a5, a6, a7, a8, *v8, *&v8[8], *&v8[16], *MEMORY[0x277D85DE8]);
}

void __74__ATXNotificationCategorizationServer_listener_shouldAcceptNewConnection___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, v0, v1, "%s: Unexpected Interruption: %@", v2, v3, v4, v5, v6);
}

void __74__ATXNotificationCategorizationServer_listener_shouldAcceptNewConnection___block_invoke_64_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, v0, v1, "%s: Connection invalidated: %@", v2, v3, v4, v5, v6);
}

- (void)collectCoreAnalyticsJsonForNotification:(void *)a1 completion:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a1 bundleID];
  v5 = [a1 notificationID];
  v6 = [a1 recordDate];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = [a1 body];
  v12[0] = 136316163;
  OUTLINED_FUNCTION_0_24();
  v13 = v4;
  v14 = v10;
  v15 = v5;
  v16 = 2048;
  v17 = v8;
  v18 = 2117;
  v19 = v11;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: Got nil queryResult. Failed to find notification in database with bundleId: %@ notificationId: %@ recordTimestamp: %f body: %{sensitive}@", v12, 0x34u);
}

void __82__ATXNotificationCategorizationServer_rankUserNotificationWithRequest_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) uuid];
  v5[0] = 136315394;
  OUTLINED_FUNCTION_0_24();
  v6 = v4;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "%s: Ranking notification %@", v5, 0x16u);
}

void __82__ATXNotificationCategorizationServer_rankUserNotificationWithRequest_completion___block_invoke_85_cold_1(uint64_t a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 40) uuid];
  v5 = *(*(*(a1 + 56) + 8) + 40);
  v6 = 136315650;
  v7 = "[ATXNotificationCategorizationServer rankUserNotificationWithRequest:completion:]_block_invoke";
  v8 = 2112;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "%s: Done ranking notification %@, llmMetadata: %@", &v6, 0x20u);
}

@end