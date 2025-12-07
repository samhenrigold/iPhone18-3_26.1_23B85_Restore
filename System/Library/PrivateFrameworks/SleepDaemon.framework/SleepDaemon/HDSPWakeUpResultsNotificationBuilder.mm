@interface HDSPWakeUpResultsNotificationBuilder
- ($0AC6E346AE4835514AAA8AC86D8F4844)morningIndexRange;
- (BOOL)_didMeetSleepDurationGoalLastNight;
- (BOOL)hasSufficientSleepData;
- (HDSPWakeUpResultsNotificationBuilder)initWithDaySummaries:(id)summaries morningIndexRange:(id)range userFirstName:(id)name;
- (id)_notificationForCategory:(unint64_t)category morningIndexRange:(id)range goalAchieved:(id)achieved;
- (id)_sleepDurationGoalAchievedLastNightNotification;
- (id)_sleepDurationGoalAchievedShortWeekNotification;
- (id)_sleepDurationGoalAchievedTwoWeekNotification;
- (id)buildNotification;
- (int64_t)_randomNotificationVariantForCategory:(unint64_t)category;
@end

@implementation HDSPWakeUpResultsNotificationBuilder

- (HDSPWakeUpResultsNotificationBuilder)initWithDaySummaries:(id)summaries morningIndexRange:(id)range userFirstName:(id)name
{
  var1 = range.var1;
  var0 = range.var0;
  summariesCopy = summaries;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = HDSPWakeUpResultsNotificationBuilder;
  v11 = [(HDSPWakeUpResultsNotificationBuilder *)&v16 init];
  if (v11)
  {
    v12 = [summariesCopy copy];
    daySummaries = v11->_daySummaries;
    v11->_daySummaries = v12;

    v11->_morningIndexRange.start = var0;
    v11->_morningIndexRange.duration = var1;
    objc_storeStrong(&v11->_userFirstName, name);
    v14 = v11;
  }

  return v11;
}

- (BOOL)hasSufficientSleepData
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_morningIndexRange.start == *MEMORY[0x277CCBBF8] && self->_morningIndexRange.duration == *(MEMORY[0x277CCBBF8] + 8))
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v17 = NSStringFromHKDayIndexRange();
      v19 = 138543618;
      v20 = v15;
      v21 = 2114;
      v22 = v17;
      _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Init failed: Invalid morning index range %{public}@", &v19, 0x16u);
    }

    goto LABEL_23;
  }

  daySummaries = self->_daySummaries;
  if (!daySummaries)
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = objc_opt_class();
      v13 = v20;
      v14 = "[%{public}@] Init failed: Nil sleep day summaries";
      goto LABEL_22;
    }

LABEL_23:

    return 0;
  }

  if (![(NSArray *)daySummaries count])
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = objc_opt_class();
      v13 = v20;
      v14 = "[%{public}@] Init failed: Zero sleep day summaries";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  lastObject = [(NSArray *)self->_daySummaries lastObject];
  morningIndex = [lastObject morningIndex];
  duration = self->_morningIndexRange.duration;
  if (duration <= 0)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = self->_morningIndexRange.start + duration - 1;
  }

  if (morningIndex != v8)
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = objc_opt_class();
      v13 = v20;
      v14 = "[%{public}@] Init failed: No sleep day summary for last night";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  lastObject2 = [(NSArray *)self->_daySummaries lastObject];
  [lastObject2 sleepDuration];
  v11 = v10;

  if (v11 <= 0.0)
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = objc_opt_class();
      v13 = v20;
      v14 = "[%{public}@] Init failed: No asleep duration for last night";
LABEL_22:
      _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, v14, &v19, 0xCu);

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  return 1;
}

- (id)buildNotification
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    daySummaries = self->_daySummaries;
    v6 = v4;
    v7 = [(NSArray *)daySummaries count];
    v8 = NSStringFromHKDayIndexRange();
    *buf = 138543874;
    v32 = v4;
    v33 = 2048;
    v34 = v7;
    v35 = 2114;
    v36 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Building notification from %lu summaries in range %{public}@", buf, 0x20u);
  }

  if (HKShowSensitiveLogItems())
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = self->_daySummaries;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v27;
      *&v11 = 138543618;
      v25 = v11;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = HKSPLogForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            selfCopy = self;
            v17 = objc_opt_class();
            v18 = v17;
            v19 = HKSensitiveLogItem();
            *buf = v25;
            v32 = v17;
            self = selfCopy;
            v33 = 2114;
            v34 = v19;
            _os_log_impl(&dword_269B11000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Summary: %{public}@", buf, 0x16u);
          }
        }

        v12 = [(NSArray *)v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }
  }

  if ([(HDSPWakeUpResultsNotificationBuilder *)self _didMeetSleepDurationGoalLastNight:v25])
  {
    _sleepDurationGoalAchievedTwoWeekNotification = [(HDSPWakeUpResultsNotificationBuilder *)self _sleepDurationGoalAchievedTwoWeekNotification];
    if (!_sleepDurationGoalAchievedTwoWeekNotification)
    {
      _sleepDurationGoalAchievedTwoWeekNotification = [(HDSPWakeUpResultsNotificationBuilder *)self _sleepDurationGoalAchievedShortWeekNotification];
      if (!_sleepDurationGoalAchievedTwoWeekNotification)
      {
        _sleepDurationGoalAchievedTwoWeekNotification = [(HDSPWakeUpResultsNotificationBuilder *)self _sleepDurationGoalAchievedLastNightNotification];
      }
    }
  }

  else
  {
    v21 = HKSPLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      *buf = 138543362;
      v32 = v22;
      v23 = v22;
      _os_log_impl(&dword_269B11000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did not meet sleep duration goal last night; this is required for all notifications", buf, 0xCu);
    }

    _sleepDurationGoalAchievedTwoWeekNotification = 0;
  }

  return _sleepDurationGoalAchievedTwoWeekNotification;
}

- (BOOL)_didMeetSleepDurationGoalLastNight
{
  duration = self->_morningIndexRange.duration;
  if (duration <= 0)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = self->_morningIndexRange.start + duration - 1;
  }

  v4 = [MEMORY[0x277CCD9D0] sleepMetricsForDaySummaries:self->_daySummaries inMorningIndexRange:{v3, 1}];
  v5 = [v4 sleepDurationGoalAchievedCount] == 1;

  return v5;
}

- (id)_sleepDurationGoalAchievedTwoWeekNotification
{
  v18 = *MEMORY[0x277D85DE8];
  start = self->_morningIndexRange.start;
  duration = self->_morningIndexRange.duration;
  v5 = [MEMORY[0x277CCD9D0] sleepMetricsForDaySummaries:self->_daySummaries inMorningIndexRange:{start, duration}];
  sleepDurationGoalAchievedCount = [v5 sleepDurationGoalAchievedCount];
  if (sleepDurationGoalAchievedCount <= 9)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = objc_opt_class();
      v8 = v17;
      v9 = "[%{public}@] Not enough days achieved for two-week goal notification";
LABEL_7:
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, v9, &v16, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v10 = sleepDurationGoalAchievedCount;
  if (sleepDurationGoalAchievedCount >= 0xF)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = objc_opt_class();
      v8 = v17;
      v9 = "[%{public}@] Too many days achieved for two-week goal notification";
      goto LABEL_7;
    }

LABEL_8:

    v11 = 0;
    goto LABEL_10;
  }

  v12 = MEMORY[0x277CCD7E8];
  dayUnit = [MEMORY[0x277CCDAB0] dayUnit];
  v14 = [v12 quantityWithUnit:dayUnit doubleValue:v10];

  v11 = [(HDSPWakeUpResultsNotificationBuilder *)self _notificationForCategory:2 morningIndexRange:start goalAchieved:duration, v14];

LABEL_10:

  return v11;
}

- (id)_sleepDurationGoalAchievedShortWeekNotification
{
  v17 = *MEMORY[0x277D85DE8];
  start = self->_morningIndexRange.start;
  v4 = [MEMORY[0x277CCD9D0] sleepMetricsForDaySummaries:self->_daySummaries inMorningIndexRange:{start + 10, 4}];
  sleepDurationGoalAchievedCount = [v4 sleepDurationGoalAchievedCount];
  if (sleepDurationGoalAchievedCount <= 2)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v7 = v16;
      v8 = "[%{public}@] Not enough days achieved for short-week goal notification";
LABEL_7:
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, v8, &v15, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = sleepDurationGoalAchievedCount;
  if (sleepDurationGoalAchievedCount >= 5)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v7 = v16;
      v8 = "[%{public}@] Too many days achieved for short-week goal notification";
      goto LABEL_7;
    }

LABEL_8:

    v10 = 0;
    goto LABEL_10;
  }

  v11 = MEMORY[0x277CCD7E8];
  dayUnit = [MEMORY[0x277CCDAB0] dayUnit];
  v13 = [v11 quantityWithUnit:dayUnit doubleValue:v9];

  v10 = [(HDSPWakeUpResultsNotificationBuilder *)self _notificationForCategory:1 morningIndexRange:start + 10 goalAchieved:4, v13];

LABEL_10:

  return v10;
}

- (id)_sleepDurationGoalAchievedLastNightNotification
{
  v16 = *MEMORY[0x277D85DE8];
  duration = self->_morningIndexRange.duration;
  if (duration <= 0)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = self->_morningIndexRange.start + duration - 1;
  }

  v5 = [MEMORY[0x277CCD9D0] sleepMetricsForDaySummaries:self->_daySummaries inMorningIndexRange:{v4, 1}];
  sleepDurationGoalAchievedCount = [v5 sleepDurationGoalAchievedCount];
  if (sleepDurationGoalAchievedCount <= 0)
  {
    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = objc_opt_class();
      v11 = v15;
      v12 = "[%{public}@] Not enough days achieved for last night goal notification";
LABEL_11:
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, v12, &v14, 0xCu);
    }
  }

  else
  {
    if (sleepDurationGoalAchievedCount == 1)
    {
      lastObject = [(NSArray *)self->_daySummaries lastObject];
      sleepDurationGoal = [lastObject sleepDurationGoal];

      v9 = [(HDSPWakeUpResultsNotificationBuilder *)self _notificationForCategory:0 morningIndexRange:v4 goalAchieved:1, sleepDurationGoal];

      goto LABEL_13;
    }

    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = objc_opt_class();
      v11 = v15;
      v12 = "[%{public}@] Too many days achieved for last night goal notification";
      goto LABEL_11;
    }
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (int64_t)_randomNotificationVariantForCategory:(unint64_t)category
{
  if (category > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_269B98330[category];
  }

  return arc4random_uniform(v3) + 1;
}

- (id)_notificationForCategory:(unint64_t)category morningIndexRange:(id)range goalAchieved:(id)achieved
{
  var1 = range.var1;
  var0 = range.var0;
  achievedCopy = achieved;
  v10 = [HDSPWakeUpResultsNotification alloc];
  if (var1 <= 0)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = var1 + var0 - 1;
  }

  v12 = [(HDSPWakeUpResultsNotificationBuilder *)self _randomNotificationVariantForCategory:category];
  userFirstName = [(HDSPWakeUpResultsNotificationBuilder *)self userFirstName];
  v14 = [(HDSPWakeUpResultsNotification *)v10 initWithCategory:category endMorningIndex:v11 goalAchieved:achievedCopy notificationVariant:v12 userFirstName:userFirstName];

  return v14;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)morningIndexRange
{
  duration = self->_morningIndexRange.duration;
  start = self->_morningIndexRange.start;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

@end