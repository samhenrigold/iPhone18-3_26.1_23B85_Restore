@interface HDMCNotificationManager
- (HDMCNotificationManager)initWithProfile:(id)profile analysisManager:(id)manager settingsManager:(id)settingsManager deviceScopedStorageManager:(id)storageManager notificationSyncManager:(id)syncManager;
- (id)_currentDate;
- (id)_notificationCategoriesWithBasicAnalytics;
- (id)_periodEventFromNotificationCategory:(id)category notificationFireDayIndex:(int64_t)index;
- (id)_requestFromAlarmEvent:(id)event;
- (id)scheduledNotificationsWithError:(id *)error;
- (void)_queue_alarm:(id)_queue_alarm didReceiveDueEvents:(id)events;
- (void)_queue_notificationOrSensorInputSettingsDidChange;
- (void)_queue_removeAllScheduledNotificationsIfNotEnabled;
- (void)_queue_rescheduleNotificationsForAnalysis:(id)analysis;
- (void)_triggerImmediateSyncWithReason:(id)reason;
- (void)_unitTest_alarm:(id)test_alarm didReceiveDueEvents:(id)events;
- (void)_unitTest_didSkipNotificationForDueEvent:(id)event reason:(int64_t)reason;
- (void)didUpdateAnalysis:(id)analysis;
- (void)featureSettingsManager:(id)manager didUpdateSettingsForFeatureIdentifier:(id)identifier;
- (void)invalidate;
- (void)settingsManagerDidUpdateNotificationSettings:(id)settings;
- (void)start;
@end

@implementation HDMCNotificationManager

- (HDMCNotificationManager)initWithProfile:(id)profile analysisManager:(id)manager settingsManager:(id)settingsManager deviceScopedStorageManager:(id)storageManager notificationSyncManager:(id)syncManager
{
  profileCopy = profile;
  managerCopy = manager;
  settingsManagerCopy = settingsManager;
  storageManagerCopy = storageManager;
  syncManagerCopy = syncManager;
  v40.receiver = self;
  v40.super_class = HDMCNotificationManager;
  v17 = [(HDMCNotificationManager *)&v40 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_analysisManager, manager);
    objc_storeWeak(&v18->_profile, profileCopy);
    v19 = HKCreateSerialDispatchQueue();
    queue = v18->_queue;
    v18->_queue = v19;

    objc_storeStrong(&v18->_notificationSyncManager, syncManager);
    v21 = objc_alloc(MEMORY[0x277D10838]);
    WeakRetained = objc_loadWeakRetained(&v18->_profile);
    v23 = [v21 initWithProfile:WeakRetained clientIdentifier:@"HDMCNotificationManager" eventHandlerQueue:v18->_queue];
    scheduler = v18->_scheduler;
    v18->_scheduler = v23;

    objc_storeStrong(&v18->_settingsManager, settingsManager);
    objc_storeStrong(&v18->_deviceScopedStorageManager, storageManager);
    v25 = MEMORY[0x277D10718];
    v26 = objc_loadWeakRetained(&v18->_profile);
    v27 = [v25 hdmc_syncedUnprotectedDomainWithProfile:v26];
    fertileWindowNotificationStateKeyValueDomain = v18->_fertileWindowNotificationStateKeyValueDomain;
    v18->_fertileWindowNotificationStateKeyValueDomain = v27;

    v29 = [HDMCOvulationConfirmationStateManager alloc];
    v30 = objc_loadWeakRetained(&v18->_profile);
    v31 = [(HDMCOvulationConfirmationStateManager *)v29 initWithProfile:v30 settingsManager:settingsManagerCopy queue:v18->_queue];
    ovulationConfirmationStateManager = v18->_ovulationConfirmationStateManager;
    v18->_ovulationConfirmationStateManager = v31;

    v33 = MEMORY[0x277D10718];
    v34 = objc_loadWeakRetained(&v18->_profile);
    v35 = [v33 hdmc_menstrualCyclesUnconfirmedDeviationNotificationStateSyncedUnprotectedDomainWithProfile:v34];
    unconfirmedDeviationStateKeyValueDomain = v18->_unconfirmedDeviationStateKeyValueDomain;
    v18->_unconfirmedDeviationStateKeyValueDomain = v35;

    v37 = [MEMORY[0x277D10718] hdmc_syncedMenstrualCyclesDefaultsDomainWithProfile:profileCopy];
    deviationDismissalKeyValueDomain = v18->_deviationDismissalKeyValueDomain;
    v18->_deviationDismissalKeyValueDomain = v37;
  }

  return v18;
}

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HDMCNotificationManager_start__block_invoke;
  block[3] = &unk_27865A830;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __32__HDMCNotificationManager_start__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) registerObserver:*(a1 + 32) queue:*(*(a1 + 32) + 48) userInitiated:0];
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(*(a1 + 32) + 104);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __32__HDMCNotificationManager_start__block_invoke_2;
  v8 = &unk_27865A9E8;
  objc_copyWeak(&v9, &location);
  [v2 beginReceivingEventsWithHandler:&v5];
  [*(*(a1 + 32) + 40) addObserver:*(a1 + 32) queue:{*(*(a1 + 32) + 48), v5, v6, v7, v8}];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v4 = [WeakRetained featureSettingsManager];
  [v4 registerObserver:*(a1 + 32) featureIdentifier:*MEMORY[0x277CCC0A0] queue:*(*(a1 + 32) + 48)];

  [*(a1 + 32) _queue_removeAllScheduledNotificationsIfNotEnabled];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __32__HDMCNotificationManager_start__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_alarm:v6 didReceiveDueEvents:v5];
}

- (void)invalidate
{
  [(HDMCAnalysisManager *)self->_analysisManager unregisterObserver:self];
  [(HDRestorableAlarm *)self->_scheduler invalidate];
  [(HKMCSettingsManager *)self->_settingsManager removeObserver:self];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  featureSettingsManager = [WeakRetained featureSettingsManager];
  [featureSettingsManager unregisterObserver:self];
}

- (id)scheduledNotificationsWithError:(id *)error
{
  v3 = [(HDRestorableAlarm *)self->_scheduler allScheduledEventsWithError:error];
  v4 = [v3 hk_map:&__block_literal_global_1];

  return v4;
}

id __59__HDMCNotificationManager_scheduledNotificationsWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D119B0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 hdmc_categoryIdentifier];
  v6 = [v3 dueDateComponents];

  v7 = [v4 initWithCategory:v5 dueDateComponents:v6];

  return v7;
}

- (id)_currentDate
{
  unitTest_currentDateOverride = self->_unitTest_currentDateOverride;
  if (unitTest_currentDateOverride)
  {
    date = unitTest_currentDateOverride;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  return date;
}

- (void)_unitTest_didSkipNotificationForDueEvent:(id)event reason:(int64_t)reason
{
  unitTest_didSkipNotificationForDueEventHandler = self->_unitTest_didSkipNotificationForDueEventHandler;
  if (unitTest_didSkipNotificationForDueEventHandler)
  {
    unitTest_didSkipNotificationForDueEventHandler[2](unitTest_didSkipNotificationForDueEventHandler, event, reason);
  }
}

- (void)_unitTest_alarm:(id)test_alarm didReceiveDueEvents:(id)events
{
  test_alarmCopy = test_alarm;
  eventsCopy = events;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HDMCNotificationManager__unitTest_alarm_didReceiveDueEvents___block_invoke;
  block[3] = &unk_27865AA30;
  block[4] = self;
  v12 = test_alarmCopy;
  v13 = eventsCopy;
  v9 = eventsCopy;
  v10 = test_alarmCopy;
  dispatch_sync(queue, block);
}

- (void)didUpdateAnalysis:(id)analysis
{
  v37 = *MEMORY[0x277D85DE8];
  analysisCopy = analysis;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(HKMCAnalysis *)self->_lastAnalysis isEqual:analysisCopy];
  deviationDismissalKeyValueDomain = self->_deviationDismissalKeyValueDomain;
  v30 = 0;
  v7 = [(HDKeyValueDomain *)deviationDismissalKeyValueDomain hdmc_unconfirmedDeviationDismissalDayIndexWithError:&v30];
  v8 = v30;
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  v11 = MEMORY[0x277CCC2E8];
  if (!v10 && (_HKInitializeLogging(), os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR)))
  {
    [HDMCNotificationManager didUpdateAnalysis:];
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else if (!v5)
  {
    goto LABEL_12;
  }

  integerValue = [(NSNumber *)self->_lastDismissalDayIndex integerValue];
  if (integerValue == [v7 integerValue])
  {
    v27 = v9;
    v13 = [(HDMCNotificationManager *)self scheduledNotificationsWithError:&v27];
    v14 = v27;

    _HKInitializeLogging();
    v15 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = objc_opt_class();
      v18 = MEMORY[0x277CCABB0];
      v19 = v17;
      v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
      v21 = [v13 description];
      *buf = 138543874;
      v32 = v17;
      v33 = 2112;
      v34 = v20;
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_2293D1000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping notification reschedule from identical analysis, current notifications: %@, %@", buf, 0x20u);
    }

    v9 = v14;
    goto LABEL_15;
  }

LABEL_12:
  _HKInitializeLogging();
  v22 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    v24 = objc_opt_class();
    *buf = 138543362;
    v32 = v24;
    v25 = v24;
    _os_log_impl(&dword_2293D1000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Rescheduling notifications based on analysis update", buf, 0xCu);
  }

  scheduler = self->_scheduler;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __45__HDMCNotificationManager_didUpdateAnalysis___block_invoke;
  v28[3] = &unk_27865AA58;
  v28[4] = self;
  v29 = analysisCopy;
  [(HDRestorableAlarm *)scheduler checkForDueEventsWithCompletion:v28];

LABEL_15:
}

void __45__HDMCNotificationManager_didUpdateAnalysis___block_invoke(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = a4;
  if ((a3 & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      __45__HDMCNotificationManager_didUpdateAnalysis___block_invoke_cold_1(a1, v7);
    }
  }

  [*(a1 + 32) _queue_rescheduleNotificationsForAnalysis:*(a1 + 40)];
}

- (void)featureSettingsManager:(id)manager didUpdateSettingsForFeatureIdentifier:(id)identifier
{
  dispatch_assert_queue_V2(self->_queue);

  [(HDMCNotificationManager *)self _queue_notificationOrSensorInputSettingsDidChange];
}

- (void)settingsManagerDidUpdateNotificationSettings:(id)settings
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  [(HDMCNotificationManager *)self _queue_notificationOrSensorInputSettingsDidChange];
  if ([(HKMCSettingsManager *)self->_settingsManager someNotificationsEnabled])
  {
    currentAnalysis = [(HDMCAnalysisManager *)self->_analysisManager currentAnalysis];
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2E8];
    v6 = *MEMORY[0x277CCC2E8];
    if (currentAnalysis)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v5;
        *v13 = 138543362;
        *&v13[4] = objc_opt_class();
        v8 = *&v13[4];
        _os_log_impl(&dword_2293D1000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification settings changed: rescheduling notifications using current analysis", v13, 0xCu);
      }

      [(HDMCNotificationManager *)self _queue_rescheduleNotificationsForAnalysis:currentAnalysis, *v13, *&v13[8]];
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(HDMCNotificationManager *)v5 settingsManagerDidUpdateNotificationSettings:?];
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      *v13 = 138543362;
      *&v13[4] = objc_opt_class();
      v11 = *&v13[4];
      _os_log_impl(&dword_2293D1000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifications not enabled", v13, 0xCu);
    }

    lastAnalysis = self->_lastAnalysis;
    self->_lastAnalysis = 0;

    [(HDMCNotificationManager *)self _queue_removeAllScheduledNotificationsIfNotEnabled];
  }
}

- (id)_requestFromAlarmEvent:(id)event
{
  eventCopy = event;
  v4 = MEMORY[0x277CE1FC0];
  eventIdentifier = [eventCopy eventIdentifier];
  v6 = [v4 hkmc_requestForCategoryIdentifier:eventIdentifier];

  if (!v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [HDMCNotificationManager _requestFromAlarmEvent:];
    }
  }

  return v6;
}

- (void)_queue_alarm:(id)_queue_alarm didReceiveDueEvents:(id)events
{
  v150 = *MEMORY[0x277D85DE8];
  _queue_alarmCopy = _queue_alarm;
  eventsCopy = events;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v8 = MEMORY[0x277CCC2E8];
  v9 = *MEMORY[0x277CCC2E8];
  selfCopy = self;
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = objc_opt_class();
    v12 = MEMORY[0x277CCABB0];
    v13 = v11;
    v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(eventsCopy, "count")}];
    *buf = 138543874;
    v145 = v11;
    v146 = 2114;
    v147 = v14;
    v148 = 2112;
    v149 = eventsCopy;
    _os_log_impl(&dword_2293D1000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received %{public}@ due events: %@", buf, 0x20u);

    self = selfCopy;
  }

  _currentDate = [(HDMCNotificationManager *)self _currentDate];
  v16 = [_currentDate dateByAddingTimeInterval:-86400.0];

  notificationSyncManager = self->_notificationSyncManager;
  v141 = 0;
  v18 = [(HDMCNotificationSyncManager *)notificationSyncManager holdInstructionCategoryIdentifiersWithError:&v141];
  v108 = v141;
  v117 = v18;
  if (!v18)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [HDMCNotificationManager _queue_alarm:didReceiveDueEvents:];
    }

    v117 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  someNotificationsEnabledAndSupported = [(HKMCSettingsManager *)self->_settingsManager someNotificationsEnabledAndSupported];
  v20 = someNotificationsEnabledAndSupported;
  if (someNotificationsEnabledAndSupported)
  {
    v21 = [(HDMCDeviceScopedStorageManager *)self->_deviceScopedStorageManager accountDevicesInfoWithError:0];
    shouldFireNotifications = [v21 shouldFireNotifications];
  }

  else
  {
    shouldFireNotifications = 0;
  }

  v109 = _queue_alarmCopy;
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  obj = eventsCopy;
  v22 = [obj countByEnumeratingWithState:&v137 objects:v143 count:16];
  v113 = v16;
  if (!v22)
  {
    v122 = 0;
    v115 = 0;
    v116 = 0;
    goto LABEL_64;
  }

  v23 = v22;
  v122 = 0;
  v115 = 0;
  v116 = 0;
  v24 = *v138;
  v114 = *MEMORY[0x277D118F0];
  do
  {
    v25 = 0;
    do
    {
      if (*v138 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v137 + 1) + 8 * v25);
      if ((v20 & 1) == 0)
      {
        _HKInitializeLogging();
        v36 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v36;
          v38 = objc_opt_class();
          *buf = 138543618;
          v145 = v38;
          v146 = 2112;
          v147 = v26;
          v39 = v38;
          _os_log_impl(&dword_2293D1000, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping sending notification for event; notifications are not enabled and supported: %@", buf, 0x16u);
        }

        selfCopy4 = self;
        v34 = v26;
        v35 = 0;
        goto LABEL_27;
      }

      if ((shouldFireNotifications & 1) == 0)
      {
        _HKInitializeLogging();
        v40 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v40;
          v42 = objc_opt_class();
          *buf = 138543618;
          v145 = v42;
          v146 = 2112;
          v147 = v26;
          v43 = v42;
          _os_log_impl(&dword_2293D1000, v41, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping sending notification for event; other health devices have a higher algorithm version: %@", buf, 0x16u);
        }

        selfCopy4 = self;
        v34 = v26;
        v35 = 1;
        goto LABEL_27;
      }

      currentDueDate = [*(*(&v137 + 1) + 8 * v25) currentDueDate];
      v28 = [currentDueDate hk_isBeforeDate:v16];

      if (v28)
      {
        _HKInitializeLogging();
        v29 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v29;
          v31 = objc_opt_class();
          *buf = 138543618;
          v145 = v31;
          v146 = 2112;
          v147 = v26;
          v32 = v31;
          _os_log_impl(&dword_2293D1000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping sending notification for event due more than one day ago: %@", buf, 0x16u);
        }

        selfCopy4 = self;
        v34 = v26;
        v35 = 2;
LABEL_27:
        [(HDMCNotificationManager *)selfCopy4 _unitTest_didSkipNotificationForDueEvent:v34 reason:v35];
        goto LABEL_28;
      }

      context = objc_autoreleasePoolPush();
      hdmc_categoryIdentifier = [v26 hdmc_categoryIdentifier];
      if ([v117 containsObject:hdmc_categoryIdentifier])
      {
        _HKInitializeLogging();
        v45 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          v46 = v45;
          v47 = objc_opt_class();
          *buf = 138543618;
          v145 = v47;
          v146 = 2114;
          v147 = hdmc_categoryIdentifier;
          v48 = v47;
          _os_log_impl(&dword_2293D1000, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping sending notification due to hold: %{public}@", buf, 0x16u);

          self = selfCopy;
        }

        [(HDMCNotificationManager *)self _unitTest_didSkipNotificationForDueEvent:v26 reason:3];
        goto LABEL_60;
      }

      if ([hdmc_categoryIdentifier isEqualToString:v114])
      {
        if (v116)
        {
          currentDueDate2 = [v116 currentDueDate];
          currentDueDate3 = [v26 currentDueDate];
          v51 = [currentDueDate2 hk_isBeforeDate:currentDueDate3];

          if (v51)
          {
            _HKInitializeLogging();
            v52 = *v8;
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
            {
              v53 = v52;
              v54 = objc_opt_class();
              v110 = v54;
              eventIdentifier = [v26 eventIdentifier];
              *buf = 138543618;
              v145 = v54;
              v146 = 2112;
              v147 = eventIdentifier;
              _os_log_impl(&dword_2293D1000, v53, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping sending notification for earlier event: %@", buf, 0x16u);
            }

            v56 = v26;

            v116 = v56;
          }

          v16 = v113;
        }

        else
        {
          v116 = v26;
        }
      }

      v57 = HKMCPeriodNotificationCategories();
      v58 = [v57 containsObject:hdmc_categoryIdentifier];

      if (!v58)
      {
        v67 = HKMCFertileWindowNotificationCategories();
        v68 = [v67 containsObject:hdmc_categoryIdentifier];

        if (v68)
        {
          if (v122)
          {
            currentDueDate4 = [v122 currentDueDate];
            currentDueDate5 = [v26 currentDueDate];
            v71 = [currentDueDate4 hk_isBeforeDate:currentDueDate5];

            if (v71)
            {
              _HKInitializeLogging();
              v72 = *v8;
              if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
              {
                v73 = v72;
                v74 = objc_opt_class();
                v112 = v74;
                eventIdentifier2 = [v26 eventIdentifier];
                *buf = 138543618;
                v145 = v74;
                v146 = 2112;
                v147 = eventIdentifier2;
                _os_log_impl(&dword_2293D1000, v73, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping sending notification for earlier event: %@", buf, 0x16u);
              }

              v76 = v26;

              v122 = v76;
            }

            goto LABEL_54;
          }

          v122 = v26;
        }

        else
        {
          _HKInitializeLogging();
          v77 = *v8;
          self = selfCopy;
          if (!os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_60;
          }

          v78 = v77;
          v79 = objc_opt_class();
          v80 = v79;
          eventIdentifier3 = [v26 eventIdentifier];
          *buf = 138543618;
          v145 = v79;
          v146 = 2112;
          v147 = eventIdentifier3;
          _os_log_error_impl(&dword_2293D1000, v78, OS_LOG_TYPE_ERROR, "[%{public}@] Skipping sending notification for unknown event identifier type: %@", buf, 0x16u);

          v16 = v113;
        }

LABEL_59:
        self = selfCopy;
        goto LABEL_60;
      }

      if (!v115)
      {
        v115 = v26;
        goto LABEL_59;
      }

      currentDueDate6 = [v115 currentDueDate];
      currentDueDate7 = [v26 currentDueDate];
      v61 = [currentDueDate6 hk_isBeforeDate:currentDueDate7];

      if (v61)
      {
        _HKInitializeLogging();
        v62 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          v63 = v62;
          v64 = objc_opt_class();
          v111 = v64;
          eventIdentifier4 = [v26 eventIdentifier];
          *buf = 138543618;
          v145 = v64;
          v146 = 2112;
          v147 = eventIdentifier4;
          _os_log_impl(&dword_2293D1000, v63, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping sending notification for earlier event: %@", buf, 0x16u);
        }

        v66 = v26;

        v115 = v66;
      }

LABEL_54:
      self = selfCopy;
      v16 = v113;
LABEL_60:

      objc_autoreleasePoolPop(context);
LABEL_28:
      ++v25;
    }

    while (v23 != v25);
    v82 = [obj countByEnumeratingWithState:&v137 objects:v143 count:16];
    v23 = v82;
  }

  while (v82);
LABEL_64:

  v83 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  v84 = v109;
  if (!v116)
  {
    goto LABEL_67;
  }

  v85 = [(HDMCNotificationManager *)self _requestFromAlarmEvent:?];
  if (v85)
  {
    v86 = v85;
    [v83 addObject:v85];

LABEL_67:
    if (v115)
    {
      v87 = [(HDMCNotificationManager *)self _requestFromAlarmEvent:?];
      if (v87)
      {
        v88 = v87;
        [v83 addObject:v87];

        goto LABEL_70;
      }
    }

    else
    {
LABEL_70:
      if (v122)
      {
        hdmc_fertileWindowEndDayIndex = [v122 hdmc_fertileWindowEndDayIndex];
        ovulationConfirmationStateManager = self->_ovulationConfirmationStateManager;
        v136 = 0;
        v91 = [(HDMCOvulationConfirmationStateManager *)ovulationConfirmationStateManager scheduledNotificationFertileWindowEndDayIndexWithEvent:v122 error:&v136];
        v92 = v136;
        if (v91 && [v91 integerValue])
        {
          hdmc_fertileWindowEndDayIndex = [v91 integerValue];
        }

        else
        {
          _HKInitializeLogging();
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
          {
            [HDMCNotificationManager _queue_alarm:didReceiveDueEvents:];
          }
        }

        v93 = self->_ovulationConfirmationStateManager;
        v135 = v92;
        v94 = [(HDMCOvulationConfirmationStateManager *)v93 scheduledNotificationDaysShiftedFromCalendarMethodWithEvent:v122 error:&v135];
        v95 = v135;

        if (!v94)
        {
          _HKInitializeLogging();
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
          {
            [HDMCNotificationManager _queue_alarm:didReceiveDueEvents:];
          }
        }

        v96 = MEMORY[0x277CE1FC0];
        hdmc_categoryIdentifier2 = [v122 hdmc_categoryIdentifier];
        v98 = [v96 hkmc_requestForCategoryIdentifier:hdmc_categoryIdentifier2 fertileWindowEndDayIndex:hdmc_fertileWindowEndDayIndex daysShiftedFromCalendarMethod:v94];

        if (v98)
        {
          [v83 addObject:v98];
        }

        else
        {
          _HKInitializeLogging();
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
          {
            [HDMCNotificationManager _queue_alarm:didReceiveDueEvents:];
          }
        }
      }

      v99 = dispatch_group_create();
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v120 = v83;
      v100 = [v120 countByEnumeratingWithState:&v131 objects:v142 count:16];
      if (v100)
      {
        v101 = v100;
        v102 = *v132;
        do
        {
          for (i = 0; i != v101; ++i)
          {
            if (*v132 != v102)
            {
              objc_enumerationMutation(v120);
            }

            v104 = *(*(&v131 + 1) + 8 * i);
            dispatch_group_enter(v99);
            WeakRetained = objc_loadWeakRetained(&selfCopy->_profile);
            notificationManager = [WeakRetained notificationManager];
            v128[0] = MEMORY[0x277D85DD0];
            v128[1] = 3221225472;
            v128[2] = __60__HDMCNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke;
            v128[3] = &unk_27865AA80;
            v128[4] = selfCopy;
            v128[5] = v104;
            v129 = v122;
            v130 = v99;
            [notificationManager postNotificationWithRequest:v104 completion:v128];
          }

          v101 = [v120 countByEnumeratingWithState:&v131 objects:v142 count:16];
        }

        while (v101);
      }

      queue = selfCopy->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__HDMCNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_322;
      block[3] = &unk_27865AA30;
      v84 = v109;
      v125 = v109;
      v126 = obj;
      v127 = selfCopy;
      dispatch_group_async(v99, queue, block);

      v16 = v113;
    }
  }
}

void __60__HDMCNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke(uint64_t a1, char a2, void *a3)
{
  v84 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 40) content];
    v7 = [v6 categoryIdentifier];
    v8 = *MEMORY[0x277D118F8];
    v9 = [v7 isEqualToString:*MEMORY[0x277D118F8]];

    if (v9)
    {
      v10 = [*(a1 + 32) _currentDate];
      v11 = *(*(a1 + 32) + 56);
      v79 = 0;
      v12 = [v11 hdmc_setUpdatedFertileWindowNotificationFireDate:v10 error:&v79];
      v13 = v79;
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC2E8];
      v15 = *MEMORY[0x277CCC2E8];
      if (v12)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v14;
          v17 = objc_opt_class();
          v18 = v17;
          HKSensitiveLogItem();
          v20 = v19 = v5;
          *buf = 138543618;
          v81 = v17;
          v82 = 2112;
          v83 = v20;
          _os_log_impl(&dword_2293D1000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully saved date fired for update fertile window notification in key value domain with date: %@", buf, 0x16u);

          v5 = v19;
        }

        [*(a1 + 32) _triggerImmediateSyncWithReason:@"hdmc_setUpdatedFertileWindowNotificationFireDate"];
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __60__HDMCNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_2(a1 + 32, v14);
      }
    }

    v23 = *(a1 + 32);
    v22 = *(a1 + 40);
    v24 = (a1 + 32);
    v25 = *(v23 + 64);
    v26 = *(v23 + 40);
    v78 = 0;
    v27 = [v25 transitionToFiredNotificationStateWithRequest:v22 settingsManager:v26 error:&v78];
    v28 = v78;
    if ((v27 & 1) == 0)
    {
      _HKInitializeLogging();
      v29 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        __60__HDMCNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_3(a1 + 32, v29);
      }
    }

    v30 = [*(a1 + 40) content];
    v31 = [v30 categoryIdentifier];
    v32 = [v31 isEqualToString:*MEMORY[0x277D118F0]];

    if (v32)
    {
      v33 = *(*v24 + 9);
      v77 = 0;
      v34 = [v33 hdmc_menstrualCyclesUnconfirmedDeviationNotificationGetStateWithError:&v77];
      v35 = v77;
      if (v34)
      {
        v36 = v28;
        v37 = [*v24 _currentDate];
        v38 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
        v39 = [v34 computeFiredStateWithCurrentDayIndex:{objc_msgSend(v37, "hk_dayIndexWithCalendar:", v38)}];

        if (v39)
        {
          v40 = *(*v24 + 9);
          v76 = 0;
          v41 = [v40 hdmc_menstrualCyclesUnconfirmedDeviationNotificationSetValuesWithState:v39 error:&v76];
          v42 = v76;
          if (v41)
          {
            [*v24 _triggerImmediateSyncWithReason:@"UnconfirmedDeviationNotificationSetValuesWithState"];
          }

          else
          {
            _HKInitializeLogging();
            v45 = *MEMORY[0x277CCC2E8];
            if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
            {
              __60__HDMCNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_4(a1 + 32, v45);
            }
          }
        }

        else
        {
          _HKInitializeLogging();
          v44 = *MEMORY[0x277CCC2E8];
          if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
          {
            __60__HDMCNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_5(a1 + 32, v44, v34);
          }
        }

        v28 = v36;
      }

      else
      {
        _HKInitializeLogging();
        v43 = *MEMORY[0x277CCC2E8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
        {
          __60__HDMCNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_6(a1 + 32, v43);
        }
      }
    }

    v46 = [*(a1 + 48) hdmc_categoryIdentifier];
    if ([v46 isEqualToString:v8])
    {
      v47 = [*(a1 + 48) hdmc_categoryIdentifier];
      v48 = [*(a1 + 40) content];
      v49 = [v48 categoryIdentifier];
      v50 = [v47 isEqualToString:v49];

      if (v50)
      {
        v74 = MEMORY[0x277D119B8];
        v51 = [*(a1 + 40) content];
        v52 = [v51 categoryIdentifier];
        v53 = v52;
        v54 = @"nil";
        if (v52)
        {
          v54 = v52;
        }

        v73 = v54;
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
        v56 = [WeakRetained notificationManager];
        v72 = [v56 areHealthNotificationsAuthorized];
        v75 = v5;
        v71 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 48), "hdmc_fertileWindowDayShift")}];
        v57 = MEMORY[0x277CCABB0];
        v58 = v28;
        v59 = [*(a1 + 48) hdmc_fertileWindowEndDayIndex];
        v60 = [*(a1 + 32) _currentDate];
        v61 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
        v62 = v59 - [v60 hk_dayIndexWithCalendar:v61];
        v28 = v58;
        v63 = [v57 numberWithInteger:v62];
        [v74 submitMetricForCategory:v73 areHealthNotificationsAuthorized:v72 numberOfDaysShiftedForFertileWindow:v71 numberOfDaysOffsetFromFertileWindowEnd:v63 numberOfDaysWithWristTemp45DaysBeforeOvulationConfirmedNotification:0 internalLiveOnCycleFactorOverrideEnabled:{objc_msgSend(*(*(a1 + 32) + 40), "internalCycleFactorsOverrideEnabled")}];

        v5 = v75;
        goto LABEL_40;
      }
    }

    else
    {
    }

    v64 = [*(a1 + 32) _notificationCategoriesWithBasicAnalytics];
    v65 = [*(a1 + 40) content];
    v66 = [v65 categoryIdentifier];
    v67 = [v64 containsObject:v66];

    if (!v67)
    {
LABEL_41:

      goto LABEL_42;
    }

    v68 = MEMORY[0x277D119B8];
    v51 = [*(a1 + 40) content];
    v69 = [v51 categoryIdentifier];
    v53 = v69;
    if (v69)
    {
      v70 = v69;
    }

    else
    {
      v70 = @"nil";
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v56 = [WeakRetained notificationManager];
    [v68 submitMetricForCategory:v70 areHealthNotificationsAuthorized:objc_msgSend(v56 internalLiveOnCycleFactorOverrideEnabled:{"areHealthNotificationsAuthorized"), objc_msgSend(*(*(a1 + 32) + 40), "internalCycleFactorsOverrideEnabled")}];
LABEL_40:

    goto LABEL_41;
  }

  _HKInitializeLogging();
  v21 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
  {
    __60__HDMCNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_1(a1, v21);
  }

LABEL_42:
  dispatch_group_leave(*(a1 + 56));
}

void __60__HDMCNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_322(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v13 = 0;
  v4 = [v2 removeEvents:v3 error:&v13];
  v5 = v13;
  if ((v4 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = a1[5];
      v10 = v8;
      v11 = [v9 count];
      v12 = a1[5];
      *buf = 138544130;
      v15 = v8;
      v16 = 2048;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2114;
      v21 = v5;
      _os_log_error_impl(&dword_2293D1000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Error removing %ld due events (%@) after firing notification: %{public}@", buf, 0x2Au);
    }
  }
}

- (id)_notificationCategoriesWithBasicAnalytics
{
  v2 = HKMCAllNotificationCategories();
  v3 = HKMCSensorBasedFertileWindowNotificationCategories();
  v4 = [v2 arrayByExcludingObjectsInArray:v3];

  return v4;
}

- (id)_periodEventFromNotificationCategory:(id)category notificationFireDayIndex:(int64_t)index
{
  settingsManager = self->_settingsManager;
  categoryCopy = category;
  v8 = [(HKMCSettingsManager *)settingsManager hdmc_dateComponentsForMenstruationNotificationOnDayIndex:index];
  v9 = [(HDRestorableAlarm *)self->_scheduler eventWithIdentifier:categoryCopy dueDateComponents:v8 eventOptions:0];

  return v9;
}

- (void)_queue_rescheduleNotificationsForAnalysis:(id)analysis
{
  v179 = *MEMORY[0x277D85DE8];
  analysisCopy = analysis;
  dispatch_assert_queue_V2(self->_queue);
  _currentDate = [(HDMCNotificationManager *)self _currentDate];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  menstruationNotificationsEnabled = [(HKMCSettingsManager *)self->_settingsManager menstruationNotificationsEnabled];
  v8 = MEMORY[0x277CCC2E8];
  if (menstruationNotificationsEnabled)
  {
    hdmc_beforePeriodStartNotification = [analysisCopy hdmc_beforePeriodStartNotification];
    v160 = hdmc_beforePeriodStartNotification;
    if (hdmc_beforePeriodStartNotification)
    {
      v10 = hdmc_beforePeriodStartNotification;
      category = [hdmc_beforePeriodStartNotification category];
      v12 = -[HDMCNotificationManager _periodEventFromNotificationCategory:notificationFireDayIndex:](self, "_periodEventFromNotificationCategory:notificationFireDayIndex:", category, [v10 fireOnDayIndex]);

      currentDueDate = [v12 currentDueDate];
      v14 = [currentDueDate hk_isAfterDate:_currentDate];

      if (v14)
      {
        [v6 addObject:v12];
      }

      else
      {
        _HKInitializeLogging();
        v15 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          v17 = objc_opt_class();
          v18 = v17;
          HKSensitiveLogItem();
          v19 = v6;
          v21 = v20 = v8;
          *buf = 138543618;
          v172 = v17;
          v173 = 2112;
          v174 = v21;
          _os_log_impl(&dword_2293D1000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping scheduling past due event %@", buf, 0x16u);

          v8 = v20;
          v6 = v19;
        }
      }
    }

    hdmc_afterPeriodStartNotification = [analysisCopy hdmc_afterPeriodStartNotification];
    v23 = hdmc_afterPeriodStartNotification;
    if (hdmc_afterPeriodStartNotification)
    {
      category2 = [hdmc_afterPeriodStartNotification category];
      v25 = -[HDMCNotificationManager _periodEventFromNotificationCategory:notificationFireDayIndex:](self, "_periodEventFromNotificationCategory:notificationFireDayIndex:", category2, [v23 fireOnDayIndex]);

      currentDueDate2 = [v25 currentDueDate];
      v27 = [currentDueDate2 hk_isAfterDate:_currentDate];

      if (v27)
      {
        [v6 addObject:v25];
      }

      else
      {
        _HKInitializeLogging();
        v28 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v28;
          v30 = objc_opt_class();
          v31 = v30;
          HKSensitiveLogItem();
          v33 = v32 = _currentDate;
          *buf = 138543618;
          v172 = v30;
          v173 = 2112;
          v174 = v33;
          _os_log_impl(&dword_2293D1000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping scheduling past due event %@", buf, 0x16u);

          _currentDate = v32;
        }
      }
    }

    hdmc_afterPeriodEndNotification = [analysisCopy hdmc_afterPeriodEndNotification];
    v35 = hdmc_afterPeriodEndNotification;
    if (hdmc_afterPeriodEndNotification)
    {
      category3 = [hdmc_afterPeriodEndNotification category];
      v37 = -[HDMCNotificationManager _periodEventFromNotificationCategory:notificationFireDayIndex:](self, "_periodEventFromNotificationCategory:notificationFireDayIndex:", category3, [v35 fireOnDayIndex]);

      currentDueDate3 = [v37 currentDueDate];
      v39 = [currentDueDate3 hk_isAfterDate:_currentDate];

      if (v39)
      {
        [v6 addObject:v37];
      }

      else
      {
        _HKInitializeLogging();
        v40 = *MEMORY[0x277CCC2E8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
        {
          v41 = v40;
          v42 = objc_opt_class();
          v156 = _currentDate;
          v43 = v42;
          v44 = HKSensitiveLogItem();
          *buf = 138543618;
          v172 = v42;
          v173 = 2112;
          v174 = v44;
          _os_log_impl(&dword_2293D1000, v41, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping scheduling past due event %@", buf, 0x16u);

          _currentDate = v156;
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    daemon = [WeakRetained daemon];
    behavior = [daemon behavior];
    isAppleWatch = [behavior isAppleWatch];

    if ((isAppleWatch & 1) == 0)
    {
      v157 = _currentDate;
      unconfirmedDeviationStateKeyValueDomain = self->_unconfirmedDeviationStateKeyValueDomain;
      v169 = 0;
      v50 = [(HDKeyValueDomain *)unconfirmedDeviationStateKeyValueDomain hdmc_menstrualCyclesUnconfirmedDeviationNotificationGetStateWithError:&v169];
      v51 = v169;
      if (!v50)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
        {
          [HDMCNotificationManager _queue_rescheduleNotificationsForAnalysis:];
        }
      }

      deviationDismissalKeyValueDomain = self->_deviationDismissalKeyValueDomain;
      v168 = 0;
      v53 = [(HDKeyValueDomain *)deviationDismissalKeyValueDomain hdmc_unconfirmedDeviationDismissalDayIndexWithError:&v168];
      v54 = v168;
      v55 = v54;
      if (v53 || !v54)
      {
        if (v50)
        {
          objc_storeStrong(&self->_lastDismissalDayIndex, v53);
          _currentDate2 = [(HDMCNotificationManager *)self _currentDate];
          menstruationNotificationTimeOfDay = [(HKMCSettingsManager *)self->_settingsManager menstruationNotificationTimeOfDay];
          v154 = v53;
          v58 = [v50 computeNewStateFromAnalysis:analysisCopy dismissalDayIndex:v53 currentDate:_currentDate2 unconfirmedDeviationNotificationTimeOfDay:menstruationNotificationTimeOfDay];

          v59 = v58;
          scheduledNotificationFireDayIndex = [v58 scheduledNotificationFireDayIndex];

          if (scheduledNotificationFireDayIndex)
          {
            v61 = *MEMORY[0x277D118F0];
            v150 = v59;
            scheduledNotificationFireDayIndex2 = [v59 scheduledNotificationFireDayIndex];
            log = v61;
            v63 = -[HDMCNotificationManager _periodEventFromNotificationCategory:notificationFireDayIndex:](self, "_periodEventFromNotificationCategory:notificationFireDayIndex:", v61, [scheduledNotificationFireDayIndex2 integerValue]);

            currentDueDate4 = [v63 currentDueDate];
            v65 = [currentDueDate4 hk_isAfterDate:v157];

            if (v65)
            {
              [v6 addObject:v63];
            }

            else
            {
              _HKInitializeLogging();
              v66 = *MEMORY[0x277CCC2E8];
              if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
              {
                v67 = v66;
                v68 = objc_opt_class();
                *buf = 138543618;
                v172 = v68;
                v173 = 2112;
                v174 = log;
                v69 = v68;
                _os_log_impl(&dword_2293D1000, v67, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping scheduling past due event %@", buf, 0x16u);
              }
            }

            v59 = v150;
          }

          if ([v50 isEqual:v59])
          {
            _HKInitializeLogging();
            v70 = *MEMORY[0x277CCC2E8];
            if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
            {
              logb = v70;
              v71 = v59;
              v72 = objc_opt_class();
              v151 = v72;
              v73 = HKSensitiveLogItem();
              *buf = 138543618;
              v172 = v72;
              v59 = v71;
              v173 = 2114;
              v174 = v73;
              _os_log_impl(&dword_2293D1000, logb, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deviation notification state unchanged: %{public}@", buf, 0x16u);
            }

            v53 = v154;
          }

          else
          {
            v74 = self->_unconfirmedDeviationStateKeyValueDomain;
            v167 = v55;
            v75 = [(HDKeyValueDomain *)v74 hdmc_menstrualCyclesUnconfirmedDeviationNotificationSetValuesWithState:v59 error:&v167];
            loga = v167;

            v53 = v154;
            if (v75)
            {
              _HKInitializeLogging();
              v76 = *MEMORY[0x277CCC2E8];
              if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
              {
                v143 = v76;
                v77 = objc_opt_class();
                v144 = v77;
                v142 = HKSensitiveLogItem();
                v78 = HKSensitiveLogItem();
                [(HDKeyValueDomain *)self->_unconfirmedDeviationStateKeyValueDomain domainName];
                v79 = v152 = v59;
                *buf = 138544130;
                v172 = v77;
                v173 = 2114;
                v174 = v142;
                v175 = 2114;
                v176 = v78;
                v177 = 2114;
                v178 = v79;
                _os_log_impl(&dword_2293D1000, v143, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully transitioned old state: %{public}@ -> new state: %{public}@ in key value domain: %{public}@", buf, 0x2Au);

                v59 = v152;
                v53 = v154;
              }

              [(HDMCNotificationManager *)self _triggerImmediateSyncWithReason:@"UnconfirmedDeviationNotificationSetValuesWithState", v142];
            }

            v55 = loga;
          }
        }
      }

      else
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
        {
          [HDMCNotificationManager _queue_rescheduleNotificationsForAnalysis:];
        }
      }

      _currentDate = v157;
    }

    v8 = MEMORY[0x277CCC2E8];
  }

  if ([(HKMCSettingsManager *)self->_settingsManager fertileWindowNotificationsEnabled])
  {
    hdmc_beforeFertileWindowStartNotification = [analysisCopy hdmc_beforeFertileWindowStartNotification];
    v81 = hdmc_beforeFertileWindowStartNotification;
    if (hdmc_beforeFertileWindowStartNotification)
    {
      v82 = -[HKMCSettingsManager hdmc_dateComponentsForFertileWindowNotificationOnDayIndex:](self->_settingsManager, "hdmc_dateComponentsForFertileWindowNotificationOnDayIndex:", [hdmc_beforeFertileWindowStartNotification fireOnDayIndex]);
      scheduler = self->_scheduler;
      category4 = [v81 category];
      v85 = [(HDRestorableAlarm *)scheduler eventWithIdentifier:category4 dueDateComponents:v82 eventOptions:0];

      currentDueDate5 = [v85 currentDueDate];
      LODWORD(category4) = [currentDueDate5 hk_isAfterDate:_currentDate];

      if (category4)
      {
        [v6 addObject:v85];
      }

      else
      {
        _HKInitializeLogging();
        v87 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          v88 = v87;
          v89 = objc_opt_class();
          v158 = v89;
          [v81 category];
          v161 = v6;
          v90 = v8;
          v92 = v91 = _currentDate;
          *buf = 138543618;
          v172 = v89;
          v173 = 2112;
          v174 = v92;
          _os_log_impl(&dword_2293D1000, v88, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping scheduling past due event %@", buf, 0x16u);

          _currentDate = v91;
          v8 = v90;
          v6 = v161;
        }
      }
    }

    v93 = objc_loadWeakRetained(&self->_profile);
    daemon2 = [v93 daemon];
    behavior2 = [daemon2 behavior];
    isAppleWatch2 = [behavior2 isAppleWatch];

    if ((isAppleWatch2 & 1) == 0)
    {
      fertileWindowNotificationStateKeyValueDomain = self->_fertileWindowNotificationStateKeyValueDomain;
      v166 = 0;
      v98 = [(HDKeyValueDomain *)fertileWindowNotificationStateKeyValueDomain hdmc_updatedFertileWindowNotificationFireDateWithError:&v166];
      v99 = v166;
      v100 = v99;
      v162 = v98;
      if (v98 || !v99)
      {
        fertileWindowNotificationTimeOfDay = [(HKMCSettingsManager *)self->_settingsManager fertileWindowNotificationTimeOfDay];
        v102 = [analysisCopy hdmc_fertileWindowDidUpdateDueToSensorDataNotificationForNotificationFireDate:_currentDate lastFiredDate:v98 fertileWindowNotificationTimeOfDay:fertileWindowNotificationTimeOfDay];

        if (v102)
        {
          v103 = -[HKMCSettingsManager hdmc_dateComponentsForFertileWindowNotificationOnDayIndex:](self->_settingsManager, "hdmc_dateComponentsForFertileWindowNotificationOnDayIndex:", [v102 fireOnDayIndex]);
          eventIdentifierFromUpdateFertileWindowNotification = [v102 eventIdentifierFromUpdateFertileWindowNotification];
          v155 = v103;
          v104 = [HDRestorableAlarm eventWithIdentifier:"eventWithIdentifier:dueDateComponents:eventOptions:" dueDateComponents:? eventOptions:?];
          currentDueDate6 = [v104 currentDueDate];
          v159 = _currentDate;
          v106 = [currentDueDate6 hk_isAfterDate:_currentDate];

          if (v106)
          {
            [v6 addObject:v104];
          }

          else
          {
            _HKInitializeLogging();
            v107 = *MEMORY[0x277CCC2E8];
            if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
            {
              v145 = v107;
              v108 = objc_opt_class();
              logc = v108;
              category5 = [v102 category];
              *buf = 138543618;
              v172 = v108;
              v173 = 2112;
              v174 = category5;
              _os_log_impl(&dword_2293D1000, v145, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping scheduling past due event %@", buf, 0x16u);
            }
          }

          _currentDate = v159;
          v8 = MEMORY[0x277CCC2E8];
        }
      }

      else
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          [HDMCNotificationManager _queue_rescheduleNotificationsForAnalysis:];
        }
      }

      _HKInitializeLogging();
      v110 = v8;
      v111 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v112 = v111;
        v113 = objc_opt_class();
        *buf = 138543362;
        v172 = v113;
        v114 = v113;
        _os_log_impl(&dword_2293D1000, v112, OS_LOG_TYPE_DEFAULT, "[%{public}@] Computing scheduled events for ovulation confirmation", buf, 0xCu);
      }

      ovulationConfirmationStateManager = self->_ovulationConfirmationStateManager;
      settingsManager = self->_settingsManager;
      v117 = self->_scheduler;
      v165 = v100;
      v118 = [(HDMCOvulationConfirmationStateManager *)ovulationConfirmationStateManager eventsToScheduleForAnalysis:analysisCopy settingsManager:settingsManager scheduler:v117 error:&v165];
      v119 = v165;

      if (v118)
      {
        [v6 addObjectsFromArray:v118];
      }

      else
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*v110, OS_LOG_TYPE_ERROR))
        {
          [HDMCNotificationManager _queue_rescheduleNotificationsForAnalysis:];
        }
      }

      v8 = v110;
    }
  }

  _HKInitializeLogging();
  v120 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v121 = v120;
    v122 = objc_opt_class();
    v123 = MEMORY[0x277CCABB0];
    v124 = v122;
    v125 = [v123 numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
    *buf = 138543874;
    v172 = v122;
    v173 = 2114;
    v174 = v125;
    v175 = 2112;
    v176 = v6;
    _os_log_impl(&dword_2293D1000, v121, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduling %{public}@ events: %@", buf, 0x20u);
  }

  v126 = self->_scheduler;
  v127 = [v6 copy];
  v164 = 0;
  v128 = [(HDRestorableAlarm *)v126 replaceAllScheduledEventsWithEvents:v127 error:&v164];
  v129 = v164;

  if (v128)
  {
    notificationSyncManager = self->_notificationSyncManager;
    latestSampleInfo = [analysisCopy latestSampleInfo];
    [(HDMCNotificationSyncManager *)notificationSyncManager sendNotificationInstructionsForSchedulingChanges:v128 sampleInfo:latestSampleInfo];

    objc_storeStrong(&self->_lastAnalysis, analysis);
    _currentDate3 = [(HDMCNotificationManager *)self _currentDate];
    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v134 = [analysisCopy isEarliestNotificationScheduledAfterDate:_currentDate3 gregorianCalendar:hk_gregorianCalendar];

    if (v134)
    {
      _HKInitializeLogging();
      v135 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v136 = v135;
        v137 = objc_opt_class();
        *buf = 138543362;
        v172 = v137;
        v138 = v137;
        _os_log_impl(&dword_2293D1000, v136, OS_LOG_TYPE_DEFAULT, "[%{public}@] Clearing all previous period notifications from notification center", buf, 0xCu);
      }

      v139 = objc_loadWeakRetained(&self->_profile);
      notificationManager = [v139 notificationManager];
      v170 = *MEMORY[0x277D11908];
      v141 = [MEMORY[0x277CBEA60] arrayWithObjects:&v170 count:1];
      [notificationManager removeDeliveredNotificationsWithIdentifiers:v141];
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [HDMCNotificationManager _queue_rescheduleNotificationsForAnalysis:];
    }
  }
}

- (void)_queue_removeAllScheduledNotificationsIfNotEnabled
{
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__HDMCNotificationManager__queue_removeAllScheduledNotificationsIfNotEnabled__block_invoke;
  v6[3] = &unk_27865A830;
  v6[4] = self;
  [database performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v6];
}

void __77__HDMCNotificationManager__queue_removeAllScheduledNotificationsIfNotEnabled__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1 + 32;
  if (([*(*(a1 + 32) + 40) someNotificationsEnabled] & 1) == 0)
  {
    _HKInitializeLogging();
    v2 = MEMORY[0x277CCC2E8];
    v3 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      *buf = 138543362;
      v21 = objc_opt_class();
      v5 = v21;
      _os_log_impl(&dword_2293D1000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing all scheduled and delivered notifications: notifications not enabled and supported", buf, 0xCu);
    }

    v6 = *(*v1 + 104);
    v17 = 0;
    v7 = [v6 removeAllEventsWithError:&v17];
    v8 = v17;
    if ((v7 & 1) == 0)
    {
      _HKInitializeLogging();
      v9 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        __77__HDMCNotificationManager__queue_removeAllScheduledNotificationsIfNotEnabled__block_invoke_cold_1(v1, v9);
      }
    }

    WeakRetained = objc_loadWeakRetained((*v1 + 8));
    v11 = [WeakRetained notificationManager];
    v12 = *MEMORY[0x277D11900];
    v19[0] = *MEMORY[0x277D11908];
    v19[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    [v11 removeDeliveredNotificationsWithIdentifiers:v13];

    v14 = objc_loadWeakRetained((*v1 + 8));
    v15 = [v14 notificationManager];
    v18 = *MEMORY[0x277D11910];
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    [v15 removeDeliveredNotificationsWithIdentifiers:v16];
  }
}

- (void)_queue_notificationOrSensorInputSettingsDidChange
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error reading heart rate input settings: %{public}@", v7, v8, v9, v10);
}

- (void)_triggerImmediateSyncWithReason:(id)reason
{
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  cloudSyncManager = [WeakRetained cloudSyncManager];
  v7 = objc_alloc(MEMORY[0x277CCD140]);
  v8 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
  v9 = [v7 initWithChangesSyncRequest:v8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__HDMCNotificationManager__triggerImmediateSyncWithReason___block_invoke;
  v11[3] = &unk_27865AAA8;
  v11[4] = self;
  v12 = reasonCopy;
  v10 = reasonCopy;
  [cloudSyncManager syncWithRequest:v9 reason:v10 completion:v11];
}

void __59__HDMCNotificationManager__triggerImmediateSyncWithReason___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2E8];
  v7 = *MEMORY[0x277CCC2E8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v6;
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      v11 = v9;
      _os_log_impl(&dword_2293D1000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cloud sync request completed for %{public}@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __59__HDMCNotificationManager__triggerImmediateSyncWithReason___block_invoke_cold_1(a1, v6);
  }
}

- (void)didUpdateAnalysis:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving unconfirmed deviation dismiss day to determine rescheduling: %{public}@", v7, v8, v9, v10);
}

void __45__HDMCNotificationManager_didUpdateAnalysis___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_0(v4);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v6, v7, "[%{public}@] Error checking for due events before rescheduling: %{public}@", v8, v9, v10, v11);
}

- (void)settingsManagerDidUpdateNotificationSettings:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a1;
  objc_opt_class();
  OUTLINED_FUNCTION_2_2();
  v4 = v3;
  _os_log_error_impl(&dword_2293D1000, v2, OS_LOG_TYPE_ERROR, "[%{public}@] Notification settings changed: unable to reschedule notifications due to no current analysis", v5, 0xCu);
}

- (void)_requestFromAlarmEvent:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_3();
  v5 = v4;
  v6 = [v0 eventIdentifier];
  LODWORD(v14) = 138543618;
  *(&v14 + 4) = v4;
  OUTLINED_FUNCTION_5_0();
  *v15 = v7;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v8, v9, "[%{public}@] Could not create notification request from event identifier: %@", v10, v11, v12, v13, v14, DWORD2(v14), *&v15[2]);
}

- (void)_queue_alarm:didReceiveDueEvents:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error fetching hold instructions: %{public}@", v7, v8, v9, v10);
}

- (void)_queue_alarm:didReceiveDueEvents:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_5_0();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Could not retrieve scheduled notification fertile window end day index:%@", v7, v8, v9, v10);
}

- (void)_queue_alarm:didReceiveDueEvents:.cold.3()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_5_0();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Could not retrieve scheduled notification days shifted from calendar window value:%@", v7, v8, v9, v10);
}

- (void)_queue_alarm:didReceiveDueEvents:.cold.4()
{
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_3();
  v5 = v4;
  v6 = [v0 hdmc_categoryIdentifier];
  LODWORD(v14) = 138543618;
  *(&v14 + 4) = v4;
  OUTLINED_FUNCTION_5_0();
  *v15 = v7;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v8, v9, "[%{public}@] Could not create notification request from event identifier: %@", v10, v11, v12, v13, v14, DWORD2(v14), *&v15[2]);
}

void __60__HDMCNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  OUTLINED_FUNCTION_2_2();
  v4 = v3;
  OUTLINED_FUNCTION_7_0(&dword_2293D1000, v5, v6, "[%{public}@] Error posting user notification for request %@: %{public}@", v7, v8, v9, v10);
}

void __60__HDMCNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_2(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_6_0(a1, a2);
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error saving date fired for update fertile window notification in key value domain: %{public}@", v7, v8, v9, v10);
}

void __60__HDMCNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_3(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_6_0(a1, a2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_5_0();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error transitioning from scheduled state to fired state:%@", v7, v8, v9, v10);
}

void __60__HDMCNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_4(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_6_0(a1, a2);
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error updating deviation notification state: %{public}@", v7, v8, v9, v10);
}

void __60__HDMCNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_5(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_0(a1, a2);
  v4 = OUTLINED_FUNCTION_3();
  v5 = v4;
  v6 = HKSensitiveLogItem();
  *v13 = 138543618;
  *&v13[4] = v4;
  *&v13[12] = 2114;
  *&v13[14] = v6;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v7, v8, "[%{public}@] Unknown error migrating to waiting state from scheduled state: %{public}@", v9, v10, v11, v12, *v13, *&v13[8], *&v13[16]);
}

void __60__HDMCNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_6(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_6_0(a1, a2);
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving current deviation notification state: %{public}@", v7, v8, v9, v10);
}

- (void)_queue_rescheduleNotificationsForAnalysis:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving unconfirmed deviation notification state: %{public}@", v7, v8, v9, v10);
}

- (void)_queue_rescheduleNotificationsForAnalysis:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving unconfirmed deviation dismiss day: %{public}@", v7, v8, v9, v10);
}

- (void)_queue_rescheduleNotificationsForAnalysis:.cold.3()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving last fired date for update fertile window notification from key value domain: %{public}@", v7, v8, v9, v10);
}

- (void)_queue_rescheduleNotificationsForAnalysis:.cold.4()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving ovulation confirmation events with error: %{public}@", v7, v8, v9, v10);
}

- (void)_queue_rescheduleNotificationsForAnalysis:.cold.5()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error scheduling new events on analysis change: %{public}@", v7, v8, v9, v10);
}

void __77__HDMCNotificationManager__queue_removeAllScheduledNotificationsIfNotEnabled__block_invoke_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_6_0(a1, a2);
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error removing all scheduled notifications: %{public}@", v7, v8, v9, v10);
}

void __59__HDMCNotificationManager__triggerImmediateSyncWithReason___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  OUTLINED_FUNCTION_2_2();
  v4 = v3;
  OUTLINED_FUNCTION_7_0(&dword_2293D1000, v5, v6, "[%{public}@] Cloud sync request for %{public}@ failed: %{public}@", v7, v8, v9, v10);
}

@end