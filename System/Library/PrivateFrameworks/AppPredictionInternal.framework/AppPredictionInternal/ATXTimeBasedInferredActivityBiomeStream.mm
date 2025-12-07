@interface ATXTimeBasedInferredActivityBiomeStream
- (id)sessionPublisherFromStartTime:(double)time;
- (id)transitionPublisherFromStartTime:(double)time;
- (void)_addBedtimeTransitionsForDate:(id)date calendar:(id)calendar toArray:(id)array;
- (void)_addHomeTransitionsForDate:(id)date calendar:(id)calendar toArray:(id)array;
- (void)_addTransitionForDate:(id)date transitionHour:(int64_t)hour transitionMinute:(int64_t)minute calendar:(id)calendar isEntry:(BOOL)entry activity:(unint64_t)activity toArray:(id)array;
- (void)_addWorkTransitionsForDate:(id)date calendar:(id)calendar toArray:(id)array;
@end

@implementation ATXTimeBasedInferredActivityBiomeStream

- (id)sessionPublisherFromStartTime:(double)time
{
  v3 = [(ATXTimeBasedInferredActivityBiomeStream *)self transitionPublisherFromStartTime:time];
  v4 = [_ATXUnifiedActivityStreamConversions sessionPublisherFromTransitionPublisher:v3];

  return v4;
}

- (id)transitionPublisherFromStartTime:(double)time
{
  v35 = *MEMORY[0x277D85DE8];
  if (time == 0.0)
  {
    v22 = __atxlog_handle_modes(self);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [ATXTimeBasedInferredActivityBiomeStream transitionPublisherFromStartTime:v22];
    }

    bpsPublisher = [MEMORY[0x277CBEBF8] bpsPublisher];
  }

  else
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v6 = objc_opt_new();
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:time];
    v8 = [currentCalendar startOfDayForDate:v7];

    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v10 setHour:0];
    [v10 setMinute:0];
    [v10 setSecond:1];
    v11 = objc_opt_new();
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __76__ATXTimeBasedInferredActivityBiomeStream_transitionPublisherFromStartTime___block_invoke;
    v30[3] = &unk_27859FE30;
    v12 = currentCalendar;
    v31 = v12;
    v24 = v9;
    v32 = v24;
    v13 = v11;
    v33 = v13;
    v25 = v8;
    [v12 enumerateDatesStartingAfterDate:v8 matchingComponents:v10 options:2 usingBlock:v30];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          v20 = objc_autoreleasePoolPush();
          [(ATXTimeBasedInferredActivityBiomeStream *)self _addBedtimeTransitionsForDate:v19 calendar:v12 toArray:v6, v24];
          [(ATXTimeBasedInferredActivityBiomeStream *)self _addWorkTransitionsForDate:v19 calendar:v12 toArray:v6];
          [(ATXTimeBasedInferredActivityBiomeStream *)self _addHomeTransitionsForDate:v19 calendar:v12 toArray:v6];
          objc_autoreleasePoolPop(v20);
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v16);
    }

    bpsPublisher = [v6 bpsPublisher];
  }

  return bpsPublisher;
}

void __76__ATXTimeBasedInferredActivityBiomeStream_transitionPublisherFromStartTime___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) compareDate:? toDate:? toUnitGranularity:?] == 1)
  {
    *a4 = 1;
  }

  else
  {
    v6 = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    [*(a1 + 48) addObject:v7];
  }

  v6 = v7;
LABEL_6:
}

- (void)_addTransitionForDate:(id)date transitionHour:(int64_t)hour transitionMinute:(int64_t)minute calendar:(id)calendar isEntry:(BOOL)entry activity:(unint64_t)activity toArray:(id)array
{
  entryCopy = entry;
  arrayCopy = array;
  v18 = [calendar dateBySettingHour:hour minute:minute second:0 ofDate:date options:0];
  v16 = [ATXUnifiedInferredActivityTransition alloc];
  [v18 timeIntervalSinceReferenceDate];
  v17 = [ATXUnifiedInferredActivityTransition initFromTransitionTime:v16 isEntryEvent:"initFromTransitionTime:isEntryEvent:source:activityType:confidence:" source:entryCopy activityType:@"timeBasedInferredActivity" confidence:activity];
  [arrayCopy addObject:v17];
}

- (void)_addBedtimeTransitionsForDate:(id)date calendar:(id)calendar toArray:(id)array
{
  arrayCopy = array;
  calendarCopy = calendar;
  dateCopy = date;
  [(ATXTimeBasedInferredActivityBiomeStream *)self _addTransitionForDate:dateCopy transitionHour:0 transitionMinute:1 calendar:calendarCopy isEntry:1 activity:5 toArray:arrayCopy];
  [(ATXTimeBasedInferredActivityBiomeStream *)self _addTransitionForDate:dateCopy transitionHour:6 transitionMinute:30 calendar:calendarCopy isEntry:0 activity:5 toArray:arrayCopy];
}

- (void)_addWorkTransitionsForDate:(id)date calendar:(id)calendar toArray:(id)array
{
  dateCopy = date;
  calendarCopy = calendar;
  arrayCopy = array;
  if (([calendarCopy isDateInWeekend:dateCopy] & 1) == 0)
  {
    [(ATXTimeBasedInferredActivityBiomeStream *)self _addTransitionForDate:dateCopy transitionHour:9 transitionMinute:0 calendar:calendarCopy isEntry:1 activity:2 toArray:arrayCopy];
    [(ATXTimeBasedInferredActivityBiomeStream *)self _addTransitionForDate:dateCopy transitionHour:17 transitionMinute:0 calendar:calendarCopy isEntry:0 activity:2 toArray:arrayCopy];
  }
}

- (void)_addHomeTransitionsForDate:(id)date calendar:(id)calendar toArray:(id)array
{
  arrayCopy = array;
  calendarCopy = calendar;
  dateCopy = date;
  if ([calendarCopy isDateInWeekend:?])
  {
    [(ATXTimeBasedInferredActivityBiomeStream *)self _addTransitionForDate:dateCopy transitionHour:9 transitionMinute:0 calendar:calendarCopy isEntry:1 activity:1 toArray:arrayCopy];
  }

  else
  {
    [(ATXTimeBasedInferredActivityBiomeStream *)self _addTransitionForDate:dateCopy transitionHour:17 transitionMinute:30 calendar:calendarCopy isEntry:1 activity:1 toArray:arrayCopy];
  }

  [(ATXTimeBasedInferredActivityBiomeStream *)self _addTransitionForDate:dateCopy transitionHour:22 transitionMinute:0 calendar:calendarCopy isEntry:0 activity:1 toArray:arrayCopy];
}

@end