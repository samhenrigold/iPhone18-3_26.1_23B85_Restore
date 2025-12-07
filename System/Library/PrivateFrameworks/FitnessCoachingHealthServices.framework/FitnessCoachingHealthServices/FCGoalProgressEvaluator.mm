@interface FCGoalProgressEvaluator
+ (BOOL)_eventDidCrossScheduledThreshold:(id)threshold withModel:(id)model evaluationDelegate:(id)delegate;
+ (id)_nextFireDateForEvent:(id)event model:(id)model;
+ (id)evaluateEvents:(id)events withModel:(id)model evaluationDelegate:(id)delegate;
+ (id)nextScheduledDatesByEventIdentifiersForEvents:(id)events model:(id)model evaluationDelegate:(id)delegate;
@end

@implementation FCGoalProgressEvaluator

+ (id)nextScheduledDatesByEventIdentifiersForEvents:(id)events model:(id)model evaluationDelegate:(id)delegate
{
  v27 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  modelCopy = model;
  delegateCopy = delegate;
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = eventsCopy;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        eventIdentifier = [v16 eventIdentifier];
        v19 = [self _nextFireDateForEvent:v16 model:modelCopy];
        if (v19)
        {
          [v10 setObject:v19 forKeyedSubscript:eventIdentifier];
        }

        objc_autoreleasePoolPop(v17);
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  return v10;
}

+ (id)evaluateEvents:(id)events withModel:(id)model evaluationDelegate:(id)delegate
{
  v24 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  modelCopy = model;
  delegateCopy = delegate;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = eventsCopy;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        if ([self _eventDidCrossScheduledThreshold:v17 withModel:modelCopy evaluationDelegate:{delegateCopy, v19}] && objc_msgSend(v17, "shouldFireWithTypicalDayModel:evaluationDelegate:", modelCopy, delegateCopy))
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v11;
}

+ (id)_nextFireDateForEvent:(id)event model:(id)model
{
  v38 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  modelCopy = model;
  v7 = [eventCopy nextFireDateWithModel:modelCopy];
  [modelCopy projectedDayDuration];
  v9 = v8;
  if (v7)
  {
    [v7 timeIntervalSinceReferenceDate];
    v11 = v10;
    startOfToday = [modelCopy startOfToday];
    [startOfToday timeIntervalSinceReferenceDate];
    if (v11 < v13)
    {

      goto LABEL_5;
    }

    [v7 timeIntervalSinceReferenceDate];
    v15 = v14;
    endOfToday = [modelCopy endOfToday];
    [endOfToday timeIntervalSinceReferenceDate];
    v18 = v17;

    if (v15 > v18)
    {
LABEL_5:
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC290];
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        startOfToday2 = [modelCopy startOfToday];
        endOfToday2 = [modelCopy endOfToday];
        v30 = 138544130;
        v31 = v22;
        v32 = 2112;
        v33 = v7;
        v34 = 2112;
        v35 = startOfToday2;
        v36 = 2112;
        v37 = endOfToday2;
        _os_log_error_impl(&dword_24B55B000, v20, OS_LOG_TYPE_ERROR, "Coaching progress reason %{public}@ returned a fire date outside the bounds of the current day. %@ was outside of [%@, %@]", &v30, 0x2Au);

LABEL_10:
        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  [eventCopy minimumDayDuration];
  if (v9 < v25)
  {
    _HKInitializeLogging();
    v26 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v26;
      [eventCopy minimumDayDuration];
      v30 = 134218240;
      v31 = v9;
      v32 = 2048;
      v33 = v27;
      _os_log_impl(&dword_24B55B000, v20, OS_LOG_TYPE_DEFAULT, "Duration in day too short for event (duration in day: %ld, minimum: %ld)", &v30, 0x16u);
      goto LABEL_10;
    }

LABEL_11:
    v28 = 0;
    goto LABEL_13;
  }

  v28 = v7;
LABEL_13:

  return v28;
}

+ (BOOL)_eventDidCrossScheduledThreshold:(id)threshold withModel:(id)model evaluationDelegate:(id)delegate
{
  v50 = *MEMORY[0x277D85DE8];
  thresholdCopy = threshold;
  delegateCopy = delegate;
  modelCopy = model;
  eventIdentifier = [thresholdCopy eventIdentifier];
  v12 = [delegateCopy lastFiredDateForProgressEventIdentifier:eventIdentifier];
  v13 = [self _nextFireDateForEvent:thresholdCopy model:modelCopy];
  currentDate = [delegateCopy currentDate];
  currentCalendar = [delegateCopy currentCalendar];

  [modelCopy projectedDayDuration];
  v17 = v16;

  [currentDate timeIntervalSinceDate:v13];
  v19 = v18;
  [currentDate timeIntervalSinceReferenceDate];
  v21 = v20;
  [v13 timeIntervalSinceReferenceDate];
  v23 = v22;
  if (v12)
  {
    v24 = [currentCalendar isDate:v12 inSameDayAsDate:currentDate];
  }

  else
  {
    v24 = 0;
  }

  _HKInitializeLogging();
  v25 = MEMORY[0x277CCC290];
  v26 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_INFO))
  {
    v27 = v26;
    eventIdentifier2 = [thresholdCopy eventIdentifier];
    *buf = 138544642;
    v40 = eventIdentifier2;
    v41 = 2112;
    *v42 = v12;
    *&v42[8] = 2112;
    v43 = v13;
    v44 = 2112;
    v45 = currentDate;
    v46 = 2048;
    v47 = v17;
    v48 = 2048;
    v49 = v19;
    _os_log_impl(&dword_24B55B000, v27, OS_LOG_TYPE_INFO, "Evaluating if event %{public}@ crossed the scheduled threshold - lastFired: %@, scheduledFireDate: %@, now: %@, durationOfToday: %lf, intervalBetweenScheduledDateAndNow: %lf", buf, 0x3Eu);
  }

  v29 = v17 * 0.25;
  _HKInitializeLogging();
  v30 = *v25;
  if (os_log_type_enabled(*v25, OS_LOG_TYPE_INFO))
  {
    v31 = v30;
    eventIdentifier3 = [thresholdCopy eventIdentifier];
    *buf = 138544130;
    v40 = eventIdentifier3;
    v41 = 1024;
    *v42 = v21 >= v23;
    v25 = MEMORY[0x277CCC290];
    *&v42[4] = 1024;
    *&v42[6] = v24;
    LOWORD(v43) = 1024;
    *(&v43 + 2) = v19 >= v29;
    _os_log_impl(&dword_24B55B000, v31, OS_LOG_TYPE_INFO, "Evaluating if event %{public}@ crossed the scheduled threshold - scheduledDateInPast: %{BOOL}d, lastFiredDateWasToday: %{BOOL}d, scheduledDateIsTooLongAgoFromNow: %{BOOL}d", buf, 0x1Eu);
  }

  if (v21 < v23 || v13 == 0)
  {
    v34 = 0;
  }

  else
  {
    v34 = (v19 < v29) & ~v24;
  }

  _HKInitializeLogging();
  v35 = *v25;
  if (os_log_type_enabled(*v25, OS_LOG_TYPE_INFO))
  {
    v36 = v35;
    eventIdentifier4 = [thresholdCopy eventIdentifier];
    *buf = 138543618;
    v40 = eventIdentifier4;
    v41 = 1024;
    *v42 = v34;
    _os_log_impl(&dword_24B55B000, v36, OS_LOG_TYPE_INFO, "Event %{public}@ crossed the scheduled threshold result: %{BOOL}d", buf, 0x12u);
  }

  return v34;
}

@end