@interface ATXHeuristicTimeUtilities
+ (double)timestampByOffsettingDays:(double)days dayOffset:(int64_t)offset;
+ (double)timestampByOffsettingStartOfTodayByNumberOfDays:(int64_t)days;
+ (double)timestampWithHour:(unint64_t)hour minute:(unint64_t)minute atDayOfTimestamp:(double)timestamp;
+ (id)enabledAlarmsFromTS:(double)s toTS:(double)tS environment:(id)environment;
+ (id)usualAlarmTimeOfDayDataSourceWithEnvironment:(id)environment;
@end

@implementation ATXHeuristicTimeUtilities

+ (double)timestampByOffsettingStartOfTodayByNumberOfDays:(int64_t)days
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [currentCalendar startOfDayForDate:date];

  if (days)
  {
    v7 = [currentCalendar dateByAddingUnit:16 value:days toDate:v6 options:0];
    [v7 timeIntervalSinceReferenceDate];
    v9 = v8;
  }

  else
  {
    [v6 timeIntervalSinceReferenceDate];
    v9 = v10;
  }

  return v9;
}

+ (double)timestampWithHour:(unint64_t)hour minute:(unint64_t)minute atDayOfTimestamp:(double)timestamp
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:timestamp];
  v10 = [currentCalendar dateBySettingHour:hour minute:minute second:0 ofDate:v9 options:0];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

  return v12;
}

+ (double)timestampByOffsettingDays:(double)days dayOffset:(int64_t)offset
{
  v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:days];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [currentCalendar dateByAddingUnit:16 value:offset toDate:v5 options:0];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  return v9;
}

+ (id)usualAlarmTimeOfDayDataSourceWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = [ATXSetAlarmTimeOfDayDataSource alloc];
  heuristicDevice = [environmentCopy heuristicDevice];
  v6 = [(ATXSetAlarmTimeOfDayDataSource *)v4 initWithDevice:heuristicDevice];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__16;
  v22 = __Block_byref_object_dispose__16;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16;
  v16 = __Block_byref_object_dispose__16;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__ATXHeuristicTimeUtilities_usualAlarmTimeOfDayDataSourceWithEnvironment___block_invoke;
  v11[3] = &unk_278C3CDD0;
  v11[4] = &v18;
  v11[5] = &v12;
  v7 = [(ATXSetAlarmTimeOfDayDataSource *)v6 alarmTimeOfDay:v11];
  if (v13[5])
  {
    v8 = __atxlog_handle_context_heuristic(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicTimeUtilities usualAlarmTimeOfDayDataSourceWithEnvironment:v8];
    }

    v9 = 0;
  }

  else
  {
    v9 = v19[5];
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v9;
}

void __74__ATXHeuristicTimeUtilities_usualAlarmTimeOfDayDataSourceWithEnvironment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

+ (id)enabledAlarmsFromTS:(double)s toTS:(double)tS environment:(id)environment
{
  environmentCopy = environment;
  v8 = [ATXAlarmsDataSource alloc];
  heuristicDevice = [environmentCopy heuristicDevice];
  v10 = [(ATXAlarmsDataSource *)v8 initWithDevice:heuristicDevice];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__16;
  v28 = __Block_byref_object_dispose__16;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__16;
  v22 = __Block_byref_object_dispose__16;
  v23 = 0;
  v11 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:s];
  v12 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:tS];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__ATXHeuristicTimeUtilities_enabledAlarmsFromTS_toTS_environment___block_invoke;
  v17[3] = &unk_278C3CDA8;
  v17[4] = &v24;
  v17[5] = &v18;
  v13 = [(ATXAlarmsDataSource *)v10 alarmsFromDate:v11 toDate:v12 completionHandler:v17];
  if (v19[5])
  {
    v14 = __atxlog_handle_context_heuristic(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicTimeUtilities enabledAlarmsFromTS:v14 toTS:? environment:?];
    }

    v15 = 0;
  }

  else
  {
    v15 = v25[5];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v15;
}

void __66__ATXHeuristicTimeUtilities_enabledAlarmsFromTS_toTS_environment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

+ (void)usualAlarmTimeOfDayDataSourceWithEnvironment:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136446210;
  v2 = "+[ATXHeuristicTimeUtilities usualAlarmTimeOfDayDataSourceWithEnvironment:]";
  _os_log_error_impl(&dword_23E3EA000, log, OS_LOG_TYPE_ERROR, "Error querying data source %{public}s", &v1, 0xCu);
}

+ (void)enabledAlarmsFromTS:(os_log_t)log toTS:environment:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136446210;
  v2 = "+[ATXHeuristicTimeUtilities enabledAlarmsFromTS:toTS:environment:]";
  _os_log_error_impl(&dword_23E3EA000, log, OS_LOG_TYPE_ERROR, "Error querying data source %{public}s", &v1, 0xCu);
}

@end