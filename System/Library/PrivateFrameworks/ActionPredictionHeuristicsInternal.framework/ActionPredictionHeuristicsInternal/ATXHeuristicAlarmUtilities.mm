@interface ATXHeuristicAlarmUtilities
+ (BOOL)isValidNonRecentlyModifiedAlarm:(id)alarm duringInterval:(id)interval;
+ (id)alarmDataWithAlarmDict:(id)dict;
+ (id)alarmTrigger;
+ (id)fireDateWithAlarmDict:(id)dict;
+ (id)firstFiringAmongAlarms:(id)alarms;
+ (id)localizedTimeWithAlarmDict:(id)dict;
@end

@implementation ATXHeuristicAlarmUtilities

+ (id)alarmTrigger
{
  v2 = +[ATXHeuristicDevice sharedAlarmManager];
  [v2 checkIn];

  v3 = [ATXInformationHeuristicRefreshNotitifcationTrigger alloc];
  v4 = [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v3 initWithNotification:*MEMORY[0x277D29598] type:0];

  return v4;
}

+ (id)localizedTimeWithAlarmDict:(id)dict
{
  v3 = [self fireDateWithAlarmDict:dict];
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateStyle:0];
  [v4 setTimeStyle:1];
  v5 = [v4 stringFromDate:v3];

  return v5;
}

+ (BOOL)isValidNonRecentlyModifiedAlarm:(id)alarm duringInterval:(id)interval
{
  v32 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  intervalCopy = interval;
  v7 = [alarmCopy objectForKeyedSubscript:@"playsOnThisDevice"];
  v8 = [alarmCopy objectForKeyedSubscript:@"lastModifiedTS"];
  startDate = [intervalCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  v11 = v10;

  endDate = [intervalCopy endDate];

  [endDate timeIntervalSinceReferenceDate];
  v14 = v13;

  doubleValue = [v8 doubleValue];
  if (v16 >= v11)
  {
    doubleValue = [v8 doubleValue];
    v17 = v18 <= v14;
  }

  else
  {
    v17 = 0;
  }

  v19 = __atxlog_handle_context_heuristic(doubleValue);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [ATXHeuristicAlarmUtilities localizedTimeWithAlarmDict:alarmCopy];
    v21 = MEMORY[0x277CBEAA8];
    [v8 doubleValue];
    v22 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
    if (v22)
    {
      v23 = [MEMORY[0x277CCA968] localizedStringFromDate:v22 dateStyle:1 timeStyle:1];
    }

    else
    {
      v23 = 0;
    }

    v26 = 138412802;
    v27 = v20;
    v28 = 2112;
    v29 = v23;
    v30 = 1024;
    v31 = v17;
    _os_log_impl(&dword_23E3EA000, v19, OS_LOG_TYPE_DEFAULT, "ATXHeuristicAlarmUtilities: alarm at %@ was modified at %@ recently? %{BOOL}d", &v26, 0x1Cu);
  }

  bOOLValue = [v7 BOOLValue];
  return bOOLValue & !v17;
}

+ (id)firstFiringAmongAlarms:(id)alarms
{
  v19 = *MEMORY[0x277D85DE8];
  alarmsCopy = alarms;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [alarmsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(alarmsCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (v7)
        {
          v11 = [ATXHeuristicAlarmUtilities fireDateWithAlarmDict:*(*(&v14 + 1) + 8 * i)];
          if ([v11 compare:v6] == -1)
          {
            v11 = v11;

            v12 = v10;
            v6 = v11;
            v7 = v12;
          }
        }

        else
        {
          v7 = v10;
          [ATXHeuristicAlarmUtilities fireDateWithAlarmDict:v7];
          v6 = v11 = v6;
        }
      }

      v5 = [alarmsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7;
}

+ (id)fireDateWithAlarmDict:(id)dict
{
  v3 = [dict objectForKeyedSubscript:@"MTAlarm"];
  nextFireDate = [v3 nextFireDate];

  return nextFireDate;
}

+ (id)alarmDataWithAlarmDict:(id)dict
{
  v3 = [dict objectForKeyedSubscript:@"MTAlarm"];
  intentAlarm = [v3 intentAlarm];
  v5 = objc_alloc_init(MEMORY[0x277CD3D68]);
  v6 = [v5 encodeObject:intentAlarm];

  return v6;
}

@end