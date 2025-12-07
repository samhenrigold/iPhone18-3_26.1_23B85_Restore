@interface ATXContextAlarmSuggestionProducer
- (ATXContextAlarmSuggestionProducer)initWithValidDateInterval:(id)interval reasonCode:(int64_t)code score:(double)score;
- (BOOL)_isToggleContextualAction:(id)action;
- (id)_alarmsWithEnvironment:(id)environment startTimestamp:(double)timestamp endTimestamp:(double)endTimestamp;
- (id)_criteriaWithAlarm:(id)alarm;
- (id)_filterAlarmsEligible:(id)eligible proposedInterval:(id)interval;
- (id)_morningAlarmsWithEnvironment:(id)environment;
- (id)_nextMorningAlarmsWithEnvironment:(id)environment;
- (id)editNextAlarmSuggestionsWithEnvironment:(id)environment;
- (id)morningAlarmToggleSuggestionsWithEnvironment:(id)environment;
@end

@implementation ATXContextAlarmSuggestionProducer

- (ATXContextAlarmSuggestionProducer)initWithValidDateInterval:(id)interval reasonCode:(int64_t)code score:(double)score
{
  intervalCopy = interval;
  v13.receiver = self;
  v13.super_class = ATXContextAlarmSuggestionProducer;
  v10 = [(ATXContextAlarmSuggestionProducer *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_validDateInterval, interval);
    v11->_reasonCode = code;
    v11->_score = score;
  }

  return v11;
}

- (id)morningAlarmToggleSuggestionsWithEnvironment:(id)environment
{
  v58 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v4 = [(ATXContextAlarmSuggestionProducer *)self _morningAlarmsWithEnvironment:?];
  v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  selfCopy = self;
  reasonCode = self->_reasonCode;
  v39 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v4;
  v46 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
  v6 = 0;
  if (v46)
  {
    v38 = 1 << reasonCode;
    v7 = *v50;
    v8 = 0x278C3C000uLL;
    v40 = *v50;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v50 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        v11 = [*(v8 + 744) localizedTimeWithAlarmDict:v10];
        v12 = __atxlog_handle_context_heuristic(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v10 objectForKeyedSubscript:@"displayTitle"];
          *buf = 138412547;
          v54 = v11;
          v55 = 2117;
          v56 = v13;
          _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: morningAlarmToggleSuggestionsWithEnvironment found one morning alarm that fires at %@, %{sensitive}@", buf, 0x16u);

          v8 = 0x278C3C000uLL;
        }

        v14 = [v10 objectForKeyedSubscript:@"isSleepAlarm"];
        bOOLValue = [v14 BOOLValue];
        if (bOOLValue)
        {
          v16 = __atxlog_handle_context_heuristic(bOOLValue);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            [v10 objectForKeyedSubscript:@"isSleepAlarm"];
            v18 = v17 = v14;
            *buf = 138412546;
            v54 = v11;
            v55 = 2112;
            v56 = v18;
            _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: %@ morningAlarm[isSleepAlarm]=%@, skipping", buf, 0x16u);

            v14 = v17;
          }
        }

        else
        {
          v45 = v14;
          if (v11)
          {
            v19 = v11;
          }

          else
          {
            v19 = [v37 localizedStringForKey:@"TOGGLE_ALARM_TITLE" value:&stru_2850AD368 table:0];
          }

          v44 = v19;

          v21 = __atxlog_handle_context_heuristic(v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23E3EA000, v21, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: morningAlarmToggleSuggestionsWithEnvironment Creating update alarm action for one alarm", buf, 2u);
          }

          v43 = v11;

          v16 = [*(v8 + 744) alarmDataWithAlarmDict:v10];
          v22 = objc_alloc(MEMORY[0x277D7A180]);
          v23 = [v10 objectForKeyedSubscript:@"alarmID"];
          v24 = [v10 objectForKeyedSubscript:@"displayTitle"];
          v25 = [v22 initWithAlarmIdentifier:v23 alarmName:v24 alarmData:v16 operation:2];

          v27 = __atxlog_handle_context_heuristic(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23E3EA000, v27, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: morningAlarmToggleSuggestionsWithEnvironment Creating WFToggleAlarmContextualAction for one alarm", buf, 2u);
          }

          v28 = [(ATXContextAlarmSuggestionProducer *)selfCopy _criteriaWithAlarm:v10];
          if (v28)
          {
            v29 = [objc_alloc(MEMORY[0x277CEB820]) initWithContextualAction:v25 criteria:v28];
            v30 = [*(v8 + 744) fireDateWithAlarmDict:v10];
            v31 = MEMORY[0x277CCACA8];
            [v30 timeIntervalSinceReferenceDate];
            v33 = [v31 stringWithFormat:@"%f", v32];
            v6 = v44;
            v34 = [ATXContextHeuristicSuggestionProducer suggestionWithShortcutAction:v29 predictionReasons:v38 localizedReason:0 title:v44 subtitle:v33 score:0 dateInterval:selfCopy->_score];

            v8 = 0x278C3C000;
            [v39 addObject:v34];

            v14 = v45;
          }

          else
          {
            v34 = __atxlog_handle_context_heuristic(0);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              [(ATXContextAlarmSuggestionProducer *)&v47 morningAlarmToggleSuggestionsWithEnvironment:v48, v34];
            }

            v6 = v44;
            v14 = v45;
          }

          v11 = v43;

          v7 = v40;
        }
      }

      v46 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v46);
  }

  return v39;
}

- (id)_criteriaWithAlarm:(id)alarm
{
  alarmCopy = alarm;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [alarmCopy objectForKeyedSubscript:@"hour"];
  if (v6)
  {
    v7 = [alarmCopy objectForKeyedSubscript:@"minute"];
    if (v7)
    {
      integerValue = [v6 integerValue];
      integerValue2 = [v7 integerValue];
      startDate = [(NSDateInterval *)self->_validDateInterval startDate];
      v11 = [currentCalendar dateBySettingHour:integerValue minute:integerValue2 second:0 ofDate:startDate options:0];

      v12 = objc_alloc(MEMORY[0x277CEB2D0]);
      startDate2 = [(NSDateInterval *)self->_validDateInterval startDate];
      v14 = [v12 initWithStartDate:startDate2 endDate:v11 lockScreenEligible:0 predicate:0];

      goto LABEL_10;
    }

    v15 = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [ATXContextAlarmSuggestionProducer _criteriaWithAlarm:v15];
    }
  }

  else
  {
    v7 = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXContextAlarmSuggestionProducer _criteriaWithAlarm:v7];
    }
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (id)editNextAlarmSuggestionsWithEnvironment:(id)environment
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = self->_validDateInterval;
  v6 = [(ATXContextAlarmSuggestionProducer *)self _nextMorningAlarmsWithEnvironment:environment];
  v7 = __atxlog_handle_context_heuristic(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v6;
    _os_log_impl(&dword_23E3EA000, v7, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: editNextAlarmSuggestionsWithEnvironment morningAlarms=%@", buf, 0xCu);
  }

  v8 = objc_alloc(MEMORY[0x277CEB2D0]);
  startDate = [(NSDateInterval *)v5 startDate];
  endDate = [(NSDateInterval *)v5 endDate];
  v11 = [v8 initWithStartDate:startDate endDate:endDate lockScreenEligible:0 predicate:0];

  if (v11)
  {
    if ([v6 count])
    {
      v12 = [ATXHeuristicAlarmUtilities firstFiringAmongAlarms:v6];
      if (v12)
      {
        v34 = [ATXHeuristicAlarmUtilities localizedTimeWithAlarmDict:v12];
        v13 = __atxlog_handle_context_heuristic(v34);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v12 objectForKeyedSubscript:@"displayTitle"];
          *buf = 138412547;
          v37 = v34;
          v38 = 2117;
          v39 = v14;
          _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: editNextAlarmSuggestionsWithEnvironment found one morning alarm that fires at %@, %{sensitive}@", buf, 0x16u);
        }

        v16 = __atxlog_handle_context_heuristic(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: editNextAlarmSuggestionsWithEnvironment Creating update alarm action for one alarm", buf, 2u);
        }

        v32 = 1 << self->_reasonCode;
        v17 = [ATXHeuristicAlarmUtilities alarmDataWithAlarmDict:v12];
        v18 = objc_alloc(MEMORY[0x277D7A180]);
        v19 = [v12 objectForKeyedSubscript:@"alarmID"];
        v20 = [v12 objectForKeyedSubscript:@"displayTitle"];
        v33 = v17;
        v21 = [v18 initWithAlarmIdentifier:v19 alarmName:v20 alarmData:v17 operation:2];

        v23 = __atxlog_handle_context_heuristic(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23E3EA000, v23, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: morningAlarmToggleSuggestionsWithEnvironment Creating WFToggleAlarmContextualAction for one alarm", buf, 2u);
        }

        v24 = [objc_alloc(MEMORY[0x277CEB820]) initWithContextualAction:v21 criteria:v11];
        v25 = [ATXHeuristicAlarmUtilities fireDateWithAlarmDict:v12];
        v26 = MEMORY[0x277CCACA8];
        [v25 timeIntervalSinceReferenceDate];
        v28 = [v26 stringWithFormat:@"%f", v27];
        v29 = [ATXContextHeuristicSuggestionProducer suggestionWithShortcutAction:v24 predictionReasons:v32 localizedReason:0 title:v34 subtitle:v28 score:0 dateInterval:self->_score];

        if (v29)
        {
          v35 = v29;
          v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
        }

        else
        {
          v30 = MEMORY[0x277CBEBF8];
        }
      }

      else
      {
        v30 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v30 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v30 = objc_opt_new();
  }

  return v30;
}

- (BOOL)_isToggleContextualAction:(id)action
{
  actionCopy = action;
  if (objc_opt_respondsToSelector())
  {
    settingBiomeStreamIdentifier = [actionCopy settingBiomeStreamIdentifier];
    v5 = settingBiomeStreamIdentifier != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_nextMorningAlarmsWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = +[ATXHeuristicGoodMorning contextDateInterval];
  endDate = [(NSDateInterval *)self->_validDateInterval endDate];
  [endDate timeIntervalSinceReferenceDate];
  v8 = v7;

  endDate2 = [v5 endDate];
  [endDate2 timeIntervalSinceReferenceDate];
  v11 = v10;

  [ATXHeuristicTimeUtilities timestampByOffsettingDays:1 dayOffset:v11];
  v13 = [(ATXContextAlarmSuggestionProducer *)self _alarmsWithEnvironment:environmentCopy startTimestamp:v8 endTimestamp:v12];

  return v13;
}

- (id)_morningAlarmsWithEnvironment:(id)environment
{
  validDateInterval = self->_validDateInterval;
  environmentCopy = environment;
  startDate = [(NSDateInterval *)validDateInterval startDate];
  [startDate timeIntervalSinceReferenceDate];
  v8 = v7;

  endDate = [(NSDateInterval *)self->_validDateInterval endDate];
  [endDate timeIntervalSinceReferenceDate];
  v11 = v10;

  v12 = [(ATXContextAlarmSuggestionProducer *)self _alarmsWithEnvironment:environmentCopy startTimestamp:v8 endTimestamp:v11];

  return v12;
}

- (id)_alarmsWithEnvironment:(id)environment startTimestamp:(double)timestamp endTimestamp:(double)endTimestamp
{
  v32 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v9 = __atxlog_handle_context_heuristic(environmentCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:timestamp];
    v11 = locDate(v10);
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:endTimestamp];
    v13 = locDate(v12);
    v28 = 138412546;
    v29 = v11;
    v30 = 2112;
    v31 = v13;
    _os_log_impl(&dword_23E3EA000, v9, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: _alarmsWithEnvironment looking for alarms between %@ and %@", &v28, 0x16u);
  }

  v14 = [ATXHeuristicTimeUtilities enabledAlarmsFromTS:environmentCopy toTS:timestamp environment:endTimestamp];

  v15 = [v14 count];
  v16 = __atxlog_handle_context_heuristic(v15);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      v18 = [v14 count];
      v28 = 134217984;
      v29 = v18;
      _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: _alarmsWithEnvironment Found a total of %lu alarm(s)", &v28, 0xCu);
    }

    v19 = [(ATXContextAlarmSuggestionProducer *)self _filterAlarmsEligible:v14 proposedInterval:self->_validDateInterval];
    v20 = [v19 count];
    v21 = __atxlog_handle_context_heuristic(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v22)
      {
        v23 = [v19 count];
        endDate = [(NSDateInterval *)self->_validDateInterval endDate];
        v28 = 134218242;
        v29 = v23;
        v30 = 2112;
        v31 = endDate;
        _os_log_impl(&dword_23E3EA000, v21, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: _alarmsWithEnvironment Found %lu morning alarm(s) that will fire before %@", &v28, 0x16u);
      }

      v19 = v19;
      v25 = v19;
    }

    else
    {
      if (v22)
      {
        endDate2 = [(NSDateInterval *)self->_validDateInterval endDate];
        v28 = 138412290;
        v29 = endDate2;
        _os_log_impl(&dword_23E3EA000, v21, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: _alarmsWithEnvironment Suppressing action because there are no enabled alarms before %@", &v28, 0xCu);
      }

      v25 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    if (v17)
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: _alarmsWithEnvironment No existing alarms found", &v28, 2u);
    }

    v19 = MEMORY[0x277CBEBF8];
    v25 = MEMORY[0x277CBEBF8];
  }

  return v25;
}

- (id)_filterAlarmsEligible:(id)eligible proposedInterval:(id)interval
{
  intervalCopy = interval;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__ATXContextAlarmSuggestionProducer__filterAlarmsEligible_proposedInterval___block_invoke;
  v9[3] = &unk_278C3D4B0;
  v10 = intervalCopy;
  v6 = intervalCopy;
  v7 = [eligible _pas_filteredArrayWithTest:v9];

  return v7;
}

BOOL __76__ATXContextAlarmSuggestionProducer__filterAlarmsEligible_proposedInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"zkwAllowModifedAlarms", *MEMORY[0x277CEBD00], &keyExistsAndHasValidFormat);
  if (AppBooleanValue)
  {
    v5 = __atxlog_handle_context_heuristic(AppBooleanValue);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_23E3EA000, v5, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: _filterAlarmsEligible  internal setting zkwAllowModifedAlarms is on. Allowing even modified alarms", v8, 2u);
    }

    v6 = 1;
  }

  else
  {
    v6 = [ATXHeuristicAlarmUtilities isValidNonRecentlyModifiedAlarm:v3 duringInterval:*(a1 + 32)];
  }

  return v6;
}

- (void)morningAlarmToggleSuggestionsWithEnvironment:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_23E3EA000, log, OS_LOG_TYPE_FAULT, "ATXContextAlarmSuggestionProducer: _criteriaWithAlarm is nil, skipping", buf, 2u);
}

@end