@interface ATXNotificationSmartPauseManager
- (ATXNotificationSmartPauseManager)init;
- (ATXNotificationSmartPauseManager)initWithNotificationAndSuggestionDataStore:(id)store;
- (id)_dictionaryForQueryResults:(id)results;
- (id)_proposeSmartPauseForNotification:(id)notification threadData:(id)data bundleData:(id)bundleData;
- (id)activeSuggestions;
- (id)currentSuggestionsGivenCandiateNotifications:(id)notifications;
@end

@implementation ATXNotificationSmartPauseManager

- (ATXNotificationSmartPauseManager)init
{
  v3 = objc_opt_new();
  v4 = [(ATXNotificationSmartPauseManager *)self initWithNotificationAndSuggestionDataStore:v3];

  return v4;
}

- (ATXNotificationSmartPauseManager)initWithNotificationAndSuggestionDataStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = ATXNotificationSmartPauseManager;
  v6 = [(ATXNotificationSmartPauseManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataStore, store);
    mEMORY[0x277CEB710] = [MEMORY[0x277CEB710] sharedInstance];
    notificationManagementMAConstants = v7->_notificationManagementMAConstants;
    v7->_notificationManagementMAConstants = mEMORY[0x277CEB710];
  }

  return v7;
}

- (id)_dictionaryForQueryResults:(id)results
{
  v21 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = resultsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        bundleId = [v11 bundleId];
        threadId = [v11 threadId];
        v14 = [(ATXNotificationSmartPauseManager *)self _queryResultIdentifierForBundleId:bundleId threadId:threadId];
        [v5 setObject:v11 forKeyedSubscript:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_proposeSmartPauseForNotification:(id)notification threadData:(id)data bundleData:(id)bundleData
{
  v56 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dataCopy = data;
  bundleDataCopy = bundleData;
  threadID = [notificationCopy threadID];

  if (!threadID)
  {
    if (bundleDataCopy)
    {
      countLastFiveMinutesPositiveEngagements = [bundleDataCopy countLastFiveMinutesPositiveEngagements];
      countLastFiveMinutesNotifications = [bundleDataCopy countLastFiveMinutesNotifications];
      v35 = countLastFiveMinutesPositiveEngagements / countLastFiveMinutesNotifications;
      v36 = __atxlog_handle_notification_management(countLastFiveMinutesNotifications);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [ATXNotificationSmartPauseManager _proposeSmartPauseForNotification:bundleDataCopy threadData:v36 bundleData:v35];
      }

      countLastFiveMinutesNotifications2 = [bundleDataCopy countLastFiveMinutesNotifications];
      if (countLastFiveMinutesNotifications2 > [(ATXNotificationManagementMAConstants *)self->_notificationManagementMAConstants smartPauseManagerThresholdForNumNotificationsReceivedInLastFiveMinutesForApp])
      {
        smartPauseManagerEngagementRateThresholdForApp = [(ATXNotificationManagementMAConstants *)self->_notificationManagementMAConstants smartPauseManagerEngagementRateThresholdForApp];
        if (v35 <= v39)
        {
          v42 = __atxlog_handle_notification_management(smartPauseManagerEngagementRateThresholdForApp);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            [ATXNotificationSmartPauseManager _proposeSmartPauseForNotification:v42 threadData:? bundleData:?];
          }

          v43 = objc_alloc(MEMORY[0x277CEB758]);
          v44 = MEMORY[0x277CBEAA8];
          [(ATXNotificationManagementMAConstants *)self->_notificationManagementMAConstants smartPauseManagerExpirationSeconds];
          v45 = [v44 dateWithTimeIntervalSinceNow:?];
          [(ATXNotificationManagementMAConstants *)self->_notificationManagementMAConstants smartPauseManagerPauseDurationSeconds];
          v23 = [v43 initWithSuggestionExpiration:v45 pauseDuration:?];

          v46 = objc_alloc(MEMORY[0x277CEB6F0]);
          uUID = [MEMORY[0x277CCAD78] UUID];
          bundleID = [notificationCopy bundleID];
          v27 = [MEMORY[0x277CBEAA8] now];
          uuid = [notificationCopy uuid];
          v29 = v46;
          v30 = v23;
          v31 = uUID;
          v32 = 1;
          goto LABEL_22;
        }
      }
    }

LABEL_15:
    v40 = 0;
    goto LABEL_16;
  }

  if (!dataCopy)
  {
    goto LABEL_15;
  }

  countLastFiveMinutesPositiveEngagements2 = [dataCopy countLastFiveMinutesPositiveEngagements];
  countLastFiveMinutesNotifications3 = [dataCopy countLastFiveMinutesNotifications];
  v14 = countLastFiveMinutesPositiveEngagements2 / countLastFiveMinutesNotifications3;
  v15 = __atxlog_handle_notification_management(countLastFiveMinutesNotifications3);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    threadID2 = [notificationCopy threadID];
    v48 = 136315906;
    v49 = "[ATXNotificationSmartPauseManager _proposeSmartPauseForNotification:threadData:bundleData:]";
    v50 = 2112;
    v51 = threadID2;
    v52 = 2048;
    countLastFiveMinutesNotifications4 = [dataCopy countLastFiveMinutesNotifications];
    v54 = 2048;
    v55 = v14;
    _os_log_debug_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEBUG, "%s: Considering SmartPause suggestion for thread: %@ countLastFiveMinutesNotifications: %ld lastFiveMinutesEngagementRate: %f", &v48, 0x2Au);
  }

  countLastFiveMinutesNotifications5 = [dataCopy countLastFiveMinutesNotifications];
  if (countLastFiveMinutesNotifications5 <= [(ATXNotificationManagementMAConstants *)self->_notificationManagementMAConstants smartPauseManagerThresholdForNumNotificationsReceivedInLastFiveMinutesForThread])
  {
    goto LABEL_15;
  }

  smartPauseManagerEngagementRateThresholdForThread = [(ATXNotificationManagementMAConstants *)self->_notificationManagementMAConstants smartPauseManagerEngagementRateThresholdForThread];
  if (v14 > v18)
  {
    goto LABEL_15;
  }

  v19 = __atxlog_handle_notification_management(smartPauseManagerEngagementRateThresholdForThread);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [ATXNotificationSmartPauseManager _proposeSmartPauseForNotification:v19 threadData:? bundleData:?];
  }

  v20 = objc_alloc(MEMORY[0x277CEB758]);
  v21 = MEMORY[0x277CBEAA8];
  [(ATXNotificationManagementMAConstants *)self->_notificationManagementMAConstants smartPauseManagerExpirationSeconds];
  v22 = [v21 dateWithTimeIntervalSinceNow:?];
  [(ATXNotificationManagementMAConstants *)self->_notificationManagementMAConstants smartPauseManagerPauseDurationSeconds];
  v23 = [v20 initWithSuggestionExpiration:v22 pauseDuration:?];

  v24 = objc_alloc(MEMORY[0x277CEB6F0]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  bundleID = [notificationCopy threadID];
  v27 = [MEMORY[0x277CBEAA8] now];
  uuid = [notificationCopy uuid];
  v29 = v24;
  v30 = v23;
  v31 = uUID;
  v32 = 2;
LABEL_22:
  v40 = [v29 initWithSmartPauseSuggestion:v30 uuid:v31 scope:v32 entityIdentifier:bundleID timestamp:v27 triggerNotificationUUID:uuid];

LABEL_16:

  return v40;
}

- (id)currentSuggestionsGivenCandiateNotifications:(id)notifications
{
  notificationsCopy = notifications;
  v5 = __atxlog_handle_notification_management(notificationsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ATXNotificationSmartPauseManager *)notificationsCopy currentSuggestionsGivenCandiateNotifications:v5];
  }

  dataStore = self->_dataStore;
  v7 = [notificationsCopy _pas_mappedArrayWithTransform:&__block_literal_global_111];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = [(ATXNotificationAndSuggestionDatastore *)dataStore getSmartPauseFeaturesForBundleIds:v7 sinceTimestamp:v8 + -2592000.0];

  v25 = [(ATXNotificationSmartPauseManager *)self _dictionaryForQueryResults:v9];
  v24 = [ATXSmartPauseDatabaseQueryResult groupByBundleId:v9];
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v11 = MEMORY[0x277CBEAA8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v13 = [v11 dateWithTimeIntervalSinceReferenceDate:v12 + -300.0];
  v14 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v13 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v15 = BiomeLibrary();
  v16 = [v15 App];
  inFocus = [v16 InFocus];
  v18 = [inFocus publisherWithUseCase:*MEMORY[0x277CEBB48] options:v14];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __81__ATXNotificationSmartPauseManager_currentSuggestionsGivenCandiateNotifications___block_invoke_2;
  v33[3] = &unk_278597540;
  v33[4] = &v34;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __81__ATXNotificationSmartPauseManager_currentSuggestionsGivenCandiateNotifications___block_invoke_31;
  v31[3] = &unk_278596F60;
  v19 = v10;
  v32 = v19;
  v20 = [v18 sinkWithCompletion:v33 receiveInput:v31];
  if (v35[3])
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __81__ATXNotificationSmartPauseManager_currentSuggestionsGivenCandiateNotifications___block_invoke_33;
    v26[3] = &unk_27859D110;
    v27 = v19;
    v28 = v25;
    selfCopy = self;
    v30 = v24;
    v21 = [notificationsCopy _pas_mappedArrayWithTransform:v26];

    v22 = v27;
  }

  else
  {
    v22 = __atxlog_handle_notification_management(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationSmartPauseManager currentSuggestionsGivenCandiateNotifications:v22];
    }

    v21 = MEMORY[0x277CBEBF8];
  }

  _Block_object_dispose(&v34, 8);

  return v21;
}

void __81__ATXNotificationSmartPauseManager_currentSuggestionsGivenCandiateNotifications___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  if (v4)
  {
    if (v4 == 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      v5 = __atxlog_handle_notification_management(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __81__ATXNotificationSmartPauseManager_currentSuggestionsGivenCandiateNotifications___block_invoke_2_cold_1(v3, v5);
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void __81__ATXNotificationSmartPauseManager_currentSuggestionsGivenCandiateNotifications___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 bundleID];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }

    v3 = v5;
  }
}

id __81__ATXNotificationSmartPauseManager_currentSuggestionsGivenCandiateNotifications___block_invoke_33(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 bundleID];
  if (!v4)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_8;
  }

  v5 = [*(a1 + 32) containsObject:v4];
  if (v5)
  {
    v6 = __atxlog_handle_notification_management(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "[ATXNotificationSmartPauseManager currentSuggestionsGivenCandiateNotifications:]_block_invoke";
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%s: Found app launch for bundleId: %@ in the last five minutes so not showing SmartPause for notification: %@", &v15, 0x20u);
    }

    goto LABEL_6;
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = [v3 threadID];
  v11 = [v9 _queryResultIdentifierForBundleId:v4 threadId:v10];
  v12 = [v8 objectForKeyedSubscript:v11];

  v13 = [*(a1 + 56) objectForKeyedSubscript:v4];
  v7 = [*(a1 + 48) _proposeSmartPauseForNotification:v3 threadData:v12 bundleData:v13];

LABEL_8:

  return v7;
}

- (id)activeSuggestions
{
  v3 = [(ATXNotificationAndSuggestionDatastore *)self->_dataStore getTopOfProminentStackNotificationsWithLimit:10];
  v4 = [(ATXNotificationSmartPauseManager *)self currentSuggestionsGivenCandiateNotifications:v3];

  return v4;
}

- (void)_proposeSmartPauseForNotification:(os_log_t)log threadData:bundleData:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ATXNotificationSmartPauseManager _proposeSmartPauseForNotification:threadData:bundleData:]";
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "%s: Sending SmartPause suggestion for notification", &v1, 0xCu);
}

- (void)_proposeSmartPauseForNotification:(void *)a1 threadData:(NSObject *)a2 bundleData:(double)a3 .cold.2(void *a1, NSObject *a2, double a3)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 countLastFiveMinutesNotifications];
  v6[0] = 136315650;
  OUTLINED_FUNCTION_0_23();
  v7 = v5;
  v8 = a3;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "%s: Considering SmartPause suggestion for app, countLastFiveMinutesNotifications: %ld lastFiveMinutesEngagementRate: %f", v6, 0x20u);
}

- (void)_proposeSmartPauseForNotification:(os_log_t)log threadData:bundleData:.cold.3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ATXNotificationSmartPauseManager _proposeSmartPauseForNotification:threadData:bundleData:]";
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "%s: Sending SmartPause suggestion for app", &v1, 0xCu);
}

- (void)currentSuggestionsGivenCandiateNotifications:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  [a1 count];
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0_23();
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "%s: Fetching SmartPause suggestions for %ld candidate notifications", v3, 0x16u);
}

- (void)currentSuggestionsGivenCandiateNotifications:(os_log_t)log .cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ATXNotificationSmartPauseManager currentSuggestionsGivenCandiateNotifications:]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: Not returning any SmartPause suggestions because reading app launch events from Biome failed", &v1, 0xCu);
}

void __81__ATXNotificationSmartPauseManager_currentSuggestionsGivenCandiateNotifications___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = 136315394;
  v5 = "[ATXNotificationSmartPauseManager currentSuggestionsGivenCandiateNotifications:]_block_invoke_2";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: Error while reading from biome: %@", &v4, 0x16u);
}

@end