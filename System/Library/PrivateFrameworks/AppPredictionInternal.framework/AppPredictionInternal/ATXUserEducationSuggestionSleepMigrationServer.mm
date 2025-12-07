@interface ATXUserEducationSuggestionSleepMigrationServer
- (ATXUserEducationSuggestionSleepMigrationServer)initWithConnector:(id)connector;
- (void)_processModeChangeEvent:(id)event;
- (void)dealloc;
- (void)processModeChangeEvent:(id)event;
- (void)sendSuggestion:(id)suggestion withEventType:(unint64_t)type;
@end

@implementation ATXUserEducationSuggestionSleepMigrationServer

- (ATXUserEducationSuggestionSleepMigrationServer)initWithConnector:(id)connector
{
  v18 = *MEMORY[0x277D85DE8];
  connectorCopy = connector;
  v15.receiver = self;
  v15.super_class = ATXUserEducationSuggestionSleepMigrationServer;
  v6 = [(ATXUserEducationSuggestionBaseServer *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_context_user_education_suggestions(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[ATXUserEducationSuggestionSleepMigrationServer initWithConnector:]";
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: starting server", buf, 0xCu);
    }

    v9 = objc_alloc_init(MEMORY[0x277CEB568]);
    homeScreenConfigCache = v7->_homeScreenConfigCache;
    v7->_homeScreenConfigCache = v9;

    v11 = objc_alloc_init(MEMORY[0x277CEB5D0]);
    installedSuggestedPagesTracker = v7->_installedSuggestedPagesTracker;
    v7->_installedSuggestedPagesTracker = v11;

    objc_storeStrong(&v7->_connector, connector);
    v13 = +[ATXUserEducationSuggestionModeChangeNotifier sharedInstance];
    [v13 registerObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[ATXUserEducationSuggestionModeChangeNotifier sharedInstance];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = ATXUserEducationSuggestionSleepMigrationServer;
  [(ATXUserEducationSuggestionSleepMigrationServer *)&v4 dealloc];
}

- (void)processModeChangeEvent:(id)event
{
  eventCopy = event;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__ATXUserEducationSuggestionSleepMigrationServer_processModeChangeEvent___block_invoke;
  v6[3] = &unk_278596C10;
  v6[4] = self;
  v7 = eventCopy;
  v5 = eventCopy;
  [(ATXUserEducationSuggestionBaseServer *)self performBlockOnInternalSerialQueue:v6];
}

- (void)_processModeChangeEvent:(id)event
{
  v46 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  semanticType = [eventCopy semanticType];
  v6 = semanticType;
  initWithRandomUUID = __atxlog_handle_context_user_education_suggestions(semanticType);
  v8 = os_log_type_enabled(initWithRandomUUID, OS_LOG_TYPE_DEFAULT);
  if (v6 == 3)
  {
    if (v8)
    {
      *buf = 136315394;
      v43 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
      v44 = 2114;
      v45 = eventCopy;
      _os_log_impl(&dword_2263AA000, initWithRandomUUID, OS_LOG_TYPE_DEFAULT, "%s: processing new userFocusComputedModeEvent: %{public}@", buf, 0x16u);
    }

    initWithRandomUUID = [objc_alloc(MEMORY[0x277CEB950]) initWithRandomUUID];
    suggestionWasAlreadyShown = [initWithRandomUUID suggestionWasAlreadyShown];
    suggestionWasAlreadyDismissed = [initWithRandomUUID suggestionWasAlreadyDismissed];
    starting = [eventCopy starting];
    if (starting)
    {
      if (suggestionWasAlreadyShown)
      {
        v12 = __atxlog_handle_context_user_education_suggestions(starting);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v43 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
          v13 = "%s: Not showing user education suggestion because it was already shown";
LABEL_28:
          v14 = v12;
          v15 = 12;
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      v16 = ATXSleepSuggestedHomePageWasCreatedDuringMigration();
      v17 = v16;
      if (v16)
      {
        bOOLValue = [v16 BOOLValue];
        if (bOOLValue)
        {

          v19 = objc_alloc(MEMORY[0x277CCAD78]);
          mode = [eventCopy mode];
          v17 = [v19 initWithUUIDString:mode];

          if (!v17)
          {
            v25 = __atxlog_handle_context_user_education_suggestions(v21);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:];
            }

            goto LABEL_49;
          }

          homeScreenConfigCache = self->_homeScreenConfigCache;
          v41 = 0;
          v23 = [(ATXHomeScreenConfigCache *)homeScreenConfigCache loadHomeScreenPageConfigurationsIncludingHidden:1 error:&v41];
          v24 = v41;
          v25 = v24;
          if (!v23 || v24)
          {
            v27 = __atxlog_handle_context_user_education_suggestions(v24);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              [ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:];
            }

            goto LABEL_48;
          }

          v26 = objc_opt_new();
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __74__ATXUserEducationSuggestionSleepMigrationServer__processModeChangeEvent___block_invoke;
          v38[3] = &unk_2785A0718;
          v39 = v17;
          v27 = v26;
          v40 = v27;
          [v23 enumerateObjectsUsingBlock:v38];
          v28 = [v27 count];
          if (v28 >= 2)
          {
            firstObject = __atxlog_handle_context_user_education_suggestions(v28);
            if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v43 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
              _os_log_impl(&dword_2263AA000, firstObject, OS_LOG_TYPE_DEFAULT, "%s: Not showing suggestion because there's more than 1 home page associated with sleep. This would be an indication that the user has customized their sleep pages, therefore doesn't qualify for the discovery platter.", buf, 0xCu);
            }

            goto LABEL_47;
          }

          firstObject = [v27 firstObject];
          uniqueIdentifier = [firstObject uniqueIdentifier];
          if ([uniqueIdentifier length])
          {
            installedSuggestedPagesTracker = self->_installedSuggestedPagesTracker;
            uniqueIdentifier2 = [firstObject uniqueIdentifier];
            v37 = [(ATXInstalledSuggestedPagesTracker *)installedSuggestedPagesTracker suggestedPageTypeWithIdentifier:uniqueIdentifier2];

            if (v37 == 4)
            {
              [(ATXUserEducationSuggestionSleepMigrationServer *)self sendSuggestion:initWithRandomUUID withEventType:0];
LABEL_47:

LABEL_48:
LABEL_49:

              goto LABEL_50;
            }
          }

          else
          {
          }

          v35 = __atxlog_handle_context_user_education_suggestions(v34);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v43 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
            _os_log_impl(&dword_2263AA000, v35, OS_LOG_TYPE_DEFAULT, "%s: Not showing suggestion because there aren't any installed suggested pages for sleep", buf, 0xCu);
          }

          goto LABEL_47;
        }

        v31 = __atxlog_handle_context_user_education_suggestions(bOOLValue);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v43 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
          _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "%s: Not showing user education suggestion because a suggested page was not created as part of the sleep migration flow, or the sleep migration didn't happen.", buf, 0xCu);
        }
      }

      else
      {
        v31 = __atxlog_handle_context_user_education_suggestions(0);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:v31];
        }
      }

LABEL_50:
      goto LABEL_51;
    }

    if (suggestionWasAlreadyDismissed & 1 | ((suggestionWasAlreadyShown & 1) == 0))
    {
      if ((suggestionWasAlreadyShown & 1) == 0)
      {
        v12 = __atxlog_handle_context_user_education_suggestions(starting);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v43 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
          v13 = "%s: Not dismissing suggestion because it hasn't been shown yet.";
          goto LABEL_28;
        }

        goto LABEL_30;
      }

      if (suggestionWasAlreadyDismissed)
      {
        v12 = __atxlog_handle_context_user_education_suggestions(starting);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v43 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
          v13 = "%s: Not dismissing suggestion because it has already been dismissed.";
          goto LABEL_28;
        }

LABEL_30:
      }
    }

    else
    {
      v30 = __atxlog_handle_context_user_education_suggestions(starting);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v43 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
        _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_DEFAULT, "%s: Dismissing suggestion because we're exiting Sleep mode and its been shown but not yet dismissed", buf, 0xCu);
      }

      [(ATXUserEducationSuggestionSleepMigrationServer *)self sendSuggestion:initWithRandomUUID withEventType:1];
    }
  }

  else if (v8)
  {
    [eventCopy atx_dndModeSemanticType];
    v12 = DNDModeSemanticTypeToString();
    *buf = 136315394;
    v43 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
    v44 = 2114;
    v45 = v12;
    v13 = "%s: Not processing mode change event because mode: %{public}@ is not Sleep";
    v14 = initWithRandomUUID;
    v15 = 22;
LABEL_29:
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
    goto LABEL_30;
  }

LABEL_51:
}

void __74__ATXUserEducationSuggestionSleepMigrationServer__processModeChangeEvent___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 associatedModeUUIDs];
  v4 = [*(a1 + 32) UUIDString];
  v5 = [v3 containsObject:v4];

  if (v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (void)sendSuggestion:(id)suggestion withEventType:(unint64_t)type
{
  v14 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v7 = [objc_alloc(MEMORY[0x277CEB938]) initWithUserEducationSuggestion:suggestionCopy userEducationSuggestionEventType:type];
  v8 = __atxlog_handle_context_user_education_suggestions(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[ATXUserEducationSuggestionSleepMigrationServer sendSuggestion:withEventType:]";
    v12 = 2114;
    v13 = suggestionCopy;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: Sending suggestion: %{public}@", &v10, 0x16u);
  }

  remoteObjectProxy = [(ATXUserEducationSuggestionConnector *)self->_connector remoteObjectProxy];
  [remoteObjectProxy didReceiveUserEducationSuggestionEvent:v7];
}

- (void)_processModeChangeEvent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_25();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "%s: Not showing suggestion because was unable to get configured home screen pages. Error: %{public}@", v1, 0x16u);
}

- (void)_processModeChangeEvent:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_25();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "%s: Not showing suggestion. Unable to get mode uuid from event %{public}@", v1, 0x16u);
}

- (void)_processModeChangeEvent:(os_log_t)log .cold.3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: Not showing user education suggestion because there was an error while trying to determine whether a suggested page was created during sleep migration.", &v1, 0xCu);
}

@end