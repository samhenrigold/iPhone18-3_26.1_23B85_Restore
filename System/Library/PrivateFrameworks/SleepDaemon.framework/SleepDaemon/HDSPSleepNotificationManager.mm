@interface HDSPSleepNotificationManager
- (BOOL)_bedtimeOrWindDownNotificationsEnabled;
- (HDSPEnvironment)environment;
- (HDSPSleepEventDelegate)sleepEventDelegate;
- (HDSPSleepNotificationManager)initWithEnvironment:(id)environment;
- (HDSPSleepNotificationManager)initWithEnvironment:(id)environment notificationPublishers:(id)publishers;
- (NSString)providerIdentifier;
- (id)_bedtimeNotificationEventAfterDate:(id)date;
- (id)_sleepScheduleModel;
- (id)_windDownNotificationEventAfterDate:(id)date;
- (id)eventIdentifiers;
- (id)upcomingEventsDueAfterDate:(id)date;
- (void)_bedtimeOrWindDownNotificationEventIsDue:(id)due;
- (void)_rescheduleEvents;
- (void)_tearDownBedtimeReminder;
- (void)_tearDownChargingReminder;
- (void)_tearDownMorningNotification;
- (void)_tearDownWakeDetectionNotification;
- (void)_tearDownWindDownReminder;
- (void)environmentDidBecomeReady:(id)ready;
- (void)environmentWillBecomeReady:(id)ready;
- (void)presentAlertForGoodMorning;
- (void)publishNotificationForEvent:(id)event;
- (void)significantTimeChangeDetected:(id)detected;
- (void)sleepEventIsDue:(id)due;
- (void)sleepScheduleModelManager:(id)manager didUpdateSleepSchedule:(id)schedule;
- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason;
- (void)tearDownNotificationForEventIdentifier:(id)identifier;
- (void)tearDownNotifications;
@end

@implementation HDSPSleepNotificationManager

- (HDSPSleepNotificationManager)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  behavior = [environmentCopy behavior];
  hksp_supportsUserNotificationCenter = [behavior hksp_supportsUserNotificationCenter];

  if (hksp_supportsUserNotificationCenter)
  {
    v8 = [[HDSPUserNotificationCenter alloc] initWithEnvironment:environmentCopy];
    [v5 addObject:v8];
  }

  behavior2 = [environmentCopy behavior];
  hksp_supportsCFUserNotifications = [behavior2 hksp_supportsCFUserNotifications];

  if (hksp_supportsCFUserNotifications)
  {
    v11 = [[HDSPCFUserNotificationCenter alloc] initWithEnvironment:environmentCopy];
    [v5 addObject:v11];
  }

  behavior3 = [environmentCopy behavior];
  isAppleWatch = [behavior3 isAppleWatch];

  if (isAppleWatch)
  {
    v14 = [[HDSPDarwinNotificationCenter alloc] initWithEnvironment:environmentCopy];
    [v5 addObject:v14];
  }

  v15 = [[HDSPOrchestrationCenter alloc] initWithEnvironment:environmentCopy];
  [v5 addObject:v15];

  v16 = [(HDSPSleepNotificationManager *)self initWithEnvironment:environmentCopy notificationPublishers:v5];
  return v16;
}

- (HDSPSleepNotificationManager)initWithEnvironment:(id)environment notificationPublishers:(id)publishers
{
  v19 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  publishersCopy = publishers;
  v14.receiver = self;
  v14.super_class = HDSPSleepNotificationManager;
  v8 = [(HDSPSleepNotificationManager *)&v14 init];
  if (v8)
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 138543618;
      v16 = v10;
      v17 = 2048;
      v18 = v8;
      v11 = v10;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    objc_storeWeak(&v8->_environment, environmentCopy);
    objc_storeStrong(&v8->_notificationPublishers, publishers);
    v12 = v8;
  }

  return v8;
}

- (void)environmentWillBecomeReady:(id)ready
{
  v22 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = objc_opt_class();
    v6 = v21;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentWillBecomeReady", buf, 0xCu);
  }

  sleepScheduleModelManager = [readyCopy sleepScheduleModelManager];
  [sleepScheduleModelManager addObserver:self];

  sleepScheduler = [readyCopy sleepScheduler];
  [sleepScheduler addEventHandler:self];

  sleepScheduler2 = [readyCopy sleepScheduler];
  [sleepScheduler2 addEventProvider:self];

  actionManager = [readyCopy actionManager];
  [actionManager addObserver:self];

  sleepCoordinator = [readyCopy sleepCoordinator];
  [sleepCoordinator addObserver:self];

  timeChangeListener = [readyCopy timeChangeListener];
  [timeChangeListener addObserver:self];

  behavior = [readyCopy behavior];
  isAppleWatch = [behavior isAppleWatch];

  if (isAppleWatch)
  {
    goodMorningAlertManager = [readyCopy goodMorningAlertManager];
    [goodMorningAlertManager addObserver:self];
  }

  notificationPublishers = self->_notificationPublishers;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__HDSPSleepNotificationManager_environmentWillBecomeReady___block_invoke;
  v18[3] = &unk_279C7CB80;
  v19 = readyCopy;
  v17 = readyCopy;
  [(NSArray *)notificationPublishers na_each:v18];
}

void __59__HDSPSleepNotificationManager_environmentWillBecomeReady___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 environmentWillBecomeReady:*(a1 + 32)];
  }
}

- (void)environmentDidBecomeReady:(id)ready
{
  v13 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentDidBecomeReady", buf, 0xCu);
  }

  notificationPublishers = self->_notificationPublishers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HDSPSleepNotificationManager_environmentDidBecomeReady___block_invoke;
  v9[3] = &unk_279C7C0A0;
  v10 = readyCopy;
  v8 = readyCopy;
  [(NSArray *)notificationPublishers na_each:v9];
  [(HDSPSleepNotificationManager *)self _rescheduleEvents];
}

void __58__HDSPSleepNotificationManager_environmentDidBecomeReady___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 environmentDidBecomeReady:*(a1 + 32)];
  }
}

- (void)publishNotificationForEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = objc_opt_class();
    v13 = 2114;
    v14 = eventCopy;
    v6 = v12;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] publishNotificationForEvent: %{public}@", buf, 0x16u);
  }

  notificationPublishers = self->_notificationPublishers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HDSPSleepNotificationManager_publishNotificationForEvent___block_invoke;
  v9[3] = &unk_279C7CBA8;
  v10 = eventCopy;
  v8 = eventCopy;
  [(NSArray *)notificationPublishers na_each:v9];
}

- (void)tearDownNotificationForEventIdentifier:(id)identifier
{
  identifierCopy = identifier;
  notificationPublishers = self->_notificationPublishers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HDSPSleepNotificationManager_tearDownNotificationForEventIdentifier___block_invoke;
  v7[3] = &unk_279C7CBA8;
  v8 = identifierCopy;
  v6 = identifierCopy;
  [(NSArray *)notificationPublishers na_each:v7];
}

- (void)tearDownNotifications
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] tearDownNotifications", &v5, 0xCu);
  }

  [(NSArray *)self->_notificationPublishers na_each:&__block_literal_global_23];
}

- (NSString)providerIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)upcomingEventsDueAfterDate:(id)date
{
  v4 = MEMORY[0x277CBEB18];
  dateCopy = date;
  v6 = objc_alloc_init(v4);
  v7 = [(HDSPSleepNotificationManager *)self _windDownNotificationEventAfterDate:dateCopy];
  [v6 na_safeAddObject:v7];

  v8 = [(HDSPSleepNotificationManager *)self _bedtimeNotificationEventAfterDate:dateCopy];

  [v6 na_safeAddObject:v8];
  v9 = [v6 copy];

  return v9;
}

- (void)sleepEventIsDue:(id)due
{
  v20 = *MEMORY[0x277D85DE8];
  dueCopy = due;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 138543618;
    *&v19[4] = objc_opt_class();
    *&v19[12] = 2114;
    *&v19[14] = dueCopy;
    v6 = *&v19[4];
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepEventIsDue: %{public}@", v19, 0x16u);
  }

  identifier = [dueCopy identifier];
  if ([identifier isEqualToString:*MEMORY[0x277D621C0]])
  {

    goto LABEL_6;
  }

  identifier2 = [dueCopy identifier];
  v9 = [identifier2 isEqualToString:*MEMORY[0x277D621F8]];

  if (!v9)
  {
    identifier3 = [dueCopy identifier];
    v11 = [identifier3 isEqualToString:*MEMORY[0x277D621E0]];

    if (v11)
    {
      [(HDSPSleepNotificationManager *)self _tearDownWakeDetectionNotification];
      goto LABEL_19;
    }

    identifier4 = [dueCopy identifier];
    if (([identifier4 isEqualToString:*MEMORY[0x277D621C8]] & 1) == 0)
    {
      identifier5 = [dueCopy identifier];
      if (([identifier5 isEqualToString:*MEMORY[0x277D621D8]] & 1) == 0)
      {
        identifier6 = [dueCopy identifier];
        if (([identifier6 isEqualToString:*MEMORY[0x277D621E8]] & 1) == 0)
        {
          identifier7 = [dueCopy identifier];
          v16 = HKSHSleepScoreResultsNotificationEventIdentifier();
          if (([identifier7 isEqualToString:v16] & 1) == 0)
          {
            identifier8 = [dueCopy identifier];
            v18 = [identifier8 isEqualToString:*MEMORY[0x277D621D0]];

            if ((v18 & 1) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }
    }

LABEL_18:
    [(HDSPSleepNotificationManager *)self publishNotificationForEvent:dueCopy, *v19, *&v19[8], v20];
    goto LABEL_19;
  }

LABEL_6:
  if ([(HDSPSleepNotificationManager *)self _bedtimeOrWindDownNotificationsEnabled:*v19])
  {
    [(HDSPSleepNotificationManager *)self _bedtimeOrWindDownNotificationEventIsDue:dueCopy];
  }

LABEL_19:
}

- (id)eventIdentifiers
{
  if (qword_2814C0E98 != -1)
  {
    dispatch_once(&qword_2814C0E98, &__block_literal_global_305);
  }

  v3 = _MergedGlobals_20;

  return v3;
}

void __48__HDSPSleepNotificationManager_eventIdentifiers__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v1 = _MergedGlobals_20;
  _MergedGlobals_20 = v0;

  [_MergedGlobals_20 addObject:*MEMORY[0x277D621C0]];
  [_MergedGlobals_20 addObject:*MEMORY[0x277D621F8]];
  [_MergedGlobals_20 addObject:*MEMORY[0x277D621E0]];
  [_MergedGlobals_20 addObject:*MEMORY[0x277D621C8]];
  [_MergedGlobals_20 addObject:*MEMORY[0x277D621D8]];
  [_MergedGlobals_20 addObject:*MEMORY[0x277D621E8]];
  [_MergedGlobals_20 addObject:*MEMORY[0x277D621D0]];
  v2 = _MergedGlobals_20;
  v3 = HKSHSleepScoreResultsNotificationEventIdentifier();
  [v2 addObject:v3];
}

- (void)presentAlertForGoodMorning
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = objc_opt_class();
    v4 = v13;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] posting good morning notification", &v12, 0xCu);
  }

  v5 = MEMORY[0x277D624D0];
  v6 = *MEMORY[0x277D621D0];
  environment = [(HDSPSleepNotificationManager *)self environment];
  currentDateProvider = [environment currentDateProvider];
  v10 = currentDateProvider[2](currentDateProvider, v9);
  v11 = [v5 sleepEventWithIdentifier:v6 dueDate:v10];

  [(HDSPSleepNotificationManager *)self publishNotificationForEvent:v11];
}

- (void)sleepScheduleModelManager:(id)manager didUpdateSleepSchedule:(id)schedule
{
  v9 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 138543618;
    *&v8[4] = objc_opt_class();
    *&v8[12] = 2114;
    *&v8[14] = scheduleCopy;
    v7 = *&v8[4];
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] didUpdateSleepSchedule: %{public}@", v8, 0x16u);
  }

  if (!scheduleCopy || ([scheduleCopy isEnabledAndHasOccurrences] & 1) == 0)
  {
    [(HDSPSleepNotificationManager *)self tearDownNotifications:*v8];
  }

  [(HDSPSleepNotificationManager *)self _rescheduleEvents:*v8];
}

- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = NSStringFromHKSPSleepScheduleState();
    v11 = NSStringFromHKSPSleepScheduleState();
    v12 = NSStringFromHKSPSleepScheduleStateChangeReason();
    v19 = 138544130;
    v20 = v8;
    v21 = 2114;
    v22 = v10;
    v23 = 2114;
    v24 = v11;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepScheduleStateChanged from %{public}@ to %{public}@ for %{public}@", &v19, 0x2Au);
  }

  if (change == 1)
  {
    v16 = HKSPLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v19 = 138543362;
      v20 = v17;
      v18 = v17;
      _os_log_impl(&dword_269B11000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] tearing down notifications at wake up", &v19, 0xCu);
    }

    [(HDSPSleepNotificationManager *)self _tearDownWindDownReminder];
    [(HDSPSleepNotificationManager *)self _tearDownBedtimeReminder];
    [(HDSPSleepNotificationManager *)self _tearDownWakeDetectionNotification];
  }

  else if (change == 2)
  {
    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v19 = 138543362;
      v20 = v14;
      v15 = v14;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] tearing down notifications at bedtime", &v19, 0xCu);
    }

    [(HDSPSleepNotificationManager *)self _tearDownChargingReminder];
  }

  [(HDSPSleepNotificationManager *)self _rescheduleEvents];
}

- (void)significantTimeChangeDetected:(id)detected
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v5 = v7;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Significant time change detected", &v6, 0xCu);
  }

  [(HDSPSleepNotificationManager *)self _rescheduleEvents];
}

- (void)_tearDownChargingReminder
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] tearing down charging reminder", &v5, 0xCu);
  }

  [(HDSPSleepNotificationManager *)self tearDownNotificationForEventIdentifier:*MEMORY[0x277D621C8]];
}

- (void)_tearDownBedtimeReminder
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] tearing down bedtime reminder", &v5, 0xCu);
  }

  [(HDSPSleepNotificationManager *)self tearDownNotificationForEventIdentifier:*MEMORY[0x277D621C0]];
}

- (void)_tearDownWindDownReminder
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] tearing down wind down reminder", &v5, 0xCu);
  }

  [(HDSPSleepNotificationManager *)self tearDownNotificationForEventIdentifier:*MEMORY[0x277D621F8]];
}

- (void)_tearDownWakeDetectionNotification
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] tearing down wake detection notification", &v5, 0xCu);
  }

  [(HDSPSleepNotificationManager *)self tearDownNotificationForEventIdentifier:*MEMORY[0x277D621D8]];
}

- (void)_tearDownMorningNotification
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] tearing down good morning notification", &v5, 0xCu);
  }

  [(HDSPSleepNotificationManager *)self tearDownNotificationForEventIdentifier:*MEMORY[0x277D621D0]];
}

- (id)_sleepScheduleModel
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepScheduleModelManager = [WeakRetained sleepScheduleModelManager];
  sleepScheduleModel = [sleepScheduleModelManager sleepScheduleModel];

  return sleepScheduleModel;
}

- (void)_rescheduleEvents
{
  v11 = *MEMORY[0x277D85DE8];
  _bedtimeOrWindDownNotificationsEnabled = [(HDSPSleepNotificationManager *)self _bedtimeOrWindDownNotificationsEnabled];
  v4 = HKSPLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (_bedtimeOrWindDownNotificationsEnabled)
  {
    if (v5)
    {
      v9 = 138543362;
      v10 = objc_opt_class();
      v6 = v10;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Telling scheduler we have events to schedule", &v9, 0xCu);
    }

    sleepEventDelegate = [(HDSPSleepNotificationManager *)self sleepEventDelegate];
    [sleepEventDelegate eventProviderHasUpcomingEvents:self];
  }

  else
  {
    if (v5)
    {
      v9 = 138543362;
      v10 = objc_opt_class();
      v8 = v10;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Bedtime and wind down notifications disabled", &v9, 0xCu);
    }

    sleepEventDelegate = [(HDSPSleepNotificationManager *)self sleepEventDelegate];
    [sleepEventDelegate eventProviderCancelledEvents:self];
  }
}

- (id)_bedtimeNotificationEventAfterDate:(id)date
{
  dateCopy = date;
  if ([(HDSPSleepNotificationManager *)self _bedtimeOrWindDownNotificationsEnabled])
  {
    _sleepScheduleModel = [(HDSPSleepNotificationManager *)self _sleepScheduleModel];
    v6 = [_sleepScheduleModel nextEventWithIdentifier:*MEMORY[0x277D621B8] dueAfterDate:dateCopy];

    if (v6)
    {
      v7 = [v6 dateByAddingTimeInterval:-*MEMORY[0x277D623C0]];
      v8 = [MEMORY[0x277D624D0] sleepEventWithIdentifier:*MEMORY[0x277D621C0] dueDate:v7 expirationDate:v6 isUserVisible:1];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_windDownNotificationEventAfterDate:(id)date
{
  dateCopy = date;
  if ([(HDSPSleepNotificationManager *)self _bedtimeOrWindDownNotificationsEnabled])
  {
    _sleepScheduleModel = [(HDSPSleepNotificationManager *)self _sleepScheduleModel];
    v6 = [_sleepScheduleModel nextEventWithIdentifier:*MEMORY[0x277D621F0] dueAfterDate:dateCopy];

    if (v6)
    {
      v7 = [v6 dateByAddingTimeInterval:-*MEMORY[0x277D623C0]];
      v8 = [MEMORY[0x277D624D0] sleepEventWithIdentifier:*MEMORY[0x277D621F8] dueDate:v7 expirationDate:v6 isUserVisible:1];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_bedtimeOrWindDownNotificationsEnabled
{
  v14 = *MEMORY[0x277D85DE8];
  _sleepScheduleModel = [(HDSPSleepNotificationManager *)self _sleepScheduleModel];
  sleepSettings = [_sleepScheduleModel sleepSettings];
  environment = [(HDSPSleepNotificationManager *)self environment];
  behavior = [environment behavior];
  if (![behavior isAppleWatch])
  {

    goto LABEL_7;
  }

  watchSleepFeaturesEnabled = [sleepSettings watchSleepFeaturesEnabled];

  if (watchSleepFeaturesEnabled)
  {
LABEL_7:
    bedtimeReminders = [sleepSettings bedtimeReminders];
    goto LABEL_8;
  }

  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = objc_opt_class();
    v9 = v13;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Bedtime and wind down notifications disabled since sleep features are disabled on Watch.", &v12, 0xCu);
  }

  bedtimeReminders = 0;
LABEL_8:

  return bedtimeReminders;
}

- (void)_bedtimeOrWindDownNotificationEventIsDue:(id)due
{
  v20 = *MEMORY[0x277D85DE8];
  dueCopy = due;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepCoordinator = [WeakRetained sleepCoordinator];
  [sleepCoordinator sleepEventIsDue:dueCopy];

  v7 = objc_loadWeakRetained(&self->_environment);
  sleepCoordinator2 = [v7 sleepCoordinator];
  currentSleepScheduleState = [sleepCoordinator2 currentSleepScheduleState];

  if (currentSleepScheduleState <= 6)
  {
    if (((1 << currentSleepScheduleState) & 0x4D) != 0)
    {
      v10 = HKSPLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = v11;
        v13 = NSStringFromHKSPSleepScheduleState();
        v14 = 138543874;
        v15 = v11;
        v16 = 2114;
        v17 = dueCopy;
        v18 = 2114;
        v19 = v13;
        _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring event %{public}@ due to being in current state %{public}@", &v14, 0x20u);
      }
    }

    else if (currentSleepScheduleState == 1)
    {
      [(HDSPSleepNotificationManager *)self publishNotificationForEvent:dueCopy];
    }
  }
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (HDSPSleepEventDelegate)sleepEventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sleepEventDelegate);

  return WeakRetained;
}

@end