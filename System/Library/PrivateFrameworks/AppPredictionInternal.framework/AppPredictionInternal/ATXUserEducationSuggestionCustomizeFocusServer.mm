@interface ATXUserEducationSuggestionCustomizeFocusServer
- (ATXUserEducationSuggestionCustomizeFocusServer)initWithConnector:(id)connector;
- (void)_processModeChangeEvent:(id)event;
- (void)dealloc;
- (void)processModeChangeEvent:(id)event;
- (void)sendSuggestion:(id)suggestion eventType:(unint64_t)type;
@end

@implementation ATXUserEducationSuggestionCustomizeFocusServer

- (ATXUserEducationSuggestionCustomizeFocusServer)initWithConnector:(id)connector
{
  v16 = *MEMORY[0x277D85DE8];
  connectorCopy = connector;
  v13.receiver = self;
  v13.super_class = ATXUserEducationSuggestionCustomizeFocusServer;
  v6 = [(ATXUserEducationSuggestionBaseServer *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_context_user_education_suggestions(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[ATXUserEducationSuggestionCustomizeFocusServer initWithConnector:]";
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: starting server", buf, 0xCu);
    }

    mEMORY[0x277CEB440] = [MEMORY[0x277CEB440] sharedInstance];
    modeConfigurationClient = v7->_modeConfigurationClient;
    v7->_modeConfigurationClient = mEMORY[0x277CEB440];

    objc_storeStrong(&v7->_connector, connector);
    v11 = +[ATXUserEducationSuggestionModeChangeNotifier sharedInstance];
    [v11 registerObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[ATXUserEducationSuggestionModeChangeNotifier sharedInstance];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = ATXUserEducationSuggestionCustomizeFocusServer;
  [(ATXUserEducationSuggestionCustomizeFocusServer *)&v4 dealloc];
}

- (void)processModeChangeEvent:(id)event
{
  eventCopy = event;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__ATXUserEducationSuggestionCustomizeFocusServer_processModeChangeEvent___block_invoke;
  v6[3] = &unk_278596C10;
  v6[4] = self;
  v7 = eventCopy;
  v5 = eventCopy;
  [(ATXUserEducationSuggestionBaseServer *)self performBlockOnInternalSerialQueue:v6];
}

- (void)_processModeChangeEvent:(id)event
{
  v54 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  atx_dndModeSemanticType = [eventCopy atx_dndModeSemanticType];
  v6 = DNDModeSemanticTypeToString();
  v7 = [MEMORY[0x277CEB930] suggestionsAreSupportedForModeSemanticType:atx_dndModeSemanticType];
  v8 = v7;
  v9 = __atxlog_handle_context_user_education_suggestions(v7);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 136315394;
      *&buf[4] = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
      *&buf[12] = 2114;
      *&buf[14] = eventCopy;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "%s: processing new userFocusComputedModeEvent: %{public}@", buf, 0x16u);
    }

    v9 = [objc_alloc(MEMORY[0x277CEB930]) initWithModeSemanticType:atx_dndModeSemanticType];
    suggestionWasAlreadyShown = [v9 suggestionWasAlreadyShown];
    suggestionWasAlreadyDismissed = [v9 suggestionWasAlreadyDismissed];
    starting = [eventCopy starting];
    if (starting)
    {
      if (suggestionWasAlreadyShown)
      {
        v14 = __atxlog_handle_context_user_education_suggestions(starting);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
          *&buf[12] = 2112;
          *&buf[14] = v6;
          _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "%s: Not showing user education suggestion because it was already shown in mode: %@", buf, 0x16u);
        }

LABEL_33:

        goto LABEL_54;
      }

      updateSource = [eventCopy updateSource];
      if (updateSource != 1)
      {
        v14 = __atxlog_handle_context_user_education_suggestions(updateSource);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
          _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "%s: Not showing user education suggestion because mode update source wasn't local.", buf, 0xCu);
        }

        goto LABEL_33;
      }

      v17 = objc_alloc(MEMORY[0x277CCAD78]);
      mode = [eventCopy mode];
      v19 = [v17 initWithUUIDString:mode];

      if (!v19)
      {
        v22 = __atxlog_handle_context_user_education_suggestions(v20);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:];
        }

        goto LABEL_53;
      }

      v21 = [(ATXDNDModeConfigurationClient *)self->_modeConfigurationClient modeConfigurationForDNDModeWithUUID:v19 useCache:0];
      v22 = v21;
      if (v21)
      {
        configuration = [v21 configuration];
        if ([configuration applicationConfigurationType] == 2)
        {
          configuration2 = [v22 configuration];
          v25 = [configuration2 senderConfigurationType] == 2;

          if (v25)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v51 = __Block_byref_object_copy__58;
            v52 = __Block_byref_object_dispose__58;
            v53 = 0;
            v27 = dispatch_semaphore_create(0);
            getPRSServiceClass();
            v28 = objc_opt_new();
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __74__ATXUserEducationSuggestionCustomizeFocusServer__processModeChangeEvent___block_invoke;
            v40[3] = &unk_27859DA78;
            v29 = v27;
            v41 = v29;
            v30 = v28;
            v42 = v30;
            v43 = buf;
            [v30 fetchActiveConfiguration:v40];
            v31 = [MEMORY[0x277D425A0] waitForSemaphore:v29 timeoutSeconds:5.0];
            if (v31 == 1)
            {
              v32 = __atxlog_handle_context_user_education_suggestions(v31);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                [ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:];
              }

              goto LABEL_51;
            }

            if (*(*&buf[8] + 40))
            {
              v35 = [v19 isEqual:?];
              if (v35)
              {
                [(ATXUserEducationSuggestionCustomizeFocusServer *)self sendSuggestion:v9 eventType:0];
LABEL_52:

                _Block_object_dispose(buf, 8);
                goto LABEL_53;
              }

              v32 = __atxlog_handle_context_user_education_suggestions(v35);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                v39 = *(*&buf[8] + 40);
                *v44 = 136315650;
                v45 = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
                v46 = 2112;
                v47 = v19;
                v48 = 2112;
                v49 = v39;
                v36 = "%s: Not showing user education suggestion because current mode: %@ is not equal to the poster's linked mode: %@.";
                v37 = v32;
                v38 = 32;
                goto LABEL_50;
              }
            }

            else
            {
              v32 = __atxlog_handle_context_user_education_suggestions(v31);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *v44 = 136315138;
                v45 = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
                v36 = "%s: Not showing user education suggestion because current poster is not linked to a mode.";
                v37 = v32;
                v38 = 12;
LABEL_50:
                _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_DEFAULT, v36, v44, v38);
              }
            }

LABEL_51:

            goto LABEL_52;
          }
        }

        else
        {
        }

        v34 = __atxlog_handle_context_user_education_suggestions(v26);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
          _os_log_impl(&dword_2263AA000, v34, OS_LOG_TYPE_DEFAULT, "%s: Not showing user education suggestion because current mode is not toothless.", buf, 0xCu);
        }
      }

      else
      {
        v34 = __atxlog_handle_context_user_education_suggestions(0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:];
        }
      }

LABEL_53:
      goto LABEL_54;
    }

    if (suggestionWasAlreadyDismissed & 1 | ((suggestionWasAlreadyShown & 1) == 0))
    {
      if ((suggestionWasAlreadyShown & 1) == 0)
      {
        v14 = __atxlog_handle_context_user_education_suggestions(starting);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
          *&buf[12] = 2114;
          *&buf[14] = v6;
          _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "%s: Not dismissing suggestion for mode %{public}@ because it hasn't been shown yet.", buf, 0x16u);
        }

        goto LABEL_33;
      }

      if (suggestionWasAlreadyDismissed)
      {
        v14 = __atxlog_handle_context_user_education_suggestions(starting);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
          *&buf[12] = 2114;
          *&buf[14] = v6;
          _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "%s: Not dismissing suggestion for mode %{public}@ because it has already been dismissed.", buf, 0x16u);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v33 = __atxlog_handle_context_user_education_suggestions(starting);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
        *&buf[12] = 2114;
        *&buf[14] = v6;
        *&buf[22] = 2114;
        v51 = v6;
        _os_log_impl(&dword_2263AA000, v33, OS_LOG_TYPE_DEFAULT, "%s: Dismissing suggestion for mode %{public}@ because we're exiting %{public}@ mode and its been shown but not yet dismissed", buf, 0x20u);
      }

      [(ATXUserEducationSuggestionCustomizeFocusServer *)self sendSuggestion:v9 eventType:1];
    }
  }

  else if (v10)
  {
    supportedModeSemanticTypeStrings = [MEMORY[0x277CEB930] supportedModeSemanticTypeStrings];
    *buf = 136315650;
    *&buf[4] = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
    *&buf[12] = 2114;
    *&buf[14] = v6;
    *&buf[22] = 2114;
    v51 = supportedModeSemanticTypeStrings;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "%s: Not processing mode change event because mode: %{public}@ is not in the supported modes: %{public}@", buf, 0x20u);
  }

LABEL_54:
}

void __74__ATXUserEducationSuggestionCustomizeFocusServer__processModeChangeEvent___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__ATXUserEducationSuggestionCustomizeFocusServer__processModeChangeEvent___block_invoke_22;
    v9[3] = &unk_27859DA50;
    v7 = *(a1 + 40);
    v11 = *(a1 + 48);
    v10 = *(a1 + 32);
    [v7 fetchFocusUUIDForConfiguration:a2 completion:v9];
  }

  else
  {
    v8 = __atxlog_handle_context_user_education_suggestions(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]_block_invoke";
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to fetch poster configuration. Error: %{public}@", buf, 0x16u);
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void __74__ATXUserEducationSuggestionCustomizeFocusServer__processModeChangeEvent___block_invoke_22(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)sendSuggestion:(id)suggestion eventType:(unint64_t)type
{
  v14 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v7 = [objc_alloc(MEMORY[0x277CEB938]) initWithUserEducationSuggestion:suggestionCopy userEducationSuggestionEventType:type];
  v8 = __atxlog_handle_context_user_education_suggestions(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[ATXUserEducationSuggestionCustomizeFocusServer sendSuggestion:eventType:]";
    v12 = 2114;
    v13 = suggestionCopy;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: Sending suggestion: %{public}@", &v10, 0x16u);
  }

  remoteObjectProxy = [(ATXUserEducationSuggestionConnector *)self->_connector remoteObjectProxy];
  [remoteObjectProxy didReceiveUserEducationSuggestionEvent:v7];
}

- (void)_processModeChangeEvent:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, v0, v1, "%s: Timed out querying for focus mode UUID associated with the current mode: %{public}@", v2, v3, v4, v5, v6);
}

- (void)_processModeChangeEvent:.cold.2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, v0, v1, "%s: unable to get mode configuration for current mode uuid: %{public}@", v2, v3, v4, v5, v6);
}

- (void)_processModeChangeEvent:.cold.3()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, v0, v1, "%s: Not showing suggestion. Unable to get mode uuid from event %{public}@", v2, v3, v4, v5, v6);
}

@end