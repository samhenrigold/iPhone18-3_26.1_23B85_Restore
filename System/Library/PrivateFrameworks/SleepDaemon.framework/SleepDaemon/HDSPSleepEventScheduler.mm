@interface HDSPSleepEventScheduler
- (BOOL)_lock_shouldScheduleEvents;
- (BOOL)_shouldNotifyHandler:(id)handler forEvent:(id)event;
- (HDSPEnvironment)environment;
- (HDSPSleepEventScheduler)initWithEnvironment:(id)environment;
- (HDSPSleepEventScheduler)initWithEnvironment:(id)environment schedulerProvider:(id)provider limitingScheduler:(id)scheduler;
- (HKSPSleepEvent)lastStandardSleepEvent;
- (NSDate)lastEventTriggerDate;
- (id)_allSleepEvents;
- (id)diagnosticDescription;
- (void)_enqueueHandleOverdueEventsTask;
- (void)_enqueueSchedulePendingEventsTask;
- (void)_handleOverdueEvents;
- (void)_loadLastStandardSleepEvent;
- (void)_lock_rescheduleEvents;
- (void)_lock_updateLastStandardSleepEvent:(id)event;
- (void)_schedulePendingEvents;
- (void)addEventHandler:(id)handler;
- (void)addEventProvider:(id)provider;
- (void)environmentDidBecomeReady:(id)ready;
- (void)environmentWillBecomeReady:(id)ready;
- (void)eventProviderCancelledEvents:(id)events;
- (void)eventProviderHasUpcomingEvents:(id)events;
- (void)notifyForOverdueEvents:(id)events;
- (void)removeEventHandler:(id)handler;
- (void)removeEventProvider:(id)provider;
- (void)rescheduleEvents;
- (void)scheduledEventIsDue;
- (void)setLastEventTriggerDate:(id)date;
- (void)significantTimeChangeDetected:(id)detected;
- (void)sleepScheduleModelManager:(id)manager didUpdateSleepScheduleModel:(id)model;
@end

@implementation HDSPSleepEventScheduler

- (HDSPSleepEventScheduler)initWithEnvironment:(id)environment
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__HDSPSleepEventScheduler_initWithEnvironment___block_invoke;
  v11[3] = &unk_279C7C718;
  selfCopy = self;
  v4 = MEMORY[0x277D62470];
  environmentCopy = environment;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x277D2C938] serialDispatchQueueSchedulerWithName:@"com.apple.sleep.HDSPSleepEventScheduler"];
  v8 = [v6 initWithScheduler:v7];
  v9 = [(HDSPSleepEventScheduler *)selfCopy initWithEnvironment:environmentCopy schedulerProvider:v11 limitingScheduler:v8];

  return v9;
}

HDSPXPCAlarmScheduler *__47__HDSPSleepEventScheduler_initWithEnvironment___block_invoke(uint64_t a1)
{
  v2 = [HDSPXPCAlarmScheduler alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v4 = [WeakRetained currentDateProvider];
  v5 = [(HDSPXPCAlarmScheduler *)v2 initWithCurrentDateProvider:v4];

  return v5;
}

- (HDSPSleepEventScheduler)initWithEnvironment:(id)environment schedulerProvider:(id)provider limitingScheduler:(id)scheduler
{
  v37 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  providerCopy = provider;
  schedulerCopy = scheduler;
  v32.receiver = self;
  v32.super_class = HDSPSleepEventScheduler;
  v11 = [(HDSPSleepEventScheduler *)&v32 init];
  if (v11)
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      *buf = 138543618;
      v34 = v13;
      v35 = 2048;
      v36 = v11;
      v14 = v13;
      _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    objc_storeWeak(&v11->_environment, environmentCopy);
    mutexGenerator = [environmentCopy mutexGenerator];
    v16 = mutexGenerator[2]();
    mutexProvider = v11->_mutexProvider;
    v11->_mutexProvider = v16;

    v18 = objc_alloc_init(HDSPSleepEventList);
    sleepEvents = v11->_sleepEvents;
    v11->_sleepEvents = v18;

    v20 = objc_alloc(MEMORY[0x277D624A0]);
    defaultCallbackScheduler = [environmentCopy defaultCallbackScheduler];
    v22 = [v20 initWithCallbackScheduler:defaultCallbackScheduler];
    eventHandlers = v11->_eventHandlers;
    v11->_eventHandlers = v22;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    eventProviders = v11->_eventProviders;
    v11->_eventProviders = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    pendingEventProviders = v11->_pendingEventProviders;
    v11->_pendingEventProviders = weakObjectsHashTable2;

    if (providerCopy)
    {
      v28 = providerCopy[2](providerCopy, environmentCopy);
    }

    else
    {
      v28 = 0;
    }

    scheduler = v11->_scheduler;
    v11->_scheduler = v28;

    [(HDSPEventScheduler *)v11->_scheduler setDelegate:v11];
    objc_storeStrong(&v11->_limitingScheduler, scheduler);
    v30 = v11;
  }

  return v11;
}

- (void)rescheduleEvents
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] rescheduleEvents", buf, 0xCu);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__HDSPSleepEventScheduler_rescheduleEvents__block_invoke;
  v5[3] = &unk_279C7B108;
  v5[4] = self;
  [(HDSPSleepEventScheduler *)self _withLock:v5];
}

- (void)_lock_rescheduleEvents
{
  v15 = *MEMORY[0x277D85DE8];
  _lock_shouldScheduleEvents = [(HDSPSleepEventScheduler *)self _lock_shouldScheduleEvents];
  v4 = HKSPLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (_lock_shouldScheduleEvents)
  {
    if (v5)
    {
      *buf = 138543362;
      v14 = objc_opt_class();
      v6 = v14;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] rescheduling events", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_environment);
    assertionManager = [WeakRetained assertionManager];
    [assertionManager takeAssertionWithIdentifier:@"HDSPRescheduleTransaction" type:1];

    assertionManager2 = [WeakRetained assertionManager];
    [assertionManager2 takeAssertionWithIdentifier:@"HDSPRescheduleAssertion" type:2];

    allObjects = [(NSHashTable *)self->_eventProviders allObjects];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__HDSPSleepEventScheduler__lock_rescheduleEvents__block_invoke;
    v12[3] = &unk_279C7C740;
    v12[4] = self;
    [allObjects na_each:v12];
  }

  else
  {
    if (v5)
    {
      *buf = 138543362;
      v14 = objc_opt_class();
      v11 = v14;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] unscheduling events", buf, 0xCu);
    }

    [(HDSPSleepEventList *)self->_sleepEvents removeAllEvents];
    [(NSHashTable *)self->_pendingEventProviders removeAllObjects];
    [(HDSPEventScheduler *)self->_scheduler unschedule];
  }

  [(HDSPSleepEventScheduler *)self _enqueueSchedulePendingEventsTask];
}

- (void)_enqueueSchedulePendingEventsTask
{
  limitingScheduler = self->_limitingScheduler;
  v4 = objc_alloc(MEMORY[0x277D62538]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HDSPSleepEventScheduler__enqueueSchedulePendingEventsTask__block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  v5 = [v4 initWithIdentifier:@"schedulePendingEvents" block:v6 delay:0.1];
  [(HKSPLimitingScheduler *)limitingScheduler scheduleTask:v5];
}

- (BOOL)_lock_shouldScheduleEvents
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepScheduleModelManager = [WeakRetained sleepScheduleModelManager];
  sleepSchedule = [sleepScheduleModelManager sleepSchedule];

  if (([sleepSchedule isEnabled] & 1) == 0)
  {
    sleepSettings = HKSPLogForCategory();
    if (os_log_type_enabled(sleepSettings, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = objc_opt_class();
      v13 = v18;
      _os_log_impl(&dword_269B11000, sleepSettings, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep schedule disabled, not scheduling", &v17, 0xCu);
    }

    goto LABEL_11;
  }

  v6 = objc_loadWeakRetained(&self->_environment);
  behavior = [v6 behavior];
  isAppleWatch = [behavior isAppleWatch];

  if (isAppleWatch)
  {
    v9 = objc_loadWeakRetained(&self->_environment);
    sleepScheduleModelManager2 = [v9 sleepScheduleModelManager];
    sleepSettings = [sleepScheduleModelManager2 sleepSettings];

    if (([sleepSettings watchSleepFeaturesEnabled]& 1) != 0)
    {

      goto LABEL_5;
    }

    v14 = HKSPLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = objc_opt_class();
      v15 = v18;
      _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep features disabled for this watch, not scheduling", &v17, 0xCu);
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

LABEL_5:
  v12 = 1;
LABEL_12:

  return v12;
}

- (void)environmentWillBecomeReady:(id)ready
{
  v13 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentWillBecomeReady", &v11, 0xCu);
  }

  sleepScheduleModelManager = [readyCopy sleepScheduleModelManager];
  [sleepScheduleModelManager addObserver:self];

  timeChangeListener = [readyCopy timeChangeListener];
  [timeChangeListener addObserver:self];

  diagnostics = [readyCopy diagnostics];
  [diagnostics addProvider:self];

  if ([(HDSPEventScheduler *)self->_scheduler conformsToProtocol:&unk_287A97ED8])
  {
    notificationListener = [readyCopy notificationListener];
    [notificationListener addObserver:self->_scheduler];
  }
}

- (void)environmentDidBecomeReady:(id)ready
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v5 = v7;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentDidBecomeReady", &v6, 0xCu);
  }

  [(HDSPSleepEventScheduler *)self _loadLastStandardSleepEvent];
  [(HDSPSleepEventScheduler *)self rescheduleEvents];
}

- (void)_loadLastStandardSleepEvent
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__HDSPSleepEventScheduler__loadLastStandardSleepEvent__block_invoke;
  v2[3] = &unk_279C7B108;
  v2[4] = self;
  [(HDSPSleepEventScheduler *)self _withLock:v2];
}

void __54__HDSPSleepEventScheduler__loadLastStandardSleepEvent__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained userDefaults];
  v4 = [v3 hksp_objectForKey:@"HDSPLastStandardSleepEvent"];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D62450]);
    v6 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v7 = [v5 initWithAllowedClasses:v6 serializedDictionary:v4];

    v15 = 0;
    v8 = [v7 deserializeObjectOfClass:objc_opt_class() error:&v15];
    v9 = v15;
    if (v9)
    {
      v10 = HKSPLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        *buf = 138543874;
        v17 = v11;
        v18 = 2114;
        v19 = v4;
        v20 = 2114;
        v21 = v9;
        v12 = v11;
        _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] failed to deserialize sleep event %{public}@ with error %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v13 = *(a1 + 32);
      v14 = v8;
      v10 = *(v13 + 16);
      *(v13 + 16) = v14;
    }
  }
}

- (void)_lock_updateLastStandardSleepEvent:(id)event
{
  v24 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    identifier = [eventCopy identifier];
    *buf = 138543618;
    v19 = v7;
    v20 = 2114;
    v21 = identifier;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating last standard sleep event: %{public}@", buf, 0x16u);
  }

  objc_storeStrong(&self->_lastStandardSleepEvent, event);
  v10 = objc_alloc_init(MEMORY[0x277D62458]);
  v17 = 0;
  v11 = [v10 serialize:eventCopy error:&v17];
  v12 = v17;
  if (v11)
  {
    WeakRetained = objc_loadWeakRetained(&self->_environment);
    userDefaults = [WeakRetained userDefaults];
    serializedDictionary = [v10 serializedDictionary];
    [userDefaults hksp_setObject:serializedDictionary forKey:@"HDSPLastStandardSleepEvent"];
  }

  else
  {
    WeakRetained = HKSPLogForCategory();
    if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v16 = objc_opt_class();
    *buf = 138543874;
    v19 = v16;
    v20 = 2114;
    v21 = eventCopy;
    v22 = 2114;
    v23 = v12;
    userDefaults = v16;
    _os_log_error_impl(&dword_269B11000, WeakRetained, OS_LOG_TYPE_ERROR, "[%{public}@] failed to serialize sleep event %{public}@ with error %{public}@", buf, 0x20u);
  }

LABEL_7:
}

- (void)_schedulePendingEvents
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = objc_opt_class();
    v4 = *(&buf + 4);
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] gathering pending events", &buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  currentDateProvider = [WeakRetained currentDateProvider];

  if (currentDateProvider)
  {
    currentDateProvider[2](currentDateProvider);
  }

  else
  {
    [MEMORY[0x277CBEAA8] date];
  }
  v7 = ;
  lastEventTriggerDate = [(HDSPSleepEventScheduler *)self lastEventTriggerDate];
  v9 = lastEventTriggerDate;
  if (lastEventTriggerDate)
  {
    distantPast = lastEventTriggerDate;
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v11 = distantPast;

  v12 = [v7 dateByAddingTimeInterval:-*MEMORY[0x277D622C0]];
  v13 = [v11 laterDate:v12];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x2020000000;
  v26 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __49__HDSPSleepEventScheduler__schedulePendingEvents__block_invoke;
  v19 = &unk_279C7C7B8;
  selfCopy = self;
  v14 = v13;
  v21 = v14;
  v15 = v7;
  v22 = v15;
  p_buf = &buf;
  [(HDSPSleepEventScheduler *)self _withLock:&v16];
  if (*(*(&buf + 1) + 24) == 1)
  {
    [(HDSPSleepEventScheduler *)self _enqueueHandleOverdueEventsTask:v16];
  }

  _Block_object_dispose(&buf, 8);
}

void __49__HDSPSleepEventScheduler__schedulePendingEvents__block_invoke(void *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((HKSPIsUnitTesting() & 1) == 0)
  {
    v2 = HKSPLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_opt_class();
      v4 = a1[5];
      v5 = *(a1[4] + 56);
      *buf = 138543874;
      v35 = v3;
      v36 = 2114;
      v37 = v4;
      v38 = 2114;
      v39 = v5;
      v6 = v3;
      _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] looking for events due after: %{public}@ from: %{public}@", buf, 0x20u);
    }
  }

  v7 = [*(a1[4] + 56) allObjects];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __49__HDSPSleepEventScheduler__schedulePendingEvents__block_invoke_371;
  v31 = &unk_279C7C790;
  v8 = a1[5];
  v32 = a1[4];
  v33 = v8;
  [v7 na_each:&v28];

  [*(a1[4] + 56) removeAllObjects];
  if ((HKSPIsUnitTesting() & 1) == 0)
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = *(a1[4] + 32);
      *buf = 138543618;
      v35 = v10;
      v36 = 2114;
      v37 = v11;
      v12 = v10;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] all upcoming events: %{public}@", buf, 0x16u);
    }
  }

  v13 = [*(a1[4] + 32) nextEvent];
  if (v13)
  {
    if ((HKSPIsUnitTesting() & 1) == 0)
    {
      v14 = HKSPLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        *buf = 138543618;
        v35 = v15;
        v36 = 2114;
        v37 = v13;
        v16 = v15;
        _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] next event is %{public}@", buf, 0x16u);
      }
    }

    v17 = [v13 dueDate];
    if (([v17 hksp_isAfterDate:a1[6]]& 1) != 0)
    {
      v18 = *(a1[4] + 64);
      v19 = [v13 dueDate];
      [v18 scheduleEventForDate:v19 options:{objc_msgSend(v13, "isUserVisible")}];
    }

    else
    {
      v22 = HKSPLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        *buf = 138543362;
        v35 = v23;
        v24 = v23;
        _os_log_impl(&dword_269B11000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] event is already due", buf, 0xCu);
      }

      *(*(a1[7] + 8) + 24) = 1;
    }
  }

  else
  {
    v17 = HKSPLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      *buf = 138543362;
      v35 = v20;
      v21 = v20;
      _os_log_impl(&dword_269B11000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] no upcoming events", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v26 = [WeakRetained assertionManager];
  [v26 releaseAssertionWithIdentifier:@"HDSPRescheduleAssertion"];

  v27 = [WeakRetained assertionManager];
  [v27 releaseAssertionWithIdentifier:@"HDSPRescheduleTransaction"];
}

void __49__HDSPSleepEventScheduler__schedulePendingEvents__block_invoke_371(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(*(a1 + 32) + 32) removeEventsForProvider:v3];
  v4 = [v3 upcomingEventsDueAfterDate:*(a1 + 40)];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__HDSPSleepEventScheduler__schedulePendingEvents__block_invoke_2;
  v14[3] = &unk_279C7C768;
  v15 = *(a1 + 40);
  v5 = [v4 na_filter:v14];

  v6 = [v5 count];
  v7 = HKSPIsUnitTesting();
  if (v6)
  {
    if ((v7 & 1) == 0)
    {
      v8 = HKSPLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        *buf = 138543874;
        v17 = v9;
        v18 = 2114;
        v19 = v3;
        v20 = 2114;
        v21 = v5;
        v10 = v9;
        _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ has upcoming events: %{public}@", buf, 0x20u);
      }
    }

    [*(*(a1 + 32) + 32) addEvents:v5 provider:v3];
  }

  else if ((v7 & 1) == 0)
  {
    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      *buf = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v3;
      v13 = v12;
      _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ has no upcoming events", buf, 0x16u);
    }
  }
}

uint64_t __49__HDSPSleepEventScheduler__schedulePendingEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 dueDate];
  v4 = [v3 hksp_isAfterDate:*(a1 + 32)];

  return v4;
}

- (NSDate)lastEventTriggerDate
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  userDefaults = [WeakRetained userDefaults];
  v4 = [userDefaults hksp_objectForKey:@"HDSPLastEventTriggerDate"];

  return v4;
}

- (void)setLastEventTriggerDate:(id)date
{
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  userDefaults = [WeakRetained userDefaults];
  [userDefaults hksp_setObject:dateCopy forKey:@"HDSPLastEventTriggerDate"];
}

- (HKSPSleepEvent)lastStandardSleepEvent
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__14;
  v9 = __Block_byref_object_dispose__14;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__HDSPSleepEventScheduler_lastStandardSleepEvent__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPSleepEventScheduler *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)scheduledEventIsDue
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] scheduledEventIsDue", &v5, 0xCu);
  }

  [(HDSPSleepEventScheduler *)self _enqueueHandleOverdueEventsTask];
}

- (void)_enqueueHandleOverdueEventsTask
{
  limitingScheduler = self->_limitingScheduler;
  v4 = objc_alloc(MEMORY[0x277D62538]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HDSPSleepEventScheduler__enqueueHandleOverdueEventsTask__block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  v5 = [v4 initWithIdentifier:@"handleOverdueEvents" block:v6];
  [(HKSPLimitingScheduler *)limitingScheduler scheduleTask:v5];
}

- (void)_handleOverdueEvents
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = objc_opt_class();
    v4 = v17;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] handling overdue events", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  currentDateProvider = [WeakRetained currentDateProvider];
  v7 = currentDateProvider;
  if (currentDateProvider)
  {
    (*(currentDateProvider + 16))(currentDateProvider);
  }

  else
  {
    [MEMORY[0x277CBEAA8] date];
  }
  v8 = ;
  [(HDSPSleepEventScheduler *)self setLastEventTriggerDate:v8];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __47__HDSPSleepEventScheduler__handleOverdueEvents__block_invoke;
  v13 = &unk_279C7B2D0;
  selfCopy = self;
  v15 = v8;
  v9 = v8;
  [(HDSPSleepEventScheduler *)self _withLock:&v10];
  [(HDSPSleepEventScheduler *)self rescheduleEvents:v10];
}

void __47__HDSPSleepEventScheduler__handleOverdueEvents__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) overdueEventsForDate:*(a1 + 40)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HDSPSleepEventScheduler__handleOverdueEvents__block_invoke_2;
  v6[3] = &unk_279C7C768;
  v7 = *(a1 + 40);
  v3 = [v2 na_filter:v6];

  [*(*(a1 + 32) + 32) removeEvents:v3];
  v4 = [v3 na_filter:&__block_literal_global_16];
  v5 = [v4 lastObject];

  if (v5)
  {
    [*(a1 + 32) _lock_updateLastStandardSleepEvent:v5];
  }

  [*(a1 + 32) notifyForOverdueEvents:v3];
}

uint64_t __47__HDSPSleepEventScheduler__handleOverdueEvents__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D624D0];
  v3 = a2;
  v4 = [v2 standardEventIdentifiers];
  v5 = [v3 identifier];

  v6 = [v4 containsObject:v5];
  return v6;
}

- (void)notifyForOverdueEvents:(id)events
{
  v20 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = objc_opt_class();
    v18 = 2114;
    v19 = eventsCopy;
    v6 = v17;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] overdue events: %{public}@", buf, 0x16u);
  }

  if ([eventsCopy count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_environment);
    assertionManager = [WeakRetained assertionManager];
    [assertionManager takeAssertionWithIdentifier:@"HDSPNotifyDueAssertion" type:2];

    eventHandlers = self->_eventHandlers;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__HDSPSleepEventScheduler_notifyForOverdueEvents___block_invoke;
    v13[3] = &unk_279C7C828;
    v14 = eventsCopy;
    selfCopy = self;
    v10 = [(HKSPObserverSet *)eventHandlers enumerateObserversWithFutureBlock:v13];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__HDSPSleepEventScheduler_notifyForOverdueEvents___block_invoke_379;
    v12[3] = &unk_279C7B830;
    v12[4] = self;
    v11 = [v10 addCompletionBlock:v12];
  }
}

id __50__HDSPSleepEventScheduler_notifyForOverdueEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __50__HDSPSleepEventScheduler_notifyForOverdueEvents___block_invoke_2;
  v11 = &unk_279C7C800;
  v4 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v3;
  v5 = v3;
  [v4 na_each:&v8];
  v6 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v6;
}

void __50__HDSPSleepEventScheduler_notifyForOverdueEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) _shouldNotifyHandler:*(a1 + 40) forEvent:v3])
  {
    v4 = HKSPLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = *(a1 + 40);
      v8 = 138543874;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 2114;
      v13 = v3;
      v7 = v5;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] notifying %{public}@ for %{public}@", &v8, 0x20u);
    }

    [*(a1 + 40) sleepEventIsDue:v3];
  }
}

void __50__HDSPSleepEventScheduler_notifyForOverdueEvents___block_invoke_379(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v1 = [WeakRetained assertionManager];
  [v1 releaseAssertionWithIdentifier:@"HDSPNotifyDueAssertion"];
}

- (BOOL)_shouldNotifyHandler:(id)handler forEvent:(id)event
{
  handlerCopy = handler;
  eventCopy = event;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([handlerCopy eventIdentifiers], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    eventIdentifiers = [handlerCopy eventIdentifiers];
    identifier = [eventCopy identifier];
    v10 = [eventIdentifiers containsObject:identifier];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)eventProviderHasUpcomingEvents:(id)events
{
  eventsCopy = events;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  defaultCallbackScheduler = [WeakRetained defaultCallbackScheduler];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HDSPSleepEventScheduler_eventProviderHasUpcomingEvents___block_invoke;
  v8[3] = &unk_279C7B2D0;
  v8[4] = self;
  v9 = eventsCopy;
  v7 = eventsCopy;
  [defaultCallbackScheduler performBlock:v8];
}

void __58__HDSPSleepEventScheduler_eventProviderHasUpcomingEvents___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    *buf = 138543618;
    v14 = v3;
    v15 = 2114;
    v16 = v4;
    v5 = v3;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] eventProviderHasUpcomingEvents: %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __58__HDSPSleepEventScheduler_eventProviderHasUpcomingEvents___block_invoke_383;
  v10 = &unk_279C7B2D0;
  v11 = v6;
  v12 = *(a1 + 40);
  [v6 _withLock:&v7];
  [*(a1 + 32) _enqueueSchedulePendingEventsTask];
}

- (void)eventProviderCancelledEvents:(id)events
{
  eventsCopy = events;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  defaultCallbackScheduler = [WeakRetained defaultCallbackScheduler];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HDSPSleepEventScheduler_eventProviderCancelledEvents___block_invoke;
  v8[3] = &unk_279C7B2D0;
  v8[4] = self;
  v9 = eventsCopy;
  v7 = eventsCopy;
  [defaultCallbackScheduler performBlock:v8];
}

void __56__HDSPSleepEventScheduler_eventProviderCancelledEvents___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    *buf = 138543618;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    v5 = v3;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] eventProviderCancelledEvents: %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HDSPSleepEventScheduler_eventProviderCancelledEvents___block_invoke_384;
  v7[3] = &unk_279C7B2D0;
  v7[4] = v6;
  v8 = *(a1 + 40);
  [v6 _withLock:v7];
}

uint64_t __56__HDSPSleepEventScheduler_eventProviderCancelledEvents___block_invoke_384(uint64_t a1)
{
  [*(*(a1 + 32) + 56) removeObject:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 32);

  return [v3 removeEventsForProvider:v2];
}

- (void)addEventProvider:(id)provider
{
  v13 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  if (providerCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      [providerCopy setSleepEventDelegate:self];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __44__HDSPSleepEventScheduler_addEventProvider___block_invoke;
      v7[3] = &unk_279C7B2D0;
      v7[4] = self;
      v8 = providerCopy;
      [(HDSPSleepEventScheduler *)self _withLock:v7];
    }

    else
    {
      v5 = HKSPLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v10 = objc_opt_class();
        v11 = 2114;
        v12 = providerCopy;
        v6 = v10;
        _os_log_error_impl(&dword_269B11000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] event provider %{public}@ didn't synthesize a delegate", buf, 0x16u);
      }
    }
  }
}

- (void)removeEventProvider:(id)provider
{
  providerCopy = provider;
  if (providerCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [providerCopy setSleepEventDelegate:0];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__HDSPSleepEventScheduler_removeEventProvider___block_invoke;
    v5[3] = &unk_279C7B2D0;
    v5[4] = self;
    v6 = providerCopy;
    [(HDSPSleepEventScheduler *)self _withLock:v5];
  }
}

uint64_t __47__HDSPSleepEventScheduler_removeEventProvider___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeEventsForProvider:*(a1 + 40)];
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 56);

  return [v3 removeObject:v2];
}

- (void)addEventHandler:(id)handler
{
  if (handler)
  {
    [(HKSPObserverSet *)self->_eventHandlers addObserver:?];
  }
}

- (void)removeEventHandler:(id)handler
{
  if (handler)
  {
    [(HKSPObserverSet *)self->_eventHandlers removeObserver:?];
  }
}

- (void)sleepScheduleModelManager:(id)manager didUpdateSleepScheduleModel:(id)model
{
  v12 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = modelCopy;
    v7 = v9;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] didUpdateSleepScheduleModel: %{public}@", &v8, 0x16u);
  }

  [(HDSPSleepEventScheduler *)self rescheduleEvents];
}

- (void)significantTimeChangeDetected:(id)detected
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 138543362;
    *&v14[4] = objc_opt_class();
    v5 = *&v14[4];
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] significantTimeChangeDetected", v14, 0xCu);
  }

  environment = [(HDSPSleepEventScheduler *)self environment];
  currentDateProvider = [environment currentDateProvider];
  v9 = currentDateProvider[2](currentDateProvider, v8);

  lastEventTriggerDate = [(HDSPSleepEventScheduler *)self lastEventTriggerDate];
  LODWORD(currentDateProvider) = [lastEventTriggerDate hksp_isAfterDate:v9];

  if (currentDateProvider)
  {
    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      *v14 = 138543362;
      *&v14[4] = v12;
      v13 = v12;
      _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] setting lastEventTriggerDate to current date because it's in the future", v14, 0xCu);
    }

    [(HDSPSleepEventScheduler *)self setLastEventTriggerDate:v9];
  }

  [(HDSPSleepEventScheduler *)self rescheduleEvents:*v14];
}

- (id)_allSleepEvents
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__14;
  v9 = __Block_byref_object_dispose__14;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__HDSPSleepEventScheduler__allSleepEvents__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPSleepEventScheduler *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __42__HDSPSleepEventScheduler__allSleepEvents__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) sleepEvents];
  v2 = [v5 allEvents];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)diagnosticDescription
{
  v3 = MEMORY[0x277CCACA8];
  _allSleepEvents = [(HDSPSleepEventScheduler *)self _allSleepEvents];
  lastStandardSleepEvent = [(HDSPSleepEventScheduler *)self lastStandardSleepEvent];
  identifier = [lastStandardSleepEvent identifier];
  v7 = [v3 stringWithFormat:@"Scheduled Events: %@, Last Standard Sleep Event: %@", _allSleepEvents, identifier];

  return v7;
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end