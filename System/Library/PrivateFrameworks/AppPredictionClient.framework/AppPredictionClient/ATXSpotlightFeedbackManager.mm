@interface ATXSpotlightFeedbackManager
- (ATXSpotlightFeedbackManager)init;
- (ATXSpotlightFeedbackManager)initWithEngagementRecordManager:(id)manager;
- (BOOL)autoShortcutHasBeenHiddenForIdentifier:(id)identifier;
- (BOOL)contextHasBeenHiddenForContextIdentifier:(id)identifier;
- (BOOL)contextHasBeenHiddenForSuggestion:(id)suggestion;
- (BOOL)hasBeenHiddenEntityWithIdentifier:(id)identifier;
- (BOOL)hasBeenHiddenSuggestion:(id)suggestion;
- (unint64_t)combineReasons:(unint64_t)reasons;
- (void)_toggleSiriSearchSettingsOffForAppSuggestion:(id)suggestion;
- (void)addHiddenActionExecutableIdentifier:(id)identifier;
- (void)addHiddenAppSuggestionBundleIdentifier:(id)identifier;
- (void)addHiddenAutoShortcutIdentifier:(id)identifier;
- (void)addHiddenContextIdentifier:(id)identifier;
- (void)clearHiddenSuggestions;
@end

@implementation ATXSpotlightFeedbackManager

- (ATXSpotlightFeedbackManager)init
{
  v3 = +[ATXEngagementRecordManager sharedInstance];
  v4 = [(ATXSpotlightFeedbackManager *)self initWithEngagementRecordManager:v3];

  return v4;
}

- (ATXSpotlightFeedbackManager)initWithEngagementRecordManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = ATXSpotlightFeedbackManager;
  v6 = [(ATXSpotlightFeedbackManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_engagementRecordManager, manager);
    v8 = [MEMORY[0x1E69C5BB8] clientModelIdFromClientModelType:44];
    clientModelId = v7->_clientModelId;
    v7->_clientModelId = v8;
  }

  return v7;
}

- (void)addHiddenActionExecutableIdentifier:(id)identifier
{
  v8 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = __atxlog_handle_zkw_hide(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = identifierCopy;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: addHiddenActionExecutableIdentifier: %@", &v6, 0xCu);
  }

  [(ATXEngagementRecordManager *)self->_engagementRecordManager addEngagedExecutable:identifierCopy clientModelId:self->_clientModelId engagementRecordType:128];
}

- (void)addHiddenContextIdentifier:(id)identifier
{
  v8 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = __atxlog_handle_zkw_hide(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = identifierCopy;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: addHiddenContext: %@", &v6, 0xCu);
  }

  [(ATXEngagementRecordManager *)self->_engagementRecordManager addEngagedExecutable:identifierCopy clientModelId:self->_clientModelId engagementRecordType:256];
}

- (void)addHiddenAutoShortcutIdentifier:(id)identifier
{
  v8 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = __atxlog_handle_zkw_hide(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = identifierCopy;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: addHiddenAutoShortcut: %@", &v6, 0xCu);
  }

  [(ATXEngagementRecordManager *)self->_engagementRecordManager addEngagedExecutable:identifierCopy clientModelId:self->_clientModelId engagementRecordType:512];
}

- (void)addHiddenAppSuggestionBundleIdentifier:(id)identifier
{
  v9 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = __atxlog_handle_zkw_hide(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [identifierCopy uuid];
    v7 = 138412290;
    v8 = uuid;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: addHiddenAppSuggestion: %@", &v7, 0xCu);
  }

  [(ATXEngagementRecordManager *)self->_engagementRecordManager addHiddenSuggestion:identifierCopy duration:120 engagementRecordType:86400.0];
  [(ATXSpotlightFeedbackManager *)self _toggleSiriSearchSettingsOffForAppSuggestion:identifierCopy];
}

- (void)clearHiddenSuggestions
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = __atxlog_handle_zkw_hide([(ATXEngagementRecordManager *)self->_engagementRecordManager removeAllEngagementsOfRecordType:896]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    engagementRecordManager = self->_engagementRecordManager;
    v5 = 138412290;
    v6 = engagementRecordManager;
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: clearHiddenSuggestions for cache: %@", &v5, 0xCu);
  }
}

- (BOOL)hasBeenHiddenSuggestion:(id)suggestion
{
  v14 = *MEMORY[0x1E69E9840];
  executableSpecification = [suggestion executableSpecification];
  executableIdentifier = [executableSpecification executableIdentifier];

  v6 = [ATXSpotlightHidingUIController normalizedIdentifier:executableIdentifier];

  v7 = [(ATXEngagementRecordManager *)self->_engagementRecordManager hasEngagedWithExecutable:v6 engagementRecordType:128];
  v8 = __atxlog_handle_zkw_hide(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: hasBeenHiddenSuggestion:%@ ---> %{BOOL}d", &v10, 0x12u);
  }

  return v7;
}

- (BOOL)hasBeenHiddenEntityWithIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [(ATXEngagementRecordManager *)self->_engagementRecordManager hasEngagedWithExecutable:identifierCopy engagementRecordType:128];
    v6 = __atxlog_handle_zkw_hide(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = identifierCopy;
      v10 = 1024;
      v11 = v5;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: hasBeenHiddenEntityWithIdentifier:%@ ---> %{BOOL}d", &v8, 0x12u);
    }
  }

  else
  {
    v6 = __atxlog_handle_zkw_hide(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: hasBeenHiddenEntityWithIdentifier NIL ---> NO", &v8, 2u);
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)contextHasBeenHiddenForSuggestion:(id)suggestion
{
  v22 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  uiSpecification = [suggestionCopy uiSpecification];
  -[ATXSpotlightFeedbackManager combineReasons:](self, "combineReasons:", [uiSpecification predictionReasons]);

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = suggestionCopy;
  v7 = ATXSuggestionPredictionReasonEnumerateReasonCodes();
  v8 = __atxlog_handle_zkw_hide(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uiSpecification2 = [v6 uiSpecification];
    title = [uiSpecification2 title];
    v11 = *(v15 + 24);
    *buf = 138412546;
    v19 = title;
    v20 = 1024;
    v21 = v11;
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: contextHasBeenHiddenForSuggestion %@:no context --->  %{BOOL}d", buf, 0x12u);
  }

  v12 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v12 & 1;
}

void __65__ATXSpotlightFeedbackManager_contextHasBeenHiddenForSuggestion___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = stringForATXSuggestionPredictionReasonCode();
  v4 = *(*(a1 + 48) + 8);
  if (*(v4 + 24))
  {
    v5 = 1;
  }

  else
  {
    v5 = [*(a1 + 32) contextHasBeenHiddenForContextIdentifier:v3];
    v4 = *(*(a1 + 48) + 8);
  }

  *(v4 + 24) = v5;
  v6 = __atxlog_handle_zkw_hide(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 40) uiSpecification];
    v8 = [v7 title];
    v9 = *(*(*(a1 + 48) + 8) + 24);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    v14 = 1024;
    v15 = v9;
    _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: contextHasBeenHiddenForSuggestion %@:%@ ---> %{BOOL}d", &v10, 0x1Cu);
  }
}

- (BOOL)contextHasBeenHiddenForContextIdentifier:(id)identifier
{
  if (identifier)
  {
    engagementRecordManager = self->_engagementRecordManager;

    return [ATXEngagementRecordManager hasEngagedWithExecutable:"hasEngagedWithExecutable:engagementRecordType:" engagementRecordType:?];
  }

  else
  {
    v6 = __atxlog_handle_zkw_hide(self);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightFeedbackManager contextHasBeenHiddenForContextIdentifier:v6];
    }

    return 0;
  }
}

- (BOOL)autoShortcutHasBeenHiddenForIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [(ATXEngagementRecordManager *)self->_engagementRecordManager hasEngagedWithExecutable:identifierCopy engagementRecordType:512];
    v6 = __atxlog_handle_zkw_hide(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = identifierCopy;
      v10 = 1024;
      v11 = v5;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: autoShortcutHasBeenHiddenForIdentifier %@ --->  %{BOOL}d", &v8, 0x12u);
    }
  }

  else
  {
    v6 = __atxlog_handle_zkw_hide(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightFeedbackManager autoShortcutHasBeenHiddenForIdentifier:v6];
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)combineReasons:(unint64_t)reasons
{
  reasonsCopy = 0x3000000000;
  if ((reasons & 0x3000000000) == 0)
  {
    reasonsCopy = reasons;
  }

  if ((reasons & 0x380000000) != 0)
  {
    reasonsCopy = 0x380000000;
  }

  if ((reasons & 0x700000) != 0)
  {
    return 7340032;
  }

  else
  {
    return reasonsCopy;
  }
}

- (void)_toggleSiriSearchSettingsOffForAppSuggestion:(id)suggestion
{
  v23 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  executableSpecification2 = [suggestionCopy executableSpecification];
  executableObject = [executableSpecification2 executableObject];

  if (executableType == 1 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v9 = executableObject;
    v10 = objc_alloc(MEMORY[0x1E695DFA8]);
    v11 = *MEMORY[0x1E695E8B8];
    v12 = *MEMORY[0x1E695E898];
    v13 = CFPreferencesCopyValue(@"SBSearchSuggestAppDisabled", @"com.apple.spotlightui", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = objc_opt_new();
    }

    v16 = v15;

    v17 = [v10 initWithArray:v16];
    [v17 addObject:v9];
    CFPreferencesSetAppValue(@"SBSearchSuggestAppDisabled", [v17 allObjects], @"com.apple.spotlightui");
    CFPreferencesSynchronize(@"com.apple.spotlightui", v11, v12);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.spotlightui.prefschanged", 0, 0, 1u);

    v20 = __atxlog_handle_home_screen(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v9;
      _os_log_impl(&dword_1BF549000, v20, OS_LOG_TYPE_DEFAULT, "toggled siri & search settings for spotlight OFF for app prediction: %@", &v21, 0xCu);
    }
  }

  else
  {
    v9 = __atxlog_handle_home_screen(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXSpotlightFeedbackManager *)suggestionCopy _toggleSiriSearchSettingsOffForAppSuggestion:executableObject, v9];
    }
  }
}

- (void)_toggleSiriSearchSettingsOffForAppSuggestion:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69C5BC8];
  v5 = [a1 executableSpecification];
  v6 = [v4 stringForExecutableType:{objc_msgSend(v5, "executableType")}];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = 136315650;
  v10 = "[ATXSpotlightFeedbackManager _toggleSiriSearchSettingsOffForAppSuggestion:]";
  v11 = 2114;
  v12 = v6;
  v13 = 2114;
  v14 = v8;
  _os_log_error_impl(&dword_1BF549000, a3, OS_LOG_TYPE_ERROR, "%s: attempted to toggle siri & search settings off for non-app executable type: %{public}@ class: %{public}@", &v9, 0x20u);
}

@end