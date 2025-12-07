@interface CALNSchedulingSnoozeUpdateTimer
- (CALNSchedulingSnoozeUpdateTimer)initWithDateProvider:(id)provider scheduler:(id)scheduler;
- (CALNSnoozeUpdateTimerDelegate)delegate;
- (id)_dequeueEventsDueBy:(id)by;
- (void)_scheduleTimer;
- (void)activityRun;
- (void)notifyDelegateOfDueAlarmsAndRescheduleTimer;
- (void)setFireDate:(id)date leeway:(double)leeway forEventWithIdentifier:(id)identifier;
- (void)significantTimeChange;
@end

@implementation CALNSchedulingSnoozeUpdateTimer

- (CALNSchedulingSnoozeUpdateTimer)initWithDateProvider:(id)provider scheduler:(id)scheduler
{
  providerCopy = provider;
  schedulerCopy = scheduler;
  v18.receiver = self;
  v18.super_class = CALNSchedulingSnoozeUpdateTimer;
  v9 = [(CALNSchedulingSnoozeUpdateTimer *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dateProvider, provider);
    objc_storeStrong(&v10->_scheduler, scheduler);
    [(CALNActivityScheduler *)v10->_scheduler setDelegate:v10];
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    fireDates = v10->_fireDates;
    v10->_fireDates = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    overdueDates = v10->_overdueDates;
    v10->_overdueDates = v13;

    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    scheduledFireDate = v10->_scheduledFireDate;
    v10->_scheduledFireDate = distantFuture;

    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (void)setFireDate:(id)date leeway:(double)leeway forEventWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  identifierCopy = identifier;
  v10 = snoozeLogHandle(identifierCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543874;
    v13 = identifierCopy;
    v14 = 2114;
    v15 = dateCopy;
    v16 = 2048;
    leewayCopy = leeway;
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Setting snooze update fire date for %{public}@ to %{public}@ with leeway = %f", &v12, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_fireDates setObject:dateCopy forKeyedSubscript:identifierCopy];
  v11 = [dateCopy dateByAddingTimeInterval:leeway];
  [(NSMutableDictionary *)self->_overdueDates setObject:v11 forKeyedSubscript:identifierCopy];

  [(CALNSchedulingSnoozeUpdateTimer *)self _scheduleTimer];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)significantTimeChange
{
  v3 = snoozeLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Snooze update timer informed of significant time change; rescheduling", v4, 2u);
  }

  [(CALNActivityScheduler *)self->_scheduler unschedule];
  [(CALNSchedulingSnoozeUpdateTimer *)self notifyDelegateOfDueAlarmsAndRescheduleTimer];
}

- (void)activityRun
{
  v3 = snoozeLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Snooze update timer fired", v4, 2u);
  }

  [(CALNSchedulingSnoozeUpdateTimer *)self notifyDelegateOfDueAlarmsAndRescheduleTimer];
}

- (void)notifyDelegateOfDueAlarmsAndRescheduleTimer
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(CalDateProvider *)self->_dateProvider now];
  os_unfair_lock_lock(&self->_lock);
  scheduledFireDate = self->_scheduledFireDate;
  self->_scheduledFireDate = 0;

  scheduledOverdueDate = self->_scheduledOverdueDate;
  self->_scheduledOverdueDate = 0;

  v6 = [(CALNSchedulingSnoozeUpdateTimer *)self _dequeueEventsDueBy:v3];
  os_unfair_lock_unlock(&self->_lock);
  v7 = [v6 count];
  v8 = snoozeLogHandle(v7);
  WeakRetained = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_242909000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Refreshing notifications due for snooze update: %{public}@", &v10, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained snoozeTimerFiredForEvents:v6];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(CALNSchedulingSnoozeUpdateTimer *)WeakRetained notifyDelegateOfDueAlarmsAndRescheduleTimer];
  }

  os_unfair_lock_lock(&self->_lock);
  [(CALNSchedulingSnoozeUpdateTimer *)self _scheduleTimer];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)_dequeueEventsDueBy:(id)by
{
  v30 = *MEMORY[0x277D85DE8];
  byCopy = by;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = self->_fireDates;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_fireDates objectForKeyedSubscript:v11];
        if ([byCopy CalIsAfterOrSameAsDate:v12])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * j);
        [(NSMutableDictionary *)self->_fireDates removeObjectForKey:v18, v20];
        [(NSMutableDictionary *)self->_overdueDates removeObjectForKey:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  return v13;
}

- (void)_scheduleTimer
{
  v45 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = self->_fireDates;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v35;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_fireDates objectForKeyedSubscript:v10, v34];
        if (!v7 || [v7 CalIsAfterDate:v11])
        {
          v12 = v11;

          v7 = v12;
        }

        v13 = [(NSMutableDictionary *)self->_overdueDates objectForKeyedSubscript:v10];
        if (!v6 || [v6 CalIsAfterDate:v13])
        {
          v14 = v13;

          v6 = v14;
        }
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v5);

    if (v7)
    {
      p_scheduledFireDate = &self->_scheduledFireDate;
      scheduledFireDate = self->_scheduledFireDate;
      if (scheduledFireDate && [(NSDate *)scheduledFireDate isEqual:v7]&& (v18 = [(NSDate *)self->_scheduledOverdueDate CalIsAfterDate:v6], !v18))
      {
        v32 = snoozeLogHandle(v18);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = *p_scheduledFireDate;
          *buf = 138543362;
          v39 = v33;
          _os_log_impl(&dword_242909000, v32, OS_LOG_TYPE_INFO, "Snooze update still scheduled for %{public}@", buf, 0xCu);
        }
      }

      else
      {
        v19 = [v6 timeIntervalSinceDate:v7];
        if (v20 < 0.0)
        {
          v20 = 0.0;
        }

        v21 = v20;
        v22 = snoozeLogHandle(v19);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *p_scheduledFireDate;
          *buf = 138543874;
          v39 = v23;
          v40 = 2114;
          v41 = v7;
          v42 = 2048;
          v43 = v21;
          _os_log_impl(&dword_242909000, v22, OS_LOG_TYPE_DEFAULT, "Rescheduling snooze update from %{public}@ to %{public}@ with leeway %lli", buf, 0x20u);
        }

        objc_storeStrong(&self->_scheduledFireDate, v7);
        objc_storeStrong(&self->_scheduledOverdueDate, v6);
        v24 = [(CalDateProvider *)self->_dateProvider now];
        [v7 timeIntervalSinceDate:v24];
        if (v25 < 1.0)
        {
          v25 = 1.0;
        }

        [(CALNActivityScheduler *)self->_scheduler scheduleWithTimeInterval:vcvtpd_s64_f64(v25) gracePeriod:v21];
      }

      goto LABEL_34;
    }
  }

  else
  {

    v6 = 0;
  }

  v26 = self->_scheduledFireDate;
  v27 = snoozeLogHandle(v15);
  v28 = v27;
  if (v26)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = self->_scheduledFireDate;
      *buf = 138543362;
      v39 = v29;
      _os_log_impl(&dword_242909000, v28, OS_LOG_TYPE_DEFAULT, "Unscheduling snooze update (previous time = %{public}@, new time = nil)", buf, 0xCu);
    }

    v30 = self->_scheduledFireDate;
    self->_scheduledFireDate = 0;

    scheduledOverdueDate = self->_scheduledOverdueDate;
    self->_scheduledOverdueDate = 0;

    [(CALNActivityScheduler *)self->_scheduler unschedule];
  }

  else
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [(CALNSchedulingSnoozeUpdateTimer *)v28 _scheduleTimer];
    }
  }

  v7 = 0;
LABEL_34:
}

- (CALNSnoozeUpdateTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end