@interface ATXSettingsActionsServer
+ (id)sharedInstance;
- (ATXSettingsActionsServer)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_dummyDayZeroSettingsActionsForDeduping;
- (id)_dummyDayZeroWatchAppSettingsActionsForDeduping;
- (id)_suggestedActionsWithDayZeroBackfillForDeduping:(id)deduping clientBundleID:(id)d;
- (id)_suggestedActionsWithRequest:(id)request;
- (void)recentActionsWithRequest:(id)request completionHandler:(id)handler;
- (void)suggestedActionsWithRequest:(id)request completionHandler:(id)handler;
@end

@implementation ATXSettingsActionsServer

- (id)_dummyDayZeroSettingsActionsForDeduping
{
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v3 = objc_alloc(MEMORY[0x277CEB7F8]);
  v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"settings-navigation://com.apple.Settings.Sounds"];
  v5 = [v3 initWithNavigationLink:v4];
  v6 = objc_alloc(MEMORY[0x277CEB7F8]);
  v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"settings-navigation://com.apple.Settings.Notifications"];
  v8 = [v6 initWithNavigationLink:v7];
  v9 = objc_alloc(MEMORY[0x277CEB7F8]);
  v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"settings-navigation://com.apple.Settings.Focus"];
  v11 = [v9 initWithNavigationLink:v10];
  v12 = objc_alloc(MEMORY[0x277CEB7F8]);
  v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"settings-navigation://com.apple.Settings.ScreenTime"];
  v14 = [v12 initWithNavigationLink:v13];
  v15 = [v2 initWithObjects:{v5, v8, v11, v14, 0}];

  return v15;
}

- (id)_dummyDayZeroWatchAppSettingsActionsForDeduping
{
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v3 = objc_alloc(MEMORY[0x277CEB7F8]);
  v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"bridge:root=SOUNDS_ID"];
  v5 = [v3 initWithNavigationLink:v4];
  v6 = objc_alloc(MEMORY[0x277CEB7F8]);
  v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"bridge:root=NOTIFICATIONS_ID"];
  v8 = [v6 initWithNavigationLink:v7];
  v9 = objc_alloc(MEMORY[0x277CEB7F8]);
  v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"bbridge:root=ACCESSIBILITY"];
  v11 = [v9 initWithNavigationLink:v10];
  v12 = objc_alloc(MEMORY[0x277CEB7F8]);
  v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"bridge:root=SOS_MODE_ID"];
  v14 = [v12 initWithNavigationLink:v13];
  v15 = [v2 initWithObjects:{v5, v8, v11, v14, 0}];

  return v15;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_43 != -1)
  {
    +[ATXSettingsActionsServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_55;

  return v3;
}

void __42__ATXSettingsActionsServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_55;
  sharedInstance__pasExprOnceResult_55 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXSettingsActionsServer)init
{
  v9.receiver = self;
  v9.super_class = ATXSettingsActionsServer;
  v2 = [(ATXSettingsActionsServer *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAE98]);
    v4 = [v3 initWithMachServiceName:*MEMORY[0x277CEB278]];
    listener = v2->_listener;
    v2->_listener = v4;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v6 = __atxlog_handle_settings_actions([(NSXPCListener *)v2->_listener resume]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Listening for connections", v8, 2u);
    }
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = __atxlog_handle_settings_actions(connectionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "Connection attempted", buf, 2u);
  }

  v7 = [connectionCopy valueForEntitlement:*MEMORY[0x277CEB278]];
  v8 = v7;
  if (v7 && (v7 = objc_opt_respondsToSelector(), (v7 & 1) != 0) && (v7 = [v8 BOOLValue], (v7 & 1) != 0))
  {
    v9 = __atxlog_handle_settings_actions(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "Connection established", v14, 2u);
    }

    v10 = ATXSettingsActionsInterface();
    [connectionCopy setExportedInterface:v10];

    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_18_2];
    [connectionCopy setInvalidationHandler:&__block_literal_global_21_7];
    [connectionCopy resume];
    v11 = 1;
  }

  else
  {
    v12 = __atxlog_handle_settings_actions(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXSettingsActionsServer listener:shouldAcceptNewConnection:];
    }

    v11 = 0;
  }

  return v11;
}

void __63__ATXSettingsActionsServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v1 = __atxlog_handle_settings_actions(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __63__ATXSettingsActionsServer_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __63__ATXSettingsActionsServer_listener_shouldAcceptNewConnection___block_invoke_19(uint64_t a1)
{
  v1 = __atxlog_handle_settings_actions(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __63__ATXSettingsActionsServer_listener_shouldAcceptNewConnection___block_invoke_19_cold_1();
  }
}

- (id)_suggestedActionsWithRequest:(id)request
{
  requestCopy = request;
  limit = [requestCopy limit];
  clientBundleID = [requestCopy clientBundleID];

  v6 = [clientBundleID isEqualToString:@"com.apple.Bridge"];
  if (limit)
  {
    v7 = limit;
  }

  else
  {
    v7 = 4;
  }

  v8 = objc_alloc(MEMORY[0x277CEB7D8]);
  if (v6)
  {
    v9 = 49;
  }

  else
  {
    v9 = 46;
  }

  v10 = [v8 initWithConsumerSubType:v9];
  suggestionLayoutFromCache = [v10 suggestionLayoutFromCache];
  allSuggestionsInLayout = [suggestionLayoutFromCache allSuggestionsInLayout];
  v13 = [allSuggestionsInLayout _pas_mappedArrayWithTransform:&__block_literal_global_28_2];
  v14 = v13;
  v15 = MEMORY[0x277CBEBF8];
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  v17 = [v16 count];
  if (v7 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v7;
  }

  v19 = [v16 subarrayWithRange:{0, v18}];

  return v19;
}

id __57__ATXSettingsActionsServer__suggestedActionsWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB7F8];
  v3 = a2;
  v4 = [[v2 alloc] initWithProactiveSuggestion:v3];

  if ([v4 bundleIdentifierIsHiddenForSettingsAction])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (void)suggestedActionsWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = __atxlog_handle_settings_actions(handlerCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = __atxlog_handle_settings_actions(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "RetrieveSuggestedActions", " enableTelemetry=YES ", buf, 2u);
  }

  clientBundleID = [requestCopy clientBundleID];

  if (!clientBundleID)
  {
    [requestCopy setClientBundleID:@"com.apple.Preferences"];
  }

  v14 = [(ATXSettingsActionsServer *)self _suggestedActionsWithRequest:requestCopy];
  v15 = [objc_alloc(MEMORY[0x277CEB810]) initWithActions:v14];
  handlerCopy[2](handlerCopy, v15, 0);

  v17 = __atxlog_handle_settings_actions(v16);
  v18 = v17;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *v19 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v18, OS_SIGNPOST_INTERVAL_END, v9, "RetrieveSuggestedActions", " enableTelemetry=YES ", v19, 2u);
  }
}

- (void)recentActionsWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = __atxlog_handle_settings_actions(handlerCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = __atxlog_handle_settings_actions(v10);
  v12 = v11;
  v13 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "RetrieveRecentActions", " enableTelemetry=YES ", buf, 2u);
  }

  clientBundleID = [requestCopy clientBundleID];

  if (!clientBundleID)
  {
    [requestCopy setClientBundleID:@"com.apple.Preferences"];
  }

  spid = v9;
  limit = [requestCopy limit];
  if (limit)
  {
    v16 = limit;
  }

  else
  {
    v16 = 10;
  }

  *buf = 0;
  v58 = buf;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__107;
  v61 = __Block_byref_object_dispose__107;
  v62 = 0;
  v17 = objc_alloc_init(MEMORY[0x277D23CC0]);
  v18 = [MEMORY[0x277CBEAA8] now];
  startDate = [requestCopy startDate];
  v20 = (v58 + 40);
  obj = *(v58 + 5);
  v21 = [v17 transcriptPublisherWithStreamName:0 fromDate:v18 toDate:startDate maxEvents:0 reversed:1 error:&obj];
  objc_storeStrong(v20, obj);

  if (v21 && !*(v58 + 5))
  {
    v29 = objc_opt_new();
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __71__ATXSettingsActionsServer_recentActionsWithRequest_completionHandler___block_invoke;
    v54[3] = &unk_278597540;
    v54[4] = buf;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __71__ATXSettingsActionsServer_recentActionsWithRequest_completionHandler___block_invoke_2;
    v50[3] = &unk_2785A1EF8;
    v30 = requestCopy;
    v51 = v30;
    v28 = v29;
    v52 = v28;
    v53 = v16;
    v31 = [v21 sinkWithCompletion:v54 shouldContinue:v50];
    if (*(v58 + 5))
    {
      v32 = __atxlog_handle_settings_actions(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [ATXSettingsActionsServer recentActionsWithRequest:completionHandler:];
      }

      v33 = *(v58 + 5);
      v34 = v33;
      if (!v33)
      {
        v34 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATXSettingsActionsServer" code:-2 userInfo:0];
      }

      v35 = handlerCopy[2](handlerCopy, 0, v34);
      if (!v33)
      {
      }

      v36 = __atxlog_handle_settings_actions(v35);
      v37 = v36;
      if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        *v55 = 0;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v37, OS_SIGNPOST_INTERVAL_END, spid, "RetrieveRecentActions", " enableTelemetry=YES ", v55, 2u);
      }
    }

    else
    {
      v37 = objc_opt_new();
      clientBundleID2 = [v30 clientBundleID];
      [v37 setClientBundleID:clientBundleID2];

      v39 = [v48 _suggestedActionsWithRequest:v37];
      clientBundleID3 = [v30 clientBundleID];
      v41 = [v48 _suggestedActionsWithDayZeroBackfillForDeduping:v39 clientBundleID:clientBundleID3];
      [v28 minusSet:v41];

      v42 = objc_alloc(MEMORY[0x277CEB810]);
      array = [v28 array];
      v44 = [v42 initWithActions:array];

      v45 = (handlerCopy)[2](handlerCopy, v44, 0);
      v46 = __atxlog_handle_settings_actions(v45);
      v47 = v46;
      if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
      {
        *v55 = 0;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v47, OS_SIGNPOST_INTERVAL_END, spid, "RetrieveRecentActions", " enableTelemetry=YES ", v55, 2u);
      }
    }
  }

  else
  {
    v23 = __atxlog_handle_settings_actions(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [ATXSettingsActionsServer recentActionsWithRequest:completionHandler:];
    }

    v24 = *(v58 + 5);
    v25 = v24;
    if (!v24)
    {
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATXSettingsActionsServer" code:-1 userInfo:0];
    }

    v26 = handlerCopy[2](handlerCopy, 0, v25);
    if (!v24)
    {
    }

    v27 = __atxlog_handle_settings_actions(v26);
    v28 = v27;
    if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *v55 = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v28, OS_SIGNPOST_INTERVAL_END, spid, "RetrieveRecentActions", " enableTelemetry=YES ", v55, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
}

void __71__ATXSettingsActionsServer_recentActionsWithRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 error];

  if (v3)
  {
    v4 = [v7 error];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

BOOL __71__ATXSettingsActionsServer_recentActionsWithRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 action];

  if (v5 && ([v3 eventBody], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "predictions"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8) && (objc_msgSend(*(a1 + 32), "clientBundleID"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "eventBody"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "bundleIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v9, "isEqualToString:", v11), v11, v10, v9, v12) && (v13 = MEMORY[0x277CEB7F8], objc_msgSend(v3, "eventBody"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "bundleIdentifier"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "eventBody"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "action"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "identifier"), v18 = objc_claimAutoreleasedReturnValue(), LODWORD(v13) = objc_msgSend(v13, "isActionEligibleForAnySettingsSuggestionsWithBundleIdentifier:actionIdentifier:", v15, v18), v18, v17, v16, v15, v14, v13))
  {
    v19 = objc_alloc(MEMORY[0x277CEB7F8]);
    v20 = [v3 eventBody];
    v21 = [v20 action];
    v22 = [v3 eventBody];
    v23 = [v22 executionDate];
    v24 = [v19 initWithAction:v21 date:v23];

    if (([v24 bundleIdentifierIsHiddenForSettingsAction] & 1) == 0)
    {
      [*(a1 + 40) addObject:v24];
    }

    v25 = [*(a1 + 40) count] < *(a1 + 48);
  }

  else
  {
    v25 = 1;
  }

  return v25;
}

- (id)_suggestedActionsWithDayZeroBackfillForDeduping:(id)deduping clientBundleID:(id)d
{
  dedupingCopy = deduping;
  dCopy = d;
  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:dedupingCopy];
  if (dCopy && [dCopy isEqualToString:@"com.apple.Bridge"])
  {
    _dummyDayZeroWatchAppSettingsActionsForDeduping = [(ATXSettingsActionsServer *)self _dummyDayZeroWatchAppSettingsActionsForDeduping];
  }

  else
  {
    _dummyDayZeroWatchAppSettingsActionsForDeduping = [(ATXSettingsActionsServer *)self _dummyDayZeroSettingsActionsForDeduping];
  }

  v10 = _dummyDayZeroWatchAppSettingsActionsForDeduping;
  if ([v8 count] <= 3)
  {
    do
    {
      if (![v10 count])
      {
        break;
      }

      v11 = [v10 objectAtIndexedSubscript:0];
      [v10 removeObjectAtIndex:0];
      [v8 addObject:v11];
    }

    while ([v8 count] < 4);
  }

  return v8;
}

@end