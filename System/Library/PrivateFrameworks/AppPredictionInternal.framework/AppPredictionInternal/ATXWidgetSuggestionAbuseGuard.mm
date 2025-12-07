@interface ATXWidgetSuggestionAbuseGuard
+ (id)sharedInstance;
- (ATXWidgetSuggestionAbuseGuard)initWithConfig:(id)config store:(id)store;
- (BOOL)shouldDemoteSuggestionsForWidget:(id)widget kind:(id)kind intent:(id)intent;
- (void)_invalidatePreviousVerdicts;
- (void)_scheduleRefreshNoLaterThanDate:(id)date;
@end

@implementation ATXWidgetSuggestionAbuseGuard

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7 != -1)
  {
    +[ATXWidgetSuggestionAbuseGuard sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult;

  return v3;
}

void __47__ATXWidgetSuggestionAbuseGuard_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [ATXWidgetSuggestionAbuseGuard alloc];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CEB5C8] sharedInstance];
  v4 = [(ATXWidgetSuggestionAbuseGuard *)v1 initWithConfig:v2 store:v3];
  v5 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v0);
}

- (ATXWidgetSuggestionAbuseGuard)initWithConfig:(id)config store:(id)store
{
  configCopy = config;
  storeCopy = store;
  v16.receiver = self;
  v16.super_class = ATXWidgetSuggestionAbuseGuard;
  v9 = [(ATXWidgetSuggestionAbuseGuard *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, config);
    objc_storeStrong(&v10->_store, store);
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    scheduledRefreshDate = v10->_scheduledRefreshDate;
    v10->_scheduledRefreshDate = distantFuture;

    v13 = [[ATXInformationFilter alloc] initWithStore:v10->_store abuseControlConfig:v10->_config];
    filter = v10->_filter;
    v10->_filter = v13;
  }

  return v10;
}

- (BOOL)shouldDemoteSuggestionsForWidget:(id)widget kind:(id)kind intent:(id)intent
{
  v39 = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  kindCopy = kind;
  intentCopy = intent;
  v11 = widgetCopy;
  if (CFPreferencesGetAppBooleanValue(@"widgetKitDeveloperModeEnabled", @"com.apple.duetexpertd", 0))
  {
    LOBYTE(v31) = 0;
    if (CFPreferencesGetAppBooleanValue(@"ATXWidgetKitDeveloperModeSkipEntitlementCheck", *MEMORY[0x277CEBD00], &v31))
    {

LABEL_6:
      v14 = __atxlog_handle_relevant_shortcut(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        intentDescription = [intentCopy intentDescription];
        v31 = 136315906;
        v32 = "[ATXWidgetSuggestionAbuseGuard shouldDemoteSuggestionsForWidget:kind:intent:]";
        v33 = 2112;
        v34 = v11;
        v35 = 2112;
        v36 = kindCopy;
        v37 = 2112;
        v38 = intentDescription;
        _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "%s: NO (WidgetKit Developer Mode enabled) for widget %@:%@:%@", &v31, 0x2Au);
      }

      v16 = 0;
      goto LABEL_25;
    }

    v13 = [MEMORY[0x277CEB3B0] isDebuggingAllowedForExtensionBundleId:v11];

    if (v13)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v17 = [(ATXInformationFilter *)self->_filter numberOfSeenRotationsForWidget:v11 kind:kindCopy intent:intentCopy filterByClientModelId:0];
  v18 = [(ATXTimelineAbuseControlConfig *)self->_config hardRotationQuotaForWidgetWithIdentifier:v11 kind:kindCopy];
  if ((v18 & 0x8000000000000000) != 0 || v17 < v18)
  {
    v14 = [(ATXInformationStore *)self->_store mostRecentRotationRecordForWidget:v11 kind:kindCopy intent:intentCopy considerStalenessRotation:0 filterByClientModelId:0];
    store = self->_store;
    rotationDate = [v14 rotationDate];
    v22 = [(ATXInformationStore *)store firstEngagementOfWidget:v11 kind:kindCopy intent:intentCopy sinceTimestamp:rotationDate];

    if (v14 && v22)
    {
      date = [v22 date];
      [v14 coolDownInterval];
      v25 = [date dateByAddingTimeInterval:?];

      [v25 timeIntervalSinceNow];
      if (v26 > 0.0)
      {
        v28 = __atxlog_handle_relevant_shortcut([(ATXWidgetSuggestionAbuseGuard *)self _scheduleRefreshNoLaterThanDate:v25]);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          intentDescription2 = [intentCopy intentDescription];
          v31 = 136315906;
          v32 = "[ATXWidgetSuggestionAbuseGuard shouldDemoteSuggestionsForWidget:kind:intent:]";
          v33 = 2112;
          v34 = v11;
          v35 = 2112;
          v36 = kindCopy;
          v37 = 2112;
          v38 = intentDescription2;
          _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "%s: YES (in cool down) for widget %@:%@:%@", &v31, 0x2Au);
        }

        v16 = 1;
        goto LABEL_24;
      }
    }

    v25 = __atxlog_handle_relevant_shortcut(v23);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      intentDescription3 = [intentCopy intentDescription];
      v31 = 136315906;
      v32 = "[ATXWidgetSuggestionAbuseGuard shouldDemoteSuggestionsForWidget:kind:intent:]";
      v33 = 2112;
      v34 = v11;
      v35 = 2112;
      v36 = kindCopy;
      v37 = 2112;
      v38 = intentDescription3;
      _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "%s: NO for widget %@:%@:%@", &v31, 0x2Au);
    }

    v16 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v14 = __atxlog_handle_relevant_shortcut(v18);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    intentDescription4 = [intentCopy intentDescription];
    v31 = 136315906;
    v32 = "[ATXWidgetSuggestionAbuseGuard shouldDemoteSuggestionsForWidget:kind:intent:]";
    v33 = 2112;
    v34 = v11;
    v35 = 2112;
    v36 = kindCopy;
    v37 = 2112;
    v38 = intentDescription4;
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "%s: YES (exceeds quota) for widget %@:%@:%@", &v31, 0x2Au);
  }

  v16 = 1;
LABEL_25:

  return v16;
}

- (void)_scheduleRefreshNoLaterThanDate:(id)date
{
  v18 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  scheduledRefreshDate = self->_scheduledRefreshDate;
  v7 = [(NSDate *)scheduledRefreshDate earlierDate:dateCopy];

  if (scheduledRefreshDate != v7)
  {
    objc_storeStrong(&self->_scheduledRefreshDate, date);
    v9 = __atxlog_handle_relevant_shortcut(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[ATXWidgetSuggestionAbuseGuard _scheduleRefreshNoLaterThanDate:]";
      v16 = 2112;
      v17 = dateCopy;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "%s: Updated refresh date to %@.", buf, 0x16u);
    }

    v10 = xpc_dictionary_create(0, 0, 0);
    v11 = *MEMORY[0x277D86250];
    [(NSDate *)self->_scheduledRefreshDate timeIntervalSinceNow];
    xpc_dictionary_set_int64(v10, v11, v12);
    xpc_dictionary_set_int64(v10, *MEMORY[0x277D86270], 300);
    xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86380], 1);
    xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86360], 0);
    xpc_dictionary_set_string(v10, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__ATXWidgetSuggestionAbuseGuard__scheduleRefreshNoLaterThanDate___block_invoke;
    v13[3] = &unk_278596790;
    v13[4] = self;
    atxRegisterCTSJobHandler("com.apple.duetexpertd.AbuseGuardRefresh", v10, v13);
  }
}

- (void)_invalidatePreviousVerdicts
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_relevant_shortcut(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ATXWidgetSuggestionAbuseGuard _invalidatePreviousVerdicts]";
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ATXWidgetSuggestionAbuseGuardRefresh" object:self];
}

@end