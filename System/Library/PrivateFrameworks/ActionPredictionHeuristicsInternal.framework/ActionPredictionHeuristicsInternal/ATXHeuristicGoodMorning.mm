@interface ATXHeuristicGoodMorning
+ (id)contextDateInterval;
+ (id)nextDateWithHour:(unint64_t)hour;
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
- (void)_addRefreshTimeTriggerWithHour:(unint64_t)hour refreshTriggers:(id)triggers;
@end

@implementation ATXHeuristicGoodMorning

- (id)permanentRefreshTriggers
{
  v16 = *MEMORY[0x277D85DE8];
  contextDateInterval = [objc_opt_class() contextDateInterval];
  v3 = __atxlog_handle_context_heuristic(contextDateInterval);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    startDate = [contextDateInterval startDate];
    endDate = [contextDateInterval endDate];
    *buf = 138412546;
    v13 = startDate;
    v14 = 2112;
    v15 = endDate;
    _os_log_impl(&dword_23E3EA000, v3, OS_LOG_TYPE_DEFAULT, "ATXHeuristicGoodMorning permanentRefreshTriggers, context valid from %@ to %@", buf, 0x16u);
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
  v32 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v5 = __atxlog_handle_context_heuristic(environmentCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v5, OS_LOG_TYPE_DEFAULT, "ATXHeuristicGoodMorning heuristicResultWithEnvironment", buf, 2u);
  }

  v6 = _os_feature_enabled_impl();
  if (v6)
  {
    v7 = objc_opt_new();
    [(ATXHeuristicGoodMorning *)self _addRefreshTimeTriggerWithHour:6 refreshTriggers:v7];
    [(ATXHeuristicGoodMorning *)self _addRefreshTimeTriggerWithHour:10 refreshTriggers:v7];
    v8 = objc_opt_new();
    contextDateInterval = [objc_opt_class() contextDateInterval];
    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = [contextDateInterval containsDate:v10];

    if (v11)
    {
      v12 = [[ATXContextWeatherSuggestionProducer alloc] initWithValidDateInterval:contextDateInterval reasonCode:40 score:50.0];
      dummySuggestion = [(ATXContextWeatherSuggestionProducer *)v12 weatherSuggestionWithRefreshTriggers:v7];
      if (!dummySuggestion)
      {
        dummySuggestion = [(ATXContextWeatherSuggestionProducer *)v12 dummySuggestion];
      }

      v25 = v12;
      [v8 addObject:dummySuggestion];
      v24 = [[ATXContextAlarmSuggestionProducer alloc] initWithValidDateInterval:contextDateInterval reasonCode:40 score:45.0];
      v14 = [(ATXContextAlarmSuggestionProducer *)v24 morningAlarmToggleSuggestionsWithEnvironment:environmentCopy];
      [v8 addObjectsFromArray:v14];

      v15 = [[ATXContextWebsiteSuggestionProducer alloc] initWithValidDateInterval:contextDateInterval reasonCode:40 score:40.0];
      websiteSuggestions = [(ATXContextWebsiteSuggestionProducer *)v15 websiteSuggestions];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v17 = [websiteSuggestions countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v27;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v27 != v19)
            {
              objc_enumerationMutation(websiteSuggestions);
            }

            [v8 addObject:*(*(&v26 + 1) + 8 * i)];
          }

          v18 = [websiteSuggestions countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v18);
      }
    }

    v21 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v8 additionalRefreshTriggers:v7];
  }

  else
  {
    v22 = __atxlog_handle_context_heuristic(v6);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v22, OS_LOG_TYPE_DEFAULT, "ATXHeuristicGoodMorning heuristicResultWithEnvironment feature: zkw_routines is off. Dropping", buf, 2u);
    }

    v21 = objc_opt_new();
  }

  return v21;
}

- (void)_addRefreshTimeTriggerWithHour:(unint64_t)hour refreshTriggers:(id)triggers
{
  v11 = *MEMORY[0x277D85DE8];
  triggersCopy = triggers;
  v6 = [objc_opt_class() nextDateWithHour:hour];
  v7 = [[ATXInformationHeuristicRefreshTimeTrigger alloc] initWithFireDate:v6];
  v8 = __atxlog_handle_context_heuristic(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_DEFAULT, "ATXHeuristicGoodMorning _addRefreshTimeTriggerWithHour adding a trigger at %@", &v9, 0xCu);
  }

  [triggersCopy addObject:v7];
}

+ (id)contextDateInterval
{
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [currentCalendar dateBySettingHour:6 minute:0 second:0 ofDate:date options:0];
  v5 = [currentCalendar dateBySettingHour:10 minute:0 second:0 ofDate:date options:0];
  v6 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v4 endDate:v5];

  return v6;
}

+ (id)nextDateWithHour:(unint64_t)hour
{
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [currentCalendar dateBySettingHour:hour minute:0 second:0 ofDate:date options:0];
  if ([v6 compare:date] == -1)
  {
    do
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v8 setDay:1];
      v7 = [currentCalendar dateByAddingComponents:v8 toDate:v6 options:0];

      v6 = v7;
    }

    while ([v7 compare:date] == -1);
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

@end