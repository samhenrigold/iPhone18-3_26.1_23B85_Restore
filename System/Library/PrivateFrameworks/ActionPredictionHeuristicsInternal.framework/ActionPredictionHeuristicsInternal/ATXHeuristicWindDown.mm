@interface ATXHeuristicWindDown
- (id)_contextDateInterval;
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
- (void)_addRefreshTimeTriggerWithHour:(unint64_t)hour refreshTriggers:(id)triggers;
@end

@implementation ATXHeuristicWindDown

- (id)permanentRefreshTriggers
{
  v16 = *MEMORY[0x277D85DE8];
  _contextDateInterval = [(ATXHeuristicWindDown *)self _contextDateInterval];
  v3 = __atxlog_handle_context_heuristic(_contextDateInterval);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    startDate = [_contextDateInterval startDate];
    endDate = [_contextDateInterval endDate];
    *buf = 138412546;
    v13 = startDate;
    v14 = 2112;
    v15 = endDate;
    _os_log_impl(&dword_23E3EA000, v3, OS_LOG_TYPE_DEFAULT, "ATXHeuristicWindDown permanentRefreshTriggers, context valid from %@ to %@", buf, 0x16u);
  }

  v6 = +[ATXHeuristicAlarmUtilities alarmTrigger];
  v7 = [ATXInformationHeuristicRefreshNotitifcationTrigger alloc];
  v8 = [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v7 initWithNotification:*MEMORY[0x277CBE780] type:0];
  v9 = objc_autoreleasePoolPush();
  v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v6, v8, 0}];
  objc_autoreleasePoolPop(v9);

  return v10;
}

- (id)heuristicResultWithEnvironment:(id)environment
{
  v31 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v5 = __atxlog_handle_context_heuristic(environmentCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v5, OS_LOG_TYPE_DEFAULT, "ATXHeuristicWindDown heuristicResultWithEnvironment", buf, 2u);
  }

  v6 = _os_feature_enabled_impl();
  if (v6)
  {
    v7 = objc_opt_new();
    _contextDateInterval = [(ATXHeuristicWindDown *)self _contextDateInterval];
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = [_contextDateInterval containsDate:v9];

    if (v10)
    {
      v11 = [[ATXContextAlarmSuggestionProducer alloc] initWithValidDateInterval:_contextDateInterval reasonCode:41 score:40.0];
      v12 = [(ATXContextAlarmSuggestionProducer *)v11 editNextAlarmSuggestionsWithEnvironment:environmentCopy];
      [v7 addObjectsFromArray:v12];

      v13 = [[ATXContextWebsiteSuggestionProducer alloc] initWithValidDateInterval:_contextDateInterval reasonCode:41 score:40.0];
      websiteSuggestions = [(ATXContextWebsiteSuggestionProducer *)v13 websiteSuggestions];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v15 = [websiteSuggestions countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v26;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(websiteSuggestions);
            }

            [v7 addObject:*(*(&v25 + 1) + 8 * i)];
          }

          v16 = [websiteSuggestions countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v16);
      }

      v19 = [[ATXContextWeatherSuggestionProducer alloc] initWithValidDateInterval:_contextDateInterval reasonCode:41 score:40.0];
      dummySuggestion = [(ATXContextWeatherSuggestionProducer *)v19 dummySuggestion];
      if (dummySuggestion)
      {
        [v7 addObject:dummySuggestion];
      }
    }

    v21 = objc_opt_new();
    [(ATXHeuristicWindDown *)self _addRefreshTimeTriggerWithHour:21 refreshTriggers:v21];
    [(ATXHeuristicWindDown *)self _addRefreshTimeTriggerWithHour:23 refreshTriggers:v21];
    v22 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v7 additionalRefreshTriggers:v21];
  }

  else
  {
    v23 = __atxlog_handle_context_heuristic(v6);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v23, OS_LOG_TYPE_DEFAULT, "ATXHeuristicWindDown heuristicResultWithEnvironment feature: zkw_routines is off. Dropping", buf, 2u);
    }

    v22 = objc_opt_new();
  }

  return v22;
}

- (void)_addRefreshTimeTriggerWithHour:(unint64_t)hour refreshTriggers:(id)triggers
{
  v11 = *MEMORY[0x277D85DE8];
  triggersCopy = triggers;
  v6 = [ATXHeuristicGoodMorning nextDateWithHour:hour];
  v7 = [[ATXInformationHeuristicRefreshTimeTrigger alloc] initWithFireDate:v6];
  v8 = __atxlog_handle_context_heuristic(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_DEFAULT, "ATXHeuristicWindDown _addRefreshTimeTriggerWithHour adding a trigger at %@", &v9, 0xCu);
  }

  [triggersCopy addObject:v7];
}

- (id)_contextDateInterval
{
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [currentCalendar dateBySettingHour:21 minute:0 second:0 ofDate:date options:0];
  v5 = [currentCalendar dateBySettingHour:23 minute:0 second:0 ofDate:date options:0];
  v6 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v4 endDate:v5];

  return v6;
}

@end