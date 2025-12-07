@interface HDMHAssessmentsNotificationManager
- (HDMHAssessmentsNotificationManager)initWithProfile:(id)profile settingsManager:(id)manager restorableAlarm:(id)alarm promptedAssessmentsManager:(id)assessmentsManager unitTest_didEvaluateIfMaintenanceWorkIsNeeded:(id)needed;
- (id)_currentDate;
- (id)_eventsToSchedule;
- (id)_nextBehaviorBasedDateWithError:(id *)error;
- (id)_nextRegularlyScheduledDateWithError:(id *)error;
- (id)_periodicAssessmentEvent;
- (id)_requestFromAlarmEvent:(id)event;
- (id)scheduledNotificationsWithError:(id *)error;
- (void)_periodicAssessmentEvent;
- (void)_queue_alarm:(id)_queue_alarm didReceiveDueEvents:(id)events;
- (void)_queue_enqueueMaintenanceRemovalIfNeeded;
- (void)_queue_removeAllScheduledNotifications;
- (void)_queue_removeAllScheduledNotificationsIfNotEnabled;
- (void)_queue_rescheduleNotifications;
- (void)_queue_runMaintenanceRemoval;
- (void)_queue_start;
- (void)_removeRelatedDeliveredHDMHNotificationsForEvent:(id)event;
- (void)_rescheduleNotifications;
- (void)_triggerImmediateSyncWithReason:(id)reason;
- (void)_unitTest_notifyDidEvaluateIfMaintenanceWorkIsNeeded:(BOOL)needed;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
- (void)promptedAssessmentsManagerDidUpdatePromptedAssessments:(id)assessments;
- (void)settingsManagerDidUpdateNotificationSettings:(id)settings;
@end

@implementation HDMHAssessmentsNotificationManager

- (HDMHAssessmentsNotificationManager)initWithProfile:(id)profile settingsManager:(id)manager restorableAlarm:(id)alarm promptedAssessmentsManager:(id)assessmentsManager unitTest_didEvaluateIfMaintenanceWorkIsNeeded:(id)needed
{
  profileCopy = profile;
  managerCopy = manager;
  alarmCopy = alarm;
  assessmentsManagerCopy = assessmentsManager;
  neededCopy = needed;
  v32.receiver = self;
  v32.super_class = HDMHAssessmentsNotificationManager;
  v17 = [(HDMHAssessmentsNotificationManager *)&v32 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_profile, profileCopy);
    eventHandlerQueue = [alarmCopy eventHandlerQueue];
    v20 = eventHandlerQueue;
    if (eventHandlerQueue)
    {
      v21 = eventHandlerQueue;
    }

    else
    {
      v21 = HKCreateSerialDispatchQueue();
    }

    queue = v18->_queue;
    v18->_queue = v21;

    v23 = MEMORY[0x277D10718];
    WeakRetained = objc_loadWeakRetained(&v18->_profile);
    v25 = [v23 hdmh_mentalHealthSyncedDefaultsDomainWithProfile:WeakRetained];
    assessmentNotificationStateKeyValueDomain = v18->_assessmentNotificationStateKeyValueDomain;
    v18->_assessmentNotificationStateKeyValueDomain = v25;

    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

    if (!alarmCopy && (isAppleWatch & 1) == 0)
    {
      v29 = objc_alloc(MEMORY[0x277D10838]);
      v30 = objc_loadWeakRetained(&v18->_profile);
      alarmCopy = [v29 initWithProfile:v30 clientIdentifier:@"HDMHAssessmentsNotificationManager" eventHandlerQueue:v18->_queue];
    }

    if (neededCopy)
    {
      [(HDMHAssessmentsNotificationManager *)v18 setUnitTest_didEvaluateIfMaintenanceWorkIsNeeded:neededCopy];
    }

    v18->_queue_hasEnqueuedMaintenanceWork = 0;
    objc_storeStrong(&v18->_restorableAlarm, alarmCopy);
    objc_storeStrong(&v18->_settingsManager, manager);
    objc_storeStrong(&v18->_promptedAssessmentsManager, assessmentsManager);
    [profileCopy registerProfileReadyObserver:v18 queue:v18->_queue];
  }

  return v18;
}

- (void)_queue_start
{
  v5 = @"NO";
  if (a2)
  {
    v5 = @"YES";
  }

  *buf = 138543618;
  *(buf + 4) = self;
  *(buf + 6) = 2114;
  *(buf + 14) = v5;
  _os_log_debug_impl(&dword_258977000, log, OS_LOG_TYPE_DEBUG, "[%{public}@] Assessments notifications enabled: %{public}@", buf, 0x16u);
}

void __50__HDMHAssessmentsNotificationManager__queue_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_alarm:v6 didReceiveDueEvents:v5];
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543618;
    v8 = objc_opt_class();
    v9 = 2048;
    selfCopy = self;
    v5 = v8;
    _os_log_impl(&dword_258977000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidating notification manager: %p", buf, 0x16u);
  }

  [(HDRestorableAlarm *)self->_restorableAlarm invalidate];
  [(HKMHSettingsManager *)self->_settingsManager removeObserver:self];
  v6.receiver = self;
  v6.super_class = HDMHAssessmentsNotificationManager;
  [(HDMHAssessmentsNotificationManager *)&v6 dealloc];
}

- (id)scheduledNotificationsWithError:(id *)error
{
  v3 = [(HDRestorableAlarm *)self->_restorableAlarm allScheduledEventsWithError:error];
  v4 = [v3 hk_map:&__block_literal_global_2];

  return v4;
}

id __70__HDMHAssessmentsNotificationManager_scheduledNotificationsWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D28098];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 eventIdentifier];

  v6 = [v4 initWithCategory:v5];

  return v6;
}

- (id)_currentDate
{
  currentDateOverride = self->_currentDateOverride;
  if (currentDateOverride)
  {
    date = currentDateOverride;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  return date;
}

- (void)settingsManagerDidUpdateNotificationSettings:(id)settings
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  hasAnyAssessmentNotificationsEnabled = [(HKMHSettingsManager *)self->_settingsManager hasAnyAssessmentNotificationsEnabled];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2F0];
  v6 = os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT);
  if (hasAnyAssessmentNotificationsEnabled)
  {
    if (v6)
    {
      v7 = v5;
      *v11 = 138543362;
      *&v11[4] = objc_opt_class();
      v8 = *&v11[4];
      _os_log_impl(&dword_258977000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification settings changed: rescheduling notifications", v11, 0xCu);
    }

    [(HDMHAssessmentsNotificationManager *)self _rescheduleNotifications:*v11];
  }

  else
  {
    if (v6)
    {
      v9 = v5;
      *v11 = 138543362;
      *&v11[4] = objc_opt_class();
      v10 = *&v11[4];
      _os_log_impl(&dword_258977000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifications not enabled", v11, 0xCu);
    }

    [(HDMHAssessmentsNotificationManager *)self _queue_removeAllScheduledNotifications:*v11];
  }
}

- (id)_requestFromAlarmEvent:(id)event
{
  eventCopy = event;
  eventIdentifier = [eventCopy eventIdentifier];
  v5 = *MEMORY[0x277D28038];
  v6 = [eventIdentifier containsString:*MEMORY[0x277D28038]];

  if (!v6 || (v7 = MEMORY[0x277CE1FC0], [eventCopy dueDate], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "hkmh_requestForCategoryIdentifier:date:", v5, v8), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      [HDMHAssessmentsNotificationManager _requestFromAlarmEvent:];
    }

    v9 = 0;
  }

  return v9;
}

- (void)_queue_alarm:(id)_queue_alarm didReceiveDueEvents:(id)events
{
  v37 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v6 = MEMORY[0x277CCC2F0];
  v7 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = MEMORY[0x277CCABB0];
    v11 = v9;
    v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(eventsCopy, "count")}];
    *buf = 138543874;
    v32 = v9;
    v33 = 2114;
    v34 = v12;
    v35 = 2112;
    v36 = eventsCopy;
    _os_log_impl(&dword_258977000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received %{public}@ due events: %@", buf, 0x20u);
  }

  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  firstObject = [eventsCopy firstObject];
  if (([(HKMHSettingsManager *)self->_settingsManager hasAnyAssessmentNotificationsEnabled]& 1) != 0)
  {
    currentDueDate = [firstObject currentDueDate];
    v16 = [currentDueDate hk_isBeforeDate:v13];

    if (v16)
    {
      _HKInitializeLogging();
      v17 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = objc_opt_class();
        *buf = 138543618;
        v32 = v19;
        v33 = 2112;
        v34 = firstObject;
        v20 = v19;
        _os_log_impl(&dword_258977000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification for event was due more than one day ago: %@", buf, 0x16u);
      }
    }

    [(HDMHAssessmentsNotificationManager *)self _removeRelatedDeliveredHDMHNotificationsForEvent:firstObject];
    v21 = [(HDMHAssessmentsNotificationManager *)self _requestFromAlarmEvent:firstObject];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    notificationManager = [WeakRetained notificationManager];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __71__HDMHAssessmentsNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke;
    v29[3] = &unk_2798AAD48;
    v29[4] = self;
    v30 = v21;
    v24 = v21;
    [notificationManager postNotificationWithRequest:v24 completion:v29];
  }

  else
  {
    _HKInitializeLogging();
    v25 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      v27 = objc_opt_class();
      *buf = 138543618;
      v32 = v27;
      v33 = 2112;
      v34 = firstObject;
      v28 = v27;
      _os_log_impl(&dword_258977000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping sending notification for event; assessment notifications are not enabled and supported: %@", buf, 0x16u);
    }
  }
}

void __71__HDMHAssessmentsNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke(uint64_t a1, char a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 40) content];
    v7 = [v6 categoryIdentifier];
    v8 = [v7 isEqualToString:*MEMORY[0x277D28038]];

    if (v8)
    {
      v9 = [*(a1 + 32) _currentDate];
      v10 = *(*(a1 + 32) + 32);
      v23 = 0;
      v11 = [v10 hdmh_setUpdatedPeriodicPromptedAssessmentNotificationFireDate:v9 error:&v23];
      v12 = v23;
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC2F0];
      v14 = *MEMORY[0x277CCC2F0];
      if (v11)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v13;
          v16 = objc_opt_class();
          v17 = v16;
          v18 = HKSensitiveLogItem();
          *buf = 138543618;
          v25 = v16;
          v26 = 2112;
          v27 = v18;
          _os_log_impl(&dword_258977000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully saved date fired for periodic prompted assessment notification in key value domain with date: %@", buf, 0x16u);
        }

        [*(a1 + 32) _triggerImmediateSyncWithReason:@"hdmh_setUpdatedPeriodicPromptedAssessmentNotificationFireDate"];
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __71__HDMHAssessmentsNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_2(a1 + 32, v13);
      }
    }

    v20 = *(a1 + 32);
    v21 = *(v20 + 24);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __71__HDMHAssessmentsNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_318;
    v22[3] = &unk_2798AAB58;
    v22[4] = v20;
    dispatch_async(v21, v22);
  }

  else
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      __71__HDMHAssessmentsNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_1(a1, v19, v5);
    }
  }
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
  v11[2] = __70__HDMHAssessmentsNotificationManager__triggerImmediateSyncWithReason___block_invoke;
  v11[3] = &unk_2798AAD48;
  v11[4] = self;
  v12 = reasonCopy;
  v10 = reasonCopy;
  [cloudSyncManager syncWithRequest:v9 reason:v10 completion:v11];
}

void __70__HDMHAssessmentsNotificationManager__triggerImmediateSyncWithReason___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2F0];
  v7 = *MEMORY[0x277CCC2F0];
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
      _os_log_impl(&dword_258977000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cloud sync request completed for %{public}@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __70__HDMHAssessmentsNotificationManager__triggerImmediateSyncWithReason___block_invoke_cold_1(a1, v6, v5);
  }
}

- (void)_removeRelatedDeliveredHDMHNotificationsForEvent:(id)event
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  notificationManager = [WeakRetained notificationManager];
  assessmentsNotificationCategories = [MEMORY[0x277D28098] assessmentsNotificationCategories];
  [notificationManager removeDeliveredNotificationsWithIdentifiers:assessmentsNotificationCategories];
}

- (void)_queue_rescheduleNotifications
{
  restorableAlarm = self->_restorableAlarm;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__HDMHAssessmentsNotificationManager__queue_rescheduleNotifications__block_invoke;
  v3[3] = &unk_2798AAD70;
  v3[4] = self;
  [(HDRestorableAlarm *)restorableAlarm checkForDueEventsWithCompletion:v3];
}

void __68__HDMHAssessmentsNotificationManager__queue_rescheduleNotifications__block_invoke(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = a4;
  if ((a3 & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      __60__HDMHSOMNotificationManager__queue_rescheduleNotifications__block_invoke_cold_1(a1, v7);
    }
  }

  [*(a1 + 32) _rescheduleNotifications];
}

- (void)_rescheduleNotifications
{
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_1(v3);
  OUTLINED_FUNCTION_0(&dword_258977000, v5, v6, "[%{public}@] Error scheduling new events: %{public}@", v7, v8, v9, v10);
}

- (id)_eventsToSchedule
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(HKMHSettingsManager *)self->_settingsManager periodicPromptedAssessmentNotificationsEnabled])
  {
    _periodicAssessmentEvent = [(HDMHAssessmentsNotificationManager *)self _periodicAssessmentEvent];
    if (_periodicAssessmentEvent)
    {
      [v3 addObject:_periodicAssessmentEvent];
    }
  }

  return v3;
}

- (void)_queue_removeAllScheduledNotificationsIfNotEnabled
{
  v8 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(HKMHSettingsManager *)self->_settingsManager hasAnyAssessmentNotificationsEnabled])
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v6 = 138543362;
      v7 = objc_opt_class();
      v5 = v7;
      _os_log_impl(&dword_258977000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Aborting maintenance removal of notifications because notifications are enabled", &v6, 0xCu);
    }
  }

  else
  {

    [(HDMHAssessmentsNotificationManager *)self _queue_removeAllScheduledNotifications];
  }
}

- (void)_queue_removeAllScheduledNotifications
{
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_1(v3);
  OUTLINED_FUNCTION_0(&dword_258977000, v5, v6, "[%{public}@] Error removing all scheduled notifications: %{public}@", v7, v8, v9, v10);
}

- (void)_unitTest_notifyDidEvaluateIfMaintenanceWorkIsNeeded:(BOOL)needed
{
  neededCopy = needed;
  v16 = *MEMORY[0x277D85DE8];
  unitTest_didEvaluateIfMaintenanceWorkIsNeeded = [(HDMHAssessmentsNotificationManager *)self unitTest_didEvaluateIfMaintenanceWorkIsNeeded];
  v6 = unitTest_didEvaluateIfMaintenanceWorkIsNeeded;
  if (unitTest_didEvaluateIfMaintenanceWorkIsNeeded)
  {
    (*(unitTest_didEvaluateIfMaintenanceWorkIsNeeded + 16))(unitTest_didEvaluateIfMaintenanceWorkIsNeeded, neededCopy);
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC300];
    if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v10 = 138543874;
      v11 = objc_opt_class();
      v12 = 2048;
      selfCopy = self;
      v14 = 1024;
      v15 = neededCopy;
      v9 = v11;
      _os_log_impl(&dword_258977000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Did evaluate for maintenance work: %d", &v10, 0x1Cu);
    }
  }
}

- (void)profileDidBecomeReady:(id)ready
{
  queue = self->_queue;
  readyCopy = ready;
  dispatch_assert_queue_V2(queue);
  [(HDMHAssessmentsNotificationManager *)self _queue_start];
  database = [readyCopy database];

  LODWORD(readyCopy) = [database isProtectedDataAvailable];
  if (readyCopy)
  {

    [(HDMHAssessmentsNotificationManager *)self _queue_enqueueMaintenanceRemovalIfNeeded];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database2 = [WeakRetained database];
    v9 = self->_queue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__HDMHAssessmentsNotificationManager_profileDidBecomeReady___block_invoke;
    v10[3] = &unk_2798AAB58;
    v10[4] = self;
    [database2 performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:v9 block:v10];
  }
}

- (void)_queue_enqueueMaintenanceRemovalIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_queue_hasEnqueuedMaintenanceWork || ([(HKMHSettingsManager *)self->_settingsManager hasAnyAssessmentNotificationsEnabled]& 1) != 0)
  {

    [(HDMHAssessmentsNotificationManager *)self _unitTest_notifyDidEvaluateIfMaintenanceWorkIsNeeded:0];
  }

  else
  {
    v3 = MEMORY[0x277D10748];
    maintenanceOperationName = [(HDMHAssessmentsNotificationManager *)self maintenanceOperationName];
    queue = self->_queue;
    v10[4] = self;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__HDMHAssessmentsNotificationManager__queue_enqueueMaintenanceRemovalIfNeeded__block_invoke;
    v11[3] = &unk_2798AAB58;
    v11[4] = self;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __78__HDMHAssessmentsNotificationManager__queue_enqueueMaintenanceRemovalIfNeeded__block_invoke_2;
    v10[3] = &unk_2798AAB58;
    v6 = [v3 maintenanceOperationWithName:maintenanceOperationName queue:queue synchronousBlock:v11 canceledBlock:v10];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    daemon = [WeakRetained daemon];
    maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
    [maintenanceWorkCoordinator enqueueMaintenanceOperation:v6];

    self->_queue_hasEnqueuedMaintenanceWork = 1;
    [(HDMHAssessmentsNotificationManager *)self _unitTest_notifyDidEvaluateIfMaintenanceWorkIsNeeded:1];
  }
}

void __78__HDMHAssessmentsNotificationManager__queue_enqueueMaintenanceRemovalIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2)
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
  {
    __70__HDMHSOMNotificationManager__queue_enqueueMaintenanceRemovalIfNeeded__block_invoke_2_cold_1(a1, v3);
  }
}

- (void)_queue_runMaintenanceRemoval
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *v6 = 138543362;
    *&v6[4] = objc_opt_class();
    v5 = *&v6[4];
    _os_log_impl(&dword_258977000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Executing maintenance work: notifications not enabled and supported", v6, 0xCu);
  }

  [(HDMHAssessmentsNotificationManager *)self _queue_removeAllScheduledNotificationsIfNotEnabled:*v6];
  self->_queue_hasEnqueuedMaintenanceWork = 0;
}

- (void)promptedAssessmentsManagerDidUpdatePromptedAssessments:(id)assessments
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v7 = 138543362;
    v8 = objc_opt_class();
    v6 = v8;
    _os_log_impl(&dword_258977000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Prompted assessments manager did update", &v7, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(HDMHAssessmentsNotificationManager *)self _rescheduleNotifications];
}

- (id)_nextBehaviorBasedDateWithError:(id *)error
{
  promptedAssessmentsManager = self->_promptedAssessmentsManager;
  v12 = 0;
  v5 = [(HDMHPromptedAssessmentsManaging *)promptedAssessmentsManager promptedAssessmentsWithError:&v12];
  v6 = v12;
  if (v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      [HDMHAssessmentsNotificationManager _nextBehaviorBasedDateWithError:];
    }

    if (error)
    {
      v7 = v6;
      eligibilityStartDate = 0;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError();
      eligibilityStartDate = 0;
    }
  }

  else
  {
    v9 = [v5 hk_filter:&__block_literal_global_328];
    firstObject = [v9 firstObject];
    eligibilityStartDate = [firstObject eligibilityStartDate];
  }

  return eligibilityStartDate;
}

- (id)_nextRegularlyScheduledDateWithError:(id *)error
{
  assessmentNotificationStateKeyValueDomain = self->_assessmentNotificationStateKeyValueDomain;
  v18 = 0;
  v6 = [(HDKeyValueDomain *)assessmentNotificationStateKeyValueDomain hdmh_updatedPeriodicPromptedAssessmentNotificationFireDateWithError:&v18];
  v7 = v18;
  v8 = v7;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (!v9)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      [HDMHAssessmentsNotificationManager _nextRegularlyScheduledDateWithError:];
    }

    if (error)
    {
      v14 = v8;
      v15 = 0;
      *error = v8;
      goto LABEL_20;
    }

    _HKLogDroppedError();
    goto LABEL_17;
  }

  if (!v6)
  {
LABEL_17:
    v15 = 0;
    goto LABEL_20;
  }

  promptedAssessmentsManager = self->_promptedAssessmentsManager;
  v17 = 0;
  v11 = [(HDMHPromptedAssessmentsManaging *)promptedAssessmentsManager periodicAssessmentPromptCadenceInDaysWithError:&v17];
  v8 = v17;
  if (v8)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      [HDMHAssessmentsNotificationManager _nextRegularlyScheduledDateWithError:];
    }

    if (error)
    {
      v12 = v8;
      *error = v8;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v15 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v6 sinceDate:v11 * 60.0 * 60.0 * 24.0];
LABEL_20:

  return v15;
}

- (id)_periodicAssessmentEvent
{
  v37 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v3 = [(HDMHAssessmentsNotificationManager *)self _nextBehaviorBasedDateWithError:&v28];
  v4 = v28;
  if (v4)
  {
    v5 = v4;
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      [HDMHAssessmentsNotificationManager _periodicAssessmentEvent];
    }

    v6 = 0;
  }

  else
  {
    v27 = 0;
    v7 = [(HDMHAssessmentsNotificationManager *)self _nextRegularlyScheduledDateWithError:&v27];
    v5 = v27;
    if (v5)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
      {
        [HDMHAssessmentsNotificationManager _periodicAssessmentEvent];
      }

      v6 = 0;
    }

    else
    {
      v8 = [v3 laterDate:v7];
      _HKInitializeLogging();
      v9 = MEMORY[0x277CCC2F0];
      v10 = *MEMORY[0x277CCC2F0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = objc_opt_class();
        *buf = 138544130;
        v30 = v12;
        v31 = 2112;
        v32 = v3;
        v33 = 2112;
        v34 = v7;
        v35 = 2112;
        v36 = v8;
        v13 = v12;
        _os_log_impl(&dword_258977000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Behavior Date: %@, Regular Date: %@, Selected Date: %@", buf, 0x2Au);
      }

      if (v8)
      {
        hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
        periodicPromptedAssessmentNotificationTimeOfDay = [(HKMHSettingsManager *)self->_settingsManager periodicPromptedAssessmentNotificationTimeOfDay];
        v16 = [hk_gregorianCalendar dateBySettingHour:objc_msgSend(periodicPromptedAssessmentNotificationTimeOfDay minute:"hour") second:objc_msgSend(periodicPromptedAssessmentNotificationTimeOfDay ofDate:"minute") options:{objc_msgSend(periodicPromptedAssessmentNotificationTimeOfDay, "second"), v8, 0}];
        v17 = [HDMHNotification alloc];
        v18 = [v8 hk_dayIndexWithCalendar:hk_gregorianCalendar];
        v19 = [(HDMHNotification *)v17 initWithFireOnDayIndex:v18 dateComponents:periodicPromptedAssessmentNotificationTimeOfDay category:*MEMORY[0x277D28038]];
        restorableAlarm = self->_restorableAlarm;
        eventIdentifier = [(HDMHNotification *)v19 eventIdentifier];
        v6 = [(HDRestorableAlarm *)restorableAlarm eventWithIdentifier:eventIdentifier dueDate:v16 eventOptions:0];
      }

      else
      {
        _HKInitializeLogging();
        v22 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          v24 = objc_opt_class();
          *buf = 138543362;
          v30 = v24;
          v25 = v24;
          _os_log_impl(&dword_258977000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] No upcoming periodic prompted assessment.", buf, 0xCu);
        }

        v6 = 0;
      }
    }
  }

  return v6;
}

- (void)_requestFromAlarmEvent:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_3();
  v5 = v4;
  v6 = [v0 eventIdentifier];
  *v13 = 138543618;
  *&v13[4] = v4;
  *&v13[12] = 2112;
  *&v13[14] = v6;
  OUTLINED_FUNCTION_0(&dword_258977000, v7, v8, "[%{public}@] Could not create notification request from event identifier: %@", v9, v10, v11, v12, *v13, *&v13[8], *&v13[16]);
}

void __71__HDMHAssessmentsNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *v13 = 138543874;
  *&v13[4] = objc_opt_class();
  *&v13[12] = 2112;
  *&v13[14] = *(a1 + 40);
  *&v13[22] = 2114;
  v14 = a3;
  v6 = *&v13[4];
  OUTLINED_FUNCTION_4(&dword_258977000, v7, v8, "[%{public}@] Error posting user notification for request %@: %{public}@", v9, v10, v11, v12, *v13, *&v13[8], *&v13[16], v14);
}

void __71__HDMHAssessmentsNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_1(v4);
  OUTLINED_FUNCTION_0(&dword_258977000, v6, v7, "[%{public}@] Error saving date fired for periodic prompted assessment notification in key value domain: %{public}@", v8, v9, v10, v11);
}

void __70__HDMHAssessmentsNotificationManager__triggerImmediateSyncWithReason___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *v13 = 138543874;
  *&v13[4] = objc_opt_class();
  *&v13[12] = 2114;
  *&v13[14] = *(a1 + 40);
  *&v13[22] = 2114;
  v14 = a3;
  v6 = *&v13[4];
  OUTLINED_FUNCTION_4(&dword_258977000, v7, v8, "[%{public}@] Cloud sync request for %{public}@ failed: %{public}@", v9, v10, v11, v12, *v13, *&v13[8], *&v13[16], v14);
}

- (void)_nextBehaviorBasedDateWithError:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_1(v3);
  OUTLINED_FUNCTION_0(&dword_258977000, v5, v6, "[%{public}@] Error requesting prompted assessments %{public}@", v7, v8, v9, v10);
}

- (void)_nextRegularlyScheduledDateWithError:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_1(v3);
  OUTLINED_FUNCTION_0(&dword_258977000, v5, v6, "[%{public}@] Error retrieving cadence in days %{public}@", v7, v8, v9, v10);
}

- (void)_nextRegularlyScheduledDateWithError:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_1(v3);
  OUTLINED_FUNCTION_0(&dword_258977000, v5, v6, "[%{public}@] Error retrieving last fired date for last periodic prompted assessment notification from key value domain: %{public}@", v7, v8, v9, v10);
}

- (void)_periodicAssessmentEvent
{
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_1(v3);
  OUTLINED_FUNCTION_0(&dword_258977000, v5, v6, "[%{public}@] Unable to get next regularlyScheduledDate, not scheduling due to error: %{public}@", v7, v8, v9, v10);
}

@end