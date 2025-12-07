@interface HDHRBloodPressureJournalNotificationManager
+ (id)_stringFromNotificationReason:(int64_t)reason;
- (BOOL)_isDueEventExpired:(id)expired fromDate:(id)date;
- (BOOL)_isEventOnHold:(id)hold;
- (BOOL)_isJournal:(id)journal inNoticationPeriodFor:(id)for calendar:(id)calendar;
- (BOOL)_notificationSchedulingIsEnabled;
- (BOOL)_notificationsEnabled;
- (BOOL)_scheduleNotificationsWithStartDate:(id)date error:(id *)error;
- (BOOL)_scheduleNotificationsWithStartDate:(id)date schedulingUUID:(id)d error:(id *)error;
- (BOOL)_scheduleRestorableAlarmEventsWith:(id)with forJournal:(id)journal calendar:(id)calendar schedulingUUID:(id)d error:(id *)error;
- (BOOL)scheduleNotificationsWithReason:(int64_t)reason error:(id *)error;
- (BOOL)snoozeBloodPressureJournalNotificationWithIdentifier:(id)identifier journalType:(int64_t)type userInfo:(id)info onDate:(id)date error:(id *)error;
- (HDHRBloodPressureJournalNotificationManager)initWithProfile:(id)profile;
- (HDHRBloodPressureJournalNotificationManager)initWithProfile:(id)profile operation:(id)operation;
- (id)_alarm:(id)_alarm dueEventsToHandleFrom:(id)from date:(id)date;
- (id)_alarmTimeForDate:(id)date withScheduleTimeInterval:(id)interval calendar:(id)calendar;
- (id)_bloodPressureSampleFrom:(id)from error:(id *)error;
- (id)_nextDayFor:(id)for calendar:(id)calendar;
- (id)_notificationInfoFor:(id)for startDate:(id)date calendar:(id)calendar schedulingUUID:(id)d error:(id *)error;
- (id)_notificationInfoForLearnHypertensionRiskJournal:(id)journal startDate:(id)date calendar:(id)calendar schedulingUUID:(id)d error:(id *)error;
- (id)_notificationInfoForMonitorHypertensionJournal:(id)journal startDate:(id)date calendar:(id)calendar schedulingUUID:(id)d error:(id *)error;
- (unint64_t)removeDeliveredNotificationsForSamples:(id)samples journal:(id)journal;
- (void)_alarm:(id)_alarm confirmDeliveryByRemovingEvent:(id)event;
- (void)_alarm:(id)_alarm confirmDeliveryByRemovingEvents:(id)events;
- (void)_queue_alarm:(id)_queue_alarm didReceiveDueEvents:(id)events;
- (void)_queue_alarm:(id)_queue_alarm didReceiveDueEvents:(id)events date:(id)date handledEventsHandler:(id)handler;
- (void)_queue_alarm:(id)_queue_alarm didReceiveExpiredEvents:(id)events;
- (void)_removeAllExpiredEvents;
- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion;
@end

@implementation HDHRBloodPressureJournalNotificationManager

- (HDHRBloodPressureJournalNotificationManager)initWithProfile:(id)profile
{
  v4 = MEMORY[0x277D10800];
  profileCopy = profile;
  v6 = [[v4 alloc] initWithProfile:profileCopy debugIdentifier:@"HDHRBloodPressureJournalNotificationManager" delegate:self];
  v7 = [(HDHRBloodPressureJournalNotificationManager *)self initWithProfile:profileCopy operation:v6];

  return v7;
}

- (HDHRBloodPressureJournalNotificationManager)initWithProfile:(id)profile operation:(id)operation
{
  profileCopy = profile;
  operationCopy = operation;
  v44.receiver = self;
  v44.super_class = HDHRBloodPressureJournalNotificationManager;
  v8 = [(HDHRBloodPressureJournalNotificationManager *)&v44 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, profileCopy);
    objc_storeStrong(&v9->_operation, operation);
    v10 = HKCreateSerialDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v10;

    v12 = objc_alloc(MEMORY[0x277D10838]);
    healthDaemon = [profileCopy healthDaemon];
    primaryProfile = [healthDaemon primaryProfile];
    v15 = [v12 initWithProfile:primaryProfile clientIdentifier:@"BloodPressureJournalNotificationAlarmIdentifier" eventHandlerQueue:v9->_queue];
    restorableAlarm = v9->_restorableAlarm;
    v9->_restorableAlarm = v15;

    v17 = objc_alloc(MEMORY[0x277D10838]);
    healthDaemon2 = [profileCopy healthDaemon];
    primaryProfile2 = [healthDaemon2 primaryProfile];
    v20 = [v17 initWithProfile:primaryProfile2 clientIdentifier:@"BloodPressureJournalNotificationSnoozeAlarmIdentifier" eventHandlerQueue:v9->_queue];
    snoozeRestorableAlarm = v9->_snoozeRestorableAlarm;
    v9->_snoozeRestorableAlarm = v20;

    objc_initWeak(&location, v9);
    v22 = v9->_restorableAlarm;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __73__HDHRBloodPressureJournalNotificationManager_initWithProfile_operation___block_invoke;
    v41[3] = &unk_278660D20;
    objc_copyWeak(&v42, &location);
    [(HDRestorableAlarm *)v22 beginReceivingEventsWithHandler:v41];
    v23 = v9->_snoozeRestorableAlarm;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __73__HDHRBloodPressureJournalNotificationManager_initWithProfile_operation___block_invoke_2;
    v39[3] = &unk_278660D20;
    objc_copyWeak(&v40, &location);
    [(HDRestorableAlarm *)v23 beginReceivingEventsWithHandler:v39];
    v24 = objc_alloc(MEMORY[0x277D10838]);
    healthDaemon3 = [profileCopy healthDaemon];
    primaryProfile3 = [healthDaemon3 primaryProfile];
    v27 = [v24 initWithProfile:primaryProfile3 clientIdentifier:@"BloodPressureJournalNotificationExpirationAlarmIdentifier" eventHandlerQueue:v9->_queue];
    expirationRestorableAlarm = v9->_expirationRestorableAlarm;
    v9->_expirationRestorableAlarm = v27;

    v29 = v9->_expirationRestorableAlarm;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __73__HDHRBloodPressureJournalNotificationManager_initWithProfile_operation___block_invoke_3;
    v37[3] = &unk_278660D20;
    objc_copyWeak(&v38, &location);
    [(HDRestorableAlarm *)v29 beginReceivingEventsWithHandler:v37];
    v30 = objc_alloc(MEMORY[0x277CCCFE8]);
    v31 = HKLogBloodPressureJournal();
    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    v33 = [v30 initWithLoggingCategory:v31 healthDataSource:WeakRetained];

    v34 = [objc_alloc(MEMORY[0x277D12F88]) initWithEventSubmissionManager:v33];
    notificationAnalyticUtilities = v9->_notificationAnalyticUtilities;
    v9->_notificationAnalyticUtilities = v34;

    objc_destroyWeak(&v38);
    objc_destroyWeak(&v40);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __73__HDHRBloodPressureJournalNotificationManager_initWithProfile_operation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_alarm:v6 didReceiveDueEvents:v5];
}

void __73__HDHRBloodPressureJournalNotificationManager_initWithProfile_operation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_alarm:v6 didReceiveDueEvents:v5];
}

void __73__HDHRBloodPressureJournalNotificationManager_initWithProfile_operation___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_alarm:v6 didReceiveExpiredEvents:v5];
}

+ (id)_stringFromNotificationReason:(int64_t)reason
{
  if (reason > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_278661110[reason];
  }
}

- (BOOL)scheduleNotificationsWithReason:(int64_t)reason error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v7 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() _stringFromNotificationReason:reason];
    v11 = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] [scheduleNotificationsWithReason called with reason: %{public}@", &v11, 0x16u);
  }

  if (reason == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  return [(HDProtectedDataOperation *)self->_operation requestWorkWithPriority:v9 error:error];
}

- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  if (assertion)
  {
    v7 = MEMORY[0x277CCAD78];
    completionCopy = completion;
    completionCopy2 = [v7 UUID];
    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v11 setDateFormat:@"yyyy-MM-dd HH:mm"];
    _HKInitializeLogging();
    v12 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [completionCopy2 UUIDString];
      v14 = [v11 stringFromDate:v10];
      *buf = 138543874;
      selfCopy2 = self;
      v19 = 2114;
      v20 = uUIDString;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_229486000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] performOperation started - notificationStartDate: %{public}@", buf, 0x20u);
    }

    v16 = 0;
    [(HDHRBloodPressureJournalNotificationManager *)self _scheduleNotificationsWithStartDate:v10 schedulingUUID:completionCopy2 error:&v16];
    completionCopy[2](completionCopy);
  }

  else
  {
    completionCopy2 = completion;
    _HKInitializeLogging();
    v15 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_229486000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@ Unable to aquire database assertion]", buf, 0xCu);
    }

    completionCopy2[2](completionCopy2);
  }
}

- (BOOL)_scheduleNotificationsWithStartDate:(id)date error:(id *)error
{
  v6 = MEMORY[0x277CCAD78];
  dateCopy = date;
  uUID = [v6 UUID];
  LOBYTE(error) = [(HDHRBloodPressureJournalNotificationManager *)self _scheduleNotificationsWithStartDate:dateCopy schedulingUUID:uUID error:error];

  return error;
}

- (BOOL)_scheduleNotificationsWithStartDate:(id)date schedulingUUID:(id)d error:(id *)error
{
  v91 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v11 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v11 setDateFormat:@"yyyy-MM-dd HH:mm"];
  _HKInitializeLogging();
  v12 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v14 = [v11 stringFromDate:dateCopy];
    *buf = 138543874;
    selfCopy11 = self;
    v81 = 2114;
    v82 = uUIDString;
    v83 = 2114;
    v84 = v14;
    _os_log_impl(&dword_229486000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: started - date: %{public}@", buf, 0x20u);
  }

  if ([(HDHRBloodPressureJournalNotificationManager *)self _notificationSchedulingIsEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    heartHealthProfileExtension = [WeakRetained heartHealthProfileExtension];
    bloodPressureJournalManager = [heartHealthProfileExtension bloodPressureJournalManager];

    v78 = 0;
    v18 = [bloodPressureJournalManager latestActiveBloodPressureJournalWithError:&v78];
    v19 = v78;
    if (v19)
    {
      _HKInitializeLogging();
      v20 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [dCopy UUIDString];
        v52 = v74 = error;
        *buf = 138543874;
        selfCopy11 = self;
        v81 = 2114;
        v82 = v52;
        v83 = 2114;
        v84 = v19;
        _os_log_error_impl(&dword_229486000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: Failed to fetch latest active journal with error: %{public}@", buf, 0x20u);

        error = v74;
      }

      if (error)
      {
        v21 = v19;
        errorCopy = error;
        LOBYTE(error) = 0;
        *errorCopy = v19;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    else
    {
      errorCopy2 = error;
      _HKInitializeLogging();
      error = HKLogBloodPressureJournal();
      v26 = os_log_type_enabled(error, OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        if (v26)
        {
          uUIDString2 = [dCopy UUIDString];
          uUID = [v18 UUID];
          uUIDString3 = [uUID UUIDString];
          journalType = [v18 journalType];
          journalState = [v18 journalState];
          [v18 startDate];
          v28 = v70 = hk_gregorianCalendar;
          v29 = [v11 stringFromDate:v28];
          *buf = 138544642;
          selfCopy11 = self;
          v81 = 2114;
          v82 = uUIDString2;
          v83 = 2114;
          v84 = uUIDString3;
          v85 = 2048;
          v86 = journalType;
          v87 = 2048;
          v88 = journalState;
          v89 = 2114;
          v90 = v29;
          v30 = v29;
          _os_log_impl(&dword_229486000, error, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: Found active journal: UUID=%{public}@, type=%ld, state=%ld, startDate=%{public}@", buf, 0x3Eu);

          hk_gregorianCalendar = v70;
          v19 = 0;
        }

        if ([(HDHRBloodPressureJournalNotificationManager *)self _isJournal:v18 inNoticationPeriodFor:dateCopy calendar:hk_gregorianCalendar])
        {
          v76 = 0;
          v31 = [(HDHRBloodPressureJournalNotificationManager *)self _notificationInfoFor:v18 startDate:dateCopy calendar:hk_gregorianCalendar schedulingUUID:dCopy error:&v76];
          v71 = v76;
          if (v71)
          {
            v68 = v31;
            _HKInitializeLogging();
            v32 = HKLogBloodPressureJournal();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              [dCopy UUIDString];
              v56 = v55 = v18;
              *buf = 138543874;
              selfCopy11 = self;
              v81 = 2114;
              v82 = v56;
              v83 = 2114;
              v84 = v71;
              _os_log_error_impl(&dword_229486000, v32, OS_LOG_TYPE_ERROR, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: Failed to compute notification info error: %{public}@", buf, 0x20u);

              v18 = v55;
            }

            v33 = v71;
            if (errorCopy2)
            {
              v34 = v71;
              LOBYTE(error) = 0;
              *errorCopy2 = v71;
            }

            else
            {
              _HKLogDroppedError();
              LOBYTE(error) = 0;
            }

            v31 = v68;
          }

          else
          {
            _HKInitializeLogging();
            error = HKLogBloodPressureJournal();
            v45 = os_log_type_enabled(error, OS_LOG_TYPE_DEFAULT);
            if (v31)
            {
              if (v45)
              {
                [dCopy UUIDString];
                v46 = v64 = v18;
                *buf = 138543874;
                selfCopy11 = self;
                v81 = 2114;
                v82 = v46;
                v83 = 2114;
                v84 = v31;
                _os_log_impl(&dword_229486000, error, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: Computed notification info successfully: %{public}@", buf, 0x20u);

                v18 = v64;
              }

              v75 = 0;
              LOBYTE(error) = [(HDHRBloodPressureJournalNotificationManager *)self _scheduleRestorableAlarmEventsWith:v31 forJournal:v18 calendar:hk_gregorianCalendar schedulingUUID:dCopy error:&v75];
              v47 = v75;
              if ((error & 1) == 0)
              {
                v66 = v47;
                v69 = v31;
                _HKInitializeLogging();
                v48 = HKLogBloodPressureJournal();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  [dCopy UUIDString];
                  v60 = v65 = v18;
                  *buf = 138543874;
                  selfCopy11 = self;
                  v81 = 2114;
                  v82 = v60;
                  v83 = 2114;
                  v84 = v66;
                  _os_log_error_impl(&dword_229486000, v48, OS_LOG_TYPE_ERROR, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: Failed to schedule restorable alarms with error: %{public}@", buf, 0x20u);

                  v18 = v65;
                }

                v49 = v66;
                v50 = v49;
                if (v49)
                {
                  if (errorCopy2)
                  {
                    v51 = v49;
                    *errorCopy2 = v50;
                  }

                  else
                  {
                    _HKLogDroppedError();
                  }
                }

                v47 = v66;
                v31 = v69;
              }
            }

            else
            {
              if (v45)
              {
                [dCopy UUIDString];
                v54 = v53 = v18;
                *buf = 138543618;
                selfCopy11 = self;
                v81 = 2114;
                v82 = v54;
                _os_log_impl(&dword_229486000, error, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: Active Journal is complete (notification info is nil) - returning early", buf, 0x16u);

                v18 = v53;
                v31 = 0;
              }

              LOBYTE(error) = 1;
            }

            v33 = 0;
          }
        }

        else
        {
          _HKInitializeLogging();
          v42 = HKLogBloodPressureJournal();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            [dCopy UUIDString];
            v44 = v43 = v18;
            *buf = 138543618;
            selfCopy11 = self;
            v81 = 2114;
            v82 = v44;
            _os_log_impl(&dword_229486000, v42, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: Active Journal Notification Period is complete - returning early", buf, 0x16u);

            v18 = v43;
          }

          LOBYTE(error) = 1;
        }
      }

      else
      {
        if (v26)
        {
          uUIDString4 = [dCopy UUIDString];
          *buf = 138543618;
          selfCopy11 = self;
          v81 = 2114;
          v82 = uUIDString4;
          _os_log_impl(&dword_229486000, error, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: No active journal found to schedule notifications - removing alarms", buf, 0x16u);
        }

        restorableAlarm = self->_restorableAlarm;
        v77 = 0;
        LOBYTE(error) = [(HDRestorableAlarm *)restorableAlarm removeAllEventsWithError:&v77];
        v37 = v77;
        if ((error & 1) == 0)
        {
          v72 = v37;
          _HKInitializeLogging();
          v38 = HKLogBloodPressureJournal();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            uUIDString5 = [dCopy UUIDString];
            *buf = 138543874;
            selfCopy11 = self;
            v81 = 2114;
            v82 = uUIDString5;
            v58 = uUIDString5;
            v83 = 2114;
            v84 = v72;
            _os_log_error_impl(&dword_229486000, v38, OS_LOG_TYPE_ERROR, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: Failed to remove existing alarm events with error: %{public}@", buf, 0x20u);
          }

          v39 = v72;
          v40 = v39;
          if (v39)
          {
            if (errorCopy2)
            {
              v41 = v39;
              *errorCopy2 = v40;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v37 = v72;
        }
      }
    }

LABEL_56:
    goto LABEL_57;
  }

  _HKInitializeLogging();
  v23 = HKLogBloodPressureJournal();
  LOBYTE(error) = 1;
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);

  if (v24)
  {
    bloodPressureJournalManager = HKLogBloodPressureJournal();
    if (os_log_type_enabled(bloodPressureJournalManager, OS_LOG_TYPE_INFO))
    {
      uUIDString6 = [dCopy UUIDString];
      *buf = 138543618;
      selfCopy11 = self;
      v81 = 2114;
      v82 = uUIDString6;
      _os_log_impl(&dword_229486000, bloodPressureJournalManager, OS_LOG_TYPE_INFO, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: Notification scheduling is not enabled - returning early", buf, 0x16u);
    }

    goto LABEL_56;
  }

LABEL_57:

  return error;
}

- (BOOL)_scheduleRestorableAlarmEventsWith:(id)with forJournal:(id)journal calendar:(id)calendar schedulingUUID:(id)d error:(id *)error
{
  v84 = *MEMORY[0x277D85DE8];
  withCopy = with;
  journalCopy = journal;
  calendarCopy = calendar;
  dCopy = d;
  measurementsRequiredToCompleteJournal = [journalCopy measurementsRequiredToCompleteJournal];
  journalType = [journalCopy journalType];
  array = [MEMORY[0x277CBEB18] array];
  wakeupAlarmStartDate = [withCopy wakeupAlarmStartDate];
  wakeupTimeInterval = [journalCopy wakeupTimeInterval];
  v19 = [(HDHRBloodPressureJournalNotificationManager *)self _alarmTimeForDate:wakeupAlarmStartDate withScheduleTimeInterval:wakeupTimeInterval calendar:calendarCopy];

  v62 = withCopy;
  wakeupAlarmStartDate2 = [withCopy wakeupAlarmStartDate];
  LODWORD(wakeupTimeInterval) = [v19 hk_isBeforeDate:wakeupAlarmStartDate2];

  if (wakeupTimeInterval)
  {
    v21 = [(HDHRBloodPressureJournalNotificationManager *)self _nextDayFor:v19 calendar:calendarCopy];

    v19 = v21;
  }

  v66 = measurementsRequiredToCompleteJournal;
  v67 = array;
  selfCopy = self;
  v69 = calendarCopy;
  wakeupAlarmCount = [withCopy wakeupAlarmCount];
  v23 = 0x27865E000uLL;
  v24 = 0x27865E000uLL;
  v65 = journalCopy;
  v59 = wakeupAlarmCount;
  if (wakeupAlarmCount)
  {
    v25 = -wakeupAlarmCount;
    do
    {
      contexta = objc_autoreleasePoolPush();
      v26 = [objc_alloc(*(v23 + 2864)) initWithMeasurementIndex:v66 + v25 + 1 measurementCount:? measurementWindowType:?];
      v27 = objc_alloc(*(v24 + 2840));
      [journalCopy UUID];
      v29 = v28 = v23;
      v30 = [v27 initWithJournalIdentifier:v29 notificationDayIndex:objc_msgSend(v19 journalWindowType:{"hk_dayIndexWithCalendar:", v69), 0}];

      restorableAlarm = selfCopy->_restorableAlarm;
      v32 = [v19 copy];
      [(HDRestorableAlarm *)restorableAlarm bloodPressureJournalAlarmEventWithNotificationIdentifier:v30 journalType:journalType dueDate:v32 isFollowUp:0 measurementInfo:v26];
      v34 = v33 = journalType;

      journalCopy = v65;
      [v67 addObject:v34];
      v35 = [(HDHRBloodPressureJournalNotificationManager *)selfCopy _nextDayFor:v19 calendar:v69];

      journalType = v33;
      v23 = v28;
      v24 = 0x27865E000;

      objc_autoreleasePoolPop(contexta);
      v19 = v35;
      v36 = __CFADD__(v25++, 1);
    }

    while (!v36);
  }

  else
  {
    v35 = v19;
  }

  bedtimeAlarmStartDate = [v62 bedtimeAlarmStartDate];
  bedtimeTimeInterval = [journalCopy bedtimeTimeInterval];
  v39 = [(HDHRBloodPressureJournalNotificationManager *)selfCopy _alarmTimeForDate:bedtimeAlarmStartDate withScheduleTimeInterval:bedtimeTimeInterval calendar:v69];

  bedtimeAlarmStartDate2 = [v62 bedtimeAlarmStartDate];
  LOBYTE(bedtimeTimeInterval) = [v39 hk_isBeforeDate:bedtimeAlarmStartDate2];

  if (bedtimeTimeInterval)
  {
    v41 = [(HDHRBloodPressureJournalNotificationManager *)selfCopy _nextDayFor:v39 calendar:v69];

    v39 = v41;
  }

  bedtimeAlarmCount = [v62 bedtimeAlarmCount];
  v58 = bedtimeAlarmCount;
  if (bedtimeAlarmCount)
  {
    v43 = -bedtimeAlarmCount;
    context = journalType;
    do
    {
      v44 = objc_autoreleasePoolPush();
      v45 = [HDHRBloodPressureJournalNotificationMeasurementInfo initWithMeasurementIndex:"initWithMeasurementIndex:measurementCount:measurementWindowType:" measurementCount:v66 + v43 + 1 measurementWindowType:?];
      v46 = [HDHRBloodPressureJournalNotificationIdentifier alloc];
      uUID = [journalCopy UUID];
      v48 = -[HDHRBloodPressureJournalNotificationIdentifier initWithJournalIdentifier:notificationDayIndex:journalWindowType:](v46, "initWithJournalIdentifier:notificationDayIndex:journalWindowType:", uUID, [v39 hk_dayIndexWithCalendar:v69], 1);

      v49 = selfCopy->_restorableAlarm;
      v50 = [v39 copy];
      v51 = [(HDRestorableAlarm *)v49 bloodPressureJournalAlarmEventWithNotificationIdentifier:v48 journalType:context dueDate:v50 isFollowUp:0 measurementInfo:v45];

      journalCopy = v65;
      [v67 addObject:v51];
      v52 = [(HDHRBloodPressureJournalNotificationManager *)selfCopy _nextDayFor:v39 calendar:v69];

      objc_autoreleasePoolPop(v44);
      v39 = v52;
      v36 = __CFADD__(v43++, 1);
    }

    while (!v36);
  }

  else
  {
    v52 = v39;
  }

  _HKInitializeLogging();
  v53 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138544898;
    v71 = selfCopy;
    v72 = 2114;
    v73 = uUIDString;
    v74 = 2048;
    v75 = [v67 count];
    v76 = 2048;
    v77 = v59;
    v78 = 2048;
    v79 = v66 - v59 + 1;
    v80 = 2048;
    v81 = v58;
    v82 = 2048;
    v83 = v66 - v58 + 1;
    _os_log_impl(&dword_229486000, v53, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _scheduleRestorableAlarmEventsWith events count:(%lu) [WAKEUP: alarm count:(%lu) starting from index:(%lu)] [BEDTIME: alarm count:(%lu) starting from index:(%lu)]", buf, 0x48u);
  }

  v55 = [(HDRestorableAlarm *)selfCopy->_restorableAlarm replaceAllScheduledEventsWithEvents:v67 error:error];
  v56 = v55 != 0;

  return v56;
}

- (id)_notificationInfoForMonitorHypertensionJournal:(id)journal startDate:(id)date calendar:(id)calendar schedulingUUID:(id)d error:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
  journalCopy = journal;
  dateCopy = date;
  calendarCopy = calendar;
  dCopy = d;
  v48 = [calendarCopy startOfDayForDate:dateCopy];
  v49 = [HDHRBloodPressureJournalNotificationManager _bloodPressureSampleFrom:"_bloodPressureSampleFrom:error:" error:?];
  v16 = 0;
  v17 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v17 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  _HKInitializeLogging();
  v18 = HKLogBloodPressureJournal();
  v19 = v18;
  if (v16)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      uUIDString = [dCopy UUIDString];
      *buf = 138543874;
      selfCopy2 = self;
      v52 = 2114;
      v53 = uUIDString;
      v54 = 2114;
      v55 = v16;
      _os_log_error_impl(&dword_229486000, v19, OS_LOG_TYPE_ERROR, "[%{public}@] [UUID: %{public}@] _notificationInfoForMonitorHypertensionJournal: Failed to fetch blood pressure samples with error: %{public}@", buf, 0x20u);
    }

    if (error)
    {
      v20 = v16;
      v21 = 0;
      *error = v16;
    }

    else
    {
      _HKLogDroppedError();
      v21 = 0;
    }
  }

  else
  {
    v47 = dCopy;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString2 = [dCopy UUIDString];
      v23 = [v49 count];
      v24 = [v17 stringFromDate:v48];
      *buf = 138544130;
      selfCopy2 = self;
      v52 = 2114;
      v53 = uUIDString2;
      v54 = 2048;
      v55 = v23;
      dCopy = v47;
      v56 = 2112;
      v57 = v24;
      _os_log_impl(&dword_229486000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _notificationInfoForMonitorHypertensionJournal: Found %ld blood pressure samples from:%@", buf, 0x2Au);
    }

    timeIntervals = [journalCopy timeIntervals];
    firstObject = [timeIntervals firstObject];
    v27 = [(HDHRBloodPressureJournalNotificationManager *)self _alarmTimeForDate:dateCopy withScheduleTimeInterval:firstObject calendar:calendarCopy];

    v46 = v27;
    if (v49 && [v49 count] || (objc_msgSend(dateCopy, "hk_isAfterDate:", v27) & 1) != 0)
    {
      v28 = [(HDHRBloodPressureJournalNotificationManager *)self _nextDayFor:v48 calendar:calendarCopy];
    }

    else
    {
      v28 = dateCopy;
    }

    v29 = v28;
    v30 = [journalCopy notificationEndDateForIncompleteJournal:calendarCopy];
    if (!v30)
    {
      _HKInitializeLogging();
      v31 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [HDHRBloodPressureJournalNotificationManager _notificationInfoForMonitorHypertensionJournal:dCopy startDate:v31 calendar:? schedulingUUID:? error:?];
      }

      v30 = v29;
    }

    v32 = [calendarCopy startOfDayForDate:v29];
    [v30 timeIntervalSinceDate:v32];
    v34 = (v33 / 86400.0);

    _HKInitializeLogging();
    v35 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      [v47 UUIDString];
      v44 = calendarCopy;
      selfCopy3 = self;
      v38 = v37 = v17;
      [v37 stringFromDate:v29];
      v43 = v45 = dateCopy;
      [v37 stringFromDate:v30];
      v40 = v39 = v34;
      *buf = 138544386;
      selfCopy2 = selfCopy3;
      calendarCopy = v44;
      v52 = 2114;
      v53 = v38;
      v54 = 2114;
      v55 = v43;
      v56 = 2114;
      v57 = v40;
      v58 = 2048;
      v59 = v39;
      _os_log_impl(&dword_229486000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _notificationInfoForMonitorHypertensionJournal: Notification start date: %{public}@, end date: %{public}@ Calculated %ld remaining notifications", buf, 0x34u);

      v17 = v37;
      v34 = v39;

      dateCopy = v45;
    }

    v21 = [[HDHRBloodPressureJournalNotificationInfo alloc] initWithWakeupAlarmStartDate:v29 wakeupAlarmCount:v34 bedtimeAlarmStartDate:0 bedtimeAlarmCount:0];
    dCopy = v47;
  }

  return v21;
}

- (id)_notificationInfoForLearnHypertensionRiskJournal:(id)journal startDate:(id)date calendar:(id)calendar schedulingUUID:(id)d error:(id *)error
{
  v73 = *MEMORY[0x277D85DE8];
  journalCopy = journal;
  dateCopy = date;
  calendarCopy = calendar;
  dCopy = d;
  v16 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v16 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v16 setTimeZone:systemTimeZone];

  _HKInitializeLogging();
  v18 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138543618;
    selfCopy5 = self;
    v65 = 2114;
    v66 = uUIDString;
    _os_log_impl(&dword_229486000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _notificationInfoForLearnHypertensionRiskJournal: Computing notification info for LearnHypertensionRisk journal", buf, 0x16u);
  }

  startDate = [journalCopy startDate];
  v21 = [calendarCopy startOfDayForDate:startDate];

  v62 = 0;
  v61 = [(HDHRBloodPressureJournalNotificationManager *)self _bloodPressureSampleFrom:v21 error:&v62];
  v22 = v62;
  _HKInitializeLogging();
  v23 = HKLogBloodPressureJournal();
  v24 = v23;
  if (v22)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [dCopy UUIDString];
      v55 = v60 = v21;
      *buf = 138543874;
      selfCopy5 = self;
      v65 = 2114;
      v66 = v55;
      v67 = 2114;
      v68 = v22;
      _os_log_error_impl(&dword_229486000, v24, OS_LOG_TYPE_ERROR, "[%{public}@] [UUID: %{public}@] _notificationInfoForLearnHypertensionRiskJournal: Failed to fetch blood pressure samples with error: %{public}@", buf, 0x20u);

      v21 = v60;
    }

    if (error)
    {
      v25 = v22;
      v26 = 0;
      *error = v22;
    }

    else
    {
      _HKLogDroppedError();
      v26 = 0;
    }
  }

  else
  {
    v59 = v21;
    v58 = v16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString2 = [dCopy UUIDString];
      v28 = [v61 count];
      [v16 stringFromDate:v59];
      v29 = journalCopy;
      v31 = v30 = dateCopy;
      *buf = 138544130;
      selfCopy5 = self;
      v65 = 2114;
      v66 = uUIDString2;
      v67 = 2048;
      v68 = v28;
      v69 = 2112;
      v70 = v31;
      _os_log_impl(&dword_229486000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _notificationInfoForLearnHypertensionRiskJournal: Found %ld blood pressure samples since journal start of day:%@", buf, 0x2Au);

      dateCopy = v30;
      journalCopy = v29;
      v16 = v58;
    }

    v32 = [MEMORY[0x277D12FE8] summaryFromSamples:v61 journal:journalCopy];
    isComplete = [v32 isComplete];
    _HKInitializeLogging();
    v34 = HKLogBloodPressureJournal();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (isComplete)
    {
      if (v35)
      {
        uUIDString3 = [dCopy UUIDString];
        *buf = 138543618;
        selfCopy5 = self;
        v65 = 2114;
        v66 = uUIDString3;
        _os_log_impl(&dword_229486000, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _notificationInfoForLearnHypertensionRiskJournal: Journal is complete - no notifications needed", buf, 0x16u);
      }

      v26 = 0;
    }

    else
    {
      v57 = journalCopy;
      if (v35)
      {
        uUIDString4 = [dCopy UUIDString];
        v38 = dateCopy;
        wakeUpCount = [v32 wakeUpCount];
        bedTimeCount = [v32 bedTimeCount];
        measurementsRequiredToCompleteJournal = [v57 measurementsRequiredToCompleteJournal];
        *buf = 138544386;
        selfCopy5 = self;
        v65 = 2114;
        v66 = uUIDString4;
        v67 = 2048;
        v68 = wakeUpCount;
        dateCopy = v38;
        v69 = 2048;
        v70 = bedTimeCount;
        v71 = 2048;
        v72 = measurementsRequiredToCompleteJournal;
        _os_log_impl(&dword_229486000, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _notificationInfoForLearnHypertensionRiskJournal: Journal not complete - wakeup count: %ld, bedtime count: %ld, required: %ld", buf, 0x34u);
      }

      v42 = [dateCopy hk_dayIndexWithCalendar:calendarCopy];
      v43 = [v32 hasWakeupSamplesForDayIndex:v42];
      v56 = dCopy;
      v44 = calendarCopy;
      v45 = dateCopy;
      v46 = [v32 hasBedtimeSamplesForDayIndex:v42];
      v47 = [v44 startOfDayForDate:v45];
      v34 = [(HDHRBloodPressureJournalNotificationManager *)self _nextDayFor:v47 calendar:v44];

      if (v43)
      {
        v48 = v34;
      }

      else
      {
        v48 = v45;
      }

      v49 = v48;
      journalCopy = v57;
      measurementsRequiredToCompleteJournal2 = [v57 measurementsRequiredToCompleteJournal];
      v51 = measurementsRequiredToCompleteJournal2 - [v32 wakeUpCount];
      if (v46)
      {
        v52 = v34;
      }

      else
      {
        v52 = v45;
      }

      v53 = v52;
      v26 = -[HDHRBloodPressureJournalNotificationInfo initWithWakeupAlarmStartDate:wakeupAlarmCount:bedtimeAlarmStartDate:bedtimeAlarmCount:]([HDHRBloodPressureJournalNotificationInfo alloc], "initWithWakeupAlarmStartDate:wakeupAlarmCount:bedtimeAlarmStartDate:bedtimeAlarmCount:", v49, v51, v53, [v57 measurementsRequiredToCompleteJournal] - objc_msgSend(v32, "bedTimeCount"));

      dateCopy = v45;
      calendarCopy = v44;
      dCopy = v56;

      v16 = v58;
    }

    v21 = v59;
  }

  return v26;
}

- (id)_notificationInfoFor:(id)for startDate:(id)date calendar:(id)calendar schedulingUUID:(id)d error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  forCopy = for;
  dateCopy = date;
  calendarCopy = calendar;
  dCopy = d;
  v16 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v16 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v16 setTimeZone:systemTimeZone];

  _HKInitializeLogging();
  v18 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    journalType = [forCopy journalType];
    [v16 stringFromDate:dateCopy];
    v21 = v24 = error;
    *buf = 138544130;
    selfCopy = self;
    v27 = 2114;
    v28 = uUIDString;
    v29 = 2048;
    v30 = journalType;
    v31 = 2114;
    v32 = v21;
    _os_log_impl(&dword_229486000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _notificationInfoFor: Computing notification info for journal type: %ld, startDate: %{public}@", buf, 0x2Au);

    error = v24;
  }

  if ([forCopy journalType] == 1)
  {
    [(HDHRBloodPressureJournalNotificationManager *)self _notificationInfoForMonitorHypertensionJournal:forCopy startDate:dateCopy calendar:calendarCopy schedulingUUID:dCopy error:error];
  }

  else
  {
    [(HDHRBloodPressureJournalNotificationManager *)self _notificationInfoForLearnHypertensionRiskJournal:forCopy startDate:dateCopy calendar:calendarCopy schedulingUUID:dCopy error:error];
  }
  v22 = ;

  return v22;
}

- (id)_alarmTimeForDate:(id)date withScheduleTimeInterval:(id)interval calendar:(id)calendar
{
  calendarCopy = calendar;
  dateCopy = date;
  scheduledTime = [interval scheduledTime];
  v10 = [calendarCopy components:28 fromDate:dateCopy];

  [v10 setHour:{objc_msgSend(scheduledTime, "hour")}];
  [v10 setMinute:{objc_msgSend(scheduledTime, "minute")}];
  v11 = [calendarCopy dateFromComponents:v10];

  return v11;
}

- (id)_nextDayFor:(id)for calendar:(id)calendar
{
  v5 = MEMORY[0x277CBEAB8];
  calendarCopy = calendar;
  forCopy = for;
  v8 = objc_alloc_init(v5);
  [v8 setDay:1];
  v9 = [calendarCopy dateByAddingComponents:v8 toDate:forCopy options:2];

  return v9;
}

- (BOOL)_isJournal:(id)journal inNoticationPeriodFor:(id)for calendar:(id)calendar
{
  v33 = *MEMORY[0x277D85DE8];
  journalCopy = journal;
  forCopy = for;
  calendarCopy = calendar;
  v11 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v11 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v11 setTimeZone:systemTimeZone];

  _HKInitializeLogging();
  v13 = HKLogBloodPressureJournal();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

  if (v14)
  {
    v15 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      journalState = [journalCopy journalState];
      v26 = [v11 stringFromDate:forCopy];
      v27 = 138543874;
      selfCopy3 = self;
      v29 = 2048;
      v30 = journalState;
      v31 = 2114;
      v32 = v26;
      _os_log_debug_impl(&dword_229486000, v15, OS_LOG_TYPE_DEBUG, "[%{public}@] _isJournal:inNoticationPeriodFor: Checking notification period for journal state: %ld, date: %{public}@", &v27, 0x20u);
    }
  }

  if ([journalCopy journalState] != 1)
  {
    v16 = [journalCopy notificationEndDateForIncompleteJournal:calendarCopy];
    if (v16)
    {
      v17 = [forCopy hk_isBeforeDate:v16];
      _HKInitializeLogging();
      v18 = HKLogBloodPressureJournal();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);

      if (!v19)
      {
        goto LABEL_19;
      }

      v20 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = [v11 stringFromDate:v16];
        v22 = v21;
        v23 = @"NO";
        v27 = 138543874;
        selfCopy3 = self;
        v29 = 2114;
        if (v17)
        {
          v23 = @"YES";
        }

        v30 = v21;
        v31 = 2114;
        v32 = v23;
        _os_log_debug_impl(&dword_229486000, v20, OS_LOG_TYPE_DEBUG, "[%{public}@] _isJournal:inNoticationPeriodFor: Notification period check - endDate: %{public}@, isInPeriod: %{public}@", &v27, 0x20u);
      }
    }

    else
    {
      _HKInitializeLogging();
      v20 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [HDHRBloodPressureJournalNotificationManager _isJournal:v20 inNoticationPeriodFor:? calendar:?];
      }

      LOBYTE(v17) = 0;
    }

    goto LABEL_19;
  }

  _HKInitializeLogging();
  v16 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138543362;
    selfCopy3 = self;
    _os_log_impl(&dword_229486000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] _isJournal:inNoticationPeriodFor: Journal is closed - not in notification period", &v27, 0xCu);
  }

  LOBYTE(v17) = 0;
LABEL_19:

  return v17;
}

- (id)_bloodPressureSampleFrom:(id)from error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = HDSampleEntityPredicateForEndDate();
  v7 = [MEMORY[0x277CCD250] correlationTypeForIdentifier:*MEMORY[0x277CCBBA8]];
  v13 = *MEMORY[0x277D10400];
  v14[0] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = MEMORY[0x277D10668];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [v9 samplesWithType:v7 profile:WeakRetained encodingOptions:v8 predicate:v6 limit:0 anchor:0 error:error];

  return v11;
}

- (BOOL)_notificationSchedulingIsEnabled
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  chutney = [features chutney];

  return chutney;
}

- (BOOL)_notificationsEnabled
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_unitTesting_forceEnableNotifications)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  behavior = [daemon behavior];
  healthAppHiddenOrNotInstalled = [behavior healthAppHiddenOrNotInstalled];

  if (healthAppHiddenOrNotInstalled)
  {
    _HKInitializeLogging();
    v8 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Journal notification scheduling is disabled. Health app is hidden or not installed.", &v12, 0xCu);
    }

    return 0;
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_profile);
    notificationManager = [v9 notificationManager];
    areHealthNotificationsAuthorized = [notificationManager areHealthNotificationsAuthorized];

    return areHealthNotificationsAuthorized;
  }
}

- (BOOL)snoozeBloodPressureJournalNotificationWithIdentifier:(id)identifier journalType:(int64_t)type userInfo:(id)info onDate:(id)date error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  infoCopy = info;
  dateCopy = date;
  if ([(HDHRBloodPressureJournalNotificationManager *)self _notificationSchedulingIsEnabled])
  {
    v15 = [[HDHRBloodPressureJournalNotificationIdentifier alloc] initWithIdentifierString:identifierCopy];
    if (v15)
    {
      if (type)
      {
        v16 = 0;
LABEL_5:
        v17 = [dateCopy dateByAddingTimeInterval:600.0];
        v18 = [(HDRestorableAlarm *)self->_snoozeRestorableAlarm bloodPressureJournalAlarmEventWithNotificationIdentifier:v15 journalType:type dueDate:v17 isFollowUp:1 measurementInfo:v16];
        snoozeRestorableAlarm = self->_snoozeRestorableAlarm;
        v35 = v18;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
        v21 = [(HDRestorableAlarm *)snoozeRestorableAlarm scheduleEvents:v20 error:error];

LABEL_21:
        goto LABEL_22;
      }

      if (infoCopy)
      {
        v27 = [infoCopy objectForKey:*MEMORY[0x277D12ED0]];
        v28 = [infoCopy objectForKey:*MEMORY[0x277D12EC8]];
        v29 = [infoCopy objectForKey:*MEMORY[0x277D12ED8]];
        v30 = v29;
        if (v27 && v28 && v29)
        {
          v34 = v27;
          v16 = -[HDHRBloodPressureJournalNotificationMeasurementInfo initWithMeasurementIndex:measurementCount:measurementWindowType:]([HDHRBloodPressureJournalNotificationMeasurementInfo alloc], "initWithMeasurementIndex:measurementCount:measurementWindowType:", [v27 integerValue], objc_msgSend(v28, "integerValue"), objc_msgSend(v29, "integerValue"));

          goto LABEL_5;
        }

        v32 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"UserInfo does not contain measurement related info %@", infoCopy}];
        if (v32)
        {
          if (error)
          {
            v33 = v32;
            *error = v32;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

LABEL_20:
        v21 = 0;
        goto LABEL_21;
      }

      v24 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"UserInfo should be provided for LearnHypertensionRisk journal type"];
    }

    else
    {
      v24 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"notificationIdentifier provided is invalid %@", identifierCopy}];
    }

    v25 = v24;
    if (v25)
    {
      if (error)
      {
        v26 = v25;
        *error = v25;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_20;
  }

  _HKInitializeLogging();
  v22 = HKLogBloodPressureJournal();
  v21 = 1;
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);

  if (v23)
  {
    v15 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_229486000, &v15->super, OS_LOG_TYPE_INFO, "[%{public}@] Notification scheduling is not enabled.", buf, 0xCu);
    }

    goto LABEL_21;
  }

LABEL_22:

  return v21;
}

- (unint64_t)removeDeliveredNotificationsForSamples:(id)samples journal:(id)journal
{
  v36 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  journalCopy = journal;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = samplesCopy;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v26;
    *&v10 = 138543874;
    v23 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = [HDHRBloodPressureJournalNotificationIdentifier identifierFromBPSample:v14 journal:journalCopy, v23];
        v16 = v15;
        if (v15)
        {
          identifierString = [v15 identifierString];
          [v7 addObject:identifierString];
        }

        else
        {
          _HKInitializeLogging();
          identifierString = HKLogBloodPressureJournal();
          if (os_log_type_enabled(identifierString, OS_LOG_TYPE_ERROR))
          {
            *buf = v23;
            selfCopy = self;
            v31 = 2114;
            v32 = v14;
            v33 = 2114;
            v34 = journalCopy;
            _os_log_error_impl(&dword_229486000, identifierString, OS_LOG_TYPE_ERROR, "[%{public}@] Could not make identifier for sample [%{public}@] and  journal [%{public}@].", buf, 0x20u);
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v11);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  notificationManager = [WeakRetained notificationManager];
  allObjects = [v7 allObjects];
  [notificationManager removeDeliveredNotificationsWithIdentifiers:allObjects];

  v21 = [v7 count];
  return v21;
}

- (void)_alarm:(id)_alarm confirmDeliveryByRemovingEvent:(id)event
{
  v11 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v6 = MEMORY[0x277CBEA60];
  eventCopy2 = event;
  _alarmCopy = _alarm;
  v9 = [v6 arrayWithObjects:&eventCopy count:1];

  [(HDHRBloodPressureJournalNotificationManager *)self _alarm:_alarmCopy confirmDeliveryByRemovingEvents:v9, eventCopy, v11];
}

- (void)_alarm:(id)_alarm confirmDeliveryByRemovingEvents:(id)events
{
  v18 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v11 = 0;
  v7 = [_alarm removeEvents:eventsCopy error:&v11];
  v8 = v11;
  _HKInitializeLogging();
  v9 = HKLogBloodPressureJournal();
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v14 = 2114;
      v15 = eventsCopy;
      _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removed event: %{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v14 = 2114;
    v15 = eventsCopy;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_229486000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to confirm delivery by removing event for client identifier: %{public}@, error: %{public}@", buf, 0x20u);
  }
}

- (BOOL)_isEventOnHold:(id)hold
{
  holdCopy = hold;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  heartHealthProfileExtension = [WeakRetained heartHealthProfileExtension];
  bloodPressureJournalNotificationSyncManager = [heartHealthProfileExtension bloodPressureJournalNotificationSyncManager];

  notificationIdentifierString = [holdCopy notificationIdentifierString];
  journalIdentifierString = [holdCopy journalIdentifierString];

  v15 = 0;
  v10 = [bloodPressureJournalNotificationSyncManager isAlarmEventWithIdentifiersOnHold:notificationIdentifierString journalIdentifier:journalIdentifierString error:&v15];
  v11 = v15;

  if (!v10)
  {
    _HKInitializeLogging();
    v13 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [HDHRBloodPressureJournalNotificationManager _isEventOnHold:];
    }

    goto LABEL_7;
  }

  if (v10 == 2)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v12 = 1;
LABEL_8:

  return v12;
}

- (id)_alarm:(id)_alarm dueEventsToHandleFrom:(id)from date:(id)date
{
  v31 = *MEMORY[0x277D85DE8];
  _alarmCopy = _alarm;
  fromCopy = from;
  dateCopy = date;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = fromCopy;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        if ([(HDHRBloodPressureJournalNotificationManager *)self _isDueEventExpired:v17 fromDate:dateCopy])
        {
          _HKInitializeLogging();
          v18 = HKLogBloodPressureJournal();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            selfCopy = self;
            v28 = 2114;
            v29 = v17;
            _os_log_impl(&dword_229486000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Stale event. Removing alarmEvent: %{public}@", buf, 0x16u);
          }

          v19 = v10;
        }

        else if ([(HDHRBloodPressureJournalNotificationManager *)self _isEventOnHold:v17])
        {
          v19 = v10;
        }

        else
        {
          v19 = v11;
        }

        [v19 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  [(HDHRBloodPressureJournalNotificationManager *)self _alarm:_alarmCopy confirmDeliveryByRemovingEvents:v10];

  return v11;
}

- (BOOL)_isDueEventExpired:(id)expired fromDate:(id)date
{
  dateCopy = date;
  dueDate = [expired dueDate];
  v7 = [dueDate dateByAddingTimeInterval:43200.0];

  LOBYTE(dueDate) = [v7 hk_isBeforeOrEqualToDate:dateCopy];
  return dueDate;
}

- (void)_queue_alarm:(id)_queue_alarm didReceiveDueEvents:(id)events
{
  v6 = MEMORY[0x277CBEAA8];
  eventsCopy = events;
  _queue_alarmCopy = _queue_alarm;
  v9 = [v6 now];
  [(HDHRBloodPressureJournalNotificationManager *)self _queue_alarm:_queue_alarmCopy didReceiveDueEvents:eventsCopy date:v9 handledEventsHandler:0];
}

- (void)_queue_alarm:(id)_queue_alarm didReceiveDueEvents:(id)events date:(id)date handledEventsHandler:(id)handler
{
  v71 = *MEMORY[0x277D85DE8];
  _queue_alarmCopy = _queue_alarm;
  eventsCopy = events;
  dateCopy = date;
  handlerCopy = handler;
  if (!self->_unitTesting_shouldIgnoreDeliveredAlarmEvents)
  {
    dispatch_assert_queue_V2(self->_queue);
    _HKInitializeLogging();
    v13 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventsCopy, "count")}];
      *buf = 138543874;
      selfCopy4 = self;
      v67 = 2114;
      v68 = v14;
      v69 = 2114;
      v70 = eventsCopy;
      _os_log_impl(&dword_229486000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received %{public}@ due events: %{public}@", buf, 0x20u);
    }

    selfCopy2 = self;
    if ([(HDHRBloodPressureJournalNotificationManager *)self _notificationsEnabled]&& [(HDHRBloodPressureJournalNotificationManager *)self _notificationSchedulingIsEnabled])
    {
      v46 = dateCopy;
      v47 = eventsCopy;
      v15 = [(HDHRBloodPressureJournalNotificationManager *)self _alarm:_queue_alarmCopy dueEventsToHandleFrom:eventsCopy date:dateCopy];
      if ([v15 count])
      {
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        notificationManager = [WeakRetained notificationManager];
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __106__HDHRBloodPressureJournalNotificationManager__queue_alarm_didReceiveDueEvents_date_handledEventsHandler___block_invoke;
        v63[3] = &unk_2786610D0;
        v63[4] = self;
        [notificationManager getBloodPressureJournalDeliveredNotificationIdentifiersWithCompletionHandler:v63];
      }

      [(HDHRBloodPressureJournalNotificationManager *)self _removeAllExpiredEvents];
      v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      obj = v15;
      selfCopy3 = self;
      v53 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
      if (v53)
      {
        v48 = *v60;
        v19 = 0x277D12000uLL;
        v49 = handlerCopy;
        do
        {
          for (i = 0; i != v53; ++i)
          {
            if (*v60 != v48)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v59 + 1) + 8 * i);
            notificationIdentifierString = [v21 notificationIdentifierString];
            isFollowUp = [v21 isFollowUp];
            v24 = *(v19 + 3968);
            dueDate = [v21 dueDate];
            v26 = [v24 notificationToMonitorHypertensionWithIdentifier:notificationIdentifierString dueDate:dueDate isFollowUp:isFollowUp];

            if (![v21 journalType])
            {
              measurementInfo = [v21 measurementInfo];
              v28 = *(v19 + 3968);
              dueDate2 = [v21 dueDate];
              v30 = [v28 notificationForLearnHypertensionRiskWithIdentifier:notificationIdentifierString dueDate:dueDate2 isFollowUp:isFollowUp measurementIndex:objc_msgSend(measurementInfo measurementCount:"measurementIndex") measurementWindowType:{objc_msgSend(measurementInfo, "measurementCount"), objc_msgSend(measurementInfo, "measurementWindowType")}];

              v26 = v30;
            }

            v31 = v26;
            v32 = [MEMORY[0x277CE1FC0] hkhrBPJ_requestForNotification:v26];
            dueDate3 = [v21 dueDate];
            v34 = [dueDate3 dateByAddingTimeInterval:43200.0];

            selfCopy3 = selfCopy2;
            v35 = [(HDRestorableAlarm *)selfCopy2->_expirationRestorableAlarm bloodPressureJournalExpirationEventWithIdentifier:notificationIdentifierString dueDate:v34];
            [v50 addObject:v35];
            _HKInitializeLogging();
            v36 = HKLogBloodPressureJournal();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              selfCopy4 = selfCopy2;
              v67 = 2114;
              v68 = v32;
              _os_log_impl(&dword_229486000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] Posting notification with request: %{public}@", buf, 0x16u);
            }

            v37 = objc_loadWeakRetained(&selfCopy2->_profile);
            notificationManager2 = [v37 notificationManager];
            v56[0] = MEMORY[0x277D85DD0];
            v56[1] = 3221225472;
            v56[2] = __106__HDHRBloodPressureJournalNotificationManager__queue_alarm_didReceiveDueEvents_date_handledEventsHandler___block_invoke_372;
            v56[3] = &unk_278660128;
            v56[4] = selfCopy2;
            v39 = notificationIdentifierString;
            v57 = v39;
            v40 = v32;
            v58 = v40;
            [notificationManager2 postNotificationWithRequest:v40 completion:v56];

            [(HDHRBloodPressureJournalNotificationManager *)selfCopy2 _alarm:_queue_alarmCopy confirmDeliveryByRemovingEvent:v21];
            handlerCopy = v49;
            if (v49)
            {
              v49[2](v49, obj);
            }

            v19 = 0x277D12000;
          }

          v53 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
        }

        while (v53);
      }

      expirationRestorableAlarm = selfCopy3->_expirationRestorableAlarm;
      v55 = 0;
      v42 = [(HDRestorableAlarm *)expirationRestorableAlarm scheduleEvents:v50 error:&v55];
      v43 = v55;
      dateCopy = v46;
      eventsCopy = v47;
      if ((v42 & 1) == 0)
      {
        _HKInitializeLogging();
        v44 = HKLogBloodPressureJournal();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [HDHRBloodPressureJournalNotificationManager _queue_alarm:didReceiveDueEvents:date:handledEventsHandler:];
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v45 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy4 = self;
        _os_log_impl(&dword_229486000, v45, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifications are disabled. Removing alarmEvents.", buf, 0xCu);
      }

      [(HDHRBloodPressureJournalNotificationManager *)self _alarm:_queue_alarmCopy confirmDeliveryByRemovingEvents:eventsCopy];
    }
  }
}

void __106__HDHRBloodPressureJournalNotificationManager__queue_alarm_didReceiveDueEvents_date_handledEventsHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] notificationIdentifiers being removed: %{public}@", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v7 = [WeakRetained notificationManager];
  [v7 removeDeliveredNotificationsWithIdentifiers:v3];
}

void __106__HDHRBloodPressureJournalNotificationManager__queue_alarm_didReceiveDueEvents_date_handledEventsHandler___block_invoke_372(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogBloodPressureJournal();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138543618;
      v22 = v8;
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did successfully post notification for : %{public}@", buf, 0x16u);
    }

    v10 = [*(a1 + 48) content];
    v11 = [v10 userInfo];
    v7 = [v11 objectForKey:*MEMORY[0x277D12ED8]];

    v13 = *(a1 + 32);
    v12 = a1 + 32;
    WeakRetained = objc_loadWeakRetained((v13 + 8));
    v15 = [WeakRetained heartHealthProfileExtension];
    v16 = [v15 bloodPressureJournalManager];

    v20 = 0;
    v17 = [v16 latestActiveBloodPressureJournalWithError:&v20];
    v18 = v20;
    if (v18)
    {
      _HKInitializeLogging();
      v19 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __106__HDHRBloodPressureJournalNotificationManager__queue_alarm_didReceiveDueEvents_date_handledEventsHandler___block_invoke_372_cold_2();
      }
    }

    [*(*v12 + 48) submitAnalyticsEvent:0 forJournal:v17 windowType:v7];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __106__HDHRBloodPressureJournalNotificationManager__queue_alarm_didReceiveDueEvents_date_handledEventsHandler___block_invoke_372_cold_1();
  }
}

- (void)_removeAllExpiredEvents
{
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_queue_alarm:(id)_queue_alarm didReceiveExpiredEvents:(id)events
{
  v19 = *MEMORY[0x277D85DE8];
  _queue_alarmCopy = _queue_alarm;
  eventsCopy = events;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v8 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventsCopy, "count")}];
    v13 = 138543874;
    selfCopy = self;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = eventsCopy;
    _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received ExpiredEvents %{public}@ events: %{public}@", &v13, 0x20u);
  }

  v10 = [eventsCopy hk_map:&__block_literal_global_18];
  if ([v10 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    notificationManager = [WeakRetained notificationManager];
    [notificationManager removeDeliveredNotificationsWithIdentifiers:v10];

    [(HDHRBloodPressureJournalNotificationManager *)self _alarm:_queue_alarmCopy confirmDeliveryByRemovingEvents:eventsCopy];
  }
}

- (void)_notificationInfoForMonitorHypertensionJournal:(NSObject *)a3 startDate:calendar:schedulingUUID:error:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 UUIDString];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] [UUID: %{public}@] _notificationInfoForMonitorHypertensionJournal: Failed to calculate notification end date. Got nil for Notification End date.", &v6, 0x16u);
}

- (void)_isJournal:(uint64_t)a1 inNoticationPeriodFor:(NSObject *)a2 calendar:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_229486000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] _isJournal:inNoticationPeriodFor: Failed to calculate notification end date. Got nil for Notification End date.", &v2, 0xCu);
}

- (void)_isEventOnHold:.cold.1()
{
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_queue_alarm:didReceiveDueEvents:date:handledEventsHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __106__HDHRBloodPressureJournalNotificationManager__queue_alarm_didReceiveDueEvents_date_handledEventsHandler___block_invoke_372_cold_1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __106__HDHRBloodPressureJournalNotificationManager__queue_alarm_didReceiveDueEvents_date_handledEventsHandler___block_invoke_372_cold_2()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end