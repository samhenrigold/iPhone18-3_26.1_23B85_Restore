@interface ATXHeuristicEarlyEventAlarm
- (BOOL)_willAlarm:(id)alarm fireFrom:(double)from to:(double)to;
- (BOOL)isEventInterestingForSettingAlarm:(id)alarm;
- (BOOL)shouldShowSuggestionForEarlyEvent:(id)event alarms:(id)alarms environment:(id)environment;
- (double)_timestampByOffsettingDays:(double)days dayOffset:(int64_t)offset;
- (double)_timestampByOffsettingStartOfTodayByNumberOfDays:(int64_t)days;
- (double)_timestampWithHour:(unint64_t)hour minute:(unint64_t)minute atDayOfTimestamp:(double)timestamp;
- (id)_enabledAlarmsFromTS:(double)s toTS:(double)tS environment:(id)environment;
- (id)_usualAlarmTimeOfDayDataSourceWithEnvironment:(id)environment;
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
@end

@implementation ATXHeuristicEarlyEventAlarm

- (id)permanentRefreshTriggers
{
  v2 = +[ATXHeuristicDevice sharedAlarmManager];
  [v2 checkIn];

  v3 = [ATXInformationHeuristicRefreshNotitifcationTrigger alloc];
  v4 = [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v3 initWithNotification:*MEMORY[0x277CC5948] type:0];
  v5 = [ATXInformationHeuristicRefreshNotitifcationTrigger alloc];
  v6 = [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v5 initWithNotification:*MEMORY[0x277D29598] type:0];
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v4, v6, 0}];
  objc_autoreleasePoolPop(v7);

  return v8;
}

- (id)heuristicResultWithEnvironment:(id)environment
{
  v152 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v5 = [ATXExtraordinaryEventsDataSource alloc];
  heuristicDevice = [environmentCopy heuristicDevice];
  v7 = [(ATXExtraordinaryEventsDataSource *)v5 initWithDevice:heuristicDevice];

  v133 = 0;
  v134 = &v133;
  v135 = 0x3032000000;
  v136 = __Block_byref_object_copy__4;
  v137 = __Block_byref_object_dispose__4;
  v138 = 0;
  v127 = 0;
  v128 = &v127;
  v129 = 0x3032000000;
  v130 = __Block_byref_object_copy__4;
  v131 = __Block_byref_object_dispose__4;
  v132 = 0;
  v126[0] = MEMORY[0x277D85DD0];
  v126[1] = 3221225472;
  v126[2] = __62__ATXHeuristicEarlyEventAlarm_heuristicResultWithEnvironment___block_invoke;
  v126[3] = &unk_278C3CDA8;
  v126[4] = &v133;
  v126[5] = &v127;
  v8 = [(ATXExtraordinaryEventsDataSource *)v7 getEventsWithProminentFeature:&unk_2850BA488 callback:v126];
  if (v128[5])
  {
    v9 = __atxlog_handle_context_heuristic(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeuristicEarlyEventAlarm *)v9 heuristicResultWithEnvironment:v10, v11, v12, v13, v14, v15, v16];
    }

    v17 = objc_opt_new();
LABEL_40:
    v73 = v17;
    goto LABEL_41;
  }

  v18 = __atxlog_handle_context_heuristic(v8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v134[5] count];
    *buf = 134217984;
    v141 = v19;
    _os_log_impl(&dword_23E3EA000, v18, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: heuristicResultWithEnvironment %lu events", buf, 0xCu);
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v20 = v134[5];
  v21 = [v20 countByEnumeratingWithState:&v122 objects:v151 count:16];
  if (!v21)
  {
LABEL_15:

LABEL_37:
    v72 = __atxlog_handle_context_heuristic(v25);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v72, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: No unusually early event found to set alarm", buf, 2u);
    }

    v17 = objc_opt_new();
    goto LABEL_40;
  }

  v22 = *v123;
LABEL_9:
  v23 = 0;
  while (1)
  {
    if (*v123 != v22)
    {
      objc_enumerationMutation(v20);
    }

    v24 = *(*(&v122 + 1) + 8 * v23);
    if ([(ATXHeuristicEarlyEventAlarm *)self isEventInterestingForSettingAlarm:v24])
    {
      break;
    }

    if (v21 == ++v23)
    {
      v21 = [v20 countByEnumeratingWithState:&v122 objects:v151 count:16];
      if (v21)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  v117 = v24;

  if (!v117)
  {
    goto LABEL_37;
  }

  v114 = objc_opt_new();
  v26 = [ATXHeuristicEarlyEventAlarm shouldShowSuggestionForEarlyEvent:"shouldShowSuggestionForEarlyEvent:alarms:environment:" alarms:v117 environment:?];
  if (v26)
  {
    v115 = [v117 objectForKeyedSubscript:@"startDateTimestamp"];
    v112 = [v117 objectForKeyedSubscript:@"creationDateTimestamp"];
    [v115 doubleValue];
    [(ATXHeuristicEarlyEventAlarm *)self _timestampByOffsettingDays:-1 dayOffset:?];
    [(ATXHeuristicEarlyEventAlarm *)self _timestampAtDayOfTimestamp:0 hour:0 minute:?];
    v28 = v27;
    v29 = [(ATXHeuristicEarlyEventAlarm *)self _usualAlarmTimeOfDayDataSourceWithEnvironment:environmentCopy];
    v113 = v29;
    if (v29 && (v29 = [v29 integerValue]) != 0)
    {
      integerValue = [v113 integerValue];
      integerValue2 = [v113 integerValue];
      v32 = __atxlog_handle_context_heuristic(integerValue2);
      v33 = integerValue / 3600;
      v34 = ((integerValue2 - 3600 * v33) / 60.0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v141 = v33;
        v142 = 2048;
        v143 = v34;
        _os_log_impl(&dword_23E3EA000, v32, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: heuristicResultWithEnvironment medianSetAlarmTime: %lu:%lu)", buf, 0x16u);
      }

      v35 = [(ATXHeuristicEarlyEventAlarm *)self _timestampWithHour:v33 minute:v34 atDayOfTimestamp:v28];
      v37 = v36;
      v38 = __atxlog_handle_context_heuristic(v35);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
        v40 = locDate(v39);
        *buf = 138412290;
        v141 = v40;
        _os_log_impl(&dword_23E3EA000, v38, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: heuristicResultWithEnvironment timestampOfSuggestedSetTime: %@)", buf, 0xCu);
      }

      doubleValue = [v115 doubleValue];
      if (v42 - v37 >= 86400.0)
      {
        v43 = __atxlog_handle_context_heuristic(doubleValue);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = locDate(v115);
          v45 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
          v46 = locDate(v45);
          *buf = 138412546;
          v141 = v44;
          v142 = 2112;
          v143 = v46;
          _os_log_impl(&dword_23E3EA000, v43, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: heuristicResultWithEnvironment Night owl case detected. Event start time: %@; Original suggested timestamp to show prediction: %@", buf, 0x16u);
        }

        [(ATXHeuristicEarlyEventAlarm *)self _timestampByOffsettingDays:1 dayOffset:v37];
        v37 = v47;
      }

      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceReferenceDate];
      v50 = v49;

      v51 = v37 + -3600.0;
      if (v37 + -3600.0 < v50)
      {
        doubleValue2 = [v112 doubleValue];
        v54 = v53;
        v55 = __atxlog_handle_context_heuristic(doubleValue2);
        v37 = v54 + 3600.0;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
          v57 = locDate(v56);
          *buf = 138412290;
          v141 = v57;
          _os_log_impl(&dword_23E3EA000, v55, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: heuristicResultWithEnvironment Suggested timestamp to show prediction detected as being in the past. Updating suggested timestamp to show the prediction to 1 hour + eventCreationTime = %@", buf, 0xCu);
        }
      }

      doubleValue3 = [v115 doubleValue];
      v60 = v59 + -28800.0;
      if (v37 >= v60)
      {
        v37 = v60;
      }

      v61 = __atxlog_handle_context_heuristic(doubleValue3);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
        v63 = locDate(v62);
        *buf = 138412290;
        v141 = v63;
        _os_log_impl(&dword_23E3EA000, v61, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: heuristicResultWithEnvironment Final suggested timestamp to show the prediction: %@)", buf, 0xCu);
      }

      [v115 doubleValue];
      v65 = v64;
      v66 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v110 = [v66 localizedStringForKey:@"ALARM_TITLE" value:&stru_2850AD368 table:0];
      v67 = MEMORY[0x277CBEAA8];
      [v115 doubleValue];
      v68 = [v67 dateWithTimeIntervalSinceReferenceDate:?];
      v69 = [MEMORY[0x277CCA968] localizedStringFromDate:v68 dateStyle:0 timeStyle:1];
      v111 = [v117 objectForKeyedSubscript:@"eventTitle"];
      [ATXHeuristicEventUtilities isEventAtOneWithTimestamp:v115];
      v70 = MEMORY[0x277CCACA8];
      v71 = [v66 localizedStringForKey:@"ALARM_SUBTITLE_(hour is 1)" value:&stru_2850AD368 table:0];
      v109 = [v70 localizedStringWithFormat:v71, v111, v69, v66, v68, v69];

      v77 = v37 + -14400.0;
      v78 = v37 + 14400.0;
      if (v114)
      {
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        obj = v114;
        v79 = [obj countByEnumeratingWithState:&v118 objects:v150 count:16];
        v80 = v79;
        if (v79)
        {
          v81 = *v119;
          while (2)
          {
            v82 = 0;
            do
            {
              if (*v119 != v81)
              {
                objc_enumerationMutation(obj);
              }

              v83 = *(*(&v118 + 1) + 8 * v82);
              v84 = __atxlog_handle_context_heuristic(v79);
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23E3EA000, v84, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: Bailing because an alarm was already modified during the suggestion time span", buf, 2u);
              }

              v85 = [v83 objectForKeyedSubscript:@"lastModifiedTS"];
              v86 = v85 == 0;

              if (!v86)
              {
                v87 = [v83 objectForKeyedSubscript:@"lastModifiedTS"];
                [v87 doubleValue];
                if (v88 >= v77)
                {
                  doubleValue4 = [v87 doubleValue];
                  if (v90 <= v78)
                  {
                    v105 = __atxlog_handle_context_heuristic(doubleValue4);
                    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_23E3EA000, v105, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: Bailing because an alarm was already modified during the suggestion time span", buf, 2u);
                    }

                    v73 = objc_opt_new();
                    goto LABEL_71;
                  }
                }
              }

              ++v82;
            }

            while (v80 != v82);
            v79 = [obj countByEnumeratingWithState:&v118 objects:v150 count:16];
            v80 = v79;
            if (v79)
            {
              continue;
            }

            break;
          }
        }
      }

      obj = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v65 + -3600.0];
      v91 = __atxlog_handle_context_heuristic(obj);
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        v92 = [MEMORY[0x277CCABB0] numberWithDouble:v77];
        v93 = locDate(v92);
        v94 = [MEMORY[0x277CCABB0] numberWithDouble:v78];
        v95 = locDate(v94);
        *buf = 138740995;
        v141 = v110;
        v142 = 2117;
        v143 = v109;
        v144 = 2112;
        v145 = obj;
        v146 = 2112;
        v147 = v93;
        v148 = 2112;
        v149 = v95;
        _os_log_impl(&dword_23E3EA000, v91, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: action title: %{sensitive}@, subtitle: %{sensitive}@ alarmDate:%@, valid between %@ and %@", buf, 0x34u);
      }

      v96 = MEMORY[0x277CEB2C8];
      v97 = [v117 objectForKeyedSubscript:@"eventIdentifier"];
      v87 = [v96 atx_setAlarmActionWithTitle:v110 subtitle:v109 eventIdentifier:v97 eventTitle:v111 alarmDate:obj heuristicName:@"setAlarmForUnusualEarlyEvents"];

      v98 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v77];
      v99 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v78];
      v100 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:v98 endDate:v99 lockScreenEligible:0 predicate:0];
      [v87 setCriteria:v100];
      v101 = [ATXContextHeuristicSuggestionProducer suggestionWithAction:v87 predictionReasons:0x4000000000 localizedReason:0 score:0 dateInterval:40.0];
      v102 = objc_opt_new();
      v103 = [ATXContextHeuristicResult alloc];
      v139 = v101;
      v104 = [MEMORY[0x277CBEA60] arrayWithObjects:&v139 count:1];
      v73 = [(ATXContextHeuristicResult *)v103 initWithSuggestions:v104 additionalRefreshTriggers:v102];

LABEL_71:
    }

    else
    {
      v76 = __atxlog_handle_context_heuristic(v29);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E3EA000, v76, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: Suppressing action because user has never set alarm before", buf, 2u);
      }

      v73 = objc_opt_new();
    }
  }

  else
  {
    v75 = __atxlog_handle_context_heuristic(v26);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v75, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: Earliest event is already covered by user alarm. Skipping", buf, 2u);
    }

    v73 = objc_opt_new();
  }

LABEL_41:
  _Block_object_dispose(&v127, 8);

  _Block_object_dispose(&v133, 8);

  return v73;
}

void __62__ATXHeuristicEarlyEventAlarm_heuristicResultWithEnvironment___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)isEventInterestingForSettingAlarm:(id)alarm
{
  alarmCopy = alarm;
  v4 = [alarmCopy objectForKeyedSubscript:@"isAllDay"];

  v13 = 0;
  if (!v4 || ([alarmCopy objectForKeyedSubscript:@"isAllDay"], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLValue"), v5, (v6 & 1) == 0))
  {
    v7 = [alarmCopy objectForKeyedSubscript:@"nlEventCalendar"];

    if (!v7 || ([alarmCopy objectForKeyedSubscript:@"nlEventCalendar"], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "BOOLValue"), v8, (v9 & 1) == 0))
    {
      v10 = [alarmCopy objectForKeyedSubscript:@"eventTitle"];

      if (!v10 || ([alarmCopy objectForKeyedSubscript:@"eventTitle"], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"[Placeholder Item]"), v11, (v12 & 1) == 0))
      {
        v13 = 1;
      }
    }
  }

  return v13;
}

- (BOOL)shouldShowSuggestionForEarlyEvent:(id)event alarms:(id)alarms environment:(id)environment
{
  v44 = *MEMORY[0x277D85DE8];
  alarmsCopy = alarms;
  environmentCopy = environment;
  v10 = [event objectForKeyedSubscript:@"startDateTimestamp"];
  [v10 doubleValue];
  v12 = v11;
  [(ATXHeuristicEarlyEventAlarm *)self _timestampByOffsettingStartOfTodayByNumberOfDays:1];
  v14 = v13;
  v15 = v12 + -3540.0;
  v16 = [(ATXHeuristicEarlyEventAlarm *)self _enabledAlarmsFromTS:environmentCopy toTS:v13 environment:v15];
  if ([v16 count])
  {
    v31 = v10;
    v32 = environmentCopy;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v38;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v37 + 1) + 8 * i);
          v23 = [v22 objectForKeyedSubscript:{@"isEnabled", v31, v32}];
          if ([v23 BOOLValue] && -[ATXHeuristicEarlyEventAlarm _willAlarm:fireFrom:to:](self, "_willAlarm:fireFrom:to:", v22, v14, v15))
          {

            v29 = 0;
            goto LABEL_23;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v37 objects:v43 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v17 = v17;
    v24 = [v17 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v34;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(v17);
          }

          v28 = [*(*(&v33 + 1) + 8 * j) copy];
          [alarmsCopy addObject:v28];
        }

        v25 = [v17 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v25);
    }

    v29 = 1;
LABEL_23:
    v10 = v31;
    environmentCopy = v32;
  }

  else
  {
    v17 = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v17, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: shouldShowSuggestionForEarlyEvent: No existing alarms found", buf, 2u);
    }

    v29 = 1;
  }

  return v29;
}

- (BOOL)_willAlarm:(id)alarm fireFrom:(double)from to:(double)to
{
  v7 = MEMORY[0x277CBEAA8];
  alarmCopy = alarm;
  v9 = [v7 dateWithTimeIntervalSinceReferenceDate:from];
  v10 = [alarmCopy objectForKeyedSubscript:@"MTAlarm"];

  v11 = [v10 nextFireDateAfterDate:v9];
  v12 = v11;
  if (v11)
  {
    [v11 timeIntervalSinceReferenceDate];
    v14 = v13 < to;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_enabledAlarmsFromTS:(double)s toTS:(double)tS environment:(id)environment
{
  environmentCopy = environment;
  v8 = [ATXAlarmsDataSource alloc];
  heuristicDevice = [environmentCopy heuristicDevice];
  v10 = [(ATXAlarmsDataSource *)v8 initWithDevice:heuristicDevice];

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__4;
  v35 = __Block_byref_object_dispose__4;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__4;
  v30 = 0;
  v11 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:s];
  v12 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:tS];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69__ATXHeuristicEarlyEventAlarm__enabledAlarmsFromTS_toTS_environment___block_invoke;
  v24[3] = &unk_278C3CDA8;
  v24[4] = &v31;
  v24[5] = &v25;
  v13 = [(ATXAlarmsDataSource *)v10 alarmsFromDate:v11 toDate:v12 completionHandler:v24];
  if (v26[5])
  {
    v14 = __atxlog_handle_context_heuristic(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeuristicEarlyEventAlarm *)v14 _enabledAlarmsFromTS:v15 toTS:v16 environment:v17, v18, v19, v20, v21];
    }

    v22 = 0;
  }

  else
  {
    v22 = v32[5];
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v22;
}

void __69__ATXHeuristicEarlyEventAlarm__enabledAlarmsFromTS_toTS_environment___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_usualAlarmTimeOfDayDataSourceWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = [ATXSetAlarmTimeOfDayDataSource alloc];
  heuristicDevice = [environmentCopy heuristicDevice];
  v6 = [(ATXSetAlarmTimeOfDayDataSource *)v4 initWithDevice:heuristicDevice];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__4;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__4;
  v23 = __Block_byref_object_dispose__4;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__ATXHeuristicEarlyEventAlarm__usualAlarmTimeOfDayDataSourceWithEnvironment___block_invoke;
  v18[3] = &unk_278C3CDD0;
  v18[4] = &v25;
  v18[5] = &v19;
  v7 = [(ATXSetAlarmTimeOfDayDataSource *)v6 alarmTimeOfDay:v18];
  if (v20[5])
  {
    v8 = __atxlog_handle_context_heuristic(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeuristicEarlyEventAlarm *)v8 _usualAlarmTimeOfDayDataSourceWithEnvironment:v9, v10, v11, v12, v13, v14, v15];
    }

    v16 = 0;
  }

  else
  {
    v16 = v26[5];
  }

  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v16;
}

void __77__ATXHeuristicEarlyEventAlarm__usualAlarmTimeOfDayDataSourceWithEnvironment___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (double)_timestampByOffsettingStartOfTodayByNumberOfDays:(int64_t)days
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

- (double)_timestampWithHour:(unint64_t)hour minute:(unint64_t)minute atDayOfTimestamp:(double)timestamp
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:timestamp];
  v10 = [currentCalendar components:28 fromDate:v9];
  [v10 setHour:hour];
  [v10 setMinute:minute];
  v11 = [currentCalendar dateFromComponents:v10];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  return v13;
}

- (double)_timestampByOffsettingDays:(double)days dayOffset:(int64_t)offset
{
  v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:days];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [currentCalendar dateByAddingUnit:16 value:offset toDate:v5 options:0];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  return v9;
}

- (void)heuristicResultWithEnvironment:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[ATXHeuristicEarlyEventAlarm heuristicResultWithEnvironment:]";
  OUTLINED_FUNCTION_0_2(&dword_23E3EA000, a1, a3, "Error querying data source %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_enabledAlarmsFromTS:(uint64_t)a3 toTS:(uint64_t)a4 environment:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[ATXHeuristicEarlyEventAlarm _enabledAlarmsFromTS:toTS:environment:]";
  OUTLINED_FUNCTION_0_2(&dword_23E3EA000, a1, a3, "Error querying data source %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_usualAlarmTimeOfDayDataSourceWithEnvironment:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[ATXHeuristicEarlyEventAlarm _usualAlarmTimeOfDayDataSourceWithEnvironment:]";
  OUTLINED_FUNCTION_0_2(&dword_23E3EA000, a1, a3, "Error querying data source %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end