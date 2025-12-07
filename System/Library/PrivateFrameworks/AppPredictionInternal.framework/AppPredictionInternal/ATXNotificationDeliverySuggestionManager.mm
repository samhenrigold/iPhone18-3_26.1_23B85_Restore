@interface ATXNotificationDeliverySuggestionManager
- (ATXNotificationDeliverySuggestionManager)init;
- (ATXNotificationDeliverySuggestionManager)initWithDataStore:(id)store suggestionBiomeStream:(id)stream;
- (BOOL)digestHasBeenShownEnoughTimes;
- (BOOL)shouldShowSuggestion:(id)suggestion withFeedback:(id)feedback;
- (id)deduplicatedSuggestions:(id)suggestions;
- (id)filteredSuggestionsBasedOnFeedback:(id)feedback;
- (id)maxOneSuggestionFromSuggestions:(id)suggestions;
- (unint64_t)currentMode;
- (unint64_t)getScoreForSuggestion:(id)suggestion;
- (void)_activeSuggestionsWithReply:(id)reply;
- (void)activeSuggestionsWithReply:(id)reply;
- (void)logSuggestionsToBiome:(id)biome;
@end

@implementation ATXNotificationDeliverySuggestionManager

- (ATXNotificationDeliverySuggestionManager)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ATXNotificationDeliverySuggestionManager *)self initWithDataStore:v3 suggestionBiomeStream:v4];

  return v5;
}

- (ATXNotificationDeliverySuggestionManager)initWithDataStore:(id)store suggestionBiomeStream:(id)stream
{
  storeCopy = store;
  streamCopy = stream;
  v24.receiver = self;
  v24.super_class = ATXNotificationDeliverySuggestionManager;
  v9 = [(ATXNotificationDeliverySuggestionManager *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataStore, store);
    objc_storeStrong(&v10->_biomeStream, stream);
    v11 = [[ATXNotificationSmartPauseManager alloc] initWithNotificationAndSuggestionDataStore:v10->_dataStore];
    smartPauseManager = v10->_smartPauseManager;
    v10->_smartPauseManager = v11;

    v13 = [[ATXSendMessagesToDigestManager alloc] initWithDataStore:v10->_dataStore];
    sendMessagesToDigestManager = v10->_sendMessagesToDigestManager;
    v10->_sendMessagesToDigestManager = v13;

    v15 = [[ATXSendToDigestManager alloc] initWithDataStore:v10->_dataStore];
    sendToDigestManager = v10->_sendToDigestManager;
    v10->_sendToDigestManager = v15;

    v17 = [[ATXTurnOffNotificationsForAppSuggestionManager alloc] initWithDataStore:v10->_dataStore];
    turnOffNotificationsForAppManager = v10->_turnOffNotificationsForAppManager;
    v10->_turnOffNotificationsForAppManager = v17;

    mEMORY[0x277CEB710] = [MEMORY[0x277CEB710] sharedInstance];
    constants = v10->_constants;
    v10->_constants = mEMORY[0x277CEB710];

    v21 = objc_alloc_init(ATXChinSuggestionThrottlingManager);
    throttlingManager = v10->_throttlingManager;
    v10->_throttlingManager = v21;
  }

  return v10;
}

- (unint64_t)currentMode
{
  v11 = *MEMORY[0x277D85DE8];
  currentModeSemanticType = [MEMORY[0x277D41C60] currentModeSemanticType];
  if (currentModeSemanticType)
  {
    mEMORY[0x277CEB440] = [MEMORY[0x277CEB440] sharedInstance];
    v4 = [mEMORY[0x277CEB440] atxModeForDNDSemanticType:{objc_msgSend(currentModeSemanticType, "integerValue")}];

    v6 = __atxlog_handle_notification_management(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = ATXModeToString();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Notification delivery suggestion manager: Current mode is %{public}@", &v9, 0xCu);
    }
  }

  else
  {
    v6 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Notification delivery suggestion manager: User is not currently in a mode", &v9, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)digestHasBeenShownEnoughTimes
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277D41CF0]];
  if ([v4 BOOLForKey:@"digestInstances"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2419200.0];
    v7 = objc_opt_new();
    [v6 timeIntervalSinceReferenceDate];
    v8 = [v7 publisherFromStartTime:?];

    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__ATXNotificationDeliverySuggestionManager_digestHasBeenShownEnoughTimes__block_invoke;
    v13[3] = &unk_278596E58;
    v13[4] = self;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__ATXNotificationDeliverySuggestionManager_digestHasBeenShownEnoughTimes__block_invoke_35;
    v12[3] = &unk_27859E510;
    v12[4] = &v14;
    v12[5] = 7;
    v9 = [v8 drivableSinkWithBookmark:0 completion:v13 shouldContinue:v12];
    v10 = v15[3];
    v5 = v10 == 7;
    if (v10 == 7)
    {
      [v4 setBool:1 forKey:@"digestInstances"];
    }

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

void __73__ATXNotificationDeliverySuggestionManager_digestHasBeenShownEnoughTimes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v6 = __atxlog_handle_metrics(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __73__ATXNotificationDeliverySuggestionManager_digestHasBeenShownEnoughTimes__block_invoke_cold_1(a1, v3, v6);
    }
  }
}

- (void)activeSuggestionsWithReply:(id)reply
{
  replyCopy = reply;
  throttlingManager = self->_throttlingManager;
  v6 = [ATXChinSuggestionRequest alloc];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__ATXNotificationDeliverySuggestionManager_activeSuggestionsWithReply___block_invoke;
  v11[3] = &unk_2785968C8;
  v11[4] = self;
  v12 = replyCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__ATXNotificationDeliverySuggestionManager_activeSuggestionsWithReply___block_invoke_2;
  v9[3] = &unk_2785969B8;
  v10 = v12;
  v7 = v12;
  v8 = [(ATXChinSuggestionRequest *)v6 initWithAcceptedBlock:v11 rejectedBlock:v9];
  [(ATXChinSuggestionThrottlingManager *)throttlingManager scheduleRequest:v8];
}

void __71__ATXNotificationDeliverySuggestionManager_activeSuggestionsWithReply___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEB1A8] code:2 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)_activeSuggestionsWithReply:(id)reply
{
  v59 = *MEMORY[0x277D85DE8];
  constants = self->_constants;
  replyCopy = reply;
  chinSuggestionsAreDisabled = [(ATXNotificationManagementMAConstants *)constants chinSuggestionsAreDisabled];
  v7 = __atxlog_handle_notification_management(chinSuggestionsAreDisabled);
  v8 = v7;
  if (chinSuggestionsAreDisabled)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v56 = "[ATXNotificationDeliverySuggestionManager _activeSuggestionsWithReply:]";
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: Chin suggestions are disabled. Returning empty array.", buf, 0xCu);
    }

    (*(replyCopy + 2))(replyCopy, MEMORY[0x277CBEBF8], 0);
    activeSuggestions = replyCopy;
  }

  else
  {
    v10 = os_signpost_id_generate(v7);

    v12 = __atxlog_handle_notification_management(v11);
    v13 = v12;
    v54 = v10 - 1;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ATXNotificationDeliverySuggestionManager.activeSuggestionsWithReply", " enableTelemetry=YES ", buf, 2u);
    }

    v15 = __atxlog_handle_notification_management(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v56 = "[ATXNotificationDeliverySuggestionManager _activeSuggestionsWithReply:]";
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "%s called. Updating the datastore...", buf, 0xCu);
    }

    spid = v10;

    v16 = __atxlog_handle_notification_management([(ATXNotificationAndSuggestionDatastore *)self->_dataStore updateDatabase]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_INFO, "Querying sub-models...", buf, 2u);
    }

    activeSuggestions = [(ATXNotificationSmartPauseManager *)self->_smartPauseManager activeSuggestions];
    v17 = __atxlog_handle_notification_management(activeSuggestions);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [activeSuggestions count];
      *buf = 134217984;
      v56 = v18;
      _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_INFO, "Suggestion manager received %lu Smart Pause suggestions", buf, 0xCu);
    }

    v19 = objc_opt_new();
    v20 = [v19 activeNotificationSuggestionsForMode:{-[ATXNotificationDeliverySuggestionManager currentMode](self, "currentMode")}];

    v22 = __atxlog_handle_notification_management(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v20 count];
      *buf = 134217984;
      v56 = v23;
      _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_INFO, "Suggestion manager received %lu Mode Configuration Tuning Suggestions", buf, 0xCu);
    }

    v25 = __atxlog_handle_notification_management(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v20;
      _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "Suggestion manager received Mode Configuration Tuning Suggestions:%@", buf, 0xCu);
    }

    activeSuggestions2 = [(ATXSendMessagesToDigestManager *)self->_sendMessagesToDigestManager activeSuggestions];
    v27 = __atxlog_handle_notification_management(activeSuggestions2);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [activeSuggestions2 count];
      *buf = 134217984;
      v56 = v28;
      _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_INFO, "Suggestion manager received %lu Send Messages To Digest Suggestions", buf, 0xCu);
    }

    activeSuggestions3 = [(ATXSendToDigestManager *)self->_sendToDigestManager activeSuggestions];
    v30 = __atxlog_handle_notification_management(activeSuggestions3);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = [activeSuggestions3 count];
      *buf = 134217984;
      v56 = v31;
      _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_INFO, "Suggestion manager received %lu Send To Digest Suggestions", buf, 0xCu);
    }

    activeSuggestions4 = [(ATXTurnOffNotificationsForAppSuggestionManager *)self->_turnOffNotificationsForAppManager activeSuggestions];
    v33 = __atxlog_handle_notification_management(activeSuggestions4);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = [activeSuggestions4 count];
      *buf = 134217984;
      v56 = v34;
      _os_log_impl(&dword_2263AA000, v33, OS_LOG_TYPE_INFO, "Suggestion manager received %lu TurnOffNotificationsForApp suggestions", buf, 0xCu);
    }

    digestHasBeenShownEnoughTimes = [(ATXNotificationDeliverySuggestionManager *)self digestHasBeenShownEnoughTimes];
    v36 = objc_opt_new();
    v37 = v36;
    if (activeSuggestions)
    {
      v36 = [v36 addObjectsFromArray:activeSuggestions];
    }

    if (v20)
    {
      v36 = [v37 addObjectsFromArray:v20];
    }

    if (activeSuggestions2 != 0 && digestHasBeenShownEnoughTimes)
    {
      v36 = [v37 addObjectsFromArray:activeSuggestions2];
    }

    if (activeSuggestions3 != 0 && digestHasBeenShownEnoughTimes)
    {
      v36 = [v37 addObjectsFromArray:activeSuggestions3];
    }

    if (activeSuggestions4)
    {
      v36 = [v37 addObjectsFromArray:activeSuggestions4];
    }

    v52 = activeSuggestions3;
    v38 = __atxlog_handle_notification_management(v36);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v37;
      _os_log_impl(&dword_2263AA000, v38, OS_LOG_TYPE_DEFAULT, "All suggestions: %@", buf, 0xCu);
    }

    v53 = activeSuggestions2;

    v39 = [(ATXNotificationDeliverySuggestionManager *)self filteredSuggestionsBasedOnFeedback:v37];
    v40 = __atxlog_handle_notification_management(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v39;
      _os_log_impl(&dword_2263AA000, v40, OS_LOG_TYPE_DEFAULT, "Suggestions after removing recently shown: %@", buf, 0xCu);
    }

    v41 = v20;

    v42 = [(ATXNotificationDeliverySuggestionManager *)self deduplicatedSuggestions:v39];
    v43 = __atxlog_handle_notification_management(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v42;
      _os_log_impl(&dword_2263AA000, v43, OS_LOG_TYPE_DEFAULT, "Suggestions after deduplicating: %@", buf, 0xCu);
    }

    v44 = [(ATXNotificationDeliverySuggestionManager *)self maxOneSuggestionFromSuggestions:v42];
    v45 = __atxlog_handle_notification_management(v44);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v44;
      _os_log_impl(&dword_2263AA000, v45, OS_LOG_TYPE_DEFAULT, "Suggestions after thresholding: %@", buf, 0xCu);
    }

    v46 = __atxlog_handle_notification_management([(ATXNotificationDeliverySuggestionManager *)self logSuggestionsToBiome:v44]);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [v44 count];
      *buf = 136315394;
      v56 = "[ATXNotificationDeliverySuggestionManager _activeSuggestionsWithReply:]";
      v57 = 2048;
      v58 = v47;
      _os_log_impl(&dword_2263AA000, v46, OS_LOG_TYPE_DEFAULT, "%s returning %lu suggestions", buf, 0x16u);
    }

    (*(replyCopy + 2))(replyCopy, v44, 0);
    v49 = __atxlog_handle_notification_management(v48);
    v50 = v49;
    if (v54 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v50, OS_SIGNPOST_INTERVAL_END, spid, "ATXNotificationDeliverySuggestionManager.activeSuggestionsWithReply", " enableTelemetry=YES ", buf, 2u);
    }
  }
}

- (id)filteredSuggestionsBasedOnFeedback:(id)feedback
{
  v4 = MEMORY[0x277CBEB98];
  feedbackCopy = feedback;
  v6 = [feedbackCopy _pas_mappedArrayWithTransform:&__block_literal_global_140];
  v7 = [v4 setWithArray:v6];

  dataStore = self->_dataStore;
  allObjects = [v7 allObjects];
  v10 = [(ATXNotificationAndSuggestionDatastore *)dataStore feedbackHistoriesForKeys:allObjects];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__ATXNotificationDeliverySuggestionManager_filteredSuggestionsBasedOnFeedback___block_invoke_2;
  v14[3] = &unk_27859E558;
  v15 = v10;
  selfCopy = self;
  v11 = v10;
  v12 = [feedbackCopy _pas_filteredArrayWithTest:v14];

  return v12;
}

uint64_t __79__ATXNotificationDeliverySuggestionManager_filteredSuggestionsBasedOnFeedback___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 subtype] == 9)
  {
    v4 = 1;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [v3 feedbackKey];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7)
    {
      v4 = [*(a1 + 40) shouldShowSuggestion:v3 withFeedback:v7];
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (BOOL)shouldShowSuggestion:(id)suggestion withFeedback:(id)feedback
{
  v62 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  feedbackCopy = feedback;
  selfCopy = self;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[ATXNotificationManagementMAConstants numIgnoresToReject](self->_constants, "numIgnoresToReject")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v8 = feedbackCopy;
  v9 = [v8 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    createdTimestamp = 0;
    v13 = 0;
    v14 = *v50;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        if ([v16 latestOutcome] == 1 || objc_msgSend(v16, "latestOutcome") == 4)
        {
          ++v13;
          if (!createdTimestamp)
          {
            createdTimestamp = [v16 createdTimestamp];
          }
        }

        else if ([v16 latestOutcome] == 6)
        {
          ++v11;
          v17 = [v7 count];
          if (v17 < [(ATXNotificationManagementMAConstants *)selfCopy->_constants numIgnoresToReject])
          {
            createdTimestamp2 = [v16 createdTimestamp];
            [v7 addObject:createdTimestamp2];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    createdTimestamp = 0;
    v13 = 0;
  }

  v19 = v11 % [(ATXNotificationManagementMAConstants *)selfCopy->_constants numIgnoresToReject];
  if (v19 >= [v7 count])
  {
    v20 = 0;
  }

  else
  {
    v20 = [v7 objectAtIndexedSubscript:v19];
  }

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v22 = distantPast;
  if (createdTimestamp)
  {
    v23 = [distantPast laterDate:createdTimestamp];

    v22 = v23;
  }

  v24 = v47;
  if (v20)
  {
    v25 = [v22 laterDate:v20];

    v22 = v25;
  }

  v26 = v11 / [(ATXNotificationManagementMAConstants *)selfCopy->_constants numIgnoresToReject]+ v13;
  if (v26)
  {
    v27 = v26;
    if ([v47 subtype] == 4)
    {
      [(ATXNotificationManagementMAConstants *)selfCopy->_constants smartPauseTimeoutScaleFactor];
      v29 = v28;
      [(ATXNotificationManagementMAConstants *)selfCopy->_constants smartPauseStartTimeoutSeconds];
    }

    else if ([v47 subtype] == 5)
    {
      [(ATXNotificationManagementMAConstants *)selfCopy->_constants interruptionManagementTimeoutScaleFactor];
      v29 = v32;
      [(ATXNotificationManagementMAConstants *)selfCopy->_constants interruptionManagementStartTimeoutSeconds];
    }

    else
    {
      subtype = [v47 subtype];
      constants = selfCopy->_constants;
      if (subtype == 6)
      {
        [(ATXNotificationManagementMAConstants *)constants sendToDigestTimeoutScaleFactor];
        v29 = v35;
        [(ATXNotificationManagementMAConstants *)selfCopy->_constants sendToDigestStartTimeoutSeconds];
      }

      else
      {
        [(ATXNotificationManagementMAConstants *)constants backupTimeoutScaleFactor];
        v29 = v36;
        [(ATXNotificationManagementMAConstants *)selfCopy->_constants backupStartTimeoutSeconds];
      }
    }

    v37 = [v22 dateByAddingTimeInterval:{(v30 * pow(v29, v27 + -1.0))}];
    v38 = [MEMORY[0x277CBEAA8] now];
    v39 = [v38 compare:v37];
    v31 = v39 == 1;

    v41 = __atxlog_handle_notification_management(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = @"NO";
      *buf = 138413058;
      v54 = v44;
      v55 = 2112;
      if (v39 == 1)
      {
        v45 = @"YES";
      }

      v56 = v47;
      v57 = 2112;
      v58 = v37;
      v59 = 2112;
      v60 = v45;
      _os_log_debug_impl(&dword_2263AA000, v41, OS_LOG_TYPE_DEBUG, "%@ - Suggestion %@ has next eligible timestamp %@.  Should show is %@", buf, 0x2Au);

      v24 = v47;
    }
  }

  else
  {
    v31 = 1;
  }

  return v31;
}

- (id)deduplicatedSuggestions:(id)suggestions
{
  v26 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  currentActiveSuggestions = [(ATXNotificationDeliverySuggestionManager *)self currentActiveSuggestions];
  if ([currentActiveSuggestions count])
  {
    allValues = [currentActiveSuggestions allValues];
    firstObject = [allValues firstObject];

    v19 = firstObject;
    entityIdentifier = [firstObject entityIdentifier];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = suggestionsCopy;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          entityIdentifier2 = [v14 entityIdentifier];
          v16 = [entityIdentifier2 isEqualToString:entityIdentifier];

          if (v16)
          {
            v24 = v14;
            v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];

            goto LABEL_13;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  v17 = suggestionsCopy;
LABEL_13:

  return v17;
}

- (unint64_t)getScoreForSuggestion:(id)suggestion
{
  subtype = [suggestion subtype];
  if (subtype > 0xA)
  {
    return 9;
  }

  else
  {
    return qword_2268725C0[subtype];
  }
}

- (id)maxOneSuggestionFromSuggestions:(id)suggestions
{
  v23 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [suggestionsCopy countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = *v18;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(suggestionsCopy);
      }

      v11 = *(*(&v17 + 1) + 8 * i);
      v12 = [(ATXNotificationDeliverySuggestionManager *)self getScoreForSuggestion:v11];
      if (v12 > v8)
      {
        v13 = v12;
        v14 = v11;

        v7 = v14;
        v8 = v13;
      }
    }

    v6 = [suggestionsCopy countByEnumeratingWithState:&v17 objects:v22 count:16];
  }

  while (v6);
  if (v7)
  {
    v21 = v7;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  }

  else
  {
LABEL_12:
    v15 = MEMORY[0x277CBEBF8];
  }

  return v15;
}

- (void)logSuggestionsToBiome:(id)biome
{
  v22 = *MEMORY[0x277D85DE8];
  biomeCopy = biome;
  v5 = __atxlog_handle_notification_management(biomeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = [biomeCopy count];
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Replying with notification adjacent suggestions: %lu suggestions", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = biomeCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = __atxlog_handle_notification_management(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v21 = v11;
          _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "notification adjacent suggestion: %@", buf, 0xCu);
        }

        source = [(ATXNotificationSuggestionBiomeStream *)self->_biomeStream source];
        [source sendEvent:v11];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

void __73__ATXNotificationDeliverySuggestionManager_digestHasBeenShownEnoughTimes__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 error];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "[%@] Error while sinking Biome stream: %@.", &v8, 0x16u);
}

@end