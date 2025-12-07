@interface DNDSScheduleLifetimeMonitor
- (id)_activeDateIntervalForScheduleLifetime:(id)lifetime assertion:(id)assertion date:(id)date ignoreMatchScheduleStartDate:(BOOL)startDate;
- (id)_activeDateIntervalForScheduleLifetime:(id)lifetime assertionStartDate:(id)date date:(id)a5 scheduleSettings:(id)settings calendar:(id)calendar ignoreMatchScheduleStartDate:(BOOL)startDate;
- (id)updateForModeAssertions:(id)assertions date:(id)date;
- (void)setDelegate:(id)delegate;
@end

@implementation DNDSScheduleLifetimeMonitor

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = DNDSScheduleLifetimeMonitor;
  [(DNDSBaseLifetimeMonitor *)&v8 setDelegate:delegateCopy];
  if (delegateCopy)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __43__DNDSScheduleLifetimeMonitor_setDelegate___block_invoke;
    v5[3] = &unk_278F8A438;
    objc_copyWeak(&v6, &location);
    [delegateCopy lifetimeMonitor:self registerTimerHandlerWithServiceIdentifier:@"com.apple.donotdisturb.server.ScheduleLifetimeMonitor.timer" handler:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __43__DNDSScheduleLifetimeMonitor_setDelegate___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isEqualToString:@"com.apple.donotdisturb.server.ScheduleLifetimeMonitor.timer"])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [MEMORY[0x277CBEAA8] date];
    [WeakRetained refreshMonitorForDate:v3];
  }
}

- (id)_activeDateIntervalForScheduleLifetime:(id)lifetime assertion:(id)assertion date:(id)date ignoreMatchScheduleStartDate:(BOOL)startDate
{
  startDateCopy = startDate;
  v53[1] = *MEMORY[0x277D85DE8];
  lifetimeCopy = lifetime;
  assertionCopy = assertion;
  dateCopy = date;
  details = [assertionCopy details];
  modeIdentifier = [details modeIdentifier];

  dataSource = [(DNDSBaseLifetimeMonitor *)self dataSource];
  v16 = [dataSource scheduleSettingsByModeIdentifierForScheduleLifetimeMonitor:self];

  if ([modeIdentifier isEqualToString:*MEMORY[0x277D05868]])
  {
    v17 = *MEMORY[0x277D05830];

    modeIdentifier = v17;
  }

  startDate = [assertionCopy startDate];
  calendar = self->_calendar;
  if (calendar)
  {
    v19 = calendar;
  }

  else
  {
    v19 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  }

  v43 = v19;
  v41 = modeIdentifier;
  v20 = [v16 objectForKeyedSubscript:modeIdentifier];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v23 = +[DNDSScheduleSettings defaultScheduleSettings];
    v53[0] = v23;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
  }

  v40 = v16;
  v42 = assertionCopy;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v22;
  v47 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
  v24 = 0;
  if (v47)
  {
    v46 = *v49;
    v26 = v43;
    v25 = startDate;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v49 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v28 = [(DNDSScheduleLifetimeMonitor *)self _activeDateIntervalForScheduleLifetime:lifetimeCopy assertionStartDate:v25 date:dateCopy scheduleSettings:*(*(&v48 + 1) + 8 * i) calendar:v26 ignoreMatchScheduleStartDate:startDateCopy, v40];
        v29 = v28;
        if (!v24 || v28 && ([v28 endDate], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "endDate"), v31 = dateCopy, v32 = objc_claimAutoreleasedReturnValue(), v33 = self, v34 = startDateCopy, v35 = lifetimeCopy, v36 = objc_msgSend(v30, "compare:", v32), v32, dateCopy = v31, v26 = v43, v30, v37 = v36 == -1, lifetimeCopy = v35, startDateCopy = v34, self = v33, v25 = startDate, v37))
        {
          v38 = v29;

          v24 = v38;
        }
      }

      v47 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v47);
  }

  else
  {
    v26 = v43;
    v25 = startDate;
  }

  return v24;
}

- (id)_activeDateIntervalForScheduleLifetime:(id)lifetime assertionStartDate:(id)date date:(id)a5 scheduleSettings:(id)settings calendar:(id)calendar ignoreMatchScheduleStartDate:(BOOL)startDate
{
  dateCopy = date;
  v14 = a5;
  settingsCopy = settings;
  calendarCopy = calendar;
  behavior = [lifetime behavior];
  if (behavior == 1)
  {
    v18 = [MEMORY[0x277CCA970] dnds_dateIntervalUntilEndOfScheduleForScheduleSettings:settingsCopy startDate:dateCopy calendar:calendarCopy];
    if (v18)
    {
      goto LABEL_11;
    }

    v23 = objc_alloc(MEMORY[0x277CCA970]);
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v18 = [v23 initWithStartDate:dateCopy endDate:distantFuture];
    goto LABEL_9;
  }

  if (!behavior)
  {
    v18 = [MEMORY[0x277CCA970] dnds_dateIntervalForScheduleSettings:settingsCopy date:v14 calendar:calendarCopy];
    if (startDate)
    {
      goto LABEL_11;
    }

    distantFuture = [settingsCopy creationDate];
    if ([distantFuture compare:dateCopy] == -1)
    {
      v20 = [v18 containsDate:dateCopy];

      if (!v20)
      {
        goto LABEL_11;
      }

      v21 = MEMORY[0x277CCA970];
      distantFuture = [v18 endDate];
      v22 = [v21 dnds_dateIntervalForScheduleSettings:settingsCopy date:distantFuture calendar:calendarCopy];

      v18 = v22;
    }

LABEL_9:

    goto LABEL_11;
  }

  v18 = 0;
LABEL_11:

  return v18;
}

- (id)updateForModeAssertions:(id)assertions date:(id)date
{
  v104 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  dateCopy = date;
  selfCopy = self;
  queue = [(DNDSBaseLifetimeMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = DNDSLogScheduleLifetimeMonitor;
  if (os_log_type_enabled(DNDSLogScheduleLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v103 = dateCopy;
    _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Refreshing monitor, date=%{public}@", buf, 0xCu);
  }

  dataSource = [(DNDSBaseLifetimeMonitor *)selfCopy dataSource];
  calendar = selfCopy->_calendar;
  v84 = dateCopy;
  if (calendar)
  {
    v12 = calendar;
  }

  else
  {
    v12 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  }

  v83 = v12;
  v69 = dataSource;
  v75 = [dataSource scheduleSettingsByModeIdentifierForScheduleLifetimeMonitor:selfCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v13 = assertionsCopy;
  v14 = [v13 countByEnumeratingWithState:&v94 objects:v101 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v95;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v95 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v94 + 1) + 8 * i);
        details = [v18 details];
        modeIdentifier = [details modeIdentifier];

        v21 = [dictionary objectForKeyedSubscript:modeIdentifier];
        bOOLValue = [v21 BOOLValue];

        details2 = [v18 details];
        lifetime = [details2 lifetime];

        v25 = MEMORY[0x277CCABB0];
        v26 = (bOOLValue & 1) != 0 || [lifetime behavior] == 1;
        v27 = [v25 numberWithInt:v26];
        [dictionary setObject:v27 forKey:modeIdentifier];
      }

      v15 = [v13 countByEnumeratingWithState:&v94 objects:v101 count:16];
    }

    while (v15);
  }

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = v13;
  v76 = [obj countByEnumeratingWithState:&v90 objects:v100 count:16];
  if (v76)
  {
    v74 = *v91;
    v73 = *MEMORY[0x277D05868];
    v71 = *MEMORY[0x277D05830];
    do
    {
      for (j = 0; j != v76; ++j)
      {
        if (*v91 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v90 + 1) + 8 * j);
        details3 = [v29 details];
        modeIdentifier2 = [details3 modeIdentifier];

        if ([modeIdentifier2 isEqualToString:v73])
        {
          v32 = v71;

          modeIdentifier2 = v32;
        }

        v33 = [v75 objectForKeyedSubscript:modeIdentifier2];
        v34 = v33;
        if (v33)
        {
          v35 = v33;
        }

        else
        {
          v36 = +[DNDSScheduleSettings defaultScheduleSettings];
          v99 = v36;
          v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
        }

        details4 = [v29 details];
        lifetime2 = [details4 lifetime];

        v39 = [dictionary objectForKeyedSubscript:modeIdentifier2];
        bOOLValue2 = [v39 BOOLValue];

        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v41 = v35;
        v42 = [v41 countByEnumeratingWithState:&v86 objects:v98 count:16];
        if (!v42)
        {
          uUID2 = v41;
LABEL_48:

          goto LABEL_50;
        }

        v43 = v42;
        v77 = modeIdentifier2;
        v78 = j;
        v81 = 0;
        v44 = *v87;
        do
        {
          v45 = 0;
          do
          {
            if (*v87 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v86 + 1) + 8 * v45);
            startDate = [v29 startDate];
            v48 = [(DNDSScheduleLifetimeMonitor *)selfCopy _activeDateIntervalForScheduleLifetime:lifetime2 assertionStartDate:startDate date:v84 scheduleSettings:v46 calendar:v83 ignoreMatchScheduleStartDate:bOOLValue2];

            if (v48)
            {
              v49 = [v48 dnds_lifetimePhaseForDate:v84];
              if (v49 == 2)
              {
                if ([(NSDate *)lifetime2 behavior]== 1)
                {
                  uUID = [v29 UUID];
                  [array2 addObject:uUID];
                }
              }

              else
              {
                if (v49 == 1)
                {
                  endDate = [v48 endDate];
                  v51 = [(NSDate *)distantFuture earlierDate:endDate];

                  v81 = 1;
                }

                else
                {
                  if (v49)
                  {
                    goto LABEL_40;
                  }

                  startDate2 = [v48 startDate];
                  v51 = [(NSDate *)distantFuture earlierDate:startDate2];
                }

                distantFuture = v51;
              }
            }

            else
            {
              v52 = DNDSLogScheduleLifetimeMonitor;
              if (os_log_type_enabled(DNDSLogScheduleLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v103 = lifetime2;
                _os_log_impl(&dword_24912E000, v52, OS_LOG_TYPE_DEFAULT, "Skipping inactive lifetime, lifetime=%{public}@", buf, 0xCu);
              }
            }

LABEL_40:

            ++v45;
          }

          while (v43 != v45);
          v55 = [v41 countByEnumeratingWithState:&v86 objects:v98 count:16];
          v43 = v55;
        }

        while (v55);

        if (v81)
        {
          uUID2 = [v29 UUID];
          [array addObject:uUID2];
          modeIdentifier2 = v77;
          j = v78;
          goto LABEL_48;
        }

        modeIdentifier2 = v77;
        j = v78;
LABEL_50:
      }

      v76 = [obj countByEnumeratingWithState:&v90 objects:v100 count:16];
    }

    while (v76);
  }

  distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];
  v58 = [(NSDate *)distantFuture isEqualToDate:distantFuture2];

  v59 = [(NSDate *)distantFuture isEqualToDate:selfCopy->_lifetimeTimerFireDate];
  delegate = [(DNDSBaseLifetimeMonitor *)selfCopy delegate];
  if (v58 || !v59)
  {
    v61 = DNDSLogScheduleLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogScheduleLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      lifetimeTimerFireDate = selfCopy->_lifetimeTimerFireDate;
      *buf = 138543362;
      v103 = lifetimeTimerFireDate;
      _os_log_impl(&dword_24912E000, v61, OS_LOG_TYPE_DEFAULT, "Invalidating existing timer; fireDate=%{public}@", buf, 0xCu);
    }

    v63 = [[DNDSXPCTimer alloc] initWithFireDate:0 serviceIdentifier:@"com.apple.donotdisturb.server.ScheduleLifetimeMonitor.timer" userVisible:1];
    [delegate lifetimeMonitor:selfCopy setTimer:v63];

    v64 = selfCopy->_lifetimeTimerFireDate;
    selfCopy->_lifetimeTimerFireDate = 0;
  }

  if (!v58 && (selfCopy->_lifetimeTimerFireDate == 0 || !v59))
  {
    v65 = DNDSLogScheduleLifetimeMonitor;
    if (os_log_type_enabled(DNDSLogScheduleLifetimeMonitor, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v103 = distantFuture;
      _os_log_impl(&dword_24912E000, v65, OS_LOG_TYPE_DEFAULT, "Scheduling timer; nextUpdateDate=%{public}@", buf, 0xCu);
    }

    v66 = [[DNDSXPCTimer alloc] initWithFireDate:distantFuture serviceIdentifier:@"com.apple.donotdisturb.server.ScheduleLifetimeMonitor.timer" userVisible:1];
    [delegate lifetimeMonitor:selfCopy setTimer:v66];

    objc_storeStrong(&selfCopy->_lifetimeTimerFireDate, distantFuture);
  }

  v67 = [[DNDSLifetimeMonitorResult alloc] initWithActiveUUIDs:array expiredUUIDs:array2];

  return v67;
}

@end